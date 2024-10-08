﻿// <auto-generated />
using System;
using LuxuryWatches.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace LuxuryWatches.Migrations
{
    [DbContext(typeof(LuxuryWebContext))]
    partial class LuxuryWebContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "8.0.5")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("LuxuryWatches.Models.BaiViet", b =>
                {
                    b.Property<int>("MaBv")
                        .HasColumnType("int");

                    b.Property<bool?>("DaDuyet")
                        .HasColumnType("bit");

                    b.Property<string>("HinhDd")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("MaLoai")
                        .HasColumnType("int");

                    b.Property<string>("NdTomTat")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("NgayDang")
                        .HasColumnType("datetime");

                    b.Property<string>("NoiDung")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("TaiKhoan")
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("TenBv")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("MaBv")
                        .HasName("PK__BaiViet__272475F588939D18");

                    b.HasIndex("MaLoai");

                    b.HasIndex("TaiKhoan");

                    b.ToTable("BaiViet", (string)null);
                });

            modelBuilder.Entity("LuxuryWatches.Models.CtDonHang", b =>
                {
                    b.Property<int>("SoDh")
                        .HasColumnType("int");

                    b.Property<int>("MaSp")
                        .HasColumnType("int");

                    b.Property<decimal?>("Giaban")
                        .HasColumnType("decimal(18, 2)");

                    b.Property<decimal?>("GiamGia")
                        .HasColumnType("decimal(18, 2)");

                    b.Property<int?>("SoLuong")
                        .HasColumnType("int");

                    b.HasKey("SoDh", "MaSp")
                        .HasName("PK__ctDonHan__6E4F547BBB3E31F7");

                    b.HasIndex("MaSp");

                    b.ToTable("ctDonHang", (string)null);
                });

            modelBuilder.Entity("LuxuryWatches.Models.DonHang", b =>
                {
                    b.Property<int>("SoDh")
                        .HasColumnType("int");

                    b.Property<bool?>("DaKichHoat")
                        .HasColumnType("bit");

                    b.Property<string>("DiaChiGh")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("GhiChu")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("MaKh")
                        .HasColumnType("int");

                    b.Property<DateTime?>("NgayDat")
                        .HasColumnType("datetime");

                    b.Property<DateTime?>("NgayGh")
                        .HasColumnType("datetime");

                    b.Property<string>("TaiKhoan")
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("TrangThai")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("SoDh")
                        .HasName("PK__DonHang__BC3D04FC1E3FAF64");

                    b.HasIndex("MaKh");

                    b.HasIndex("TaiKhoan");

                    b.ToTable("DonHang", (string)null);
                });

            modelBuilder.Entity("LuxuryWatches.Models.KhachHang", b =>
                {
                    b.Property<int>("MaKh")
                        .HasColumnType("int");

                    b.Property<string>("DiaChi")
                        .HasColumnType("nvarchar(max)");

                    b.Property<decimal?>("DiemTichLuy")
                        .HasColumnType("decimal(18, 2)");

                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("GhiChu")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("GioiTinh")
                        .HasMaxLength(10)
                        .HasColumnType("nvarchar(10)");

                    b.Property<int?>("MaQh")
                        .HasColumnType("int");

                    b.Property<DateOnly?>("NgaySinh")
                        .HasColumnType("date");

                    b.Property<string>("SoDt")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("TaiKhoan")
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("TenKh")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("MaKh")
                        .HasName("PK__KhachHan__2725CF7EB38049BC");

                    b.HasIndex("MaQh");

                    b.ToTable("KhachHang", (string)null);
                });

            modelBuilder.Entity("LuxuryWatches.Models.LoaiSp", b =>
                {
                    b.Property<int>("MaLoai")
                        .HasColumnType("int");

                    b.Property<string>("GhiChu")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("LoaiHang")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("MaLoai")
                        .HasName("PK__LoaiSP__730A57596EE5FB57");

                    b.ToTable("LoaiSP", (string)null);
                });

            modelBuilder.Entity("LuxuryWatches.Models.NhomTk", b =>
                {
                    b.Property<int>("MaNhom")
                        .HasColumnType("int");

                    b.Property<string>("GhiChu")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("TenNhom")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("MaNhom")
                        .HasName("PK__NhomTk__234F91CDB54C060C");

                    b.ToTable("NhomTk", (string)null);
                });

            modelBuilder.Entity("LuxuryWatches.Models.QuanHuyen", b =>
                {
                    b.Property<int>("MaQh")
                        .HasColumnType("int");

                    b.Property<string>("GhiChu")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("TenQh")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("TinhThanh")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("MaQh")
                        .HasName("PK__QuanHuye__2725FFB60A7CD989");

                    b.ToTable("QuanHuyen", (string)null);
                });

            modelBuilder.Entity("LuxuryWatches.Models.SanPham", b =>
                {
                    b.Property<int>("MaSp")
                        .HasColumnType("int");

                    b.Property<bool?>("DaDuyet")
                        .HasColumnType("bit");

                    b.Property<string>("Dvt")
                        .HasColumnType("nvarchar(max)");

                    b.Property<decimal>("GiaBan")
                        .HasColumnType("decimal(18, 2)");

                    b.Property<decimal?>("GiamGia")
                        .HasColumnType("decimal(18, 2)");

                    b.Property<string>("HinhDd")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("MaLoai")
                        .HasColumnType("int");

                    b.Property<string>("NdTomTat")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("NgayDang")
                        .HasColumnType("datetime");

                    b.Property<string>("NhaSanXuat")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("TaiKhoan")
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("TenSp")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("MaSp")
                        .HasName("PK__SanPham__2725087C33B458B4");

                    b.HasIndex("TaiKhoan");

                    b.ToTable("SanPham", (string)null);
                });

            modelBuilder.Entity("LuxuryWatches.Models.TChiTietSanPham", b =>
                {
                    b.Property<int>("MaLoai")
                        .HasColumnType("int");

                    b.Property<string>("AnhDaiDien")
                        .HasMaxLength(255)
                        .HasColumnType("nvarchar(255)");

                    b.Property<decimal?>("DonGiaBan")
                        .HasColumnType("decimal(10, 2)");

                    b.Property<decimal?>("GiamGia")
                        .HasColumnType("decimal(10, 2)");

                    b.Property<int?>("MaKichThuoc")
                        .HasColumnType("int");

                    b.Property<int?>("MaMauSac")
                        .HasColumnType("int");

                    b.Property<int?>("MaSp")
                        .HasColumnType("int")
                        .HasColumnName("MaSP");

                    b.Property<int?>("Slton")
                        .HasColumnType("int")
                        .HasColumnName("SLTon");

                    b.Property<string>("Video")
                        .HasMaxLength(255)
                        .HasColumnType("nvarchar(255)");

                    b.HasKey("MaLoai")
                        .HasName("PK__tChiTiet__730A57593A503B88");

                    b.HasIndex("MaSp");

                    b.ToTable("tChiTietSanPham", (string)null);
                });

            modelBuilder.Entity("LuxuryWatches.Models.TaiKhoanTv", b =>
                {
                    b.Property<string>("TaiKhoan")
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("DiaChi")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("GhiChu")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("GioiTinh")
                        .HasMaxLength(10)
                        .HasColumnType("nvarchar(10)");

                    b.Property<string>("HoDem")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("MaNhom")
                        .HasColumnType("int");

                    b.Property<int?>("MaQh")
                        .HasColumnType("int");

                    b.Property<int?>("MaTv")
                        .HasColumnType("int")
                        .HasColumnName("MaTV");

                    b.Property<DateOnly?>("NgaySinh")
                        .HasColumnType("date");

                    b.Property<string>("SoDt")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("TenTv")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("TrangThai")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("TaiKhoan")
                        .HasName("PK__TaiKhoan__D5B8C7F15882C174");

                    b.HasIndex("MaNhom");

                    b.HasIndex("MaQh");

                    b.ToTable("TaiKhoanTv", (string)null);
                });

            modelBuilder.Entity("LuxuryWatches.Models.User", b =>
                {
                    b.Property<string>("TaiKhoan")
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("LoaiUser")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("MatKhau")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("TaiKhoan")
                        .HasName("PK__Users__D5B8C7F18A2DF635");

                    b.ToTable("Users");
                });

            modelBuilder.Entity("LuxuryWatches.Models.UserModel", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<int>("AccessFailedCount")
                        .HasColumnType("int");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<bool>("EmailConfirmed")
                        .HasColumnType("bit");

                    b.Property<bool>("LockoutEnabled")
                        .HasColumnType("bit");

                    b.Property<DateTimeOffset?>("LockoutEnd")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("NormalizedEmail")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("NormalizedUserName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("PasswordHash")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PhoneNumber")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("PhoneNumberConfirmed")
                        .HasColumnType("bit");

                    b.Property<string>("SecurityStamp")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("TwoFactorEnabled")
                        .HasColumnType("bit");

                    b.Property<string>("UserName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedEmail")
                        .HasDatabaseName("EmailIndex");

                    b.HasIndex("NormalizedUserName")
                        .IsUnique()
                        .HasDatabaseName("UserNameIndex")
                        .HasFilter("[NormalizedUserName] IS NOT NULL");

                    b.ToTable("AspNetUsers", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRole", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("NormalizedName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedName")
                        .IsUnique()
                        .HasDatabaseName("RoleNameIndex")
                        .HasFilter("[NormalizedName] IS NOT NULL");

                    b.ToTable("AspNetRoles", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<string>("ClaimType")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("RoleId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetRoleClaims", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<string>("ClaimType")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserClaims", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.Property<string>("LoginProvider")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ProviderKey")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ProviderDisplayName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("LoginProvider", "ProviderKey");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserLogins", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.Property<string>("UserId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("RoleId")
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetUserRoles", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.Property<string>("UserId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("LoginProvider")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Value")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("UserId", "LoginProvider", "Name");

                    b.ToTable("AspNetUserTokens", (string)null);
                });

            modelBuilder.Entity("LuxuryWatches.Models.BaiViet", b =>
                {
                    b.HasOne("LuxuryWatches.Models.LoaiSp", "MaLoaiNavigation")
                        .WithMany("BaiViets")
                        .HasForeignKey("MaLoai")
                        .HasConstraintName("FK_BaiViet_LoaiSP");

                    b.HasOne("LuxuryWatches.Models.TaiKhoanTv", "TaiKhoanNavigation")
                        .WithMany("BaiViets")
                        .HasForeignKey("TaiKhoan")
                        .HasConstraintName("FK_BaiViet_TaiKhoanTv");

                    b.Navigation("MaLoaiNavigation");

                    b.Navigation("TaiKhoanNavigation");
                });

            modelBuilder.Entity("LuxuryWatches.Models.CtDonHang", b =>
                {
                    b.HasOne("LuxuryWatches.Models.SanPham", "MaSpNavigation")
                        .WithMany("CtDonHangs")
                        .HasForeignKey("MaSp")
                        .IsRequired()
                        .HasConstraintName("FK_ctDonHang_SanPham");

                    b.HasOne("LuxuryWatches.Models.DonHang", "SoDhNavigation")
                        .WithMany("CtDonHangs")
                        .HasForeignKey("SoDh")
                        .IsRequired()
                        .HasConstraintName("FK_ctDonHang_DonHang");

                    b.Navigation("MaSpNavigation");

                    b.Navigation("SoDhNavigation");
                });

            modelBuilder.Entity("LuxuryWatches.Models.DonHang", b =>
                {
                    b.HasOne("LuxuryWatches.Models.KhachHang", "MaKhNavigation")
                        .WithMany("DonHangs")
                        .HasForeignKey("MaKh")
                        .HasConstraintName("FK_DonHang_KhachHang");

                    b.HasOne("LuxuryWatches.Models.TaiKhoanTv", "TaiKhoanNavigation")
                        .WithMany("DonHangs")
                        .HasForeignKey("TaiKhoan")
                        .HasConstraintName("FK_DonHang_TaiKhoanTv");

                    b.Navigation("MaKhNavigation");

                    b.Navigation("TaiKhoanNavigation");
                });

            modelBuilder.Entity("LuxuryWatches.Models.KhachHang", b =>
                {
                    b.HasOne("LuxuryWatches.Models.QuanHuyen", "MaQhNavigation")
                        .WithMany("KhachHangs")
                        .HasForeignKey("MaQh")
                        .HasConstraintName("FK_KhachHang_QuanHuyen");

                    b.Navigation("MaQhNavigation");
                });

            modelBuilder.Entity("LuxuryWatches.Models.SanPham", b =>
                {
                    b.HasOne("LuxuryWatches.Models.TaiKhoanTv", "TaiKhoanNavigation")
                        .WithMany("SanPhams")
                        .HasForeignKey("TaiKhoan")
                        .HasConstraintName("FK_SanPham_TaiKhoanTv");

                    b.Navigation("TaiKhoanNavigation");
                });

            modelBuilder.Entity("LuxuryWatches.Models.TChiTietSanPham", b =>
                {
                    b.HasOne("LuxuryWatches.Models.SanPham", "MaSpNavigation")
                        .WithMany("TChiTietSanPhams")
                        .HasForeignKey("MaSp")
                        .HasConstraintName("FK_tChiTietSanPham_SanPham");

                    b.Navigation("MaSpNavigation");
                });

            modelBuilder.Entity("LuxuryWatches.Models.TaiKhoanTv", b =>
                {
                    b.HasOne("LuxuryWatches.Models.NhomTk", "MaNhomNavigation")
                        .WithMany("TaiKhoanTvs")
                        .HasForeignKey("MaNhom")
                        .HasConstraintName("FK_TaiKhoanTv_NhomTk");

                    b.HasOne("LuxuryWatches.Models.QuanHuyen", "MaQhNavigation")
                        .WithMany("TaiKhoanTvs")
                        .HasForeignKey("MaQh")
                        .HasConstraintName("FK_TaiKhoanTv_QuanHuyen");

                    b.Navigation("MaNhomNavigation");

                    b.Navigation("MaQhNavigation");
                });

            modelBuilder.Entity("LuxuryWatches.Models.User", b =>
                {
                    b.HasOne("LuxuryWatches.Models.TaiKhoanTv", "TaiKhoanNavigation")
                        .WithOne("User")
                        .HasForeignKey("LuxuryWatches.Models.User", "TaiKhoan")
                        .IsRequired()
                        .HasConstraintName("FK_Users_TaiKhoanTv");

                    b.Navigation("TaiKhoanNavigation");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole", null)
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.HasOne("LuxuryWatches.Models.UserModel", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.HasOne("LuxuryWatches.Models.UserModel", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole", null)
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("LuxuryWatches.Models.UserModel", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.HasOne("LuxuryWatches.Models.UserModel", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("LuxuryWatches.Models.DonHang", b =>
                {
                    b.Navigation("CtDonHangs");
                });

            modelBuilder.Entity("LuxuryWatches.Models.KhachHang", b =>
                {
                    b.Navigation("DonHangs");
                });

            modelBuilder.Entity("LuxuryWatches.Models.LoaiSp", b =>
                {
                    b.Navigation("BaiViets");
                });

            modelBuilder.Entity("LuxuryWatches.Models.NhomTk", b =>
                {
                    b.Navigation("TaiKhoanTvs");
                });

            modelBuilder.Entity("LuxuryWatches.Models.QuanHuyen", b =>
                {
                    b.Navigation("KhachHangs");

                    b.Navigation("TaiKhoanTvs");
                });

            modelBuilder.Entity("LuxuryWatches.Models.SanPham", b =>
                {
                    b.Navigation("CtDonHangs");

                    b.Navigation("TChiTietSanPhams");
                });

            modelBuilder.Entity("LuxuryWatches.Models.TaiKhoanTv", b =>
                {
                    b.Navigation("BaiViets");

                    b.Navigation("DonHangs");

                    b.Navigation("SanPhams");

                    b.Navigation("User");
                });
#pragma warning restore 612, 618
        }
    }
}
