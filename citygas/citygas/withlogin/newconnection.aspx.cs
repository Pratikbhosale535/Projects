using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace citygas.withlogin
{
    public partial class newconnection : System.Web.UI.Page
    {

        // string strConnString = "Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True";
        string strConnString = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;
        string str;

        SqlCommand com;
        int count;
        protected void Page_Load(object sender, EventArgs e)
        {
            { //  string strConn = "Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True";
                string strConn = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;
                SqlConnection objConn = new SqlConnection(strConn);
                try
                {
                    objConn.Open();
                    custid.Text = Session["custid"] + "";

                    String strQuery = "select fname,lname,email,mn from register1 where custid='" + custid.Text + "'";

                    SqlCommand objCmd = new SqlCommand(strQuery, objConn);

                    SqlDataReader reader = objCmd.ExecuteReader();

                    while (reader.Read())
                    {

                        fname.Text = reader["fname"] + "";
                        lname.Text = reader["lname"] + "";
                      
                        email.Text = reader["email"] + "";
                        mno.Text = reader["mn"] + "";


                    }

                }
                catch
                {

                }
                objConn.Close();
            }

            SqlConnection con = new SqlConnection(strConnString);

            str = "select count(*) from nconnection1";

            com = new SqlCommand(str, con);

            con.Open();

            count = Convert.ToInt16(com.ExecuteScalar()) + 1;

            connectionid.Text = "CN3452" + count;

            con.Close();
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            bool inputIsValid = true;
            try
            {
                var con = new SqlConnection(WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString);
                var custidcmd = new SqlCommand("SELECT 1 FROM nconnection1 WHERE custid = @custid ", con);
                var emailCmd = new SqlCommand("SELECT 1 FROM nconnection1 WHERE email = @email", con);

                con.Open();
                custidcmd.Parameters.AddWithValue("@custid", custid.Text);
                emailCmd.Parameters.AddWithValue("@email", email.Text);

                using (var custidReader = custidcmd.ExecuteReader())
                {
                    if (custidReader.HasRows)
                    {
                        inputIsValid = false;
                        lbl.Text = "Customer Id already exists, You have already a Connection";
                    }
                }
                using (var emailReader = emailCmd.ExecuteReader())
                {
                    if (emailReader.HasRows)
                    {
                        inputIsValid = false;
                        lbl.Text = "Email address already exists,You have already a Connection";
                    }
                }

                if (inputIsValid)
                {
                    str = "insert into nconnection1 values(@custid,@connectionid,@fname,@lname,@account,@address,@caddress,@aadhaar,@mno,@email,@category)";

                    com = new SqlCommand(str, con);
                    com.Parameters.AddWithValue("@custid", custid.Text);
                    com.Parameters.AddWithValue("@connectionid", connectionid.Text);
                    com.Parameters.AddWithValue("@fname", fname.Text);
                    com.Parameters.AddWithValue("@lname", lname.Text);
                    com.Parameters.AddWithValue("@account", account.Text);
                    com.Parameters.AddWithValue("@address", address.Text);
                    com.Parameters.AddWithValue("@caddress", caddress.Text);
                    com.Parameters.AddWithValue("@aadhaar", aadhaar.Text);
                    com.Parameters.AddWithValue("@mno", mno.Text);
                    com.Parameters.AddWithValue("@email", email.Text);
                    com.Parameters.AddWithValue("@category", rb.SelectedValue);

                    com.ExecuteNonQuery();
                    lbl.Text = "CONNECTION ADDED SUCCESSFULLY, NOW YOU CAN BOOK GAS";

                } con.Close();
            }
            catch
            { lbl.Text = "error"; }
        }
    }
}