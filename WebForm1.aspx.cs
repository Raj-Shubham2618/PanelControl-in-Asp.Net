using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.Net_Tutorial
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (IsPostBack)
            //    Response.Write("<script>alert('Page is post back') </script> ");
            //else
            //    Response.Write("<script>alert('Page is not post back..else part running') </script> ");

            if (IsPostBack)
                Response.Write("This is a post or post back request.");
            else
                Response.Write("This is a first or get request.");

        }
         
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert(''This is a post back request.')</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}