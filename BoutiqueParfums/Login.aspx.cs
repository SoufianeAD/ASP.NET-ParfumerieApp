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
            Session["message"] = "";
            Client client = _Default.db.Clients.First(c => c.Email == Email.Text);
            /*c => (c.Email == Email.Text) && (c.Password == Request.Form["password"])*/
            if (client == null || !client.Password.Equals(Request.Form["password"]))
            {
                Session["message"] = "Email ou mot de passe incorrecte!";
                Response.Redirect("Login.aspx");
            } else
            {
                Session["UserIn"] = client.Id;
                Response.Redirect("ClientCart.aspx");
            }
        }

        protected void Button1_Load(object sender, EventArgs e)
        {

        }
    }
}