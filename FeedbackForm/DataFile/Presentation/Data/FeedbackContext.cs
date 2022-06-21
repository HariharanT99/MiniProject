using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Presentation.Models;

#nullable disable

namespace Presentation.Data
{
    public partial class FeedbackContext : DbContext
    {
        public FeedbackContext()
        {
        }

        public FeedbackContext(DbContextOptions<FeedbackContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Country> Countries { get; set; }
        public virtual DbSet<Feedback> Feedbacks { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<ProductCategory> ProductCategories { get; set; }
        public virtual DbSet<PurchasedProduct> PurchasedProducts { get; set; }
        public virtual DbSet<SatisfactionLevel> SatisfactionLevels { get; set; }
        public virtual DbSet<User> Users { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "SQL_Latin1_General_CP1_CI_AS");

            modelBuilder.Entity<Country>(entity =>
            {
                entity.Property(e => e.CountryId).ValueGeneratedOnAdd();

                entity.Property(e => e.CountryName).IsUnicode(false);
            });

            modelBuilder.Entity<Feedback>(entity =>
            {
                entity.Property(e => e.FeedbackId).IsUnicode(false);

                entity.Property(e => e.Cons).IsUnicode(false);

                entity.Property(e => e.Pros).IsUnicode(false);

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.Feedbacks)
                    .HasForeignKey(d => d.ProductId)
                    .HasConstraintName("FK__Feedback__Produc__300424B4");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.Feedbacks)
                    .HasForeignKey(d => d.UserId)
                    .HasConstraintName("FK__Feedback__UserID__30F848ED");
            });

            modelBuilder.Entity<Product>(entity =>
            {
                entity.Property(e => e.ProductName).IsUnicode(false);

                entity.HasOne(d => d.Category)
                    .WithMany(p => p.Products)
                    .HasForeignKey(d => d.CategoryId)
                    .HasConstraintName("FK__Product__Categor__267ABA7A");
            });

            modelBuilder.Entity<ProductCategory>(entity =>
            {
                entity.HasKey(e => e.CategoryId)
                    .HasName("PK__ProductC__19093A2B8D3FA6AF");

                entity.Property(e => e.CategoryId).ValueGeneratedOnAdd();

                entity.Property(e => e.CategoryName).IsUnicode(false);
            });

            modelBuilder.Entity<PurchasedProduct>(entity =>
            {
                entity.Property(e => e.FeedbackId).IsUnicode(false);

                entity.HasOne(d => d.Feedback)
                    .WithMany()
                    .HasForeignKey(d => d.FeedbackId)
                    .HasConstraintName("FK__Purchased__Feedb__33D4B598");

                entity.HasOne(d => d.Product)
                    .WithMany()
                    .HasForeignKey(d => d.ProductId)
                    .HasConstraintName("FK__Purchased__Produ__32E0915F");
            });

            modelBuilder.Entity<SatisfactionLevel>(entity =>
            {
                entity.HasKey(e => e.LevelId)
                    .HasName("PK__Satisfac__09F03C06BAFE20E9");

                entity.Property(e => e.LevelId).ValueGeneratedOnAdd();

                entity.Property(e => e.Satisfaction).IsUnicode(false);
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.Property(e => e.City).IsUnicode(false);

                entity.Property(e => e.Initial).IsUnicode(false);

                entity.Property(e => e.Region).IsUnicode(false);

                entity.Property(e => e.Street).IsUnicode(false);

                entity.Property(e => e.UserName).IsUnicode(false);

                entity.Property(e => e.UserTitle).IsUnicode(false);

                entity.Property(e => e.Zipcode).IsUnicode(false);

                entity.HasOne(d => d.Country)
                    .WithMany(p => p.Users)
                    .HasForeignKey(d => d.CountryId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__User__CountryID__2B3F6F97");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
