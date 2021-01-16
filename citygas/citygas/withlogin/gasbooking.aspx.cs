using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.Configuration;
using System.Data;

namespace citygas.withlogin
{
    public partial class gasbooking : System.Web.UI.Page
    {
        // string strConnString = "Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True";
        string strConnString = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;
        string str;

        SqlCommand com;
        int count;
        int sub;
        static Random random = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {
            //CODE FOR AUTOGENERATE OF 2 TEXTBOX
            //instantiate connection
            //  string strConn = "Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True";
            string strConn = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;
            SqlConnection objConn = new SqlConnection(strConn);
            try
            {
                objConn.Open();
                custid.Text = Session["custid"] + "";

                String strQuery = "select connectionid,fname,lname,address,caddress,category,email,mno from nconnection1 where custid='" + custid.Text + "'";

                SqlCommand objCmd = new SqlCommand(strQuery, objConn);

                SqlDataReader reader = objCmd.ExecuteReader();

                while (reader.Read())
                {
                    connectionid.Text = reader["connectionid"] + "";
                    fname.Text = reader["fname"] + "";
                    lname.Text = reader["lname"] + "";
                    address.Text = reader["address"] + "";
                    caddress.Text = reader["caddress"] + "";
                    rbl.SelectedValue = reader["category"] + "";
                    email.Text = reader["email"] + "";
                    mno.Text = reader["mno"] + "";

                }

            }
            catch
            {

            }
            objConn.Close();
            {//CODE FOR AUTOGENERATE OF LPG ID
                SqlConnection con = new SqlConnection(strConnString);

                str = "select count(*) from gasbook1";

                com = new SqlCommand(str, con);

                con.Open();

                count = Convert.ToInt16(com.ExecuteScalar()) + 3;

                lid.Text = "1200000000472179" + count;

                con.Close();
            }
            {//CODE OF AUTOGENERATE FOR SUBSIDY ID
                SqlConnection con1 = new SqlConnection(strConnString);

                str = "select count(*) from gasbook1 where custid='" + custid.Text + "' and status='Booked'";

                com = new SqlCommand(str, con1);

                con1.Open();

                count = Convert.ToInt16(com.ExecuteScalar()) + 1;

                sub = 12 - count;

                con1.Close();
            }
            { //CODE OF AUTOGENERATE FOR ORDER ID
                SqlConnection con = new SqlConnection(strConnString);

                str = "select count(*) from gasbook1";

                com = new SqlCommand(str, con);

                con.Open();

                count = Convert.ToInt16(com.ExecuteScalar()) + 3;

                order.Text = "O136" + count;
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                SqlConnection objConn = new SqlConnection(WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString);
                SqlDataReader objRead;
                try
                {
                    objConn.Open();
                    String strQuery22 = "select custid from gasbook1 where custid='" + custid.Text + "' and status='Booked'";
                    SqlCommand objCmd2 = new SqlCommand(strQuery22, objConn);
                    objCmd2.Parameters.AddWithValue("@custid", custid.Text);
                    objRead = objCmd2.ExecuteReader();
                    if (objRead.Read())
                    {
                        //  lbl.Text = "llll";

                        {  //for checking booking dates should not be equal

                            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString);
                            SqlCommand com = new SqlCommand("SELECT MAX(DateTime) from gasbook1 where custid='" + custid.Text + "' and status='Booked'", conn);
                            SqlDataAdapter da = new SqlDataAdapter(com);
                            DataSet ds = new DataSet();
                            da.Fill(ds, "gasbook1");
                            //lbl.Text = ds.Tables["gasbook1"].Rows[0]["DateTime"].ToString();
                            //string date1 = ds.Tables["gasbook1"].Rows[0]["DateTime"].ToString();
                            DateTime dt1 = DateTime.Parse(ds.Tables["gasbook1"].Rows[0][0].ToString());


                            //   lbl2.Text = DateTime.Now +"";
                            //  string date2 = DateTime.Now + "";
                            DateTime dt2 = DateTime.Parse(DateTime.Now.ToString());


                            int diff = (dt2 - dt1).Days;
                            lbl.Text = diff + "";
                            if (diff >= 6)
                            {
                                // string strConn = "Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True";
                                string strConn = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString; ;
                                SqlConnection objConn1 = new SqlConnection(strConn);


                                try
                                {
                                    objConn1.Open();
                                    DateTime dateTimeVariable = DateTime.Now;
                                    String strQuery = "insert into gasbook1 values(@orderid,@custid,@connectionid,@lpgid,@fname,@lname,@address,@caddress,@mno,@email,@category,@DateTime,@status,@paymentmode,@subsidy)";

                                    SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                                    //  objCmd1 = new SqlCommand(strConn1, objConn1);
                                    objCmd.Parameters.AddWithValue("@orderid", order.Text);
                                    objCmd.Parameters.AddWithValue("@custid", custid.Text);
                                    objCmd.Parameters.AddWithValue("@connectionid", connectionid.Text);
                                    objCmd.Parameters.AddWithValue("@lpgid", lid.Text);
                                    objCmd.Parameters.AddWithValue("@fname", fname.Text);
                                    objCmd.Parameters.AddWithValue("@lname", lname.Text);
                                    objCmd.Parameters.AddWithValue("@address", address.Text);
                                    objCmd.Parameters.AddWithValue("@caddress", caddress.Text);
                                    objCmd.Parameters.AddWithValue("@mno", mno.Text);
                                    objCmd.Parameters.AddWithValue("@email", email.Text);
                                    objCmd.Parameters.AddWithValue("@category", rbl.SelectedValue);
                                    objCmd.Parameters.AddWithValue("@DateTime", dateTimeVariable);
                                    objCmd.Parameters.AddWithValue("@status", "Booked");
                                    objCmd.Parameters.AddWithValue("@paymentmode", rbl2.SelectedValue);


                                    if (rbl.SelectedValue == "DOMESTIC(14 KG)")
                                    {

                                        objCmd.Parameters.AddWithValue("@subsidy", sub);
                                        //   Session["amt"] = (Convert.ToString(random.Next(580, 750))); 
                                        Session["amt"] = (Convert.ToString(750));// to specify range for random number
                                    }
                                    else
                                    {
                                        objCmd.Parameters.AddWithValue("@subsidy", "NO SUBSIDY");
                                        // Session["amt"] = (Convert.ToString(random.Next(1100, 1300))); 
                                        Session["amt"] = (Convert.ToString(1150));// to specify range for random number
                                    }
                                    Session["orderid"] = order.Text;
                                    Session["connectionid"] = connectionid.Text;
                                    Session["lpgid"] = lid.Text;
                                    Session["fname"] = fname.Text + "  " + lname.Text;
                                    Session["address"] = address.Text;
                                    Session["mno"] = mno.Text;
                                    Session["category"] = rbl.SelectedValue;
                                    Session["email"] = email.Text;

                                    objCmd.ExecuteNonQuery();

                                    lbl.Text = "BOOKING SUCCESSFULLY DONE";
                                    /*    if (rbl.SelectedValue == "DOMESTIC(14.KG)")
                                        {
                                            Session["amt"] = (Convert.ToString(random.Next(580, 750)));   // to specify range for random number
             
                                        }
                                        else if (rbl.SelectedValue == "COMMERCIAL(19KG)")
                                        {
                                            Session["amt"] = (Convert.ToString(random.Next(1000, 1200)));  // to specify range for random number
               
                                        }*/
                                    if (rbl2.SelectedValue == "COD")
                                    {
                                        Response.Redirect("bill.aspx");
                                    }
                                    else if (rbl2.SelectedValue == "ONLINE PAYMENT")
                                    {
                                        Response.Redirect("transaction.aspx");
                                    }

                                }
                                catch
                                {
                                    lbl.Text = "ERROR ";
                                }
                                objConn1.Close();

                            }
                            else
                            {
                                lbl.Text = "Your last booking has been done  " + diff + " days ago,so couldn't book your gas.";
                            }


                        }

                    }
                    else
                    {

                        string strConn = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;
                        SqlConnection objConn22 = new SqlConnection(strConn);
                        objConn22.Open();
                        //  lbl.Text = "gg";
                        DateTime dateTimeVariable = DateTime.Now;
                        String strQuery11 = "insert into gasbook1 values(@orderid,@custid,@connectionid,@lpgid,@fname,@lname,@address,@caddress,@mno,@email,@category,@DateTime,@status,@paymentmode,@subsidy)";

                        SqlCommand objCmd = new SqlCommand(strQuery11, objConn22);
                        //  objCmd1 = new SqlCommand(strConn1, objConn1);
                        objCmd.Parameters.AddWithValue("@orderid", order.Text);
                        objCmd.Parameters.AddWithValue("@custid", custid.Text);
                        objCmd.Parameters.AddWithValue("@connectionid", connectionid.Text);
                        objCmd.Parameters.AddWithValue("@lpgid", lid.Text);
                        objCmd.Parameters.AddWithValue("@fname", fname.Text);
                        objCmd.Parameters.AddWithValue("@lname", lname.Text);
                        objCmd.Parameters.AddWithValue("@address", address.Text);
                        objCmd.Parameters.AddWithValue("@caddress", caddress.Text);
                        objCmd.Parameters.AddWithValue("@mno", mno.Text);
                        objCmd.Parameters.AddWithValue("@email", email.Text);
                        objCmd.Parameters.AddWithValue("@category", rbl.SelectedValue);
                        objCmd.Parameters.AddWithValue("@DateTime", dateTimeVariable);
                        objCmd.Parameters.AddWithValue("@status", "Booked");
                        objCmd.Parameters.AddWithValue("@paymentmode", rbl2.SelectedValue);


                        if (rbl.SelectedValue == "DOMESTIC(14 KG)")
                        {

                            objCmd.Parameters.AddWithValue("@subsidy", sub);
                            //   Session["amt"] = (Convert.ToString(random.Next(580, 750))); 
                            Session["amt"] = (Convert.ToString(750));// to specify range for random number
                        }
                        else
                        {
                            objCmd.Parameters.AddWithValue("@subsidy", "NO SUBSIDY");
                            // Session["amt"] = (Convert.ToString(random.Next(1100, 1300))); 
                            Session["amt"] = (Convert.ToString(1150));// to specify range for random number
                        }
                        Session["orderid"] = order.Text;
                        Session["connectionid"] = connectionid.Text;
                        Session["lpgid"] = lid.Text;
                        Session["fname"] = fname.Text + "  " + lname.Text;
                        Session["address"] = address.Text;
                        Session["mno"] = mno.Text;
                        Session["category"] = rbl.SelectedValue;
                        Session["email"] = email.Text;

                        objCmd.ExecuteNonQuery();

                        lbl.Text = "BOOKING SUCCESSFULLY DONE";
                        /*    if (rbl.SelectedValue == "DOMESTIC(14.KG)")
                            {
                                Session["amt"] = (Convert.ToString(random.Next(580, 750)));   // to specify range for random number
             
                            }
                            else if (rbl.SelectedValue == "COMMERCIAL(19KG)")
                            {
                                Session["amt"] = (Convert.ToString(random.Next(1000, 1200)));  // to specify range for random number
               
                            }*/
                        if (rbl2.SelectedValue == "COD")
                        {
                            Response.Redirect("bill.aspx");
                        }
                        else if (rbl2.SelectedValue == "ONLINE PAYMENT")
                        {
                            Response.Redirect("transaction.aspx");
                        }
                        objConn22.Close();
                    }
                }
                finally
                {
                }



            }
        }

    }
}
           
