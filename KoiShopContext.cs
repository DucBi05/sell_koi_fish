using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace KoiShop.Repositories.Entities;

public partial class KoiShopContext : DbContext
{
    public KoiShopContext()
    {
    }

    public KoiShopContext(DbContextOptions<KoiShopContext> options)
        : base(options)
    {
    }

    public virtual DbSet<BlogPost> BlogPosts { get; set; }

    public virtual DbSet<Consignment> Consignments { get; set; }

    public virtual DbSet<Customer> Customers { get; set; }

    public virtual DbSet<Faq> Faqs { get; set; }

    public virtual DbSet<Fish> Fish { get; set; }

    public virtual DbSet<KoiFishCategory> KoiFishCategories { get; set; }

    public virtual DbSet<News> News { get; set; }

    public virtual DbSet<Order> Orders { get; set; }

    public virtual DbSet<OrderDetail> OrderDetails { get; set; }

    public virtual DbSet<Promotion> Promotions { get; set; }

    public virtual DbSet<RatingFeedback> RatingFeedbacks { get; set; }

    public virtual DbSet<Staff> Staff { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Data Source=LAPTOP-U7L555H0\\SQLEXPRESS;Initial Catalog=KoiShop;Integrated Security=True;Trust Server Certificate=True");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<BlogPost>(entity =>
        {
            entity.HasKey(e => e.BlogId).HasName("PK__BlogPost__54379E50A7FF34E4");

            entity.Property(e => e.BlogId)
                .ValueGeneratedNever()
                .HasColumnName("BlogID");
            entity.Property(e => e.AuthorId).HasColumnName("AuthorID");
            entity.Property(e => e.Content).HasColumnType("text");
            entity.Property(e => e.CustomerId).HasColumnName("CustomerID");
            entity.Property(e => e.Title)
                .HasMaxLength(255)
                .IsUnicode(false);

            entity.HasOne(d => d.Customer).WithMany(p => p.BlogPosts)
                .HasForeignKey(d => d.CustomerId)
                .HasConstraintName("FK__BlogPosts__Custo__6477ECF3");
        });

        modelBuilder.Entity<Consignment>(entity =>
        {
            entity.HasKey(e => e.ConsignmentId).HasName("PK__Consignm__2AB758634B5C935F");

            entity.ToTable("Consignment");

            entity.Property(e => e.ConsignmentId)
                .ValueGeneratedNever()
                .HasColumnName("ConsignmentID");
            entity.Property(e => e.CustomerId).HasColumnName("CustomerID");
            entity.Property(e => e.KoiId).HasColumnName("KoiID");
            entity.Property(e => e.Status)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.Customer).WithMany(p => p.Consignments)
                .HasForeignKey(d => d.CustomerId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Consignme__Custo__5AEE82B9");

            entity.HasOne(d => d.Koi).WithMany(p => p.Consignments)
                .HasForeignKey(d => d.KoiId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Consignme__KoiID__5BE2A6F2");
        });

        modelBuilder.Entity<Customer>(entity =>
        {
            entity.HasKey(e => e.CustomerId).HasName("PK__Customer__A4AE64B8F71D89EB");

            entity.ToTable("Customer");

            entity.Property(e => e.CustomerId).HasColumnName("CustomerID");
            entity.Property(e => e.Address).HasMaxLength(255);
            entity.Property(e => e.CustomerName).HasMaxLength(100);
            entity.Property(e => e.Password).HasMaxLength(255);
            entity.Property(e => e.Phone).HasMaxLength(12);
        });

        modelBuilder.Entity<Faq>(entity =>
        {
            entity.HasKey(e => e.Faqid).HasName("PK__FAQ__4B89D1E21B2F8DD1");

            entity.ToTable("FAQ");

            entity.Property(e => e.Faqid)
                .ValueGeneratedNever()
                .HasColumnName("FAQID");
            entity.Property(e => e.Answer).HasColumnType("text");
            entity.Property(e => e.Question).HasColumnType("text");
        });

        modelBuilder.Entity<Fish>(entity =>
        {
            entity.HasKey(e => e.KoiId).HasName("PK__Fish__E03435B8045F1D72");

            entity.Property(e => e.KoiId).HasColumnName("KoiID");
            entity.Property(e => e.Breed)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.Gender)
                .HasMaxLength(10)
                .IsUnicode(false);
            entity.Property(e => e.IdCategory).HasColumnName("idCategory");
            entity.Property(e => e.Image)
                .HasMaxLength(500)
                .IsUnicode(false);
            entity.Property(e => e.Name)
                .HasMaxLength(50)
                .HasColumnName("name");
            entity.Property(e => e.Origin)
                .HasMaxLength(100)
                .IsUnicode(false);

            entity.HasOne(d => d.IdCategoryNavigation).WithMany(p => p.Fish)
                .HasForeignKey(d => d.IdCategory)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Fish__idCategory__5070F446");
        });

