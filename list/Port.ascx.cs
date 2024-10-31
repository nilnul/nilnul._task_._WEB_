using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.task._web.list
{
	public partial class Port : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected override void Render(HtmlTextWriter output)
		{
			if (DesignMode)
			{

				output.Write("aaaaaaaaaa");
				return;
			}
			else
			{
				base.Render(output);
			}

		}

	}
}