using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using System.Web.Configuration;


namespace citygas.withoutlogin
{
    public partial class Home : System.Web.UI.Page
    {
        static int attempt = 3; 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, ImageClickEventArgs e)
        {
            //login code
            // Instantiate connection
            //   String strConn = "Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True";
            // SqlConnection objConn = new SqlConnection(strConn);
            SqlConnection objConn = new SqlConnection(WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString);
            SqlDataReader objRead;
            try
            {
                objConn.Open();
                String strQuery = "select * from  register1 where username=@username and password=@password";

                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                objCmd.Parameters.AddWithValue("@username", username.Text);
                objCmd.Parameters.AddWithValue("@password", password.Text);
                String custid = Convert.ToString(objCmd.ExecuteScalar());
                objRead = objCmd.ExecuteReader();
                if (objRead.Read())
                {

                    Session["custid"] = "" + custid.ToString();
                   // attempt = 0;
                    Response.Redirect("/withlogin/Home.aspx");

                }
                else if (attempt > 0)
                {//(attempt == 3) && (attempt > 0)
                    lbl.Text = ("You Have Only " + Convert.ToString(attempt) + " Attempt Left To Try");
                    --attempt;
                }
                else
                {

                    lbl.Text = "LOGIN UNSUCCESSFUL";
                  
                    if (attempt == 0)
                    {
                        username.Enabled = false;
                        password.Enabled = false;

                    }
                }

            }
            finally
            {
            }

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("forgotp.aspx");
        }
    }
}