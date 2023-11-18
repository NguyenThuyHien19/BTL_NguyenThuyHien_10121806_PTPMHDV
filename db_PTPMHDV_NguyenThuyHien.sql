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
	[vaitro] [nvarchar](100) NULL,
 CONSTRAINT [PK_QuanTri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  Table [dbo].[KhachHang]    Script Date: 10/25/2023 10:11:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create TABLE [dbo].[KhachHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tenkh] [nvarchar](150) NULL,
	[diachi] [nvarchar](250) NULL,
	[email] [nvarchar](100) NULL,
	[taikhoan] [nvarchar](100) NULL,
	[matkhau] [nvarchar](100) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
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

alter PROCEDURE [dbo].[sp_quantri_create](
@hoten nvarchar(150),
@diachi nvarchar(250),
@gioitinh nvarchar(30),
@email nvarchar(100),
@taikhoan nvarchar(100),
@matkhau nvarchar(100),
@vaitro nvarchar(100)
)
AS
    BEGIN
       insert into QuanTri(hoten, diachi, gioitinh, email, taikhoan, matkhau, vaitro)
	   values(@hoten, @diachi, @gioitinh, @email, @taikhoan, @matkhau, @vaitro);
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

alter PROCEDURE [dbo].[sp_quantri_update]
(@id int,
@hoten nvarchar(150),
@diachi nvarchar(250),
@gioitinh nvarchar(30),
@email nvarchar(100),
@taikhoan nvarchar(100),
@matkhau nvarchar(100),
@vaitro nvarchar(100)
)
AS
    BEGIN
   update QuanTri set 
				hoten= @hoten,
				diachi= @diachi,
				gioitinh= @gioitinh,
				email= @email,
				taikhoan = @taikhoan,
				matkhau = @matkhau,
				vaitro = @vaitro
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

/****** Object:  StoredProcedure [dbo].[sp_quantri_login]    Script Date: 11/17/2023 1:47:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_quantri_login](@taikhoan nvarchar(100), @matkhau nvarchar(100))
AS
    BEGIN
      SELECT  *
      FROM QuanTri
      where taikhoan = @taikhoan and matkhau = @matkhau;
    END;
GO

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
@noidung nvarchar(350),
@list_json_sanpham NVARCHAR(MAX),
@list_json_chitietsanpham NVARCHAR(MAX)
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

alter PROCEDURE [dbo].[sp_loaisp_delete]
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
alter PROCEDURE [dbo].[sp_loaisp_update]
(@id int,
@tenloaisp nvarchar(250),
@noidung nvarchar(350),
@list_json_sanpham NVARCHAR(MAX),
@list_json_chitietsanpham NVARCHAR(MAX)
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

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_sanpham_get_by_id]    Script Date: 10/25/2023 9:34:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

alter PROCEDURE [dbo].[sp_sanpham_get_by_id](@IDSP int)
AS
    BEGIN
        SELECT h.*, 
        (
            SELECT c.*
            FROM ChiTietSanPham AS c
            WHERE h.IDSP = c.IDSP FOR JSON PATH
        ) AS list_json_chitietsanpham
        FROM SanPham AS h
        WHERE  h.IDSP = @IDSP;
    END;
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_sanpham_create]    Script Date: 10/19/2023 8:41:49 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_sanpham_create]
(@IDLoaiSP int,
@TenSP NVARCHAR(250), 
@GiaSP decimal(18,0), 
@TinhTrang nvarchar(100),
@AnhSP nvarchar(350),
@list_json_chitietsanpham NVARCHAR(MAX)
)
AS
    BEGIN
		DECLARE @IDSP INT;
        INSERT INTO SanPham (IDLoaiSP, TenSP, GiaSP, TinhTrang, AnhSP)
			VALUES
                (@IDLoaiSP,
				 @TenSP, 
                 @GiaSP, 
                 @TinhTrang,
				 @AnhSP
                );

				SET @IDSP = (SELECT SCOPE_IDENTITY());
                IF(@list_json_chitietsanpham IS NOT NULL)
                    BEGIN
                        INSERT INTO ChiTietSanPham
						 (IDSP, 
						  SoLuong,
                          AnhCTSP, 
                          MoTa               
                        )
                    SELECT @IDSP,
						   JSON_VALUE(p.value, '$.soLuong'), 
                           JSON_VALUE(p.value, '$.anhCTSP'), 
                           JSON_VALUE(p.value, '$.moTa')    
                    FROM OPENJSON(@list_json_chitietsanpham) AS p;
                END;
        SELECT '';
    END;
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_sanpham_update]    Script Date: 10/19/2023 11:22:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

alter PROCEDURE [dbo].[sp_sanpham_update]
(@IDSP Int,
 @IDLoaiSP int,
 @TenSP NVARCHAR(250), 
 @GiaSP decimal(18,0), 
 @TinhTrang nvarchar(100),
 @AnhSP nvarchar(350),
 @list_json_chitietsanpham NVARCHAR(MAX)
)
AS
    BEGIN
		UPDATE SanPham
		SET
			IDLoaiSP = @IDLoaiSP,
			TenSP  =  @TenSP,
			GiaSP = @GiaSP,
			TinhTrang = @TinhTrang,
			AnhSP = @AnhSP
		WHERE IDSP = @IDSP AND @IDLoaiSP = (SELECT IDLoaiSP FROM LoaiSanPham WHERE @IDLoaiSP = IDLoaiSP)
		IF(@list_json_chitietsanpham IS NOT NULL) 
		BEGIN
			 -- Insert data to temp table 
		   SELECT
			  JSON_VALUE(p.value, '$.idctsp') as idctsp,
			  JSON_VALUE(p.value, '$.soLuong') as soLuong, 
		      JSON_VALUE(p.value, '$.anhCTSP') as anhCTSP,
			  JSON_VALUE(p.value, '$.moTa')as moTa,
			  JSON_VALUE(p.value, '$.status') AS status 
			  INTO #Results 
		   FROM OPENJSON(@list_json_chitietsanpham) AS p;
		 
		 -- Insert data to table with STATUS = 1;
			INSERT INTO ChiTietSanPham(
						  IDSP,
						  MoTa,
                          SoLuong, 
						  AnhCTSP
                        )
			   SELECT
				  @IDSP,
				  #Results.moTa,
				  #Results.soLuong,
				  #Results.anhCTSP
			   FROM  #Results 
			   WHERE #Results.status = '1'
			-- Delete data to table with STATUS = 3
			DELETE C
			FROM ChiTietSanPham C
			INNER JOIN #Results R
				ON C.IDCTSP = R.idctsp
			WHERE R.status = '3'; 
			-- Update data to table with STATUS = 2
			  UPDATE ChiTietSanPham 
			  SET
				  MoTa = #Results.moTa,
				  Soluong= #Results.soLuong,
				  AnhCTSP = #Results.anhCTSP
			  FROM #Results 
			  WHERE  ChiTietSanPham.IDCTSP = #Results.idctsp AND #Results.status = '2';
			
			DROP TABLE #Results;
		END;
        SELECT '';
    END;
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_sanpham_delete]    Script Date: 10/20/2023 4:05:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

alter PROCEDURE [dbo].[sp_sanpham_delete]
(@IDSP int
)
AS
    BEGIN
		delete from ChitietHoaDon where IDSP = @IDSP
		delete from ChiTietSanPham where IDSP = @IDSP
		delete from SanPham  where IDSP = @IDSP;
        SELECT '';
    END;
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_sanpham_search]    Script Date: 10/20/2023 4:40:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

alter PROCEDURE [dbo].[sp_sanpham_search] (@page_index  INT, 
                                       @page_size   INT,
									   @tensp Nvarchar(250)								  
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY tensp ASC)) AS RowNumber, 
							  k.IDLoaiSP,
                              k.IDSP,
							  k.TenSP,
							  k.GiaSP,
							  k.AnhSP,
							  k.TinhTrang
                        INTO #Results1
                        FROM SanPham AS k
					    WHERE  (@tensp = '' Or k.TenSP like N'%'+@tensp+'%');                   
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
                              ORDER BY tensp ASC)) AS RowNumber, 
                              k.IDLoaiSP,
                              k.IDSP,
							  k.TenSP,
							  k.GiaSP,
							  k.AnhSP,
							  k.TinhTrang
                        INTO #Results2
                        FROM SanPham AS k
					    WHERE (@tensp = '' Or k.TenSP like N'%'+@tensp+'%');                                  
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

/****** Object:  StoredProcedure [dbo].[sp_hoadon_get_by_id]    Script Date: 10/16/2023 4:46:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_hoadon_get_by_id](@IDHoaDon int)
AS
    BEGIN
        SELECT h.*, 
        (
            SELECT c.*
            FROM ChiTietHoaDon AS c
            WHERE h.IDHoaDon = c.IDHoaDon FOR JSON PATH
        ) AS list_json_chitiethoadon
        FROM HoaDon AS h
        WHERE  h.IDHoaDon = @IDHoaDon;
    END;
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_hoadon_create]    Script Date: 10/25/2023 6:13:10 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

alter PROCEDURE [dbo].[sp_hoadon_create]
(@NgayTao datetime,
@TongGia decimal(18,0), 
@TenKH nvarchar(100), 
@DiaChi nvarchar(250),
@Sdt nvarchar(50),
@list_json_chitiethoadon NVARCHAR(MAX)
)
AS
    BEGIN
		DECLARE @IDHoaDon INT;
        INSERT INTO HoaDon(NgayTao, TongGia, TenKH, DiaChi, Sdt)
			VALUES
                (@NgayTao,
				 @TongGia, 
                 @TenKH, 
                 @DiaChi,
				 @Sdt
                );

				SET @IDHoaDon = (SELECT SCOPE_IDENTITY());
                IF(@list_json_chitiethoadon IS NOT NULL)
                    BEGIN
                        INSERT INTO ChitietHoaDon
						 (IDHoaDon, 
						  IDSP,
                          SoLuong, 
                          TongGia               
                        )

                    SELECT @IDHoaDon,
						   JSON_VALUE(p.value, '$.idSanPham'), 
                           JSON_VALUE(p.value, '$.soLuong'), 
                           JSON_VALUE(p.value, '$.tongGia')    
                    FROM OPENJSON(@list_json_chitiethoadon) AS p;
                END;
        SELECT '';
    END;
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_hoadon_update]    Script Date: 10/25/2023 6:26:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

alter PROCEDURE [dbo].[sp_hoadon_update]
(@IDHoaDon Int,
@NgayTao datetime,
@TongGia decimal(18,0), 
@TenKH nvarchar(100), 
@DiaChi nvarchar(250),
@Sdt nvarchar(50),
@list_json_chitiethoadon NVARCHAR(MAX)
)
AS
    BEGIN
		UPDATE HoaDon
		SET
			NgayTao = @NgayTao,
			TongGia = @TongGia,
			TenKH  =  @TenKH,
			DiaChi = @DiaChi,
			Sdt = @Sdt
		WHERE IDHoaDon = @IDHoaDon 
		IF(@list_json_chitiethoadon IS NOT NULL) 
		BEGIN
			 -- Insert data to temp table 
		   SELECT
			  JSON_VALUE(p.value, '$.idChiTietHoaDon') as idcthd,
			  JSON_VALUE(p.value, '$.idSanPham') as idSP,
			  JSON_VALUE(p.value, '$.soLuong') as soLuong, 
			  JSON_VALUE(p.value, '$.tongGia')as tongGia,
			  JSON_VALUE(p.value, '$.status') AS status 
			  INTO #Results 
		   FROM OPENJSON(@list_json_chitiethoadon) AS p;
		 
		 -- Insert data to table with STATUS = 1;
			INSERT INTO ChitietHoaDon(
						  IDHoaDon,
						  IDSP,
                          SoLuong, 
						  TongGia
                        )
			   SELECT
				  @IDHoaDon,
				  #Results.idSP,
				  #Results.soLuong,
				  #Results.tongGia
			   FROM  #Results 
			   WHERE #Results.status = '1'

			-- Update data to table with STATUS = 2
			UPDATE ChitietHoaDon 
			SET
				IDSP = #Results.idSP,
				Soluong= #Results.soLuong,
				TongGia = #Results.tongGia
			FROM #Results 
			WHERE  ChitietHoaDon.IDChiTietHoaDon = #Results.idcthd AND #Results.status = '2';

			-- Delete data to table with STATUS = 3
			DELETE C
			FROM ChitietHoaDon C
			INNER JOIN #Results R
				ON C.IDChiTietHoaDon = R.idcthd
			WHERE R.status = '3';
			DROP TABLE #Results;
		END;
        SELECT '';
    END;
GO


USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_hoadon_delete]    Script Date: 10/25/2023 6:26:51 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_hoadon_delete]
(@IDHoaDon int
)
AS
    BEGIN
		delete from ChitietHoaDon where IDHoaDon = @IDHoaDon
		delete from HoaDon  where IDHoaDon = @IDHoaDon;
        SELECT '';
    END;
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_thong_ke_khach]    Script Date: 10/26/2023 12:15:06 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_thong_ke_khach] (@page_index  INT, 
                                       @page_size   INT,
									   @ten_khach Nvarchar(50),
									   @fr_NgayTao datetime, 
									   @to_NgayTao datetime
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.NgayTao ASC)) AS RowNumber, 
                              s.IDSP,
							  s.TenSP,
							  c.SoLuong,
							  c.TongGia,
							  h.NgayTao,
							  h.TenKH,
							  h.Diachi
                        INTO #Results1
                        FROM HoaDon h
						inner join ChiTietHoaDon c on c.IDHoaDon = h.IDHoaDon
						inner join SanPham s on s.IDSP = c.IDSP
					    WHERE  (@ten_khach = '' Or h.TenKH like N'%'+@ten_khach+'%') and						
						((@fr_NgayTao IS NULL
                        AND @to_NgayTao IS NULL)
                        OR (@fr_NgayTao IS NOT NULL
                            AND @to_NgayTao IS NULL
                            AND h.NgayTao >= @fr_NgayTao)
                        OR (@fr_NgayTao IS NULL
                            AND @to_NgayTao IS NOT NULL
                            AND h.NgayTao <= @to_NgayTao)
                        OR (h.NgayTao BETWEEN @fr_NgayTao AND @to_NgayTao))              
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
                              ORDER BY h.NgayTao ASC)) AS RowNumber, 
                              s.IDSP,
							  s.TenSP,
							  c.SoLuong,
							  c.TongGia,
							  h.NgayTao,
							  h.TenKH,
							  h.Diachi
                        INTO #Results2
                        FROM HoaDon  h
						inner join ChiTietHoaDon c on c.IDHoaDon = h.IDHoaDon
						inner join SanPham s on s.IDSP = c.IDSP
					    WHERE  (@ten_khach = '' Or h.TenKH like N'%'+@ten_khach+'%') and						
						((@fr_NgayTao IS NULL
                        AND @to_NgayTao IS NULL)
                        OR (@fr_NgayTao IS NOT NULL
                            AND @to_NgayTao IS NULL
                            AND h.NgayTao >= @fr_NgayTao)
                        OR (@fr_NgayTao IS NULL
						AND @to_NgayTao IS NOT NULL
                            AND h.NgayTao <= @to_NgayTao)
                        OR (h.NgayTao BETWEEN @fr_NgayTao AND @to_NgayTao))              
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_khach_create]    Script Date: 10/25/2023 10:31:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_khach_create](
@tenkh nvarchar(150),
@diachi nvarchar(250),
@email nvarchar(100),
@taikhoan nvarchar(100),
@matkhau nvarchar(100)
)
AS
    BEGIN
       insert into KhachHang(tenkh, diachi, email, taikhoan, matkhau)
	   values(@tenkh, @diachi, @email, @taikhoan, @matkhau);
    END;
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_khach_update]    Script Date: 10/25/2023 10:31:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_khach_update](
@ID int,
@tenkh nvarchar(150),
@diachi nvarchar(250),
@email nvarchar(100),
@taikhoan nvarchar(100),
@matkhau nvarchar(100)
)
AS
    BEGIN
       update KhachHang
	   set tenkh = @tenkh, diachi = @diachi, email = @email, taikhoan = @taikhoan, matkhau = @matkhau
	   where ID = @ID
    END;
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO

/****** Object:  StoredProcedure [dbo].[sp_khach_search_allproductbyname]    Script Date: 10/25/2023 10:31:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_khach_search_allproductbyname] (@page_index  INT, 
                                       @page_size   INT,
									   @tensp nvarchar(250)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY TenSP ASC)) AS RowNumber, 
							  k.TenSP,
							  k.GiaSP,
							  k.TinhTrang,
							  k.AnhSP
                        INTO #Results1
                        FROM SanPham AS k
					    WHERE  (@tensp = '' Or k.TenSP like N'%'+ @tensp+ '%');                   
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
                             ORDER BY TenSP ASC)) AS RowNumber, 
							  k.TenSP,
							  k.GiaSP,
							  k.TinhTrang,
							  k.AnhSP
                        INTO #Results2
                        FROM SanPham AS k
					    WHERE  (@tensp = '' Or k.TenSP like N'%'+@tensp+'%');                   
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

/****** Object:  StoredProcedure [dbo].[sp_khach_search_loaisp]    Script Date: 11/16/2023 11:05:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_khach_search_loaisp] (@page_index  INT, 
                                       @page_size   INT,
									   @tenloaisp nvarchar(250)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY TenLoaiSP ASC)) AS RowNumber, 
							  k.TenLoaiSP,
							  k.NoiDung,
							  s.TenSP,
							  s.GiaSP,
							  s.TinhTrang,
							  s.AnhSP
                        INTO #Results1
                        FROM LoaiSanPham AS k full outer join SanPham AS s on k.IDLoaiSP = s.IDLoaiSP
					    WHERE  (@tenloaisp = '' Or k.TenLoaiSP like N'%'+ @tenloaisp+ '%');                   
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
                             ORDER BY TenLoaiSP ASC)) AS RowNumber, 
							  k.TenLoaiSP,
							  k.NoiDung,
							  s.TenSP,
							  s.GiaSP,
							  s.TinhTrang,
							  s.AnhSP
                        INTO #Results2
                        FROM LoaiSanPham AS k full outer join SanPham AS s on k.IDLoaiSP = s.IDLoaiSP
					    WHERE  (@tenloaisp = '' Or k.TenLoaiSP like N'%'+@tenloaisp+'%');                   
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

/****** Object:  StoredProcedure [dbo].[sp_login]    Script Date: 10/26/2023 8:50:02 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_login](@taikhoan nvarchar(100), @matkhau nvarchar(100))
AS
    BEGIN
      SELECT  *
      FROM KhachHang
      where taikhoan = @taikhoan and matkhau = @matkhau;
    END;
GO

USE [BTL_PTPMHDV_NguyenThuyHien]
GO


