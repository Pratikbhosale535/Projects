using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace citygas.withlogin
{
    public partial class transaction : System.Web.UI.Page
    {
        SqlCommand com;
        static Random random = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["custid"] != null)
            {
                custid.Text = Session["custid"] + "";
            }
            amt.Text = Session["amt"] + "";
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            // string strConn = "Data Source=ABC-PC\\SQL;Initial Catalog=gas;Integrated Security=True";
            string strConn = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;
            SqlConnection objConn = new SqlConnection(strConn);
            try
            {
                objConn.Open();
                DateTime dateTimeVariable = DateTime.Now;
                String strQuery = "insert into my values(@custid,@amt,@cardtype,@name,@cardno,@cvv,@expdate,@syssdate)";
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                string expdate = (ddl3.SelectedItem.Value + "-" + ddl2.SelectedItem.Value);

                objCmd.Parameters.AddWithValue("@custid", custid.Text);
                objCmd.Parameters.AddWithValue("@amt", amt.Text);
                objCmd.Parameters.AddWithValue("@cardtype", ddl.SelectedItem.Value);
                objCmd.Parameters.AddWithValue("@name", name.Text);

                objCmd.Parameters.AddWithValue("@cardno", cardno.Text);
                objCmd.Parameters.AddWithValue("@cvv", cvv.Text);
                objCmd.Parameters.AddWithValue("@expdate", expdate);
                objCmd.Parameters.AddWithValue("@syssdate", dateTimeVariable);
                objCmd.ExecuteNonQuery();
                lbl.Text = " sucessfully";
                Response.Redirect("bill.aspx");
            }
            catch
            {
                lbl.Text = " failed";
            }
            objConn.Close();
        }
    }
}