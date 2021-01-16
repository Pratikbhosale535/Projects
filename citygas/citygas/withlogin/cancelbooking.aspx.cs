using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Net.Mail;
using System.Net;

namespace citygas.withlogin
{
    public partial class cancelbooking : System.Web.UI.Page
    {
        SqlCommand com;
        // bool inputIsValid = true;
        int count;
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

                String strQuery = "select orderid,category,email,status from gasbook1 where custid='" + custid.Text + "' and status='Booked'";

                SqlCommand objCmd = new SqlCommand(strQuery, objConn);

                SqlDataReader reader = objCmd.ExecuteReader();

                while (reader.Read())
                {
                    order.Text = reader["orderid"] + "";
                    rbl.SelectedValue = reader["category"] + "";
                    email.Text = reader["email"] + "";
                    status.Text = reader["status"] + "";
                    //rbl.SelectedValue = reader["category"] + "";
                }

            }
            catch
            {

            } objConn.Close();
        }

        protected void btnn_Click(object sender, EventArgs e)
        {
             if (rbl.SelectedValue == "DOMESTIC(14 KG)")
            {
                SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString);
                SqlCommand com = new SqlCommand("SELECT DateTime from gasbook1 where orderid='" + order.Text + "'", conn);
 
                       SqlDataAdapter da = new SqlDataAdapter(com);
              DataSet ds = new DataSet();
              da.Fill(ds, "gasbook1");
                //    lbl3.Text = ds.Tables["gasbook1"].Rows[0]["DateTime"].ToString();
                //  string date1 = ds.Tables["gasbook1"].Rows[0]["DateTime"].ToString();
                DateTime dt1 = DateTime.Parse(ds.Tables["gasbook1"].Rows[0]["DateTime"].ToString());
 

                DateTime dateTimeVariable = DateTime.Now;
                //   lbl4.Text = DateTime.Now +"";
                //  string date2 = DateTime.Now + "";
                DateTime dt2 = DateTime.Parse(DateTime.Now.ToString());


                int diff = (dt2 - dt1).Days; ;
                //  lbl3.Text = diff+"";

                if (diff <= 2)
                {
                    string strConnString = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;
                    SqlConnection con1 = new SqlConnection(strConnString);

                    string str = "select subsidy from gasbook1 where orderid='" + order.Text + "'";

                    com = new SqlCommand(str, con1);
                    con1.Open();
                    count = Convert.ToInt16(com.ExecuteScalar()) + 1;
                    //     lbl.Text = count+"";
                    con1.Close();
                    String strQuery = "update gasbook1 set status='CANCEL',subsidy='" + count + "' where orderid=@orderid ";
                    SqlCommand objCmd = new SqlCommand(strQuery, conn);
                    objCmd.Parameters.AddWithValue("@orderid", order.Text);
                    conn.Open();
                    objCmd.ExecuteNonQuery();

                    lbl.Text = "YOUR BOOKING SUCCESSFULLY CANCELLED";


                    ///////////////EMAIL NOTIFICATION
                    string strConn = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;
                    SqlConnection objConn = new SqlConnection(strConn);

                    //  objRead = objCmd.ExecuteReader();
                    // if (objRead.Read())

                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("pratikbhosale597@gmail.com");
                    msg.To.Add(email.Text);
                    msg.Subject = "CANCEL BOOKING DETAILS [CITY GAS AGENCY]";
                    msg.Body = ("DATE.:- " + dt2 + "<br/><br/>" + "ORDER NO.:- " + order.Text + "<br/><br/>" + "CONSUMER NO.:- " + custid.Text + "<br/><br/> " + " Your Booking Successfully cancelled" + "<br/><br/> " + "THANK YOU"


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
                    lbl2.Text = "CANCEL BOOKING DETAILS SEND SUCCESSFULLY";
                    lbl2.ForeColor = System.Drawing.Color.ForestGreen;
                }

                else
                {

                    lbl.Text = "YOUR BOOKING COULD NOT BEEN CANCELLED";
                } conn.Close();


            }
             else if (rbl.SelectedValue == "COMMERCIAL(19 KG)")
             {
                 SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString);
                 SqlCommand com = new SqlCommand("SELECT DateTime from gasbook1 where orderid='" + order.Text + "'", conn);
                 SqlDataAdapter da = new SqlDataAdapter(com);
                 DataSet ds = new DataSet();
                 da.Fill(ds, "gasbook1");
                 //    lbl3.Text = ds.Tables["gasbook1"].Rows[0]["DateTime"].ToString();
                 //  string date1 = ds.Tables["gasbook1"].Rows[0]["DateTime"].ToString();
                 DateTime dt1 = DateTime.Parse(ds.Tables["gasbook1"].Rows[0]["DateTime"].ToString());


                 DateTime dateTimeVariable = DateTime.Now;
                 //   lbl4.Text = DateTime.Now +"";
                 //  string date2 = DateTime.Now + "";
                 DateTime dt2 = DateTime.Parse(DateTime.Now.ToString());


                 int diff = (dt2 - dt1).Days; ;
                 //  lbl3.Text = diff+"";

                 if (diff <= 2)
                 {
                     string strConnString = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;
                     SqlConnection con1 = new SqlConnection(strConnString);

                     /*  string str = "select subsidy from gasbook1 where orderid='" + order.Text + "'";

                       com = new SqlCommand(str, con1);
                       con1.Open();
                       count = Convert.ToInt16(com.ExecuteScalar()) + 1;
                       //     lbl.Text = count+"";
                       con1.Close();
                      */
                     String strQuery = "update gasbook1 set status='CANCEL',subsidy='NO SUBSIDY' where orderid=@orderid ";
                     SqlCommand objCmd = new SqlCommand(strQuery, conn);
                     objCmd.Parameters.AddWithValue("@orderid", order.Text);
                     conn.Open();
                     objCmd.ExecuteNonQuery();

                     lbl.Text = "YOUR BOOKING SUCCESSFULLY CANCELLED";


                     ///////////////EMAIL NOTIFICATION
                     string strConn = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;
                     SqlConnection objConn = new SqlConnection(strConn);

                     //  objRead = objCmd.ExecuteReader();
                     // if (objRead.Read())

                     MailMessage msg = new MailMessage();
                     msg.From = new MailAddress("pratikbhosale597@gmail.com");
                     msg.To.Add(email.Text);
                     msg.Subject = "CANCEL BOOKING DETAILS [CITY GAS AGENCY]";
                     msg.Body = ("DATE.:- " + dt2 + "<br/><br/>" + "ORDER NO.:- " + order.Text + "<br/><br/>" + "CONSUMER NO.:- " + custid.Text + "<br/><br/> " + " Your Booking Successfully cancelled" + "<br/><br/> " + "THANK YOU"


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
                     lbl2.Text = "CANCEL BOOKING DETAILS SEND SUCCESSFULLY";
                     lbl2.ForeColor = System.Drawing.Color.ForestGreen;
                 }

                 else
                 {

                     lbl.Text = "YOUR BOOKING COULD NOT BEEN CANCELLED";
                 } conn.Close();
             }
        }

        
    }
}