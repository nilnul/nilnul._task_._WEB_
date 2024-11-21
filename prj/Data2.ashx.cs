using nilnul.math.calculus;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace nilnul._task_._WEB_.prj
{
	/// <summary>
	/// Summary description for Data
	/// </summary>
	public class Data2 : IHttpHandler
	{

		public void ProcessRequest(HttpContext context)
		{


			context.Response.ContentType = nilnul.web.mime.Mime.Instances.ApplicationJson;
			var jsonizer = new System.Web.Script.Serialization.JavaScriptSerializer();

			var sim = new nilnul.task.prj.survey_.Simulate(nilnul.task.prj.survey_.simulate_.eg_.Demo.proj/*.._demo.Project_DemoInstance.proj*/);
			//var cdf = sim.getCdf();

			var pmf = sim.getPmf();



			///todo: double to rational in range
			///cpm path


//			var densities = cdf.densities(
//#if DEBUG
//100
//#else
//				1000

//#endif

//			);


			var densities_byPmf = pmf.densities_sortedDict(
#if DEBUG
				100
#else
				200
#endif
			);

			var densities = densities_byPmf;

            //convert the results into array,which can be understood by browser.

			var points1d = new double[densities.Count * 2];

			for (int i = 0; i < densities.Count; i++)
			{
				var index = i * 2;
				points1d[index] = densities.ElementAt(i).Key.toDouble();
				points1d[index + 1] = densities.ElementAt(i).Value.val.toDouble();

			}

            //responce to browser.
			context.Response.Write(jsonizer.Serialize(points1d));
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