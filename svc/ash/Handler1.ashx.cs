using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using nilnul.task.db.entity;

namespace nilnul.task._web.svc.ash
{
	/// <summary>
	/// Summary description for Handler1
	/// </summary>
	public class Handler1 : IHttpHandler
	{

		public void ProcessRequest(HttpContext context)
		{
			var jsonizer = new System.Web.Script.Serialization.JavaScriptSerializer();
			//context.Response.ContentType = "text/json";
			context.Response.ContentType = "text/plain";

			var id = context.Request["id"];
			if (string.IsNullOrWhiteSpace(id))
			{
				context.Response.Write(
				jsonizer.Serialize(new { error = "no id is provided" })
				);

				return;

			}
			//get the human.


			long idNum;
			var converted = long.TryParse(id, out idNum);

			if (!converted)
			{
				//return json.

				context.Response.Write(
					jsonizer.Serialize(new { error = "id cannot be parsed into bigInt." })
					);

				return;

			}

			using (var db = Config.GetDb())
			{
				var record = db.Task1.FirstOrDefault(c => c.id == idNum);

				context.Response.Write(
								jsonizer.Serialize(new { data = record })

				);
			}
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