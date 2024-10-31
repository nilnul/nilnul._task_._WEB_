<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Plot.ascx.cs" Inherits="nilnul.proj._web.Plot" %>

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
<script src="http://localhost:12345/_apps/script/nilnul.num.js">

	</script>


	
<% #endif %>


<svg id="<%=ClientID %>" style="width: 500px; height: 500px; background: grey;" width="500px" height="500px" viewBox="0 0 1000 1000" stroke="red" stroke-width="5" >
	<g id="plane" transform="scale(1,-1) translate(500,-500 ) " runat="server">
		<%--<line x1="0" x2="300" y1="0" y2="300"></line>--%>
	</g>
</svg>
<script>
	(function (
		svg
		,
		key
		,
		plane
	) {
		var SVG = {};
		// These are SVG-related namespace URLs
		SVG.ns = "http://www.w3.org/2000/svg";
		SVG.xlinkns = "http://www.w3.org/1999/xlink";
		SVG.width = svg.clientWidth;
		SVG.height = svg.clientHeight;
		var DRAW = { "strokeWidth": 1 };

		//var plane = document.getElementById("plane");

		var drawLine = function (x1, y1, x2, y2) {

			var shape = document.createElementNS(SVG.ns, "line");
			shape.setAttributeNS(null, "x1", x1);
			shape.setAttributeNS(null, "y1", y1);
			shape.setAttributeNS(null, "x2", x2);
			shape.setAttributeNS(null, "y2", y2);
			plane.appendChild(shape);

		};


		var drawCross = function (x, y) {
			var radius = 5;

			x1 = x - radius;
			y1 = y + radius;
			x2 = x + radius
			y2 = y - radius;

			drawLine(x1, y1, x2, y2);

			drawLine(
				x - radius,
				 y - radius,
				 x + radius,
				y + radius

			);
		};

		var drawPlot = function (array) {
			for (var i = 0; i < array.length; i++) {
				drawCross(array[i][0], array[i][1]);
			}
		};

		var adjustDimension = function (
			points_array
		) {
			var minimal,maximal;
			//get the minimal
			if (points.length !== 0) {
				//minimal = points[0];
				minimalX = points.reduce(function (previous, current, index, collection) {
					if (current[0] < previous[0]) {
						return current[0];

					}
					return previous;
				});

				maximal = points.reduce(
					function (previous, current, currentIndex, collection) {
						return current[0] > previous[0] ? current[0] : previous[0];

					}
				);
			}
		};

		var getBRect = function (array) {
			return [minX(array), maxX(array), minY(array), maxY(array)];
		};

		var maxOfDimension = function (array, dimension) {

			array.reduce(
				   function (previous, current, currentIndex, collection) {
				   	return current[dimension] > previous[dimension] ? current[dimension] : previous[dimension];

				   }
			   );



		};

		var extremumOfDimension = function (array, dimension, order) {

			array.reduce(
			   function (previous, current, currentIndex, collection) {
				 	return order(previous[dimension], current[dimension]);
			   }
		   );
		};

		var minOfDimension = function (array, dimension) {

			return extremumOfDimension(array, dimension, nilnul.num.min);

		};

		var minX = function (array) {
			return minOfDimension(array, 0);
		};
		var minY = function (array) {
			return minOfDimension(array, 1);
		};

		var max = function (array, dimension) {
			return extremumOfDimension(array, dimension, nilnul.num.max);
		};

		var maxX = function (array) {
			return max(array, 0);
		};
		var maxY = function (array) {
			return max(array, 1);
		};

		var points = [[100, 1], [200, 300], [400, 500]];

		var drawPoints = function () {
			drawPlot(points);
		}
		,

		pub = function () {

			key.draw = drawPlot;

		}
		,

		ini = function () {
			pub();
		}



		;
		ini();

		//drawPoints();

		//key.draw();




	})(
		document.getElementById("<%=ClientID%>")
		,
		document.getElementById("<%=ClientID%>")
		,
		document.getElementById("<%= plane.ClientID%>")

		);




</script>
