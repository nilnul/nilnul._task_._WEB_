<%@ Page Title="" Language="C#" MasterPageFile="~/_master/HtmlWithJQueryNilNul.Master" AutoEventWireup="true" %>
<%@ Register src="../FormSubmit.ascx" tagname="FormSubmit" tagprefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<uc1:FormSubmit ID="FormSubmit1" runat="server" />


</asp:Content>
