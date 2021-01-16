using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Web.Configuration;

namespace citygas.withoutlogin
{
    public partial class em : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sub_Click(object sender, EventArgs e)
        {
            //   SqlConnection con = new SqlConnection("Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True");
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString);
            SqlDataReader objRead;
            try
            {
                con.Open();
                SqlCommand objCmd = new SqlCommand("select username, question, ans from register1 where email=@email and username=@username", con);
                objCmd.Parameters.AddWithValue("email", email.Text);
                objCmd.Parameters.AddWithValue("username", username.Text);
                objRead = objCmd.ExecuteReader();
                if (objRead.Read())
                {
                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("pratikbhosale597@gmail.com");
                    msg.To.Add(email.Text);
                    msg.Subject = " Recover your Password [CITY GAS AGENCY]";
                    msg.Body = ("Your username is:" + objRead.GetString(0) + "<br/><br/>" + "Your question is:" + objRead.GetString(1) + "<br/><br/>" + "Your Answer is:" + objRead.GetString(2) + "<br/><br/>" + "NOW YOU CAN CHANGE YOUR PASSWORD" + "<br/><br/>" + "THANK YOU.");
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
                    lbl.Text = "Username and Password Sent Successfully";
                    Response.Redirect("forgotp.aspx");
                    lbl.ForeColor = System.Drawing.Color.ForestGreen;
                }
                else
                {
                    lbl.Text = "Enter your Register Email";

                }
            }
            catch
            {
                lbl.Text = "Could not connect or read from database.";
            }
             
           // Response.Redirect("forgotp.aspx");
        
        }
    }
}