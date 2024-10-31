<%@ Page Language="C#" AutoEventWireup="true" %>

<%@ Register Src="~/_Default.ascx" TagPrefix="uc1" TagName="_Default" %>




<script runat="server">
	protected void Page_Load(object sender, EventArgs args) {
		Response.Redirect(
			"~/prj"
		);
	}

</script>
<html>
	<body>

		<uc1:_Default runat="server" ID="_Default" />
	</body>
</html>
