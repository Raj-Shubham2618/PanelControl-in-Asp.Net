using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.Net_Tutorial
{
    public partial class Radio_Checkbox_Button : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             if(RadioButton1.Checked == true)
                    {
                    genderId.Text = "You selected Male";
            }
            else if (RadioButton2.Checked == true)
            {
                genderId.Text = "You selected Female";
            }
            else
            {
                genderId.Text = "You selected nothing";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {
                genderId.Text = "  You selected " + CheckBox1.Text;
            }
             if (CheckBox2.Checked == true)
            {
                genderId.Text += " <br> You selected " + CheckBox2.Text;
            }

            var message = "";

            if (CheckBox3.Checked)
            {
                message = CheckBox3.Text + " ";
            }
            if (CheckBox4.Checked)
            {
                message += CheckBox4.Text + " ";
            }

            if (CheckBox5.Checked)
            {
                message += CheckBox5.Text + " ";
            }

            ShowCourses.Text = message;



        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {
Response.Write("<script>alert('You selected course - " +CheckBox3.Text+"')</script>");
        }
    }
}