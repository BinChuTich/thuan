USE [master]
GO
/****** Object:  Database [UngDungBanGiaySneaker]    Script Date: 09/01/2024 1:29:03 CH ******/
CREATE DATABASE [UngDungBanGiaySneaker]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UngDungBanGiaySneaker', FILENAME = N'C:\Users\DELL\Desktop\app\MSSQL15.MSSQLSERVER\MSSQL\DATA\UngDungBanGiaySneaker.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UngDungBanGiaySneaker_log', FILENAME = N'C:\Users\DELL\Desktop\app\MSSQL15.MSSQLSERVER\MSSQL\DATA\UngDungBanGiaySneaker_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UngDungBanGiaySneaker].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET ARITHABORT OFF 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET  ENABLE_BROKER 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET RECOVERY FULL 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET  MULTI_USER 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'UngDungBanGiaySneaker', N'ON'
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET QUERY_STORE = OFF
GO
USE [UngDungBanGiaySneaker]
GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 09/01/2024 1:29:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 09/01/2024 1:29:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[Id] [uniqueidentifier] NOT NULL,
	[idHoaDon] [uniqueidentifier] NULL,
	[idChiTietSanPham] [uniqueidentifier] NULL,
	[soLuong] [int] NULL,
	[donGia] [decimal](20, 0) NULL,
	[ngayBan] [date] NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSanPham]    Script Date: 09/01/2024 1:29:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSanPham](
	[Id] [uniqueidentifier] NOT NULL,
	[idSanPham] [uniqueidentifier] NULL,
	[hang] [uniqueidentifier] NULL,
	[Size] [uniqueidentifier] NULL,
	[DanhMuc] [uniqueidentifier] NULL,
	[ChatLieu] [uniqueidentifier] NULL,
	[MauSac] [uniqueidentifier] NULL,
	[idKhuyenMai] [uniqueidentifier] NULL,
	[giaNhap] [decimal](20, 0) NULL,
	[giaBan] [decimal](20, 0) NULL,
	[QR] [int] IDENTITY(20012003,1) NOT NULL,
	[HinhAnh] [varchar](50) NULL,
	[SoLuong] [int] NULL,
	[MoTa] [nvarchar](100) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 09/01/2024 1:29:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[id] [uniqueidentifier] NOT NULL,
	[maChucVu] [varchar](20) NULL,
	[tenChucVu] [varchar](20) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 09/01/2024 1:29:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hang]    Script Date: 09/01/2024 1:29:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hang](
	[idHang] [uniqueidentifier] NOT NULL,
	[maHang] [varchar](20) NULL,
	[tenHang] [nvarchar](30) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 09/01/2024 1:29:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[ID] [uniqueidentifier] NOT NULL,
	[maHoaDon] [varchar](20) NULL,
	[idNhanVien] [uniqueidentifier] NULL,
	[idKhachHang] [uniqueidentifier] NULL,
	[ngayMua] [date] NULL,
	[thanhTien] [decimal](20, 0) NULL,
	[idKhuyenMai] [uniqueidentifier] NULL,
	[GhiChu] [nvarchar](100) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 09/01/2024 1:29:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ID] [uniqueidentifier] NOT NULL,
	[maKhachHang] [varchar](20) NULL,
	[loaiKhachHang] [nvarchar](50) NULL,
	[tenKhachHang] [nvarchar](50) NULL,
	[diaChi] [nvarchar](200) NULL,
	[gioiTinh] [nvarchar](50) NULL,
	[email] [varchar](50) NULL,
	[sdt] [varchar](50) NULL,
	[ngaySinh] [date] NULL,
	[ngayThamGia] [date] NULL,
	[tichDiem] [int] NULL,
	[diemEXP] [int] NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 09/01/2024 1:29:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[Id] [uniqueidentifier] NOT NULL,
	[maKhuyenMai] [varchar](20) NULL,
	[tenKhuyenMai] [nvarchar](20) NULL,
	[giaTri] [decimal](20, 0) NULL,
	[giamToiDa] [decimal](20, 0) NULL,
	[ngayBatDau] [date] NULL,
	[ngayKetThuc] [date] NULL,
	[hinhThucApDung] [nvarchar](50) NULL,
	[apDungGiamGia] [nvarchar](50) NULL,
	[loaiGiamGia] [nvarchar](50) NULL,
	[ngayTao] [date] NULL,
	[ngaySua] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 09/01/2024 1:29:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 09/01/2024 1:29:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [uniqueidentifier] NOT NULL,
	[maNhanVien] [varchar](20) NULL,
	[hoVaTen] [nvarchar](50) NULL,
	[ngaySinh] [date] NULL,
	[gioiTinh] [nvarchar](25) NULL,
	[diaChi] [nvarchar](200) NULL,
	[sdt] [varchar](10) NULL,
	[email] [varchar](100) NULL,
	[matKhau] [varchar](20) NULL,
	[IDCV] [uniqueidentifier] NULL,
	[Hinh] [varchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 09/01/2024 1:29:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [uniqueidentifier] NOT NULL,
	[maSanPham] [varchar](20) NULL,
	[tenSanPham] [nvarchar](100) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 09/01/2024 1:29:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChatLieu] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'60e6cb18-9e66-44f1-ab17-083d54a0d9a6', N'CL001', N'Da t?ng h?p', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[ChatLieu] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'4963a3fa-4d5e-4ded-aa9d-37ac90ae76a8', N'CL002', N'V?i canvas', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[ChatLieu] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'15ec2be0-7de3-4d72-a376-3c184a08167f', N'CL009', N'Polyester', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[ChatLieu] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'68601904-74db-4446-a24e-54f24b57d4f8', N'CL007', N'Cao su t?ng h?p', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[ChatLieu] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'a63bb617-4e02-4784-9167-69912e458a6c', N'CL005', N'Mesh', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[ChatLieu] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'd241e161-990e-4dae-9950-882e89cbb673', N'CL003', N'N?', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[ChatLieu] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'3c699abb-8f00-433d-bfa9-a31cd3a17848', N'CL010', N'Nylon', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[ChatLieu] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'a127881f-2e94-4cd5-8715-b463ec4e3765', N'CL008', N'Gamuza', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[ChatLieu] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'e32c35dd-6349-4963-b7e5-c1c789f57de5', N'CL006', N'V?i d?t', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[ChatLieu] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'4697c4c9-eda8-4c7f-8e9b-e37d40a2563b', N'CL004', N'Da l?n', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
