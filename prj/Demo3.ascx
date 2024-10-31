<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="Ajax.ascx" TagPrefix="uc1" TagName="Ajax" %>
<%@ Register Src="Plot3.ascx" TagPrefix="uc1" TagName="Plot" %>




<uc1:Ajax runat="server" ID="Ajax1" />


<uc1:Plot runat="server" ID="Plot1" />



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
