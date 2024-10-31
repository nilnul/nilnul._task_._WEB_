<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Assembly="nilnul.web.aspCtrl" Namespace="nilnul.web.aspCtrl" TagPrefix="cc1" %>


<cc1:Key ID="Key1" runat="server" />

	id:<input id="id" type="text" runat="server" />


	note:<input id="note" type="text" runat="server" />  
<script>
	(function (key
	, id,
		note
		) {

		var set = function (json) {
			if (json) {
				id.value = json.id;
				note.value = json.note;
				return;
			} else {
				id.value = "";
				note.value = "";
			}
		};

		var get = function () {
			return { id: id.value,  note: note.value };

		};

		var val = function (parameters) {

			if (parameters) {
				set(parameters);
				return;
			}

			return get();

		};

		var clear = function () {

			id.value = "";
			note.value = "";

		};

		var pub = function () {
			key.val = val;
			key.val.set = set;
			key.val.id = function (x) {
				if (x) {
									id.value = x;

				} else {
					return id.value;
				}

			};

			key.clear = clear;
		};

		var init = function () {
			pub();
		};
		init();


	})(
		 document.getElementById("<%=ClientID%>")
	,
		 document.getElementById("<%=id.ClientID%>"),
		document.getElementById("<%=note.ClientID%>")
	);

</script>

