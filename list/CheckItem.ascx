<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CheckItem.ascx.cs" Inherits="nilnul.task._web.list.CheckItem" %>
<%@ Register Assembly="nilnul.web.aspCtrl" Namespace="nilnul.web.aspCtrl" TagPrefix="cc1" %>
<%@ Register Src="~/Task.ascx" TagPrefix="uc1" TagName="Task" %>

<cc1:Key ID="Key1" runat="server" />
<input id="Checkbox1" type="checkbox" runat="server" />
<uc1:Task runat="server" ID="Task" />




