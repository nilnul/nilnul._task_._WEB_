<%@ Control Language="C#" AutoEventWireup="true"  %>

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
	<title>Time Scale</title>
    <desc>
      This is the scale of time, where tasks can be associated to.
    </desc>


</g>

<script>
	(function (element) {
		$(g).click(
			function (e) {





			}
		);

		var canvas = g = element;

		var SVG = {};
		// These are SVG-related namespace URLs
		SVG.ns = "http://www.w3.org/2000/svg";
		SVG.xlinkns = "http://www.w3.org/1999/xlink";
		//SVG.width = document.getElementById("svg").clientWidth;
		//SVG.height = document.getElementById("svg").clientHeight;

//		var viewPort = g.viewportElement || g.ownerSVGElement;
		var ownerElement =  g.ownerSVGElement;

		//var width=ownerElement.viewBox.baseVal.width;	//.clientWidth;	//.currentView.viewBox.baseVal.width;	//.clientWidth;
		var width = 1000;
		//var height = ownerElement.viewBox.baseVal.height;	//.clientHeight;	//.currentView.viewBox.baseVal.height;	//.clientHeight;
		var height = 1000;

		var DRAW = { "strokeWidth": 2 };

		var start, end, time4lines=[];
		var scale;	// = height / (end.valueOf() - start.valueOf());

		var scaleSet = function () {
			scale=height / (end.valueOf() - start.valueOf());
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
			drawLine(0, height, width, height, 'red');
		};

		var drawTimeline = function (time) {
			drawTimeline_withHeight(
				heightOfTime(time)
			);
		};

		
		var drawNotation = function (time) {
			var height = heightOfTime(time);

			var shape = document.createElementNS(SVG.ns, "text");
			var text = document.createTextNode(time.toString());
			shape.setAttributeNS(null, "x", 0);
			shape.setAttributeNS(null, "y", height);
			//shape.setAttributeNS(null, "x2", width);
			//shape.setAttributeNS(null, "y2", height);
			shape.setAttributeNS(null, "stroke", "blue");
			shape.setAttributeNS(null, "stroke-width", 1);
			shape.appendChild(text);
			canvas.appendChild(shape);
		};
	
		var drawTimeInLines = function () {
			for (var i in time4lines) {
				drawTimeline(time4lines[i]);
				drawNotation(time4lines[i]);
			}
		};

		var heightOfTime = function (time) {
			return (time.valueOf() - start.valueOf()) * scale;
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

		var milliSecondsInDay = 24 * 60 * 60 * 1000;

		var plusDays = function (date,days) {

			return new Date(date.valueOf() +days*milliSecondsInDay);

		};


		var ini = function () {

			pub();


			start = new Date();

			end = new Date(start.valueOf() + 7 * milliSecondsInDay);

			scaleSet();

			for (var i = 1; i < 7; i++) {
				time4lines.push(
					plusDays(start,i)
				);

			}

			drawTimeInLines();

			

		};
		ini();


	})(
		document.getElementById("<%=g.ClientID%>")

	);

</script>