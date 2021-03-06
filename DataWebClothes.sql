USE [master]
GO
/****** Object:  Database [QUANAOSTORE]    Script Date: 4/12/2022 10:00:55 PM ******/
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
/****** Object:  Table [dbo].[Admin]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  Table [dbo].[BangPhieuNhap]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  Table [dbo].[BangSanPham]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  Table [dbo].[CTDonDatHang]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  Table [dbo].[CTPhieuNhap]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  Table [dbo].[CTSanPham]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  Table [dbo].[LoaiTV]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  Table [dbo].[NhaCC]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  Table [dbo].[NhaSX]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 4/12/2022 10:00:56 PM ******/
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

INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (10, N'Áo Thun Adidas', 1500000.0000, NULL, N'', 41, 7, 0, 12, 20, 2, NULL, N'/Content/images/AoThun2.jpg', N'/Content/images/thun5.jpg', N'/Content/images/thun4.jpg', N'/Content/images/thun3.jpg', N'/Content/images/thun2.jpg', NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (14, N'Quần Adidas', 1700000.0000, NULL, N'', 40, 0, 0, 3, 20, 4, NULL, N'/Content/images/qaunshortden1.jpg', N'/Content/images/quanshortden2.jpg', N'/Content/images/qaunshortden3.jpg', N'/Content/images/qaunshortden14.jpg', N'/Content/images/qaunshortden5.jpg', NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (20, N'Áo mới', 20000.0000, NULL, N'đẹp', NULL, NULL, NULL, NULL, 20, 2, NULL, N'/Content/images/thun4.jpg', N'/Content/images/thun2.jpg', N'/Content/images/thun3.jpg', N'/Content/images/thun5.jpg', N'/Content/images/thun2.jpg', NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (21, N'Áo Khoát', 20000.0000, NULL, N'đẹp', NULL, NULL, NULL, NULL, 20, 3, NULL, N'/Content/images/aokhoat1.jpg', N'/Content/images/aokhoat2.jpg', N'/Content/images/aokhoat3.jpg', N'/Content/images/aokhoat4.jpg', N'/Content/images/aokhoat5.jpg', NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (22, N'Quần Jean', 300000.0000, NULL, N'đẹp', NULL, NULL, NULL, NULL, 20, 5, NULL, N'/Content/images/qaunjeadai1.jpg', N'/Content/images/qaunjeandai2.jpg', N'/Content/images/qaunjeandai3.jpg', N'/Content/images/qaunjeandai4.jpg', N'/Content/images/quanjeandai5.jpg', NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (23, N'Áo Sơ Mi', 20000.0000, NULL, N'Best Saler edit', NULL, NULL, NULL, NULL, 20, 2, NULL, N'/Content/images/somidep1.jpg', N'/Content/images/somidep2.jpg', N'/Content/images/somidep1.jpg', N'/Content/images/somidep3.jpg', N'/Content/images/somidep5.jpg', NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (24, N'Sơ mi trắng', 20000.0000, NULL, N'đẹp', NULL, NULL, NULL, NULL, 20, 3, NULL, N'/Content/images/soiden1.jpg', N'/Content/images/somiden2.jpg', N'/Content/images/soden3.jpg', N'/Content/images/soden4.jpg', N'/Content/images/soden5.jpg', NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (25, N'Áo đồng phục', 20000.0000, NULL, N'áo rất là đep', NULL, NULL, NULL, NULL, 0, 2, NULL, N'/Content/images/Aosomi2.jpg', N'/Content/images/Aosomi3.jpg', N'/Content/images/Aosomi4.jpg', N'/Content/images/Aosomi8.jpg', N'/Content/images/Aosomi9.jpg', NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (26, N'Aos moiws', 20000.0000, NULL, N'dep lam', NULL, NULL, NULL, NULL, 10, 2, NULL, N'/Content/images/aokhoat5.jpg', N'/Content/images/qaunshortden3.jpg', N'/Content/images/quanshortden2.jpg', N'/Content/images/qaunshortden1.jpg', N'/Content/images/qaunjeandai3.jpg', NULL, NULL)
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
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1052, 1050, N'Quần Nike', 1, 1800000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1053, 1051, N'Áo Khoát Nike', 1, 1500000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1055, 1053, N'Quần Nike', 2, 1800000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1056, 1054, N'Quần Adidas', 1, 1700000.0000, NULL, 14, 32)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1057, 1055, N'Quần Nike', 1, 1800000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1058, 1056, N'Quần Nike', 1, 1800000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1059, 1057, N'Quần Nike', 1, 1800000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1060, 1058, N'Áo Thun Adidas', 1, 1500000.0000, NULL, 10, 36)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1061, 1053, N'Quần Adidas', 1, 1700000.0000, NULL, 14, 32)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1062, 1059, N'Sơ mi trắng', 2, 16000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1063, 1060, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1064, 1061, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1065, 1062, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1066, 1063, N'Sơ mi trắng', 1, 16000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1067, 1064, N'Áo mới', 2, 16000.0000, 1, 20, 43)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1068, 1064, N'Áo Sơ Mi', 1, 16000.0000, 0, 23, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1069, 1064, N'Áo Sơ Mi', 1, 16000.0000, 1, 23, 47)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1070, 1064, N'Quần Jean', 1, 300000.0000, 0, 22, 44)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1071, 1065, N'Sơ mi trắng', 2, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1072, 1066, N'Áo Thun Adidas', 1, 1200000.0000, 0, 10, 38)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1073, 1066, N'Áo Thun Adidas', 2, 1200000.0000, 0, 10, 41)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1074, 1066, N'Áo Sơ Mi', 97, 16000.0000, 0, 23, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1075, 1067, N'Áo Sơ Mi', 3, 16000.0000, 0, 23, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1076, 1068, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1077, 1068, N'Quần Adidas', 1, 1700000.0000, NULL, 14, 32)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1078, 1068, N'Quần Adidas', 1, 1700000.0000, NULL, 14, 42)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1079, 1069, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1080, 1070, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1081, 1071, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1082, 1072, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1083, 1073, N'Quần Adidas', 1, 1700000.0000, NULL, 14, 32)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1084, 1074, N'Áo Thun Adidas', 1, 1500000.0000, NULL, 10, 41)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1085, 1074, N'Áo mới', 2, 20000.0000, NULL, 20, 43)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1086, 1075, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1087, 1076, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1088, 1077, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1089, 1078, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1090, 1079, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1091, 1080, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1092, 1081, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1093, 1081, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, 47)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1094, 1082, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1095, 1082, N'Quần Adidas', 1, 1700000.0000, NULL, 14, 32)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1096, 1083, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1097, 1084, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1098, 1085, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1099, 1086, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1100, 1087, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1101, 1067, N'Quần Jean', 1, 240000.0000, 1, 22, 44)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1102, 1067, N'Sơ mi trắng', 1, 16000.0000, 1, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1103, 1067, N'Áo mới', 1, 16000.0000, 0, 20, 43)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1104, 1088, N'Áo Thun Adidas', 1, 1500000.0000, NULL, 10, 41)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1105, 1089, N'Sơ mi trắng', 1, 16000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1106, 1090, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1107, 1091, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1108, 1092, N'Sơ mi trắng', 2, 16000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1109, 1093, N'Áo Thun Adidas', 2, 1500000.0000, NULL, 10, 41)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1110, 1093, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1111, 1093, N'Áo mới', 1, 20000.0000, NULL, 20, 43)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1112, 1094, N'Áo mới', 1, 16000.0000, NULL, 20, 43)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1113, 1094, N'Áo Sơ Mi', 1, 16000.0000, NULL, 23, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1114, 1095, N'Áo Thun Adidas', 2, 1500000.0000, NULL, 10, 41)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1115, 1095, N'Áo Thun Adidas', 1, 1500000.0000, NULL, 10, 38)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1116, 1096, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1117, 1097, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1118, 1097, N'Áo Thun Adidas', 1, 1500000.0000, NULL, 10, 38)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1119, 1097, N'Áo Thun Adidas', 1, 1500000.0000, NULL, 10, 41)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1120, 1094, N'Sơ mi trắng', 2, 16000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1121, 1098, N'Sơ mi trắng', 52, 16000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1122, 1099, N'Áo Sơ Mi', 1, 16000.0000, NULL, 23, 47)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1123, 1094, N'Quần Jean', 1, 240000.0000, NULL, 22, 44)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1124, 1100, N'Áo Sơ Mi', 2, 16000.0000, 0, 23, 47)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1125, 1101, N'Áo mới', 1, 20000.0000, NULL, 20, 43)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1126, 1102, N'Sơ mi trắng', 2, 16000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1127, 1103, N'Áo mới', 1, 20000.0000, NULL, 20, 48)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1128, 1102, N'Quần Jean', 1, 300000.0000, NULL, 22, 44)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1129, 1104, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, 47)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1130, 1105, N'Áo Thun Adidas', 1, 1500000.0000, 1, 10, 38)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1131, 1106, N'Áo mới', 2, 16000.0000, NULL, 20, 43)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1132, 1107, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, 47)
SET IDENTITY_INSERT [dbo].[CTDonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[CTSanPham] ON 

INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (32, N'XL', 97, NULL, 14)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (36, N'M', 0, NULL, 10)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (38, N'X', 95, NULL, 10)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (40, N'X', 86, NULL, 24)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (41, N'L', 94, NULL, 10)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (42, N'M', 100, NULL, 14)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (43, N'L', 94, NULL, 20)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (44, N'M', 96, NULL, 22)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (45, N'L', 100, NULL, 14)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (47, N'M', 94, NULL, 23)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (48, N'X', 17, NULL, 20)
SET IDENTITY_INSERT [dbo].[CTSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 

INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1046, N'Đã giao', 1, 0, 0, NULL, 1, 20, CAST(N'2022-03-26T00:09:20.943' AS DateTime), CAST(N'2022-03-30T00:09:20.943' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1047, N'Đã giao', 1, 0, 0, NULL, 1, 20, CAST(N'2022-03-27T17:26:28.870' AS DateTime), CAST(N'2022-03-31T17:26:28.870' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1048, N'Đã giao', 1, 0, 0, NULL, 1, 21, CAST(N'2022-03-27T17:32:02.567' AS DateTime), CAST(N'2022-03-31T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1049, N'Đã giao', 1, 0, 0, NULL, 1, 20, CAST(N'2022-03-28T17:48:11.920' AS DateTime), CAST(N'2022-04-01T17:48:11.920' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1050, N'Đã giao', 1, 0, 0, NULL, 1, 20, CAST(N'2022-04-03T22:21:05.043' AS DateTime), CAST(N'2022-04-07T22:21:05.250' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1051, N'Đã giao', 1, 0, 0, NULL, 1, 20, CAST(N'2022-04-03T22:23:22.777' AS DateTime), CAST(N'2022-04-07T22:23:22.960' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1053, N'Đang giao', 0, 0, 0, NULL, 1, 20, CAST(N'2022-04-06T11:05:10.140' AS DateTime), CAST(N'2022-04-10T11:07:06.213' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1054, N'Khách không nhận hàng', 0, 0, 1, NULL, 1, 22, CAST(N'2022-04-06T00:30:37.920' AS DateTime), CAST(N'2022-04-10T00:31:16.250' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1055, N'Chưa Giao', 0, 0, 0, NULL, NULL, 23, CAST(N'2022-04-06T00:33:23.010' AS DateTime), CAST(N'2022-04-10T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1056, N'Chưa Giao', 0, 0, 0, NULL, NULL, 24, CAST(N'2022-04-06T00:36:26.203' AS DateTime), CAST(N'2022-04-10T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1057, N'Khách không nhận hàng', 0, 0, 1, NULL, 1, 25, CAST(N'2022-04-06T00:38:20.490' AS DateTime), CAST(N'2022-04-10T00:38:41.533' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1058, N'Khách không nhận hàng', 0, 0, 1, NULL, 1, 26, CAST(N'2022-04-06T00:47:07.577' AS DateTime), CAST(N'2022-04-10T00:47:25.817' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1059, N'Đang Giao', 0, 0, 0, NULL, 0, 1, CAST(N'2022-04-06T15:06:30.543' AS DateTime), CAST(N'2022-04-10T15:06:30.543' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1060, N'Chưa Giao', 0, 0, 0, NULL, NULL, 27, CAST(N'2022-04-06T15:10:33.070' AS DateTime), CAST(N'2022-04-10T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1061, N'Chưa Giao', 0, 0, 0, NULL, NULL, 28, CAST(N'2022-04-06T15:11:52.100' AS DateTime), CAST(N'2022-04-10T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1062, N'Khách không nhận hàng', 0, 0, 1, NULL, 1, 29, CAST(N'2022-04-06T15:13:12.053' AS DateTime), CAST(N'2022-04-10T15:13:49.907' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1063, N'Đang giao', 0, 0, 0, NULL, 1, 20, CAST(N'2022-04-06T15:16:42.490' AS DateTime), CAST(N'2022-04-10T15:17:11.793' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1064, N'Đang giao', 0, 0, 0, NULL, 1, 20, CAST(N'2022-04-06T15:18:56.900' AS DateTime), CAST(N'2022-04-10T15:19:18.627' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1065, N'Đang giao', 0, 0, 0, NULL, 1, 20, CAST(N'2022-04-06T15:25:04.673' AS DateTime), CAST(N'2022-04-10T15:25:17.237' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1066, N'Đã giao', 1, 0, 0, NULL, 1, 20, CAST(N'2022-04-06T15:39:47.560' AS DateTime), CAST(N'2022-04-10T15:39:57.910' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1067, N'Đang Giao', 1, 0, 0, NULL, 1, 20, CAST(N'2022-04-11T21:35:49.673' AS DateTime), CAST(N'2022-04-15T21:36:33.187' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1068, N'Đang Giao', 0, 0, 0, NULL, NULL, 30, CAST(N'2022-04-09T23:40:14.587' AS DateTime), CAST(N'2022-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1069, N'Đang Giao', 0, 0, 0, NULL, NULL, 31, CAST(N'2022-04-09T23:41:41.403' AS DateTime), CAST(N'2022-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1070, N'Đang Giao', 0, 0, 0, NULL, NULL, 32, CAST(N'2022-04-09T23:43:16.520' AS DateTime), CAST(N'2022-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1071, N'Đang Giao', 0, 0, 0, NULL, NULL, 33, CAST(N'2022-04-09T23:44:24.930' AS DateTime), CAST(N'2022-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1072, N'Đang Giao', 0, 0, 0, NULL, NULL, 34, CAST(N'2022-04-09T23:46:03.560' AS DateTime), CAST(N'2022-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1073, N'Đang Giao', 0, 0, 0, NULL, NULL, 35, CAST(N'2022-04-09T23:50:40.277' AS DateTime), CAST(N'2022-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1074, N'Đang Giao', 0, 0, 0, NULL, NULL, 36, CAST(N'2022-04-10T00:37:54.237' AS DateTime), CAST(N'2022-04-14T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1075, N'Đang Giao', 0, 0, 0, NULL, NULL, 37, CAST(N'2022-04-10T09:14:18.697' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1076, N'Đang Giao', 0, 0, 0, NULL, NULL, 38, CAST(N'2022-04-10T09:16:33.873' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1077, N'Đang Giao', 0, 0, 0, NULL, NULL, 39, CAST(N'2022-04-10T09:21:40.673' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1078, N'Đang Giao', 0, 0, 0, NULL, NULL, 40, CAST(N'2022-04-10T09:44:08.163' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1079, N'Đang Giao', 0, 0, 0, NULL, NULL, 41, CAST(N'2022-04-10T09:46:43.740' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1080, N'Đang Giao', 0, 0, 0, NULL, NULL, 42, CAST(N'2022-04-10T09:52:23.953' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1081, N'Đang Giao', 0, 0, 0, NULL, NULL, 43, CAST(N'2022-04-10T09:54:16.763' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1082, N'Đã giao', 1, 0, 0, NULL, 1, 44, CAST(N'2022-04-10T09:59:27.670' AS DateTime), CAST(N'2022-04-14T10:00:01.730' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1083, N'Đang Giao', 0, 0, 0, NULL, NULL, 45, CAST(N'2022-04-10T10:02:35.190' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1084, N'Đang Giao', 0, 0, 0, NULL, NULL, 46, CAST(N'2022-04-10T10:05:41.403' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1085, N'Đang Giao', 0, 0, 0, NULL, NULL, 47, CAST(N'2022-04-10T10:07:38.473' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1086, N'Đã giao', 1, 0, 0, NULL, 1, 48, CAST(N'2022-04-10T10:09:19.693' AS DateTime), CAST(N'2022-04-14T10:09:49.930' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1087, N'Đang Giao', 1, 0, 0, NULL, 1, 49, CAST(N'2022-04-10T10:11:11.573' AS DateTime), CAST(N'2022-04-14T10:11:41.087' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1088, N'Đang Giao', 1, 0, 0, NULL, 1, 50, CAST(N'2022-04-10T11:24:40.490' AS DateTime), CAST(N'2022-04-14T11:28:37.053' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1089, NULL, NULL, NULL, NULL, NULL, 0, 51, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1090, N'Đang Giao', 0, 0, 0, NULL, NULL, 53, CAST(N'2022-04-11T14:06:31.093' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1091, N'Đang Giao', 0, 0, 0, NULL, NULL, 54, CAST(N'2022-04-11T17:25:11.157' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1092, N'Đang Giao', 0, 0, 0, NULL, 0, 59, CAST(N'2022-04-11T18:58:58.657' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1093, N'Đang Giao', 0, 0, 0, NULL, NULL, 60, CAST(N'2022-04-11T21:21:51.243' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1094, N'Đang giao', 1, 0, 0, NULL, 1, 20, CAST(N'2022-04-12T19:09:31.390' AS DateTime), CAST(N'2022-04-16T19:10:01.583' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1095, N'Đang Giao', 0, 0, 0, NULL, NULL, 61, CAST(N'2022-04-11T23:03:00.313' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1096, N'Đang Giao', 0, 0, 0, NULL, NULL, 62, CAST(N'2022-04-11T23:05:06.513' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1097, N'Đang giao', 1, 0, 0, NULL, 1, 63, CAST(N'2022-04-11T23:11:44.927' AS DateTime), CAST(N'2022-04-15T23:13:51.070' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1098, NULL, NULL, NULL, NULL, NULL, 0, 64, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1099, N'Đang Giao', 0, 0, 0, NULL, 0, 57, CAST(N'2022-04-12T18:58:41.773' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1100, N'Đang giao', 1, 15, 0, NULL, 1, 20, CAST(N'2022-04-12T19:22:44.517' AS DateTime), CAST(N'2022-04-16T19:23:15.230' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1101, N'Đang giao', 1, 0, 0, NULL, 1, 65, CAST(N'2022-04-12T19:34:02.253' AS DateTime), CAST(N'2022-04-16T19:35:36.520' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1102, N'Đang giao', 1, 15, 0, NULL, 1, 20, CAST(N'2022-04-12T19:55:32.630' AS DateTime), CAST(N'2022-04-16T19:56:08.943' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1103, N'Đang giao', 1, 0, 0, NULL, 1, 66, CAST(N'2022-04-12T19:44:15.437' AS DateTime), CAST(N'2022-04-16T19:49:38.043' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1104, N'Đang giao', 1, 0, 0, NULL, 1, 67, CAST(N'2022-04-12T19:59:29.597' AS DateTime), CAST(N'2022-04-16T20:00:08.030' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1105, N'Đang giao', 0, 0, 0, NULL, 1, 68, CAST(N'2022-04-12T20:05:13.637' AS DateTime), CAST(N'2022-04-16T20:08:07.567' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1106, NULL, NULL, NULL, NULL, NULL, 0, 20, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1107, N'Đang giao', 1, 0, 0, NULL, 1, 69, CAST(N'2022-04-12T20:11:03.273' AS DateTime), CAST(N'2022-04-16T20:13:33.433' AS DateTime))
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
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (20, N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron200901@gmail.com', N'0987654321', 18)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (21, N'Trọn đẹp trai', N'Nhà Trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (22, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (23, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (24, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (25, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (26, N'Trọn đẹp trai', N'trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (27, N'Trọn đẹp trai', N'nha trojn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (28, N'Trọn đẹp trai', N'nhaf trojn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (29, N'Trọn đẹp trai', N'nhaf tron', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (30, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (31, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (32, N'Trọn đẹp trai', N'nhà ', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (33, N'Trọn đẹp trai', N'jjj', N'quoctron2009@gmail.com', N'sđt trọn', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (34, N'Trọn đẹp trai', N'dđ', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (35, N'Trọn đẹp trai', N'nhafd trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (36, N'Trọn đẹp trai', N'rrrrr', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (37, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (38, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (39, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (40, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (41, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (42, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (43, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (44, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (45, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (46, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (47, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (48, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (49, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (50, N'Trọn rất đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (51, N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron20091@gmail.com', N'0987654321', 19)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (52, N'Nguyễn Quốc Trọn', N'fdfsf', N'quoctron2009@gmail.com', N'0987654321', 20)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (53, N'Trọn đẹp trai', N'nahf trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (54, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (55, N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 21)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (56, N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron2009@gmail.com', N'3131313131', 22)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (57, N'Nguyễn Quốc Trọn', N'nhầ trọn', N'quoctron2009@gmail.com', N'0987654321', 23)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (58, N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 24)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (59, N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 25)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (60, N'Nguyễn Quốc Trọn', N'Nhà Trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (61, N'Nguyễn Quốc Trọn', N'Nhà Trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (62, N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (63, N'Nguyễn Quốc Trọn', N'nhà Trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (64, N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 26)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (65, N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (66, N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (67, N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (68, N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (69, N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
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

INSERT [dbo].[LoaiTV] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (1, N'Thành viên đồng', 0)
INSERT [dbo].[LoaiTV] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (2, N'Thành viên bạc', 10)
INSERT [dbo].[LoaiTV] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (3, N'Thành viên vàng', 15)
INSERT [dbo].[LoaiTV] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (4, N'Thành viên bạch kim', 20)
INSERT [dbo].[LoaiTV] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (5, N'Thành viên kim cương', 25)
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
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (3, N'3', N'3', N'Nguyễn Ân Lai', N'Q3', N'tienlapspktnd@gmail.com', N'917749254', N'', 3)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (4, N'4', N'4', N'Nguyễn An Nam', N'Q4', N'nvt.isst.nute@gmail.com', N'904770053', N'', 4)
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
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (18, N'tronnguyen', N'123456', N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron200901@gmail.com', N'0987654321', N'Shop có đồ đẹp không', 3)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (19, N'tronnguyen2', N'123456', N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron20091@gmail.com', N'0987654321', N'Shop có đồ đẹp không', 4)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (20, N'tronnguyen3', N'e333', N'Nguyễn Quốc Trọn', N'fdfsf', N'quoctron2009@gmail.com', N'0987654321', N'Shop có đồ đẹp không', 3)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (21, N'trondeptrai', N'123456', N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', N'Shop có đồ đẹp không', 5)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (22, N'trondeptrai2', N'123456', N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron2009@gmail.com', N'3131313131', N'Shop có đồ đẹp không', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (23, N'tronnguyen4', N'123456', N'Nguyễn Quốc Trọn', N'nhầ trọn', N'quoctron2009@gmail.com', N'0987654321', N'Shop có đồ đẹp không', 4)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (24, N'tronnguyen12', N'123456', N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', N'Shop có đồ đẹp không', 3)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (25, N'tronnguyen123', N'123456', N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', N'Shop có đồ đẹp không', 2)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (26, N'demo', N'123456', N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', N'Shop có đồ đẹp không', 1)
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
/****** Object:  StoredProcedure [dbo].[mact_auto]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  StoredProcedure [dbo].[mactddh_auto]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  StoredProcedure [dbo].[mactpn_auto]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  StoredProcedure [dbo].[maddh_auto]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  StoredProcedure [dbo].[makh_auto]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  StoredProcedure [dbo].[manhacc_auto]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  StoredProcedure [dbo].[manhasx_auto]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  StoredProcedure [dbo].[mapn_auto]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  StoredProcedure [dbo].[masp_auto]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  StoredProcedure [dbo].[mathanhvien_auto]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  StoredProcedure [dbo].[matheloai_auto]    Script Date: 4/12/2022 10:00:56 PM ******/
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
/****** Object:  StoredProcedure [dbo].[matv_auto]    Script Date: 4/12/2022 10:00:56 PM ******/
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
