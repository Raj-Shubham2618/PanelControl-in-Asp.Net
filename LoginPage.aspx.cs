using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.Net_Tutorial
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            txtName.Focus();   
            
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            //txtName.Text = "";
            //txtPwd.Text = String.Empty;
            //txtEmail.Text = null;
            //lblStatus.Text = "";

            txtName.Text = txtPwd.Text = txtEmail.Text = lblStatus.Text = "";
            txtName.Focus();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(txtName.Text == "Shubham" && txtPwd.Text == "Shubham@143" && txtEmail.Text == "shubham@gmail.com")
            {
                lblStatus.Text = "Valid User";
            }
            else
            {
                lblStatus.Text = "Invalid User";
            }
        }
    }
}