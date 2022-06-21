using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace Presentation.Models
{
    [Table("Feedback")]
    public partial class Feedback
    {
        [Key]
        [Column("FeedbackID")]
        [StringLength(10)]
        public string FeedbackId { get; set; }
        [Column("ProductID")]
        public int? ProductId { get; set; }
        [Column("UserID")]
        public int? UserId { get; set; }
        [Required]
        [StringLength(500)]
        public string Pros { get; set; }
        [StringLength(500)]
        public string Cons { get; set; }
        [StringLength(100)]
        public string Document { get; set; }

        [ForeignKey(nameof(ProductId))]
        [InverseProperty("Feedbacks")]
        public virtual Product Product { get; set; }
        [ForeignKey(nameof(UserId))]
        [InverseProperty("Feedbacks")]
        public virtual User User { get; set; }
    }
}
