<%@ Page Language="C#" AutoEventWireup="true"  %>

<%@ Register Assembly="nilnul.web.js._web._ctr(140612" Namespace="nilnul.web.js._web._ctr" TagPrefix="cc1" %>


<%@ Register Src="~/Demo.ascx" TagPrefix="uc1" TagName="Demo" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

	<cc1:JqueryNilnul ID="JqueryNilnul1" runat="server"></cc1:JqueryNilnul>

	<uc1:Demo runat="server" ID="Demo1" />
</body>
</html>
