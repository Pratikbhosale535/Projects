using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Web.Configuration;

namespace citygas.withlogin
{
    public partial class subsidy : System.Web.UI.Page
    {
        SqlCommand com;
        int sub;
        protected void Page_Load(object sender, EventArgs e)
        {
            // custid.Text = Session["custid"] + "";
            // 
            // string strConn = "Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True";
            string strConn = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;

            SqlConnection objConn = new SqlConnection(strConn);
            try
            {
                objConn.Open();
                custid.Text = Session["custid"] + "";

                String strQuery = "select email from register1 where custid='" + custid.Text + "'";

                SqlCommand objCmd = new SqlCommand(strQuery, objConn);

                SqlDataReader reader = objCmd.ExecuteReader();

                while (reader.Read())
                {
                    email.Text = reader["email"] + "";
                    //rbl.SelectedValue = reader["category"] + "";
                }

            }
            catch
            {

            }
            objConn.Close();
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            //  string strConn = "Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True";
            string strConn = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;

            {

                SqlConnection con2 = new SqlConnection(strConn);
                string str1 = "select count(*) from gasbook1 where custid='" + custid.Text + "' and subsidy='NO SUBSIDY'";
                //   string str1 = "select count(*) from gasbook1 where subsidy='NO SUBSIDY'";
                com = new SqlCommand(str1, con2);
                com.Parameters.AddWithValue("@custid", custid.Text);
                con2.Open();
                int records = (int)com.ExecuteScalar();

                if (records >= 1)
                {

                    lbl.Text = "No Subsidy For COMMERCIAL LPG ";

                }
                con2.Close();
            }
            {
                // string strConn = "Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True";
                SqlConnection objConn = new SqlConnection(strConn);

                String strQuery = "select count(*)from gasbook1 where custid='" + custid.Text + "'and category='DOMESTIC(14 KG)'";
                com = new SqlCommand(strQuery, objConn);
                com.Parameters.AddWithValue("@custid", custid.Text);
                objConn.Open();
                int records = (int)com.ExecuteScalar();

                if (records == 0)
                {

                    com.Parameters.Clear();
                    //lbl.Text = "your subsidy is 12";
                }
                else
                {

                    SqlConnection con1 = new SqlConnection(strConn);

                    string str = "select count(*) from gasbook1 where custid='" + custid.Text + "' and status='Booked'";

                    com = new SqlCommand(str, con1);

                    con1.Open();

                    int count = Convert.ToInt16(com.ExecuteScalar());

                    sub = 12 - count;

                    con1.Close();
                    lbl.Text = "your Reamaining Cylinders are " + sub + " out off 12";
                }
            }
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            /*
            int sub1;
            {
                string strConn = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;

                SqlConnection con1 = new SqlConnection(strConn);

                string str = "select count(*) from gasbook1 where custid='" + custid.Text + "' and status='Booked'";

                com = new SqlCommand(str, con1);

                con1.Open();

                int count = Convert.ToInt16(com.ExecuteScalar());

                sub1 = 12 - count;

                con1.Close();
                // lbl.Text = "your Reamaining Cylinders are " + sub + " out off 12";
            }
             */ 
            //  SqlConnection con = new SqlConnection("Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True");
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString);

            SqlDataReader objRead;
            try
            {
                con.Open();
                SqlCommand objCmd = new SqlCommand("select subsidy from gasbook1 where email=@email", con);
                objCmd.Parameters.AddWithValue("@email", email.Text);
                objRead = objCmd.ExecuteReader();
                if (objRead.Read())
                {
                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("pratikbhosale597@gmail.com");
                    msg.To.Add(email.Text);
                    msg.Subject = " SUBSIDY DETAILS [CITY GAS AGENCY]";
                    msg.Body = ("CUSTOMER ID:-" + custid.Text + "<br/><br/>" + lbl.Text + "<br/><br/>");
                    msg.IsBodyHtml = true;

                    SmtpClient smt = new SmtpClient();
                    smt.Host = "smtp.gmail.com";
                    System.Net.NetworkCredential ntwd = new NetworkCredential();
                    ntwd.UserName = "pratikbhosale597@gmail.com"; //Your Email ID  
                    ntwd.Password = "Pratikb123#"; // Your Password  
                    smt.UseDefaultCredentials = true;
                    smt.Credentials = ntwd;
                    smt.Port = 587;
                    smt.EnableSsl = true;
                    smt.Send(msg);
                    lbl2.Text = "Subsidy Details Sent Successfully";
                    lbl.ForeColor = System.Drawing.Color.ForestGreen;
                }
                else
                {
                    lbl2.Text = "Could not connect or read from database.";
                }
            }
            catch
            {
            }
        }
    }
}