using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace Presentation.Models
{
    [Table("Product")]
    public partial class Product
    {
        public Product()
        {
            Feedbacks = new HashSet<Feedback>();
        }

        [Key]
        [Column("ProductID")]
        public int ProductId { get; set; }
        [StringLength(50)]
        public string ProductName { get; set; }
        [Column("CategoryID")]
        public byte? CategoryId { get; set; }

        [ForeignKey(nameof(CategoryId))]
        [InverseProperty(nameof(ProductCategory.Products))]
        public virtual ProductCategory Category { get; set; }
        [InverseProperty(nameof(Feedback.Product))]
        public virtual ICollection<Feedback> Feedbacks { get; set; }
    }
}