        modelBuilder.Entity<KoiFishCategory>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__KoiFishC__3213E83F93889E7C");

            entity.ToTable("KoiFishCategory");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Name)
                .HasMaxLength(20)
                .HasColumnName("name");
        });

        modelBuilder.Entity<News>(entity =>
        {
            entity.HasKey(e => e.NewsId).HasName("PK__News__954EBDD31C8D5323");

            entity.Property(e => e.NewsId)
                .ValueGeneratedNever()
                .HasColumnName("NewsID");
            entity.Property(e => e.AuthorId).HasColumnName("AuthorID");
            entity.Property(e => e.Content).HasColumnType("text");
            entity.Property(e => e.CustomerId).HasColumnName("CustomerID");
            entity.Property(e => e.Title)
                .HasMaxLength(255)
                .IsUnicode(false);

            entity.HasOne(d => d.Customer).WithMany(p => p.News)
                .HasForeignKey(d => d.CustomerId)
                .HasConstraintName("FK__News__CustomerID__6754599E");
        });

        modelBuilder.Entity<Order>(entity =>
        {
            entity.HasKey(e => e.OrderId).HasName("PK__Orders__C3905BAF29FDF086");

            entity.Property(e => e.OrderId)
                .ValueGeneratedNever()
                .HasColumnName("OrderID");
            entity.Property(e => e.CustomerId).HasColumnName("CustomerID");
            entity.Property(e => e.PaymentMethod)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.StaffId).HasColumnName("StaffID");
            entity.Property(e => e.Status)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.Customer).WithMany(p => p.Orders)
                .HasForeignKey(d => d.CustomerId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Orders__Customer__534D60F1");

            entity.HasOne(d => d.Staff).WithMany(p => p.Orders)
                .HasForeignKey(d => d.StaffId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Orders__StaffID__5441852A");
        });

        modelBuilder.Entity<OrderDetail>(entity =>
        {
            entity.HasKey(e => e.OrderDetailId).HasName("PK__OrderDet__D3B9D30C084D23C0");

            entity.ToTable("OrderDetail");

            entity.Property(e => e.OrderDetailId)
                .ValueGeneratedNever()
                .HasColumnName("OrderDetailID");
            entity.Property(e => e.KoiId).HasColumnName("KoiID");
            entity.Property(e => e.OrderId).HasColumnName("OrderID");
            entity.Property(e => e.PromotionId).HasColumnName("PromotionID");
            entity.Property(e => e.SalePrice).HasColumnType("decimal(10, 2)");

            entity.HasOne(d => d.Koi).WithMany(p => p.OrderDetails)
                .HasForeignKey(d => d.KoiId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__OrderDeta__KoiID__5812160E");

            entity.HasOne(d => d.Order).WithMany(p => p.OrderDetails)
                .HasForeignKey(d => d.OrderId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__OrderDeta__Order__571DF1D5");
        });

        modelBuilder.Entity<Promotion>(entity =>
        {
            entity.HasKey(e => e.PromotionId).HasName("PK__Promotio__52C42F2F763D078D");

            entity.ToTable("Promotion");

            entity.Property(e => e.PromotionId)
                .ValueGeneratedNever()
                .HasColumnName("PromotionID");
            entity.Property(e => e.Description)
                .HasMaxLength(255)
                .IsUnicode(false);
        });

        modelBuilder.Entity<RatingFeedback>(entity =>
        {
            entity.HasKey(e => e.FeedbackId).HasName("PK__RatingFe__6A4BEDF6FAFD675A");

            entity.ToTable("RatingFeedback");

            entity.Property(e => e.FeedbackId)
                .ValueGeneratedNever()
                .HasColumnName("FeedbackID");
            entity.Property(e => e.Comment).HasColumnType("text");
            entity.Property(e => e.CustomerId).HasColumnName("CustomerID");
            entity.Property(e => e.KoiId).HasColumnName("KoiID");

            entity.HasOne(d => d.Customer).WithMany(p => p.RatingFeedbacks)
                .HasForeignKey(d => d.CustomerId)
                .HasConstraintName("FK__RatingFee__Custo__60A75C0F");

            entity.HasOne(d => d.Koi).WithMany(p => p.RatingFeedbacks)
                .HasForeignKey(d => d.KoiId)
                .HasConstraintName("FK__RatingFee__KoiID__619B8048");
        });

        modelBuilder.Entity<Staff>(entity =>
        {
            entity.HasKey(e => e.StaffId).HasName("PK__Staff__96D4AAF7070C81D8");

            entity.Property(e => e.StaffId).HasColumnName("StaffID");
            entity.Property(e => e.Password)
                .HasMaxLength(100)
                .HasColumnName("password");
            entity.Property(e => e.StaffName).HasMaxLength(100);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
