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
	public class Set : IHttpHandler
	{

		public void ProcessRequest(HttpContext context)
		{

			var id = context.Request["id"];
			var jsonizer = new System.Web.Script.Serialization.JavaScriptSerializer();

			if (string.IsNullOrWhiteSpace(id))
			{
				using (var db = Config.GetDb())
				{
					var t = new nilnul.task.db.entity.Task1 {note = context.Request["note"]};

					db.Task1.Add(t);
					db.SaveChanges();


					context.Response.Write(
							jsonizer.Serialize(new { data = new { id = t.id } })

					);


				}

				return;

			}
			//get the human.

			context.Response.ContentType = "text/plain";

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

				if (record == null)	//no such record.
				{

					context.Response.Write(
								jsonizer.Serialize(new { error = "no such id" })

					);
					return;
				}

				record.note = context.Request["note"];
				db.SaveChanges();

				context.Response.Write(
								jsonizer.Serialize(new {})

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