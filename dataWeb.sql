USE [master]

GO
/****** Object:  Database [QUANAOSTORE]    Script Date: 4/4/2022 5:06:17 PM ******/
CREATE DATABASE [QUANAOSTORE]
/** CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUANAOSTORE', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QUANAOSTORE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QUANAOSTORE_log', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QUANAOSTORE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT**/
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
/****** Object:  Table [dbo].[Admin]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  Table [dbo].[BangPhieuNhap]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  Table [dbo].[BangSanPham]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  Table [dbo].[CTDonDatHang]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  Table [dbo].[CTPhieuNhap]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  Table [dbo].[CTSanPham]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  Table [dbo].[LoaiTV]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  Table [dbo].[NhaCC]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  Table [dbo].[NhaSX]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  StoredProcedure [dbo].[mact_auto]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  StoredProcedure [dbo].[mactddh_auto]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  StoredProcedure [dbo].[mactpn_auto]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  StoredProcedure [dbo].[maddh_auto]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  StoredProcedure [dbo].[makh_auto]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  StoredProcedure [dbo].[manhacc_auto]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  StoredProcedure [dbo].[manhasx_auto]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  StoredProcedure [dbo].[mapn_auto]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  StoredProcedure [dbo].[masp_auto]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  StoredProcedure [dbo].[mathanhvien_auto]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  StoredProcedure [dbo].[matheloai_auto]    Script Date: 4/4/2022 5:06:17 PM ******/
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
/****** Object:  StoredProcedure [dbo].[matv_auto]    Script Date: 4/4/2022 5:06:17 PM ******/
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
