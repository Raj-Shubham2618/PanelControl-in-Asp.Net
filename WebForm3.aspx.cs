﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.Net_Tutorial
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Hi Coder <br>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "Page is submitted to the server";
        }
    }
}