GO
INSERT [dbo].[ChucVu] ([id], [maChucVu], [tenChucVu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'e321e58c-6231-4f6d-b755-7a733e542308', N'CV1', N'Qu?n lý', CAST(N'2024-09-01' AS Date), NULL, 1)
INSERT [dbo].[ChucVu] ([id], [maChucVu], [tenChucVu], [ngayTao], [ngaySua], [trangThai]) VALUES (N'e22fa56e-8c41-418c-8609-a90983912748', N'CV2', N'Nhân Viên', CAST(N'2024-09-01' AS Date), NULL, 1)
GO
INSERT [dbo].[DanhMuc] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'9f6c2232-980b-4879-8e2f-1a9be664badf', N'DM010', N'Giày búp bê n?', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[DanhMuc] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'e56f2c68-a85d-43a1-98fd-3ebb4843e522', N'DM005', N'Giày th? thao nam', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[DanhMuc] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'63799b69-6ef3-4b8c-bc68-46524398ee9b', N'DM002', N'Sneaker n?', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[DanhMuc] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'c3cb3c75-2971-4065-8a94-5f3787d3b53d', N'DM004', N'Boots n?', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[DanhMuc] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'291898e2-e7cc-4788-98fd-6a09864bb75d', N'DM003', N'Boots nam', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[DanhMuc] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'3d05b06d-f424-4114-b217-73dc8768bbde', N'DM007', N'Giày cao gót n?', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[DanhMuc] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'49ddb840-053d-4181-bba5-8a2f1b6e6b74', N'DM001', N'Sneaker nam', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[DanhMuc] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'30fa9b3d-cd05-4dcd-babc-935332134225', N'DM008', N'Giày lu?i nam', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[DanhMuc] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'c17b9b7b-6b85-4445-ad0d-a038d2f56ae5', N'DM006', N'Giày th? thao n?', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[DanhMuc] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'805ec73b-a8fc-4317-8200-a28acb2e18fd', N'DM009', N'Giày sandal n?', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
GO
INSERT [dbo].[hang] ([idHang], [maHang], [tenHang], [ngayTao], [ngaySua], [trangThai]) VALUES (N'd47bdd63-d35b-44a8-8e80-0087150ba97f', N'H005', N'Converse', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[hang] ([idHang], [maHang], [tenHang], [ngayTao], [ngaySua], [trangThai]) VALUES (N'457a03bb-b177-49ba-853f-2eb0c95a3f6f', N'H003', N'Puma', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[hang] ([idHang], [maHang], [tenHang], [ngayTao], [ngaySua], [trangThai]) VALUES (N'0d1b2817-2d01-45d4-b991-390e9aa03564', N'H009', N'Under Armour', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[hang] ([idHang], [maHang], [tenHang], [ngayTao], [ngaySua], [trangThai]) VALUES (N'0eb6fca3-f055-437e-bd82-5f701249f737', N'H001', N'Nike', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[hang] ([idHang], [maHang], [tenHang], [ngayTao], [ngaySua], [trangThai]) VALUES (N'a41f4854-80d2-4cb1-abd7-62c0bbbe67aa', N'H010', N'Asics', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[hang] ([idHang], [maHang], [tenHang], [ngayTao], [ngaySua], [trangThai]) VALUES (N'2d869e02-273a-4c69-bd99-8cbcdb4290dc', N'H002', N'Adidas', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[hang] ([idHang], [maHang], [tenHang], [ngayTao], [ngaySua], [trangThai]) VALUES (N'43395fad-53f5-469c-b5b6-9dfbc0a8e3ab', N'H006', N'Vans', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[hang] ([idHang], [maHang], [tenHang], [ngayTao], [ngaySua], [trangThai]) VALUES (N'01457f71-33c3-4956-8c62-ae20aae15ecb', N'H008', N'Reebok', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[hang] ([idHang], [maHang], [tenHang], [ngayTao], [ngaySua], [trangThai]) VALUES (N'685e0973-2e04-42ef-88d6-eaf03329c7f9', N'H007', N'New Balance', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[hang] ([idHang], [maHang], [tenHang], [ngayTao], [ngaySua], [trangThai]) VALUES (N'c7b5edec-044a-4d5b-a8ba-fc1de560e19b', N'H004', N'Jordan', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
GO
INSERT [dbo].[HoaDon] ([ID], [maHoaDon], [idNhanVien], [idKhachHang], [ngayMua], [thanhTien], [idKhuyenMai], [GhiChu], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'62187a7c-0881-4068-9f20-31d140379c0b', N'HD003', N'edd72c0d-3aa6-4a04-bc04-0759752ee33e', N'06976f89-5d6d-4ade-913d-3b16c108f43c', CAST(N'2024-01-10' AS Date), CAST(300000 AS Decimal(20, 0)), N'6de92d11-e41e-4fa8-aa69-679cdf4e5a50', N'Khuy?n mãi s?n ph?m', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[HoaDon] ([ID], [maHoaDon], [idNhanVien], [idKhachHang], [ngayMua], [thanhTien], [idKhuyenMai], [GhiChu], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'f517bdfb-73e8-463f-928e-9d7848ff0659', N'HD001', N'd73eda44-52a1-4dfd-88ad-017d28b4e298', N'41d6fdcd-155e-4797-9286-2dc4853f897e', CAST(N'2024-01-01' AS Date), CAST(500000 AS Decimal(20, 0)), N'78662a4c-0bf4-498f-9387-164b7dc42cb3', N'Mua hàng ngày d?u nam', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[HoaDon] ([ID], [maHoaDon], [idNhanVien], [idKhachHang], [ngayMua], [thanhTien], [idKhuyenMai], [GhiChu], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'f921fde0-ac93-4420-ba4e-c9642ed75e6e', N'HD004', N'db3eb2ad-34b9-4ec2-b7a4-09be0d22c055', N'08fc6e2a-2d73-493c-a014-569c53a9f096', CAST(N'2024-01-15' AS Date), CAST(1000000 AS Decimal(20, 0)), N'f06ffab4-4102-4fe7-80db-936a20416c74', N'Hóa don l?n', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[HoaDon] ([ID], [maHoaDon], [idNhanVien], [idKhachHang], [ngayMua], [thanhTien], [idKhuyenMai], [GhiChu], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'29f33052-5a51-4dab-91dc-c964c5510aae', N'HD002', N'edd72c0d-3aa6-4a04-bc04-0759752ee33e', N'c91fec36-b3aa-41b2-b727-2f5a1442317f', CAST(N'2024-01-05' AS Date), CAST(750000 AS Decimal(20, 0)), N'a243a414-9689-46b4-b015-2f7dd32d2780', N'Khách hàng VIP', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
GO
INSERT [dbo].[KhachHang] ([ID], [maKhachHang], [loaiKhachHang], [tenKhachHang], [diaChi], [gioiTinh], [email], [sdt], [ngaySinh], [ngayThamGia], [tichDiem], [diemEXP], [ngayTao], [ngaySua], [trangThai]) VALUES (N'41d6fdcd-155e-4797-9286-2dc4853f897e', N'KH02', N'VIP', N'Tr?n Th?Binhf', N'456 Ðu?ng XYZ', N'N?', N'tranthib@email.com', NULL, CAST(N'1995-05-10' AS Date), CAST(N'2022-12-01' AS Date), 500, 200, CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[KhachHang] ([ID], [maKhachHang], [loaiKhachHang], [tenKhachHang], [diaChi], [gioiTinh], [email], [sdt], [ngaySinh], [ngayThamGia], [tichDiem], [diemEXP], [ngayTao], [ngaySua], [trangThai]) VALUES (N'c91fec36-b3aa-41b2-b727-2f5a1442317f', N'KH08', N'VIP', N'Vu Th? Huy?n', N'555 Ðu?ng PQR', N'N?', N'vuthih@email.com', NULL, CAST(N'1989-12-03' AS Date), CAST(N'2024-03-10' AS Date), 800, 400, CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[KhachHang] ([ID], [maKhachHang], [loaiKhachHang], [tenKhachHang], [diaChi], [gioiTinh], [email], [sdt], [ngaySinh], [ngayThamGia], [tichDiem], [diemEXP], [ngayTao], [ngaySua], [trangThai]) VALUES (N'06976f89-5d6d-4ade-913d-3b16c108f43c', N'KH06', N'Thành viên', N'Mai Th? Chung', N'333 Ðu?ng UVW', N'N?', N'maithif@email.com', NULL, CAST(N'1998-04-12' AS Date), CAST(N'2022-11-11' AS Date), 400, 150, CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[KhachHang] ([ID], [maKhachHang], [loaiKhachHang], [tenKhachHang], [diaChi], [gioiTinh], [email], [sdt], [ngaySinh], [ngayThamGia], [tichDiem], [diemEXP], [ngayTao], [ngaySua], [trangThai]) VALUES (N'08fc6e2a-2d73-493c-a014-569c53a9f096', N'KH10', N'Thu?ng', N'Tr?n Th? Khuyên', N'777 Ðu?ng STU', N'N?', N'tranthik@email.com', NULL, CAST(N'1991-11-08' AS Date), CAST(N'2022-09-15' AS Date), 250, 100, CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[KhachHang] ([ID], [maKhachHang], [loaiKhachHang], [tenKhachHang], [diaChi], [gioiTinh], [email], [sdt], [ngaySinh], [ngayThamGia], [tichDiem], [diemEXP], [ngayTao], [ngaySua], [trangThai]) VALUES (N'7b913f39-180b-440e-9f54-69414b5b7966', N'KH03', N'Thành viên', N'Lê Van Chi?n', N'789 Ðu?ng MNO', N'Nam', N'levanc@email.com', NULL, CAST(N'1988-12-20' AS Date), CAST(N'2023-05-15' AS Date), 300, 100, CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[KhachHang] ([ID], [maKhachHang], [loaiKhachHang], [tenKhachHang], [diaChi], [gioiTinh], [email], [sdt], [ngaySinh], [ngayThamGia], [tichDiem], [diemEXP], [ngayTao], [ngaySua], [trangThai]) VALUES (N'e49b07fd-e012-4370-a5eb-8cc312d8b26a', N'KH01', N'Thu?ng', N'Nguy?n Van Nam', N'123 Ðu?ng ABC', N'Nam', N'nguyenvana@email.com', NULL, CAST(N'1990-01-01' AS Date), CAST(N'2023-01-01' AS Date), 100, 50, CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[KhachHang] ([ID], [maKhachHang], [loaiKhachHang], [tenKhachHang], [diaChi], [gioiTinh], [email], [sdt], [ngaySinh], [ngayThamGia], [tichDiem], [diemEXP], [ngayTao], [ngaySua], [trangThai]) VALUES (N'76cde3ae-44b9-472f-8522-b1cfa68b052a', N'KH05', N'VIP', N'Hoàng Van anh', N'222 Ðu?ng QRS', N'Nam', N'hoangvane@email.com', NULL, CAST(N'1985-09-30' AS Date), CAST(N'2023-09-20' AS Date), 700, 300, CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[KhachHang] ([ID], [maKhachHang], [loaiKhachHang], [tenKhachHang], [diaChi], [gioiTinh], [email], [sdt], [ngaySinh], [ngayThamGia], [tichDiem], [diemEXP], [ngayTao], [ngaySua], [trangThai]) VALUES (N'b688d28e-679f-4a98-9ee9-c5b1ef45d042', N'KH09', N'Thành viên', N'Nguy?n Van Anh', N'666 Ðu?ng LMN', N'Nam', N'nguyenvani@email.com', NULL, CAST(N'1996-02-20' AS Date), CAST(N'2023-10-25' AS Date), 600, 250, CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[KhachHang] ([ID], [maKhachHang], [loaiKhachHang], [tenKhachHang], [diaChi], [gioiTinh], [email], [sdt], [ngaySinh], [ngayThamGia], [tichDiem], [diemEXP], [ngayTao], [ngaySua], [trangThai]) VALUES (N'4ea179b9-d117-4932-b2bd-d05cdb1d46fc', N'KH07', N'Thu?ng', N'Ð?ng Van Giang', N'444 Ðu?ng XYZ', N'Nam', N'dangvang@email.com', NULL, CAST(N'1993-08-18' AS Date), CAST(N'2023-07-30' AS Date), 150, 70, CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[KhachHang] ([ID], [maKhachHang], [loaiKhachHang], [tenKhachHang], [diaChi], [gioiTinh], [email], [sdt], [ngaySinh], [ngayThamGia], [tichDiem], [diemEXP], [ngayTao], [ngaySua], [trangThai]) VALUES (N'16c2f1ac-6dd0-43d2-88b5-e31795d1a15a', N'KH04', N'Thu?ng', N'Ph?m Th? Dung', N'111 Ðu?ng KLM', N'N?', N'phamthid@email.com', NULL, CAST(N'1992-06-25' AS Date), CAST(N'2024-01-05' AS Date), 200, 80, CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
GO
INSERT [dbo].[KhuyenMai] ([Id], [maKhuyenMai], [tenKhuyenMai], [giaTri], [giamToiDa], [ngayBatDau], [ngayKetThuc], [hinhThucApDung], [apDungGiamGia], [loaiGiamGia], [ngayTao], [ngaySua], [trangThai]) VALUES (N'78662a4c-0bf4-498f-9387-164b7dc42cb3', N'KM04', N'Gi?m 30% ', CAST(30 AS Decimal(20, 0)), CAST(0 AS Decimal(20, 0)), CAST(N'2024-04-15' AS Date), CAST(N'2024-04-30' AS Date), N'Hóa don c? th?', N'1', N'Ph?n tram', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[KhuyenMai] ([Id], [maKhuyenMai], [tenKhuyenMai], [giaTri], [giamToiDa], [ngayBatDau], [ngayKetThuc], [hinhThucApDung], [apDungGiamGia], [loaiGiamGia], [ngayTao], [ngaySua], [trangThai]) VALUES (N'a243a414-9689-46b4-b015-2f7dd32d2780', N'KM05', N'Free ship', CAST(0 AS Decimal(20, 0)), CAST(0 AS Decimal(20, 0)), CAST(N'2024-05-01' AS Date), CAST(N'2024-05-10' AS Date), N'Phí v?n chuy?n', N'1', N'Mi?n phí v?n chuy?n', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[KhuyenMai] ([Id], [maKhuyenMai], [tenKhuyenMai], [giaTri], [giamToiDa], [ngayBatDau], [ngayKetThuc], [hinhThucApDung], [apDungGiamGia], [loaiGiamGia], [ngayTao], [ngaySua], [trangThai]) VALUES (N'6de92d11-e41e-4fa8-aa69-679cdf4e5a50', N'KM03', N'Mua 2 t?ng 1', CAST(0 AS Decimal(20, 0)), CAST(0 AS Decimal(20, 0)), CAST(N'2024-03-01' AS Date), CAST(N'2024-03-31' AS Date), N'S?n ph?m c? th?', N'1', N'Khuy?n mãi s?n ph?m', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[KhuyenMai] ([Id], [maKhuyenMai], [tenKhuyenMai], [giaTri], [giamToiDa], [ngayBatDau], [ngayKetThuc], [hinhThucApDung], [apDungGiamGia], [loaiGiamGia], [ngayTao], [ngaySua], [trangThai]) VALUES (N'f06ffab4-4102-4fe7-80db-936a20416c74', N'KM01', N'Gi?m giá 20%', CAST(20 AS Decimal(20, 0)), CAST(50000 AS Decimal(20, 0)), CAST(N'2024-01-10' AS Date), CAST(N'2024-01-20' AS Date), N'T?t c? s?n ph?m', N'1', N'Ph?n tram', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[KhuyenMai] ([Id], [maKhuyenMai], [tenKhuyenMai], [giaTri], [giamToiDa], [ngayBatDau], [ngayKetThuc], [hinhThucApDung], [apDungGiamGia], [loaiGiamGia], [ngayTao], [ngaySua], [trangThai]) VALUES (N'ff290469-bc91-432b-9fbe-9be49ac4793b', N'KM02', N'Mã gi?m giá 50K', CAST(0 AS Decimal(20, 0)), CAST(50000 AS Decimal(20, 0)), CAST(N'2024-02-05' AS Date), CAST(N'2024-02-15' AS Date), N'S?n ph?m c? th?', N'1', N'S? ti?n', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
GO
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'16e6e1f3-0f7f-4702-90e1-0fc2bef5f431', N'MS002', N'Tr?ng', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'd3d1ba51-f324-4ef1-8c72-431af43094e6', N'MS008', N'H?ng', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'07cc3fcd-031f-4bcb-b115-478da87cc081', N'MS007', N'Cam', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'eb64c8a3-adb0-4492-8293-4b6c8b5a8058', N'MS009', N'Tím', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'33ea345d-9406-4851-a77f-62c053041498', N'MS001', N'Ðen', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'5e1ab24e-2ad6-4bec-a7ce-632e83a5d051', N'MS010', N'Nâu', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'3c42e4d4-c5c3-478e-b305-a60a39eec374', N'MS004', N'Xanh lá', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'df061405-e1df-41fa-8ce5-c2596bdbcaef', N'MS006', N'Vàng', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'6805982f-c396-4fee-a06c-c3ede4cb7bd9', N'MS003', N'Ð?', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'64d88806-a407-42a8-b104-c96fc534df16', N'MS005', N'Xanh duong', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
GO
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'd73eda44-52a1-4dfd-88ad-017d28b4e298', N'NV063', N'Nhân Viên 63', CAST(N'1955-06-22' AS Date), N'Nam', N'Ðà N?ng', N'0123456789', N'nv063@email.com', N'mk063', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv063.jpg', CAST(N'2023-11-19' AS Date), CAST(N'2023-09-17' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'edd72c0d-3aa6-4a04-bc04-0759752ee33e', N'NV019', N'Nhân Viên 19', CAST(N'1966-04-14' AS Date), N'Nam', N'Hu?', N'0123456789', N'nv019@email.com', N'mk019', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv019.jpg', CAST(N'2023-06-19' AS Date), CAST(N'2023-01-28' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'db3eb2ad-34b9-4ec2-b7a4-09be0d22c055', N'NV001', N'Nhân Viên 1', CAST(N'2014-12-12' AS Date), N'Nam', N'Hà N?i', N'0123456789', N'nv001@email.com', N'mk001', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv001.jpg', CAST(N'2023-10-05' AS Date), CAST(N'2023-01-23' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'a338691f-aa33-45b7-bbb3-0ac662f391ad', N'NV069', N'Nguyễn Đình Toàn', CAST(N'1991-09-17' AS Date), N'Nam', N'H? Chí Minh', N'0123456789', N'nv069@email.com', N'mk069', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv069.jpg', CAST(N'2023-02-16' AS Date), CAST(N'2023-04-08' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'1fba2016-2d94-487d-9209-0b9bb9374e34', N'NV012', N'Nguyễn Ngọc Diệp', CAST(N'2007-01-10' AS Date), N'N?', N'Ðà N?ng', N'0123456789', N'nv012@email.com', N'mk012', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv012.jpg', CAST(N'2023-08-18' AS Date), CAST(N'2023-04-01' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'32116631-cd6a-4bed-9833-0e75a0de1ccd', N'NV024', N'Nguyễn Thị Nga', CAST(N'1968-05-01' AS Date), N'N?', N'H?i An', N'0123456789', N'nv024@email.com', N'mk024', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv024.jpg', CAST(N'2023-04-26' AS Date), CAST(N'2023-05-09' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'6ba46746-6c71-42e7-a11d-0fb6c16711dd', N'NV060', N'Nguyễn Thị Hằng', CAST(N'1971-06-05' AS Date), N'N?', N'Hà N?i', N'0123456789', N'nv060@email.com', N'mk060', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv060.jpg', CAST(N'2023-02-26' AS Date), CAST(N'2023-03-07' AS Date), 0)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'08cf3dec-2f95-4cbb-b131-1046e97a4eea', N'NV046', N'Nguyễn Thị Hoa', CAST(N'1943-12-29' AS Date), N'N?', N'Ðà N?ng', N'0123456789', N'nv046@email.com', N'mk046', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv046.jpg', CAST(N'2023-11-18' AS Date), CAST(N'2023-04-09' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'89ed74ff-6591-4b67-b992-10741b33d02c', N'NV097', N'Ngô trung quân', CAST(N'1969-11-21' AS Date), N'Nam', N'Ðà N?ng', N'0123456789', N'nv097@email.com', N'mk097', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv097.jpg', CAST(N'2023-03-05' AS Date), CAST(N'2023-04-08' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'73f8ad20-2de6-419e-b42f-1236286f9556', N'NV011', N'Nguyên Tiến Luật', CAST(N'1930-08-09' AS Date), N'Nam', N'Ðà L?t', N'0123456789', N'nv011@email.com', N'mk011', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv011.jpg', CAST(N'2023-12-18' AS Date), CAST(N'2023-06-12' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'0b62fc19-cd3c-4294-9444-1478780a519e', N'NV099', N'Ngô Viết Honafg', CAST(N'1947-12-29' AS Date), N'Nam', N'Hà N?i', N'0123456789', N'nv099@email.com', N'mk099', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv099.jpg', CAST(N'2023-10-12' AS Date), CAST(N'2023-02-09' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'454d6542-9c40-4b8a-9f49-15c34f58359b', N'NV076', N'Phùng thị Thủy', CAST(N'1976-02-21' AS Date), N'N?', N'Vung Tàu', N'0123456789', N'nv076@email.com', N'mk076', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv076.jpg', CAST(N'2023-12-30' AS Date), CAST(N'2023-05-23' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'ca8d5148-92b1-4b3e-bff5-1899e1840fac', N'NV015', N'Phùng Văn Nam', CAST(N'1994-01-03' AS Date), N'Nam', N'H?i Phòng', N'0123456789', N'nv015@email.com', N'mk015', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv015.jpg', CAST(N'2023-12-18' AS Date), CAST(N'2023-02-15' AS Date), 0)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'c8542d96-0a98-4004-a7c7-212e274a262b', N'NV080', N'Đặng Thị Hải', CAST(N'1980-10-06' AS Date), N'N?', N'Nha Trang', N'0123456789', N'nv080@email.com', N'mk080', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv080.jpg', CAST(N'2023-01-14' AS Date), CAST(N'2023-12-20' AS Date), 0)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'8f6890ed-7da9-4755-a5ab-2154d033e5b1', N'NV086', N'Ngô Thị Vân', CAST(N'1983-07-27' AS Date), N'N?', N'Ðà N?ng', N'0123456789', N'nv086@email.com', N'mk086', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv086.jpg', CAST(N'2023-12-19' AS Date), CAST(N'2023-11-27' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'e1a0f62f-e849-412c-bc8f-2bb9c4d11c50', N'NV082', N'Nguyên Ngọc An', CAST(N'1999-03-23' AS Date), N'N?', N'H?i Phòng', N'0123456789', N'nv082@email.com', N'mk082', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv082.jpg', CAST(N'2023-08-31' AS Date), CAST(N'2023-02-24' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'0385340c-8211-4196-9ab5-2c305924aafc', N'NV044', N'Nguyên Thị Nhung', CAST(N'1955-08-06' AS Date), N'N?', N'Ðà L?t', N'0123456789', N'nv044@email.com', N'mk044', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv044.jpg', CAST(N'2023-09-24' AS Date), CAST(N'2023-09-02' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'86bea9e9-62f1-4a0a-97bb-3169d67e2695', N'NV073', N'Ngô Viết Na', CAST(N'1975-08-30' AS Date), N'Nam', N'H? Chí Minh', N'0123456789', N'nv073@email.com', N'mk073', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv073.jpg', CAST(N'2023-09-26' AS Date), CAST(N'2023-07-19' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'8b3cbef1-57a2-46fc-ac88-338d5281e3a4', N'NV056', N'Trần Thị Hảo', CAST(N'1948-06-22' AS Date), N'N?', N'Hu?', N'0123456789', N'nv056@email.com', N'mk056', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv056.jpg', CAST(N'2023-03-25' AS Date), CAST(N'2023-11-24' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'cc9f8168-db00-4720-b68b-39cd90cfc69f', N'NV089', N'Nguyễn Văn Cừ', CAST(N'1928-05-15' AS Date), N'Nam', N'C?n Tho', N'0123456789', N'nv089@email.com', N'mk089', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv089.jpg', CAST(N'2023-04-09' AS Date), CAST(N'2023-02-05' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'9e5219e5-dbf1-4354-8566-3bb24a6713f7', N'NV094', N'Ngô Thanh Hà', CAST(N'1976-08-04' AS Date), N'N?', N'Nha Trang', N'0123456789', N'nv094@email.com', N'mk094', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv094.jpg', CAST(N'2023-10-24' AS Date), CAST(N'2023-04-01' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'cfe12466-189e-478a-8a75-3bc1edb7834d', N'NV022', N'Nguyễn Thanh Tâm', CAST(N'2019-09-19' AS Date), N'N?', N'Vung Tàu', N'0123456789', N'nv022@email.com', N'mk022', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv022.jpg', CAST(N'2023-07-24' AS Date), CAST(N'2023-02-10' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'd6fe9f28-631a-4505-a8e9-3de820cf4abc', N'NV025', N'Ngô Văn Nam', CAST(N'2002-10-25' AS Date), N'Nam', N'Hu?', N'0123456789', N'nv025@email.com', N'mk025', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv025.jpg', CAST(N'2023-12-19' AS Date), CAST(N'2023-06-08' AS Date), 0)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'9fb4f89d-f472-4fdd-b52c-3e39b661314e', N'NV016', N'Ngô Trung Quân', CAST(N'1929-07-05' AS Date), N'N?', N'H? Chí Minh', N'0123456789', N'nv016@email.com', N'mk016', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv016.jpg', CAST(N'2023-07-16' AS Date), CAST(N'2023-10-22' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'5eb65df8-e283-47b5-a2b7-4965b95b1003', N'NV039', N'Ngô Nguyễn Viết Hải', CAST(N'1960-07-13' AS Date), N'Nam', N'H?i An', N'0123456789', N'nv039@email.com', N'mk039', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv039.jpg', CAST(N'2023-01-30' AS Date), CAST(N'2023-11-13' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'28d21553-3663-4de4-90a1-49fc97d343eb', N'NV026', N'Trầng Thị Tâm', CAST(N'2017-09-08' AS Date), N'N?', N'Hà N?i', N'0123456789', N'nv026@email.com', N'mk026', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv026.jpg', CAST(N'2023-07-24' AS Date), CAST(N'2023-03-27' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'a7babaeb-6e0d-48ae-8dd6-4a6a7294c6a5', N'NV038', N'Nguyễn Viết Hải', CAST(N'1927-07-28' AS Date), N'N?', N'H?i An', N'0123456789', N'nv038@email.com', N'mk038', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv038.jpg', CAST(N'2023-05-10' AS Date), CAST(N'2023-09-12' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'2d9348ca-30d7-4230-9c59-4c0d99780f4e', N'NV070', N'Ngô Nguyễn Viết Na', CAST(N'1961-01-26' AS Date), N'N?', N'Ðà L?t', N'0123456789', N'nv070@email.com', N'mk070', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv070.jpg', CAST(N'2023-02-16' AS Date), CAST(N'2023-08-17' AS Date), 0)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'662b4d1d-3719-48ee-a52c-4da64b03770e', N'NV051', N'Trần Văn Thắng', CAST(N'1961-09-16' AS Date), N'Nam', N'Ðà L?t', N'0123456789', N'nv051@email.com', N'mk051', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv051.jpg', CAST(N'2023-09-24' AS Date), CAST(N'2023-12-02' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'5b924022-4ea1-4965-8ed2-4f7f79f11be5', N'NV049', N'Nguyễn Thanh Tâm', CAST(N'2018-03-27' AS Date), N'Nam', N'Ðà N?ng', N'0123456789', N'nv049@email.com', N'mk049', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv049.jpg', CAST(N'2023-01-14' AS Date), CAST(N'2023-04-24' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'6b3dd581-3472-4d85-9473-5140020f6fa8', N'NV087', N'Nguyễn Đăng Việt', CAST(N'1927-08-09' AS Date), N'Nam', N'H?i An', N'0123456789', N'nv087@email.com', N'mk087', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv087.jpg', CAST(N'2023-02-11' AS Date), CAST(N'2023-04-10' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'e94f760d-805d-4e31-9476-51923af8b193', N'NV031', N'Trần Đăng Khoa', CAST(N'2017-05-28' AS Date), N'Nam', N'Vung Tàu', N'0123456789', N'nv031@email.com', N'mk031', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv031.jpg', CAST(N'2023-10-20' AS Date), CAST(N'2023-12-24' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'b778df30-cfe6-4907-abcd-54300887e447', N'NV091', N'Trần VIết Trung', CAST(N'2015-05-29' AS Date), N'Nam', N'H?i Phòng', N'0123456789', N'nv091@email.com', N'mk091', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv091.jpg', CAST(N'2023-07-15' AS Date), CAST(N'2023-05-18' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'bb2bef21-3755-4a3c-91bf-5e8834ef5fed', N'NV075', N'TRần Trung QUốc', CAST(N'1973-10-06' AS Date), N'Nam', N'Hà N?i', N'0123456789', N'nv075@email.com', N'mk075', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv075.jpg', CAST(N'2023-04-30' AS Date), CAST(N'2023-03-03' AS Date), 0)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'74d9c162-26f2-47dd-ab18-62c1f9f85924', N'NV005', N'Ngô Viết Nam', CAST(N'1991-02-15' AS Date), N'Nam', N'H? Chí Minh', N'0123456789', N'nv005@email.com', N'mk005', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv005.jpg', CAST(N'2023-11-26' AS Date), CAST(N'2023-09-26' AS Date), 0)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'032f42d6-bbb9-485e-9c5d-68ce656d0774', N'NV018', N'Trầng thì Tâm', CAST(N'2012-01-27' AS Date), N'N?', N'Vung Tàu', N'0123456789', N'nv018@email.com', N'mk018', N'e22fa56e-8c41-418c-8609-a90983912748', N'hinh_nv018.jpg', CAST(N'2023-12-03' AS Date), CAST(N'2023-03-10' AS Date), 1)
INSERT [dbo].[NhanVien] ([Id], [maNhanVien], [hoVaTen], [ngaySinh], [gioiTinh], [diaChi], [sdt], [email], [matKhau], [IDCV], [Hinh], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'67c303ab-2ac6-4cb8-a47c-91cafdd409b4', N'NV100', N'Ngô Van Tình', CAST(N'2003-08-08' AS Date), N'Nam', N'Hà N?i', N'123123', N'Tinh@gmail.com', N'123', N'e321e58c-6231-4f6d-b755-7a733e542308', N'hinh1.jpg', CAST(N'2023-09-01' AS Date), NULL, 1)
GO
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'6178171d-f5c1-4c10-84e5-02fa7fe74b44', N'SP022', N'Givenchy Jaw Low Sneaker', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'3b65cf53-d27f-4cd8-8481-054329ee1607', N'SP003', N'Converse Chuck Taylor All Star', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'9979bf5d-6c76-412f-9519-09ff7516521a', N'SP025', N'Balmain B-Bold Sneaker', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'86478a05-ac4a-4ab3-b9b3-14da798765e2', N'SP008', N'Reebok Classic Leather', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'f6469713-c4b2-4113-b4b0-1801c93be60d', N'SP018', N'Christian Louboutin Red Runner', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'62a8d46d-d9fe-4781-819e-291bd33265eb', N'SP014', N'Balenciaga Triple S', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'2451da25-ba67-4900-abc2-29c4f8491377', N'SP002', N'Adidas Superstar', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'768f42e9-428a-4e12-831c-2bada8c39bd3', N'SP027', N'Prada Americas Cup Sneaker', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'94d757f4-0f96-42cc-b9f1-3c628af3b6cc', N'SP019', N'Dior B23 High-Top Sneaker', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'0d927487-a795-4287-ad8a-3c64cfd64fba', N'SP001', N'Nike Air Force 1', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'666bb86b-4258-4053-8066-3cc9f619f06f', N'SP020', N'Prada Cloudbust Sneaker', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'35126d52-a8e5-4fc6-9998-44528667978c', N'SP026', N'Valentino Garavani Bounce Sneaker', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'd1331f7e-c9b8-41f6-b464-62ccbd9989a9', N'SP028', N'Fendi FF Sneaker', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'a2f8c7a8-a83b-4a77-88c5-6bb45f6796a2', N'SP023', N'Burberry Arthur Sneaker', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'8fe5b1ab-b4b0-43c8-84dd-6c06146732bc', N'SP004', N'Vans Old Skool', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'4f751c7a-c0ba-4047-b6d6-70459c91a718', N'SP013', N'Under Armour Curry', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'1456bc5e-19d7-49c9-941f-8d91e5950a0c', N'SP030', N'Hermès Trail Sneaker', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'f93a83fb-1688-464d-9628-93215beab230', N'SP021', N'Versace Chain Reaction Sneaker', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'918bc6cd-58a2-4e6e-a07f-9bdbcc05187f', N'SP016', N'Gucci Ace Sneaker', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'adc485d4-b1e2-4899-8b31-9f1cc6bcf0e4', N'SP024', N'Alexander McQueen Oversized Sneaker', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'77ce825d-576c-4ecd-aef0-9fdad9255101', N'SP006', N'New Balance 574', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'f8586af2-6680-4b99-8ff0-aa6529aac71f', N'SP010', N'Asics Gel-Lyte III', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'2562ed83-7403-46c1-99b3-adff4de66d9a', N'SP005', N'Jordan 1', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'39dd7981-c0b0-456f-a58f-bce367616979', N'SP009', N'Yeezy Boost 350', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'e05ff2a6-aebd-410a-8ec1-c4d8437401ae', N'SP011', N'Saucony Jazz Original', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'3322f213-8122-4b45-b727-d68709eca999', N'SP012', N'Fila Disruptor', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'cbb76315-2d24-4dce-8dc0-e45bd33c1135', N'SP015', N'Off-White x Nike Blazer', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'5ff67897-2dd9-46cb-aae3-e68373f75476', N'SP017', N'Louis Vuitton Run Away Sneaker', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'9fed674a-6272-4cd9-8ae8-e9a0f4890833', N'SP007', N'Puma Suede Classic', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[SanPham] ([Id], [maSanPham], [tenSanPham], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'841f6923-b1f2-4bd9-a572-effc9c2a9b94', N'SP029', N'Givenchy Spectre Runner', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
GO
INSERT [dbo].[Size] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'4a61ee4e-44e0-4864-a3f1-0f0649cbbbcb', N'SZ41', N'sz41', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[Size] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'df4aa857-c453-4b97-8d28-28913f9ccbe3', N'SZ38', N'sz38', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[Size] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'e6cbbb31-1a38-43c8-9da2-32768579f64c', N'SZ43', N'sz43', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[Size] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'4377e97c-0b4a-4d72-b7aa-882913293adc', N'SZ37', N'sz37', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[Size] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'601021da-093e-413c-a21b-8b43563caf27', N'SZ39', N'sz39', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[Size] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'668284ce-99a6-408b-b21b-917eeda510f1', N'SZ44', N'sz44', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[Size] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'2941766a-f1ca-4cc4-8961-c1224d48cdc7', N'SZ36', N'sz36', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[Size] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'49359d49-b650-4aa8-91e8-d7c66d706511', N'SZ42', N'sz42', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
INSERT [dbo].[Size] ([Id], [Ma], [Ten], [NgayTao], [NgaySua], [TrangThai]) VALUES (N'fd259cd9-055b-4789-a71a-f4460fb738fc', N'SZ40', N'sz40', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-09' AS Date), 1)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ChatLieu__3214CC9E56BA55EC]    Script Date: 09/01/2024 1:29:04 CH ******/
ALTER TABLE [dbo].[ChatLieu] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ChucVu__6E42BCD8F539D363]    Script Date: 09/01/2024 1:29:04 CH ******/
ALTER TABLE [dbo].[ChucVu] ADD UNIQUE NONCLUSTERED 
(
	[maChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DanhMuc__3214CC9EA7D2C3C5]    Script Date: 09/01/2024 1:29:04 CH ******/
ALTER TABLE [dbo].[DanhMuc] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__hang__C28CA3309C5B08FB]    Script Date: 09/01/2024 1:29:04 CH ******/
ALTER TABLE [dbo].[hang] ADD UNIQUE NONCLUSTERED 
(
	[maHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__HoaDon__026B4D9BA95C7B82]    Script Date: 09/01/2024 1:29:04 CH ******/
ALTER TABLE [dbo].[HoaDon] ADD UNIQUE NONCLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__0CCB3D488D5BA020]    Script Date: 09/01/2024 1:29:04 CH ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[maKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhuyenMa__87BEDDE8A9ABF501]    Script Date: 09/01/2024 1:29:04 CH ******/
ALTER TABLE [dbo].[KhuyenMai] ADD UNIQUE NONCLUSTERED 
(
	[maKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__MauSac__3214CC9EE8E73206]    Script Date: 09/01/2024 1:29:04 CH ******/
ALTER TABLE [dbo].[MauSac] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhanVien__BDDEF20CBA3841A9]    Script Date: 09/01/2024 1:29:04 CH ******/
ALTER TABLE [dbo].[NhanVien] ADD UNIQUE NONCLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__SanPham__5B439C42C0B01903]    Script Date: 09/01/2024 1:29:04 CH ******/
ALTER TABLE [dbo].[SanPham] ADD UNIQUE NONCLUSTERED 
(
	[maSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Size__3214CC9EF600511E]    Script Date: 09/01/2024 1:29:04 CH ******/
ALTER TABLE [dbo].[Size] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChatLieu] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChatLieu] ADD  DEFAULT (NULL) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ChatLieu] ADD  DEFAULT (NULL) FOR [NgaySua]
GO
ALTER TABLE [dbo].[ChatLieu] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  DEFAULT (NULL) FOR [soLuong]
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  DEFAULT ((0)) FOR [donGia]
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  DEFAULT (NULL) FOR [ngayBan]
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  DEFAULT (NULL) FOR [ngayTao]
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  DEFAULT (NULL) FOR [ngaySua]
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  DEFAULT ((0)) FOR [trangThai]
GO
ALTER TABLE [dbo].[ChiTietSanPham] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChiTietSanPham] ADD  DEFAULT ((0)) FOR [giaNhap]
GO
ALTER TABLE [dbo].[ChiTietSanPham] ADD  DEFAULT ((0)) FOR [giaBan]
GO
ALTER TABLE [dbo].[ChiTietSanPham] ADD  DEFAULT (NULL) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ChiTietSanPham] ADD  DEFAULT (NULL) FOR [NgaySua]
GO
ALTER TABLE [dbo].[ChiTietSanPham] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[ChucVu] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[ChucVu] ADD  DEFAULT (NULL) FOR [tenChucVu]
GO
ALTER TABLE [dbo].[ChucVu] ADD  DEFAULT (NULL) FOR [ngayTao]
GO
ALTER TABLE [dbo].[ChucVu] ADD  DEFAULT (NULL) FOR [ngaySua]
GO
ALTER TABLE [dbo].[ChucVu] ADD  DEFAULT ((0)) FOR [trangThai]
GO
ALTER TABLE [dbo].[DanhMuc] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[DanhMuc] ADD  DEFAULT (NULL) FOR [NgayTao]
GO
ALTER TABLE [dbo].[DanhMuc] ADD  DEFAULT (NULL) FOR [NgaySua]
GO
ALTER TABLE [dbo].[DanhMuc] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[hang] ADD  DEFAULT (newid()) FOR [idHang]
GO
ALTER TABLE [dbo].[hang] ADD  DEFAULT (NULL) FOR [ngayTao]
GO
ALTER TABLE [dbo].[hang] ADD  DEFAULT (NULL) FOR [ngaySua]
GO
ALTER TABLE [dbo].[hang] ADD  DEFAULT ((0)) FOR [trangThai]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [ngayMua]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [thanhTien]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [GhiChu]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [NgayTao]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [NgaySua]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [loaiKhachHang]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [tenKhachHang]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [diaChi]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [gioiTinh]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [sdt]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [ngaySinh]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [ngayThamGia]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT ((0)) FOR [tichDiem]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT ((0)) FOR [diemEXP]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [ngayTao]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [ngaySua]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT ((0)) FOR [trangThai]
GO
ALTER TABLE [dbo].[KhuyenMai] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[KhuyenMai] ADD  DEFAULT ((0)) FOR [giaTri]
GO
ALTER TABLE [dbo].[KhuyenMai] ADD  DEFAULT ((0)) FOR [giamToiDa]
GO
ALTER TABLE [dbo].[KhuyenMai] ADD  DEFAULT (NULL) FOR [ngayBatDau]
GO
ALTER TABLE [dbo].[KhuyenMai] ADD  DEFAULT (NULL) FOR [ngayKetThuc]
GO
ALTER TABLE [dbo].[KhuyenMai] ADD  DEFAULT (NULL) FOR [ngayTao]
GO
ALTER TABLE [dbo].[KhuyenMai] ADD  DEFAULT (NULL) FOR [ngaySua]
GO
ALTER TABLE [dbo].[KhuyenMai] ADD  DEFAULT ((0)) FOR [trangThai]
GO
ALTER TABLE [dbo].[MauSac] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[MauSac] ADD  DEFAULT (NULL) FOR [NgayTao]
GO
ALTER TABLE [dbo].[MauSac] ADD  DEFAULT (NULL) FOR [NgaySua]
GO
ALTER TABLE [dbo].[MauSac] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [hoVaTen]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [ngaySinh]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [gioiTinh]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [diaChi]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [sdt]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [NgayTao]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [NgaySua]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT (NULL) FOR [NgayTao]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT (NULL) FOR [NgaySua]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[Size] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Size] ADD  DEFAULT (NULL) FOR [NgayTao]
GO
ALTER TABLE [dbo].[Size] ADD  DEFAULT (NULL) FOR [NgaySua]
GO
ALTER TABLE [dbo].[Size] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([idHoaDon])
REFERENCES [dbo].[HoaDon] ([ID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_ChiTietSanPham] FOREIGN KEY([idChiTietSanPham])
REFERENCES [dbo].[ChiTietSanPham] ([Id])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_ChiTietSanPham]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD FOREIGN KEY([ChatLieu])
REFERENCES [dbo].[ChatLieu] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD FOREIGN KEY([DanhMuc])
REFERENCES [dbo].[DanhMuc] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD FOREIGN KEY([idKhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD FOREIGN KEY([idSanPham])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD FOREIGN KEY([MauSac])
REFERENCES [dbo].[MauSac] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD FOREIGN KEY([hang])
REFERENCES [dbo].[hang] ([idHang])
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD FOREIGN KEY([Size])
REFERENCES [dbo].[Size] ([Id])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([idKhachHang])
REFERENCES [dbo].[KhachHang] ([ID])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([idKhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([Id])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([idNhanVien])
REFERENCES [dbo].[NhanVien] ([Id])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([IDCV])
REFERENCES [dbo].[ChucVu] ([id])
GO
USE [master]
GO
ALTER DATABASE [UngDungBanGiaySneaker] SET  READ_WRITE 
GO
