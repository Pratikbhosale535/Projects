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

namespace citygas.withlogin
{
    public partial class bill : System.Web.UI.Page
    { 
        //   string strConnString = "Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True";
        string strConnString = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;
        //   string str;
        //  SqlCommand com;
        // int count;
        string email;
        static Random random = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime dateTimeVariable = DateTime.Now;
            date.Text = dateTimeVariable + "";
            order.Text = Session["orderid"] + "";
            amt.Text = Session["amt"] + ""; // to specify range for random number
            custid.Text = Session["custid"] + "";
            connectionid.Text = Session["connectionid"] + "";
            lpgid.Text = Session["lpgid"] + "";
            fname.Text = Session["fname"] + "";
            address.Text = Session["address"] + "";
            mno.Text = Session["mno"] + "";
            category.Text = Session["category"] + "";
            email = Session["email"] + "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strConn = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;
            SqlConnection objConn = new SqlConnection(strConn);
            try
            {
                //  objRead = objCmd.ExecuteReader();
                // if (objRead.Read())
                {
                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("pratikbhosale597@gmail.com");
                    msg.To.Add(email);
                    msg.Subject = "BILL DETAILS [CITY GAS AGENCY]";
                    msg.Body = ("DATE.:- " + date.Text + "<br/><br/>" + "ORDER NO.:- " + order.Text + "<br/><br/>" + "CONSUMER NO.:- " + custid.Text + "<br/><br/>" + "CONNECTION ID:- " + connectionid.Text + "<br/><br/>"
                        + "LPG ID:- " + lpgid.Text + "<br/><br/>" + "NAME:- " + fname.Text + "<br/><br/>" + "ADDRESS:-" + address.Text +
                         "<br/><br/>" + "MOBILE NO.:- " + mno.Text + "<br/><br/>" + "CATEGORY:- " + category.Text + "<br/><br/>" + "AMOUNT:- " + amt.Text + "<br/><br/>" + "THANK YOU."

                        );
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
                    //   lbl.Text = "BILL DETAILS SEND SUCCESSFULLY";
                    lbl.ForeColor = System.Drawing.Color.ForestGreen;
                }


                objConn.Open();
                String strQuery = "insert into bills values(@orderid,@date,@custid,@connectionid,@lpgid,@fname,@address,@mno,@category,@amt,@email)";
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                objCmd.Parameters.AddWithValue("@orderid", order.Text);
                objCmd.Parameters.AddWithValue("@date", date.Text);
                objCmd.Parameters.AddWithValue("@custid", custid.Text);
                objCmd.Parameters.AddWithValue("@connectionid", connectionid.Text);
                objCmd.Parameters.AddWithValue("@lpgid", lpgid.Text);
                objCmd.Parameters.AddWithValue("@fname", fname.Text);
                objCmd.Parameters.AddWithValue("@address", address.Text);
                objCmd.Parameters.AddWithValue("@mno", mno.Text);
                objCmd.Parameters.AddWithValue("@category", category.Text);
                objCmd.Parameters.AddWithValue("@amt", amt.Text);
                objCmd.Parameters.AddWithValue("@email", email);
                objCmd.ExecuteNonQuery();
                lbl.Text = " BILL DETAILS SEND SUCCESSFULLY";
            }
            catch
            {
                lbl.Text = " failed, Please try again";
            }
            objConn.Close();
        }
    }
}