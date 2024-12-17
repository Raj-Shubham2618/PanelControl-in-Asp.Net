using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.Net_Tutorial
{
    public partial class Calculator2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
                txtNum1.Focus();
        }

        protected void Button_Command(object sender, CommandEventArgs e)
        {
            int num1 = int.Parse(txtNum1.Text);
            int num2 = int.Parse(txtNum2.Text);
            int Result = 0;

            switch (e.CommandName)
            {
                case "+":
                    Result = num1 + num2;
                    break;
                case "-":
                    Result = num1 - num2;
                    break;
                case "*":
                    Result = num1 * num2;
                    break;
                case "/":
                    Result = num1 / num2;
                    break;
                case "%":
                    Result = num1 % num2;
                    break;
            }
            txtResult.Text = Result.ToString();



        }
    }
}