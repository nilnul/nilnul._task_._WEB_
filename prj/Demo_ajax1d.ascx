<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="Ajax_1d.ascx" TagPrefix="uc1" TagName="Ajax" %>
<%@ Register Src="~/prj/Plot4.ascx" TagPrefix="uc1" TagName="Plot4" %>

<uc1:Ajax runat="server" ID="Ajax1" />
<uc1:Plot4 runat="server" ID="Plot4" />

<script>
	(function (
		ajax
		,
		plot

		) {


		ajax.get(
			
				plot.draw

				
		
			
		);




	})(

		document.getElementById("<%=Ajax1.ClientID%>")

		,

		document.getElementById("<%=Plot4.ClientID%>")


	);

</script>
