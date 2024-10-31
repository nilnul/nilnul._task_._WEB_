<%@ Page Language="C#" AutoEventWireup="true"  %>

<%@ Register Assembly="nilnul.web._js_.WEB._CTR_" Namespace="nilnul.web._js_.WEB._CTR_.scripts_" TagPrefix="cc1" %>
<%@ Register Assembly="nilnul.web._js_.WEB._CTR_" Namespace="nilnul.web._js_.WEB._CTR_" TagPrefix="cc2" %>
<%@ Register Src="~/prj/Demo_ajax1d.ascx" TagPrefix="uc1" TagName="Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<cc1:scripts__JqPolyNn ID="Scripts__JqPolyNn1" runat="server" />	
	<%--<cc2:JqueryNilnul ID="JqueryNilnul1" runat="server"></cc2:JqueryNilnul>--%>
</head>

<body>
	<uc1:Demo runat="server" ID="Demo1" />
</body>
</html>
