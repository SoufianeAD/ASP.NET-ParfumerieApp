using System;
using System.Collections.Generic;

namespace BoutiqueParfums.Models
{
    public partial class Produit
    {
        public Produit()
        {
            CartProduct = new HashSet<CartProduct>();
        }

        public int Id { get; set; }
        public string Designation { get; set; }
        public double? Prix { get; set; }
        public string Category { get; set; }
        public string Picture { get; set; }

        public virtual ICollection<CartProduct> CartProduct { get; set; }
    }
}
