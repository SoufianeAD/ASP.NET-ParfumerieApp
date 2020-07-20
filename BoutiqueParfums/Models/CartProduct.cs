using System;
using System.Collections.Generic;

namespace BoutiqueParfums.Models
{
    public partial class CartProduct
    {
        public int Id { get; set; }
        public int IdProduct { get; set; }
        public int IdCart { get; set; }

        public virtual Cart IdCartNavigation { get; set; }
        public virtual Produit IdProductNavigation { get; set; }
    }
}
