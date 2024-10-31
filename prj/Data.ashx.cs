using nilnul.math.calculus;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace nilnul.proj._web
{
	/// <summary>
	/// Summary description for Data
	/// </summary>
	public class Data : IHttpHandler
	{

		public void ProcessRequest(HttpContext context)
		{


			context.Response.ContentType = nilnul.web.mime.Mime.Instances.ApplicationJson;
			var jsonizer = new System.Web.Script.Serialization.JavaScriptSerializer();



			var sim = new nilnul.task.proj.Simulation2(nilnul.task._demo.Project_DemoInstance.proj);
			var cdf = sim.getCdf();

			///todo: double to rational in range
			///cpm path


			var densities = cdf.densities(
#if DEBUG
				100
#else
				1000

#endif

		);

			



			double[,] points = new double[densities.Count, 2];

	
			var points1d = new double[densities.Count * 2];


			for (int i = 0; i < points.GetLength(0); i++)
			{

				//	points[i, 0] = sampleDensityS.ElementAt<KeyValuePair<nilnul.num.rational.Rational_InheritFraction,(i).Value;

				points[i, 0] = densities.ElementAt(i).Key.toDouble();
				//	points[i, 0] = (i + 1)/2.0	;

				points1d[i]=densities.ElementAt(i).Key.toDouble();

				points[i, 1] = densities.ElementAt(i).Value.val.toDouble();
				//points[i, 0] = points[i, 0] * 100;
				points1d[i+1]=densities.ElementAt(i).Value.val.toDouble();

			}






			context.Response.Write(jsonizer.Serialize(points));
		}

		public bool IsReusable
		{
			get
			{
				return false;
			}
		}
	}
}