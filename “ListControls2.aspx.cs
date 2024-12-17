using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.Collections.Generic;

namespace ASP.Net_Tutorial
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetAllCountry();
                DataSet ds = new DataSet();
                String PhysicalPath = Server.MapPath("~/Products.xml");
                ds.ReadXml(PhysicalPath);

                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "Name";
                DropDownList1.DataValueField = "Id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "-Select Product-");

                ListBox1.DataSource = ds;
                ListBox1.DataTextField = "Name";
                ListBox1.DataValueField = "Id";
                ListBox1.DataBind();

                RadioButtonList1.DataSource = ds;
                RadioButtonList1.DataTextField = "Name";
                RadioButtonList1.DataValueField = "Id";
                RadioButtonList1.DataBind();

                CheckBoxList1.DataSource = ds;
                CheckBoxList1.DataTextField = "Name";
                CheckBoxList1.DataValueField = "Id";
                CheckBoxList1.DataBind();
                binddropdownlist();

            }
        }

        private void GetAllCountry()
        {
            List<string> objcountries = new List<string>();
            CultureInfo[] objculture = CultureInfo.GetCultures(CultureTypes.SpecificCultures);
            foreach (CultureInfo getculture in objculture)
            {
                RegionInfo objregion = new RegionInfo(getculture.LCID);
                if (!(objcountries.Contains(objregion.EnglishName)))
                {
                    objcountries.Add(objregion.EnglishName);
                }
            }
            objcountries.Sort();
            DropDownList3.DataSource = objcountries;
            DropDownList3.DataBind();
            Response.Write("<script>alert('" + DropDownList3.Items.Count + "')</script>");
        }

        private void binddropdownlist()
        {
            string com = "Select * from Qualification ";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DropDownList2.DataSource = dt;
            DropDownList2.DataBind();
            DropDownList2.DataTextField = "Qualification";
            DropDownList2.DataValueField = "QualificationCode";
            DropDownList2.Items.Insert(0, "-Select Product-");
            DropDownList2.DataBind();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex > 0)
            {
                ListItem li = DropDownList1.SelectedItem; Label1.Text = li.Value + ": " + li.Text;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label2.Text = "";
            foreach (int i in ListBox1.GetSelectedIndices())
            {
                ListItem li = ListBox1.Items[i]; Label2.Text += li.Value + ": " + li.Text + "<br />";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedItem != null)
            {
                ListItem li = RadioButtonList1.SelectedItem; Label3.Text = li.Value + ": " + li.Text;
            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label4.Text = "";
            foreach (ListItem li in CheckBoxList1.Items)
            {
                if (li.Selected)
                {
                    Label4.Text += li.Value + ": " + li.Text + "<br />";
                }
            }

        }
    }
}