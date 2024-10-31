<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="~/time/Scale.ascx" TagPrefix="uc1" TagName="Scale" %>

<g id="<%=ClientID %>" ></g>
<rect id="ext" runat="server" width="200" height="1000" x="0" y="0" fill="cyan" />

<g id="time" runat="server" transform="translate(200) scale(0.8,1) ">
	<rect id="timeBackground" runat="server" width="1000" x="0" y="0" height="1000" fill="green" />
	<uc1:Scale runat="server" id="Scale" />
</g>

<script>
	(function (key, time,background) {
		$(time).click(
			function (e) {



			}
		);

		$(timeBackground).click(
			function (e) {




			}
		);


		
	})(
		document.getElementById("<%=ClientID%>")
		,
		document.getElementById("<%=time.ClientID%>")
		,
		document.getElementById("<%=timeBackground.ClientID%>")
	);
</script>

