using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace nilnul.task._web.list.svc
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

            var start = context.Request["start"];   //string.

            ulong? startNum;

            if (string.IsNullOrWhiteSpace(start))
            {
                startNum = 0;

            }
            else
            {
                startNum = nilnul.num.natural.NaturalX.Parse(start);

                if (startNum == null)
                {
                    context.Response.Write(
                                        jsonizer.Serialize(new { error = "start cannot be parsed into bigInt." })
                                        );

                    return;

                }


            }


            using (var db = nilnul.task.db.entity.Config.GetDb())
            {

                context.Response.Write(
                    jsonizer.Serialize(
                        db.Task1.ToArray()

                    )


                );



            }




        }


        public IEnumerable<nilnul.task.db.Task> GetTasks(ulong start, ulong count) { 

        
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