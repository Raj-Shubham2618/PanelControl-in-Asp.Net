using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.Net_Tutorial
{
    public partial class ResponsePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // This is for post method
            //string name = Request.Form["txtName"];
            //string pass = Request.Form["txtPwd"];
            //string email = Request.Form["txtEmail"];
            //Response.Write("<h3>Hello " + name + ", we have received your contact details.</h3>");
            //Response.Write("Pasword:" + pass + "<br />");
            //Response.Write("Contact Email:" + email + "<br />");

            
            //Get method
            string Name = Request.QueryString["txtName"];
            string Pass = Request.QueryString["txtPwd"];
            string Email = Request.QueryString["txtEmail"];

            Response.Write("Name:" + Name + "<br />");
            Response.Write(" Your Password:" + Pass + "<br />");
            Response.Write("Your Email:" + Email + "<br />");

        }
    }
}