USE [master]
GO

/****** Object:  Database [BTL_PTPMHDV_NguyenThuyHien]    Script Date: 9/23/2023 10:41:10 AM ******/
CREATE DATABASE [BTL_PTPMHDV_NguyenThuyHien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BTL_PTPMHDV_NguyenThuyHien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.AYER\MSSQL\DATA\BTL_PTPMHDV_NguyenThuyHien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BTL_PTPMHDV_NguyenThuyHien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.AYER\MSSQL\DATA\BTL_PTPMHDV_NguyenThuyHien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BTL_PTPMHDV_NguyenThuyHien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET ARITHABORT OFF 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET  ENABLE_BROKER 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET RECOVERY FULL 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET  MULTI_USER 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET DB_CHAINING OFF 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET QUERY_STORE = OFF
GO

ALTER DATABASE [BTL_PTPMHDV_NguyenThuyHien] SET  READ_WRITE 
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  Table [dbo].[QuanTri]    Script Date: 9/23/2023 11:40:53 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[QuanTri](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](150) NULL,
	[diachi] [nvarchar](250) NULL,
	[gioitinh] [nvarchar](30) NULL,
	[email] [nvarchar](100) NULL,
	[taikhoan] [nvarchar](100) NULL,
	[matkhau] [nvarchar](100) NULL,
 CONSTRAINT [PK_QuanTri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  Table [dbo].[SanPham]    Script Date: 9/23/2023 11:41:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SanPham](
	[IDSP] [nvarchar](50) NOT NULL,
	[TenSP] [nvarchar](250) NULL,
	[GiaSP] [decimal](18, 0) NULL,
	[SoLuong] [int] NULL,
	[TrangThai] [nvarchar](100) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[IDSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  Table [dbo].[HoaDon]    Script Date: 9/23/2023 11:41:29 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[HoaDon](
	[IDHoaDon] [nvarchar](50) NOT NULL,
	[NgayTao] [datetime] NULL,
	[TongGia] [decimal](18, 0) NULL,
	[TenKH] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[Sdt] [nvarchar](50) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[IDHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  Table [dbo].[ChitietHoaDon]    Script Date: 9/23/2023 11:41:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ChitietHoaDon](
	[IDChiTietHoaDon] [nvarchar](50) NOT NULL,
	[IDHoaDon] [nvarchar](50) NULL,
	[IDSP] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[TongGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChitietHoaDon] PRIMARY KEY CLUSTERED 
(
	[IDChiTietHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_quantri_create]    Script Date: 9/28/2023 9:28:46 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_quantri_create](
@hoten nvarchar(150),
@diachi nvarchar(250),
@gioitinh nvarchar(30),
@email nvarchar(100),
@taikhoan nvarchar(100),
@matkhau nvarchar(100)
)
AS
    BEGIN
       insert into QuanTri(hoten, diachi, gioitinh, email, taikhoan, matkhau)
	   values(@hoten, @diachi, @gioitinh, @email, @taikhoan, @matkhau);
    END;
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_quantri_delete]    Script Date: 9/28/2023 9:39:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_quantri_delete]
(@ID int
)
AS
    BEGIN
		delete from QuanTri  where ID = @ID;
        SELECT '';
    END;
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_quantri_update]    Script Date: 9/28/2023 9:46:29 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_quantri_update]
(@id int,
@hoten nvarchar(150),
@diachi nvarchar(250),
@gioitinh nvarchar(30),
@email nvarchar(100),
@taikhoan nvarchar(100),
@matkhau nvarchar(100)
)
AS
    BEGIN
   update QuanTri set 
				hoten= @hoten,
				diachi= @diachi,
				gioitinh= @gioitinh,
				email= @email,
				taikhoan = @taikhoan,
				matkhau = @matkhau           
				where ID = @ID;
        SELECT '';
    END;
GO

