using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace Presentation.Models
{
    [Table("Country")]
    public partial class Country
    {
        public Country()
        {
            Users = new HashSet<User>();
        }

        [Key]
        [Column("CountryID")]
        public byte CountryId { get; set; }
        [StringLength(50)]
        public string CountryName { get; set; }

        [InverseProperty(nameof(User.Country))]
        public virtual ICollection<User> Users { get; set; }
    }
}
