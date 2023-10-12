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

/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 10/12/2023 9:31:14 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LoaiSanPham](
	[IDLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSP] [nvarchar](250) NULL,
	[NoiDung] [nvarchar](350) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[IDLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  Table [dbo].[SanPham]    Script Date: 10/12/2023 9:30:41 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SanPham](
	[IDSP] [int] IDENTITY(1,1) NOT NULL,
	[IDLoaiSP] int NULL,
	[TenSP] [nvarchar](250) NULL,
	[GiaSP] [decimal](18, 0) NULL,
	[TinhTrang] [nvarchar](100) NULL,
	[AnhSP] [nvarchar](350) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[IDSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([IDLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([IDLoaiSP])
GO

ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  Table [dbo].[ChiTietSanPham]    Script Date: 10/12/2023 9:31:50 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ChiTietSanPham](
	[IDCTSP] [int] IDENTITY(1,1) NOT NULL,
	[IDSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[TongGia] [decimal](18, 0) NULL,
	[AnhCTSP] [nvarchar](350) NULL,
	[MoTa] [nvarchar](350) NULL,
 CONSTRAINT [PK_ChiTietSanPham] PRIMARY KEY CLUSTERED 
(
	[IDCTSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_SanPham] FOREIGN KEY([IDSP])
REFERENCES [dbo].[SanPham] ([IDSP])
GO

ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_ChiTietSanPham_SanPham]
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  Table [dbo].[HoaDon]    Script Date: 9/23/2023 11:41:29 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[HoaDon](
	[IDHoaDon] [int] IDENTITY(1,1) NOT NULL,
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
	[IDChiTietHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[IDHoaDon] [int] NULL,
	[IDSP] [int] NULL,
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

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_quantri_get_by_id]    Script Date: 10/5/2023 9:14:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[sp_quantri_get_by_id] @id int
AS
    BEGIN
      SELECT  *
      FROM QuanTri
      where ID = @id;
    END;
GO

exec [dbo].[sp_quantri_get_by_id] 1

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_quantri_search]    Script Date: 10/5/2023 10:14:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_quantri_search] (@page_index  INT, 
                                       @page_size   INT,
									   @hoten Nvarchar(50),
									   @diachi Nvarchar(250)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY hoten ASC)) AS RowNumber, 
                              k.ID,
							  k.hoten,
							  k.diachi
                        INTO #Results1
                        FROM QuanTri AS k
					    WHERE  (@hoten = '' Or k.hoten like N'%'+@hoten+'%') and						
						(@diachi = '' Or k.diachi like N'%'+@diachi+'%');                   
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY hoten ASC)) AS RowNumber, 
                              k.Id,
							  k.hoten,
							  k.diachi
                        INTO #Results2
                        FROM QuanTri AS k
					    WHERE  (@hoten = '' Or k.hoten like N'%'+@hoten+'%') and						
						(@diachi = '' Or k.diachi like N'%'+@diachi+'%');                   
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;                        
                        DROP TABLE #Results1; 
        END;
    END;
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_loaisp_get_by_id]    Script Date: 10/12/2023 10:09:47 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


Create procedure [dbo].[sp_loaisp_get_by_id] @id int
AS
    BEGIN
      SELECT  *
      FROM LoaiSanPham
      where IDLoaiSP = @id;
    END;
GO
exec [dbo].[sp_loaisp_get_by_id] 1

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_loaisp_create]    Script Date: 10/12/2023 10:14:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_loaisp_create](
@tenloaisp nvarchar(250),
@noidung nvarchar(350)
)
AS
    BEGIN
       insert into LoaiSanPham(TenLoaiSP, NoiDung)
	   values(@tenloaisp, @noidung);
    END;
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_loaisp_delete]    Script Date: 10/12/2023 10:22:52 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_loaisp_delete]
(@ID int
)
AS
    BEGIN
		delete from LoaiSanPham  where IDLoaiSP = @ID;
        SELECT '';
    END;
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_loaisp_update]    Script Date: 10/12/2023 10:23:12 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_loaisp_update]
(@id int,
@tenloaisp nvarchar(250),
@noidung nvarchar(350)
)
AS
    BEGIN
   update LoaiSanPham set 
				TenLoaiSP= @tenloaisp,
				NoiDung= @noidung  
				where IDLoaiSP = @id;
        SELECT '';
    END;
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_loaisp_search]    Script Date: 10/12/2023 10:23:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_loaisp_search] (@page_index  INT, 
                                       @page_size   INT,
									   @tenloaisp Nvarchar(250)								  
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY tenloaisp ASC)) AS RowNumber, 
                              k.IDLoaiSP,
							  k.TenLoaiSP,
							  k.NoiDung
                        INTO #Results1
                        FROM LoaiSanPham AS k
					    WHERE  (@tenloaisp = '' Or k.TenLoaiSP like N'%'+@tenloaisp+'%');                   
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY tenloaisp ASC)) AS RowNumber, 
                              k.IDLoaiSP,
							  k.TenLoaiSP,
							  k.NoiDung
                        INTO #Results2
                        FROM LoaiSanPham AS k
					    WHERE   (@tenloaisp = '' Or k.TenLoaiSP like N'%'+@tenloaisp+'%');                                  
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;                        
                        DROP TABLE #Results1; 
        END;
    END;
GO

