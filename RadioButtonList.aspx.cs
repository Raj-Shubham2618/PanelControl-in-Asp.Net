using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.Net_Tutorial
{
    public partial class RadioButtonList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "You have selected </br> Item=" +
            RadioButtonList1.SelectedItem.Text + "</br> Value =" +
            RadioButtonList1.SelectedValue + "</br> Index =" +
            RadioButtonList1.SelectedIndex;
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Image1.ImageUrl="Image/"+ RadioButtonList2.SelectedItem.Text;

        }
    }
}