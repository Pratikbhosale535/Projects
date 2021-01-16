using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace citygas.withoutlogin
{
    public partial class fp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            username.Text = Session["username"] + "";
        }

        protected void sub_Click(object sender, EventArgs e)
        {
            // Instantiate connection
            //  String strConn = "Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True";
            //  SqlConnection objConn = new SqlConnection(strConn);
            SqlConnection objConn = new SqlConnection(WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString);

            // SqlDataReader objRead;
            try
            {
                objConn.Open();
                String strQuery = "update register1 set password=@password, cpassword=@cpassword where username= @username";
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                objCmd.Parameters.AddWithValue("@username", username.Text);
                objCmd.Parameters.AddWithValue("@password", password.Text);
                objCmd.Parameters.AddWithValue("@cpassword", cpassword.Text);
                objCmd.ExecuteNonQuery();
                //    objRead = objCmd.ExecuteReader();
                lbl.Text = "PASSWORD CHANGE SUCCESSFULLY, NOW YOU CAN LOGIN WITH NEW PASSWORD";
            }
            catch
            {
                lbl.Text = "ERROR";
            }
            finally
            {
                objConn.Close();
            }
        }

        protected void sub0_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}