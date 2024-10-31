<%@ Control Language="C#" AutoEventWireup="true"  %>
<% #if(false) %>
<script src="http://localhost:12345/_apps/script/jquery.js">

</script>
<script src="http://localhost:12345/_apps/script/jQuery/js/jquery-ui-1.10.0.custom.min.js">

</script>

<script src="http://localhost:12345/_apps/script/nilnul.js">

</script>

<script src="http://localhost:12345/_apps/script/nilnul.string.js">

</script>

<script src="http://localhost:12345/_apps/script/nilnul.ctrl.js">

</script>
<script src="http://localhost:12345/_apps/script/nilnul.cookie.js">

</script>



<% #endif %>

<%@ Register Assembly="nilnul.web.aspCtrl" Namespace="nilnul.web.aspCtrl" TagPrefix="cc1" %>
<cc1:Key ID="Key1" runat="server" />
<label id="ui" runat="server"></label>
<script>
	(function (key, ui

		) {

		var get = function (id, func) {
			//get the infor from database.
			ui.innerHTML = "getting...";
			var url = "<%=this.ResolveUrl("svc/ash/Handler1.ashx")%>";

			$.post(url, { id: id },"text").done(
				function (response) {
					response = $.parseJSON(response);
					if (response.error) {
						ui.innerHTML = response.error;
						return;
					}
					ui.innerHTML = "";
					func(response.data);
				}
			).fail(
				function (response) {
					ui.innerHTML = "error contacting server.";
				}
			).always(
				function (parameters) {
					//alert();
				}
			);
			;
		};

		var set = function (task, func) {

			//get the infor from database.
			ui.innerHTML = "setting...";
			var url = "<%=this.ResolveUrl("svc/ash/Set.ashx")%>";

			$.post(url, task).done(
				function (response) {
					response = $.parseJSON(response);
					if (response.error) {
						ui.innerHTML = response.error;
						return;
					}
					ui.innerHTML = "";
					
					func(response.data);
				}
			).fail(
				function (response) {
					ui.innerHTML = "error contacting server.";
				}
			).always(
				function (parameters) {
					//alert();
				}
			);
			;





		};

		var del = function (id, func) {


			//get the infor from database.
			ui.innerHTML = "deleting...";
			var url = "<%=this.ResolveUrl("svc/ash/Del.ashx")%>";

			$.post(url, { id: id }).done(
				function (response) {
		
					if (response) {
						//response = $.parseJSON(response);
						//if (response.error) {
							ui.innerHTML = response;
							return;
						//}
					//	ui.innerHTML = response;
						//return;
					}
					ui.innerHTML = "";
					func();
				}
			).fail(
				function (response) {
					ui.innerHTML = "error contacting server.";
				}
			).always(
				function (parameters) {
					//alert();
				}
			);
			;


		};

		var pub = function (parameters) {
			key.get = get;
			key.set = set;
			key.del = del;

		};

		var init = function (parameters) {
			pub();

		};
		init();

	})(
		document.getElementById("<%=ClientID%>"),
		document.getElementById("<%=ui.ClientID%>")

	);

</script>
