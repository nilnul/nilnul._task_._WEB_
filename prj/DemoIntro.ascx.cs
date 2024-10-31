using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.proj._web
{
    public partial class DemoIntro : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string demoUrl
        {
            get
            {
#if DEBUG
                return this.ResolveClientUrl("~/_page/Demo_ajax1d.aspx");
#else
                return "http://nilnul.com/_apps/nilnul.proj/_page/Demo_ajax1d.aspx";
#endif
            }
        }
    }
}