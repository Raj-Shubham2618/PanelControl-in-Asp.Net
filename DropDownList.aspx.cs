using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.Net_Tutorial
{
    public partial class DropDownList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //DropDownList1.Items.Add("Mumbai");
                //DropDownList1.Items.Add(new ListItem("Chennai", "City4"));
                ListItem color1 = new ListItem("Red", "Color1");
                ListItem color2 = new ListItem("Blue", "Color2");
                ListItem color3 = new ListItem("Green", "Color3");
                ListItem color4 = new ListItem("Black", "Color4");
                ListItem color5 = new ListItem("White", "Color5");
                ListItem color6 = new ListItem("Yellow", "Color6");
                ListItem[] Colors = new ListItem[] { color1, color2, color3, color4, color5, color6 };
                DropDownList1.Items.AddRange(Colors);

            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Label1.Text = "Your selected color is : " +DropDownList3.SelectedItem.Text.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "Your selected  : " +
            DropDownList4.SelectedItem.Text.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = "Value = " + DropDownList1.SelectedValue;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Text = "Value = " + DropDownList1.SelectedIndex;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            DropDownList1.Items.Clear();
            Label1.Text = "ListBox Cleared";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            DropDownList1.Items.Add("ASP.NET");
            DropDownList1.Items.Add(".NET Core");
            DropDownList1.Items.Add("C++");
            DropDownList1.Items.Add("Java");
            Label1.Text = "Item Added";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            DropDownList1.Items.Remove("ASP.NET");
            DropDownList1.Items.Remove(".NET Core");
            DropDownList1.Items.Remove("C++");
            DropDownList1.Items.Remove("Java");
            Label1.Text = "Item Removed";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            DropDownList1.Items.Insert(2, "CoderBaba");
            Label1.Text = "Item Inserted";
        }
    }
}