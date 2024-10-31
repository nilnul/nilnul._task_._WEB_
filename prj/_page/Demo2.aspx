<%@ Page Language="C#" AutoEventWireup="true"  %>

<%@ Register Assembly="nilnul.web.script.webctrl(130116" Namespace="nilnul.web.script.webctrl" TagPrefix="cc1" %>

<%@ Register Src="~/Demo2.ascx" TagPrefix="uc1" TagName="Demo" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

	<cc1:CommonScriptsControl ID="CommonScriptsControl1" runat="server"></cc1:CommonScriptsControl>
	<uc1:Demo runat="server" ID="Demo1" />
</body>
</html>
