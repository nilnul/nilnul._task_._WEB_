<%@ Control Language="C#" AutoEventWireup="true"  %>





<svg 
	id="<%=ClientID %>"
	 
<%--	style="width: 500px; height: 500px; background: grey;"--%>
<%--	style="width: 100%; height: 100%; "--%>
<%--		 width="500px" 
		height="500px"--%>
	<%--width="100%"
	height="100%"--%>
		 width="500px" 
		height="500px"

	viewBox="0 0 1000 1000" 
	stroke="red" 
	stroke-width="5" 
	style="position:relative;"
	>

	<rect width="100%" height="100%" style="stroke:#bbbbbb; fill: #cccccc">

	</rect>

	

	<%--<g id="plane" transform="scale(1,-1) translate(500,-500 ) " runat="server">
		<line x1="0" x2="300" y1="0" y2="300"></line>
	</g>--%>
	<g id="plane" 
		 runat="server">
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

		var margin = 50;

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
			var box = getBRect(array);

			var scaleX = (svg.viewBox.baseVal.width - margin * 2) / (box[1] - box[0]);

			var scaleY = (svg.viewBox.baseVal.height - margin * 2) / (box[3] - box[2]);

			drawAxis(box[0], box[1],box[2],box[3]);


			for (var j = 0; j < array.length; j++) {

				array[j][0] *= scaleX;
				array[j][1] *= scaleY;

			}

			 box = getBRect(array);

			 scaleX = (svg.viewBox.baseVal.width - margin * 2) / (box[1] - box[0]);

			 scaleY = (svg.viewBox.baseVal.height - margin * 2) / (box[3] - box[2]);




			for (var i = 0; i < array.length; i++) {
				drawCross(array[i][0], array[i][1]);
			}





		//	drawAxisX(box[0], box[1]);

			//transform g
			var tfmList = plane.transform.baseVal;

			var scale = svg.createSVGTransform(
				
				);


			var scaleX = (svg.viewBox.baseVal.width - margin * 2) / (box[1] - box[0]);

			var scaleY = (svg.viewBox.baseVal.height - margin * 2) / (box[3] - box[2]);


			scale.setScale(

				//(box[2] - box[0]) / (svg.viewBox.baseVal.width - 5 * 2)
				// (svg.viewBox.baseVal.width - 5 * 2)/(box[1] - box[0]) 
				scaleX


				,
				scaleY
				//			 (svg.viewBox.baseVal.height- 5 * 2)/(box[3] - box[2]) 


			);

			var translate = svg.createSVGTransform();
			translate.setTranslate(
				(-box[0]) * scaleX + margin
				,
				(-box[2]) * scaleY + margin
			);


			var translate2 = svg.createSVGTransform();
			translate2.setTranslate(
				(-box[0]) * scaleX + margin / scaleX
				,
				(-box[2]) * scaleY + margin / scaleY
			);

			var translate3 = svg.createSVGTransform();
			translate3.setTranslate(
				(-box[0])  + margin  / scaleX
				,
				(-box[2])  + margin / scaleY
			);



			tfmList.clear();
