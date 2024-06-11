/******USE [master]
GO
/****** Object:  Database [LuxuryWeb]    Script Date: 4/14/2024 10:06:30 AM ******/
CREATE DATABASE [LuxuryWeb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LuxuryWeb', FILENAME = N'D:\developer\cosodulieu\MSSQL16.SQLEXPRESS\MSSQL\DATA\LuxuryWeb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LuxuryWeb_log', FILENAME = N'D:\developer\cosodulieu\MSSQL16.SQLEXPRESS\MSSQL\DATA\LuxuryWeb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [LuxuryWeb] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LuxuryWeb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LuxuryWeb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LuxuryWeb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LuxuryWeb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LuxuryWeb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LuxuryWeb] SET ARITHABORT OFF 
GO
ALTER DATABASE [LuxuryWeb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LuxuryWeb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LuxuryWeb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LuxuryWeb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LuxuryWeb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LuxuryWeb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LuxuryWeb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LuxuryWeb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LuxuryWeb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LuxuryWeb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LuxuryWeb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LuxuryWeb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LuxuryWeb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LuxuryWeb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LuxuryWeb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LuxuryWeb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LuxuryWeb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LuxuryWeb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LuxuryWeb] SET  MULTI_USER 
GO
ALTER DATABASE [LuxuryWeb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LuxuryWeb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LuxuryWeb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LuxuryWeb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LuxuryWeb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LuxuryWeb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [LuxuryWeb] SET QUERY_STORE = ON
GO
ALTER DATABASE [LuxuryWeb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [LuxuryWeb]
GO******/
/****** Object:  Table [dbo].[BaiViet]    Script Date: 4/14/2024 10:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiViet](
	[MaBv] [int] NOT NULL,
	[TenBv] [nvarchar](max) NULL,
	[HinhDd] [nvarchar](max) NULL,
	[NdTomTat] [nvarchar](max) NULL,
	[NgayDang] [datetime] NULL,
	[NoiDung] [nvarchar](max) NULL,
	[TaiKhoan] [nvarchar](100) NULL,
	[DaDuyet] [bit] NULL,
	[MaLoai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ctDonHang]    Script Date: 4/14/2024 10:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctDonHang](
	[SoDh] [int] NOT NULL,
	[MaSp] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[Giaban] [decimal](18, 2) NULL,
	[GiamGia] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[SoDh] ASC,
	[MaSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 4/14/2024 10:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[SoDh] [int] NOT NULL,
	[MaKh] [int] NULL,
	[TaiKhoan] [nvarchar](100) NULL,
	[NgayDat] [datetime] NULL,
	[DaKichHoat] [bit] NULL,
	[NgayGh] [datetime] NULL,
	[DiaChiGh] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[TrangThai] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[SoDh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/14/2024 10:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKh] [int] NOT NULL,
	[TenKh] [nvarchar](max) NULL,
	[SoDt] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[MaQh] [int] NULL,
	[DiemTichLuy] [decimal](18, 2) NULL,
	[TaiKhoan] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 4/14/2024 10:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoai] [int] NOT NULL,
	[LoaiHang] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomTk]    Script Date: 4/14/2024 10:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomTk](
	[MaNhom] [int] NOT NULL,
	[TenNhom] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanHuyen]    Script Date: 4/14/2024 10:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanHuyen](
	[MaQh] [int] NOT NULL,
	[TenQh] [nvarchar](max) NULL,
	[TinhThanh] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/14/2024 10:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSp] [int] NOT NULL,
	[TenSp] [nvarchar](max) NULL,
	[HinhDd] [nvarchar](max) NULL,
	[NdTomTat] [nvarchar](max) NULL,
	[NgayDang] [datetime] NULL,
	[TaiKhoan] [nvarchar](100) NULL,
	[DaDuyet] [bit] NULL,
	[GiaBan] [decimal](18, 2) NULL,
	[GiamGia] [decimal](18, 2) NULL,
	[MaLoai] [int] NULL,
	[NhaSanXuat] [nvarchar](max) NULL,
	[Dvt] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanTv]    Script Date: 4/14/2024 10:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanTv](
	[TaiKhoan] [nvarchar](100) NOT NULL,
	[HoDem] [nvarchar](max) NULL,
	[TenTv] [nvarchar](max) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[SoDt] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[TrangThai] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[MaNhom] [int] NULL,
	[MaQh] [int] NULL,
	[MaTV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChiTietSanPham]    Script Date: 4/14/2024 10:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietSanPham](
	[MaLoai] [int] NOT NULL,
	[MaSP] [int] NULL,
	[MaKichThuoc] [int] NULL,
	[MaMauSac] [int] NULL,
	[AnhDaiDien] [nvarchar](255) NULL,
	[Video] [nvarchar](255) NULL,
	[DonGiaBan] [decimal](10, 2) NULL,
	[GiamGia] [decimal](10, 2) NULL,
	[SLTon] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/14/2024 10:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[TaiKhoan] [nvarchar](100) NOT NULL,
	[MatKhau] [nvarchar](max) NULL,
	[LoaiUser] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[LoaiSP] ([MaLoai], [LoaiHang], [GhiChu]) VALUES (1, N'Sunglasses', N'anti sunlight')
GO
INSERT [dbo].[LoaiSP] ([MaLoai], [LoaiHang], [GhiChu]) VALUES (2, N'watch', N'to wear')
GO
INSERT [dbo].[LoaiSP] ([MaLoai], [LoaiHang], [GhiChu]) VALUES (3, N'HandBag', N'real safe')
GO
INSERT [dbo].[LoaiSP] ([MaLoai], [LoaiHang], [GhiChu]) VALUES (4, N'FRAGRANCES', N'smell wonderfull')
GO
INSERT [dbo].[LoaiSP] ([MaLoai], [LoaiHang], [GhiChu]) VALUES (5, N'Shoes', N'so clearn tho')
GO
INSERT [dbo].[LoaiSP] ([MaLoai], [LoaiHang], [GhiChu]) VALUES (6, N'Apparel', N'fashional')
GO
INSERT [dbo].[LoaiSP] ([MaLoai], [LoaiHang], [GhiChu]) VALUES (7, N'Accesories', N'no gf no problem')
GO
INSERT [dbo].[LoaiSP] ([MaLoai], [LoaiHang], [GhiChu]) VALUES (8, N'jewelry', N'gay')
GO
INSERT [dbo].[LoaiSP] ([MaLoai], [LoaiHang], [GhiChu]) VALUES (9, N'Luxury Pens', N'bussiness')
GO
INSERT [dbo].[NhomTk] ([MaNhom], [TenNhom], [GhiChu]) VALUES (1, N'admin', N'của nhân viên')
GO
INSERT [dbo].[NhomTk] ([MaNhom], [TenNhom], [GhiChu]) VALUES (2, N'customer', N'của khách hàng')
GO
INSERT [dbo].[QuanHuyen] ([MaQh], [TenQh], [TinhThanh], [GhiChu]) VALUES (101, N'Hải Châu', N'Đà Nẵng', N'Quận trung tâm của thành phố Đà Nẵng')
GO
INSERT [dbo].[QuanHuyen] ([MaQh], [TenQh], [TinhThanh], [GhiChu]) VALUES (102, N'Ba Đình', N'Hà Nội', N'Quận trung tâm của thành phố Hà Nội')
GO
INSERT [dbo].[QuanHuyen] ([MaQh], [TenQh], [TinhThanh], [GhiChu]) VALUES (103, N'Tân Bình', N'Hồ Chí Minh', N'Quận phát triển kinh tế của thành phố Hồ Chí Minh')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (1, N'SEIKO Essentials Quartz White Dial Unisex  watch', N'../LayoutLuxury/img/SeiKo/swr049.jpg', N'Yellow gold-tone stainless steel case with a black (croco-embossed) leather strap. Fixed yellow gold-tone stainless steel bezel. White dial with black hands and Roman numeral hour markers. Minute markers around an inner ring. Dial Type: Analog. Caliber 4N30 quartz movement. Scratch resistant Hardlex crystal.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), NULL, 1, CAST(129.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 1, N'Seiko Stainless Steel', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (2, N'SEIKO Quartz White Dial Black Leather Mens Watch Swr052', N'../LayoutLuxury/img/SeiKo/seiko-quartz-white-dial-black-leather-mens-watch-swr052.jpg', N'Silver-tone stainless steel case with a black leather strap. Fixed silver-tone stainless steel bezel. White dial with black hands and Roman numeral hour markers. Minute markers around an innwer ring.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(114.00 AS Decimal(18, 2)), CAST(42.00 AS Decimal(18, 2)), 1, N'Seiko Stainless Steel', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (3, N'GUCCI Grey Geometric Ladies Sunglasses', N'../LayoutLuxury/img/Sunglasses/Gucci/gucci-grey-geometric-ladies-sunglasses-gg0956s-003-54.jpg', N'Gucci Sunglasses. Series number: GG0956S. Color code: 003. Shape: Geometric. Lens Width: 54 mm. Lens Bridge: 19 mm. Arm Length: 145 mm. 100% UV protection. Frame Material: Acetate. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(229.99 AS Decimal(18, 2)), CAST(54.00 AS Decimal(18, 2)), 1, N' Gucci', N'Cặp')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (4, N'GUCCI Grey Butterfly Ladies Sunglasses', N'../LayoutLuxury/img/Sunglasses/Gucci/gucci-grey-butterfly-ladies-sunglasses-gg1254s-001-55.jpg', N'Gucci Sunglasses. Series number: GG1254S. Color code: 001. Shape: Butterfly. Lens Width: 55 mm. Lens Bridge: 22 mm. Arm Length: 140 mm. 100% UV protection. Frame Material: Acetate. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(254.99 AS Decimal(18, 2)), CAST(63.00 AS Decimal(18, 2)), 1, N' Gucci', N'Cặp')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (5, N'GUCCI Grey Gradient Pilot Unisex Sunglasses', N'../LayoutLuxury/img/Sunglasses/Gucci/gucci-grey-gradient-pilot-unisex-sunglasses-gg0062s-003-57_1.jpg', N'Gucci Sunglasses. Series number: GG0062S. Color code: 003. Size: 57. Shape: Pilot. Lens Width: 57 mm. Lens Bridge: 17 mm. Arm Length: 140 mm. 100% UV Protection. Non-Polarized. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(249.99 AS Decimal(18, 2)), CAST(52.00 AS Decimal(18, 2)), 1, N' Gucci', N'Cặp')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (6, N'GUCCI Grey Square Men Sunglasses', N'../LayoutLuxury/img/Sunglasses/Gucci/gucci-grey-square-mens-sunglasses-gg0010s-001-58.jpg', N'Gucci Sunglasses. Series number: GG0010S. Color code: 001. Size: 58. Shape: Square. Lens Width: 58 mm. Lens Bridge: 16 mm. Arm Length: 145 mm. 100% UV Protection. Non-Polarized.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(199.99 AS Decimal(18, 2)), CAST(54.00 AS Decimal(18, 2)), 1, N' Gucci', N'Cặp')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (7, N'FENDI Demo Cat Eye Ladies Sunglasses', N'../LayoutLuxury/img/Sunglasses/Fendi/fendi-demo-cat-eye-ladies-sunglasses-fe40014u-55f-54_1.jpg', N'Fendi Sunglasses. Series number: FE40014U. Color code: 55F. Shape: Cat Eye. Lens Width: 54 mm. Lens Bridge: 21 mm. Arm Length: 140 mm. 100% UV protection. Non-Polarized.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(159.99 AS Decimal(18, 2)), CAST(63.00 AS Decimal(18, 2)), 1, N' Fendi', N'Cặp')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (8, N'FENDI Gradient Blue Geometric Ladies Sunglasses', N'../LayoutLuxury/img/Sunglasses/Fendi/fendi-gradient-blue-geometric-ladies-sunglasses-fe40017i-01w-55_1.jpg', N'Fendi Sunglasses. Series number: FE40017I. Color code: 01W. Shape: Geometric. Lens Width: 55 mm. Lens Height: 52.7 mm. Lens Bridge: 19 mm. Arm Length: 145 mm. 100% UV protection. Frame Material: Acetate. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(162.49 AS Decimal(18, 2)), CAST(68.00 AS Decimal(18, 2)), 1, N' Fendi', N'Cặp')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (9, N'FENDI Smoke Gradient Pilot Men Sunglasses', N'../LayoutLuxury/img/Sunglasses/Fendi/fendi-smoke-gradient-pilot-mens-sunglasses-fe40003u-01b-54.jpg', N'Fendi Sunglasses. Series number: FE40003U. Color code: 01B. Shape: Pilot. Lens Width: 54 mm. Lens Bridge: 21 mm. Arm Length: 150 mm. 100% UV protection. Non-Polarized. Frame Material: Acetate. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(159.99 AS Decimal(18, 2)), CAST(63.00 AS Decimal(18, 2)), 1, N' Fendi', N'Cặp')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (10, N'CARRERA Polarized Grey Navigator Unisex Sunglasses', N'../LayoutLuxury/img/Sunglasses/Carrera/carrera-polarized-grey-navigator-unisex-sunglasses-cools-0csara-65-cools-0csara-65.jpg', N'Carrera Sunglasses. Series number: COOL/S. Color code: CSA/RA. Color: Grey. Shape: Navigator. Lens Width: 65 mm. Lens Bridge: 12 mm. Arm Length: 130 mm. 100% UV protection. Polarized. Frame Material: Plastic. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(29.99 AS Decimal(18, 2)), CAST(79.00 AS Decimal(18, 2)), 1, N' CARRERA', N'Cặp')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (11, N'CARRERA Gold Navigator Mens Sunglasses', N'../LayoutLuxury/img/Sunglasses/Carrera/carrera-gold-navigator-mens-sunglasses-carrera-1014s-0i46k1-64-carrera-1014s-0i46k1-64.jpg', N'Carrera Sunglasses. Series number: CARRERA 1014/S. Color code: 0I46/K1. Shape: Navigator. Lens Width: 64 mm. Lens Bridge: 10 mm. Arm Length: 135 mm. 100% UV protection. Non-Polarized. Frame Material: Plastic. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(49.99 AS Decimal(18, 2)), CAST(74.00 AS Decimal(18, 2)), 1, N' CARRERA', N'Cặp')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (12, N'OMEGA Seamaster Railmaster Automatic Chronometer Blue', N'../LayoutLuxury/img/Omega/omega-seamaster-railmaster-automatic-chronometer-blue-dial-mens-watch-22010402003001-22010402003001.jpg', N'Silver-tone stainless steel case and bracelet. Fixed silver-tone stainless steel bezel. Blue dial with silver-tone hands and index hour markers. Arabic numerals mark the 3, 6, 9 and 12 oclock positions.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(3.29 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), 2, N'Omega Calibre ', N'Chi?c')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (13, N'CARRERA Gold Navigator Mens Sunglasses', N'../LayoutLuxury/img/Sunglasses/Carrera/carrera-gold-navigator-mens-sunglasses-carrera-1014s-0i46k1-64-carrera-1014s-0i46k1-64.jpg', N'Carrera Sunglasses. Series number: CARRERA 1014/S. Color code: 0I46/K1. Shape: Navigator. Lens Width: 64 mm. Lens Bridge: 10 mm. Arm Length: 135 mm. 100% UV protection. Non-Polarized. Frame Material: Plastic. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(49.99 AS Decimal(18, 2)), CAST(74.00 AS Decimal(18, 2)), 1, N' CARRERA', N'Cặp')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (14, N'CREED Aventus / EDP Spray 3.3 oz (100 ml) (m)', N'../LayoutLuxury/img/Fragrances/Creed/creed-aventus-creed-edp-spray-33-oz-100-ml-m-3508441001114.jpg', N'Introducing Creed Aventus, a fascinating men fragrance that embodies strength, vision, and success. The scent, inspired by the multifaceted life of Emperor Napoleon - full of war, peace, and romance, is a testament to the masculine spirit. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(254.99 AS Decimal(18, 2)), CAST(48.00 AS Decimal(18, 2)), 4, N' CREED', N'lọ')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (15, N'CREED Green Irish Tweed / EDP Spray 3.3 oz (100 ml) (m)', N'../LayoutLuxury/img/Fragrances/Creed/creed-green-irish-tweed-creed-edp-spray-33-oz-100-ml-m-3508441001022.jpg', N'Immerse yourself in the scent of sophistication with our Green Irish Tweed fragrance for men from the prestigious design house of Creed. Launched in 1985, this classic scent has stood the test of time, just like a perfectly tailored suit. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(229.00 AS Decimal(18, 2)), CAST(51.00 AS Decimal(18, 2)), 4, N' CREED', N'lọ')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (16, N'CREED Silver Mountain / EDP Spray 3.3 oz (100 ml) (m)', N'../LayoutLuxury/img/Fragrances/Creed/creed-silver-mountain-creed-edp-spray-33-oz-100-ml-m-3508441001053.jpg', N'Experience the thrill of an exhilarating alpine adventure with Creeds Silver Mountain Water perfume. This mens fragrance, introduced in 1995 by the esteemed design house of Creed, encapsulates the refreshing and invigorating aura of the snow-capped Swiss Alps.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(214.99 AS Decimal(18, 2)), CAST(54.00 AS Decimal(18, 2)), 4, N' CREED', N'lọ')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (17, N'CREED Aventus Cologne / Cologne Spray 3.3 oz (100 ml)', N'../LayoutLuxury/img/Fragrances/Creed/creed-aventus-cologne-creed-cologne-spray-33-oz-100-ml-3508441001275_1.jpg', N'Step forth into the world with a bold and daring aura, thanks to the Creed Aventus Cologne. Launched in 2019 by the esteemed House of Creed, this fragrance is an innovative twist on their iconic Aventus scent.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(262.99 AS Decimal(18, 2)), CAST(47.00 AS Decimal(18, 2)), 4, N' CREED', N'lọ')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (18, N'Bond No 9 Greenwich Village For Women Eau De Parfum Spray 3.3 oz (100 ml)', N'../LayoutLuxury/img/Fragrances/Bond No.9/bond-no-9-greenwich-village-for-women-eau-de-parfum-spray-34-ounce-888874006584.jpg', N'Indulge your senses with Bond No.9s Greenwich Village, a captivating unisex fragrance. This enchanting scent, launched in 2019, is a delightful blend of sweet and earthy tones, making it a remarkable choice for any perfume aficionado.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(249.99 AS Decimal(18, 2)), CAST(46.00 AS Decimal(18, 2)), 4, N' BOND NO.9', N'lọ')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (19, N'BOND NO.9 Lafayette Street / EDP Spray 3.3 oz (100 ml) (m)', N'../LayoutLuxury/img/Fragrances/Bond No.9/lafayette-street-bond-no9-edp-spray-33-oz-100-ml-m-9lsmes33.jpg', N'Immerse yourself in the entrancing aura of Bond No.9s Lafayette Street fragrance. Unveiled in 2018 by the prestigious design house, this unisex scent represents a harmonious blend of modernity and tradition, making it perfect for people who appreciate a classic appeal with a contemporary twist.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(244.99 AS Decimal(18, 2)), CAST(46.00 AS Decimal(18, 2)), 4, N' BOND NO.9', N'lọ')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (20, N'BOND NO.9 Unisex Tribeca EDP 3.4 oz (100 ml)', N'../LayoutLuxury/img/Fragrances/Bond No.9/bond-no9-unisex-tribeca-edp-34-oz-fragrances-888874007123.jpg', N'Experience the captivating allure of Bond No.9s Tribeca, a sophisticated unisex perfume launched in 2020. With a size of 3.4 oz, this fragrance is a harmonious blend of unique notes that results in a scent which is as versatile as it is enchanting.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(212.99 AS Decimal(18, 2)), CAST(54.00 AS Decimal(18, 2)), 4, N' BOND NO.9', N'lọ')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (21, N'ROLEX Submariner "Starbucks" Automatic ', N'../LayoutLuxury/img/Rolex/rolex-submariner-kermit-automatic-chronometer-black-dial-mens-watch-126610lvbkso.jpg', N'Stainless steel case with a stainless steel bracelet. Uni-directional rotating stainless steel bezel with a green ceramic ring. Black dial with luminous silver-tone hands and index hour markers. Minute markers around the outer rim. Dial Type: Analog. Luminescent hands and markers. Date display at the 3 oclock position.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(16.35 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 2, N'Rolex Submariner', N'Chi?c')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (22, N'BOND NO.9 Unisex Nomad EDP 3.3 oz (100 ml)', N'../LayoutLuxury/img/Fragrances/Bond No.9/bond-no9-unisex-nomad-edp-33-oz-fragrances-888874007741.jpg', N'Introducing Bond No.9s Nomad, an enchanting fragrance that transcends gender boundaries, creating an olfactory experience that is truly unisex. Launched in the year 2021, this perfume is a work of art from the renowned design house of Bond No.9.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(179.99 AS Decimal(18, 2)), CAST(61.00 AS Decimal(18, 2)), 4, N' BOND NO.9', N'lọ')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (23, N'GIORGIO ARMANI Emporio Stronger With You Intensely ', N'../LayoutLuxury/img/Fragrances/Giorgio Armani/emporio-stronger-with-you-intensely-giorgio-armani-edp-spray-34-oz-100-ml-m-3614272225718.jpg', N'Experience the captivating allure of Giorgio Armani’s Emporio Armani Stronger With You Intensely, a striking mens fragrance that is both bold and unforgettable. Launched in 2019, this fragrance is a testament to modern masculinity, designed for the confident man who is not afraid to make a statement.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(124.99 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), 4, N' GIORGIO ARMANI', N'lọ')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (24, N'GIORGIO ARMANI Mens Acqua di Gio Profondo EDP Spray ', N'../LayoutLuxury/img/Fragrances/Giorgio Armani/giorgio-armani-mens-acqua-di-gio-profondo-edp-spray-42-oz-125-ml-3614272865235.jpg', N'Experience a deep dive into the aquatic depths with Giorgio Armanls Mens Acqua di Gio Profondo EDP Spray. Launched in 2020 by the renowned design house, this masculine fragrance is a refreshing blend of natural and marine notes, designed to evoke the profound nature of the sea. Its size of 4.2 oz makes it perfect for the man on the go, ensuring you never without a touch of sophistication.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(96.99 AS Decimal(18, 2)), CAST(39.00 AS Decimal(18, 2)), 4, N' GIORGIO ARMANI', N'lọ')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (25, N'GIORGIO ARMANI Mens Armani Code Parfum Spray ', N'../LayoutLuxury/img/Fragrances/Giorgio Armani/giorgio-armani-mens-acqua-di-gio-profondo-edp-spray-42-oz-125-ml-3614272865235.jpg', N'Experience the intense and captivating scent of Giorgio Armanis Armani Code Parfum for Men. Crafted with an intriguing blend of top notes featuring Bergamot and Bergamot leaf, this mens perfume is designed to leave a lasting impression.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(99.99 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 4, N' GIORGIO ARMANI', N'lọ')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (26, N'GIORGIO ARMANI Mens Acqua Di Gio Parfum ', N'../LayoutLuxury/img/Fragrances/Giorgio Armani/giorgio-armani-mens-acqua-di-gio-parfum-4-23-oz-fragrances-3614273907521.jpg', N'Introducing the exquisite Acqua Di Gio Parfum from the eminent design house of Giorgio Armani. Launched in 2023, this mens fragrance boasts a unique blend of notes that exude masculinity and sophistication. Its more than a perfume; its an olfactory statement of style and elegance.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(144.99 AS Decimal(18, 2)), CAST(27.00 AS Decimal(18, 2)), 4, N' GIORGIO ARMANI', N'lọ')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (27, N'LE SPORTSAC Ladies Hawaii Dreaming Travel ', N'../LayoutLuxury/img/HandBag/LeSportsac/le-sportsac-ladies-hawaii-dreaming-travel-cosmetic-case-7315k741.jpg', N'Le Sportsac Ladies Cosmetic Case. SKU: 7315-K741. Barcode: 191391119959. Color: Hawaii Dreaming. Size: 13.6 cm x 20.3 cm x 7.6 cm. or 5.35 x 5.24 x 5.39 inches Le Sportsac Ladies Hawaii Dreaming Travel Cosmetic Case.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(14.99 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'Le Sportsac', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (28, N'LE SPORTSAC Cruising Backpack ', N'../LayoutLuxury/img/HandBag/LeSportsac/le-sportsac-cruising-backpack-3358e194.jpg', N'Le Sportsac Unisex Backpack. SKU: 3358-E194. Barcode: 191391061968. Color: Multicolor 1. Le Sportsac Cruising Backpack. Le Sportsac backpack features a two-way zip main closure, 1 exterior front zip compartment, top handle, adjustable backpack strap.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(63.89 AS Decimal(18, 2)), CAST(36.00 AS Decimal(18, 2)), 3, N'Le Sportsac', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (29, N'LE SPORTSAC Flower Dreamcatcher Medium ', N'../LayoutLuxury/img/HandBag/LeSportsac/le-sportsac-flower-dreamcatcher-medium-two-zip-crossbody-bag-8076k892.jpg', N'Le Sportsac Ladies Crossbody. SKU: 8076-K892. Barcode: 191391182366. Color: Flower Dreamcatcher. Size: 12" x 7" x 3.5". Le Sportsac Flower Dreamcatcher Medium Two Zip Crossbody Bag. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(64.78 AS Decimal(18, 2)), CAST(48.00 AS Decimal(18, 2)), 3, N'Le Sportsac', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (30, N'LE SPORTSAC Ladies Pop Fizz Lily Wallet ', N'../LayoutLuxury/img/HandBag/LeSportsac/le-sportsac-ladies-pop-fizz-lily-wallet-6506f441.jpg', N'This wallet from Le Sportsac features a zip around closure, exterior front open pocket, full length bill compartment, 2 interior gusseted compartments seperated by a zip pocket, logo zipper pulls and 8 credit card slots. Dimensions: 4.25" x 7.5" x 0.75". ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(36.99 AS Decimal(18, 2)), CAST(63.00 AS Decimal(18, 2)), 3, N'Le Sportsac', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (31, N'VERSACE Ladies Baby Pink Leather La  ', N'../LayoutLuxury/img/HandBag/Versace/versace-ladies-baby-pink-leather-la-medusa-shoulder-bag-1003017dvit2t1p65v.jpg', N'This wallet from Le Sportsac features a zip around closure, exterior front open pocket, full length bill compartment, 2 interior gusseted compartments seperated by a zip pocket, logo zipper pulls and 8 credit card slots. Dimensions: 4.25" x 7.5" x 0.75". ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(1049.99 AS Decimal(18, 2)), CAST(33.00 AS Decimal(18, 2)), 3, N'VERSACE', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (32, N'VERSACE Repeat Mini Black Hobo', N'../LayoutLuxury/img/HandBag/Versace/versace-repeat-mini-black-hobo-bag-10098191a058781b00p.jpg', N'This wallet from Le Sportsac features a zip around closure, exterior front open pocket, full length bill compartment, 2 interior gusseted compartments seperated by a zip pocket, logo zipper pulls and 8 credit card slots. Dimensions: 4.25" x 7.5" x 0.75". ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(1220.00 AS Decimal(18, 2)), CAST(26.00 AS Decimal(18, 2)), 3, N'VERSACE', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (33, N'VERSACE Black Repeat Hobo', N'../LayoutLuxury/img/HandBag/Versace/versace-black-repeat-hobo-bag-10076791a058781b00p.jpg', N'Versace Ladies Shoulder Bag. SKU: 1007679-1A05878-1B00P. Color: Black. Size: L15.7" x 3" x H11" in; Strap: L31 5 in. Versace Black Repeat Hobo Bag. Black Hobo Repeat Shoulder Bag. Medusa Metal ElementsTop Handle. Adjustable and Removable Shoulder Strap. Top Zipper Closure with Double Straps. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(1860.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 3, N'VERSACE', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (34, N'STELLA MCCARTNEY Falabella Fold-Over Grey Ladies Tote', N'../LayoutLuxury/img/HandBag/Stella McCartney/stella-mccartney-falabella-foldover-grey-ladies-tote-234387w91321220.jpg', N'Metal chain shoulder strap-Two metal chain top handles-Metal chain edging-Concealed snap button closure-One internal zip pocket-Cotton jacquard logo lining-Silver coloured metal hardware-Made in Italy Stella McCartney Ladies Tote. Falabella Fold-Over series. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(649.99 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'STELLA MCCARTNEY', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (35, N'STELLA MCCARTNEY Mini Falabella Black Tote', N'../LayoutLuxury/img/HandBag/Stella McCartney/stella-mccartney-mini-falabella-black-tote-371223w91321000.jpg', N'Versace Ladies Shoulder Bag. SKU: 10071291PK3V. Color: Pink. Size: H: 20 x L 17 x W 4.5 cm. Versace Greca Goddess Small Shoulder Bag. Leather Small Shoulder Bag From Versace Featuring Metal Greca Elements, Leather and Metal Shoulder Strap, Magnetic Closure', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(649.99 AS Decimal(18, 2)), CAST(41.00 AS Decimal(18, 2)), 3, N'STELLA MCCARTNEY', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (36, N'STELLA MCCARTNEY Falabella Logo Black Ladies Backpack', N'../LayoutLuxury/img/HandBag/Stella McCartney/stella-mccartney-falabella-logo-black-ladies-backpack-570174w84991070.jpg', N'Zipped closure with double slider-High handle-Frontal pocket with contrasting logo lettering-Logo shoulder straps in fabric-Made in Italy Color: Black • Stella McCartney 2001. Backpack • Twin zipper closure, front pocket, adjustable strap, internal zipped pocket • Made in: Italy •', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(560.00 AS Decimal(18, 2)), CAST(27.00 AS Decimal(18, 2)), 3, N'STELLA MCCARTNEY', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (37, N'ADIDAS Superstar Ladies Cloud White/Grey', N'../LayoutLuxury/img/Shoes/Adidas/adidas-superstar-ladies-cloud-whitegrey-basketball-sneakers-fx6069.jpg', N'Adidas Ladies Sneakers. Superstar series. SKU: FX6069. Color: Cloud White / Grey. Adidas Superstar Ladies Cloud White/Grey Basketball Sneakers. Crafted from leather and features a signature three-stripe logo, branded heel counter, front lace-up fastening, perforated details, round toe and flat sole.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(74.99 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 5, N'ADIDAS', N'Đôi')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (38, N'ADIDAS Original Continental 80 Stripes Low-top Sneakers', N'../LayoutLuxury/img/Shoes/Adidas/adidas-original-continental-80-stripes-lowtop-sneakers-h02893.jpg', N'Adidas Mens Sneakers. SKU: H02893. Color: Cream White. Adidas Original Continental 80 Stripes Low-top Sneakers. A pair of Adidas Original low-top sneaker features a front lace-up closure, rubber outsole, EVA foam midsole, perforated details, branded insole and signature stripe details.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(74.98 AS Decimal(18, 2)), CAST(52.00 AS Decimal(18, 2)), 5, N'ADIDAS', N'Đôi')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (39, N'ADIDAS Superstar Mens Cloud White Low Top Sneakers', N'../LayoutLuxury/img/Shoes/Adidas/adidas-superstar-mens-cloud-white-low-top-sneakers-fx5534.jpg', N'Adidas Mens Sneakers. Superstar series. SKU: FX5534. Color: Cloud White. Shoe Style: Low Top. Vamp Style: Lace-up. Upper Material: Canvas. SoleMaterial: Rubber. Moulded sockliner. Adidas Superstar Mens Cloud White Low Top Sneakers.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(61.98 AS Decimal(18, 2)), CAST(44.00 AS Decimal(18, 2)), 5, N'ADIDAS', N'Đôi')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (40, N'AQUAZZURA Ladies Black Le Parisien Ballerina Shoes', N'../LayoutLuxury/img/Shoes/Aquazzura/aquazzura-ladies-black-le-parisien-ballerina-shoes-lepflaa0nkp000.jpg', N'Aquazzura Ladies Flats. SKU: LEPFLAA0-NKP-000. Color: Black. Aquazzura Ladies Black Le Parisien Ballerina Shoes.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(426.98 AS Decimal(18, 2)), CAST(41.00 AS Decimal(18, 2)), 5, N'AQUAZZURA', N'Đôi')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (41, N'AQUAZZURA Ladies Lavender 105 Zsa Zsa Sandals', N'../LayoutLuxury/img/Shoes/Aquazzura/aquazzura-ladies-lavender-105-zsa-zsa-sandals-zsahigp0nlplvdlavender.jpg', N'Aquazzura Ladies Sandals. SKU: ZSAHIGP0-NLP-LVD-LAVENDER. Color: Lavender. Shoe Style: Slip-On. Vamp Style: Tie Up. SoleMaterial: Leather. Aquazzura Ladies Lavender 105 Zsa Zsa Sandals.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(365.00 AS Decimal(18, 2)), CAST(63.00 AS Decimal(18, 2)), 5, N'AQUAZZURA', N'Đôi')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (42, N'AQUAZZURA Ladies Exotic Orchid Chain Of Love 105 Satin Sandals', N'../LayoutLuxury/img/Shoes/Aquazzura/aquazzura-ladies-exotic-orchid-chain-of-love-105-satin-sandals-clvhigs0satexo.jpg', N'Aquazzura Ladies Sandals. SKU: CLVHIGS0-SAT-EXO. Color: Exotic Orchid. Vamp Style: Slip-on. Upper Material: Satin. SoleMaterial: Leather. Aquazzura Ladies Exotic Orchid Chain Of Love 105 Satin Sandals. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(400.00 AS Decimal(18, 2)), CAST(58.00 AS Decimal(18, 2)), 5, N'AQUAZZURA', N'Đôi')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (43, N'AQUAZZURA Ladies Mango Chain Of Love Flat Sandals', N'../LayoutLuxury/img/Shoes/Aquazzura/aquazzura-ladies-mango-chain-of-love-flat-sandals-clvflas0satmng.jpg', N'Aquazzura Ladies Sandals. SKU: CLVFLAS0-SAT-MNG. Color: Mango. Shoe Style: Ankle Strap. Vamp Style: Slip-on. SoleMaterial: Leather. Aquazzura Ladies Mango Chain Of Love Flat Sandals.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(333.00 AS Decimal(18, 2)), CAST(58.00 AS Decimal(18, 2)), 5, N'AQUAZZURA', N'Đôi')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (44, N'BALLY Roller Embossed Low-Top Sneakers', N'../LayoutLuxury/img/Shoes/Bally/bally-roller-embossed-lowtop-sneakers-msk06j-vt166-i0i2.jpg', N'Bally Mens Sneakers. SKU: MSK06J VT166 I0I2. Color: Dusty White/Deep Ruby. Shoe Style: Low Top. Vamp Style: Lace-up. Upper Material: Leather. Lining Material: Leather. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(329.00 AS Decimal(18, 2)), CAST(52.00 AS Decimal(18, 2)), 5, N'BALLY', N'Đôi')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (45, N'BALLY Dusty White Mauro Leather Slip-On Sneakers', N'../LayoutLuxury/img/Shoes/Bally/bally-dusty-white-mauro-leather-slipon-sneakers-msk02y-ce002-u002.jpg', N'Bally Mens Sneakers. SKU: MSK02Y CE002 U002. Color: Dusty White 21. Shoe Style: Low Top. Vamp Style: Slip-on. Upper Material: Leather. SoleMaterial: Rubber. Bally Dusty White Mauro Leather Slip-On Sneakers. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(166.29 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), 5, N'BALLY', N'Đôi')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (46, N'BALLY White Medyn Leather Sneaker', N'../LayoutLuxury/img/Shoes/Bally/bally-white-medyn-leather-sneaker-msk02m-vt243-u001.jpg', N'Bally Mens Sneakers. SKU: MSK02M VT243 U001. Color: White. Shoe Style: Low Top. Vamp Style: Lace-up. Upper Material: Leather. SoleMaterial: Rubber. Bally White Medyn Leather Sneaker.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(299.00 AS Decimal(18, 2)), CAST(53.00 AS Decimal(18, 2)), 5, N'BALLY', N'Đôi')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (47, N'BALLY Black Medyn Leather Sneaker', N'../LayoutLuxury/img/Shoes/Bally/bally-black-medyn-leather-sneaker-msk02m-vt243-u901.jpg', N'Bally Mens Sneakers. SKU: MSK02M VT243 U901. Color: Black. Shoe Style: Low Top. Vamp Style: Lace-up. Upper Material: Leather. SoleMaterial: Rubber. Bally Black Medyn Leather Sneaker.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(204.12 AS Decimal(18, 2)), CAST(68.00 AS Decimal(18, 2)), 5, N'BALLY', N'Đôi')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (48, N'Submariner Automatic Chronometer', N'../LayoutLuxury/img/Rolex/rolex-submariner-automatic-chronometer-black-dial-mens-watch-126610lnbkso.jpg', N'Stainless steel case with a stainless steel bracelet. Uni-directional rotating stainless steel bezel with a black ceramic ring. Black dial with luminous silver-tone hands and dot hour markers. Minute markers around the outer rim. Dial Type: Analog. Luminescent hands and markers. Date display at the 3 clock position. Rolex calibre 3235 automatic movement, based upon Rolex 3035, containing 31 Jewels, bitting at 28800 vph, and has a power reserve of approximately 70 hours. Scratch resistant sapphire crystal. Screw down crow', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(14.35 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 2, N'Rolex Submariner', N'Chi?c')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (49, N'STELLA MCCARTNEY Falabella Flap Wallet', N'../LayoutLuxury/img/HandBag/Stella McCartney/stella-mccartney-falabella-flap-wallet-431000-w91321220_1.jpg', N'Stella McCartney Ladies Wallets. SKU: 431000 W9132-1220. Color: Light Grey. Stella Mccartney Falabella Flap Wallet. This grey mini Falabella flap wallet from Stella McCartney.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(198.99 AS Decimal(18, 2)), CAST(56.00 AS Decimal(18, 2)), 3, N'STELLA MCCARTNEY', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (50, N'BALENCIAGA Black Padded Crinkled Nylon Stole', N'../LayoutLuxury/img/Apparel/Balenciaga/balenciaga-black-padded-crinkled-nylon-stole-673588-4b1b5-0100_full-bleed.jpg', N'Balenciaga Unisex Apparel Accessories. Fashion category: Scarves. SKU: 673588 4B1B5 0100. Barcode: 3665743551621. Color: Black. Balenciaga Black Padded Crinkled Nylon Stole. Body: 100% polyamide. Fill: 100% polyester. Made in Italy.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(398.00 AS Decimal(18, 2)), CAST(38.00 AS Decimal(18, 2)), 6, N'BALENCIAGA', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (51, N'TUDOR Pelagos Chronometer Automatic Blue Dial', N'../LayoutLuxury/img/Tudor/tudor-pelagos-chronometer-automatic-blue-dial-mens-watch-m25600tb0001.jpg', N'Grey titanium case with a grey titanium bracelet. Uni-directional rotating titanium bezel with a ceramic top ring. Blue dial with luminous silver-tone hands and index hour markers. Minute markers around the outer rim. Dial Type: Analog. Luminescent hands and markers. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(5.03 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 2, N'Tudor Calibre', N'Chi?c')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (52, N'BALENCIAGA Paris Black Oversized Logo Cotton T-Shirt', N'../LayoutLuxury/img/Apparel/Balenciaga/balenciaga-paris-black-oversized-logo-cotton-tshirt-676589-tlvl7-0107_full-bleed.jpg', N'Balenciaga Unisex Tops. Fashion category: T-Shirts & Henleys. SKU: 676589 TLVL7 0107. Color: Black/White. Balenciaga Paris Black Oversized Logo Cotton T-Shirt. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(298.00 AS Decimal(18, 2)), CAST(57.00 AS Decimal(18, 2)), 6, N'BALENCIAGA', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (53, N'BALENCIAGA Slime Logo Double Long Sleeve Hooded T-Shirt', N'../LayoutLuxury/img/Apparel/Balenciaga/balenciaga-slime-logo-double-long-sleeve-hooded-tshirt-681029-tlvf1-0901_full-bleed.jpg', N'Balenciaga Mens Tops. Fashion category: T-Shirts & Henleys. SKU: 684155 TLVG3 3307. Color: Off White/Black. Balenciaga Off White Cotton No Comment Print T-Shirt. Made from 100% cotton, this t-shirt features a crew neckline, short sleeves, a straight hem, an oversized fit, raw cut edges and detailed with the words printed to the front reference the refusal to answer questions when being interviewed.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(155.80 AS Decimal(18, 2)), CAST(74.00 AS Decimal(18, 2)), 6, N'BALENCIAGA', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (54, N'BALENCIAGA Off White Cotton No Comment Print T-Shirt', N'../LayoutLuxury/img/Apparel/Balenciaga/balenciaga-off-white-cotton-no-comment-print-tshirt-684155-tlvg3-3307.jpg', N'Balenciaga Ladies Tops. Fashion category: T-Shirts & Henleys. SKU: 681029 TLVF1 0901. Color: White/Bubblegum W. Balenciaga Slime Logo Double Long Sleeve Hooded T-Shirt. Made from 100% cotton, this t-shirt features a fixed hood, double layer sleeves, a straight hem and front Balenciaga slime artwork printed at front.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(155.80 AS Decimal(18, 2)), CAST(74.00 AS Decimal(18, 2)), 6, N'BALENCIAGA', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (55, N'EMPORIO ARMANI White EA7 Logo Polo Shirt', N'../LayoutLuxury/img/Apparel/Emporio Armani/emporio-armani-white-ea7-logo-polo-shirt-3rpf03pjm9z1100_full-bleed.jpg', N'Emporio Armani Mens Tops. Fashion category: Polo Shirts. SKU: 3RPF03-PJM9Z-1100. Color: White. Emporio Armani White EA7 Logo Polo Shirt. Made from cotton, this polo features a front button placket, short sleeves, classic collar with stripe trim, a straight hem and logo embroidery on left chest.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(47.47 AS Decimal(18, 2)), CAST(67.00 AS Decimal(18, 2)), 6, N'EMPORIO ARMANI ', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (56, N'OMEGA Seamaster Railmaster Automatic', N'../LayoutLuxury/img/Omega/omega-seamaster-railmaster-automatic-mens-watch-22010402001001-22010402001001.jpg', N'Stainless steel case with a stainless steel bracelet. Fixed stainless steel bezel. Brushed black dial with luminous silver-tone hands and index hour markers. Arabic numerals mark the 3, 6, 9 and 12 oclock positions. Minute markers around the outer rim.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(5.70 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 2, N'Omega Calibre ', N'Chi?c')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (57, N'EMPORIO ARMANI Mens Grigio Paneled Zipped Padded Jacket', N'../LayoutLuxury/img/Apparel/Emporio Armani/emporio-armani-mens-grigio-paneled-zipped-padded-jacket-h31r15c1258631_full-bleed.jpg', N'Emporio Armani Mens Outerwear. Fashion category: Coats & Jackets. SKU: H31R15-C1258-631. Color: Grigio. Emporio Armani Mens Grigio Paneled Zipped Padded Jacket. A cotton jacket featuring a stand collar, front zip fastening, topstitching, jacquard stitching, and two slanted front pockets.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(480.00 AS Decimal(18, 2)), CAST(36.00 AS Decimal(18, 2)), 6, N'EMPORIO ARMANI ', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (58, N'EMPORIO ARMANI Verde Cotton Eagle Logo Embroidered T-Shirt', N'../LayoutLuxury/img/Apparel/Emporio Armani/emporio-armani-verde-cotton-eagle-logo-embroidered-tshirt-3r1tz31jsaz0594.jpg', N'Emporio Armani Mens Tops. Fashion category: T-Shirts & Henleys. SKU: 3R1TZ3-1JSAZ-0594. Color: Verde. Emporio Armani Verde Cotton Eagle Logo Embroidered T-Shirt. Made from 100% cotton, this t-shirt features a crew neck, short sleeves, a straight hem and decorated with the brands signature Eagle.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(62.56 AS Decimal(18, 2)), CAST(73.00 AS Decimal(18, 2)), 6, N'EMPORIO ARMANI ', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (59, N'EMPORIO ARMANI Grigio Prince Of Wales Eucalyptus Wool-Blend', N'../LayoutLuxury/img/Apparel/Emporio Armani/emporio-armani-grigio-prince-of-wales-eucalyptus-woolblend-jersey-hoodie-3r1b6p1j28z0616_full-bleed.jpg', N'Emporio Armani Mens Tops. Fashion category: Hoodies & Sweatshirts. SKU: 3R1B6P-1J28Z-0616. Color: Grigio. Emporio Armani Grigio Prince Of Wales Eucalyptus Wool-Blend Jersey Hoodie. Made from certified wool, featuring a practical drawstring hood and front pouch pocket. Texture with Prince of Wales pattern. 59% Virgin Wool, 41% Lyocell.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(234.02 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 6, N'EMPORIO ARMANI ', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (60, N'HUGO BOSS Mens Dark Blue Slim Stretch Polo Shirt', N'../LayoutLuxury/img/Apparel/Hugo Boss/hugo-boss-mens-dark-blue-slim-stretch-polo-shirt-50472169404_full-bleed.jpg', N'Hugo Boss Mens Tops. Fashion category: Shirts & Blouses. SKU: 50472169-404. Color: Dark Blue. Hugo Boss Mens Dark Blue Slim Stretch Polo Shirt. This polo shirt by Boss features a front button placket, short sleeves, a straight hem, classic collar.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(129.99 AS Decimal(18, 2)), CAST(77.00 AS Decimal(18, 2)), 6, N'HUGO BOSS', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (61, N'HUGO BOSS Mens Dark Blue Removable Gilet 2-In-1', N'../LayoutLuxury/img/Apparel/Hugo Boss/hugo-boss-mens-dark-blue-removable-gilet-2in1-waterrepellent-jacket-50476200404_full-bleed.jpg', N'Hugo Boss Mens Outerwear. Fashion category: Coats & Jackets. SKU: 50476200-404. Color: Dark Blue. Hugo Boss Mens Dark Blue Removable Gilet 2-In-1 Water-Repellent Jacket. This water-repellent jacket features a regular fit, long sleeves with adjustable cuffs, stand collar, zip closure, a removable zip-up inner with lightweight padding and detailed with BOSS logos at the left chest, underplacket and left sleeve.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(234.00 AS Decimal(18, 2)), CAST(57.00 AS Decimal(18, 2)), 6, N'HUGO BOSS', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (62, N'HUGO BOSS Mens Stretch Cotton Gabardine Regular-fit Chinos', N'../LayoutLuxury/img/Apparel/Hugo Boss/hugo-boss-mens-stretch-cotton-gabardine-regularfit-chinos-50325944-402_full-bleed.jpg', N'Hugo Boss Mens Bottoms. Fashion category: Pants & Leggings. SKU: 50325944 402. Color: Dark Blue. Hugo Boss Mens Stretch Cotton Gabardine Regular-fit Chinos. Crafted from finely woven stretch gabardine twill, this pants from Hugo Boss features a regular fit, button and zip fastening, flat front, regular rise', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(69.99 AS Decimal(18, 2)), CAST(63.00 AS Decimal(18, 2)), 6, N'HUGO BOSS', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (63, N'HUGO BOSS Mens Dark Blue Carsen Logo Embroidered Jacket', N'../LayoutLuxury/img/Apparel/Hugo Boss/hugo-boss-mens-dark-blue-carsen-logo-embroidered-jacket-50468678404_full-bleed.jpg', N'Hugo Boss Mens Outerwear. Fashion category: Coats & Jackets. Carsen series. SKU: 50468678-404. Color: Dark Blue. Hugo Boss Mens Dark Blue Carsen Logo Embroidered Jacket. Made from partially recycled material, this sporty jacket features a detachable hood with adjustable drawcord, zip-up front fastening, elasticated hem', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(199.88 AS Decimal(18, 2)), CAST(55.00 AS Decimal(18, 2)), 6, N'HUGO BOSS', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (64, N'MONTBLANC Reversible Leather Belt', N'../LayoutLuxury/img/Accesories/montblanc-reversible-leather-belt-blackbrown-size-47-116579.jpg', N'A Montblanc reversible belt crafted in calfskin leather, featuring a rectangular stainless steel buckle. Length: 47" Thickness: 1".', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(178.00 AS Decimal(18, 2)), CAST(51.00 AS Decimal(18, 2)), 7, N'MONTBLANC', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (65, N'MONTBLANC Reversible Black/Brown Leather Belt', N'../LayoutLuxury/img/Accesories/montblanc-reversible-blackbrown-leather-belt-128135.jpg', N'A Montblanc belt crafted in smooth black leather, featuring a palladium-coated horseshoe buckle displaying the iconic Montblanc emblem on the keep. This belt is reversible with the other side revealing smooth brown leather. Length: 47 inches. Approximately 1" wide. This belt can be adjusted for the waist size .', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(198.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 7, N'MONTBLANC', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (66, N'MONTBLANC Black Leather Belt- Black, Brand Size 47', N'../LayoutLuxury/img/Accesories/montblanc-black-leather-belt-black116706-brand-size-47.jpg', N'A Montblanc belt styled in black westside leather, featuring a trapeze PVD Ruthenium-coated pin buckle. Length: 47" Thickness: 1".', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(178.00 AS Decimal(18, 2)), CAST(51.00 AS Decimal(18, 2)), 7, N'MONTBLANC', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (67, N'SALVATORE FERRAGAMO Reversible and Adjustable Gancini Belt', N'../LayoutLuxury/img/Accesories/salvatore-ferragamo-reversible-and-adjustable-gancini-belt-23a564-755927.jpg', N'Salvatore Ferragamo Ladies Belts. Fashion category: Belts. SKU: 23A564 755927. Color: Ematite. Salvatore Ferragamo Reversible and Adjustable Gancini Belt. Calfskin leather, this belt featuring an adjustable length, a reversible design, 1.3" height, Gancini buckle and a gold-toned hardware. Made in Italy.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(329.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 7, N'SALVATORE FERRAGAMO', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (68, N'TOM FORD Soft Grain Leather Icon T Reversible Belt', N'../LayoutLuxury/img/Accesories/tom-ford-soft-grain-leather-icon-t-reversible-belt-tb178lcl236s3ln01.jpg', N'Tom Ford Mens Belts. Fashion category: Belts. SKU: TB178LCL236S3LN01. Color: Dark Navy/Black. Tom Ford Soft Grain Leather Icon T Reversible Belt. Made from soft grained leather, this belt by Tom Ford features an adjustable fit', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(549.99 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 7, N'TOM FORD', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (69, N'BURBERRY Reversible Check Cashmere Scarf', N'../LayoutLuxury/img/Accesories/burberry-reversible-check-cashmere-scarf-8046296_full-bleed.jpg', N'Burberry Scarves. SKU: 8046296. Color: Charcoal. Burberry Reversible Check Cashmere Scarf. Burberrys classic cashmere scarf is a timeless piece that transcends seasons. This cashmere scarf is constructed in a charcoal grey hue and displays a timeless check pattern to one side. 100% Cashmere. Made in United Kingdom.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(436.05 AS Decimal(18, 2)), CAST(47.00 AS Decimal(18, 2)), 7, N'BURBERRY', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (70, N'BURBERRY Giant Gauze Check Wool And Silk Blend Scarf', N'../LayoutLuxury/img/Accesories/burberry-giant-gauze-check-wool-and-silk-blend-scarf-8078781.jpg', N'Burberry Scarves. Fashion category: Scarves. SKU: 8078781. Material: Silk;Wool. Color: Pale Candy Pink. Burberry Giant Gauze Check Wool And Silk Blend Scarf. Pale Candy pink wool-silk blend semi-sheer construction plaid check pattern logo patch to the side frayed edge wraparound style. 51% Wool, 49% Mulberry Silk. Made in Italy.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(319.99 AS Decimal(18, 2)), CAST(29.00 AS Decimal(18, 2)), 7, N'BURBERRY', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (71, N'BALENCIAGA Black Leather Roller Large Double Buckle Belt', N'../LayoutLuxury/img/Accesories/balenciaga-black-leather-roller-large-double-buckle-belt-659303-1ch04-1000.jpg', N'Balenciaga Mens Belts. Fashion category: Belts. SKU: 659303 1CH04 1000. Color: Black. Balenciaga Black Leather Roller Large Double Buckle Belt. Roller Large Double Buckle Belt in black natural calfskin, featuring Balenciaga logo engraved on buckle, rectangle hardware, tone-on-tone leather loop. 1.5 W.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(198.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 7, N'BURBERRY', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (72, N'BURBERRY Lynton Reversible Double-strap Leather Belt', N'../LayoutLuxury/img/Accesories/burberry-lynton-reversible-doublestrap-leather-belt-4071725.jpg', N'Burberry Ladies Apparel Accessories. Fashion category: Belts. Superstar series. SKU: 4071725. Color: Tan/Bright Larch Yellow. Burberry Lynton Reversible Double-strap Leather Belt. Crafted from grained leather and features square buckle, dual prong closure, wide cut and adjustable sizing.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(299.99 AS Decimal(18, 2)), CAST(51.00 AS Decimal(18, 2)), 7, N'BURBERRY', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (73, N'BURBERRY Archive Beige Check Woven Baseball Cap', N'../LayoutLuxury/img/Accesories/burberry-archive-beige-check-woven-baseball-cap-8075641_1.jpg', N'Burberry Hats. Fashion category: Hats. SKU: 8075641. Color: Archive Beige. Burberry Archive Beige Check Woven Baseball Cap. An Italian-crafted baseball cap featuring Burberry Check woven cotton twill. It comes with an adjustable press-stud closure. 100% cotton. Made in Italy.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(295.00 AS Decimal(18, 2)), CAST(34.00 AS Decimal(18, 2)), 7, N'BURBERRY', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (74, N'BURBERRY Archive Beige Half Mega Check Fringed Cashmere Scarf', N'../LayoutLuxury/img/Accesories/burberry-archive-beige-half-mega-check-fringed-cashmere-scarf-8078441_full-bleed.jpg', N'Burberry Unisex Scarves. Fashion category: Scarves. SKU: 8078441. Color: Archive Beige. Size: 250 x 70 cm. Burberry Archive Beige Half Mega Check Fringed Cashmere Scarf. Mega Check print and fringed edges. 100% Cashmere. Made in United Kingdom.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(589.99 AS Decimal(18, 2)), CAST(29.00 AS Decimal(18, 2)), 7, N'BURBERRY', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (75, N'BURBERRY Archive Beige Half Mega Check Fringed Cashmere Scarf', N'../LayoutLuxury/img/Accesories/burberry-archive-beige-half-mega-check-fringed-cashmere-scarf-8078441_full-bleed.jpg', N'Burberry Unisex Scarves. Fashion category: Scarves. SKU: 8078441. Color: Archive Beige. Size: 250 x 70 cm. Burberry Archive Beige Half Mega Check Fringed Cashmere Scarf. Mega Check print and fringed edges. 100% Cashmere. Made in United Kingdom.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(589.99 AS Decimal(18, 2)), CAST(29.00 AS Decimal(18, 2)), 7, N'BURBERRY', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (76, N'BVLGARI Fiorever 18k Rose Gold Diamond Ring', N'../LayoutLuxury/img/Jewelry/bvlgari-fiorever-18k-rose-gold-diamond-ring-an858504.jpg', N'Bvlgari Rings. Fiorever series. SKU: AN858504. Metal Type: Rose Gold. Metal Stamp: 18k. Gem stone type: Diamond. Bvlgari Fiorever 18k Rose Gold Diamond Ring. This Bvlgari ring is crafted in 18k rose gold with Pave diamonds and a central diamond shaped into a flower. Made in Italy.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(3895.00 AS Decimal(18, 2)), CAST(54.00 AS Decimal(18, 2)), 8, N'BVLGARI', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (77, N'BRILLIANT DIAMOND 1/2 Carat, 14K White Gold 4', N'../LayoutLuxury/img/Jewelry/brilliant-diamond-12-carat-14k-white-gold-4-prong-set-roundcut-lab-grown-diamond-solitaire-stud-pendant-necklace-j-vssi-penrd050.jpg', N'A classic beauty, this diamond pendant complements your timeless love. Crafted in 14K white gold, this sparkling style showcases a 0.50 cttw. lab grown diamond solitaire in a four-prong setting. Polished to a bright shine, this pendant suspends along an 18.0-inch(45.72 cm) box chain. Weight 1.10g.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(214.99 AS Decimal(18, 2)), CAST(71.00 AS Decimal(18, 2)), 8, N'BRILLIANT DIAMOND', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (78, N'TUDOR Black Bay Automatic Chronometer Black Dial', N'../LayoutLuxury/img/Tudor/tudor-black-bay-automatic-chronometer-black-dial-mens-watch-m7941a1a0ru0003.jpg', N'Silver-tone stainless steel case and bracelet. Uni-directional rotating red stainless steel bezel. Black dial with gold-tone hands and index hour markers. Minute markers around the outer rim. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(4.55 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 2, N'Tudor Calibre', N'Chi?c')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (79, N'GUCCI Silver Engraved Heart Motif Trademark Bracelet', N'../LayoutLuxury/img/Jewelry/gucci-silver-engraved-heart-motif-trademark-bracelet-yba2235130010_1.jpg', N'Gucci Ladies Bracelets. SKU: YBA223513001. Color: Silver-tone. Metal Type: Sterling Silver. Metal Stamp: 925-Sterling. Gem stone type: None. Bracelet style: 1 Band. Heart bracelet with Gucci trademark. Gucci Silver Engraved Heart Motif Trademark Bracelet. This sterling silver bracelet features a finely-linked chain and a lobster clasp fastening.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(169.97 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 8, N'GUCCI', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (80, N'GUCCI Ladies 925-Sterling Silver Double G Key Bracelet', N'../LayoutLuxury/img/Jewelry/gucci-ladies-925sterling-silver-double-g-key-bracelet-yba6322070010.jpg', N'Gucci Ladies Bracelets. SKU: YBA6322070010. Color: Silver. Metal Type: Sterling Silver. Metal Stamp: 925-Sterling. Gucci Ladies 925-Sterling Silver Double G Key Bracelet. The Gucci bracelet is made from 925 Sterling silver with aged finish, a clasp closure, Double G key with arabesque engraving. Made in Italy.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(205.00 AS Decimal(18, 2)), CAST(32.00 AS Decimal(18, 2)), 8, N'GUCCI', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (81, N'MONTBLANC Reversible Leather Belt Saffiano-printed Black/Brown', N'../LayoutLuxury/img/Accesories/montblanc-reversible-leather-belt-saffianoprinted-blackbrown-cuttosize-113834.jpg', N'A Montblanc reversible leather belt crafted in black and brown saffiano leather, featuring a stainless steel horseshoe pin buckle. Dimensions: 47" x 1.1" (3 cm x 120 cm).', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(198.99 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 7, N'MONTBLANC', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (82, N'BRILLIANT DIAMOND 14K White Gold 2 CTTW Oval-Cut LAB GROWN ', N'../LayoutLuxury/img/Jewelry/brilliant-diamond-14k-white-gold-2-cttw-ovalcut-lab-grown-diamond-seven-stone-anniversary-band-fg-si1-lgdtxr03983w.jpg', N'Oval it is. The most popular shape of the year has landed itself in this sensational wedding band, making it one of our best sellers. Why should you be left out? Brilliant Diamond Ladies Rings. Anniversary Band series. SKU: LGD-TXR03983-W. Color: White.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(1284.99 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 8, N'BRILLIANT DIAMOND', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (83, N'GUCCI Silver interlocking G earrings', N'../LayoutLuxury/img/Jewelry/gucci-silver-interlocking-g-earrings-ybd356289001.jpg', N'Gucci Ladies Earrings. SKU: YBD356289001. Color: Silver-tone. Metal Type: Sterling Silver. Metal Stamp: 925-Sterling. Gem stone type: None. Earrings style: 1 Band. Gucci Silver interlocking G earrings.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(235.00 AS Decimal(18, 2)), CAST(16.00 AS Decimal(18, 2)), 8, N'GUCCI', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (84, N'GUCCI Ladies 925-Sterling Silver Double G Key Bracelet', N'../LayoutLuxury/img/Jewelry/gucci-ladies-925sterling-silver-double-g-key-bracelet-yba6322070010.jpg', N'Gucci Ladies Bracelets. SKU: YBA6322070010. Color: Silver. Metal Type: Sterling Silver. Metal Stamp: 925-Sterling. Gucci Ladies 925-Sterling Silver Double G Key Bracelet. The Gucci bracelet is made from 925 Sterling silver with aged finish, a clasp closure, Double G key with arabesque engraving. Made in Italy.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(205.00 AS Decimal(18, 2)), CAST(28.00 AS Decimal(18, 2)), 8, N'GUCCI', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (85, N'GUCCI Engraved Interlocking G Earrings', N'../LayoutLuxury/img/Jewelry/gucci-engraved-interlocking-g-earrings-ybd457109001.jpg', N'Gucci Ladies Earrings. SKU: YBD457109001. Color: Silver-tone. Metal Type: Sterling Silver. Metal Stamp: 925-Sterling. Earrings style: 1 Band. Gucci Engraved Interlocking G Earrings.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(235.00 AS Decimal(18, 2)), CAST(16.00 AS Decimal(18, 2)), 8, N'GUCCI', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (86, N'GUCCI Heart earrings with trademark in Sterling Silver', N'../LayoutLuxury/img/Jewelry/heart-earrings-with-gucci-trademark-in-sterling-silver-ybd223990001.jpg', N'Gucci Ladies Earrings. SKU: YBD223990001. Color: Silver-tone. Metal Type: Sterling Silver. Metal Stamp: 925-Sterling. Gem stone type: None. Earrings style: 1 Band. Heart earrings with Gucci trademark in Sterling Silver. Made in Italy.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(220.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), 8, N'GUCCI', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (87, N'GUCCI Running GG Diagonal Motif Earrings', N'../LayoutLuxury/img/Jewelry/gucci-running-gg-diagonal-motif-earrings-18-karat-yellow-gold-ybd652219001_1.jpg', N'Gucci Ladies Earrings. SKU: YBD652219001. Color: Yellow. Metal Type: Yellow Gold. Metal Stamp: 18k. Gem stone type: None. Earrings style: 1 Band. Gucci Running GG Diagonal Motif Earrings, 18 Karat Yellow Gold.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(655.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(18, 2)), 8, N'GUCCI', N'Chiếc')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (88, N'MONTBLANC M Ballpoint Pen by Marc Newson', N'../LayoutLuxury/img/Luxury Pens/montblanc-m-ballpoint-pen-by-marc-newson-113620.jpg', N'A Montblanc ballpoint pen designed by Marc Newson. This pen is crafted in black precious resin with a platinum-plated clip. It features a cap with a magnetic closure, which allows for the cap to be in perfect alignment with the barrel. Refills (not included): Mystery Black, Pacific Blue, Nightfire Red, Fortune Green, Amethyst Purple, Barbados Blue, India Orange.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(298.00 AS Decimal(18, 2)), CAST(46.00 AS Decimal(18, 2)), 9, N'MONTBLANC', N'Cây')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (89, N'MONTBLANC Great Characters The Beatles Special', N'../LayoutLuxury/img/Luxury Pens/montblanc-great-characters-the-beatles-special-edition-ballpoint-pen---116258.jpg', N'A Montblanc ballpoint pen from the Great Characters collection. This Special Edition fountain pen pays hommage to the Beatles. It is crafted in a colored lacquer cap and barrel featuring a ruthenium-coated clip.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(565.00 AS Decimal(18, 2)), CAST(41.00 AS Decimal(18, 2)), 9, N'MONTBLANC', N'Cây')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (90, N'MONTBLANC Platinum Finish Meisterstuck Classique Luxury', N'../LayoutLuxury/img/Luxury Pens/montblanc-platinum-finish-meisterstuck-classique-luxury-ballpoint-pen-164-2866.jpg', N'Ballpoint Pen with twist mechanism writing system. Jet-black precious resin. Inlaid with Montblanc white star. Three platinum rings with embossed logo. Platinum clip. Dimensions: 0.403 inches (width).', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(395.00 AS Decimal(18, 2)), CAST(16.00 AS Decimal(18, 2)), 9, N'MONTBLANC', N'Cây')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (91, N'MONTBLANC Meisterstuck Platinum Finish Classic Luxury', N'../LayoutLuxury/img/Luxury Pens/montblanc-meisterstuck-platinum-finish-classic-luxury-rollerball-pen-163-2865.jpg', N'Montblanc Meisterstock 163 marathon rollerball with stainless steel tip. Barrel & cap constructed of Jet-black precious resin inlaid with Montblanc white star. Three platinised rings with embossed logo. Platinised clip with individual serial number.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(429.00 AS Decimal(18, 2)), CAST(21.00 AS Decimal(18, 2)), 9, N'MONTBLANC', N'Cây')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (92, N'MONTBLANC StarWalker Resin Ballpoint Pen', N'../LayoutLuxury/img/Luxury Pens/montblanc-starwalker-resin-ballpoint-pen-118848.jpg', N'Montblanc StarWalker ballpoint pen in black precious resin barrel, platinum-coated clip and a blue translucent dome.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(324.99 AS Decimal(18, 2)), CAST(19.00 AS Decimal(18, 2)), 9, N'MONTBLANC', N'Cây')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (93, N'MONTBLANC Meisterstuck Classique Fountain Pen', N'../LayoutLuxury/img/Luxury Pens/montblanc-meisterstuck-classique-fountain-pen-106514.jpg', N'This authentic Montblanc Meisterstuck fountain pen is made of black precious resin with gold-plated details, a 14 kt gold nib, and the Montblanc floating star emblem. ', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(494.99 AS Decimal(18, 2)), CAST(27.00 AS Decimal(18, 2)), 9, N'MONTBLANC', N'Cây')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (94, N'VISCONTI Michelangelo Blue Ballpoint Pen', N'../LayoutLuxury/img/Luxury Pens/visconti-michelangelo-blue-ballpoint-pen-29720pd.jpg', N'The Visconti Michelangelo ballpoint pen is a twist action ballpoint pen and has a spring loaded clip. The pen is an 18 faceted design in the cap and barrel that keeps the pen from rolling away when set on the desk or table.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(74.00 AS Decimal(18, 2)), CAST(78.00 AS Decimal(18, 2)), 9, N'VISCONTI ', N'Cây')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (95, N'VISCONTI Venus White Ballpoint Pen', N'../LayoutLuxury/img/Luxury Pens/visconti-venus-white-ballpoint-pen-78600.jpg', N'The Venus Collection is a tribute to Botticellis artwork from the Renaissance.The colours of the pens are inspired by the world famous painting made by the old master.The pens are decorated with a metal ring which is beautifully engraved in the style of the Renaissance.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(84.99 AS Decimal(18, 2)), CAST(74.00 AS Decimal(18, 2)), 9, N'VISCONTI ', N'Cây')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (96, N'MONTBLANC Heritage Unisex Ballpoint Pen', N'../LayoutLuxury/img/Luxury Pens/montblanc-heritage-rouge-et-noir-spider-metamorphosis-special-edition-coral-ballpoint-pen-118234.jpg', N'Montblanc Heritage Rouge et Noir Spider Metamorphosis Special Edition ballpoint pen crafted in coral-colored precious resin cap and barrel, featuring a champagne-tone gold-coated spider clip with synthetic stones.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(429.00 AS Decimal(18, 2)), CAST(49.00 AS Decimal(18, 2)), 9, N'MONTBLANC', N'Cây')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (98, N'VISCONTI Dark Blue Medium Nib Fountain Pen', N'../LayoutLuxury/img/Luxury Pens/visconti-michelangelo-blue-medium-nib-fountain-pen-29418a66mp.jpg', N'Visconti was inspired by ancient Greece for the creation of the Michelangelo collection, this line has an extremely elegant and very complex shape, and represents a must-have of fountain pen art.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(429.00 AS Decimal(18, 2)), CAST(49.00 AS Decimal(18, 2)), 9, N'VISCONTI', N'Cây')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (99, N'VISCONTI Venus White Medium Nib Fountain Pen', N'../LayoutLuxury/img/Luxury Pens/visconti-venus-white-medium-nib-fountain-pen-78300ga66mp.jpg', N'The Venus Collection is a tribute to Botticellis artwork from the Renaissance.The colours of the pens are inspired by the world famous painting made by the old master.The pens are decorated with a metal ring which is beautifully engraved in the style of the Renaissance.', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(74.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 9, N'VISCONTI', N'Cây')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (100, N'KAWECO Perkeo Light Spring and Indian Summer', N'../LayoutLuxury/img/Luxury Pens/kaweco-perkeo-light-spring-and-indian-summer-fountain-pens-4-pack-bundle-1000131213-1000182122.jpg', N'The Kaweco Perkeo Light Spring and Indian Summer Fountain Pens 4 Pack Bundle includes four pens from the Perkeo series: Kaweco Perkeo Light Spring Fountain Pen with a Fine Nib (10001821) Kaweco Perkeo Light Spring Fountain Pen with a Medium Nib .', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'admin', 1, CAST(25.98 AS Decimal(18, 2)), CAST(68.00 AS Decimal(18, 2)), 9, N'KAWECO', N'Cây')
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [HinhDd], [NdTomTat], [NgayDang], [TaiKhoan], [DaDuyet], [GiaBan], [GiamGia], [MaLoai], [NhaSanXuat], [Dvt]) VALUES (544, N'fsdfsdf', NULL, N'nhu con cac', CAST(N'2024-04-28T09:48:00.000' AS DateTime), NULL, 1, CAST(12333333.00 AS Decimal(18, 2)), CAST(80000000000.00 AS Decimal(18, 2)), NULL, N'khong biet', N'asdnisdajsdnf')
GO
INSERT [dbo].[TaiKhoanTv] ([TaiKhoan], [HoDem], [TenTv], [NgaySinh], [GioiTinh], [SoDt], [Email], [DiaChi], [TrangThai], [GhiChu], [MaNhom], [MaQh], [MaTV]) VALUES (N'admin', N'Nguyen Cong', N'Quy', CAST(N'2003-04-24' AS Date), N'Nam', N'0962510048', N'congquynguyen@gmail.com', N'46/29/23', N'1', N'boss', 1, 101, 1)
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_LoaiSP] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_BaiViet_LoaiSP]
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_TaiKhoanTv] FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[TaiKhoanTv] ([TaiKhoan])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_BaiViet_TaiKhoanTv]
GO
ALTER TABLE [dbo].[ctDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ctDonHang_DonHang] FOREIGN KEY([SoDh])
REFERENCES [dbo].[DonHang] ([SoDh])
GO
ALTER TABLE [dbo].[ctDonHang] CHECK CONSTRAINT [FK_ctDonHang_DonHang]
GO
ALTER TABLE [dbo].[ctDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ctDonHang_SanPham] FOREIGN KEY([MaSp])
REFERENCES [dbo].[SanPham] ([MaSp])
GO
ALTER TABLE [dbo].[ctDonHang] CHECK CONSTRAINT [FK_ctDonHang_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKh])
REFERENCES [dbo].[KhachHang] ([MaKh])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_TaiKhoanTv] FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[TaiKhoanTv] ([TaiKhoan])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_TaiKhoanTv]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_QuanHuyen] FOREIGN KEY([MaQh])
REFERENCES [dbo].[QuanHuyen] ([MaQh])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_QuanHuyen]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_TaiKhoanTv] FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[TaiKhoanTv] ([TaiKhoan])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_TaiKhoanTv]
GO
ALTER TABLE [dbo].[TaiKhoanTv]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoanTv_NhomTk] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NhomTk] ([MaNhom])
GO
ALTER TABLE [dbo].[TaiKhoanTv] CHECK CONSTRAINT [FK_TaiKhoanTv_NhomTk]
GO
ALTER TABLE [dbo].[TaiKhoanTv]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoanTv_QuanHuyen] FOREIGN KEY([MaQh])
REFERENCES [dbo].[QuanHuyen] ([MaQh])
GO
ALTER TABLE [dbo].[TaiKhoanTv] CHECK CONSTRAINT [FK_TaiKhoanTv_QuanHuyen]
GO
ALTER TABLE [dbo].[tChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietSanPham_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSp])
GO
ALTER TABLE [dbo].[tChiTietSanPham] CHECK CONSTRAINT [FK_tChiTietSanPham_SanPham]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_TaiKhoanTv] FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[TaiKhoanTv] ([TaiKhoan])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_TaiKhoanTv]
GO
USE [master]
GO
ALTER DATABASE [LuxuryWeb] SET  READ_WRITE 
GO
