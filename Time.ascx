<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Time.ascx.cs" Inherits="nilnul.task._web.Time" %>

<% #if(false) %>
	<script src="http://localhost:12345/_apps/script/jquery.js">

	</script>
	<script src="http://localhost:12345/_apps/script/jQuery/js/jquery-ui-1.10.0.custom.min.js">

	</script>	

<script src="http://localhost:12345/_apps/script/nilnul.js">

	</script>

<script src="http://localhost:12345/_apps/script/nilnul.string.js">

	</script>

<script src="http://localhost:12345/_apps/script/nilnul.cookie.js">

	</script>



<script src="http://localhost:12345/_apps/script/nilnul.ctrl.js">

	</script>
<script src="http://localhost:12345/_apps/script/nilnul.event.js">

	</script>
	
<% #endif %>

<g id="g" runat="server">
</g>

<script>
	(function (element) {
		var canvas = g = element;

		var SVG = {};
		// These are SVG-related namespace URLs
		SVG.ns = "http://www.w3.org/2000/svg";
		SVG.xlinkns = "http://www.w3.org/1999/xlink";
		SVG.width = document.getElementById("svg").clientWidth;
		SVG.height = document.getElementById("svg").clientHeight;

		var height=element.clientHeight;
		var width=element.clientWidth;

		var DRAW = { "strokeWidth": 1 };

		var start, end, time4lines;
		var scale = height / (start - end);

		var scaleSet = function () {

			scale=height / (start - end);

		};



		var drawLine = function (x1, y1, x2, y2, color) {
			var shape = document.createElementNS(SVG.ns, "line");
			shape.setAttributeNS(null, "x1", x1);
			shape.setAttributeNS(null, "y1", y1);
			shape.setAttributeNS(null, "x2", x2);
			shape.setAttributeNS(null, "y2", y2);
			shape.setAttributeNS(null, "stroke", color);
			shape.setAttributeNS(null, "stroke-width", DRAW.strokeWidth);
			canvas.appendChild(shape);
		};

	

		var drawTimeline_withHeight = function (height) {
			drawLine(0, height, width, height, 'grey');
		};

		var drawTimeline = function (time) {
			drawTimeline_withHeight(
				heightOfTime(time)
			);
		};

		


	
		var drawTimeInLines = function () {
			for (var i in time4lines) {
				drawTimeline(i);
			}

		};

		var heightOfTime = function (time) {
			return (time - start) * scale;
		};


		

		var pub = function () {

			element.start = function (x) {
				if ((typeof x) === 'undefined') {
					return start;
				}
				start = x;
			};

			element.end = function (x) {
				if ((typeof x) === 'undefined') {
					return end;
				}
				end = x;
			};

			element.time4lines = function (x) {
				if ((typeof x) === 'undefined') {
					return time4lines;
				}
				time4lines = x;
			};


			element.ini = function (data) {
				scaleSet();
				drawTimeInLines();
			};



		};



		var ini = function () {

			pub();

		};
		ini();


	})(
		document.getElementById("<%=g.ClientID%>")

	);

</script>