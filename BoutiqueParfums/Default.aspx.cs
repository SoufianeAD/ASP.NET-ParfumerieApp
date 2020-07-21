using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity.Validation;

namespace BoutiqueParfums
{
    using Models;
    public partial class _Default : Page
    {
        internal static BoutiqueParfumsEntities db = new BoutiqueParfumsEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendMessageButton_Click(object sender, EventArgs e)
        {
            try
            {
                Message message = new Message
                {
                    Name = Request.Form["name"],
                    Email = Request.Form["email"],
                    Phone = Request.Form["phone"],
                    MessageText = Request.Form["message"],
                };

                _Default.db.Messages.Add(message);
                _Default.db.SaveChanges();
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
    }
}