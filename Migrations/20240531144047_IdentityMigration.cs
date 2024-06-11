using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace LuxuryWatches.Migrations
{
    /// <inheritdoc />
    public partial class IdentityMigration : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "AspNetRoles",
                columns: table => new
                {
                    Id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(256)", maxLength: 256, nullable: true),
                    NormalizedName = table.Column<string>(type: "nvarchar(256)", maxLength: 256, nullable: true),
                    ConcurrencyStamp = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetRoles", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUsers",
                columns: table => new
                {
                    Id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    UserName = table.Column<string>(type: "nvarchar(256)", maxLength: 256, nullable: true),
                    NormalizedUserName = table.Column<string>(type: "nvarchar(256)", maxLength: 256, nullable: true),
                    Email = table.Column<string>(type: "nvarchar(256)", maxLength: 256, nullable: true),
                    NormalizedEmail = table.Column<string>(type: "nvarchar(256)", maxLength: 256, nullable: true),
                    EmailConfirmed = table.Column<bool>(type: "bit", nullable: false),
                    PasswordHash = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    SecurityStamp = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ConcurrencyStamp = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PhoneNumber = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PhoneNumberConfirmed = table.Column<bool>(type: "bit", nullable: false),
                    TwoFactorEnabled = table.Column<bool>(type: "bit", nullable: false),
                    LockoutEnd = table.Column<DateTimeOffset>(type: "datetimeoffset", nullable: true),
                    LockoutEnabled = table.Column<bool>(type: "bit", nullable: false),
                    AccessFailedCount = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUsers", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "LoaiSP",
                columns: table => new
                {
                    MaLoai = table.Column<int>(type: "int", nullable: false),
                    LoaiHang = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    GhiChu = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__LoaiSP__730A57596EE5FB57", x => x.MaLoai);
                });

            migrationBuilder.CreateTable(
                name: "NhomTk",
                columns: table => new
                {
                    MaNhom = table.Column<int>(type: "int", nullable: false),
                    TenNhom = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    GhiChu = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__NhomTk__234F91CDB54C060C", x => x.MaNhom);
                });

            migrationBuilder.CreateTable(
                name: "QuanHuyen",
                columns: table => new
                {
                    MaQh = table.Column<int>(type: "int", nullable: false),
                    TenQh = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TinhThanh = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    GhiChu = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__QuanHuye__2725FFB60A7CD989", x => x.MaQh);
                });

            migrationBuilder.CreateTable(
                name: "AspNetRoleClaims",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    RoleId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    ClaimType = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ClaimValue = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetRoleClaims", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AspNetRoleClaims_AspNetRoles_RoleId",
                        column: x => x.RoleId,
                        principalTable: "AspNetRoles",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserClaims",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UserId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    ClaimType = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ClaimValue = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserClaims", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AspNetUserClaims_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserLogins",
                columns: table => new
                {
                    LoginProvider = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    ProviderKey = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    ProviderDisplayName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UserId = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserLogins", x => new { x.LoginProvider, x.ProviderKey });
                    table.ForeignKey(
                        name: "FK_AspNetUserLogins_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserRoles",
                columns: table => new
                {
                    UserId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    RoleId = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserRoles", x => new { x.UserId, x.RoleId });
                    table.ForeignKey(
                        name: "FK_AspNetUserRoles_AspNetRoles_RoleId",
                        column: x => x.RoleId,
                        principalTable: "AspNetRoles",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_AspNetUserRoles_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserTokens",
                columns: table => new
                {
                    UserId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    LoginProvider = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Value = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserTokens", x => new { x.UserId, x.LoginProvider, x.Name });
                    table.ForeignKey(
                        name: "FK_AspNetUserTokens_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "KhachHang",
                columns: table => new
                {
                    MaKh = table.Column<int>(type: "int", nullable: false),
                    TenKh = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    SoDt = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DiaChi = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    NgaySinh = table.Column<DateOnly>(type: "date", nullable: true),
                    GioiTinh = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: true),
                    GhiChu = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MaQh = table.Column<int>(type: "int", nullable: true),
                    DiemTichLuy = table.Column<decimal>(type: "decimal(18,2)", nullable: true),
                    TaiKhoan = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__KhachHan__2725CF7EB38049BC", x => x.MaKh);
                    table.ForeignKey(
                        name: "FK_KhachHang_QuanHuyen",
                        column: x => x.MaQh,
                        principalTable: "QuanHuyen",
                        principalColumn: "MaQh");
                });

            migrationBuilder.CreateTable(
                name: "TaiKhoanTv",
                columns: table => new
                {
                    TaiKhoan = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    HoDem = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TenTv = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    NgaySinh = table.Column<DateOnly>(type: "date", nullable: true),
                    GioiTinh = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: true),
                    SoDt = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DiaChi = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TrangThai = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    GhiChu = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MaNhom = table.Column<int>(type: "int", nullable: true),
                    MaQh = table.Column<int>(type: "int", nullable: true),
                    MaTV = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__TaiKhoan__D5B8C7F15882C174", x => x.TaiKhoan);
                    table.ForeignKey(
                        name: "FK_TaiKhoanTv_NhomTk",
                        column: x => x.MaNhom,
                        principalTable: "NhomTk",
                        principalColumn: "MaNhom");
                    table.ForeignKey(
                        name: "FK_TaiKhoanTv_QuanHuyen",
                        column: x => x.MaQh,
                        principalTable: "QuanHuyen",
                        principalColumn: "MaQh");
                });

            migrationBuilder.CreateTable(
                name: "BaiViet",
                columns: table => new
                {
                    MaBv = table.Column<int>(type: "int", nullable: false),
                    TenBv = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    HinhDd = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    NdTomTat = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    NgayDang = table.Column<DateTime>(type: "datetime", nullable: true),
                    NoiDung = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TaiKhoan = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    DaDuyet = table.Column<bool>(type: "bit", nullable: true),
                    MaLoai = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__BaiViet__272475F588939D18", x => x.MaBv);
                    table.ForeignKey(
                        name: "FK_BaiViet_LoaiSP",
                        column: x => x.MaLoai,
                        principalTable: "LoaiSP",
                        principalColumn: "MaLoai");
                    table.ForeignKey(
                        name: "FK_BaiViet_TaiKhoanTv",
                        column: x => x.TaiKhoan,
                        principalTable: "TaiKhoanTv",
                        principalColumn: "TaiKhoan");
                });

            migrationBuilder.CreateTable(
                name: "DonHang",
                columns: table => new
                {
                    SoDh = table.Column<int>(type: "int", nullable: false),
                    MaKh = table.Column<int>(type: "int", nullable: true),
                    TaiKhoan = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    NgayDat = table.Column<DateTime>(type: "datetime", nullable: true),
                    DaKichHoat = table.Column<bool>(type: "bit", nullable: true),
                    NgayGh = table.Column<DateTime>(type: "datetime", nullable: true),
                    DiaChiGh = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    GhiChu = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TrangThai = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__DonHang__BC3D04FC1E3FAF64", x => x.SoDh);
                    table.ForeignKey(
                        name: "FK_DonHang_KhachHang",
                        column: x => x.MaKh,
                        principalTable: "KhachHang",
                        principalColumn: "MaKh");
                    table.ForeignKey(
                        name: "FK_DonHang_TaiKhoanTv",
                        column: x => x.TaiKhoan,
                        principalTable: "TaiKhoanTv",
                        principalColumn: "TaiKhoan");
                });

            migrationBuilder.CreateTable(
                name: "SanPham",
                columns: table => new
                {
                    MaSp = table.Column<int>(type: "int", nullable: false),
                    TenSp = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    HinhDd = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    NdTomTat = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    NgayDang = table.Column<DateTime>(type: "datetime", nullable: true),
                    TaiKhoan = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    DaDuyet = table.Column<bool>(type: "bit", nullable: true),
                    GiaBan = table.Column<decimal>(type: "decimal(18,2)", nullable: false),
                    GiamGia = table.Column<decimal>(type: "decimal(18,2)", nullable: true),
                    MaLoai = table.Column<int>(type: "int", nullable: true),
                    NhaSanXuat = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Dvt = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__SanPham__2725087C33B458B4", x => x.MaSp);
                    table.ForeignKey(
                        name: "FK_SanPham_TaiKhoanTv",
                        column: x => x.TaiKhoan,
                        principalTable: "TaiKhoanTv",
                        principalColumn: "TaiKhoan");
                });

            migrationBuilder.CreateTable(
                name: "Users",
                columns: table => new
                {
                    TaiKhoan = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    MatKhau = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    LoaiUser = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__Users__D5B8C7F18A2DF635", x => x.TaiKhoan);
                    table.ForeignKey(
                        name: "FK_Users_TaiKhoanTv",
                        column: x => x.TaiKhoan,
                        principalTable: "TaiKhoanTv",
                        principalColumn: "TaiKhoan");
                });

            migrationBuilder.CreateTable(
                name: "ctDonHang",
                columns: table => new
                {
                    SoDh = table.Column<int>(type: "int", nullable: false),
                    MaSp = table.Column<int>(type: "int", nullable: false),
                    SoLuong = table.Column<int>(type: "int", nullable: true),
                    Giaban = table.Column<decimal>(type: "decimal(18,2)", nullable: true),
                    GiamGia = table.Column<decimal>(type: "decimal(18,2)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__ctDonHan__6E4F547BBB3E31F7", x => new { x.SoDh, x.MaSp });
                    table.ForeignKey(
                        name: "FK_ctDonHang_DonHang",
                        column: x => x.SoDh,
                        principalTable: "DonHang",
                        principalColumn: "SoDh");
                    table.ForeignKey(
                        name: "FK_ctDonHang_SanPham",
                        column: x => x.MaSp,
                        principalTable: "SanPham",
                        principalColumn: "MaSp");
                });

            migrationBuilder.CreateTable(
                name: "tChiTietSanPham",
                columns: table => new
                {
                    MaLoai = table.Column<int>(type: "int", nullable: false),
                    MaSP = table.Column<int>(type: "int", nullable: true),
                    MaKichThuoc = table.Column<int>(type: "int", nullable: true),
                    MaMauSac = table.Column<int>(type: "int", nullable: true),
                    AnhDaiDien = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: true),
                    Video = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: true),
                    DonGiaBan = table.Column<decimal>(type: "decimal(10,2)", nullable: true),
                    GiamGia = table.Column<decimal>(type: "decimal(10,2)", nullable: true),
                    SLTon = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__tChiTiet__730A57593A503B88", x => x.MaLoai);
                    table.ForeignKey(
                        name: "FK_tChiTietSanPham_SanPham",
                        column: x => x.MaSP,
                        principalTable: "SanPham",
                        principalColumn: "MaSp");
                });

            migrationBuilder.CreateIndex(
                name: "IX_AspNetRoleClaims_RoleId",
                table: "AspNetRoleClaims",
                column: "RoleId");

            migrationBuilder.CreateIndex(
                name: "RoleNameIndex",
                table: "AspNetRoles",
                column: "NormalizedName",
                unique: true,
                filter: "[NormalizedName] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUserClaims_UserId",
                table: "AspNetUserClaims",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUserLogins_UserId",
                table: "AspNetUserLogins",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUserRoles_RoleId",
                table: "AspNetUserRoles",
                column: "RoleId");

            migrationBuilder.CreateIndex(
                name: "EmailIndex",
                table: "AspNetUsers",
                column: "NormalizedEmail");

            migrationBuilder.CreateIndex(
                name: "UserNameIndex",
                table: "AspNetUsers",
                column: "NormalizedUserName",
                unique: true,
                filter: "[NormalizedUserName] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_BaiViet_MaLoai",
                table: "BaiViet",
                column: "MaLoai");

            migrationBuilder.CreateIndex(
                name: "IX_BaiViet_TaiKhoan",
                table: "BaiViet",
                column: "TaiKhoan");

            migrationBuilder.CreateIndex(
                name: "IX_ctDonHang_MaSp",
                table: "ctDonHang",
                column: "MaSp");

            migrationBuilder.CreateIndex(
                name: "IX_DonHang_MaKh",
                table: "DonHang",
                column: "MaKh");

            migrationBuilder.CreateIndex(
                name: "IX_DonHang_TaiKhoan",
                table: "DonHang",
                column: "TaiKhoan");

            migrationBuilder.CreateIndex(
                name: "IX_KhachHang_MaQh",
                table: "KhachHang",
                column: "MaQh");

            migrationBuilder.CreateIndex(
                name: "IX_SanPham_TaiKhoan",
                table: "SanPham",
                column: "TaiKhoan");

            migrationBuilder.CreateIndex(
                name: "IX_TaiKhoanTv_MaNhom",
                table: "TaiKhoanTv",
                column: "MaNhom");

            migrationBuilder.CreateIndex(
                name: "IX_TaiKhoanTv_MaQh",
                table: "TaiKhoanTv",
                column: "MaQh");

            migrationBuilder.CreateIndex(
                name: "IX_tChiTietSanPham_MaSP",
                table: "tChiTietSanPham",
                column: "MaSP");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "AspNetRoleClaims");

            migrationBuilder.DropTable(
                name: "AspNetUserClaims");

            migrationBuilder.DropTable(
                name: "AspNetUserLogins");

            migrationBuilder.DropTable(
                name: "AspNetUserRoles");

            migrationBuilder.DropTable(
                name: "AspNetUserTokens");

            migrationBuilder.DropTable(
                name: "BaiViet");

            migrationBuilder.DropTable(
                name: "ctDonHang");

            migrationBuilder.DropTable(
                name: "tChiTietSanPham");

            migrationBuilder.DropTable(
                name: "Users");

            migrationBuilder.DropTable(
                name: "AspNetRoles");

            migrationBuilder.DropTable(
                name: "AspNetUsers");

            migrationBuilder.DropTable(
                name: "LoaiSP");

            migrationBuilder.DropTable(
                name: "DonHang");

            migrationBuilder.DropTable(
                name: "SanPham");

            migrationBuilder.DropTable(
                name: "KhachHang");

            migrationBuilder.DropTable(
                name: "TaiKhoanTv");

            migrationBuilder.DropTable(
                name: "NhomTk");

            migrationBuilder.DropTable(
                name: "QuanHuyen");
        }
    }
}
