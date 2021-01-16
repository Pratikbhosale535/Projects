using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace citygas.withoutlogin
{
    public partial class register : System.Web.UI.Page
    {       // string strConnString = "Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True";
        string strConnString = (WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString);
        string str;
        SqlCommand com;

        int count;
        protected void Page_Load(object sender, EventArgs e)
        {
            //customer id autogenerate
            SqlConnection con = new SqlConnection(strConnString);

            str = "select count(*) from register1";

            com = new SqlCommand(str, con);

            con.Open();

            count = Convert.ToInt16(com.ExecuteScalar()) + 1;

            custid.Text = "C1022" + count;

            con.Close();
        
        }

        protected void btn1_Click(object sender, ImageClickEventArgs e)
        {
            //check username & email aleready exists?
            bool inputIsValid = true;
            var con = new SqlConnection(ConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString);
            var userNameCmd = new SqlCommand("SELECT 1 FROM register1 WHERE username = @username", con);
            var emailCmd = new SqlCommand("SELECT 1 FROM register1 WHERE email = @email", con);

            con.Open();
            userNameCmd.Parameters.AddWithValue("@username", username.Text);
            emailCmd.Parameters.AddWithValue("@email", email.Text);

            using (var userNameReader = userNameCmd.ExecuteReader())
            {
                if (userNameReader.HasRows)
                {
                    inputIsValid = false;
                    lbl.Text = "Username already exists Please Enter other Username ";
                }
            }
            using (var emailReader = emailCmd.ExecuteReader())
            {
                if (emailReader.HasRows)
                {
                    inputIsValid = false;
                    lbl.Text = "Email address already exists Please Enter other Email";
                }
            }

            if (inputIsValid)
            {
                // Insert code goes here
                str = "insert into register1 values(@custid,@fname,@lname,@username,@password,@cpassword,@email,@mn,@question,@ans)";

                com = new SqlCommand(str, con);
                com.Parameters.AddWithValue("@custid", custid.Text);
                com.Parameters.AddWithValue("@fname", fname.Text);
                com.Parameters.AddWithValue("@lname", lname.Text);
                com.Parameters.AddWithValue("@username", username.Text);
                com.Parameters.AddWithValue("@password", password.Text);
                com.Parameters.AddWithValue("@cpassword", cpassword.Text);
                com.Parameters.AddWithValue("@email", email.Text);
                com.Parameters.AddWithValue("@mn", mn.Text);
                com.Parameters.AddWithValue("@question", ddl.SelectedItem.Value);
                com.Parameters.AddWithValue("@ans", ans.Text);

                com.ExecuteNonQuery();


                lbl.Text = "REGISTRATION SUCCESSFULLY DONE , NOW YOU CAN LOGIN TO YOUR ACCOUNT";
            }

            con.Close();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}