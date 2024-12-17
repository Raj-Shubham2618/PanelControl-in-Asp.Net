using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.Net_Tutorial
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //write c# code to generate button control 
            //Button btn1 = new Button();
            //   btn1.ID = "btnlogin";
            //   btn1.Text = "Login";
            //   form1.Controls.Add(btn1);

        
            Button2.Click += Button2_Click;
        }

        private void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Button2 is clicked.')</script>");
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            Response.Write("Hello Coder");
        }

       

        protected void Btn3_Click1(object sender, EventArgs e)
        {
            Response.Write("Hello Coders");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Write("Hello Coder baba");
        }
    }
}