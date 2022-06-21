using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace Presentation.Models
{
    [Keyless]
    [Table("PurchasedProduct")]
    public partial class PurchasedProduct
    {
        [Column("ProductID")]
        public int? ProductId { get; set; }
        [Column("FeedbackID")]
        [StringLength(10)]
        public string FeedbackId { get; set; }

        [ForeignKey(nameof(FeedbackId))]
        public virtual Feedback Feedback { get; set; }
        [ForeignKey(nameof(ProductId))]
        public virtual Product Product { get; set; }
    }
}
