USE [master]
GO
/****** Object:  Database [QUANAOSTORE]    Script Date: 4/5/2022 9:10:21 PM ******/
CREATE DATABASE [QUANAOSTORE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUANAOSTORE', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QUANAOSTORE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QUANAOSTORE_log', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QUANAOSTORE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QUANAOSTORE] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANAOSTORE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANAOSTORE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANAOSTORE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANAOSTORE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANAOSTORE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANAOSTORE] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANAOSTORE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QUANAOSTORE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANAOSTORE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANAOSTORE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANAOSTORE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANAOSTORE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANAOSTORE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANAOSTORE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANAOSTORE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANAOSTORE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QUANAOSTORE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANAOSTORE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANAOSTORE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANAOSTORE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANAOSTORE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANAOSTORE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANAOSTORE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANAOSTORE] SET RECOVERY FULL 
GO
ALTER DATABASE [QUANAOSTORE] SET  MULTI_USER 
GO
ALTER DATABASE [QUANAOSTORE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANAOSTORE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANAOSTORE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANAOSTORE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QUANAOSTORE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QUANAOSTORE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QUANAOSTORE', N'ON'
GO
ALTER DATABASE [QUANAOSTORE] SET QUERY_STORE = OFF
GO
USE [QUANAOSTORE]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[SDT] [nvarchar](12) NULL,
	[TaiKhoan] [varchar](20) NULL,
	[MatKhau] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BangPhieuNhap]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangPhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[Daxoa] [bit] NOT NULL,
 CONSTRAINT [PK_BangPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BangSanPham]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangSanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[Dongia] [money] NOT NULL,
	[NgapCapNhat] [datetime] NULL,
	[MoTa] [nvarchar](max) NULL,
	[LuotXem] [int] NULL,
	[LuotBinhChon] [int] NULL,
	[LuotBInhLuan] [int] NULL,
	[SoLanMua] [int] NULL,
	[GiamGia] [float] NULL,
	[MaLoai] [int] NOT NULL,
	[DaXoa] [bit] NULL,
	[Anh1] [nvarchar](50) NULL,
	[Anh2] [nvarchar](50) NULL,
	[Anh3] [nvarchar](50) NULL,
	[Anh4] [nvarchar](200) NULL,
	[Anh5] [nvarchar](200) NULL,
	[MaNCC] [int] NULL,
	[MaNSX] [int] NULL,
 CONSTRAINT [PK_BangSanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTDonDatHang]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDonDatHang](
	[MaCTDDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[TenSP] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [money] NULL,
	[BinhChon] [int] NULL,
	[MaSP] [int] NULL,
	[MaCTSP] [int] NULL,
 CONSTRAINT [PK_CTDonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaCTDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPhieuNhap]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuNhap](
	[MaCTPN] [varchar](50) NOT NULL,
	[MaSP] [int] NOT NULL,
	[DonGiaNhap] [money] NULL,
	[SoLuongNhap] [int] NULL,
 CONSTRAINT [PK_CTPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaCTPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTSanPham]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTSanPham](
	[MaCT] [int] IDENTITY(1,1) NOT NULL,
	[KichThuoc] [nvarchar](50) NULL,
	[SoLuongTon] [int] NULL,
	[Daxoa] [bit] NULL,
	[MaSP] [int] NULL,
 CONSTRAINT [PK_CTSanPham] PRIMARY KEY CLUSTERED 
(
	[MaCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[TinhTrangDDH] [nvarchar](50) NULL,
	[DaThanhToan] [bit] NULL,
	[UuDai] [float] NULL,
	[DaHuy] [bit] NULL,
	[DaXoa] [bit] NULL,
	[DaDat] [bit] NULL,
	[MaKH] [int] NULL,
	[NgayDat] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[SDT] [nvarchar](12) NULL,
	[MaTV] [int] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	[Logo] [nvarchar](50) NULL,
	[BiDanh] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTV]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTV](
	[MaLoaiTV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[UuDai] [float] NULL,
 CONSTRAINT [PK_LoaiTV] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCC]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCC](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[SDT] [int] NOT NULL,
 CONSTRAINT [PK_NhaCC] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSX]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSX](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](50) NOT NULL,
	[ThongTin] [nvarchar](50) NULL,
	[Logo] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaSX] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaTV] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](12) NULL,
	[CauHoi] [nvarchar](50) NULL,
	[MaLoaiTV] [int] NOT NULL,
 CONSTRAINT [PK_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([MaNV], [TenNV], [Email], [SDT], [TaiKhoan], [MatKhau]) VALUES (1, N'Chủ tịch Trọn', N'mail trọn', N'091231313', N'tronnguyen', N'123456')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[BangSanPham] ON 

INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (10, N'Áo Thun Adidas', 1500000.0000, NULL, N'', 24, 0, 0, 0, 20, 2, NULL, N'/Content/images/AoThun2.jpg', N'', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (11, N'Quần Nike', 1800000.0000, NULL, N'', 8, 0, 0, 0, 0, 3, NULL, N'/Content/images/AoThun3.jpg', N'', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (14, N'Quần Adidas', 1700000.0000, NULL, N'', 6, 0, 0, 0, 20, 4, NULL, N'/Content/images/AoThun6.jpg', N'', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (17, N'Áo mới', 20000.0000, NULL, N'Best Saler edit', NULL, NULL, NULL, NULL, 20, 2, NULL, N'/Content/images/account.png', N'/Content/images/book1.jpg', N'/Content/images/Client.jpg', NULL, N'/Content/images/book3.jpg,/Content/images/book3.jpg', NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (18, N'Áo mới', 20000.0000, NULL, N'đẹp', NULL, NULL, NULL, NULL, 20, 2, NULL, N'/Content/images/account.png', N'/Content/images/book1.jpg', N'/Content/images/Client.jpg', NULL, N'/Content/images/book3.jpg,/Content/images/book3.jpg', NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (19, N'Áo mới', 20000.0000, NULL, N'Best Saler edit', NULL, NULL, NULL, NULL, 20, 2, NULL, N'/Content/images/account.png', N'/Content/images/Cotru.jpg', N'/Content/images/tron.jpg', N'/Content/images/MoQua.png', N'/Content/images/ThanhToan.png', NULL, NULL)
SET IDENTITY_INSERT [dbo].[BangSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[CTDonDatHang] ON 

INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1043, 1046, N'Áo Thun Burbery', 1, 2000000.0000, 0, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1044, 1047, N'Áo Thun Burbery', 2, 2000000.0000, 1, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1045, 1048, N'Áo Thun Burbery', 1, 2000000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1046, 1049, N'Áo Khoát Nike', 1, 1500000.0000, 0, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1047, 1049, N'Áo Thun Burbery', 1, 2000000.0000, 1, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1048, 1050, N'Áo Nike', 2, 2250000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1049, 1050, N'Quần Burbery', 1, 3100000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1050, 1050, N'Quần Nike', 3, 3600000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1051, 1050, N'Áo Thun Adidas', 1, 1500000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1052, 1050, N'Quần Nike', 1, 1800000.0000, NULL, 11, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1053, 1051, N'Áo Khoát Nike', 1, 1500000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1054, 1052, N'Quần Burbery', 2, 2790000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1055, 1053, N'Quần Nike', 2, 1800000.0000, NULL, 11, 33)
SET IDENTITY_INSERT [dbo].[CTDonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[CTSanPham] ON 

INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (32, N'XL', 100, NULL, 14)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (33, N'M', 100, NULL, 11)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (36, N'M', 100, NULL, 10)
SET IDENTITY_INSERT [dbo].[CTSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 

INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1046, N'Đã giao', 1, 0, 0, NULL, 1, 20, CAST(N'2022-03-26T00:09:20.943' AS DateTime), CAST(N'2022-03-30T00:09:20.943' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1047, N'Đã giao', 1, 0, 0, NULL, 1, 20, CAST(N'2022-03-27T17:26:28.870' AS DateTime), CAST(N'2022-03-31T17:26:28.870' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1048, N'Đã giao', 1, 0, 0, NULL, 1, 21, CAST(N'2022-03-27T17:32:02.567' AS DateTime), CAST(N'2022-03-31T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1049, N'Chưa Giao', 0, 0, 0, NULL, 1, 20, CAST(N'2022-03-28T17:48:11.920' AS DateTime), CAST(N'2022-04-01T17:48:11.920' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1050, N'Chưa Giao', 0, 0, 0, NULL, 1, 20, CAST(N'2022-04-03T22:21:05.043' AS DateTime), CAST(N'2022-04-07T22:21:05.250' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1051, N'Chưa Giao', 0, 0, 0, NULL, 1, 20, CAST(N'2022-04-03T22:23:22.777' AS DateTime), CAST(N'2022-04-07T22:23:22.960' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1052, N'Chưa Giao', 0, 0, 0, NULL, 1, 20, CAST(N'2022-04-03T23:14:05.363' AS DateTime), CAST(N'2022-04-07T23:14:05.363' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1053, NULL, NULL, NULL, NULL, NULL, 0, 20, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (1, N'Nguyễn An Cơ', N'Q1', N'tranthuy.nute@gmail.com', N'982527982', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (2, N'Hoàng Đức Anh', N'Quận2', N'manhhachkt08@gmail.com', N'973776072', 2)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (3, N'Lưu Trang Anh', N'Quận3', N'tienlapspktnd@gmail.com', N'917749254', 3)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (4, N'Phạm Hoàng Anh', N'Quận4', N'nvt.isst.nute@gmail.com', N'904770053', 4)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (5, N'Phạm Thị Hiền Anh', N'Quận5', N'danghoang87hl@gmail.com', N'974880788', 5)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (8, N'Trần Thị Minh Châu', N'Quận8', N'thuhang.nute@gmail.com', N'986375176', 7)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (9, N'Tăng Phương Chi', N'Quận9', N'vuhaithuongnute@gmail.com', N'914770545', 8)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (10, N'Gan Feng Du', N'Quận10', N'binhan628@gmail.com', N'986253482', 9)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (11, N'Phạm Tiến Dũng', N'Quận11', N'dongspktnd@gmail.com', N'944545232', 10)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (12, N'Nguyễn Thái Dương', N'Quận12', N'anhbinhpham@yahoo.com', N'912644784', 11)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (14, N'Mạc Trung Đức', N'Bình Dương', N'v.thang2909@gmail.com', N'966219941', 12)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (15, N'Vũ Hương Giang', N'Tân Phú', N'tendangnhap05@gmail.com', N'334229954', 13)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (16, N'Nguyễn Thị Ngân Hà', N'Thủ Đức', N'tendangnhap05@gmail.com', N'984603663', 14)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (19, N'Đào Hải Ðăng', N'Q3', N'mail Trọn', N'334229954', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (20, N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 18)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (21, N'Trọn đẹp trai', N'Nhà Trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [Logo], [BiDanh]) VALUES (2, N'Áo Thun', N'/Content/images/AoThun.jpg', N'ÁO Thun')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [Logo], [BiDanh]) VALUES (3, N'Áo Khoát', N'/Content/images/AoKhoac.jpg', N'Áo Khoát')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [Logo], [BiDanh]) VALUES (4, N'Quần Thun', N'/Content/images/QuanThun.jpg', N'Quần Thun')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [Logo], [BiDanh]) VALUES (5, N'Quần Dài', N'/Content/images/QuanDai.jpg', N'Quần Dài')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiTV] ON 

INSERT [dbo].[LoaiTV] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (1, N'Thành vien cao cấp
', 14)
INSERT [dbo].[LoaiTV] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (2, N'Thành viên thường
', NULL)
SET IDENTITY_INSERT [dbo].[LoaiTV] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCC] ON 

INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [Email], [SDT]) VALUES (6, N'Nguyễn Quốc Trọn
', N'Q8
', N'anhbinhpham@yahoo.com
', 912644784)
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [Email], [SDT]) VALUES (7, N'Nguyễn Quốc Dũng', N'Q9', N'dkdsctm7@gmail.com', 368890843)
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [Email], [SDT]) VALUES (8, N'Phan Hoàng Hạc', N'Q10', N'v.thang2909@gmail.com', 966219941)
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [Email], [SDT]) VALUES (9, N'Võ Hà Nam', N'Q11', N'tendangnhap05@gmail.com', 334229954)
SET IDENTITY_INSERT [dbo].[NhaCC] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaSX] ON 

INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (1, N'Trần Đức Dương', N'', N'')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (2, N'Nguyễn Quốc Huy', N'', N'')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (3, N'Phạm Bảo Liên', N'', N'')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (4, N'Đinh Thùy Linh', N'', N'')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (5, N'Phạm Vũ Ngọc Diệp', N'', N'')
SET IDENTITY_INSERT [dbo].[NhaSX] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 

INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (1, N'1', N'1', N'Nguyễn An Cơ', N'Q1', N'tranthuy.nute@gmail.com', N'982527982', N'', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (2, N'2', N'2', N'Nguyễn An Khang', N'Q2', N'manhhachkt08@gmail.com', N'973776072', N'', 2)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (3, N'3', N'3', N'Nguyễn Ân Lai', N'Q3', N'tienlapspktnd@gmail.com', N'917749254', N'', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (4, N'4', N'4', N'Nguyễn An Nam', N'Q4', N'nvt.isst.nute@gmail.com', N'904770053', N'', 2)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (5, N'5', N'5', N'Nguyễn An Nguyên', N'Q1', N'danghoang87hl@gmail.com', N'974880788', N'', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (6, N'6', N'6', N'Lê Ðắc Cường', N'Q2', N'trungkienspktnd@gamail.com', N'983888611', N'', 2)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (7, N'7', N'7', N'Lê Ðắc Di', N'Q3', N'ckctm12@gmail.com', N'984603663', N'', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (8, N'8', N'8', N'Lê Ðắc Lộ', N'Q4', N'thuhang.nute@gmail.com', N'986375176', N'', 2)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (9, N'9', N'9', N'Lê Ðắc Lực', N'Q1', N'vuhaithuongnute@gmail.com', N'914770545', N'', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (10, N'10', N'10', N'Lê Ðắc Thái', N'Q2', N'binhan628@gmail.com', N'986253482', N'', 2)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (11, N'11', N'11', N'Lê Ðắc Thành', N'Q3', N'dongspktnd@gmail.com', N'944545232', N'', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (12, N'12', N'12', N'Đào Hà Hải', N'Q4', N'anhbinhpham@yahoo.com', N'912644784', N'', 2)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (13, N'13', N'13', N'Đào Hải Bằng', N'Q1', N'dkdsctm7@gmail.com', N'368890843', N'', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (14, N'14', N'14', N'Đào Hải Bình', N'Q2', N'v.thang2909@gmail.com', N'966219941', N'', 2)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (15, N'15', N'15', N'Đào Hải Ðăng', N'Q3', N'tendangnhap05@gmail.com', N'334229954', N'', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (18, N'tronnguyen', N'e', N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', N'Shop có đồ đẹp không', 1)
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
GO
ALTER TABLE [dbo].[BangPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_BangPhieuNhap_NhaCC1] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCC] ([MaNCC])
GO
ALTER TABLE [dbo].[BangPhieuNhap] CHECK CONSTRAINT [FK_BangPhieuNhap_NhaCC1]
GO
ALTER TABLE [dbo].[BangSanPham]  WITH CHECK ADD  CONSTRAINT [FK_BangSanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCC] ([MaNCC])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[BangSanPham] CHECK CONSTRAINT [FK_BangSanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[CTDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_CTDDH_BangSanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[BangSanPham] ([MaSP])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[CTDonDatHang] CHECK CONSTRAINT [FK_CTDDH_BangSanPham]
GO
ALTER TABLE [dbo].[CTDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_CTDDH_CTSanPham] FOREIGN KEY([MaCTSP])
REFERENCES [dbo].[CTSanPham] ([MaCT])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[CTDonDatHang] CHECK CONSTRAINT [FK_CTDDH_CTSanPham]
GO
ALTER TABLE [dbo].[CTDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_CTDonDatHang_DonDatHang] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DonDatHang] ([MaDDH])
GO
ALTER TABLE [dbo].[CTDonDatHang] CHECK CONSTRAINT [FK_CTDonDatHang_DonDatHang]
GO
ALTER TABLE [dbo].[CTPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuNhap_BangSanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[BangSanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTPhieuNhap] CHECK CONSTRAINT [FK_CTPhieuNhap_BangSanPham]
GO
ALTER TABLE [dbo].[CTSanPham]  WITH CHECK ADD  CONSTRAINT [FK_CTSanPham_BangSanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[BangSanPham] ([MaSP])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[CTSanPham] CHECK CONSTRAINT [FK_CTSanPham_BangSanPham]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_ThanhVien] FOREIGN KEY([MaTV])
REFERENCES [dbo].[ThanhVien] ([MaTV])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_ThanhVien]
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_LoaiTV] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiTV] ([MaLoaiTV])
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK_ThanhVien_LoaiTV]
GO
/****** Object:  StoredProcedure [dbo].[mact_auto]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mact_auto]
as
begin
declare @ma_next varchar(20)
declare @max int
select @max= count (MaCT) +1 from CTSanPham where MaCT like 'MCT'
set @ma_next = 'MCT' + RIGHT('0' + CAST(@max as varchar(18)),18)
while(exists(select MaCT from CTSanPham where MaCT=@ma_next))
begin
	set @max = @max +1
	set @ma_next = 'MCT' + RIGHT('0' + CAST(@max as varchar(18)),18)
end
select @ma_next
end
GO
/****** Object:  StoredProcedure [dbo].[mactddh_auto]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mactddh_auto]
as
begin
declare @ma_next varchar(20)
declare @max int
select @max= count (MaCTDDH) +1 from CTDonDatHang where MaCTDDH like 'MS'
set @ma_next = 'MS' + RIGHT('0' + CAST(@max as varchar(18)),18)
while(exists(select MaCTDDH from CTDonDatHang where MaCTDDH=@ma_next))
begin
	set @max = @max +1
	set @ma_next = 'MS' + RIGHT('0' + CAST(@max as varchar(18)),18)
end
select @ma_next
end
GO
/****** Object:  StoredProcedure [dbo].[mactpn_auto]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mactpn_auto]
as
begin
declare @ma_next varchar(20)
declare @max int
select @max= count (MaCTPN) +1 from CTPhieuNhap where MaCTPN like 'PNA'
set @ma_next = 'PNA' + RIGHT('0' + CAST(@max as varchar(18)),18)
while(exists(select MaCTPN from CTPhieuNhap where MaCTPN=@ma_next))
begin
	set @max = @max +1
	set @ma_next = 'PNA' + RIGHT('0' + CAST(@max as varchar(18)),18)
end
select @ma_next
end
GO
/****** Object:  StoredProcedure [dbo].[maddh_auto]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[maddh_auto]
as
begin
declare @ma_next varchar(20)
declare @max int
select @max= count (MaDDH) +1 from DonDatHang where MaDDH like 'DDH'
set @ma_next = 'DDH' + RIGHT('0' + CAST(@max as varchar(18)),18)
while(exists(select MaDDH from DonDatHang where MaDDH=@ma_next))
begin
	set @max = @max +1
	set @ma_next = 'DDH' + RIGHT('0' + CAST(@max as varchar(18)),18)
end
select @ma_next
end
GO
/****** Object:  StoredProcedure [dbo].[makh_auto]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[makh_auto]
as
begin
declare @ma_next varchar(20)
declare @max int
select @max= count (MaKH) +1 from KhachHang where MaKH like 'KH'
set @ma_next = 'KH' + RIGHT('0' + CAST(@max as varchar(18)),18)
while(exists(select MaKH from KhachHang where MaKH=@ma_next))
begin
	set @max = @max +1
	set @ma_next = 'KHSP' + RIGHT('0' + CAST(@max as varchar(18)),18)
end
select @ma_next
end
GO
/****** Object:  StoredProcedure [dbo].[manhacc_auto]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[manhacc_auto]
as
begin
declare @ma_next varchar(20)
declare @max int
select @max= count (MaNCC) +1 from NhaCC where MaNCC like 'NCC'
set @ma_next = 'NCC' + RIGHT('0' + CAST(@max as varchar(18)),18)
while(exists(select MaNCC from NhaCC where MaNCC=@ma_next))
begin
	set @max = @max +1
	set @ma_next = 'NCC' + RIGHT('0' + CAST(@max as varchar(18)),18)
end
select @ma_next
end
GO
/****** Object:  StoredProcedure [dbo].[manhasx_auto]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[manhasx_auto]
as
begin
declare @ma_next varchar(20)
declare @max int
select @max= count (MaNSX) +1 from NhaSX where MaNSX like 'N'
set @ma_next = 'N' + RIGHT('0' + CAST(@max as varchar(18)),18)
while(exists(select MaNSX from NhaSX where MaNSX=@ma_next))
begin
	set @max = @max +1
	set @ma_next = 'N' + RIGHT('0' + CAST(@max as varchar(18)),18)
end
select @ma_next
end
GO
/****** Object:  StoredProcedure [dbo].[mapn_auto]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mapn_auto]
as
begin
declare @ma_next varchar(20)
declare @max int
select @max= count (MaPN) +1 from BangPhieuNhap where MaPN like 'MPN'
set @ma_next = 'MPN' + RIGHT('0' + CAST(@max as varchar(18)),18)
while(exists(select MaPN from BangPhieuNhap where MaPN=@ma_next))
begin
	set @max = @max +1
	set @ma_next = 'MPN' + RIGHT('0' + CAST(@max as varchar(18)),18)
end
select @ma_next
end
GO
/****** Object:  StoredProcedure [dbo].[masp_auto]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[masp_auto]
as
begin
declare @ma_next varchar(20)
declare @max int
select @max= count (MaSP) +1 from BangSanPham where MaSP like 'MSP'
set @ma_next = 'MSP' + RIGHT('0' + CAST(@max as varchar(18)),18)
while(exists(select MaSP from BangPSanPham where MaSP=@ma_next))
begin
	set @max = @max +1
	set @ma_next = 'MSP' + RIGHT('0' + CAST(@max as varchar(18)),18)
end
select @ma_next
end
GO
/****** Object:  StoredProcedure [dbo].[mathanhvien_auto]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mathanhvien_auto]
as
begin
declare @ma_next varchar(20)
declare @max int
select @max= count (MaTV) +1 from ThanhVien where MaTV like 'MSTV'
set @ma_next = 'MSTV' + RIGHT('0' + CAST(@max as varchar(18)),18)
while(exists(select MaTV from ThanhVien where MaTV=@ma_next))
begin
	set @max = @max +1
	set @ma_next = 'MSTV' + RIGHT('0' + CAST(@max as varchar(18)),18)
end
select @ma_next
end
GO
/****** Object:  StoredProcedure [dbo].[matheloai_auto]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[matheloai_auto]
as
begin
declare @ma_next varchar(20)
declare @max int
select @max= count (MaLoai) +1 from LoaiSanPham where MaLoai like 'L'
set @ma_next = 'L' + RIGHT('0' + CAST(@max as varchar(18)),18)
while(exists(select MaLoai from LoaiSanPham where MaLoai=@ma_next))
begin
	set @max = @max +1
	set @ma_next = 'L' + RIGHT('0' + CAST(@max as varchar(18)),18)
end
select @ma_next
end
GO
/****** Object:  StoredProcedure [dbo].[matv_auto]    Script Date: 4/5/2022 9:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[matv_auto]
as
begin
declare @ma_next varchar(20)
declare @max int
select @max= count (MaLoaiTV) +1 from LoaiTV where MaLoaiTV like 'TV'
set @ma_next = 'TV' + RIGHT('0' + CAST(@max as varchar(18)),18)
while(exists(select MaLoaiTV from LoaiTV where MaLoaiTV=@ma_next))
begin
	set @max = @max +1
	set @ma_next = 'TV' + RIGHT('0' + CAST(@max as varchar(18)),18)
end
select @ma_next
end
GO
USE [master]
GO
ALTER DATABASE [QUANAOSTORE] SET  READ_WRITE 
GO
