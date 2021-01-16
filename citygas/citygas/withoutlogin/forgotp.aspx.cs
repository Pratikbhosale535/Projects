using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace citygas.withoutlogin
{
    public partial class forgotp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sub_Click(object sender, EventArgs e)
        {
            //   String strConn = "Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True";
            //  SqlConnection objConn = new SqlConnection(strConn);
            SqlConnection objConn = new SqlConnection(WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString);
            SqlDataReader objRead;

            try
            {
                objConn.Open();
                String strQuery = "select * from register1 where username=@username and question=@question and ans=@ans ";

                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                objCmd.Parameters.AddWithValue("@username", username.Text);
                objCmd.Parameters.AddWithValue("@question", ddl.SelectedItem.Value);
                objCmd.Parameters.AddWithValue("@ans", ans.Text);
                Session["username"] = username.Text;
                objRead = objCmd.ExecuteReader();
                if (objRead.Read())
                {
                    // lbl.Text = "Question and Answer are right";
                    Response.Redirect("fp.aspx");

                }
                else
                {
                    lbl.Text = "Entered credentials are wrong .";
                }
            }
            finally
            {

            }
        }

        protected void email_Click1(object sender, EventArgs e)
        {
            Response.Redirect("em.aspx");
        }
    }
}