<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Port.ascx.cs" Inherits="nilnul.task._web.list.Port" %>
<%@ Register Assembly="nilnul.web.aspCtrl" Namespace="nilnul.web.aspCtrl" TagPrefix="cc1" %>
<%-- 
	This is the dispaly of a list of items on the browser side as a viewport.
	This is not the same as json objects retrieved from server.
	 --%>

<%-- This is the view. no ajax logic --%>


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
<script src="http://localhost:12345/_apps/script/nilnul.cookie.js">

	</script>


	
<% #endif %>


<cc1:Key ID="Key1" runat="server" />



<div id="listContainer" runat="server">
</div>

<script>
	(function (key
		,
 		listContainer
 		
 		
		)
	{

		var get = function () {
			return items;


		};

		var addMany = function (count) {
			while (count > 0) {
				add();
				count--;
			}
		};

		var items=[];

		var add = function () {

			//alert();

			var item = $("<div/>");
			item.html("Loading..." );
			var idCtrl = nilnul.ctrl.newId();

			item.load("<%=this.ResolveUrl("CheckItem.ascx")%>?id=" + idCtrl
				,
				
				function () {
					var loaded = document.getElementById(idCtrl);
					items.push(loaded);
					//loaded.get(id);
				}
			);

			$(listContainer).append(item);
		};


		var pub = function () {
			key.get = get;
			key.addMany = addMany;


		};
		var ini = function () {
			pub();

		};
		ini();


	})(
		 document.getElementById("<%=ClientID%>"),
 		document.getElementById("<%=listContainer.ClientID%>")

	 );


</script>