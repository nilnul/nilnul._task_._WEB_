<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Port.aspx.cs" Inherits="nilnul.task._web.list._demo.Port" %>

<%@ Register src="../Port.ascx" tagname="Port" tagprefix="uc1" %>

<%@ Register assembly="nilnul.web.script.webctrl(130116" namespace="nilnul.web.script.webctrl" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <cc1:CommonScriptsControl ID="CommonScriptsControl1" runat="server">
			</cc1:CommonScriptsControl>
    	<form id="form1" runat="server">
    
    	<uc1:Port ID="Port1" runat="server" />
		<script>
			(function (port) {

				port.addMany(10);

			})(
				document.getElementById("<%=Port1.ClientID%>")

			);

		</script>
    
			
		</form>
    
</body>
</html>
