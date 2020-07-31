using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BoutiqueParfums
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cart_Click(object sender, EventArgs e)
        {
            if (Session["UserIn"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Redirect("ClientCart.aspx");
            }
        }
    }
}