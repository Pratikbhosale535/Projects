using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;
using System.Web.Configuration;

namespace citygas.withlogin
{
    public partial class feedback : System.Web.UI.Page
    {
        string fid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["custid"] != null)
            {
                custid.Text = Session["custid"] + "";
            }

            string strConn = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;
            SqlConnection objConn = new SqlConnection(strConn);
            string str = "select count(*) from feedback";

            SqlCommand com = new SqlCommand(str, objConn);

            objConn.Open();

            int count = Convert.ToInt16(com.ExecuteScalar()) + 1;

            fid = "F0001" + count;

            objConn.Close();
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            //  string strConn = "Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True";
            string strConn = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;
            SqlConnection objConn = new SqlConnection(strConn);


            try
            {
                objConn.Open();
                String strQuery = "Insert into feedback VALUES(@fid,@custid,@name,@email,@feedback)";
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);

                objCmd.Parameters.AddWithValue("@fid", fid);
                objCmd.Parameters.AddWithValue("@custid", custid.Text);
                objCmd.Parameters.AddWithValue("@name", name.Text);
                objCmd.Parameters.AddWithValue("@email", email.Text);
                objCmd.Parameters.AddWithValue("@feedback", feed.Text);

                objCmd.ExecuteNonQuery();
                lbl.Text = "Feedback Recorded sucessfully";

            }
            catch
            {
                lbl.Text = " Failed";
            }
            objConn.Close();
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            name.Text = "";
            email.Text = "";
            feed.Text = "";
        }
    }
}