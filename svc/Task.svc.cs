using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;
using nilnul.task.db.entity;

namespace nilnul.task._web.svc
{
	[ServiceContract(Namespace = "")]
	[AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
	public class Task
	{
		// To use HTTP GET, add [WebGet] attribute. (Default ResponseFormat is WebMessageFormat.Json)
		// To create an operation that returns XML,
		//     add [WebGet(ResponseFormat=WebMessageFormat.Xml)],
		//     and include the following line in the operation body:
		//         WebOperationContext.Current.OutgoingResponse.ContentType = "text/xml";
		[OperationContract]
		[WebGet]
		public void DoWork()
		{
			// Add your operation implementation here
			return;
		}

		// Add more operations here and mark them with [OperationContract]
		[OperationContract]
		[WebInvoke(Method = "GET", BodyStyle = WebMessageBodyStyle.WrappedRequest, ResponseFormat = WebMessageFormat.Json)]

		public nilnul.task.db.entity.Task1 Get(long id)
		{
			using (var db = Config.GetDb())
			{
				return db.Task1.FirstOrDefault(c => c.id == id);
			}
		}
		[OperationContract]
		[WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json,RequestFormat = WebMessageFormat.Json)]

		public nilnul.task.db.entity.Task1 Get2(long id)
		{
			
			using (var db = Config.GetDb())
			{
				return db.Task1.FirstOrDefault(c => c.id == id);
			}
		}
	}
}
