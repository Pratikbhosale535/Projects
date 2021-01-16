using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data.Sql;

namespace citygas
{
    public partial class adminms : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl1.Text = "WELCOME";
            lbl2.Text = Session["username"] + "";
            // lbl3.Text = " WELCOME";
        }
    }
}