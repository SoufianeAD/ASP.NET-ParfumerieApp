using System;
using System.Collections.Generic;

namespace BoutiqueParfums.Model
{
    public partial class Client
    {
        public int Id { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public int IdCart { get; set; }

        public virtual Cart IdCartNavigation { get; set; }
    }
}
