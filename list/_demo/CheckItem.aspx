<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckItem.aspx.cs" Inherits="nilnul.task._web.list._demo.CheckItem" %>

<%@ Register src="../CheckItem.ascx" tagname="CheckItem" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    	<uc1:CheckItem ID="CheckItem1" runat="server" />
    
    </div>
    </form>
	<p>
		&nbsp;</p>
	<p>
		&nbsp;</p>
	<p>
		<a href="<%=this.ResolveUrl("../CheckItem.ascx") %>">as ascx</a></p>
</body>
</html>
