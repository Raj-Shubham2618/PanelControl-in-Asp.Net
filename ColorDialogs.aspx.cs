using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.Net_Tutorial
{
    public partial class ColorDialogs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtColor1_TextChanged(object sender, EventArgs e)
        {
            div1.Attributes.Add("style", "background-color:" + txtColor1.Text);
        }

        protected void txtColor2_TextChanged(object sender, EventArgs e)
        {
            div2.Attributes.Add("style", "background-color:" + txtColor2.Text);

        }

        protected void txtColor3_TextChanged(object sender, EventArgs e)
        {
            div3.Attributes.Add("style", "background-color:" + txtColor3.Text);

        }
    }
}