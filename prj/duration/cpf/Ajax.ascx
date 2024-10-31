<%@ Control Language="C#" AutoEventWireup="true" %>
<%--<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc2" %>--%>
<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_" TagPrefix="cc1" %>
<%--<cc2:KeyInSpan ID="KeyInSpan1" runat="server" />--%>


<cc1:KeyInSpan ID="Key1" runat="server" />
<% #if(false) %>
	<script src="http://localhost:12345/_apps/script/jquery.js">

	</script>
	<script src="http://localhost:12345/_apps/script/jQuery/js/jquery-ui-1.10.0.custom.min.js">

	</script>	

<script src="http://localhost:12345/_apps/script/nilnul.js">

	</script>

<script src="http://localhost:12345/_apps/script/nilnul.string.js">

	</script>

<script src="http://localhost:12345/_apps/script/nilnul.cookie.js">

	</script>



<script src="http://localhost:12345/_apps/script/nilnul.ctrl.js">

	</script>
<script src="http://localhost:12345/_apps/script/nilnul.event.js">

	</script>


	
<% #endif %>

<span id="ui" runat="server"></span>
<script>
	(function (
		key
		,
		ui
	) {

		var data;

		var get = function (func) {
			//get the infor from database.
			ui.innerHTML = "getting...";
			var url = "<%=this.ResolveUrl("Survey.ashx")%>";

			$.get(url).done(
				function (response) {
					if (response.error) {
						ui.innerHTML = response.error;
						return;
					}
					ui.innerHTML = "";

					var array2d = [];

					for (var i = 0; i < response.length; i=i+2) {

						array2d.push(
							[
								response[i]	//	*20// * 100
								,
								response[i + 1]		//*800// * 50
							]
						);


					}
					//debugger;
					func(array2d);
					//data = response;

					
				}
			).fail(
				function () {
					ui.innerHTML = "error contacting server.";
				}
			).always(
				function (parameters) {
					//alert();
				}
			);
			;
		},

		pub = function () {
			key.get = get;
			key.data = data;

		}
		,

		ini = function () {
			pub();
		}
		;
		ini();


	})(
		document.getElementById("<%=ClientID%>")
		,
		document.getElementById("<%=ui.ClientID%>")
		
	);

</script>
