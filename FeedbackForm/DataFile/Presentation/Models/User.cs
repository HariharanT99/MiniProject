using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace Presentation.Models
{
    [Table("User")]
    public partial class User
    {
        public User()
        {
            Feedbacks = new HashSet<Feedback>();
        }

        [Key]
        [Column("UserID")]
        public int UserId { get; set; }
        [StringLength(5)]
        public string UserTitle { get; set; }
        [Required]
        [StringLength(50)]
        public string UserName { get; set; }
        [Required]
        [StringLength(3)]
        public string Initial { get; set; }
        [Required]
        [StringLength(40)]
        public string UserEmail { get; set; }
        [Required]
        [StringLength(50)]
        public string Street { get; set; }
        [Required]
        [StringLength(60)]
        public string City { get; set; }
        [Required]
        [StringLength(50)]
        public string Region { get; set; }
        [Required]
        [StringLength(6)]
        public string Zipcode { get; set; }
        [Column("CountryID")]
        public byte CountryId { get; set; }

        [ForeignKey(nameof(CountryId))]
        [InverseProperty("Users")]
        public virtual Country Country { get; set; }
        [InverseProperty(nameof(Feedback.User))]
        public virtual ICollection<Feedback> Feedbacks { get; set; }
    }
}
