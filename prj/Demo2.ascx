 <%@ Control Language="C#" AutoEventWireup="true"  %>

<%@ Register Src="~/Ajax.ascx" TagPrefix="uc2" TagName="Ajax" %>
<%@ Register Src="~/Plot.ascx" TagPrefix="uc2" TagName="Plot" %>





<uc2:Ajax runat="server" ID="Ajax1" />

<uc2:Plot runat="server" ID="Plot1" />



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

		document.getElementById("<%=Plot1.ClientID%>")


	);

</script>