/*
            {  //for checking booking dates should not be equal

                SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString);
                SqlCommand com = new SqlCommand("SELECT MAX(DateTime) from gasbook1 where custid='" + custid.Text + "' and status='Booked'", conn);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds, "gasbook1");
                //lbl.Text = ds.Tables["gasbook1"].Rows[0]["DateTime"].ToString();
                //string date1 = ds.Tables["gasbook1"].Rows[0]["DateTime"].ToString();
                DateTime dt1 = DateTime.Parse(ds.Tables["gasbook1"].Rows[0][0].ToString());


                //   lbl2.Text = DateTime.Now +"";
                //  string date2 = DateTime.Now + "";
                DateTime dt2 = DateTime.Parse(DateTime.Now.ToString());


                int diff = (dt2 - dt1).Days;
                lbl.Text = diff + "";
                if (diff >= 6)
                {
                    // string strConn = "Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True";
                    string strConn = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString; ;
                    SqlConnection objConn = new SqlConnection(strConn);


                    try
                    {
                        objConn.Open();
                        DateTime dateTimeVariable = DateTime.Now;
                        String strQuery = "insert into gasbook1 values(@orderid,@custid,@connectionid,@lpgid,@fname,@lname,@address,@caddress,@mno,@email,@category,@DateTime,@status,@paymentmode,@subsidy)";

                        SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                        //  objCmd1 = new SqlCommand(strConn1, objConn1);
                        objCmd.Parameters.AddWithValue("@orderid", order.Text);
                        objCmd.Parameters.AddWithValue("@custid", custid.Text);
                        objCmd.Parameters.AddWithValue("@connectionid", connectionid.Text);
                        objCmd.Parameters.AddWithValue("@lpgid", lid.Text);
                        objCmd.Parameters.AddWithValue("@fname", fname.Text);
                        objCmd.Parameters.AddWithValue("@lname", lname.Text);
                        objCmd.Parameters.AddWithValue("@address", address.Text);
                        objCmd.Parameters.AddWithValue("@caddress", caddress.Text);
                        objCmd.Parameters.AddWithValue("@mno", mno.Text);
                        objCmd.Parameters.AddWithValue("@email", email.Text);
                        objCmd.Parameters.AddWithValue("@category", rbl.SelectedValue);
                        objCmd.Parameters.AddWithValue("@DateTime", dateTimeVariable);
                        objCmd.Parameters.AddWithValue("@status", "Booked");
                        objCmd.Parameters.AddWithValue("@paymentmode", rbl2.SelectedValue);


                        if (rbl.SelectedValue == "DOMESTIC(14 KG)")
                        {

                            objCmd.Parameters.AddWithValue("@subsidy", sub);
                            //   Session["amt"] = (Convert.ToString(random.Next(580, 750))); 
                            Session["amt"] = (Convert.ToString(750));// to specify range for random number
                        }
                        else
                        {
                            objCmd.Parameters.AddWithValue("@subsidy", "NO SUBSIDY");
                            // Session["amt"] = (Convert.ToString(random.Next(1100, 1300))); 
                            Session["amt"] = (Convert.ToString(1150));// to specify range for random number
                        }
                        Session["orderid"] = order.Text;
                        Session["connectionid"] = connectionid.Text;
                        Session["lpgid"] = lid.Text;
                        Session["fname"] = fname.Text + "  " + lname.Text;
                        Session["address"] = address.Text;
                        Session["mno"] = mno.Text;
                        Session["category"] = rbl.SelectedValue;
                        Session["email"] = email.Text;

                        objCmd.ExecuteNonQuery();

                        lbl.Text = "BOOKING SUCCESSFULLY DONE";
                        /*    if (rbl.SelectedValue == "DOMESTIC(14.KG)")
                            {
                                Session["amt"] = (Convert.ToString(random.Next(580, 750)));   // to specify range for random number
             
                            }
                            else if (rbl.SelectedValue == "COMMERCIAL(19KG)")
                            {
                                Session["amt"] = (Convert.ToString(random.Next(1000, 1200)));  // to specify range for random number
               
                            }*/
/*                        if (rbl2.SelectedValue == "COD")
                        {
                            Response.Redirect("bill.aspx");
                        }
                        else if (rbl2.SelectedValue == "ONLINE PAYMENT")
                        {
                            Response.Redirect("transaction.aspx");
                        }

                    }
                    catch
                    {
                        lbl.Text = "ERROR ";
                    }
                    objConn.Close();

                }
                else
                {
                    lbl.Text = "Your last booking has been done  " + diff + " days ago,so couldn't book your gas.";
                }


            } 
        }

    }
}
*/