using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace Presentation.ViewModel
{
    public class FormViewModel
    {
        public int Category { get; set; }
        public int Product { get; set; }
        public int Satisfactory { get; set; }
        public string PurchasedProducts { get; set; }
        public string Pros { get; set; }
        public string NameTitle { get; set; }
        public string Name { get; set; }
        public string Initial { get; set; }
        public string Email { get; set; }
        public string Street { get; set; }
        public string City { get; set; }
        public string Region { get; set; }
        public int PostalCode { get; set; }
        public string Country { get; set; }
        public string Cons { get; set; }
        public IFormFile File { get; set; }
    }
}
