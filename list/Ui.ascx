<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ui.ascx.cs" Inherits="nilnul.task._web.list.Ui" %>
<%@ Register Assembly="nilnul.web.aspCtrl" Namespace="nilnul.web.aspCtrl" TagPrefix="cc1" %> 


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
<button id="add" runat="server">Add</button>
<script>
	(function (key
		,
 		listContainer
 		, addButton
		) {

		var get = function (tasks) {
			for (var id in tasks) {
				add(tasks[id]);

			}

		};

		var add = function (id) {

			//alert();

			var item = $("<div/>");
			item.html("Loading..." + id);
			var idCtrl = nilnul.ctrl.newId();

			item.load("<%=this.ResolveUrl("~/TaskAjax.ascx")%>?id=" + idCtrl
				,
				function () {
					var loaded = document.getElementById(idCtrl);
					loaded.get(id);
				}
			);

			$(listContainer).append(item);
		};


		var pub = function () {
			key.set = set;


		};
		var ini = function () {
			pub();

		};
		ini();


	})(
		 document.getElementById("<%=ClientID%>"),
 		document.getElementById("<%=listContainer.ClientID%>"),
		document.getElementById("<%=add.ClientID%>")

	 );


</script>
