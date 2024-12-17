using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ASP.Net_Tutorial
{
    public partial class DropDown_default3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindCountrylist();
            }
        }
        private void bindCountrylist()
        {
            string query = "Select * from Country ";
            SqlDataAdapter adpt = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            ddlCountries.DataSource = dt;
            ddlCountries.DataTextField = "County";
            ddlCountries.DataValueField = "CountryId";
            ddlCountries.DataBind();
            ddlCountries.Items.Insert(0, "-Select Country-");
            ddlStates.Enabled = false;
            ddlCities.Enabled = false;
            ddlStates.Items.Insert(0, new ListItem("-Select State","0"));
            ddlCities.Items.Insert(0, new ListItem("-Select City", "0"));

        }

        protected void ddlCountries_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlStates.Enabled = true;
            ddlCities.Enabled = false;
            ddlStates.Items.Clear();
            bindStetelist();

        }
        private void bindStetelist()
        {
            int countryID = int.Parse(ddlCountries.SelectedItem.Value);
            string query = "Select * from countryState where countryId= '"+ countryID + "' ";
            SqlDataAdapter adpt = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            ddlStates.DataSource = dt;
            ddlStates.DataTextField = "State";
            ddlStates.DataValueField = "StateId";
            ddlStates.DataBind();
            ddlStates.Items.Insert(0, "-Select Country-");
         
            ddlCities.Enabled = false;
            ddlCities.Items.Insert(0, new ListItem("-Select State", "0"));

        }

        protected void ddlStates_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlCities.Enabled= true;
            bindCitylist();
        }
            private void bindCitylist()
            {
                int stateID = int.Parse(ddlCountries.SelectedItem.Value);
                string query = "Select * from stateCity where countryId= '" + stateID + "' ";
                SqlDataAdapter adpt = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                ddlStates.DataSource = dt;
                ddlStates.DataTextField = "City";
                ddlStates.DataValueField = "CityId";
                ddlStates.DataBind();
                ddlStates.Items.Insert(0, "-Select City-");

                

            
        }
    }
}