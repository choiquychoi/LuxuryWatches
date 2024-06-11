using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace LuxuryWatches.Models;

public partial class LuxuryWebContext : IdentityDbContext<AppUserModel>
{
    public LuxuryWebContext()
    {
    }

    public LuxuryWebContext(DbContextOptions<LuxuryWebContext> options)
        : base(options)
    {
    }

    public virtual DbSet<BaiViet> BaiViets { get; set; }

    public virtual DbSet<CtDonHang> CtDonHangs { get; set; }

    public virtual DbSet<DonHang> DonHangs { get; set; }

    public virtual DbSet<KhachHang> KhachHangs { get; set; }

    public virtual DbSet<LoaiSp> LoaiSps { get; set; }

    public virtual DbSet<NhomTk> NhomTks { get; set; }

    public virtual DbSet<QuanHuyen> QuanHuyens { get; set; }

    public virtual DbSet<SanPham> SanPhams { get; set; }

    public virtual DbSet<TChiTietSanPham> TChiTietSanPhams { get; set; }

    public virtual DbSet<TaiKhoanTv> TaiKhoanTvs { get; set; }

    public virtual DbSet<User> Users { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Data Source=DESKTOP-VM46F3R;Initial Catalog=LuxuryWeb;Integrated Security=True;Connect Timeout=30;Encrypt=True;Trust Server Certificate=True;Application Intent=ReadWrite;Multi Subnet Failover=False");

	protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
		base.OnModelCreating(modelBuilder);

		// Cấu hình khóa chính cho IdentityUserLogin<string>
		modelBuilder.Entity<IdentityUserLogin<string>>()
			.HasKey(login => new { login.LoginProvider, login.ProviderKey });

		// Cấu hình khác
		modelBuilder.Entity<BaiViet>(entity =>
        {
            entity.HasKey(e => e.MaBv).HasName("PK__BaiViet__272475F588939D18");

            entity.ToTable("BaiViet");

            entity.Property(e => e.MaBv).ValueGeneratedNever();
            entity.Property(e => e.NgayDang).HasColumnType("datetime");
            entity.Property(e => e.TaiKhoan).HasMaxLength(100);

            entity.HasOne(d => d.MaLoaiNavigation).WithMany(p => p.BaiViets)
                .HasForeignKey(d => d.MaLoai)
                .HasConstraintName("FK_BaiViet_LoaiSP");

            entity.HasOne(d => d.TaiKhoanNavigation).WithMany(p => p.BaiViets)
                .HasForeignKey(d => d.TaiKhoan)
                .HasConstraintName("FK_BaiViet_TaiKhoanTv");
        });

        modelBuilder.Entity<CtDonHang>(entity =>
        {
            entity.HasKey(e => new { e.SoDh, e.MaSp }).HasName("PK__ctDonHan__6E4F547BBB3E31F7");

            entity.ToTable("ctDonHang");

            entity.Property(e => e.Giaban).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.GiamGia).HasColumnType("decimal(18, 2)");

            entity.HasOne(d => d.MaSpNavigation).WithMany(p => p.CtDonHangs)
                .HasForeignKey(d => d.MaSp)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_ctDonHang_SanPham");

            entity.HasOne(d => d.SoDhNavigation).WithMany(p => p.CtDonHangs)
                .HasForeignKey(d => d.SoDh)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_ctDonHang_DonHang");
        });

        modelBuilder.Entity<DonHang>(entity =>
        {
            entity.HasKey(e => e.SoDh).HasName("PK__DonHang__BC3D04FC1E3FAF64");

            entity.ToTable("DonHang");

            entity.Property(e => e.SoDh).ValueGeneratedNever();
            entity.Property(e => e.NgayDat).HasColumnType("datetime");
            entity.Property(e => e.NgayGh).HasColumnType("datetime");
            entity.Property(e => e.TaiKhoan).HasMaxLength(100);

            entity.HasOne(d => d.MaKhNavigation).WithMany(p => p.DonHangs)
                .HasForeignKey(d => d.MaKh)
                .HasConstraintName("FK_DonHang_KhachHang");

            entity.HasOne(d => d.TaiKhoanNavigation).WithMany(p => p.DonHangs)
                .HasForeignKey(d => d.TaiKhoan)
                .HasConstraintName("FK_DonHang_TaiKhoanTv");
        });

