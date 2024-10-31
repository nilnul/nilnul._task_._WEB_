using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using nilnul.task.db.entity;

namespace nilnul.task._web.svc.ash
{
	/// <summary>
	/// Summary description for Del
	/// </summary>
	public class Del : IHttpHandler
	{

		public void ProcessRequest(HttpContext context)
		{
			context.Response.ContentType = "text/plain";
			var id = context.Request["id"];
			var jsonizer = new System.Web.Script.Serialization.JavaScriptSerializer();

			if (string.IsNullOrWhiteSpace(id))
			{

				return ;

			}

			long idNum;
			var converted = long.TryParse(id, out idNum);

			if (!converted)
			{

				context.Response.Write(
					jsonizer.Serialize( "id cannot be parsed into bigInt.")
					);

				return;

			}

			using (var db = Config.GetDb())
			{

				db.Del(idNum);
				
				db.SaveChanges();


				
			}
			return;
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