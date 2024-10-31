using System.Linq;
using System.Web;

namespace nilnul.task._web.svc
{
	/// <summary>
	/// Summary description for Get
	/// </summary>
	public class Get : IHttpHandler
	{

		public void ProcessRequest(HttpContext context)
		{


			context.Response.ContentType = nilnul.web.mime.Mime.Instances.ApplicationJson;
			var jsonizer = new System.Web.Script.Serialization.JavaScriptSerializer();

			var id = context.Request["id"];
			if (string.IsNullOrWhiteSpace(id))
			{
				context.Response.Write(
				jsonizer.Serialize(new { error = "no id is provided" })
				);

				return;

			}



			long idNum;
			var converted = long.TryParse(id, out idNum);

			if (!converted)
			{
				context.Response.Write(
					jsonizer.Serialize(new { error = "id cannot be parsed into bigInt." })
					);

				return;

			}

			using (var db = nilnul.task.db.entity.Config.GetDb())
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