        modelBuilder.Entity<KhachHang>(entity =>
        {
            entity.HasKey(e => e.MaKh).HasName("PK__KhachHan__2725CF7EB38049BC");

            entity.ToTable("KhachHang");

            entity.Property(e => e.MaKh).ValueGeneratedNever();
            entity.Property(e => e.DiemTichLuy).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.GioiTinh).HasMaxLength(10);
            entity.Property(e => e.TaiKhoan).HasMaxLength(100);

            entity.HasOne(d => d.MaQhNavigation).WithMany(p => p.KhachHangs)
                .HasForeignKey(d => d.MaQh)
                .HasConstraintName("FK_KhachHang_QuanHuyen");
        });

        modelBuilder.Entity<LoaiSp>(entity =>
        {
            entity.HasKey(e => e.MaLoai).HasName("PK__LoaiSP__730A57596EE5FB57");

            entity.ToTable("LoaiSP");

            entity.Property(e => e.MaLoai).ValueGeneratedNever();
        });

        modelBuilder.Entity<NhomTk>(entity =>
        {
            entity.HasKey(e => e.MaNhom).HasName("PK__NhomTk__234F91CDB54C060C");

            entity.ToTable("NhomTk");

            entity.Property(e => e.MaNhom).ValueGeneratedNever();
        });

        modelBuilder.Entity<QuanHuyen>(entity =>
        {
            entity.HasKey(e => e.MaQh).HasName("PK__QuanHuye__2725FFB60A7CD989");

            entity.ToTable("QuanHuyen");

            entity.Property(e => e.MaQh).ValueGeneratedNever();
        });

        modelBuilder.Entity<SanPham>(entity =>
        {
            entity.HasKey(e => e.MaSp).HasName("PK__SanPham__2725087C33B458B4");

            entity.ToTable("SanPham");

            entity.Property(e => e.MaSp).ValueGeneratedNever();
            entity.Property(e => e.GiaBan).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.GiamGia).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.NgayDang).HasColumnType("datetime");
            entity.Property(e => e.TaiKhoan).HasMaxLength(100);

            entity.HasOne(d => d.TaiKhoanNavigation).WithMany(p => p.SanPhams)
                .HasForeignKey(d => d.TaiKhoan)
                .HasConstraintName("FK_SanPham_TaiKhoanTv");
        });

        modelBuilder.Entity<TChiTietSanPham>(entity =>
        {
            entity.HasKey(e => e.MaLoai).HasName("PK__tChiTiet__730A57593A503B88");

            entity.ToTable("tChiTietSanPham");

            entity.Property(e => e.MaLoai).ValueGeneratedNever();
            entity.Property(e => e.AnhDaiDien).HasMaxLength(255);
            entity.Property(e => e.DonGiaBan).HasColumnType("decimal(10, 2)");
            entity.Property(e => e.GiamGia).HasColumnType("decimal(10, 2)");
            entity.Property(e => e.MaSp).HasColumnName("MaSP");
            entity.Property(e => e.Slton).HasColumnName("SLTon");
            entity.Property(e => e.Video).HasMaxLength(255);

            entity.HasOne(d => d.MaSpNavigation).WithMany(p => p.TChiTietSanPhams)
                .HasForeignKey(d => d.MaSp)
                .HasConstraintName("FK_tChiTietSanPham_SanPham");
        });

        modelBuilder.Entity<TaiKhoanTv>(entity =>
        {
            entity.HasKey(e => e.TaiKhoan).HasName("PK__TaiKhoan__D5B8C7F15882C174");

            entity.ToTable("TaiKhoanTv");

            entity.Property(e => e.TaiKhoan).HasMaxLength(100);
            entity.Property(e => e.GioiTinh).HasMaxLength(10);
            entity.Property(e => e.MaTv).HasColumnName("MaTV");

            entity.HasOne(d => d.MaNhomNavigation).WithMany(p => p.TaiKhoanTvs)
                .HasForeignKey(d => d.MaNhom)
                .HasConstraintName("FK_TaiKhoanTv_NhomTk");

            entity.HasOne(d => d.MaQhNavigation).WithMany(p => p.TaiKhoanTvs)
                .HasForeignKey(d => d.MaQh)
                .HasConstraintName("FK_TaiKhoanTv_QuanHuyen");
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.TaiKhoan).HasName("PK__Users__D5B8C7F18A2DF635");

            entity.Property(e => e.TaiKhoan).HasMaxLength(100);

            entity.HasOne(d => d.TaiKhoanNavigation).WithOne(p => p.User)
                .HasForeignKey<User>(d => d.TaiKhoan)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Users_TaiKhoanTv");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
