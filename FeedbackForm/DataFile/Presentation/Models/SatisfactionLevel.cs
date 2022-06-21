using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace Presentation.Models
{
    [Table("SatisfactionLevel")]
    public partial class SatisfactionLevel
    {
        [Key]
        [Column("LevelID")]
        public byte LevelId { get; set; }
        [StringLength(30)]
        public string Satisfaction { get; set; }
    }
}