//			tfmList.appendItem(scale);
//			tfmList.appendItem(translate);

			tfmList.appendItem(scale);
			tfmList.appendItem(translate3);

			//svg.transform.baseVal='scale(1,-1)';




			///todo: to remove
			//changeViewbox();

		//	transform();



		};

		var draw = function (array) {
			drawPlot(array);
			//get the BBox
			var box = getBRect(array);
			//draw coords
		};

		var createText = function (text,x,y,fontSize) {

			var xNoteMinText = document.createElementNS(SVG.ns, 'text');
			xNoteMinText.setAttributeNS(null, 'x', x);
			xNoteMinText.setAttributeNS(null, 'y', y);

			xNoteMinText.setAttributeNS(null, 'font-size', fontSize);

			var xNoteMinTextContent = document.createTextNode(text);
	
			xNoteMinText.appendChild(xNoteMinTextContent);
			return (xNoteMinText);



		};

		var drawAxisX = function (minX, maxX) {
			var shape = document.createElementNS(SVG.ns, "line");
			var margin = 50;

			shape.setAttributeNS(null, "x1", 0);
			shape.setAttributeNS(null, "y1", margin);
			shape.setAttributeNS(null, "x2", svg.viewBox.baseVal.width);
			shape.setAttributeNS(null, "y2", margin);
			svg.appendChild(shape);



			var xMaxNoteX= svg.viewBox.baseVal.width-margin;

			var xMaxNote = createLine(svg.viewBox.baseVal.width - margin, margin, xMaxNoteX, 0);

			svg.appendChild(xMaxNote);


			var xNoteMinText = document.createElementNS(SVG.ns, 'text');
			xNoteMinText.setAttributeNS(null, 'x', margin);
			xNoteMinText.setAttributeNS(null, 'y', margin);

			xNoteMinText.setAttributeNS(null, 'font-size', margin);
			var xNoteMinTextContent = document.createTextNode(Math.round( minX*100)/100);
			xNoteMinText.setAttributeNS(null, 'transform', 'rotate(-0 '+margin+' '+margin+  ')');
			xNoteMinText.appendChild(xNoteMinTextContent);
			svg.appendChild(xNoteMinText);


			var xNoteMaxText = createText(Math.round( maxX*100)/100,xMaxNoteX,margin,margin);
			svg.appendChild(xNoteMaxText);


			var yNote = {};

			yNote.min = {
				x: margin
				,
				y: margin


			};

			yNote.max = {
				x: margin
				,
				y:svg.viewBox.baseVal.height-margin
			}

			yNote.min.textNode = createText(minX,yNote.min.x,yNote.min.y,margin);
			yNote.max.textNode = createText(maxX,yNote.max.x,yNote.max.y,margin);

			yNote.min.textNode.setAttribute('dy',margin);
			svg.appendChild(yNote.min.textNode);
			svg.appendChild(yNote.max.textNode);



			var shapeY = document.createElementNS(SVG.ns, "line");
		

			shapeY.setAttributeNS(null, "x1", margin);
			shapeY.setAttributeNS(null, "y1", 0);
			shapeY.setAttributeNS(null, "x2", margin);
			shapeY.setAttributeNS(null, "y2", svg.viewBox.baseVal.width);
			svg.appendChild(shapeY);

			var yMaxNoteY = svg.viewBox.baseVal.height- margin;

			var yMaxNoteSeg = createLine(margin, yMaxNoteY, 0, yMaxNoteY);

			svg.appendChild(yMaxNoteSeg);



		};

		var drawAxis = function (minX, maxX,minY,maxY) {
			var shape = document.createElementNS(SVG.ns, "line");
			var margin = 50;

			shape.setAttributeNS(null, "x1", 0);
			shape.setAttributeNS(null, "y1", margin);
			shape.setAttributeNS(null, "x2", svg.viewBox.baseVal.width);
			shape.setAttributeNS(null, "y2", margin);
			svg.appendChild(shape);



			var xMaxNoteX = svg.viewBox.baseVal.width - margin;

			var xMaxNote = createLine(svg.viewBox.baseVal.width - margin, margin, xMaxNoteX, 0);

			svg.appendChild(xMaxNote);


			var xNoteMinText = document.createElementNS(SVG.ns, 'text');
			xNoteMinText.setAttributeNS(null, 'x', margin);
			xNoteMinText.setAttributeNS(null, 'y', margin);

			xNoteMinText.setAttributeNS(null, 'font-size', margin);
			var xNoteMinTextContent = document.createTextNode(Math.round(minX * 100) / 100);
			xNoteMinText.setAttributeNS(null, 'transform', 'rotate(-0 ' + margin + ' ' + margin + ')');
			xNoteMinText.appendChild(xNoteMinTextContent);
			svg.appendChild(xNoteMinText);


			var xNoteMaxText = createText(Math.round(maxX * 100) / 100, xMaxNoteX, margin, margin);
			svg.appendChild(xNoteMaxText);


			var yNote = {};

			yNote.min = {
				x: margin
				,
				y: margin


			};

			yNote.max = {
				x: margin
				,
				y: svg.viewBox.baseVal.height - margin
			}

			yNote.min.textNode = createText(Math.round(minY*100)/100, yNote.min.x, yNote.min.y, margin);
			yNote.max.textNode = createText(Math.round(maxY*100)/100, yNote.max.x, yNote.max.y, margin);
			yNote.min.textNode.setAttribute('text-anchor', 'end');
			yNote.max.textNode.setAttribute('text-anchor', 'end');


			yNote.min.textNode.setAttribute('dy', margin);

			svg.appendChild(yNote.min.textNode);
			svg.appendChild(yNote.max.textNode);



			var shapeY = document.createElementNS(SVG.ns, "line");


			shapeY.setAttributeNS(null, "x1", margin);
			shapeY.setAttributeNS(null, "y1", 0);
			shapeY.setAttributeNS(null, "x2", margin);
			shapeY.setAttributeNS(null, "y2", svg.viewBox.baseVal.width);
			svg.appendChild(shapeY);

			var yMaxNoteY = svg.viewBox.baseVal.height - margin;

			var yMaxNoteSeg = createLine(margin, yMaxNoteY, 0, yMaxNoteY);

			svg.appendChild(yMaxNoteSeg);



		};


		var createLine = function (x1, y1, x2, y2) {

			var shape = document.createElementNS(SVG.ns, "line");
		

			shape.setAttributeNS(null, "x1", x1);
			shape.setAttributeNS(null, "y1", y1);
			shape.setAttributeNS(null, "x2", x2);
			shape.setAttributeNS(null, "y2", y2);
			return shape;



		};

		var transform = function () {

			var translate = svg.createSVGTransform();

			translate.setTranslate(-1850, -55);

			var scale = svg.createSVGTransform();
			scale.setScale(2.8, 3.8);

			var list = plane.transform.baseVal;
			list.insertItemBefore(scale,0);
			list.insertItemBefore(translate,0);


		};


		var adjustDimension = function (
			points_array
		) {
			var minimal, maximal;
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

			return array.reduce(
			   function (previous, currentElement, currentIndex, collection) {
			   	return order(previous, currentElement[dimension]);
			   }
			   ,array[0][dimension]
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

		changeViewbox = function (

		) {
			//svg.setAttribute('viewBox', "0 0 " + svgViewBoxWidth + " " + svgViewBoxHeight);
			svg.setAttribute('viewBox', '50 50 80 80');



		},

		pub = function () {

			key.draw = drawPlot;
			key.changeViewbox = changeViewbox;

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
