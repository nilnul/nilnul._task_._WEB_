<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task.aspx.cs" Inherits="nilnul.task._web._demo.Task" %>

<%@ Register Assembly="nilnul.web.script.webctrl(130116" Namespace="nilnul.web.script.webctrl" TagPrefix="cc1" %>

<%@ Register Src="~/TaskAjax.ascx" TagPrefix="uc2" TagName="TaskAjax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <cc1:CommonScriptsControl ID="CommonScriptsControl1" runat="server"></cc1:CommonScriptsControl>

    	<uc2:TaskAjax ID="TaskAjax1" runat="server" />

	<script type="text/javascript">
		document.getElementById("<%=TaskAjax1.ClientID%>").get(1022);

	</script>
</body>
</html>
