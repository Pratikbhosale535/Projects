using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace citygas.Admin
{
    public partial class adlogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Session.Contents.RemoveAll();
            System.Web.Security.FormsAuthentication.SignOut();
            Response.Redirect("adminlg.aspx");
        }
    }
}