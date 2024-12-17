using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;
using System.Xml.Linq;

namespace ASP.Net_Tutorial
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write("Hi please subscribe my channel");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Hi my name is Shubham') </script>");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Hi this is textbox textchanged event') </script>");
        }
    }
}