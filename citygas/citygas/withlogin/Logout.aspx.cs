using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;
using System.Data;

namespace citygas.withlogin
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Session.Contents.RemoveAll();
            System.Web.Security.FormsAuthentication.SignOut();
            Response.Redirect("/withoutlogin/Home.aspx");
        }
    }
}