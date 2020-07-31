using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BoutiqueParfums
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buy_Click(object sender, EventArgs e)
        {
            if(Session["UserIn"] == null)
            {
                Response.Redirect("Login.aspx");
            } else {
                int idProduct = Convert.ToInt32(Request.Form["idProduct"]);
                int idClient = Convert.ToInt32(Session["UserIn"]);
                Client client = _Default.db.Clients.Find(idClient);
                CartProduct cartProduct = new CartProduct
                {
                    IdCart = client.IdCart,
                    IdProduct = idProduct
                };
                _Default.db.CartProducts.Add(cartProduct);
                _Default.db.SaveChanges();
                Response.Redirect("ClientCart.aspx");
            }
        }
    }
}