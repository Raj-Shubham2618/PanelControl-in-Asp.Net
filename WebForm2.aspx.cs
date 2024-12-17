using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.Net_Tutorial
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //    Response.Write("<font color='red'>Cross Page Submission.</font>");

            //TextBox txtName = (TextBox)PreviousPage.FindControl("txtUserName");
            //TextBox txtLocation = (TextBox)PreviousPage.FindControl("txtLocation");
            //lblName.InnerText = "Welcome to WebForm2.aspx page " + txtName.Text;
            //lblLocation.InnerText = "Your Location: " + txtLocation.Text;

            if (PreviousPage != null && PreviousPage.IsCrossPagePostBack)
            {
                TextBox txtName = (TextBox)PreviousPage.FindControl("txtUserName");
                TextBox txtLocation = (TextBox)PreviousPage.FindControl("txtLocation");
                lblName.InnerText = "Welcome to WebForm2.aspx page " + txtName.Text;
                lblLocation.InnerText = "Your Location: " + txtLocation.Text;
            }
            else
            {
                Response.Redirect("WebForm1.aspx");
            }
        }
    }
}