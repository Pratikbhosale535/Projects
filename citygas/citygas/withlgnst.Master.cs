using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.Configuration;

namespace citygas
{
    public partial class withlgnst : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //instantiate connection
            //  string strConn = "Data Source=abc-pc\\sql;Initial Catalog=gas;Integrated Security=True";
            string strConn = WebConfigurationManager.ConnectionStrings["gasConnectionString"].ConnectionString;
            SqlConnection objConn = new SqlConnection(strConn);
            try
            {
                objConn.Open();
                lbl1.Text = Session["custid"] + "";

                String strQuery = "select fname,lname from register1 where custid='" + lbl1.Text + "'";

                SqlCommand objCmd = new SqlCommand(strQuery, objConn);

                SqlDataReader reader = objCmd.ExecuteReader();

                while (reader.Read())
                {
                    lbl2.Text = reader["fname"] + "";
                    lbl3.Text = reader["lname"] + "";
                }

            }
            catch
            {

            }
            objConn.Close();
        }
    }
}