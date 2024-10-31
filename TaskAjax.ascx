<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Assembly="nilnul.web.server.ctrl(globalization130701" Namespace="nilnul.web.server.ctrl" TagPrefix="cc1" %>



<%@ Register Src="Task.ascx" TagName="Task" TagPrefix="uc1" %>
<%@ Register Src="Ajax.ascx" TagName="Ajax" TagPrefix="uc2" %>


<cc1:Key2 ID="Key1" runat="server" />

<uc1:Task ID="Task1" runat="server" />

<uc2:Ajax ID="Ajax1" runat="server" />
<button id="cancel"  runat="server">retrieve</button>

<button id="submit"  runat="server">update</button>
<button id="del"  runat="server">del</button>
<button id="create"  runat="server">new</button>

<script>
	(function (

		key
		,
		task,
		http,
		submit,
		del
		,
		cancel
		,create

		) {
		

		var get = function (id) {

			http.get(
				id,
				function (data) {
					task.val.set(data);
				}
			);
		};

		var add = function(parameters) {

			task.clear();
			

		};

		var set = function (data) {
			http.set(
				data,
				function (parameters) {
					if (parameters) {
											if (parameters.id) {
						task.val.id(parameters.id);
					}
					}

				}

				);


		};

		var pub = function () {

			key.get = get;
		};
		var init = function () {
			
			pub();
			
			$(submit).click(
				function() {
					set(task.val());
				}
				
				

			);
			$(del).click(
				function() {

					http.del(
						task.val.id()
						,
						function() {
							task.clear();
						}
					);
				}

			);
			$(cancel).click(
				function() {
					get(
						task.val.id()

						);
				}
			);
			$(create).click(
				function() {
					add();

				}
			);

		};
		init();


	})(

	document.getElementById("<%=ClientID%>"),
		document.getElementById("<%=Task1.ClientID%>"),
		document.getElementById("<%=Ajax1.ClientID%>"),
		document.getElementById("<%=submit.ClientID%>"),
		document.getElementById("<%=del.ClientID%>"),
		document.getElementById("<%=cancel.ClientID%>"),
		document.getElementById("<%=create.ClientID%>")


	);


</script>
