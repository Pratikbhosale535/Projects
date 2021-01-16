using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace citygas.withlogin
{
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //  string strConn = "Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True";
            string strConn = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;
            SqlConnection objConn = new SqlConnection(strConn);
            try
            {
                objConn.Open();
                custid.Text = Session["custid"] + "";

                String strQuery = "select fname,lname,username,email from register1 where custid='" + custid.Text + "'";

                SqlCommand objCmd = new SqlCommand(strQuery, objConn);

                SqlDataReader reader = objCmd.ExecuteReader();

                while (reader.Read())
                {

                    fname.Text = reader["fname"] + "";
                    lname.Text = reader["lname"] + "";
                    username.Text = reader["username"] + "";
                    email.Text = reader["email"] + "";


                }

            }
            catch
            {

            }
            objConn.Close();
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            //  string strConn = "Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True";
            string strConn = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;

            SqlConnection objConn = new SqlConnection(strConn);


            try
            {

                String strQuery = "update register1 set fname=@fname,lname=@lname,username=@username,password=@password,cpassword=@cpassword,email=@email,mn=@mn,question=@question,ans=@ans where custid=@custid";
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                objCmd.Parameters.AddWithValue("@custid", custid.Text);
                objCmd.Parameters.AddWithValue("@fname", fname.Text);
                objCmd.Parameters.AddWithValue("@lname", lname.Text);
                objCmd.Parameters.AddWithValue("@username", username.Text);
                objCmd.Parameters.AddWithValue("@password", password.Text);
                objCmd.Parameters.AddWithValue("@cpassword", cpassword.Text);
                objCmd.Parameters.AddWithValue("@email", email.Text);
                objCmd.Parameters.AddWithValue("@mn", mn.Text);
                objCmd.Parameters.AddWithValue("@question", ddl.SelectedItem.Value);
                objCmd.Parameters.AddWithValue("@ans", ans.Text);
                objConn.Open();
                objCmd.ExecuteNonQuery();

                lbl.Text = "Record Updated successfully";

            }
            catch
            {
                lbl.Text = "Record Updation failed";
            }
            objConn.Close();
        }
    }
}