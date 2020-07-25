using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BoutiqueParfums
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Client client = _Default.db.Clients.Where(c => c.Email == Email.Text && c.Password == Request.Form["password"]).FirstOrDefault();
            if(client == null)
            {
                Response.Redirect("ClientCart.aspx");
            } else
            {
                Response.Redirect("ClientCart.aspx");
            }
        }
    }
}