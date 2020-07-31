using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity.Validation;

namespace BoutiqueParfums
{
    public partial class SignUpClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Cart cart = new Cart();
                cart = _Default.db.Carts.Add(cart);
                _Default.db.SaveChanges();

                Client client = new Client
                {
                    FirstName = FirstName.Text,
                    LastName = LastName.Text,
                    Email = Email.Text,
                    Password = Request.Form["password"],
                    Cart = cart
                };
                _Default.db.Clients.Add(client);
                _Default.db.SaveChanges();
                Response.Redirect("Login.aspx");
            }
            catch (DbEntityValidationException ex)
            {
                foreach (var eve in ex.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }
        }

        private void clear()
        {
            FirstName.Text = "";
            LastName.Text = "";
            Email.Text = "";
        }
    }
}