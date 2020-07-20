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
    public partial class NewProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Ajouter_Click(object sender, EventArgs e)
        {
            try
            {
                Produit produit = new Produit
                {
                    Designation = designation.Text,
                    Category = category.Text,
                    Prix = Convert.ToDouble(price.Text),
                    Picture = pictureURL.Text
                };
                _Default.db.Produits.Add(produit);
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