using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace citygas.Admin
{
    public partial class adminlg : System.Web.UI.Page
    {
        static int attempt = 3; 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            SqlConnection objConn = new SqlConnection(WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString);
            //  String strConn = "Data Source=ABC-PC\\SQL;Initial Catalog=gasbk;Integrated Security=True";
            //   SqlConnection objConn = new SqlConnection(strConn);
            SqlDataReader objRead;

            try
            {
                objConn.Open();
                String strQuery = "select * from adminlg where username=@username and password=@password";
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                objCmd.Parameters.AddWithValue("@username", username.Text);
                objCmd.Parameters.AddWithValue("@password", password.Text);
                objRead = objCmd.ExecuteReader();
                Session["username"] = username.Text;
                if (objRead.Read())
                {
                    attempt = 0;
                    lbl.Text = "Username and Password entered are correct";
                    Response.Redirect("adminhome.aspx");
                    //  lbl.Text = Session["username"] + "";
                }
                else if (attempt > 0)
                {//(attempt == 3) && (attempt > 0)
                    lbl.Text = ("You Have Only " + Convert.ToString(attempt) + " Attempt Left To Try");
                    --attempt;
                }
                else
                {
                    lbl.Text = "you are not granted with access";
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
    }
}