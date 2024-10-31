using nilnul.math.calculus;
using nilnul.num.quotient_.denomNonnil;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace nilnul._task_._WEB_.prj.duration.cpf
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

			var sim = new nilnul.task.prj.survey_.Simulate(nilnul.task.prj.survey_.simulate_.Demo.proj/*.._demo.Project_DemoInstance.proj*/);
			//var cdf = sim.getCdf();

			var pmf = sim.getPmf();

			var pmf2 = nilnul.stat.dist_.finite_.quotient2quotient._RegressionsX.PmfBySortedDict(pmf);

			var cpf = nilnul.stat.dist_.borel_.pdfable_.empiric.of_._OfPmfX.ToEmpiric(pmf2);

			var count = 100;


            //convert the results into array,which can be understood by browser.

			var points1d = new double[(count+1) * 2];

			var span4each = cpf.cmf.span / count;

			for (int i = 0; i <= count; i++)
			{
				var index = i * 2;
				var sample=cpf.cmf.min + span4each*i;
				points1d[index] =
					sample.ToDbl();
					//densities.ElementAt(i).Key.toDouble()
				;
				points1d[index + 1] = cpf.cumulatedProb( sample ).ToDbl();	// densities.ElementAt(i).Value.val.toDouble();
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