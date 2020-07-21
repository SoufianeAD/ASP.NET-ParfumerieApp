using System;
using System.Collections.Generic;

namespace BoutiqueParfums.Model
{
    public partial class Cart
    {
        public Cart()
        {
            CartProduct = new HashSet<CartProduct>();
            Client = new HashSet<Client>();
        }

        public int IdCart { get; set; }

        public virtual ICollection<CartProduct> CartProduct { get; set; }
        public virtual ICollection<Client> Client { get; set; }
    }
}
