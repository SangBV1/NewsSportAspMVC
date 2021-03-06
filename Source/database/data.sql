USE [master]
GO
/****** Object:  Database [news_football_dbcontext]    Script Date: 12/23/2017 20:50:20 ******/
CREATE DATABASE [news_football_dbcontext] ON  PRIMARY 
( NAME = N'news_football_dbcontext', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\news_football_dbcontext.mdf' , SIZE = 3328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'news_football_dbcontext_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\news_football_dbcontext_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [news_football_dbcontext] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [news_football_dbcontext].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [news_football_dbcontext] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [news_football_dbcontext] SET ANSI_NULLS OFF
GO
ALTER DATABASE [news_football_dbcontext] SET ANSI_PADDING OFF
GO
ALTER DATABASE [news_football_dbcontext] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [news_football_dbcontext] SET ARITHABORT OFF
GO
ALTER DATABASE [news_football_dbcontext] SET AUTO_CLOSE ON
GO
ALTER DATABASE [news_football_dbcontext] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [news_football_dbcontext] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [news_football_dbcontext] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [news_football_dbcontext] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [news_football_dbcontext] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [news_football_dbcontext] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [news_football_dbcontext] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [news_football_dbcontext] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [news_football_dbcontext] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [news_football_dbcontext] SET  ENABLE_BROKER
GO
ALTER DATABASE [news_football_dbcontext] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [news_football_dbcontext] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [news_football_dbcontext] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [news_football_dbcontext] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [news_football_dbcontext] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [news_football_dbcontext] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [news_football_dbcontext] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [news_football_dbcontext] SET  READ_WRITE
GO
ALTER DATABASE [news_football_dbcontext] SET RECOVERY SIMPLE
GO
ALTER DATABASE [news_football_dbcontext] SET  MULTI_USER
GO
ALTER DATABASE [news_football_dbcontext] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [news_football_dbcontext] SET DB_CHAINING OFF
GO
USE [news_football_dbcontext]
GO
/****** Object:  Table [dbo].[tournament]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tournament](
	[id] [varchar](50) NOT NULL,
	[name] [nvarchar](100) NULL,
 CONSTRAINT [pk_tournament_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tournament] ([id], [name]) VALUES (N'VLEAGUE', N'Giải đấu V League')
/****** Object:  Table [dbo].[tag]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tag](
	[id] [varchar](50) NOT NULL,
	[name] [nvarchar](250) NULL,
 CONSTRAINT [pk_tag_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tag] ([id], [name]) VALUES (N'20-11', N'20-11')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'bau-hien', N'Bầu Hiển')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'clb-tp-hcm', N'CLB TP.HCM ')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'cong-vinh', N'Công Vinh')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'doi-tuyen-nu-vn', N'Đội tuyển Nữ VN')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'fc', N'FC')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'hagl', N'HAGL')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'hai-phong', N'Hải Phòng')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'mau', N'Mẫu')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'miura', N'Miura')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'ngay-20-11', N'Ngày 20-11')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'park-hang-seo', N' Park Hang-Seo')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'phi-son', N'Phi Sơn')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'quang-nam', N'Quảng Nam')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'quang-ninh', N' Quảng Ninh')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'shb', N'SHB')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'shb-da-nang', N'SHB Đà Nẵng')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'song-long-nghe-an', N'Sông Lông Nghệ An ')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'u20', N'u20')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'v-league', N'V.League')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'van-quyet', N'Văn Quyết')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'vck-u23', N'VCK U23')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'vdqg-nu', N'VĐQG nữ')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'vff', N'VFF')
INSERT [dbo].[tag] ([id], [name]) VALUES (N'vong-cuoi', N'vòng cuối')
/****** Object:  Table [dbo].[system_config]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_config](
	[id] [varchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
	[type] [varchar](50) NULL,
	[value] [nvarchar](250) NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [pk_system_config] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_group]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_group](
	[id] [varchar](20) NOT NULL,
	[name] [nvarchar](50) NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [pk_user_group_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[user_group] ([id], [name], [is_active]) VALUES (N'ADMIN', N'Quản trị viên', 1)
INSERT [dbo].[user_group] ([id], [name], [is_active]) VALUES (N'MEM', N'Thành viên', 1)
INSERT [dbo].[user_group] ([id], [name], [is_active]) VALUES (N'MOD', N'Cộng tác viên', 1)
/****** Object:  Table [dbo].[user_role]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_role](
	[id] [varchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [pk_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'ADD_AD', N'Thêm quảng cáo')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'ADD_AD_POSITION', N'Thêm vị trí quảng cáo')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'ADD_CONTENT', N'Thêm tin tức')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'ADD_CONTENT_CATE', N'Thêm loại tin tức')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'ADD_CONTENT_TAG', N'Thêm tags tin tức')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'ADD_INFO', N'Thêm thông tin website')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'ADD_MENU', N'Thêm menu')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'ADD_MENU_TYPE', N'Thêm loại menu')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'ADD_SYSCONFIG', N'Thêm sysconfig')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'ADD_TAG', N'Thêm Tag')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'ADD_USER_CREDENTIAL', N'Thêm phân quyền')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'ADD_USER_GROUP', N'Thêm loại thành viên')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'ADD_USER_LOG', N'Thêm thành viên')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'ADD_USER_ROLE', N'Thêm Role')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'DELETE_AD', N'Xóa quảng cáo')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'DELETE_AD_POSITION', N'Xóa vị trí quảng cáo')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'DELETE_CONTENT', N'Xóa tin tức')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'DELETE_CONTENT_CATE', N'Xóa loại tin tức')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'DELETE_CONTENT_TAG', N'Xóa tags tin tức')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'DELETE_INFO', N'Xóa thông tin website')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'DELETE_MENU', N'Xóa menu')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'DELETE_MENU_TYPE', N'Xóa loại menu')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'DELETE_SYSCONFIG', N'Xóa sysconfig')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'DELETE_TAG', N'Xóa tag')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'DELETE_USER_CREDENTIAL', N'Xóa phân quyền')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'DELETE_USER_GROUP', N'Xóa loại thành viên')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'DELETE_USER_LOG', N'Xóa thành viên')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'DELETE_USER_ROLE', N'Xóa Role')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'EDIT_AD', N'Sửa quảng cáo')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'EDIT_AD_POSITION', N'Sửa vị trí quảng cáo')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'EDIT_CONTENT', N'Sửa tin tức')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'EDIT_CONTENT_CATE', N'Sửa loại tin tức')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'EDIT_CONTENT_TAG', N'Sửa tags tin tức')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'EDIT_INFO', N'Sửa thông tin website')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'EDIT_MENU', N'Sửa menu')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'EDIT_MENU_TYPE', N'Sửa loại menu')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'EDIT_SYSCONFIG', N'Sửa sysconfig')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'EDIT_TAG', N'Sửa tag')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'EDIT_USER_CREDENTIAL', N'Sửa phân quyền')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'EDIT_USER_GROUP', N'Sửa loại thành viên')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'EDIT_USER_LOG', N'Sửa thành viên')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'EDIT_USER_ROLE', N'Sửa Role')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'VIEW_AD', N'Xem quảng cáo')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'VIEW_AD_POSITION', N'Xem vị trí quảng cáo')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'VIEW_CONTENT', N'Xem tin tức')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'VIEW_CONTENT_CATE', N'Xem loại tin tức')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'VIEW_CONTENT_TAG', N'Xem tags tin tức')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'VIEW_INFO', N'Xem thông tin website')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'VIEW_MENU', N'Xem menu')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'VIEW_MENU_TYPE', N'Xem loại menu')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'VIEW_SYSCONFIG', N'Xem sysconfig')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'VIEW_TAG', N'Xem tag')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'VIEW_USER_CREDENTIAL', N'Xem phân quyền')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'VIEW_USER_GROUP', N'Xem loại thành viên')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'VIEW_USER_LOG', N'Xem thành viên')
INSERT [dbo].[user_role] ([id], [name]) VALUES (N'VIEW_USER_ROLE', N'Xem Role')
/****** Object:  Table [dbo].[football_club]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[football_club](
	[id] [varchar](20) NOT NULL,
	[name] [nvarchar](100) NULL,
	[pitch] [nvarchar](50) NULL,
	[url_logo] [varchar](100) NULL,
	[phone_number] [nvarchar](20) NULL,
	[fax_number] [nvarchar](20) NULL,
	[address] [nvarchar](100) NULL,
	[coach] [nvarchar](100) NULL,
	[detail] [ntext] NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [pk_footballClub_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[football_club] ([id], [name], [pitch], [url_logo], [phone_number], [fax_number], [address], [coach], [detail], [is_active]) VALUES (N'BBD', N'Bình Dương', N'Gò Đậu', N'/Data/images/content/icon/i_binhduong.png', N'84 650 822824', N'84 650 828808', N'Đường 30/4, phường Chánh Nghĩa, thị xã Thủ Dầu Một, Bình Dương', N'Mai Đức Chung', NULL, 1)
INSERT [dbo].[football_club] ([id], [name], [pitch], [url_logo], [phone_number], [fax_number], [address], [coach], [detail], [is_active]) VALUES (N'CTH', N'Cần Thơ', N'Cần Thơ', N'/Data/images/content/icon/i_cantho.png', N'0710.3820599', N'0710.3767196', N'Sân vận động Cần Thơ, P. Cái Khế, Ninh Kiều, TP Cần Thơ', N'Vũ Quang Bảo', NULL, 1)
INSERT [dbo].[football_club] ([id], [name], [pitch], [url_logo], [phone_number], [fax_number], [address], [coach], [detail], [is_active]) VALUES (N'DLA', N'Long An', N'Long An', N'/Data/images/content/icon/i_longan.png', N'84 72 631 031', N'84 72 631 032', N'44B Trương Định, thị xã Tân An, Long An', N'Ngô Quang Sang', NULL, 1)
INSERT [dbo].[football_club] ([id], [name], [pitch], [url_logo], [phone_number], [fax_number], [address], [coach], [detail], [is_active]) VALUES (N'HCM', N'TPHCM', N'Thống Nhất', N'/Data/images/content/icon/i_tphcm.png', N'84 8 8720904', N'84 8 8720902', N'Khu phố 4, đường Tân Mỹ, phường Tân Thuận Tây, Quận 7, TP HCM', N'Sudesh Siwgh', NULL, 1)
INSERT [dbo].[football_club] ([id], [name], [pitch], [url_logo], [phone_number], [fax_number], [address], [coach], [detail], [is_active]) VALUES (N'HGL', N'Hoàng Anh Gia Lai', N'Pleiku', N'/Data/images/content/icon/i_hagl.png', N'84 59 875539', N'84 59 824115', N'50 Nguyễn Thiện Thuật, TP. Pleiku, tỉnh Gia Lai', N'Nguyễn Quốc Tuấn', NULL, 1)
INSERT [dbo].[football_club] ([id], [name], [pitch], [url_logo], [phone_number], [fax_number], [address], [coach], [detail], [is_active]) VALUES (N'KKH', N'Khánh Hòa', N'Nha Trang', N'/Data/images/content/icon/i_sannakhanhhoa.png', N'8458 590550', N'84.58 591284', N'Khu du lịch Bảo Đại - P. Vĩnh Nguyên - TP. Nha Trang', N'Võ Đình Tân', NULL, 1)
INSERT [dbo].[football_club] ([id], [name], [pitch], [url_logo], [phone_number], [fax_number], [address], [coach], [detail], [is_active]) VALUES (N'QNA', N'Quảng Nam', N'Quảng Nam', N'/Data/images/content/icon/i_quangnam.png', N'84 5103830202', N'84 05103830233', N'Tổ 8, phường Hòa Hương, TP Tam Kỳ, Tỉnh Quảng Nam', N'Hoàng Văn Phúc', NULL, 1)
INSERT [dbo].[football_club] ([id], [name], [pitch], [url_logo], [phone_number], [fax_number], [address], [coach], [detail], [is_active]) VALUES (N'SDN', N'Đà Nẵng', N'Chi Lăng', N'/Data/images/content/icon/i_danang.png', N'84 511 865 905', N'84 511 865 917', N'38 đường Ngô Gia Tự, Đà Nẵng', N'Lê Huỳnh Đức', NULL, 1)
INSERT [dbo].[football_club] ([id], [name], [pitch], [url_logo], [phone_number], [fax_number], [address], [coach], [detail], [is_active]) VALUES (N'SNA', N'Sông Lam Nghệ An', N'Vinh', N'/Data/images/content/icon/i_slnghean.png', N'038 3844482 ', N'0383 580143', N'Số 6, Đường Đào Tấn, Thành phố Vinh, tỉnh Nghệ An', N'Ngô Quang Trường', NULL, 1)
INSERT [dbo].[football_club] ([id], [name], [pitch], [url_logo], [phone_number], [fax_number], [address], [coach], [detail], [is_active]) VALUES (N'TDT', N'Đồng Tháp', N'Cao Lãnh', N'/Data/images/content/icon/i_dongthap.png', N'84 67 3853629', N'84 67 3853629', N'Sân vận động Cao Lãnh, Đường Lê Duẩn, thành phố Cao Lãnh, Đồng Tháp', N'Phạm Công Lộc', NULL, 1)
INSERT [dbo].[football_club] ([id], [name], [pitch], [url_logo], [phone_number], [fax_number], [address], [coach], [detail], [is_active]) VALUES (N'THH', N'Thanh Hóa', N'Thanh Hóa', N'/Data/images/content/icon/i_thanhhoa.png', N'84 37 3722983', N'84 37 3721473', N'37 Lê Quý Đôn, Phường Ba Đình, Tp Thanh Hóa', N'Hoàng Thanh Tùng', NULL, 1)
INSERT [dbo].[football_club] ([id], [name], [pitch], [url_logo], [phone_number], [fax_number], [address], [coach], [detail], [is_active]) VALUES (N'TQN', N'Than Quảng Ninh', N'Cẩm Phả', N'/Data/images/content/icon/i_thanquangninh.png', N'84 33 3865054', N'84 33 3865656', N'Tổ 10- Khu 10, Phường Quang Hanh, TP. Cẩm Phả, Quảng Ninh', N'Phan Thanh Hùng', NULL, 1)
INSERT [dbo].[football_club] ([id], [name], [pitch], [url_logo], [phone_number], [fax_number], [address], [coach], [detail], [is_active]) VALUES (N'TT', N'T&T Hà Nội', N'Hàng Đẫy', N'/Data/images/content/icon/i_hanoi.png', N'84 4 2434813', N'84 4 38489255', N'Số 18, Hàng Chuối, Phạm Đình Hổ, Hai Bà Trưng, Hà Nội', N'Phan Thanh Hùng', NULL, 1)
INSERT [dbo].[football_club] ([id], [name], [pitch], [url_logo], [phone_number], [fax_number], [address], [coach], [detail], [is_active]) VALUES (N'VTEL', N'Sài Gòn', N'Thống Nhất', N'/Data/images/content/icon/i_saigon.png', N'04.22434813 ', N'04.37858112', NULL, N'Nguyễn Đức Thắng', NULL, 1)
INSERT [dbo].[football_club] ([id], [name], [pitch], [url_logo], [phone_number], [fax_number], [address], [coach], [detail], [is_active]) VALUES (N'XHP', N'Hải Phòng', N'Lạch Tray', N'/Data/images/content/icon/i_haiphong.png', N'84 31 3641541', N'84 31 3641541', N'17 Lạch Tray - Quận Ngô Quyền -TP Hải Phòng.', N'Trương Việt Hoàng', NULL, 1)
/****** Object:  Table [dbo].[content_category]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[content_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[meta_title] [varchar](250) NULL,
	[display_order] [int] NULL,
	[seo_title] [nvarchar](250) NULL,
	[created_at] [datetime] NULL,
	[created_by] [varchar](50) NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [varchar](50) NULL,
	[meta_keyword] [nvarchar](250) NULL,
	[meta_description] [nvarchar](500) NULL,
	[is_active] [bit] NOT NULL,
	[is_showhome] [bit] NOT NULL,
 CONSTRAINT [pk_content_category_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[content_category] ON
INSERT [dbo].[content_category] ([id], [name], [meta_title], [display_order], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_showhome]) VALUES (1, N'V League', N'v-league', 1, N'Tin tức giải đấu V League', CAST(0x0000A82A00A60E6B AS DateTime), N'ad', CAST(0x0000A82A00A60E6B AS DateTime), NULL, N'v league,giải đấu v league,bóng đá,lịch thi đấu v league', N'Tin tức bóng đá giải đấu V League với lịch thi đấu và kết quả trận đấu', 1, 0)
SET IDENTITY_INSERT [dbo].[content_category] OFF
/****** Object:  Table [dbo].[info]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[info](
	[id] [varchar](50) NOT NULL,
	[name] [nvarchar](250) NULL,
	[meta_title] [varchar](250) NULL,
	[detail] [ntext] NULL,
	[seo_title] [nvarchar](250) NULL,
	[created_at] [datetime] NULL,
	[created_by] [varchar](50) NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [varchar](50) NULL,
	[meta_keyword] [nvarchar](250) NULL,
	[meta_description] [nvarchar](500) NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [pk_about_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[info] ([id], [name], [meta_title], [detail], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active]) VALUES (N'ABOUT', N'Giới thiệu', N'gioi-thieu', N'<p><span style="color:#A9A9A9"><em>Trang Web tin tức b&oacute;ng đ&aacute; V League @copyright TorWD</em></span></p>
', NULL, CAST(0x0000A82D0033BF2D AS DateTime), N'ad', CAST(0x0000A8410003F736 AS DateTime), N'ad', N'bóng đá vleague,tin tức bóng đá', N'Trang Web tin tức bóng đá. Thông tin lịch thi đấu, xếp hạng đội bóng qua từng mùa giải.', 1)
/****** Object:  Table [dbo].[goal_type]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[goal_type](
	[id] [varchar](20) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [pk_goal_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[goal_type] ([id], [name]) VALUES (N'corner', N'Phạt góc')
INSERT [dbo].[goal_type] ([id], [name]) VALUES (N'free', N'Đá phạt trực tiếp')
INSERT [dbo].[goal_type] ([id], [name]) VALUES (N'header', N'Đánh đầu')
INSERT [dbo].[goal_type] ([id], [name]) VALUES (N'own', N'Phản lưới nhà')
INSERT [dbo].[goal_type] ([id], [name]) VALUES (N'pen', N'Sút phạt đền')
INSERT [dbo].[goal_type] ([id], [name]) VALUES (N'shoot', N'Sút xa')
/****** Object:  Table [dbo].[general_rule]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[general_rule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[max_age] [int] NULL,
	[min_age] [int] NULL,
	[max_footballer] [int] NULL,
	[max_foreign_footballer] [int] NULL,
	[min_footballer] [int] NULL,
	[win_score] [int] NULL,
	[lose_score] [int] NULL,
	[draw_score] [int] NULL,
	[max_time_goal] [int] NULL,
	[sort_rule] [varchar](100) NULL,
 CONSTRAINT [pk_general_rule_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[general_rule] ON
INSERT [dbo].[general_rule] ([id], [max_age], [min_age], [max_footballer], [max_foreign_footballer], [min_footballer], [win_score], [lose_score], [draw_score], [max_time_goal], [sort_rule]) VALUES (1, 40, 16, 22, 3, 15, 3, 0, 1, 96, N'totalScore,goalDifference,winScore,winScoreGuest')
SET IDENTITY_INSERT [dbo].[general_rule] OFF
/****** Object:  Table [dbo].[footballer_type]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[footballer_type](
	[id] [varchar](20) NOT NULL,
	[name] [nvarchar](250) NULL,
 CONSTRAINT [pk_footballerType_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[footballer_type] ([id], [name]) VALUES (N'FOREIGN', N'Cầu thủ ngoại')
INSERT [dbo].[footballer_type] ([id], [name]) VALUES (N'INTERNAL', N'Cầu thủ nội')
/****** Object:  Table [dbo].[advertisement_position]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[advertisement_position](
	[id] [varchar](20) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [pk_position_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[advertisement_position] ([id], [name]) VALUES (N'1280x500', N'Banner')
INSERT [dbo].[advertisement_position] ([id], [name]) VALUES (N'300x250', N'300x250')
INSERT [dbo].[advertisement_position] ([id], [name]) VALUES (N'300x600', N'300x600')
INSERT [dbo].[advertisement_position] ([id], [name]) VALUES (N'728x90', N'728x90')
/****** Object:  Table [dbo].[menu_type]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[menu_type](
	[id] [varchar](50) NOT NULL,
	[display_order] [int] NULL,
	[name] [varchar](20) NULL,
 CONSTRAINT [pk_menu_type_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[menu_type] ([id], [display_order], [name]) VALUES (N'TOP', 1, N'Top')
/****** Object:  Table [dbo].[menu]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[url] [nvarchar](200) NULL,
	[target] [nvarchar](20) NULL,
	[display_order] [int] NULL,
	[is_active] [bit] NULL,
	[menu_type_id] [varchar](50) NULL,
 CONSTRAINT [pk_menu_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[menu] ON
INSERT [dbo].[menu] ([id], [name], [url], [target], [display_order], [is_active], [menu_type_id]) VALUES (1, N'HOME', N'/', N'_self', 1, 1, N'TOP')
INSERT [dbo].[menu] ([id], [name], [url], [target], [display_order], [is_active], [menu_type_id]) VALUES (2, N'TIN TỨC V-LEAGUE', N'/news/v-league', N'_self', 2, 1, N'TOP')
INSERT [dbo].[menu] ([id], [name], [url], [target], [display_order], [is_active], [menu_type_id]) VALUES (3, N'LỊCH THI ĐẤU', N'/lich-thi-dau-vleague', N'_self', 3, 1, N'TOP')
SET IDENTITY_INSERT [dbo].[menu] OFF
/****** Object:  Table [dbo].[advertisement]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[advertisement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url_image] [nvarchar](250) NULL,
	[url_source] [varchar](250) NULL,
	[click_count] [int] NULL,
	[description_ad] [nvarchar](500) NULL,
	[display_order] [int] NULL,
	[advertisement_position_id] [varchar](20) NULL,
	[created_at] [datetime] NULL,
	[created_by] [varchar](50) NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [varchar](50) NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [pk_adsvertisement_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[advertisement] ON
INSERT [dbo].[advertisement] ([id], [url_image], [url_source], [click_count], [description_ad], [display_order], [advertisement_position_id], [created_at], [created_by], [modified_at], [modified_by], [is_active]) VALUES (36, N'/Data/images/advertisement/728x90/ad1.png', N'https://www.google.com.vn', 75, N'Quảng cáo  1', 1, N'728x90', CAST(0x0000A8070027ED0F AS DateTime), N'ad', CAST(0x0000A80B00037338 AS DateTime), N'ad', 1)
INSERT [dbo].[advertisement] ([id], [url_image], [url_source], [click_count], [description_ad], [display_order], [advertisement_position_id], [created_at], [created_by], [modified_at], [modified_by], [is_active]) VALUES (37, N'/Data/images/advertisement/728x90/ad2.png', N'https://www.google.com.vn', 20, N'Quảng cáo  2', 2, N'728x90', CAST(0x0000A8070027FDA2 AS DateTime), N'ad', CAST(0x0000A80B00037B0F AS DateTime), N'ad', 1)
INSERT [dbo].[advertisement] ([id], [url_image], [url_source], [click_count], [description_ad], [display_order], [advertisement_position_id], [created_at], [created_by], [modified_at], [modified_by], [is_active]) VALUES (38, N'/Data/images/advertisement/728x90/ad3.png', N'https://www.google.com.vn', 1, N'Quảng cáo  3
', 3, N'728x90', CAST(0x0000A80700280931 AS DateTime), N'ad', CAST(0x0000A80B00038320 AS DateTime), N'ad', 1)
INSERT [dbo].[advertisement] ([id], [url_image], [url_source], [click_count], [description_ad], [display_order], [advertisement_position_id], [created_at], [created_by], [modified_at], [modified_by], [is_active]) VALUES (39, N'/Data/images/advertisement/banner/bnr1.jpg', N'https://www.google.com.vn', 5, N'Quảng cáo  5', 1, N'1280x500', CAST(0x0000A83100203CA0 AS DateTime), N'ad', CAST(0x0000A83100203CA0 AS DateTime), NULL, 1)
INSERT [dbo].[advertisement] ([id], [url_image], [url_source], [click_count], [description_ad], [display_order], [advertisement_position_id], [created_at], [created_by], [modified_at], [modified_by], [is_active]) VALUES (40, N'/Data/images/advertisement/banner/bnr2.jpg', N'https://www.google.com.vn', 4, N'Quảng cáo  6', 2, N'1280x500', CAST(0x0000A83100204552 AS DateTime), N'ad', CAST(0x0000A83100204552 AS DateTime), NULL, 1)
INSERT [dbo].[advertisement] ([id], [url_image], [url_source], [click_count], [description_ad], [display_order], [advertisement_position_id], [created_at], [created_by], [modified_at], [modified_by], [is_active]) VALUES (41, N'/Data/images/advertisement/banner/bnr3.jpg', N'https://www.google.com.vn', 1, N'Quảng cáo  7', 3, N'1280x500', CAST(0x0000A83100204CC9 AS DateTime), N'ad', CAST(0x0000A83100204CC9 AS DateTime), NULL, 1)
INSERT [dbo].[advertisement] ([id], [url_image], [url_source], [click_count], [description_ad], [display_order], [advertisement_position_id], [created_at], [created_by], [modified_at], [modified_by], [is_active]) VALUES (42, N'/Data/images/advertisement/300x250/s1.jpg', N'https://www.google.com.vn', 1, N'Quảng cáo  8', 1, N'300x250', CAST(0x0000A831006D7E40 AS DateTime), N'ad', CAST(0x0000A831006D7E40 AS DateTime), NULL, 1)
INSERT [dbo].[advertisement] ([id], [url_image], [url_source], [click_count], [description_ad], [display_order], [advertisement_position_id], [created_at], [created_by], [modified_at], [modified_by], [is_active]) VALUES (43, N'/Data/images/advertisement/300x250/s2.jpg', N'https://www.google.com.vn', 5, N'Quảng cáo  9', 1, N'300x250', CAST(0x0000A831006D898C AS DateTime), N'ad', CAST(0x0000A831006D898C AS DateTime), NULL, 1)
INSERT [dbo].[advertisement] ([id], [url_image], [url_source], [click_count], [description_ad], [display_order], [advertisement_position_id], [created_at], [created_by], [modified_at], [modified_by], [is_active]) VALUES (44, N'/Data/images/advertisement/300x250/s3.png', N'https://www.google.com.vn', 4, N'Quảng cáo  10', 1, N'300x250', CAST(0x0000A831006D936A AS DateTime), N'ad', CAST(0x0000A831006D936A AS DateTime), NULL, 1)
INSERT [dbo].[advertisement] ([id], [url_image], [url_source], [click_count], [description_ad], [display_order], [advertisement_position_id], [created_at], [created_by], [modified_at], [modified_by], [is_active]) VALUES (45, N'/Data/images/advertisement/300x600/s4.jpg', N'https://www.google.com.vn', 10, N'Quảng cáo  4', 2, N'300x600', CAST(0x0000A831006DB89C AS DateTime), N'ad', CAST(0x0000A83800112425 AS DateTime), N'ad', 1)
INSERT [dbo].[advertisement] ([id], [url_image], [url_source], [click_count], [description_ad], [display_order], [advertisement_position_id], [created_at], [created_by], [modified_at], [modified_by], [is_active]) VALUES (46, N'/Data/images/advertisement/300x600/s5.jpg', N'https://www.google.com.vn', 8, N'Quảng cáo  11', 2, N'300x600', CAST(0x0000A831006DBF76 AS DateTime), N'ad', CAST(0x0000A831006DBF76 AS DateTime), NULL, 1)
INSERT [dbo].[advertisement] ([id], [url_image], [url_source], [click_count], [description_ad], [display_order], [advertisement_position_id], [created_at], [created_by], [modified_at], [modified_by], [is_active]) VALUES (47, N'/Data/images/advertisement/300x600/s6.jpg', N'https://www.google.com.vn', 12, N'Quảng cáo  12', 2, N'300x600', CAST(0x0000A831006DC99F AS DateTime), N'ad', CAST(0x0000A831006DC99F AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[advertisement] OFF
/****** Object:  Table [dbo].[season]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[season](
	[id] [varchar](20) NOT NULL,
	[name] [nvarchar](100) NULL,
	[start_date_at] [datetime] NULL,
	[end_date_at] [datetime] NULL,
	[number_club] [int] NULL,
	[display_order] [int] NULL,
	[tournamnet_id] [varchar](50) NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [pk_season_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[season] ([id], [name], [start_date_at], [end_date_at], [number_club], [display_order], [tournamnet_id], [is_active]) VALUES (N'VLEAGUE_17', N'Mùa giải V League 2017', CAST(0x0000A6F400000000 AS DateTime), CAST(0x0000A83600000000 AS DateTime), 14, 1, N'VLEAGUE', 1)
INSERT [dbo].[season] ([id], [name], [start_date_at], [end_date_at], [number_club], [display_order], [tournamnet_id], [is_active]) VALUES (N'VLEAGUE_18', N'Mùa giải V League 2018', CAST(0x0000A81F00000000 AS DateTime), CAST(0x0000A83700000000 AS DateTime), 5, 2, N'VLEAGUE', 1)
/****** Object:  Table [dbo].[round]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[round](
	[id] [varchar](20) NOT NULL,
	[name] [nvarchar](100) NULL,
	[display_order] [int] NULL,
	[tournament_id] [varchar](50) NULL,
 CONSTRAINT [pk_round_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND1', N'Vòng 1', 1, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND10', N'Vòng 10', 10, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND11', N'Vòng 11', 11, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND12', N'Vòng 12', 12, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND13', N'Vòng 13', 13, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND14', N'Vòng 14', 14, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND15', N'Vòng 15', 15, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND16', N'Vòng 16', 16, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND17', N'Vòng 17', 17, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND18', N'Vòng 18', 18, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND19', N'Vòng 19', 19, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND2', N'Vòng 2', 2, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND20', N'Vòng 20', 20, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND21', N'Vòng 21', 21, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND22', N'Vòng 22', 22, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND23', N'Vòng 23', 23, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND24', N'Vòng 24', 24, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND25', N'Vòng 25', 25, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND26', N'Vòng 26', 26, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND3', N'Vòng 3', 3, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND4', N'Vòng 4', 4, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND5', N'Vòng 5', 5, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND6', N'Vòng 6', 6, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND7', N'Vòng 7', 7, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND8', N'Vòng 8', 8, N'VLEAGUE')
INSERT [dbo].[round] ([id], [name], [display_order], [tournament_id]) VALUES (N'VLEAGUE_ROUND9', N'Vòng 9', 9, N'VLEAGUE')
/****** Object:  Table [dbo].[footballer]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[footballer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[birth_date] [datetime] NULL,
	[hometown] [nvarchar](50) NULL,
	[position] [nvarchar](50) NULL,
	[footballer_type_id] [varchar](20) NULL,
	[footballClub_id] [varchar](20) NULL,
 CONSTRAINT [pk_footballer_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[footballer] ON
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (1, N'Dương Hồng Sơn', CAST(0x0000849900000000 AS DateTime), N'Cà Mao', N'Tiền Vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (2, N'Nguyễn Tấn Điền	', CAST(0x0000A82D00687768 AS DateTime), N'Long An', N'Trung Vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (3, N'Cristiano R.C. Roland', CAST(0x00005C7700000000 AS DateTime), N'London', N'Tiền Đạo', N'FOREIGN', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (4, N'Huỳnh Quốc Anh	', CAST(0x00005FDD00000000 AS DateTime), N'Bình Chánh', N'Hậu Vệ', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (5, N'Egware E. Eloh', CAST(0x0000822900000000 AS DateTime), N'ITALY', N'Trung Vệ', N'FOREIGN', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (16, N'Bùi Tấn Trường', CAST(0x00008B4000000000 AS DateTime), N'Việt Nam', N'Thủ môn	', N'INTERNAL', N'BBD')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (18, N'Trần Chí Công', CAST(0x0000768E00000000 AS DateTime), N'Việt Nam', N'Trung vệ', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (19, N'Nguyễn Thành Lộc', CAST(0x00008B4000000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (20, N'Trần Tấn Đạt', CAST(0x00007F5900000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (21, N'Cao Cường', CAST(0x00007C8B00000000 AS DateTime), N'Việt Nam', N'Trung vệ', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (22, N'Quế Ngọc Mạnh', CAST(0x000072FE00000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (23, N'Nguyễn Huỳnh Kiếm Linh', CAST(0x00007DEB00000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (24, N'Vũ Anh Tuấn', CAST(0x00007D2500000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (25, N'Kisekka Henry', CAST(0x00007FD700000000 AS DateTime), NULL, N'Tiền đạo', N'FOREIGN', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (26, N'Nguyễn Thế Hưng', CAST(0x0000810400000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (27, N'Trần Thanh Long', CAST(0x00008B3C00000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (28, N'Trương Huỳnh Minh Khoa', CAST(0x0000830900000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (29, N'Trương Văn Thành', CAST(0x0000825100000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (30, N'Nguyễn Quang Tình', CAST(0x00007E0900000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (31, N'Lê Đức Lộc', CAST(0x0000807D00000000 AS DateTime), N'Việt Nam', N'Trung vệ', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (32, N'Nsi Amogou Ch.Jose', CAST(0x00008B4000000000 AS DateTime), NULL, N'Tiền đạo', N'FOREIGN', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (33, N'Nguyễn Văn Quân', CAST(0x00007C8000000000 AS DateTime), N'Việt Nam', N'Trung vệ', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (34, N'Nguyễn Hải Anh', CAST(0x00008B4000000000 AS DateTime), NULL, NULL, N'FOREIGN', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (35, N'Nguyễn Hải Anh', CAST(0x00007C9B00000000 AS DateTime), N'Việt Nam', N'Tiền đạo', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (36, N'Huỳnh Chánh Nghiêm', CAST(0x000081A300000000 AS DateTime), N'Việt Nam', N'Tiền vệ	', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (37, N'Nguyễn Thanh Diệp', CAST(0x000081F900000000 AS DateTime), N'Việt Nam', N'Thủ môn', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (38, N'Trần Bửu Ngọc', CAST(0x000082AE00000000 AS DateTime), N'Việt Nam', N'Thủ môn', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (39, N'Trần Hoài Thanh', CAST(0x0000809F00000000 AS DateTime), N'Việt Nam', N'Thủ môn', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (40, N'Nguyễn Hiếu Trung Anh', CAST(0x000083C200000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (41, N'Nguyễn Công Thành', CAST(0x000082AD00000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (42, N'Huỳnh Tấn Hùng', CAST(0x00007F5900000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (43, N'Nguyễn Duy Khanh', CAST(0x00007B8A00000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'CTH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (44, N'Nguyễn Minh Nhựt', CAST(0x00007B2E00000000 AS DateTime), N'Việt Nam', N'Thủ môn', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (45, N'Hồ Hải Phong', CAST(0x00007B8D00000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (46, N'Nguyễn Thành Trung', CAST(0x00007E2300000000 AS DateTime), N'Việt Nam', N'Hậu vệ	', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (47, N'Huỳnh Trần Đức Thịnh', CAST(0x0000853C00000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (48, N'Huỳnh Thiện Nhân', CAST(0x0000823300000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (49, N'Trần Vũ Phương Tâm', CAST(0x00007FDC00000000 AS DateTime), N'Việt Nam', N'Tiền vệ	', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (50, N'Phan Văn Tài Em', CAST(0x0000766400000000 AS DateTime), N'Việt Nam', N'Trung vệ', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (51, N'Huỳnh Tấn Tài', CAST(0x000086CC00000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (52, N'Dương Anh Tú', CAST(0x000089A700000000 AS DateTime), N'Việt Nam', N'Tiền đạo', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (53, N'Trần Huỳnh Lân', CAST(0x00007FF200000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (54, N'Nguyễn Tài Lộc', CAST(0x00007F8700000000 AS DateTime), N'Việt Nam', N'Tiền vệ	', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (55, N'Hoàng Danh Ngọc', CAST(0x000072DD00000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (56, N'Phạm Thanh Cường', CAST(0x00007A6F00000000 AS DateTime), N'Việt Nam', N'Trung vệ', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (57, N'Huỳnh Quang Thanh', CAST(0x0000782000000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (58, N'Phan Tấn Tài', CAST(0x00008C2300000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'FOREIGN', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (59, N'Nguyễn Tiến Anh', CAST(0x0000808A00000000 AS DateTime), N'Việt Nam', N'Thủ môn', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (60, N'Nguyễn Nam Anh', CAST(0x0000852C00000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (61, N'Phạm Hoàng Lâm', CAST(0x000084E500000000 AS DateTime), N'Việt Nam', N'Trung vệ', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (62, N'Nguyễn Huỳnh Quốc Cường', CAST(0x0000764700000000 AS DateTime), N'Việt Nam', N'Thủ môn', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (63, N'Nguyễn Đình Hiệp', CAST(0x0000817300000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (64, N'Oseni Ganiyu Bolaji', CAST(0x0000825A00000000 AS DateTime), NULL, N'Tiền đạo', N'FOREIGN', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (65, N'Nguyễn Văn Nam', CAST(0x00007F7800000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'DLA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (66, N'Đinh Xuân Việt', CAST(0x0000770600000000 AS DateTime), N'Việt Nam', N'Thủ môn', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (67, N'Lê Minh Hòa', CAST(0x000080E800000000 AS DateTime), N'Việt Nam', N'Hậu vệ	', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (68, N'Châu Lê Phước Vĩnh', CAST(0x000079C200000000 AS DateTime), N'Việt Nam', N'Trung vệ', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (69, N'Võ Duy Nam', CAST(0x00007A3E00000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (70, N'Victor Manuel Ormazabal', CAST(0x000079A200000000 AS DateTime), NULL, N'Tiền đạo', N'FOREIGN', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (71, N'Nguyễn Tuấn Anh', CAST(0x00007E1100000000 AS DateTime), N'Việt Nam', N'Tiền đạo', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (72, N'Dyachenko Rodion Sergey', CAST(0x0000768E00000000 AS DateTime), N'Việt Nam', N'Tiền đạo', N'FOREIGN', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (73, N'Nguyễn Văn Việt', CAST(0x000079C300000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (75, N'Nguyễn Anh Tài', CAST(0xFFFFEB1500000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (76, N'Đỗ Thanh Sang', CAST(0x00007DEB00000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (77, N'Nguyễn Hữu Tuấn', CAST(0x000083A100000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (78, N'Đậu Thanh Phong', CAST(0x0000852C00000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (79, N'Nguyễn Minh Trung', CAST(0x0000843A00000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (80, N'Trần Thanh Bình', CAST(0x000085E400000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (81, N'Lê Mạnh Dũng', CAST(0x0000875100000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (82, N'Trương Đình Luật', CAST(0x000076C900000000 AS DateTime), N'Việt Nam', N'Trung vệ', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (83, N'Nguyễn Tuấn Đạt', CAST(0x000080C600000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (84, N'Trần Hoàng Phương', CAST(0x0000867B00000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (85, N'Bùi Trần Kiệt', CAST(0x0000867B00000000 AS DateTime), N'Việt Nam', N'Tiền vệ	', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (86, N'Lương Văn Nhàn', CAST(0x00007B1000000000 AS DateTime), N'Việt Nam', N'Thủ môn', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (87, N'Trần Quốc Anh', CAST(0x00007E0A00000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (88, N'Trần Quang Chiến', CAST(0x0000830900000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (89, N'Nguyễn Hồng Việt', CAST(0x00007F5900000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (90, N'Nguyễn Trọng Phi', CAST(0x0000823300000000 AS DateTime), N'Việt Nam', N'Tiền đạo', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (91, N'Phạm Đặng Duy An', CAST(0x000076C900000000 AS DateTime), N'Việt Nam', N'Trung vệ', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (92, N'Nguyễn Quốc Thiện Esele', CAST(0x0000785500000000 AS DateTime), N'Việt Nam', N'Thủ môn', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (93, N'Âu Văn Hoàn', CAST(0x00007FD200000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'HCM')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (94, N'Tô Vĩnh Lợi', CAST(0x000079A400000000 AS DateTime), N'Việt Nam', N'Thủ môn', N'INTERNAL', N'HGL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (95, N'Lê Văn Sơn', CAST(0x0000895600000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'HGL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (96, N'A Sân', CAST(0x0000895500000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'HGL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (97, N'Phạm Đăng Tuấn', CAST(0x0000882900000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'HGL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (98, N'Trần Hữu Đông Triều', CAST(0x0000768E00000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'HGL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (99, N'Trần Thế Kiệt', CAST(0x0000853000000000 AS DateTime), N'Việt Nam', N'Thủ môn', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (100, N'Trần Trọng Bình', CAST(0x0000776300000000 AS DateTime), N'Việt Nam', N'Trung vệ', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (101, N'Trần Văn Vũ', CAST(0x0000842F00000000 AS DateTime), N'Việt Nam', N'Trung vệ', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (102, N'Nguyễn Minh Huy', CAST(0x000083A300000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (103, N'Hoàng Nhật Nam', CAST(0x000081B900000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (104, N' Lâm Ti Phông', CAST(0x0000895600000000 AS DateTime), N'Việt Nam', N'Tiền đạo', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (105, N'Lê Cao Hoài An', CAST(0x000084D300000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (106, N'Trần Đình Khương', CAST(0x0000895600000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (107, N'Phạm Trùm Tỉnh', CAST(0x0000881C00000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (108, N'Đặng Như Tứ', CAST(0x0000851E00000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (109, N'Nguyễn Hoàng Quốc Chí', CAST(0x0000826900000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (110, N' Nguyễn Đình Nhơn', CAST(0x000081D800000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (111, N'Nguyễn Đoàn Duy Anh', CAST(0x000087E800000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (112, N'Nguyễn Viết Bính', CAST(0x00007B1000000000 AS DateTime), N'Việt Nam', N'Tiền đạo', N'INTERNAL', N'KKH')
GO
print 'Processed 100 total records'
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (113, N'Nguyễn Tấn Tài', CAST(0x000081ED00000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (114, N' Trần Đình Kha', CAST(0x0000864900000000 AS DateTime), N'Việt Nam', N'Tiền đạo', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (115, N'Ngô Quốc Cường', CAST(0x0000880500000000 AS DateTime), N'Việt Nam', N'Thủ môn', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (116, N'Lê Duy Thanh', CAST(0x0000809200000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (117, N'Nguyễn Tuấn Mạnh', CAST(0x0000809D00000000 AS DateTime), N'Việt Nam', N'Thủ môn', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (118, N'Võ Út Cường', CAST(0x0000819C00000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (119, N'Nguyễn Cửu Huy Hoàng', CAST(0x0000809200000000 AS DateTime), N'Việt Nam', N'Trung vệ', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (120, N'Đoàn Công Thành', CAST(0x00008AC300000000 AS DateTime), N'Việt Nam', N'Trung vệ', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (121, N'Trần Văn Vũ', CAST(0x0000867800000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (122, N'Nguyễn Tấn Điền', CAST(0x000077F600000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (123, N'Nguyễn Đình Lợi', CAST(0x0000843A00000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (124, N' Zarour Chaher', CAST(0x0000779F00000000 AS DateTime), NULL, N'Trung vệ', N'FOREIGN', N'KKH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (125, N'Nguyễn Minh Phong', CAST(0x00007B2E00000000 AS DateTime), N'Việt Nam', N'Thủ môn', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (126, N' Trần Văn Học', CAST(0x00007C9F00000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (127, N'Đặng Hữu Phước', CAST(0x0000816100000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (128, N'Trần Văn Tâm', CAST(0x000083BE00000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (129, N'Thiago', CAST(0x000082CD00000000 AS DateTime), NULL, N'Hậu vệ', N'FOREIGN', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (130, N'Huỳnh Tấn Sinh', CAST(0x00008A4700000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (131, N'Đinh Thanh Trung', CAST(0x00007E8600000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (132, N'Hà Minh Tuấn', CAST(0x000082CB00000000 AS DateTime), N'Việt Nam', N'Tiền đạo', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (133, N'Đoàn Hùng Sơn', CAST(0x00007B3200000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (134, N'Nguyễn Văn Hậu', CAST(0x00007F7E00000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (135, N'Đào Văn Phong', CAST(0x000078D000000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (136, N'Trần Hoàng Hưng', CAST(0x00008A3200000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (137, N'Nguyễn Đức Cường', CAST(0x0000897500000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (138, N'Nguyễn Huy Tân', CAST(0x0000869C00000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (139, N'Phan Thanh Hưng', CAST(0x00007C9B00000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (140, N' Nguyễn Đức Rin', CAST(0x0000867B00000000 AS DateTime), N'Việt Nam', N'Tiền đạo', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (141, N' Trần Mạnh Toàn', CAST(0x00007DEC00000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (142, N'Phan Đình Thắng', CAST(0x000083A000000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (143, N'Phạm Văn Cường', CAST(0x000080C600000000 AS DateTime), N'Việt Nam', N'Thủ môn', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (144, N'Nguyễn Xuân Nam', CAST(0x00007C7E00000000 AS DateTime), N'Việt Nam', N'Thủ môn', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (145, N'Nguyễn Văn Thạnh', CAST(0x0000823300000000 AS DateTime), N'Việt Nam', N'Tiền đạo', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (146, N'Nguyễn Anh Tuấn', CAST(0x000080C600000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (147, N'Nguyễn Huy Hùng', CAST(0x000083A100000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (148, N'Phan Đỗ Nhật Tân', CAST(0x0000825200000000 AS DateTime), N'Việt Nam', N'Trung vệ', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (149, N'Hồ Văn Thuận', CAST(0x000079A400000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (150, N'Nguyễn Ngọc Nguyên', CAST(0x00007A7900000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (151, N'Dos Reis R Claudecir', CAST(0x00007F7600000000 AS DateTime), N'Việt Nam', N'Tiền đạo', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (152, N'Nguyễn Trung Đại Dương', CAST(0x00007B1100000000 AS DateTime), N'Việt Nam', N'Tiền đạo', N'INTERNAL', N'QNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (153, N'Đặng Ngọc Tuấn', CAST(0x0000880500000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (154, N'Nguyễn Thái Sung', CAST(0x0000867B00000000 AS DateTime), N'Việt Nam', N'Tiền vệ', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (155, N'Võ Huy Toàn', CAST(0x0000850E00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (156, N'Bùi Văn Long', CAST(0x00007DEC00000000 AS DateTime), N'Việt Nam', N'Hậu vệ', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (157, N'Đặng Anh Tuấn', CAST(0x0000871500000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (159, N'Nguyễn Thanh Hải', CAST(0x00008AC600000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (160, N'Ngô Quang Huy', CAST(0x0000816000000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (161, N'Phan Văn Long', CAST(0x0000899300000000 AS DateTime), NULL, N'Tiền đạo', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (162, N'Hoàng Minh Tâm', CAST(0x0000813F00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (163, N'Nguyễn Thanh Bình', CAST(0x00007C7E00000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (164, N'Nguyễn Văn Thắng', CAST(0x000081C400000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (165, N' Bùi Tiến Dụng', CAST(0x00008C5100000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (166, N'Nguyễn Vũ Phong', CAST(0x000079A600000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (167, N'Đỗ Merlo', CAST(0x00007A2000000000 AS DateTime), NULL, N'Tiền đạo', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (168, N' Võ Nhật Tân', CAST(0x00007E0900000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (169, N'Phan Duy Lam', CAST(0x00007DEC00000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (170, N' Đỗ Thanh Thịnh', CAST(0x00008CAE00000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (171, N'Phan Đức Lễ', CAST(0x0000850E00000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (172, N'Mai Thanh Nam', CAST(0x0000810700000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (173, N'Lê Văn Hưng', CAST(0x00007CA000000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (174, N'Hà Đức Chinh', CAST(0x00008B7000000000 AS DateTime), NULL, N'Tiền đạo', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (175, N'Nguyễn Hữu Phúc', CAST(0x000083D900000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (176, N'Lâm Anh Quang', CAST(0x000082AD00000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (177, N'Phạm Trọng Hóa', CAST(0x00008CAC00000000 AS DateTime), NULL, N'Tiền đạo', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (178, N'BritezEzezequiel David', CAST(0x00007A3E00000000 AS DateTime), NULL, N'Hậu vệ', N'FOREIGN', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (179, N' Mạc Đức Việt Anh', CAST(0x0000826300000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'SDN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (180, N'Trần Nguyên Mạnh', CAST(0x0000827000000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (181, N' Phạm Thế Nhật', CAST(0x0000827000000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (182, N'Võ Ngọc Đức', CAST(0x000086F600000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (183, N'Quế Ngọc Hải', CAST(0x0000853500000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (184, N'Hoàng Văn Khánh', CAST(0x0000880A00000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (185, N' Trần Đình Hoàng', CAST(0x0000825000000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (186, N'Nguyễn Văn Vinh', CAST(0x000078B400000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (187, N'Hồ Sỹ Sâm', CAST(0x0000854B00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (188, N'Võ Ngọc Toàn', CAST(0x000086B700000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (189, N'Trần Phi Sơn', CAST(0x000083C000000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (190, N'Phạm Xuân Mạnh', CAST(0x0000896300000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (191, N'Hồ Khắc Ngọc', CAST(0x000083D700000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (192, N'Đậu Thanh Phong', CAST(0x000084E600000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (193, N'Cao Xuân Thắng', CAST(0x0000850E00000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (194, N' Hồ Phúc Tịnh', CAST(0x000086B800000000 AS DateTime), NULL, N'Tiền đạo', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (195, N'Nguyễn Minh Đức', CAST(0x000076E700000000 AS DateTime), NULL, N'Trung vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (196, N'Phan Văn Đức', CAST(0x0000897700000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (197, N'Nguyễn Sỹ Nam', CAST(0x0000852D00000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (198, N' Lê Quang Đại', CAST(0x0000853000000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (199, N' Ngô Xuân Toàn', CAST(0x000084B700000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (200, N' Nguyễn Văn Mạnh', CAST(0x000085A600000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (201, N' Nguyễn Viết Nguyên', CAST(0x000087FC00000000 AS DateTime), NULL, N'Tiền đạo', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (203, N'Henry Shackiel', CAST(0x0000869D00000000 AS DateTime), NULL, N'Tiền đạo', N'FOREIGN', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (204, N'Nguyễn Phú Nguyên', CAST(0x0000888100000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (205, N' Lê Thế Cường', CAST(0x0000816C00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (206, N' Hồ Tuấn Tài', CAST(0x0000886400000000 AS DateTime), NULL, N'Tiền đạo', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (207, N' Lê Văn Hùng', CAST(0x000083C300000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (208, N'Trần Văn Tiến', CAST(0x000086F000000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'SNA')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (210, N'Nguyễn Đông Vịnh', CAST(0x00007E0B00000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'TDT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (211, N'Hồ Trường Khang', CAST(0x0000869A00000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'TDT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (212, N'Lê Tấn Phi', CAST(0x0000880700000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TDT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (213, N'Dương Văn Hòa', CAST(0x0000825500000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TDT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (214, N'Bạch Đăng Khoa', CAST(0x0000852200000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TDT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (215, N'Lâm Thuận', CAST(0x00008C5100000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TDT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (216, N'Nguyễn Thiện Chí', CAST(0x000087EF00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TDT')
GO
print 'Processed 200 total records'
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (217, N'Nguyễn Văn Thạnh', CAST(0x0000851000000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'TDT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (218, N'Nguyễn Vĩnh Đức', CAST(0x000086B800000000 AS DateTime), NULL, N'Tiền đạo', N'INTERNAL', N'TDT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (220, N'Trần Minh Lợi', CAST(0x00007B2E00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TDT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (221, N'Nguyễn Công Thành', CAST(0x00008AA400000000 AS DateTime), NULL, N'Tiền đạo', N'INTERNAL', N'TDT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (222, N'Lâm Huệ Dũng', CAST(0x00007E1A00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TDT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (223, N' Nguyễn Duy Phương', CAST(0x00007F7800000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TDT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (224, N'Phan Minh Tâm', CAST(0x00007E0E00000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'TDT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (225, N'Nguyễn Đồng Tháp', CAST(0x0000880700000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'TDT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (226, N'Ngô Văn Chơn', CAST(0x00008D9F00000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'TDT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (227, N'Nguyễn Hoài Anh', CAST(0x0000850E00000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (228, N'Dương Văn Khoa', CAST(0x000086B800000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (229, N'Dương Thanh Hào', CAST(0x0000825200000000 AS DateTime), NULL, N'Trung vệ', N'FOREIGN', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (230, N'Nguyễn Minh Tùng', CAST(0x0000841F00000000 AS DateTime), NULL, N'Trung vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (231, N'Vũ Minh Tuấn', CAST(0x000080F400000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (232, N'Giang Trần Quách Tân', CAST(0x0000841100000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (233, N'Bùi Văn Hiếu', CAST(0x00007F0D00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (234, N'Dyachenko Rodion Sergey', CAST(0x000076EC00000000 AS DateTime), NULL, N'Tiền đạo', N'FOREIGN', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (235, N'Tambwe Patiyo', CAST(0x000077F000000000 AS DateTime), NULL, N'Tiền đạo', N'FOREIGN', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (236, N'Hồ Hùng Cường', CAST(0x000087AD00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (237, N'Trịnh Hoa Hùng', CAST(0x000082AC00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (238, N' Nguyễn Hải Huy', CAST(0x0000823500000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (239, N'Đào Nhật Minh', CAST(0x000083B600000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (240, N' Nguyễn Văn Điều', CAST(0x00008A7C00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (241, N'Mạc Hồng Quân', CAST(0x0000843900000000 AS DateTime), NULL, N'Tiền đạo', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (242, N'Nguyễn Huy Cường', CAST(0x00007B1300000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (243, N'Nguyễn Xuân Hùng', CAST(0x0000823500000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (244, N'Huỳnh Tuấn Linh', CAST(0x0000828A00000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (245, N'Vũ Viết Triều', CAST(0x00008AC500000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (246, N' Lê Tuấn Tú', CAST(0x000085A600000000 AS DateTime), NULL, N'Trung vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (247, N'Ngô Đức Thắng', CAST(0x00007DDE00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (248, N'Trần Trung Hiếu', CAST(0x000084C400000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (249, N'Phạm Nguyên Sa', CAST(0x00007EFC00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (250, N'Nguyễn Thanh Hiền', CAST(0x0000851400000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (251, N' Nghiêm Xuân Tú', CAST(0x00007E0100000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (252, N'Hoàng Tuấn Anh', CAST(0x0000809D00000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (253, N'Hoàng Văn Hưng', CAST(0x0000878F00000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'TQN')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (254, N' Nguyễn Đại Đồng', CAST(0x00007B1100000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (255, N'Nguyễn Văn Dũng', CAST(0x0000869600000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (256, N'Nguyễn Văn Biển', CAST(0x0000795300000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (257, N'Đặng Văn Tới', CAST(0x00008D5E00000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (258, N'Sầm Ngọc Đức', CAST(0x000083BE00000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (259, N'Moses Oloya', CAST(0x0000837A00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (260, N'Phạm Văn Thành', CAST(0x0000867D00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (261, N'Nguyễn Văn Quyết', CAST(0x000081D600000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (262, N'Phạm Thành Lương', CAST(0x00007E3300000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (263, N'Trần Văn Kiên', CAST(0x0000897700000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (264, N'Nguyễn Minh Hải', CAST(0x000086B700000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (265, N'Nguyễn Thành Chung', CAST(0x00008ACE00000000 AS DateTime), NULL, N'Trung vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (266, N' Đoàn Văn Hậu', CAST(0x00008E3C00000000 AS DateTime), NULL, N'Trung vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (267, N'Trần Anh Đức', CAST(0x0000823200000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (268, N'Nguyễn Quang Hải', CAST(0x00008AC700000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (269, N'Nguyễn Hải An', CAST(0x00007DF000000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (270, N'Đỗ Duy Mạnh', CAST(0x0000897800000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (271, N'Phạm Đức Huy', CAST(0x000088BD00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (272, N'Nguyễn Văn Công', CAST(0x000083A300000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (273, N'Phí Minh Long', CAST(0x0000880A00000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (274, N' Hoàng Vũ Samson', CAST(0x00007E0C00000000 AS DateTime), NULL, N'Tiền đạo', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (275, N'Trương Văn Thái Quý', CAST(0x00008A7D00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (276, N'Alvaro Linares Silva', CAST(0x0000780C00000000 AS DateTime), NULL, N'Trung vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (277, N'Đỗ Hùng Dũng', CAST(0x0000852B00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (278, N'Đào Duy Khánh', CAST(0x0000867D00000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (279, N' Oseni Ganiyu Bolaji', CAST(0x000081E000000000 AS DateTime), NULL, N'Tiền đạo', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (280, N'Trịnh Duy Long', CAST(0x000083C300000000 AS DateTime), NULL, N'Tiền đạo', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (281, N'Hồ Minh Dĩ', CAST(0x00008C4F00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'TT')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (282, N'Hoàng Ngọc Hào', CAST(0x0000867B00000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (283, N'Ngô Anh Vũ', CAST(0x00007F0600000000 AS DateTime), NULL, N'Trung vệ', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (284, N'Nguyễn Văn Ngọ', CAST(0x0000832E00000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (285, N'Nguyễn Tiến Duy', CAST(0x0000825500000000 AS DateTime), NULL, N'Trung vệ', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (286, N' Chu Khánh Thành', CAST(0x00007CA000000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (287, N' Nguyễn Ngọc Duy', CAST(0x00007AC700000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (288, N' Nguyễn Xuân Nam', CAST(0x0000868B00000000 AS DateTime), NULL, N'Tiền đạo', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (289, N'Huỳnh Văn Thanh', CAST(0x000083A200000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (290, N' Marcelo Fernandes', CAST(0x0000825000000000 AS DateTime), NULL, N'Tiền đạo', N'FOREIGN', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (291, N'Patrick Dos Santos Cruz', CAST(0x0000863100000000 AS DateTime), NULL, N'Tiền đạo', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (292, N'Cao Hoa Kỳ', CAST(0x0000807C00000000 AS DateTime), NULL, N'Trung vệ', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (293, N' Đỗ Văn Thuận', CAST(0x0000835D00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (294, N' Trần Hữu Thắng', CAST(0x00007F1900000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (295, N'Bùi Trần Vũ', CAST(0x00007EFC00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (296, N' Lê Hoàng Thiên', CAST(0x0000806B00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (297, N'Trương Công Thảo', CAST(0x00007F5900000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (298, N'Nguyễn Xuân Dương', CAST(0x0000807F00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (299, N'Nguyễn Quốc Long', CAST(0x00007EC100000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (300, N'Cao Văn Triền', CAST(0x0000854600000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (301, N'Tống Đức An', CAST(0x000081DE00000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (302, N' Nguyễn Văn Hoàng', CAST(0x0000884200000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (303, N'Thân Thành Tín', CAST(0x000084B300000000 AS DateTime), NULL, N'Trung vệ', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (304, N'Nguyễn Hữu Sơn', CAST(0x0000895700000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (305, N'Ngân Văn Đại', CAST(0x000083C000000000 AS DateTime), NULL, N'Tiền đạo', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (306, N'Phạm Văn Phong', CAST(0x0000852D00000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'VTEL')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (307, N'Đặng Văn Lâm', CAST(0x000084B300000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (308, N' Nguyễn Anh Hùng', CAST(0x000083A300000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (309, N'Nguyễn Văn Đức', CAST(0x0000851000000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (311, N'Lê Xuân Anh', CAST(0x0000850F00000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (312, N'Nguyễn Minh Châu', CAST(0x000079A600000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (313, N'Trịnh Văn Lợi', CAST(0x000087F800000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (314, N'Andre Diego Fagan', CAST(0x00007C7F00000000 AS DateTime), NULL, N'Tiền đạo', N'FOREIGN', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (315, N'Errol Anthony Stevens', CAST(0x00007AB900000000 AS DateTime), NULL, N'Tiền đạo', N'FOREIGN', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (316, N'Nguyễn Cảnh Dương', CAST(0x0000818300000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (317, N'Diệp Hoài Xuân', CAST(0x000083A200000000 AS DateTime), NULL, N'Trung vệ', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (318, N'Doãn Ngọc Tân', CAST(0x0000867C00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (319, N'Phùng Văn Nhiên', CAST(0x0000754D00000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'XHP')
GO
print 'Processed 300 total records'
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (320, N'Đặng Khánh Lâm', CAST(0x000078FD00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (321, N'Lê Văn Phú', CAST(0x0000766E00000000 AS DateTime), NULL, N'Trung vệ', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (322, N'Vương Quốc Trung', CAST(0x000080D000000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (323, N'Vũ Ngọc Thịnh', CAST(0x0000834200000000 AS DateTime), NULL, N'Trung vệ', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (324, N'Lê Văn Sáu', CAST(0x0000823500000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (325, N'Lê Xuân Hùng', CAST(0x000082DB00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (326, N'Phan Vũ Đình Hải', CAST(0x0000867C00000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (327, N'Nguyễn Vũ Hoàng Dương', CAST(0x000083FF00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (328, N'Nguyễn Đình Bảo', CAST(0x000081D800000000 AS DateTime), NULL, N'Tiền đạo', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (329, N' Lê Ngọc Nam', CAST(0x0000850F00000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (330, N'Nguyễn Xuân Hướng', CAST(0x000087E900000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (331, N' Nguyễn Hồng Phong', CAST(0x00007C8000000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (332, N'Phạm Xuân Luân', CAST(0x0000862000000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (333, N'Phạm Xuân Luân', CAST(0x0000867B00000000 AS DateTime), NULL, N'Thủ môn', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (334, N' Trần Quốc Tuấn', CAST(0x00007B1500000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'XHP')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (344, N'Phạm Mạnh Hùng', CAST(0x0000853000000000 AS DateTime), NULL, N'Hậu vệ', N'INTERNAL', N'THH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (345, N'Nguyễn Minh Tùng	', CAST(0x0000877200000000 AS DateTime), NULL, N'Tiền vệ', N'INTERNAL', N'THH')
INSERT [dbo].[footballer] ([id], [name], [birth_date], [hometown], [position], [footballer_type_id], [footballClub_id]) VALUES (346, N'Alejandro O.Insaurralde	', CAST(0x00006E8000000000 AS DateTime), NULL, N'Trung vệ', N'FOREIGN', N'THH')
SET IDENTITY_INSERT [dbo].[footballer] OFF
/****** Object:  Table [dbo].[content]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[content](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NULL,
	[meta_title] [varchar](250) NULL,
	[description_content] [nvarchar](500) NULL,
	[url_image] [nvarchar](250) NULL,
	[detail] [ntext] NULL,
	[content_category_id] [int] NULL,
	[view_count] [int] NULL,
	[share_count] [int] NULL,
	[tag] [nvarchar](500) NULL,
	[seo_title] [nvarchar](250) NULL,
	[created_at] [datetime] NULL,
	[created_by] [varchar](50) NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [varchar](50) NULL,
	[meta_keyword] [nvarchar](250) NULL,
	[meta_description] [nvarchar](500) NULL,
	[is_active] [bit] NOT NULL,
	[is_top_hot] [bit] NOT NULL,
 CONSTRAINT [pk_content_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[content] ON
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (14, N'Vòng cuối V.League 2017: Cúp trong tay đội bóng bầu Hiển', N'vong-cuoi-v-league-2017-cup-trong-tay-doi-bong-bau-hien', N'CLB Hà Nội của bầu Hiển đóng vai kẻ bám đuổi trong phần lớn chặng đường đua vô địch V.League 2017, nhưng đến vòng đấu cuối họ là đội duy nhất có quyền tự quyết trong tay.', N'/Data/images/content/vleague/content_1.jpg', N'<p>Đội ĐKVĐ đ&atilde; đập tan mọi thuyết &ldquo;&acirc;m mưu&rdquo; của dư luận bằng chiến thắng 1-0 trước Quảng Nam v&ograve;ng 25. Nhờ kết quả đối đầu tốt hơn, họ vươn l&ecirc;n dẫn đầu V.League d&ugrave; c&oacute; c&ugrave;ng 45 điểm với đối thủ (Quảng Nam thắng 2-1 ở lượt đi nhưng thua 0-1 ở lượt về, H&agrave; Nội xếp tr&ecirc;n nhờ ghi b&agrave;n thắng s&acirc;n kh&aacute;ch).</p>

<p>Nếu đ&aacute;nh bại Quảng Ninh chiều 25/11, đội b&oacute;ng thủ đ&ocirc; sẽ bảo vệ th&agrave;nh c&ocirc;ng ng&ocirc;i v&ocirc; địch. D&ugrave; kết quả tr&ecirc;n s&acirc;n Cẩm Phả thế n&agrave;o, đội b&oacute;ng của&nbsp;<a href="https://news.zing.vn/bau-hien-tieu-diem.html" title="Tin tức Bầu Hiển">bầu Hiển</a>&nbsp;cũng l&agrave; t&aacute;c nh&acirc;n quyết định tạo n&ecirc;n cuộc đua v&ocirc; địch kịch t&iacute;nh nhất V.League từ trước đến nay.</p>

<p><img alt="" src="/Data/images/content/vleague/content_3.jpg" style="height:436px; width:660px" /></p>

<h3>Vật cản kh&oacute; chịu Than&nbsp; Quảng Ninh</h3>

<p>So Quảng Nam v&agrave; Thanh H&oacute;a, CLB H&agrave; Nội c&oacute; lịch thi đấu kh&oacute; nhất. L&agrave;m kh&aacute;ch tr&ecirc;n s&acirc;n Cẩm Phả của Than Quảng Ninh l&agrave; thử th&aacute;ch lớn với bất cứ đội b&oacute;ng nội n&agrave;o. Đội b&oacute;ng v&ugrave;ng mỏ c&oacute; nhiều cầu thủ chất lượng, đồng thời vẫn c&ograve;n mục ti&ecirc;u r&otilde; r&agrave;ng để phấn đấu.</p>

<p>Đang c&oacute; 42 điểm v&agrave; xếp thứ 4, Quảng Ninh vẫn c&ograve;n cơ hội đứng trong tốp 3 cuối m&ugrave;a nếu thắng CLB H&agrave; Nội. Lượt đi, họ chỉ thua đối thủ 2-3 tr&ecirc;n s&acirc;n H&agrave;ng Đẫy. Cả đội trưởng Vũ Minh Tuấn lẫn HLV Phan Thanh H&ugrave;ng đều tuy&ecirc;n bố kh&ocirc;ng c&oacute; chuyện đ&aacute; lỏng ch&acirc;n để gi&uacute;p đội kh&aacute;ch l&ecirc;n ng&ocirc;i.</p>

<p>&nbsp;</p>

<p>L&uacute;c n&agrave;y, Quảng Ninh đang gặp kh&oacute; khăn về t&agrave;i ch&iacute;nh, một loạt trụ cột sẽ ra đi sau V.League 2017? B&ecirc;n cạnh đ&oacute;, đội b&oacute;ng n&agrave;y bị xem l&agrave; c&oacute; d&acirc;y dưa với bầu Hiển. Điều n&agrave;y chắc hẳn l&agrave;m cho kh&ocirc;ng &iacute;t cầu thủ v&ugrave;ng mỏ &ldquo;tự &aacute;i&rdquo;. V&igrave; thế việc đ&aacute;nh bại H&agrave; Nội v&agrave; xếp tr&ecirc;n ch&iacute;nh đối thủ khi m&ugrave;a giải kết th&uacute;c l&agrave; c&acirc;u trả lời tuyệt vời của Quảng Ninh gửi đến mọi người.</p>

<p>So với H&agrave; Nội, cửa v&ocirc; địch của Thanh H&oacute;a kh&oacute; hơn bội phần. Đội b&oacute;ng xứ Thanh một mặt phải đ&aacute;nh bại SLNA tr&ecirc;n s&acirc;n kh&aacute;ch, mặt kh&aacute;c tr&ocirc;ng chờ cả H&agrave; Nội v&agrave; Quảng Nam c&ugrave;ng mất điểm. Nều h&ograve;a tr&ecirc;n s&acirc;n Vinh, Thanh H&oacute;a sẽ v&ocirc; địch trong trường hợp cả hai đối thủ c&ugrave;ng thua. Để những điều n&agrave;y xảy ra đồng thời l&agrave; chuyện qu&aacute; kh&oacute;.</p>

<p>Ngay cả việc đ&aacute;nh bại SLNA cũng kh&ocirc;ng dễ cho thầy tr&ograve; HLV Petrovic. Đội b&oacute;ng xứ Nghệ quyết t&acirc;m trả m&oacute;n nợ thua 0-2 ở lượt đi đồng thời muốn gi&agrave;nh thắng lợi để tạo đ&agrave; t&acirc;m l&yacute; thuận lợi trước trận chung kết lượt về C&uacute;p Quốc gia. Thanh H&oacute;a chỉ c&oacute; thể tự tr&aacute;ch m&igrave;nh khi chơi sa s&uacute;t ở giai đoạn 2 d&ugrave; bỏ xa Quảng Nam đến 6 điểm sau 13 trận đầu ti&ecirc;n.</p>

<p><img alt="" src="/Data/images/content/vleague/content_4.jpg" style="height:434px; width:660px" /></p>

<h3>Quảng Nam chờ mở hội</h3>

<p>Trận thua tr&ecirc;n s&acirc;n H&agrave;ng Đẫy khiến đo&agrave;n qu&acirc;n của HLV Ho&agrave;ng Văn Ph&uacute;c kh&ocirc;ng c&ograve;n quyền tự quyết, nhưng cơ hội của v&ocirc; địch của họ vẫn c&ograve;n nhiều. Cửa thắng cho họ trước TP.HCM rất s&aacute;ng. Đội kh&aacute;ch vốn vắng &Acirc;u Văn Ho&agrave;n, Claudecir do thẻ phạt c&ugrave;ng phong độ bất ổn thời gian gần đ&acirc;y.</p>

<p>Ba trận gần nhất, đội b&oacute;ng của quyền Chủ tịch L&ecirc; C&ocirc;ng Vinh to&agrave;n thua. D&ugrave; cựu tiền đạo n&agrave;y sa thải HLV Alain Fiard sau v&ograve;ng 24, t&igrave;nh h&igrave;nh của đội kh&ocirc;ng được cải thiện khi thua Than Quảng Ninh bạc nhược 2-4. C&ocirc;ng Vinh d&ugrave;ng 1 tỷ đồng để treo thưởng nếu thắng Quảng Ninh.</p>

<p>&nbsp;</p>

<p>Nếu gi&agrave;nh trọn 3 điểm, Quảng Nam chỉ cần nghe ng&oacute;ng trận đấu tại Cẩm Phả. Trong trường hợp H&agrave; Nội kh&ocirc;ng thắng, đội b&oacute;ng xứ Quảng sẽ l&agrave;m n&ecirc;n lịch sử. Đội b&oacute;ng của HLV Ho&agrave;ng Văn Ph&uacute;c thể hiện phong độ ổn định v&agrave; biết c&aacute;ch tăng tốc đ&uacute;ng l&uacute;c ở giai đoạn 2 khi Thanh H&oacute;a sa s&uacute;t.</p>

<p>Cờ l&uacute;c n&agrave;y đang trong tay đội b&oacute;ng bầu Hiển nhưng Quảng Nam c&oacute; niềm tin sẽ trở th&agrave;nh t&acirc;n vương của V.League.</p>

<p><img alt="" src="/Data/images/content/vleague/content_2.jpg" style="height:1177px; width:660px" /></p>
', 1, 24, 5, N'Bầu Hiển', N'Vòng cuối V.League 2017: Cúp trong tay đội bóng bầu Hiển', CAST(0x0000A836012A5F97 AS DateTime), N'ad', CAST(0x0000A83E00159ACA AS DateTime), N'ad', N'Bầu Hiển', N'CLB Hà Nội của bầu Hiển đóng vai kẻ bám đuổi trong phần lớn chặng đường đua vô địch V.League 2017, nhưng đến vòng đấu cuối họ là đội duy nhất có quyền tự quyết trong tay.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (15, N'CHÍNH THỨC: Huỳnh Đức chia tay SHB Đà Nẵng sau V-League 2017', N'chinh-thuc-huynh-duc-chia-tay-shb-da-nang-sau-v-league-2017', N'Sau những thông tin được đồn đoán trước đó, Lê Huỳnh Đức đã chính thức xin rút lui khỏi vị trí HLV trưởng SHB Đà Nẵng khi mùa giải 2017 kết thúc, sau buổi họp với toàn thể BHL và cầu thủ chiều 15/11.', N'/Data/images/content/vleague/anh1-2242.jpg', N'<p>Trước khi bước v&agrave;o buổi tập chiều 15/11 để chuẩn bị cho cuộc tiếp đ&oacute;n S&agrave;i G&ograve;n FC v&agrave;o cuối tuần n&agrave;y, HLV L&ecirc; Huỳnh Đức đ&atilde; d&agrave;nh một &iacute;t thời gian để họp BHL v&agrave; to&agrave;n đội để truyền đạt những t&acirc;m tư, &yacute; định của m&igrave;nh.</p>

<p>Theo đ&oacute;, nh&agrave; cầm qu&acirc;n đ&atilde; gắn liền với SHB Đ&agrave; Nẵng trong suốt 10 năm qua đưa ra quyết định xin r&uacute;t lui khỏi vị tr&iacute; HLV trưởng đội b&oacute;ng s&ocirc;ng H&agrave;n khi m&ugrave;a giải 2017 kết th&uacute;c, bất chấp sự thuyết phục của c&aacute;c cầu thủ.</p>

<p><img alt="" src="/Data/images/content/vleague/anh1-2242.jpg" style="height:360px; width:640px" /></p>

<p>Sau đ&oacute;, buổi tập diễn ra với t&acirc;m l&yacute; nặng nề, sự buồn b&atilde; được thể hiện tr&ecirc;n hầu hết khu&ocirc;n mắt của c&aacute;c cầu thủ. Thậm ch&iacute; khi kết th&uacute;c buổi tập, tiền vệ Ho&agrave;ng Minh T&acirc;m đ&atilde; đăng tải d&ograve;ng t&acirc;m trạng: &ldquo;<em>Lần đầu ti&ecirc;n trong một buổi tập t&ocirc;i phải cố gắng gượng cười...!</em>&rdquo;. C&ograve;n tiền vệ Nguyễn Thanh Hải th&igrave; chỉ ngắn gọn: &rdquo;<em>Lời chia tay dễ n&oacute;i thế sao anh&hellip;!</em>&rdquo;</p>

<p>Hiện BLĐ SHB Đ&agrave; Nẵng vẫn chưa l&ecirc;n tiếng về việc n&agrave;y, họ chỉ cho biết th&ocirc;ng tin khi c&oacute; kết quả l&agrave;m việc với HLV L&ecirc; Huỳnh Đức sau khi m&ugrave;a giải kết th&uacute;c. Tuy nhi&ecirc;n, việc Huỳnh Đức xin r&uacute;t lui dường như kh&ocirc;ng thể cứu v&atilde;n được nữa. &Ocirc;ng muốn nghỉ ngơi một thời gian trước khi quyết định quay trở lại với nghiệp cầm qu&acirc;n.</p>

<p><img alt="" src="/Data/images/content/vleague/anh2-2243.jpg" style="height:434px; width:640px" /></p>

<p>Th&ocirc;ng tin Huỳnh Đức rời SHB Đ&agrave; Nẵng đang thật sự khiến người h&acirc;m mộ đội b&oacute;ng s&ocirc;ng H&agrave;n &ldquo;dậy s&oacute;ng&rdquo; thật sự, bởi họ thừa hiểu những g&igrave; m&agrave; cựu tiền đạo ĐT Việt Nam đ&atilde; đ&oacute;ng g&oacute;p cho b&oacute;ng đ&aacute; Đ&agrave; Nẵng l&agrave; qu&aacute; lớn.</p>

<p>Tuy nhi&ecirc;n, sau những th&agrave;nh t&iacute;ch kh&ocirc;ng tốt ở 4 m&ugrave;a giải đ&atilde; qua v&agrave; tại V-League 2017, dường như sức &eacute;p qu&aacute; khủng khiếp từ người h&acirc;m mộ m&agrave;u &aacute;o cam đ&atilde; khiến Huỳnh Đức đi đến quyết định n&agrave;y.</p>

<p>Trận đấu cuối c&ugrave;ng của HLV L&ecirc; Huỳnh Đức tr&ecirc;n cương vị HLV trưởng SHB Đ&agrave; Nẵng được chơi tr&ecirc;n s&acirc;n nh&agrave; H&ograve;a Xu&acirc;n, sẽ l&agrave; cuộc tiếp đ&oacute;n S&agrave;i G&ograve;n FC v&agrave;o cuối tuần n&agrave;y.</p>
', 1, 346, 43, N'SHB Đà Nẵng', N'CHÍNH THỨC: Huỳnh Đức chia tay SHB Đà Nẵng sau V-League 2017', CAST(0x0000A82D00251ED1 AS DateTime), N'ad', CAST(0x0000A83E001896EC AS DateTime), N'ad', N'SHB Đà Nẵng', N'Sau những thông tin được đồn đoán trước đó, Lê Huỳnh Đức đã chính thức xin rút lui khỏi vị trí HLV trưởng SHB Đà Nẵng khi mùa giải 2017 kết thúc, sau buổi họp với toàn thể BHL và cầu thủ chiều 15/11.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (16, N'Quảng Nam “chốt sổ” ngoại binh cho V-League 2018', N'quang-nam-“chot-so”-ngoai-binh-cho-v-league-2018', N'Với màn thể hiện ấn tượng ở mùa giải năm nay trong màu áo Quảng Nam FC, trung vệ Thiago và tiền đạo Claudecir đã được BLĐ đội bóng xứ Quảng tái ký hợp đồng cho V-League 2018.', N'/Data/images/content/vleague/anh1-1158.jpg', N'<p>Quảng Nam FC đang c&oacute; cơ hội lần đầu ti&ecirc;n v&ocirc; địch&nbsp;<a href="http://www.bongda.com.vn/v-league/" target="_blank">V-League 2017</a>&nbsp;trong lịch sử, bởi l&uacute;c n&agrave;y, đội b&oacute;ng xứ&nbsp; Quảng đang tạm dẫn đầu bảng xếp hạng với 45 điểm c&oacute; được, nếu gi&agrave;nh chiến thắng trước H&agrave; Nội ở lượt trận 25. Thầy tr&ograve; HLV Ho&agrave;ng Văn Ph&uacute;c sẽ ch&iacute;nh thức đăng quang sớm 1 lượt trận.</p>

<p>Trong sự th&agrave;nh c&ocirc;ng của đội chủ s&acirc;n Tam Kỳ, ngo&agrave;i vai tr&ograve; của những nội binh như Thanh Trung, Huy H&ugrave;ng hay Thanh Hưng&hellip; th&igrave; kh&ocirc;ng thể kh&ocirc;ng kể đến sự quan trọng của bộ đ&ocirc;i ngoại binh Thiago v&agrave; Claudecir.</p>

<p>Nếu như&nbsp;<strong>Claudecir l&agrave; ch&acirc;n s&uacute;t chủ lực</strong>&nbsp;tr&ecirc;n h&agrave;ng tấn c&ocirc;ng của HLV Ho&agrave;ng Văn Ph&uacute;c với 12 b&agrave;n thắng c&oacute; được, th&igrave; người đồng hương&nbsp;<strong>Thiago lại l&agrave; &ldquo;l&aacute; chắn th&eacute;p&rdquo;</strong>&nbsp;trước khung th&agrave;nh Văn Cường, điều n&agrave;y đ&atilde; gi&uacute;p Quảng Nam FC bay cao trong m&ugrave;a giải năm nay.</p>

<p><img alt="" src="/Data/images/content/vleague/anh1-1158.jpg" style="height:450px; width:640px" />Nhận thấy tầm quan trọng của bộ đ&ocirc;i ngoại binh n&agrave;y, khi V-League 2017 c&ograve;n chưa hạ m&agrave;n th&igrave; BLĐ Quảng Nam FC đ&atilde; quyết định t&aacute;i k&yacute; hợp đồng với Thiago v&agrave; Claudecir. Đ&aacute;nh gi&aacute; về trung vệ người Brazil, GĐĐH &ndash; Nguyễn H&uacute;p cho biết: &ldquo;<em>Trung vệ Thiago đ&atilde; c&oacute; một m&ugrave;a giải rất tốt, gi&uacute;p&nbsp;Quảng Nam FC d&agrave;nh được những điểm số quan trọng, v&agrave;&nbsp;<strong>bản hợp đồng 3 năm như l&agrave; kết quả xứng đ&aacute;ng</strong>&nbsp;m&agrave; CLB d&agrave;nh cho cậu ấy với những cống hiến cho Quảng Nam, v&agrave; để Quảng Nam t&iacute;nh to&aacute;n những chiến lược d&agrave;i hơi trong những m&ugrave;a tới</em>&rdquo;.</p>

<p><img alt="" src="/Data/images/content/vleague/anh2-1158.jpg" style="height:467px; width:640px" /></p>

<p>B&ecirc;n cạnh đ&oacute;, nếu gi&agrave;nh quyền tham dự AFC Champions League hoặc AFC Cup, đội b&oacute;ng xứ Quảng dự định sẽ t&igrave;m th&ecirc;m ngoại binh chất lượng để san sẻ với Thiago v&agrave; Claudecir: &ldquo;<em>Với Thiago v&agrave; Claudecir, đ&acirc;y sẽ l&agrave; tiền đề để đội b&oacute;ng thực hiện những mục ti&ecirc;u lớn trong tương lai. Thậm ch&iacute;, nếu v&ocirc; địch V-League v&agrave; gi&agrave;nh quyền dự AFC Champions League, ch&uacute;ng t&ocirc;i sẽ t&igrave;m th&ecirc;m nhiều ngoại binh chất lượng để gia tăng sức mạnh đội h&igrave;nh,</em>&rdquo; &ocirc;ng Nguyễn H&uacute;p cho biết th&ecirc;m.</p>

<p>Cuối tuần n&agrave;y, Quảng Nam FC sẽ c&oacute;&nbsp;<a href="http://www.bongda.com.vn/thang-nhoc-than-quang-ninh-quang-nam-fc-don-suc-cho-tran-gap-ha-noi-d421434.html" target="_blank">chuyến l&agrave;m kh&aacute;ch dự b&aacute;o kh&oacute; khăn trước H&agrave; Nội FC</a>, mục ti&ecirc;u của HLV Ho&agrave;ng Văn Ph&uacute;c đặt ra cho c&aacute;c học tr&ograve; l&agrave; kiếm được &iacute;t nhất 1 điểm.</p>
', 1, 232, 12, N'Quảng Nam', N'Quảng Nam “chốt sổ” ngoại binh cho V-League 2018', CAST(0x0000A82F0026327A AS DateTime), N'ad', CAST(0x0000A83E001888F8 AS DateTime), N'ad', N'Quảng Nam', N'Với màn thể hiện ấn tượng ở mùa giải năm nay trong màu áo Quảng Nam FC, trung vệ Thiago và tiền đạo Claudecir đã được BLĐ đội bóng xứ Quảng tái ký hợp đồng cho V-League 2018.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (17, N'Quảng Nam tiến sát đến ngôi vô địch V.League 2017', N'quang-nam-tien-sat-den-ngoi-vo-dich-v-league-2017', N'Chiến thắng 2-1 trên sân nhà trước Quảng Ninh giúp Quảng Nam tạo ra khoảng cách 3 điểm với các đối thủ bám đuổi, qua đó có cơ hội rất lớn để lên ngôi vô địch V.League 2017.', N'/Data/images/content/vleague/111.jpg', N'<p>Sau 2 lần bị tạm ho&atilde;n v&igrave; ảnh hưởng của b&atilde;o Damrey (Con voi), trận Quảng Nam vs Quảng Ninh đ&atilde; ch&iacute;nh thức diễn ra chiều 10/11 tr&ecirc;n s&acirc;n Tam Kỳ. Rất đ&ocirc;ng kh&aacute;n giả xứ Quảng đ&atilde; đến s&acirc;n để cổ vũ đội nh&agrave;, bởi nếu Quảng Nam thắng trận họ sẽ tạo ra c&aacute;ch biệt 3 điểm với c&aacute;c đối thủ b&aacute;m đuổi tr&ecirc;n chặng đường đua tranh ng&ocirc;i v&ocirc; địch, trong bối cảnh giải chỉ c&ograve;n 2 v&ograve;ng đấu.</p>

<p>Trước giờ b&oacute;ng lăn, ban tổ chức V.League đ&atilde; trao tặng 50 triệu đồng để ủng hộ địa phương để khắc phục hậu quả do ảnh hưởng của b&atilde;o Damrey.&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/111.jpg" style="height:640px; width:960px" />Với t&acirc;m l&yacute; hưng phấn, Quảng Nam dồn l&ecirc;n tấn c&ocirc;ng ngay sau tiếng c&ograve;i khai cuộc. Ch&acirc;n s&uacute;t Claudecir - người đang dẫn đầu danh s&aacute;ch l&agrave;m b&agrave;n của đội li&ecirc;n tục uy hiếp khung th&agrave;nh đội kh&aacute;ch nhưng anh kh&ocirc;ng thể ghi được b&agrave;n thắng n&agrave;o.</p>

<p>Trận lượt đi tr&ecirc;n s&acirc;n kh&aacute;ch, Quảng Nam đ&aacute;nh bại Quảng Ninh 3-1. Trong nửa đầu hiệp 1, họ c&oacute; đến 3 c&uacute; dứt điểm nguy hiểm về ph&iacute;a đội kh&aacute;ch nhưng kh&ocirc;ng ghi được b&agrave;n thắng n&agrave;o.</p>

<p>Trong thời gian c&ograve;n lại của hiệp 1, Quảng Nam vẫn l&agrave; đội chơi nhỉnh hơn. Tuy nhi&ecirc;n, họ kh&ocirc;ng c&ograve;n g&acirc;y được sức &eacute;p như ở đầu trận. Tuy vậy thế trận nhỉnh hơn vẫn gi&uacute;p đội b&oacute;ng của HLV Ho&agrave;ng Văn Ph&uacute;c bảo to&agrave;n được tỷ số 1-0 khi bước v&agrave;o giờ nghỉ.</p>

<p><img alt="" src="/Data/images/content/vleague/77.jpg" style="height:500px; width:789px" />Đầu hiệp 2, Quảng Ninh g&acirc;y sức &eacute;p mạnh mẽ. Nỗ lực của họ được đền đ&aacute;p ở ph&uacute;t 57 khi Patiyo đ&aacute;nh đầu hiểm h&oacute;c, đ&aacute;nh bại thủ m&ocirc;n vừa được triệu tập l&ecirc;n ĐQTG Văn Cường. Trước trận đấu n&agrave;y, đội b&oacute;ng v&ugrave;ng mỏ chỉ k&eacute;m đối phương 3 điểm, nếu thắng Quảng Nam họ sẽ đuổi kịp đối thủ.</p>

<p>B&agrave;n thua buộc Quảng Nam &agrave;o l&ecirc;n tấn c&ocirc;ng. HLV Ho&agrave;ng Văn Ph&uacute;c nhanh ch&oacute;ng c&oacute; những thay đổi nh&acirc;n sự gi&uacute;p đội nh&agrave; chơi khởi sắc hơn. Sức &eacute;p lớn của đội chủ nh&agrave; khiến đội kh&aacute;ch mắc sai lầm khi Thanh H&agrave;o để b&oacute;ng chạm tay trong v&ograve;ng cấm. Tr&ecirc;n chấm penalty, Thanh Trung dễ d&agrave;ng ghi b&agrave;n ấn định chiến thắng 2-1 cho Quảng Nam ở ph&uacute;t 80.</p>

<p>Ban huấn luyện đội chủ nh&agrave; vỡ &ograve;a sau chiến thắng. Kết quả n&agrave;y gi&uacute;p Quảng Nam củng cố ng&ocirc;i đầu bảng, tạo ra khoảng c&aacute;ch an to&agrave;n với c&aacute;c đối thủ b&aacute;m đuổi. Cơ hội v&ocirc; địch V.League đang nằm trong tay họ.</p>

<p>&nbsp;</p>
', 1, 13, 0, N'Quảng Nam', N'Quảng Nam tiến sát đến ngôi vô địch V.League 2017', CAST(0x0000A82E0135924A AS DateTime), N'ad', CAST(0x0000A83E00189002 AS DateTime), N'ad', N'Quảng Nam', N'Chiến thắng 2-1 trên sân nhà trước Quảng Ninh giúp Quảng Nam tạo ra khoảng cách 3 điểm với các đối thủ bám đuổi, qua đó có cơ hội rất lớn để lên ngôi vô địch V.League 2017.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (18, N'CLB TP.HCM 2-4 Quảng Ninh: Màn ăn mừng như trêu ngươi Công Vinh', N'clb-tp-hcm-2-4-quang-ninh-man-an-mung-nhu-treu-nguoi-cong-vinh', N'Sau khi lập công, "người cũ" Dyachenko có pha ăn mừng như thể khiêu khích Chủ tịch Lê Công Vinh. CLB TP.HCM thua ngược ở trận đấu có sự dự khán của tân HLV mùa tới, Toshiya Miura.', N'/Data/images/content/vleague/1_zing_6.jpg', N'<p>*17h ng&agrave;y 19/11:&nbsp;<strong>CLB TP.HCM</strong>&nbsp;2-4&nbsp;<strong>Quảng Ninh</strong>&nbsp;(V&ograve;ng 25 V.League, s&acirc;n Thống Nhất)<strong><em>CLB TP.HCM</em></strong>: Victor Omarzabal 5&#39; (pen), Minh Trung 15&#39;&nbsp;<strong><em>Quảng Ninh</em></strong>: Dyachenko 23&#39; (pen), 39&#39;, 88&#39;, Patiyo 58&#39;</p>

<p>D&ugrave; trận đấu kh&ocirc;ng c&ograve;n nhiều &yacute; nghĩa về mặt điểm số với cả 2 đội, CLB TP.HCM v&agrave; Quảng Ninh vẫn cống hiến hơn 90 ph&uacute;t hấp dẫn, cởi mở nhưng kh&ocirc;ng k&eacute;m phần quyết liệt. Đội chủ nh&agrave; c&oacute; sự khởi đầu ho&agrave;n hảo với 2 pha lập c&ocirc;ng từ kh&aacute; sớm nhưng vẫn để đội b&oacute;ng đất mỏ ngược d&ograve;ng thắng lại 4-2.</p>

<p>&nbsp;</p>

<p>Thất bại ngay tr&ecirc;n s&acirc;n nh&agrave; khiến CLB TP.HCM kh&ocirc;ng thể đạt kết quả như &yacute; d&agrave;nh tặng Toshiya Miura, cựu HLV tuyển Việt Nam c&oacute; mặt tr&ecirc;n kh&aacute;n đ&agrave;i dự kh&aacute;n trước khi k&yacute; hợp đồng dẫn dắt đội chủ s&acirc;n Thống Nhất từ m&ugrave;a tới.</p>

<p>&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/1_zing_6.jpg" style="height:494px; width:660px" /></p>

<p>&nbsp;</p>

<p>B&ecirc;n cạnh nỗi buồn&nbsp;thất bại của đội nh&agrave;, Chủ tịch L&ecirc; C&ocirc;ng Vinh c&oacute; lẽ cũng th&ecirc;m phần k&eacute;m vui bởi h&agrave;nh động ăn mừng như tr&ecirc;u ngươi của Dyachenko, tiền đạo từng thuộc bi&ecirc;n chế CLB TP.HCM hồi đầu m&ugrave;a nhưng bị thanh l&yacute; hợp đồng ngay trước giai đoạn lượt về v&igrave; l&yacute; do sức khỏe (được CLB cho rằng c&oacute; tật ở mắt). Ch&acirc;n s&uacute;t người Nga thậm ch&iacute; xứng đ&aacute;ng trở th&agrave;nh cầu thủ hay nhất trận với một c&uacute; hat-trick.</p>

<p>&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/1_3.jpg" style="height:300px; width:574px" /></p>
', 1, 17, 0, N'CLB TP.HCM , Quảng Ninh,Công Vinh', N'CLB TP.HCM 2-4 Quảng Ninh: Màn ăn mừng như trêu ngươi Công Vinh', CAST(0x0000A81200333C4C AS DateTime), N'ad', CAST(0x0000A83E00189CC2 AS DateTime), N'ad', N'CLB TP.HCM , Quảng Ninh,Công Vinh', N'Sau khi lập công, "người cũ" Dyachenko có pha ăn mừng như thể khiêu khích Chủ tịch Lê Công Vinh. CLB TP.HCM thua ngược ở trận đấu có sự dự khán của tân HLV mùa tới, Toshiya Miura.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (19, N'Văn Quyết: Nhượng bộ đối thủ thì ai nuôi sống gia đình tôi?', N'van-quyet-nhuong-bo-doi-thu-thi-ai-nuoi-song-gia-dinh-toi', N'Tiền đạo Nguyễn Văn Quyết khẳng định không có chuyện anh và CLB Hà Nội nhường nhịn bất kỳ đối thủ nào trong cuộc đua vô địch V.League 2017.', N'/Data/images/content/vleague/Van_Quyet_CLB_Ha_Noi_zing.jpg', N'<p>Những nghi ngờ xung quanh cuộc đối đầu giữa CLB H&agrave; Nội v&agrave; Quảng Nam tại v&ograve;ng 25 V.League tối ng&agrave;y 19/11 đ&atilde; tan biến sau thắng lợi 1-0 của đội b&oacute;ng thủ đ&ocirc;. Đối mặt với những tin đồn &ldquo;xin cho&rdquo;, đương kim v&ocirc; địch đ&atilde; chơi với 100 % phong độ, đ&aacute;nh bại đối thủ trực tiếp đang c&oacute; phong độ rất cao.</p>

<p>Chia sẻ sau trận đấu, Văn Quyết khẳng định: &ldquo;Với t&ocirc;i, b&oacute;ng đ&aacute; l&agrave; niềm vui nhưng n&oacute; cũng l&agrave; cuộc sống, l&agrave; c&aacute;i nghề của bọn t&ocirc;i. Ch&uacute;ng t&ocirc;i thi đấu, kiếm sống cho bản th&acirc;n m&igrave;nh. Kh&ocirc;ng c&oacute; l&yacute; do g&igrave; m&agrave; t&ocirc;i phải nhượng bộ đối thủ cả. Nhượng bộ th&igrave; ai nu&ocirc;i sống gia đ&igrave;nh t&ocirc;i? Hơn 30 con người trong to&agrave;n đội b&oacute;ng đều quyết t&acirc;m thắng trận h&ocirc;m nay&rdquo;.</p>

<p>Bản th&acirc;n Văn Quyết ch&iacute;nh l&agrave; người h&ugrave;ng của trận đấu. Đội trưởng tuyển Việt Nam ghi b&agrave;n duy nhất ở ph&uacute;t 75 sau một t&igrave;nh huống dứt điểm trong v&ograve;ng cấm. Pha lập c&ocirc;ng của Văn Quyết đ&atilde; mang về lợi thế cực lớn cho H&agrave; Nội trong cuộc đua v&ocirc; địch. Nhưng n&oacute; cũng khiến rất nhiều b&egrave; bạn của anh b&ecirc;n ph&iacute;a Quảng Nam như Đinh Thanh Trung, Nguyễn Huy H&ugrave;ng phải thất vọng.<br />
<br />
Số 10 của CLB H&agrave; Nội cho biết: &ldquo;T&ocirc;i rất chia sẻ với nỗi buồn của cầu thủ Quảng Nam. Họ đ&atilde; c&oacute; một trận đấu đầy quyết t&acirc;m. Nhưng đ&acirc;y l&agrave; b&oacute;ng đ&aacute;. Tr&ecirc;n s&acirc;n nh&agrave; của H&agrave; Nội, kh&ocirc;ng c&oacute; l&yacute; do g&igrave; m&agrave; ch&uacute;ng t&ocirc;i phải nhường lại cho đối thủ phần thắng&rdquo;.<br />
<br />
Tiền đạo sinh năm 1991 cũng cho biết đ&acirc;y l&agrave; một trong những trận đấu hay nhất sự nghiệp của anh. Quyết tin rằng chiến thắng n&agrave;y đ&atilde; cho thấy &ldquo;đẳng cấp v&agrave; khao kh&aacute;t&rdquo; của H&agrave; Nội FC. Đội b&oacute;ng thủ đ&ocirc; chỉ c&ograve;n c&aacute;ch danh hiệu v&ocirc; địch V.League lần thứ 4 trong lịch sử một v&ograve;ng đấu nữa. Đ&acirc;y l&agrave; cột mốc m&agrave; mới chỉ c&oacute; B&igrave;nh Dương chinh phục được ở m&ugrave;a giải 2015.</p>

<p>&nbsp;</p>
', 1, 17, 0, N'Văn Quyết', N'Văn Quyết: Nhượng bộ đối thủ thì ai nuôi sống gia đình tôi?', CAST(0x0000A82F0033EBB3 AS DateTime), N'ad', CAST(0x0000A83E0018792E AS DateTime), N'ad', N'Văn Quyết', N'Tiền đạo Nguyễn Văn Quyết khẳng định không có chuyện anh và CLB Hà Nội nhường nhịn bất kỳ đối thủ nào trong cuộc đua vô địch V.League 2017.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (20, N'Cặp tiền đạo Jamaica của Hải Phòng bất lực trước hàng thủ HAGL', N'cap-tien-dao-jamaica-cua-hai-phong-bat-luc-truoc-hang-thu-hagl', N'CLB Hải Phòng là đội tạo ra nhiều cơ hội hơn, nhưng chịu thúc thủ 1-2 trước đội khách HAGL trong ngày Stevens và Fagan vô duyên trước khung thành thủ môn Tô Vĩnh Lợi.', N'/Data/images/content/vleague/a1.JPG', N'<p>Trận đấu CLB Hải Ph&ograve;ng vs HAGL diễn ra l&uacute;c 17h ng&agrave;y 19/11. Đội b&oacute;ng đất cảng vẫn nhập trận với lối tấn c&ocirc;ng dựa tr&ecirc;n sức c&agrave;n lướt của cặp ngoại binh người Jamaica, Stevens v&agrave; Fagan.</p>

<p><img alt="" src="/Data/images/content/vleague/a2.JPG" style="height:669px; width:1024px" /></p>

<p>Tuy nhi&ecirc;n trong một ng&agrave;y k&eacute;m may mắn, Stevens c&oacute; nhiều cơ hội dứt điểm nhưng kh&ocirc;ng thể đ&aacute;nh bại thủ m&ocirc;n T&ocirc; Vĩnh Lợi.&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/a3.JPG" style="height:1017px; width:1024px" /></p>

<p>Fagan cũng c&oacute; một pha xử l&yacute; b&oacute;ng tinh tế, vượt qua 2 hậu vệ v&agrave; thủ m&ocirc;n HAGL nhưng đ&aacute;ng tiếc b&oacute;ng lại đi chệch x&agrave; trong gang tấc.&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/a4.JPG" style="height:850px; width:1024px" /></p>

<p>Sau nửa đầu hiệp 1 để cặp ngoại binh của Hải Ph&ograve;ng li&ecirc;n tiếp c&oacute; khoảng trống để dứt điểm, h&agrave;ng thủ của HAGL chủ động chơi quyết liệt hơn để ngăn chặn Stevens v&agrave; Fagan.</p>

<p><img alt="" src="/Data/images/content/vleague/a5.JPG" style="height:691px; width:1024px" /></p>

<p>Trong một t&igrave;nh huống x&ocirc; x&aacute;t, Mobi Fehr cũng kh&ocirc;ng kiềm chế được trước lối chơi rắn của cầu thủ Hải Ph&ograve;ng, khiến anh phải nhận thẻ v&agrave;ng ở ph&uacute;t 35.</p>

<p><img alt="" src="/Data/images/content/vleague/a6.JPG" style="height:600px; width:1024px" /></p>

<p>Cầu thủ 2 đội nổi n&oacute;ng khi cho rằng trọng t&agrave;i kh&ocirc;ng xử l&yacute; c&ocirc;ng bằng, khiến ban huấn luyện v&agrave; trọng t&agrave;i phải v&agrave;o s&acirc;n can ngăn. Sau đ&oacute;, trọng t&agrave;i Ho&agrave;ng Ngọc H&agrave; r&uacute;t th&ecirc;m 2 thẻ v&agrave;ng cho 2 cầu thủ của Hải Ph&ograve;ng gồm Đ&igrave;nh Bảo v&agrave; Anh H&ugrave;ng v&igrave; lối chơi quyết liệt qu&aacute; mức cần thiết.&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/a7.jpg" style="height:468px; width:660px" /></p>

<p>A Ho&agrave;ng (số 71) l&agrave; cầu thủ tạo ra bước ngoặt của trận đấu, khi ghi b&agrave;n ở ph&uacute;t 85, ấn định chiến thắng kịch t&iacute;nh 2-1 của CLB HAGL.</p>

<p><img alt="" src="/Data/images/content/vleague/a8.JPG" style="height:643px; width:1024px" /></p>

<p>CĐV Hải Ph&ograve;ng đốt ph&aacute;o s&aacute;ng ở trận đấu cuối c&ugrave;ng của đội nh&agrave; tr&ecirc;n s&acirc;n Lạch Tray. Ở v&ograve;ng đấu cuối c&ugrave;ng v&agrave;o tuần sau, CLB Hải Ph&ograve;ng sẽ l&agrave;m kh&aacute;ch tr&ecirc;n s&acirc;n của S&agrave;i G&ograve;n FC.</p>
', 1, 224, 1, N'Hải Phòng', N'Cặp tiền đạo Jamaica của Hải Phòng bất lực trước hàng thủ HAGL', CAST(0x0000A83100352378 AS DateTime), N'ad', CAST(0x0000A83E0018245A AS DateTime), N'ad', N'Hải Phòng', N'CLB Hải Phòng là đội tạo ra nhiều cơ hội hơn, nhưng chịu thúc thủ 1-2 trước đội khách HAGL trong ngày Stevens và Fagan vô duyên trước khung thành thủ môn Tô Vĩnh Lợi.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (21, N'CLB TP.HCM: Đón Miura, rước luôn... bom tấn?', N'clb-tp-hcm-don-miura-ruoc-luon-bom-tan', N'LB TP.HCM nhiều khả năng sẽ đón HLV Toshiya Miura vào đầu tháng 12 năm nay. Bên cạnh đó, họ đang rục rịch đàm phán với hàng loạt tân binh.', N'/Data/images/content/vleague/miura.jpg', N'<p><img alt="" src="/Data/images/content/vleague/miura.jpg" style="height:270px; width:480px" /></p>

<p><a href="http://bongdaplus.vn/hlv-toshiya-miura-mang-bong-da-thuc-dung-den-voi-clb-tp-hcm-2022301711.html">Toshiya Miura đ&atilde; xuất hiện v&agrave; dự kh&aacute;n</a>&nbsp;trận đấu giữa CLB TP.HCM v&agrave; Than.QN ở v&ograve;ng 25&nbsp;<a href="http://bongdaplus.vn/bong-da-viet-nam.html">V.League</a>. Trả lời giới truyền th&ocirc;ng, L&ecirc; C&ocirc;ng Vinh khẳng định &ocirc;ng Miura vẫn chưa phải l&agrave; người của đội b&oacute;ng, mặc cho nhiều th&ocirc;ng tin khẳng định, nh&agrave; cầm qu&acirc;n người Nhật đ&atilde; đặt b&uacute;t k&yacute; v&agrave;o bản hợp đồng c&oacute; thời hạn 2 năm.</p>

<p>&nbsp;</p>

<p>Chiều 19/11, nh&igrave;n nụ cười, những c&aacute;i bắt tay của &ocirc;ng Miura nhiều người v&otilde; đo&aacute;n, cựu thuyền trưởng của ĐT Việt Nam đ&atilde; về với đội của C&ocirc;ng Vinh v&agrave; ng&agrave;y ra mắt sẽ v&agrave;o đầu th&aacute;ng 12 năm nay. D&ugrave; sao, đ&acirc;y cũng chỉ l&agrave; vấn đề sớm hay muộn.</p>

<p>&nbsp;</p>

<p>Toshiya Miura kh&ocirc;ng phải l&agrave; bản hợp đồng duy nhất của CLB TP.HCM nhằm phục vụ cho m&ugrave;a giải 2018. Theo nguồn tin nội bộ, tiền vệ Trần Phi Sơn (SLNA) đ&atilde; ở gần CLB TP.HCM. Hậu vệ Sầm Ngọc Đức (H&agrave; Nội FC) dường như đ&atilde; đạt được thỏa thuận gia nhập đội b&oacute;ng th&agrave;nh phố mang t&ecirc;n B&aacute;c. Trong v&agrave;i ng&agrave;y qua, người ta đang x&ocirc;n xao, &ldquo;linh hồn&rdquo; của Than.QN l&agrave; Vũ Minh Tuấn cũng th&iacute;ch gia nhập đội của C&ocirc;ng Vinh...&nbsp;</p>

<p>&nbsp;</p>

<p>V&agrave; c&ograve;n v&agrave;i c&aacute;i t&ecirc;n kh&aacute;c đang đặt trong v&ograve;ng b&iacute; mật nhưng đ&oacute; đều l&agrave; những ng&ocirc;i sao h&agrave;ng đầu của b&oacute;ng đ&aacute; Việt Nam. Dĩ nhi&ecirc;n, c&ocirc;ng cuộc thay m&aacute;u của CLB TP.HCM sẽ được l&agrave;m triệt để với việc thanh l&yacute; 2 ngoại binh Victor v&agrave; Dasilva để đ&oacute;n những m&oacute;n h&agrave;ng &ldquo;khủng&rdquo; kh&aacute;c. T&oacute;m lại, CLB TP.HCM sẽ l&agrave; đội b&oacute;ng đ&aacute;ng được chờ đợi nhất ở m&ugrave;a giải tới đ&acirc;y.</p>
', 1, 333, 0, N'Miura', NULL, CAST(0x0000A831015B10FB AS DateTime), N'ad', CAST(0x0000A83E0016D56E AS DateTime), N'ad', N'Miura', N'CLB TP.HCM: Đón Miura,', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (22, N'Trước vòng cuối V.League: Chơi cho biết đá, biết vàng', N'truoc-vong-cuoi-v-league-choi-cho-biet-da-biet-vang', N'Hà Nội FC hạ Quảng Nam FC trên Hàng Đẫy, FLC Thanh Hóa thắng Sanna Khánh Hòa, cuộc đua tới ngôi vô địch V.League đang hấp dẫn cho đến vòng cuối.', N'/Data/images/content/vleague/than-vs-tphcm.jpg', N'<p><img alt="" src="/Data/images/content/vleague/than-vs-tphcm.jpg" style="height:270px; width:480px" /></p>

<p>Một trong những kẻ ph&aacute;n quyết ng&ocirc;i vua&nbsp;<a href="http://bongdaplus.vn/bong-da-viet-nam.html">V.League</a>&nbsp;2017 đ&oacute; l&agrave; Than.QN, đội b&oacute;ng sẽ tiếp c&aacute;c nh&agrave; ĐKVĐ H&agrave; Nội FC tr&ecirc;n s&acirc;n Cẩm Phả. Ở xứ Nghệ, SLNA cũng ngh&ecirc;nh chiến người l&aacute;ng giềng FLC Thanh H&oacute;a. C&ograve;n tại Tam Kỳ, Quảng Nam FC sẽ đ&oacute;n CLB TP.HCM. Nh&igrave;n v&agrave;o cục diện, H&agrave; Nội FC đang l&agrave; đội b&oacute;ng c&oacute; nhiều cơ hội để bảo vệ ng&ocirc;i v&ocirc; địch.</p>

<p>&nbsp;</p>

<p>Mặt l&yacute; thuyết l&agrave; thế c&ograve;n thực tế, Than.QN đang đ&oacute;ng vai một kẻ ng&aacute;ng đường kh&oacute; chịu của đội b&oacute;ng đến từ thủ đ&ocirc;. Phan Thanh H&ugrave;ng, một người cũ của H&agrave; Nội FC đang l&agrave; đương kim HLV trưởng của Than.QN khẳng định, đội b&oacute;ng của &ocirc;ng sẽ cố gắng chơi một trận để đời v&agrave; chơi cho biết đ&aacute;, biết v&agrave;ng với một đội b&oacute;ng mạnh nhất V.League.</p>

<p>&nbsp;</p>

<p>V&ograve;ng đấu 26 diễn ra v&agrave;o chiều 25/11 tới đ&acirc;y sẽ l&agrave; v&ograve;ng đấu &ldquo;vừa đ&aacute; vừa ng&oacute;ng&rdquo; từ 3 đầu cầu. Chắc chắc,&nbsp;<a href="http://bongdaplus.vn/van-quyet-quang-nam-sang-cua-vo-dich-nhat-2023101711.html">Quảng Nam FC sẽ l&agrave; đội hồi hộp hơn cả</a>&nbsp;v&igrave; nếu H&agrave; Nội FC c&oacute; 3 điểm tr&ecirc;n s&acirc;n Cẩm Phả th&igrave; những nỗ lực của họ sẽ đổ ra s&ocirc;ng ra biển. Trước khi nghĩ đến điều t&iacute;ch cực nhất, HLV Ho&agrave;ng Văn Ph&uacute;c buộc phải giải quyết được CLB TP.HCM tr&ecirc;n s&acirc;n nh&agrave;.</p>

<p>&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/sai-gon-fc-tphcm-0-1-_jpg4.jpg" style="height:312px; width:540px" /></p>

<p>&nbsp;</p>

<p>Lại n&oacute;i chuyện chưa cũ, sau trận thua sấp mặt trước Than.QN ở v&ograve;ng 25, quyền Chủ tịch L&ecirc; C&ocirc;ng Vinh đ&atilde; c&oacute; những chỉ đạo để c&aacute;c cầu thủ chơi một trận cho &ldquo;ra ng&ocirc; ra khoai&rdquo; trước khi chia tay V.League. Nhiệm vụ của đội trưởng Trương Đ&igrave;nh Luật v&agrave; c&aacute;c đồng đội l&agrave; phải &ldquo;c&oacute; qu&agrave;&rdquo; rời xứ Quảng. Nếu điều đ&oacute; xẩy ra, Quảng Nam FC chẳng những kh&ocirc;ng v&ocirc; địch m&agrave; rất c&oacute; thể sẽ mất nốt ng&ocirc;i &Aacute; qu&acirc;n v&agrave;o tay FLC Thanh H&oacute;a, đội b&oacute;ng đang &ldquo;đ&oacute;n l&otilde;ng&rdquo; ngay sau lưng.</p>

<p>&nbsp;</p>

<p>Trong số ba đội, FLC Thanh H&oacute;a đang yếu thế nhất v&agrave; đối thủ của SLNA của họ cũng chẳng phải dạng vừa. Ở th&agrave;nh Vinh b&acirc;y giờ, sĩ kh&iacute; của c&aacute;c cầu thủ đang l&ecirc;n cao ng&uacute;t. Đội b&oacute;ng xứ Nghệ muốn kết th&uacute;c m&ugrave;a giải với một vị tr&iacute; đẹp tr&ecirc;n BXH c&ugrave;ng với chức v&ocirc; địch c&uacute;p QG 2017. Bản th&acirc;n c&aacute;c CĐV S&ocirc;ng Lam cũng muốn những đứa con cưng của m&igrave;nh chơi đẹp trước người l&aacute;ng giềng gi&agrave;u c&oacute; n&agrave;y để chứng minh, tiền đ&ocirc;i khi kh&ocirc;ng phải l&agrave; tất cả.</p>

<p>&nbsp;</p>

<p>Hiếm c&oacute; một m&ugrave;a b&oacute;ng n&agrave;o những kẻ ph&aacute;n quyết lại được nhắc đến nhiều như m&ugrave;a n&agrave;y. B&acirc;y giờ, người ta chờ họ kh&ocirc;ng chỉ ở c&aacute;ch chơi, m&agrave; c&ograve;n l&agrave; c&aacute;ch thể hiện bản ng&atilde; ở thời điểm được nhiều người soi x&eacute;t nhất.</p>
', 1, 124, 0, N'vòng cuối', N'Trước vòng cuối V.League: Chơi cho biết đá, biết vàng', CAST(0x0000A831016169E0 AS DateTime), N'ad', CAST(0x0000A83E00162B8F AS DateTime), N'ad', N'vòng cuối', N'Hà Nội FC hạ Quảng Nam FC trên Hàng Đẫy, FLC Thanh Hóa thắng Sanna Khánh Hòa, cuộc đua tới ngôi vô địch V.League đang hấp dẫn cho đến vòng cuối.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (23, N'Vòng 12 giải VĐQG nữ: TP.HCM I và TNG Thái Nguyên cùng thắng', N'vong-12-giai-vdqg-nu-tp-hcm-i-va-tng-thai-nguyen-cung-thang', N'CLB TP.HCM I và TNG Thái Nguyên (TNG.TN) đều có chiến thắng như mong đợi ở vòng 12 giải VĐQG nữ - cúp Thái Sơn Bắc 2017 diễn ra vào chiều 20/11.', N'/Data/images/content/vleague/img_7737.jpg', N'<p><img alt="" src="/Data/images/content/vleague/img_7737.jpg" style="height:270px; width:480px" /></p>

<p>Tr&ecirc;n s&acirc;n Thi&ecirc;n Trường, TP.HCM I tiếp tục chứng tỏ sức mạnh vượt trội để dễ d&agrave;ng đ&egrave; bẹp nữ Sơn La. D&ugrave; c&oacute; những thay đổi nh&acirc;n sự nhưng nh&agrave; ĐKVĐ kh&ocirc;ng kh&oacute; để chiếm lĩnh thế trận.&nbsp;</p>

<p>&nbsp;</p>

<p>Chỉ mất 4 ph&uacute;t để họ c&oacute; b&agrave;n mở tỷ số do c&ocirc;ng của Bảo Ch&acirc;u. Cựu tuyển thủ Kim Hồng đ&aacute;nh dấu sự t&aacute;i xuất bằng b&agrave;n n&acirc;ng tỷ số l&ecirc;n 2-0 ở ph&uacute;t 31 trước khi Tuyết Ng&acirc;n ấn định chiến thắng 3-0 chung cuộc. Thắng trận n&agrave;y, TP.HCM I tiếp tục dẫn đầu BXH v&agrave; đ&atilde; bỏ c&aacute;ch đội đứng thứ 2 l&agrave; PP H&agrave; Nam tới 6 điểm.&nbsp;<img alt="" src="/Data/images/content/vleague/img_7752.jpg" style="height:324px; width:540px" /></p>

<h3 style="color:#aaa; font-style:italic"><em>TNG Th&aacute;i Nguy&ecirc;n c&oacute; chiến thắng s&aacute;t n&uacute;t. Ảnh: Phương Anh</em></h3>

<p>Trong khi đ&oacute; tr&ecirc;n s&acirc;n H&agrave; Nam, TNG.TN phải đợi đến tận hiệp 2 mới c&oacute; b&agrave;n mở tỷ số do c&ocirc;ng của Mai Tuyền tr&ecirc;n chấm 11 trước khi Ho&agrave;ng Thị Thảo ghi b&agrave;n thứ 2 chỉ 10 ph&uacute;t sau đ&oacute;. Mặc d&ugrave; để&nbsp; CLB TP.HCM II ghi b&agrave;n ở ph&uacute;t cuối trận nhưng TNG.TN vẫn bảo to&agrave;n thắng lợi 2-1.</p>
', 1, 5, 0, N'VĐQG nữ', N'Vòng 12 giải VĐQG nữ: TP.HCM I và TNG Thái Nguyên cùng thắng', CAST(0x0000A8310162B0ED AS DateTime), N'ad', CAST(0x0000A83E00137222 AS DateTime), N'ad', N'VĐQG nữ', N'CLB TP.HCM I và TNG Thái Nguyên (TNG.TN) đều có chiến thắng như mong đợi ở vòng 12 giải VĐQG nữ - cúp Thái Sơn Bắc 2017 diễn ra vào chiều 20/11.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (24, N'Văn Quyết: "Quảng Nam sáng cửa vô địch nhất"', N'van-quyet-quang-nam-sang-cua-vo-dich-nhat-', N'Sau trận thắng sít sao 1-0 trước Quảng Nam, thủ quân Nguyễn Văn Quyết của Hà Nội FC đã chia sẻ với chúng tôi những câu chuyện xung quanh cuộc đối đầu này. Với các cầu thủ của đội bóng thủ đô, đấy còn hơn cả một trận chung kết.', N'/Data/images/content/vleague/10a.jpg', N'<p><img alt="" src="/Data/images/content/vleague/10a.jpg" style="height:270px; width:480px" /></p>

<p>- Ph&oacute;ng vi&ecirc;n:&nbsp;Với một tiền đạo, ghi b&agrave;n l&agrave; chuyện b&igrave;nh thường, nhưng t&ocirc;i thấy anh đ&atilde; bật kh&oacute;c khi mở tỷ số cho H&agrave; Nội FC trong trận thắng Quảng Nam. Tại sao thế?</p>

<p>-&nbsp;Văn Quyết:&nbsp;T&ocirc;i thực sự qu&aacute; hạnh ph&uacute;c khi ghi được b&agrave;n thắng ấy, bởi n&oacute; giải toả cho t&ocirc;i v&agrave; đồng đội rất nhiều &aacute;p lực m&agrave; ch&uacute;ng t&ocirc;i gặp phải trước cuộc so k&egrave; n&agrave;y. B&agrave;n thắng l&agrave; của c&aacute; nh&acirc;n, nhưng th&agrave;nh quả ấy l&agrave; của cả một tập thể. T&ocirc;i hạnh ph&uacute;c khi tất cả anh em ch&uacute;ng t&ocirc;i đ&atilde; nỗ lực hết m&igrave;nh để c&oacute; thể gi&agrave;nh được chiến thắng trong trận cầu rất quan trọng, thậm ch&iacute; c&ograve;n hơn cả một trận chung kết.</p>

<p>&nbsp;</p>

<p>- Anh c&oacute; thể n&oacute;i r&otilde; hơn về những &aacute;p lực của H&agrave; Nội FC đ&atilde; gặp phải trước cuộc so k&egrave; n&agrave;y?</p>

<p>- Chắc anh cũng biết, trước đ&oacute; đ&atilde; c&oacute; những đồn đo&aacute;n rằng một số đội b&oacute;ng trong đ&oacute; c&oacute; H&agrave; Nội FC sẽ nhường ng&ocirc;i v&ocirc; địch cho Quảng Nam, n&ecirc;n cuộc so k&egrave; n&agrave;y đ&atilde; bị dư luận săm soi rất nhiều. Điều ấy khiến cầu thủ cả hai đội, đặc biệt l&agrave; anh em ch&uacute;ng t&ocirc;i chịu &aacute;p lực rất lớn.&nbsp;</p>

<p>&nbsp;</p>

<p>N&oacute;i thế, v&igrave; ở trận gặp Quảng Nam, ch&uacute;ng t&ocirc;i chỉ c&oacute; cửa phải thắng mới c&oacute; thể tiếp tục mở ra cơ hội đua tranh v&ocirc; địch. C&ograve;n nếu như thua th&igrave; vừa mất cơ hội, vừa bị chỉ tr&iacute;ch lẫn nghi ngờ, m&agrave; ph&agrave;m trong b&oacute;ng đ&aacute; đ&acirc;u thể n&oacute;i trước được thắng bại, nhất l&agrave; khi Quảng Nam cũng đang quyết t&acirc;m để gi&agrave;nh ng&ocirc;i v&ocirc; địch, thế n&ecirc;n &aacute;p lực c&agrave;ng kinh khủng.</p>

<p><img alt="" src="/Data/images/content/vleague/10b.jpg" style="height:441px; width:680px" /></p>

<h3 style="color:#aaa; font-style:italic"><em>Niềm vui của Văn Quyết v&agrave; c&aacute;c đồng đội khi ghi b&agrave;n thắng trong trận gặp Quảng Nam. Ảnh: Minh Tuấn</em></h3>

<p>&nbsp;Vậy c&aacute;c anh đ&atilde; l&agrave;m g&igrave; để vượt qua sức &eacute;p?</p>

<p>- Thực sự l&uacute;c ấy ch&uacute;ng t&ocirc;i chỉ biết động vi&ecirc;n nhau cố gắng. T&ocirc;i v&agrave; c&aacute;c anh em lớn đ&atilde; động vi&ecirc;n c&aacute;c cầu thủ trẻ rất nhiều, bởi lo c&aacute;c em kh&ocirc;ng vượt được ch&iacute;nh m&igrave;nh. May mắn l&agrave; ch&uacute;ng t&ocirc;i đ&atilde; vượt qua v&agrave; gi&agrave;nh chiến thắng bằng sự nỗ lực cực lớn. Nếu c&oacute; xem trận đấu, chắc mọi người đều thấy ch&uacute;ng t&ocirc;i đ&atilde; phải thi đấu đến hơn 100% sức lực.&nbsp;</p>

<p>&nbsp;</p>

<p>Đ&ocirc;i l&uacute;c t&ocirc;i cảm thấy buồn v&igrave; chẳng hiểu sao lại c&oacute; những đồn thổi v&ocirc; l&yacute; như thế, bởi chẳng l&yacute; do g&igrave; ch&uacute;ng t&ocirc;i nhường nồi cơm của m&igrave;nh cho người kh&aacute;c. Ch&uacute;ng t&ocirc;i thi đấu v&igrave; cuộc sống của gia đ&igrave;nh, v&igrave; m&agrave;u cờ sắc &aacute;o CLB v&agrave; v&igrave; niềm vui của c&aacute;c kh&aacute;n giả nh&agrave;, n&ecirc;n đừng hạ thấp sự nỗ lực của cầu thủ v&igrave; những suy diễn như vậy.</p>

<p>&nbsp;</p>

<p>- Vượt qua bước ngoặc ở v&ograve;ng 25, nhưng H&agrave; Nội FC vẫn c&ograve;n một trận đấu đầy kh&oacute; khăn trước Than Quảng Ninh ở cuối. Anh nhận định cuộc đối đầu n&agrave;y ra sao?</p>

<p>-&nbsp;<a href="http://bongdaplus.vn/danh-gia-co-hoi-cac-ung-vien-vo-dich-v-league-2022311711.html">Đ&acirc;y l&agrave; trận cầu quan trọng nhất m&ugrave;a giải 2017</a>&nbsp;của H&agrave; Nội FC. Sự th&agrave;nh bại của cả m&ugrave;a b&oacute;ng sẽ quyết định trong 90 ph&uacute;t của trận đấu n&agrave;y. Vậy n&ecirc;n anh em ch&uacute;ng t&ocirc;i cần phải tập trung v&agrave; nỗ lực rất cao, bởi chức v&ocirc; địch lu&ocirc;n l&agrave; mục ti&ecirc;u tất cả th&agrave;nh vi&ecirc;n của H&agrave; Nội FC đều kh&aacute;t khao v&agrave; hướng đến.&nbsp;</p>

<p>&nbsp;</p>

<p>Thực tế Than Quảng Ninh l&agrave; đội b&oacute;ng rất kh&oacute; chịu, chưa kể ch&uacute;ng t&ocirc;i phải thi đấu tr&ecirc;n s&acirc;n nh&agrave; Cẩm Phả của đối thủ, n&ecirc;n đ&acirc;y sẽ l&agrave; cuộc so k&egrave; cực kỳ kh&oacute; khăn do họ cũng đang cần chiến thắng để lọt v&agrave;o nh&oacute;m c&oacute; huy chương. Chưa cần biết sự th&agrave;nh bại ở trận đấu n&agrave;y ra sao, nhưng trước mắt ch&uacute;ng t&ocirc;i phải tập trung chiến hết m&igrave;nh ở trận đấu n&agrave;y.</p>

<p>&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/10c.jpg" style="height:428px; width:680px" /></p>

<h3 style="color:#aaa; font-style:italic"><span style="font-size:12px"><em>C&aacute;c cầu thủ H&agrave; Nội đang rất kh&aacute;t khao hướng đến ng&ocirc;i v&ocirc; địch một lần nữa. Ảnh: Minh Tuấn</em></span></h3>

<p>- Cả 3 đội H&agrave; Nội, Quảng Nam v&agrave; FLC Thanh Ho&aacute; đang c&ugrave;ng đua tranh ng&ocirc;i đầu, anh nghĩ CLB n&agrave;o c&oacute; cơ hội cao nhất?</p>

<p>-&nbsp;<a href="http://bongdaplus.vn/ha-quang-nam-ha-noi-fc-thap-lua-cho-luot-cuoi-2022331711.html">Hiện cả 3 đội đều c&ugrave;ng c&oacute; cơ hội như nhau</a>, nhưng đội n&agrave;o c&oacute; sự nỗ lực v&agrave; kh&aacute;t khao hơn sẽ gi&agrave;nh được chiếc c&uacute;p v&ocirc; địch của m&ugrave;a giải. Tuy nhi&ecirc;n, nh&igrave;n thực tế Quảng Nam vẫn l&agrave; CLB s&aacute;ng cửa nhất khi tiếp CLB TP.HCM tr&ecirc;n s&acirc;n nh&agrave; ở trận cuối. Trong l&uacute;c H&agrave; Nội FC như đ&atilde; n&oacute;i sẽ gặp đối thủ rất kh&oacute; chịu l&agrave; Than Quảng Ninh. Ri&ecirc;ng FLC Thanh Ho&aacute; đang thất thế nhất do đang thua đối đầu.</p>

<p>&nbsp;</p>

<p>- Ngo&agrave;i nỗ lực v&agrave; kh&aacute;t khao như anh n&oacute;i, thế yếu tố may mắn sẽ g&oacute;p bao nhi&ecirc;u % trong cuộc đua tranh n&agrave;y?</p>

<p>- May mắn đ&uacute;ng l&agrave; một phần kh&ocirc;ng thể thiếu trong b&oacute;ng đ&aacute;, nhưng ở đ&acirc;y t&ocirc;i gạt điều n&agrave;y qua một b&ecirc;n v&agrave; chỉ nh&igrave;n đơn thuần về chuy&ecirc;n m&ocirc;n th&ocirc;i. Trong thể thao, nếu bạn kh&ocirc;ng thi đấu hết m&igrave;nh với một sự kh&aacute;t khao cao nhất th&igrave; l&agrave;m sao may mắn đến được. T&ocirc;i nghĩ, may mắn chỉ l&agrave; phần nhỏ th&ocirc;i, cốt l&otilde;i vẫn l&agrave; tự bản th&acirc;n m&igrave;nh.</p>
', 1, 0, 0, N'văn quyết', N'Văn Quyết: "Quảng Nam sáng cửa vô địch nhất"', CAST(0x0000A831016845DC AS DateTime), N'ad', CAST(0x0000A83E00109660 AS DateTime), N'ad', N'văn quyết', N'Sau trận thắng sít sao 1-0 trước Quảng Nam, thủ quân Nguyễn Văn Quyết của Hà Nội FC đã chia sẻ với chúng tôi những câu chuyện xung quanh cuộc đối đầu này. Với các cầu thủ của đội bóng thủ đô, đấy còn hơn cả một trận chung kết.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (25, N'4 người thầy ấn tượng của bóng đá Việt Nam năm 2017', N'4-nguoi-thay-an-tuong-cua-bong-da-viet-nam-nam-2017', N'Những huấn luyện viên như Mai Đức Chung, Vũ Hồng Việt, Hoàng Anh Tuấn,... đã có được những thành công lớn cùng bóng đá Việt Nam trong năm 2017.', N'/Data/images/content/vleague/11a.jpg', N'<p><img alt="" src="/Data/images/content/vleague/11a.jpg" style="height:270px; width:480px" /></p>

<p>&nbsp;</p>

<h2>1. HLV Mai Đức Chung</h2>

<p>Năm 2017 c&oacute; thể xem l&agrave; kỷ niệm đầy ngọt ng&agrave;o đối với HLV Mai Đức Chung. Người thầy vẫn được đồng nghiệp v&agrave; c&aacute;c học tr&ograve; gọi với c&aacute;i biệt danh th&acirc;n mật l&agrave; &ocirc;ng &quot;Chung g&aacute;i&quot; cực kỳ m&aacute;t tay khi gi&uacute;p đội tuyển nữ Việt Nam gi&agrave;nh v&eacute; dự VCK Asian Cup nữ 2018 hồi th&aacute;ng 4, qua đ&oacute; tiến gần hơn tới giấc mơ World Cup. Hai th&aacute;ng sau đ&oacute;, thầy Chung lại một lần nữa đưa&nbsp;<a href="http://seagames.bongdaplus.vn/tin-tuc/doi-tuyen-nu-viet-nam-ve-nuoc-trong-niem-tu-hao-cua-nguoi-ham-mo-1950621708.html">đội tuyển Việt Nam chinh phục tấm huy chương v&agrave;ng SEA Games m&ocirc;n b&oacute;ng đ&aacute; nữ,</a>&nbsp;qua đ&oacute; san bằng kỷ lục 5 HCV SEA Games m&agrave; k&igrave;nh địch Th&aacute;i Lan nắm giữ.</p>

<p>&nbsp;</p>

<p>Kh&eacute;o ở tuyển nữ, thầy Chung cũng giỏi &quot;gắp mắm&quot; ở tuyển nam. Trong bối cảnh đội tuyển nam Việt Nam thiếu vắng HLV trưởng sau sự chia tay của thuyền trưởng Nguyễn Hữu Thắng, &ocirc;ng đ&atilde; gi&uacute;p đội nh&agrave; c&oacute; 2 chiến thắng quan trọng trước Campuchia, mở ra tiền đề gi&uacute;p Việt Nam gi&agrave;nh v&eacute; dự VCK Asian Cup 2019.</p>

<h2>2. HLV Vũ Hồng Việt&nbsp;</h2>

<p>Đ&atilde; 7 năm tr&ocirc;i qua, cấp độ U15 - U16 của Việt Nam kh&ocirc;ng thể gi&agrave;nh th&ecirc;m chức v&ocirc; địch tại đấu trường Đ&ocirc;ng Nam &Aacute;. V&agrave; ngay sau khi tiếp quản lứa U15, HLV Vũ Hồng Việt đ&atilde; tạo ra dấu ấn đ&aacute;ng nể. Kh&ocirc;ng c&oacute; sự chạy đ&agrave; tốt ở giải U15 quốc tế nhưng thầy tr&ograve; Hồng Việt vẫn c&oacute; m&agrave;n tr&igrave;nh diễn ấn tượng ở giải U15 Đ&ocirc;ng Nam &Aacute; 2017. Chiến thắng trước U15 Th&aacute;i Lan trong trận chung kết ngay tr&ecirc;n đất Th&aacute;i Lan gi&uacute;p U15 Việt Nam gi&agrave;nh chức v&ocirc; địch. HLV Vũ Hồng Việt sau giải đấu c&ograve;n chia sẻ: &quot;<a href="http://bongdaplus.vn/hlv-vu-hong-viet-niem-vui-nhan-doi-khi-vo-dich-truoc-thai-lan-1922671707.html">Thắng Th&aacute;i Lan đ&atilde; sướng, thắng họ trong trận chung kết ngay tr&ecirc;n s&acirc;n của họ c&ograve;n sướng gấp bội lần&quot;.</a></p>

<p>&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/11b.jpg" style="height:348px; width:640px" /></p>

<p><em>HLV Vũ Hồng Việt được học tr&ograve; c&ocirc;ng k&ecirc;nh sau chức v&ocirc; địch U15 Đ&ocirc;ng Nam &Aacute;&nbsp;&nbsp;</em></p>

<p>&nbsp;</p>

<p>Nối tiếp th&agrave;nh c&ocirc;ng ở giải U15 Đ&ocirc;ng Nam &Aacute;, U15 Việt Nam cũng tiếp tục gi&agrave;nh v&eacute; dự VCK U16 ch&acirc;u &Aacute; 2018, sau khi c&oacute; được th&agrave;nh t&iacute;ch tốt tại M&ocirc;ng Cổ.&nbsp;</p>

<h2>3. HLV Ho&agrave;ng Anh Tuấn</h2>

<p>Đ&acirc;y chắc chắn l&agrave; c&aacute;i t&ecirc;n được nhắc đến nhiều nhất trong th&aacute;ng 5/2017. &Ocirc;ng trở th&agrave;nh huấn luyện vi&ecirc;n Việt Nam đầu ti&ecirc;n đưa một&nbsp; đội tuyển (U20) đến với đấu trường thế giới. D&ugrave; phải sớm dừng bước ở v&ograve;ng bảng nhưng&nbsp;<a href="http://bongdaplus.vn/viet-nam-di-vao-lich-su-u20-world-cup-sau-tran-hoa-tren-co-new-zealand-1873871705.html">những dấu ấn trước New Zealand</a>, sự ki&ecirc;n cường đến ph&uacute;t cuối trước Honduras v&agrave; cả b&agrave;i học kinh nghiệm rất lớn khi đối đầu với những ng&ocirc;i sao tương lai của U20 Ph&aacute;p vẫn l&agrave; những h&igrave;nh ảnh đẹp m&agrave; U20 Việt Nam của HLV Ho&agrave;ng Anh Tuấn đ&atilde; cống hiến cho người h&acirc;m mộ.</p>

<p>&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/11c.jpg" style="height:452px; width:640px" /></p>

<p><em>HLV Ho&agrave;ng Anh Tuấn lập kỳ t&iacute;ch gi&uacute;p U20 Việt Nam dự VCK U20 World Cup&nbsp;</em></p>

<p>&nbsp;</p>

<p>Tiếp quản một lứa cầu thủ U19 mới, d&ugrave; kh&ocirc;ng th&agrave;nh c&ocirc;ng ở giải Đ&ocirc;ng Nam &Aacute; song U19 Việt Nam tiếp tục gi&agrave;nh v&eacute; dự VCK U19 ch&acirc;u &Aacute; sau khi to&agrave;n thắng cả 3 trận ở v&ograve;ng loại U19 ch&acirc;u &Aacute; 2018 tr&ecirc;n đất Đ&agrave;i Loan (TQ).&nbsp;</p>

<p>&nbsp;</p>

<h2>4. HLV Ho&agrave;ng Văn Ph&uacute;c</h2>

<p>Bất luận Quảng Nam FC c&oacute; thể v&ocirc; địch V.League 2017 hay kh&ocirc;ng, &ocirc;ng Ho&agrave;ng Văn Ph&uacute;c xứng đ&aacute;ng được b&igrave;nh chọn l&agrave; huấn luyện vi&ecirc;n nổi bật nhất của m&ugrave;a b&oacute;ng. Kh&aacute;c với những m&ugrave;a trước đ&oacute;, Quảng Nam FC đ&atilde; thi đấu rất ấn tượng với chuỗi 12 trận li&ecirc;n tiếp bất bại kể từ th&aacute;ng 4/2017 (trước khi thất bại trước H&agrave; Nội FC chiều qua, 19/11).&nbsp;</p>

<p>&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/11d.jpg" style="height:467px; width:640px" /></p>

<p><em>HLV Ho&agrave;ng Văn Ph&uacute;c đang &quot;bay&quot; với Quảng Nam - Ảnh: Minh Tuấn&nbsp;&nbsp;</em></p>

<p>&nbsp;</p>

<p>Lần đầu ti&ecirc;n trong lịch sử 20 năm CLB,&nbsp;<a href="http://bongdaplus.vn/vong-19-v-league-quang-nam-lan-dau-trong-lich-su-len-dau-bang-1973411709.html">Quảng Nam c&oacute; thể được đứng ở vị tr&iacute; số 1&nbsp;</a>sau một v&ograve;ng đấu của V.League. V&agrave; đ&acirc;y c&oacute; lẽ cũng l&agrave; lần đầu ti&ecirc;n, đội b&oacute;ng đất Quảng c&oacute; thể được đ&aacute;nh gi&aacute; l&agrave; ứng cử vi&ecirc;n s&aacute;ng gi&aacute; cho ng&ocirc;i v&ocirc; địch đến thế.&nbsp;</p>
', 1, 0, 0, N'Ngày 20-11', N'4 người thầy ấn tượng của bóng đá Việt Nam năm 2017', CAST(0x0000A8310171C206 AS DateTime), N'ad', CAST(0x0000A83E000FB17A AS DateTime), N'ad', N'20-11', N'Những huấn luyện viên như Mai Đức Chung, Vũ Hồng Việt, Hoàng Anh Tuấn,... đã có được những thành công lớn cùng bóng đá Việt Nam trong năm 2017.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (26, N'Hạ Quảng Nam, Hà Nội FC thắp lửa cho lượt cuối', N'ha-quang-nam-ha-noi-fc-thap-lua-cho-luot-cuoi', N'Trước cuộc tiếp đón Quảng Nam, chủ nhà Hà Nội FC đã chịu sức ép rất lớn, bởi nếu thất bại họ chắc chắn bị dự luận cho rằng “nhường” cơ hội vô địch cho đối thủ. Vì vậy, sự nỗ lực cực lớn của các cầu thủ chủ nhà đã giúp họ đập tan những đồn đoán vô căn cứ và mở ra cơ hội cạnh tranh cho chính mình.', N'/Data/images/content/vleague/12b.jpg', N'<p><img alt="" src="/Data/images/content/vleague/12a.jpg" style="height:393px; width:680px" /></p>

<p>H&agrave; Nội FC phải thắng mới c&oacute; khả năng bảo vệ được ng&ocirc;i v&ocirc; địch, trong l&uacute;c đội kh&aacute;ch Quảng Nam nếu&nbsp; gi&agrave;nh được 3 điểm trong cuộc so k&egrave; n&agrave;y sẽ l&ecirc;n ng&ocirc;i trước 1 v&ograve;ng đấu. Bởi t&iacute;nh chất quan trọng như thế, n&ecirc;n cả hai đội đ&atilde; nhập cuộc rất cẩn trọng. Thế n&ecirc;n, kh&ocirc;ng ngạc nhi&ecirc;n khi hơn 20 ph&uacute;t đầu trận đấu diễn ra kh&aacute; tẻ nhạt, những pha tranh chấp hầu như chỉ quanh quẩn ở khu vực giữa s&acirc;n v&agrave; gần như kh&ocirc;ng c&oacute; cơ hội n&agrave;o thật sự nguy hiểm.</p>

<p>&nbsp;</p>

<p>H&agrave; Nội FC bất ngờ tổn thất lực lượng khi tiền vệ Moses bị chấn thương phải rời s&acirc;n ở ph&uacute;t 25, thay cho anh l&agrave; &ldquo;s&oacute;c nhỏ&rdquo; Th&agrave;nh Lương. Việc mất tiền vệ trung t&acirc;m n&agrave;y khiến HLV Chu Đ&igrave;nh Nghi&ecirc;m cực kỳ &acirc;u lo, bởi Th&agrave;nh Lương thời gian qua tập luyện kh&ocirc;ng nhiều v&agrave; phong độ đ&atilde; s&uacute;t giảm v&igrave; tuổi t&aacute;c.</p>

<p>&nbsp;</p>

<p>Cuối hiệp 1, H&agrave; Nội FC đ&atilde; khiến số &iacute;t kh&aacute;n giả xứ Quảng c&oacute; mặt tr&ecirc;n s&acirc;n th&oacute;t tim với c&uacute; đ&aacute; phạt g&oacute;c của Th&agrave;nh Lương v&agrave; Samson đ&atilde; su&yacute;t c&oacute; cơ hội mở tỷ số, may m&agrave; một cầu thủ Quảng Nam đ&atilde; kịp c&oacute; mặt cản ph&aacute;.</p>

<p>&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/12b.jpg" style="height:420px; width:680px" /></p>

<p><em>Oseni (&aacute;o xanh) bỏ lỡ nhiều cơ hội đ&aacute;ng tiếc cho H&agrave; Nội. Ảnh: Minh Tuấn</em><br />
&nbsp;</p>

<p>C&aacute;c học tr&ograve; của HLV Chu Đ&igrave;nh Nghiệm đ&atilde; chủ động đẩy nhanh sức &eacute;p khi hiệp 2 bắt đầu. Thậm ch&iacute; đội chủ nh&agrave; l&agrave; những người nắm thế trận ho&agrave;n to&agrave;n v&agrave; li&ecirc;n tiếp đẩy h&agrave;ng thủ của Quảng Nam c&ugrave;ng thủ m&ocirc;n Văn Cường v&agrave;o thế chống đỡ vất vả.&nbsp;</p>

<p>&nbsp;</p>

<p>C&oacute; &iacute;t nhất 7 cơ hội ăn b&agrave;n được tạo ra, nhưng li&ecirc;n tiếp những ch&acirc;n s&uacute;t Samson, Oseni, Văn Quyết, Quang Hải đều kh&ocirc;ng thể đưa b&oacute;ng v&agrave;o lưới trong sự tiếc nuối của rất đ&ocirc;ng kh&aacute;n giả chủ nh&agrave; c&oacute; mặt tr&ecirc;n kh&aacute;n đ&agrave;i. Tuy nhi&ecirc;n, điều g&igrave; đến đ&atilde; đến. Từ c&uacute; trả b&oacute;ng ngược của Samson ở ph&uacute;t 75, Văn Quyết nhận b&oacute;ng v&agrave; tung c&uacute; s&uacute;t căng như kẻ chỉ mở tỷ số 1-0 cho H&agrave; Nội trong sự vỡ o&agrave; sung sướng của CĐV chủ nh&agrave;.</p>

<p>&nbsp;</p>

<p>B&agrave;n thắng khiến tinh thần đội chủ nh&agrave; c&agrave;ng th&ecirc;m hưng phấn v&agrave; tiếp tục gia tăng sức &eacute;p. Trong l&uacute;c đội kh&aacute;ch Quảng Nam cũng ra sức đẩy nhanh thế trận để t&igrave;m b&agrave;n c&acirc;n bằng tỷ số, thay v&igrave; chơi ph&ograve;ng ngự số đ&ocirc;ng như trước.&nbsp;</p>

<p>&nbsp;</p>

<p>Ph&uacute;t cuối c&ugrave;ng 90+5, từ một c&uacute; đ&aacute; phạt g&oacute;c, Thiago đ&atilde; su&yacute;t c&oacute; cơ hội c&acirc;n bằng tỷ số cho Quảng Nam, tiếc l&agrave; c&uacute; đ&aacute;nh đầu của anh đ&atilde; chệch khung th&agrave;nh rất đ&aacute;ng tiếc. Đang nhiều lợi thế, nhưng trận thua s&iacute;t sao 0-1 ngay tr&ecirc;n s&acirc;n H&agrave;ng Đẫy khiến thầy tr&ograve; HLV Ho&agrave;ng Văn Ph&uacute;c phải đợi đến cuộc so k&egrave; cuối c&ugrave;ng tr&ecirc;n s&acirc;n nh&agrave; Quảng Nam ở v&ograve;ng 26 gặp CLB TP.HCM mới c&oacute; thể x&aacute;c địch được khả năng v&ocirc; địch.</p>

<p>&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/12c.jpg" style="height:478px; width:680px" /></p>

<p><em>Hạnh ph&uacute;c vỡ o&agrave; của văn Quyết khi ghi b&agrave;n mở tỷ số cho H&agrave; Nội. Ảnh: Minh Tuấn</em><br />
&nbsp;</p>

<p>Trong khi đ&oacute;, chiến thắng thắng của H&agrave; Nội FC đ&atilde; gi&uacute;p họ mở ra cơ hội ch&iacute;nh ch&iacute;nh m&igrave;nh trong cuộc đua ng&ocirc;i đầu, đồng thời đập tan những lời đồn đo&aacute;n rằng thầy tr&ograve; HLV Chu Đ&igrave;nh Nghi&ecirc;m sẽ nhường cơ hội v&ocirc; địch cho đội kh&aacute;ch Quảng Nam.&nbsp;</p>

<p>&nbsp;</p>

<p>Vậy n&ecirc;n c&oacute; thể hiểu ngay sau trận đấu, đội trưởng Văn Quyết b&agrave;y tỏ: &ldquo;Thật sự ch&uacute;ng t&ocirc;i đ&atilde; rất &aacute;p lực, nhưng anh em ch&uacute;ng t&ocirc;i đ&atilde; xiết chặt tay nhau để vượt qua. T&ocirc;i chẳng hiểu sao lại c&oacute; những lời đồn thổi v&ocirc; l&yacute; như thế, bởi chẳng l&yacute; do g&igrave; ch&uacute;ng t&ocirc;i nhường nồi cơm của m&igrave;nh cho người kh&aacute;c.&nbsp;</p>

<p>&nbsp;</p>

<p>Ch&uacute;ng t&ocirc;i thi đấu v&igrave; cuộc sống của gia đ&igrave;nh m&igrave;nh, v&igrave; m&agrave;u cờ sắc &aacute;o CLB v&agrave; v&igrave; niềm vui của c&aacute;c kh&aacute;n giả nh&agrave;, n&ecirc;n đừng hạ thấp sự nỗ lực của cầu thủ v&igrave; những suy diễn như vậy&rdquo;.</p>

<p>&nbsp;</p>

<p>Sau trận thắng n&agrave;y, H&agrave; Nội FC sẽ c&oacute; trận quyết định gặp Than Quảng Ninh ở v&ograve;ng cuối c&ugrave;ng để đua tranh chức v&ocirc; địch với Quảng Nam v&agrave; FLC Thanh Ho&aacute;.</p>
', 1, 1, 0, N'FC', N'Hạ Quảng Nam, Hà Nội FC thắp lửa cho lượt cuối', CAST(0x0000A8310173908A AS DateTime), N'ad', CAST(0x0000A83E000586C6 AS DateTime), N'ad', N'FC', N'Trước cuộc tiếp đón Quảng Nam, chủ nhà Hà Nội FC đã chịu sức ép rất lớn, bởi nếu thất bại họ chắc chắn bị dự luận cho rằng “nhường” cơ hội vô địch cho đối thủ. Vì vậy, sự nỗ lực cực lớn của các cầu thủ chủ nhà đã giúp họ đập tan những đồn đoán vô căn cứ và mở ra cơ hội cạnh tranh cho chính mình.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (27, N'Mbappe, Rashford lọt đội hình U20 hay nhất thế giới', N'mbappe-rashford-lot-doi-hinh-u20-hay-nhat-the-gioi', N'Mới đây tạp chí FourFourTwo đã công bố đội hình những cầu thủ U20 xuất sắc nhất thế giới. Ngoài việc quy tụ những ngôi sao khá quen thuộc là Gianluigi Donnarumma, Marcus Rashford và Kylian Mbappe, còn có những cái tên xa lạ, song đầy hứa hẹn, như Douglas Luiz hay Toni Lato.', N'/Data/images/content/vleague/14d.jpg', N'<p><img alt="" src="/Data/images/content/vleague/14a.jpg" style="height:270px; width:480px" /></p>

<p>&nbsp;</p>

<p><strong>Thủ m&ocirc;n: Gianluigi Donnarumma</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/14b.jpg" style="height:425px; width:640px" /></p>

<p>Ra mắt Milan từ năm 16 tuổi, Donnarumma nhanh ch&oacute;ng nổi l&ecirc;n th&agrave;nh thủ m&ocirc;n h&agrave;ng đầu thế giới. 80 trận bắt ch&iacute;nh ở Serie A, anh giữ sạch lưới 26 trận, tức 32,5%, đồng thời cứu thua 224 lần (2,8 lần/trận). Với tuy&ecirc;n bố từ gi&atilde; ĐTQG mới đ&acirc;y của Gianluigi Buffon, người Italia cũng kh&ocirc;ng lo lắng bởi đ&atilde; c&oacute; người kế thừa xứng đ&aacute;ng. Donnarumma sẽ mang đến sự an to&agrave;n cho khung th&agrave;nh Azzurri một thời gian d&agrave;i.&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Hậu vệ phải: Trent Alexander-Arnold</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/14c.jpg" style="height:427px; width:640px" /></p>

<p>Juergen Klopp n&oacute;i rằng Alexander-Arnold c&ograve;n phải cải thiện nhiều, song r&otilde; r&agrave;ng t&agrave;i năng của hậu vệ 19 tuổi đang ph&aacute;t triển nhanh hơn dự kiến. C&uacute; đ&aacute; phạt th&agrave;nh b&agrave;n từ khoảng c&aacute;ch 25m v&agrave;o lưới Hoffenheim hồi th&aacute;ng 8 hay pha lập c&ocirc;ng trước Maribor sau đ&oacute; 2 th&aacute;ng cho thấy những phẩm chất vượt trội, đẳng cấp cũng như sự tự tin của Alexander-Arnold. Anh ch&iacute;nh l&agrave; tương lai của Liverpool v&agrave; ĐT Anh.&nbsp;&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Trung vệ: Matthijs De Ligt</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/14d.jpg" style="height:427px; width:640px" /></p>

<p>Nhiều người đ&atilde; sốc khi HLV Peter Bosz cho ra mắt De Ligt v&agrave;o cuối năm ngo&aacute;i, khi anh mới 17 tuổi, hoặc Danny Blind gọi cầu thủ n&agrave;y v&agrave;o ĐT H&agrave; Lan hồi đầu năm. Tuy nhi&ecirc;n trung vệ của Ajax đ&atilde; sớm xua tan mọi nghi ngờ bằng sự chắc chắn v&agrave; điềm tĩnh, c&ugrave;ng với khả năng ph&aacute;t động tấn c&ocirc;ng tuyệt hảo. Hiện Barca đang muốn c&oacute; De Ligt ngay trong th&aacute;ng 1 tới.&nbsp;&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Trung vệ: Timothy Fosu-Mensah</strong></p>

<p><img alt="" src="/Data/images/content/vleague/14e.jpg" style="height:484px; width:640px" /></p>

<p>Được mua về bởi Van Gaal v&agrave;o năm 2014, kh&ocirc;ng ngạc nhi&ecirc;n khi Fosu-Mensah nổi bật với khả năng kiểm so&aacute;t b&oacute;ng th&ocirc;ng minh v&agrave; đọc trận đấu nhạy b&eacute;n. Hiện đang chơi tại Crystal Palace theo dạng cho mượn, nhưng tương lai của Fosu-Mensah chắc chắn l&agrave; ở M.U, cũng như việc anh sẽ l&agrave; một trung vệ h&agrave;ng đầu d&ugrave; vẫn thường xuy&ecirc;n chơi hậu vệ phải. Giống De Ligt, Fosu-Mensah đ&atilde; bắt đầu sự nghiệp ở ĐTQG H&agrave; Lan.&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Hậu vệ tr&aacute;i: Toni Lato</strong></p>

<p>&nbsp;</p>

<p><strong><img alt="" src="/Data/images/content/vleague/14f.jpg" style="height:426px; width:640px" /></strong></p>

<p>Lato đ&atilde; bắt đầu m&ugrave;a giải năm nay như mơ, với đường kiến tạo trong trận h&ograve;a 2-2 trước Real Madrid. Năng động, nhanh nhẹn v&agrave; kh&ocirc;ng ngại thực hiện c&aacute;c quyết định t&aacute;o bạo, Lato l&agrave; vi&ecirc;n ngọc qu&yacute; của l&ograve; đ&agrave;o tạo Valencia. Mặc d&ugrave; chưa thể đ&aacute;nh bật đ&agrave;n anh Jose Gaya ra khỏi h&agrave;nh lang tr&aacute;i nhưng trong một m&ugrave;a giải d&agrave;i ng&agrave;y, cầu thủ 19 tuổi vẫn c&ograve;n nhiều cơ hội để thể hiện m&igrave;nh.</p>

<p>&nbsp;</p>

<p><strong>Tiền vệ trung t&acirc;m: Manuel Locatelli</strong></p>

<p><strong><img alt="" src="/Data/images/content/vleague/14g.jpg" style="height:420px; width:640px" /></strong></p>

<p>Trong m&ugrave;a giải thất vọng năm ngo&aacute;i, Locatelli ch&iacute;nh l&agrave; điểm s&aacute;ng hiếm hoi của Milan với 28 lần ra s&acirc;n v&agrave; 2 b&agrave;n thắng ở mọi mặt trận. Pha lập c&ocirc;ng v&agrave;o lưới Juventus hồi th&aacute;ng 10/2016 sẽ l&agrave; khoảnh khắc m&agrave; c&aacute;c Milanista c&ograve;n nhắc đến trong nhiều năm nữa. Ở vị tr&iacute; tiền vệ kiến tạo l&ugrave;i s&acirc;u, Locatelli được v&iacute; với Sergio Busquets bởi kỹ thuật cũng như phạm vi chuyền b&oacute;ng kh&ocirc;ng giới hạn.&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Tiền vệ trung t&acirc;m: Douglas Luiz</strong></p>

<p><img alt="" src="/Data/images/content/vleague/14h.jpg" style="height:425px; width:640px" /></p>

<p>Chỉ sau 39 trận trong m&agrave;u &aacute;o Vasco da Gama, Douglas Luiz đ&atilde; thuyết phục Man City chi ra tới 10,2 triệu bảng để chi&ecirc;u mộ anh. L&agrave; một tiền vệ con thoi, cầu thủ 19 tuổi c&oacute; năng lượng phi thường để duy tr&igrave; sự hiện diện ở hai đầu s&acirc;n, tham gia đắc lực trong ph&ograve;ng ngự lẫn tấn c&ocirc;ng. Hiện đang chơi ở Ginona theo dạng cho mượn, nhưng Douglas được x&aacute;c định l&agrave; sự thay thế l&acirc;u d&agrave;i cho Yaya Toure.&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Tiền vệ trung t&acirc;m: Kai Havertz</strong></p>

<p>&nbsp;</p>

<p><strong><img alt="" src="/Data/images/content/vleague/14i.jpg" style="height:427px; width:640px" /></strong></p>

<p>Ra mắt cuối năm ngo&aacute;i, Havertz trở th&agrave;nh cầu thủ trẻ nhất Leverkusen chơi b&oacute;ng tại Bundesliga, sau đ&oacute; 5 th&aacute;ng tiếp tục l&agrave; người trẻ nhất CLB ghi b&agrave;n ở giải đấu h&agrave;ng đầu nước Đức. M&ugrave;a n&agrave;y Havertz đ&atilde; c&oacute; 3 pha kiến tạo v&agrave; phong c&aacute;ch chơi b&oacute;ng khiến anh được so s&aacute;nh với Michael Ballack. Tuy nhi&ecirc;n tiền vệ 18 tuổi lại tiết lộ rằng, Mesut Oezil mới l&agrave; h&igrave;nh mẫu anh theo đuổi.</p>

<p>&nbsp;</p>

<p><strong>Tiền đạo tr&aacute;i: Marcus Rashford</strong></p>

<p>&nbsp;</p>

<p><strong><img alt="" src="/Data/images/content/vleague/14j.jpg" style="height:427px; width:640px" /></strong></p>

<p>Tr&igrave;nh l&agrave;ng c&aacute;ch đ&acirc;y 20 th&aacute;ng, Rashford đ&atilde; c&oacute; 89 trận đấu cho M.U v&agrave; ghi 26 b&agrave;n thắng. Mặc d&ugrave; xuất th&acirc;n ở vị tr&iacute; trung phong, song anh kh&ocirc;ng c&oacute; vấn đề g&igrave; khi được y&ecirc;u cầu đ&aacute; lệch tr&aacute;i nhờ tốc độ b&ugrave;ng nổ v&agrave; kỹ năng đi b&oacute;ng đi&ecirc;u luyện. M&ugrave;a n&agrave;y, Rashford l&agrave; một trong những cầu thủ nổi bật nhất Quỷ đỏ với 7 pha lập c&ocirc;ng v&agrave; 5 đường kiến tạo ở mọi đấu trường.&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Trung phong: Kylian Mbappe</strong></p>

<p>&nbsp;</p>

<p><strong><img alt="" src="/Data/images/content/vleague/14k.jpg" style="height:454px; width:640px" /></strong></p>

<p>&nbsp;</p>

<p>Thời gian n&agrave;y năm ngo&aacute;i rất &iacute;t người biết đến c&aacute;i t&ecirc;n Mbappe. Nhưng b&acirc;y giờ, anh l&agrave; t&agrave;i năng lớn nhất thế giới ở độ tuổi U20 v&agrave; gia nhập PSG với thỏa thuận c&oacute; thể l&ecirc;n đến 180 triệu euro để c&ugrave;ng với Neymar, Cavani trở th&agrave;nh bộ ba c&oacute; sức t&agrave;n ph&aacute; khủng khiếp. Trong m&agrave;u &aacute;o mới, t&agrave;i năng của Mbappe tiếp tục ph&aacute;t triển rực rỡ với b&igrave;nh qu&acirc;n 84 ph&uacute;t lại tham gia v&agrave;o một b&agrave;n thắng m&ugrave;a n&agrave;y.&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Tiền đạo phải: Christian Pulisic</strong></p>

<p>&nbsp;</p>

<p><strong><img alt="" src="/Data/images/content/vleague/14l.jpg" style="height:483px; width:640px" /></strong></p>

<p>&nbsp;</p>

<p>Kỹ thuật ho&agrave;n hảo, khả năng đi b&oacute;ng ở tốc độ cao, s&aacute;ng tạo trong chuyền b&oacute;ng v&agrave; ch&iacute;nh x&aacute;c khi dứt điểm, c&oacute; thể chơi ở hai c&aacute;nh hoặc &ldquo;số 10&rdquo;, Pulisic c&oacute; thể coi l&agrave; t&agrave;i năng lớn nhất m&agrave; nước Mỹ sản sinh ra. Trong tương lai, giữ ch&acirc;n anh l&agrave; nhiệm vụ kh&oacute; khăn của Dortmund, khi Real, Liverpool v&agrave; Arsenal đều đặc biệt quan t&acirc;m, c&ograve;n Bayern coi đ&acirc;y l&agrave; người kế nhiệm Arjen Robben.</p>
', 1, 0, 0, N'u20', N'Mbappe, Rashford lọt đội hình U20 hay nhất thế giới', CAST(0x0000A831018368E1 AS DateTime), N'ad', CAST(0x0000A83E00056B97 AS DateTime), N'ad', N'u20', N'Mới đây tạp chí FourFourTwo đã công bố đội hình những cầu thủ U20 xuất sắc nhất thế giới. Ngoài việc quy tụ những ngôi sao khá quen thuộc là Gianluigi Donnarumma, Marcus Rashford và Kylian Mbappe, còn có những cái tên xa lạ, song đầy hứa hẹn, như Douglas Luiz hay Toni Lato.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (28, N'Trọng tài trẻ măng điều khiển trận tranh vô địch V.League', N'trong-tai-tre-mang-dieu-khien-tran-tranh-vo-dich-v-league', N'Mới chỉ 26 tuổi nhưng Nathan Chan Rong De đã được mời làm trọng tài chính ở trận cầu quyết định đến chức vô địch V.League giữa Than.QN và Hà Nội FC.', N'/Data/images/content/vleague/15b.jpg', N'<p><img alt="" src="/Data/images/content/vleague/15a.jpg" style="height:270px; width:480px" /></p>

<p>&nbsp;</p>

<p>Trận đấu giữa Than.QN v&agrave; H&agrave; Nội FC l&agrave; một trong ba cặp đấu ảnh hưởng trực tiếp đến chức v&ocirc; địch&nbsp;<a href="http://bongdaplus.vn/bong-da-viet-nam/v-league.html">V.League 2017,</a>&nbsp;b&ecirc;n cạnh m&agrave;n so t&agrave;i giữa Quảng Nam FC &ndash; TP.HCM v&agrave; SLNA &ndash; FLC Thanh H&oacute;a.&nbsp;</p>

<p>&nbsp;</p>

<p>Ch&iacute;nh v&igrave; vậy, Ban Trọng t&agrave;i VFF đ&atilde; được Li&ecirc;n đo&agrave;n b&oacute;ng đ&aacute; Singapore giới thiệu trọng t&agrave;i Nathan Chan Rong De điều khiển trận cầu quan trọng n&agrave;y.&nbsp;</p>

<p>&nbsp;</p>

<p>Điều đặc biệt ở trọng t&agrave;i Nathan Chan Rong De l&agrave; anh mới chỉ 26 tuổi. Anh l&agrave; trọng t&agrave;i ch&iacute;nh trẻ nhất của b&oacute;ng đ&aacute; Singapore ở thời điểm hiện tại, đồng thời cũng l&agrave; 1 trong 6 trọng t&agrave;i Singapore được FIFA c&ocirc;ng nhận.</p>

<p>&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/15b.jpg" style="height:453px; width:640px" /></p>

<p><em>Trận đấu giữa Than.QN v&agrave; H&agrave; Nội tr&ecirc;n s&acirc;n Cẩm Phả sẽ ảnh hưởng trực tiếp đến ng&ocirc;i v&ocirc; địch&nbsp;&nbsp;</em></p>

<p>&nbsp;</p>

<p>Trở lại trận đấu giữa Than.QN v&agrave; H&agrave; Nội FC, cặp đấu n&agrave;y c&oacute; t&iacute;nh ảnh hưởng lớn nhất đến cuộc đua ng&ocirc;i vương. Như Bongdaplus đ&atilde; ph&acirc;n t&iacute;ch, H&agrave; Nội FC sẽ l&ecirc;n ng&ocirc;i v&ocirc; địch nếu như thắng Than.QN.&nbsp;</p>

<p>&nbsp;</p>

<p>Tuy nhi&ecirc;n ngược lại, một thất bại trước đội b&oacute;ng đất Mỏ cũng đồng nghĩa H&agrave; Nội FC sẽ d&acirc;ng chiếc c&uacute;p cho Quảng Nam FC hoặc FLC Thanh H&oacute;a.&nbsp;</p>

<p>&nbsp;</p>

<p>7 trận đấu thuộc v&ograve;ng 26 V.League sẽ c&ugrave;ng diễn ra v&agrave;o l&uacute;c 17h00 ng&agrave;y 25/11.&nbsp;</p>
', 1, 2, 0, N'V.League', N'Trọng tài trẻ măng điều khiển trận tranh vô địch V.League', CAST(0x0000A83400FA6DD7 AS DateTime), N'ad', CAST(0x0000A83E001316BD AS DateTime), N'ad', N'V.League', N'Mới chỉ 26 tuổi nhưng Nathan Chan Rong De đã được mời làm trọng tài chính ở trận cầu quyết định đến chức vô địch V.League giữa Than.QN và Hà Nội FC.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (29, N'Phi Sơn quyết định tương lai sau trận chung kết Cúp QG', N'phi-son-quyet-dinh-tuong-lai-sau-tran-chung-ket-cup-qg', N'Hợp đồng của Phi Sơn với SLNA sẽ đáo hạn khi mùa giải 2017 khép lại. Nhưng cho đến thời điểm hiện tại, tiền vệ sinh năm 1992 này là một trong những cái tên “hot” nhất trên thị trường chuyển nhượng. Chuyện tương lai của tiền vệ gốc Hà Tĩnh đang là chủ đề được bàn tán nhiều nhất thời gian qua.', N'/Data/images/content/vleague/16a.jpg', N'<p><img alt="" src="/Data/images/content/vleague/16a.jpg" style="height:270px; width:480px" /></p>

<p>Theo nhiều nguồn tin, Phi Sơn đ&atilde; đạt được thoả thuận sơ bộ để chia tay SLNA v&agrave; đầu qu&acirc;n cho TP.HCM kể từ m&ugrave;a giải 2018. Lập luận kể tr&ecirc;n c&agrave;ng c&oacute; cơ sở khi mới đ&acirc;y Toshiya Miura, vị HLV m&agrave; Phi Sơn hết mực t&ocirc;n trọng, được cho sẽ dẫn dắt đội b&oacute;ng n&agrave;y trong thời gian tới.</p>

<p>&nbsp;</p>

<p>Tuy nhi&ecirc;n, ch&iacute;nh Phi Sơn vẫn khẳng định: &ldquo;Đ&uacute;ng l&agrave; c&oacute; một v&agrave;i đội b&oacute;ng li&ecirc;n hệ với t&ocirc;i nhưng mới ở mức đặt vấn đề, chưa c&oacute; g&igrave; l&agrave; r&otilde; r&agrave;ng cả. Với t&ocirc;i, SLNA vẫn l&agrave; ưu ti&ecirc;n số 1 trong sự lựa chọn của m&igrave;nh. T&ocirc;i muốn tập trung to&agrave;n lực cho trận chung kết lượt về C&uacute;p QG 2017, trước khi ngồi v&agrave;o đ&agrave;m ph&aacute;n với SLNA rồi mới quyết định tương lai&rdquo;.</p>
', 1, 0, 0, N'Phi Sơn', N'Phi Sơn quyết định tương lai sau trận chung kết Cúp QG', CAST(0x0000A83400FAEC5D AS DateTime), N'ad', CAST(0x0000A83E0005568F AS DateTime), N'ad', N'Phi Sơn', N'Hợp đồng của Phi Sơn với SLNA sẽ đáo hạn khi mùa giải 2017 khép lại. Nhưng cho đến thời điểm hiện tại, tiền vệ sinh năm 1992 này là một trong những cái tên “hot” nhất trên thị trường chuyển nhượng. Chuyện tương lai của tiền vệ gốc Hà Tĩnh đang là chủ đề được bàn tán nhiều nhất thời gian qua.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (30, N'Nghịch lý ở cuộc đua Vua phá lưới V.League', N'nghich-ly-o-cuoc-dua-vua-pha-luoi-v-league', N'Cả B.Bình Dương, Hải Phòng hay XSKT Cần Thơ đều đã hết mục tiêu. Nhưng những chân sút chủ lực của họ lại tham gia một cuộc đua gay cấn chẳng khác nào trận chiến tranh chức vô địch. V.League 2017 đang chứng kiến một câu chuyện ngược. Khi những chân sút khủng không nằm ở các đội top đầu mà tỏa sáng nơi các đội phải lăn lộn cuộc chiến trụ hạng.', N'/Data/images/content/vleague/18b.jpg', N'<p><img alt="" src="/Data/images/content/vleague/18a.jpg" style="height:270px; width:480px" /></p>

<h2>M&ugrave;a giải kỳ lạ</h2>

<p>C&oacute; một c&ocirc;ng thức vốn được đa phần c&aacute;c đội b&oacute;ng tại V.League tự hiểu như một quy định bất th&agrave;nh văn nhiều năm qua, đ&oacute; l&agrave; muốn đạt th&agrave;nh t&iacute;ch cao phải sở hữu một ch&acirc;n s&uacute;t đủ khủng để ghi &iacute;t nhất từ 10 b&agrave;n trở l&ecirc;n trong một m&ugrave;a b&oacute;ng. Con số ấy c&agrave;ng được đẩy l&ecirc;n ngưỡng cao hơn đối với c&aacute;c tiền đạo đầu qu&acirc;n cho những ứng cử vi&ecirc;n tham vọng gi&agrave;nh chức v&ocirc; địch. Đ&oacute; cũng l&agrave; l&yacute; do v&igrave; sao, những c&aacute;i t&ecirc;n như Đỗ Merlo, Ho&agrave;ng Vũ Samson, Gonzalo hay xa hơn l&agrave; Kesley Alves, Jose Almeida lu&ocirc;n được c&aacute;c những g&atilde; khổng lồ của V.League trọng dụng.</p>

<p>&nbsp;</p>

<p>Tuy nhi&ecirc;n, V.League 2017 lại đang nằm ngo&agrave;i quy luật ấy. Trước v&ograve;ng đấu hạ m&agrave;n, giải đấu chứng kiến hai cuộc đua song song nhưng ngược chiều nhau. Những ứng cử vi&ecirc;n s&aacute;ng gi&aacute; cho danh hiệu Vua ph&aacute; lưới như Anh Đức, Errol Stevens hay Nsi Amougou lại kh&ocirc;ng hề đầu qu&acirc;n cho bộ ba tranh gi&agrave;nh ng&ocirc;i v&ocirc; địch l&agrave; Quảng Nam FC, H&agrave; Nội FC v&agrave; FLC Thanh H&oacute;a.</p>

<p>&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/18b.jpg" style="height:467px; width:640px" /></p>

<p><em>Những &quot;m&aacute;y ghi b&agrave;n&quot; kh&ocirc;ng ở đội top đầu V.League</em></p>

<p>Đ&acirc;y c&oacute; thể xem như một m&ugrave;a giải hiếm hoi c&aacute;c ch&acirc;n s&uacute;t chủ lực của những đội b&oacute;ng mạnh nằm ngo&agrave;i top 3 danh s&aacute;ch Vua ph&aacute; lưới. Tại H&agrave; Nội FC, Ho&agrave;ng Vũ Samson xuống phong độ trầm trọng. Ở FLC Thanh H&oacute;a, Uche Iheruome v&agrave; Pape Omar kh&ocirc;ng giữ được hiệu suất ghi b&agrave;n đều đặn như giai đoạn đầu m&ugrave;a b&oacute;ng. Quảng Nam FC c&oacute; lẽ đang d&agrave;nh nhiều niềm tin nơi Dos Claudecir, song ở hai v&ograve;ng đấu &aacute;p ch&oacute;t cần đến sự tỏa s&aacute;ng nơi h&agrave;ng c&ocirc;ng vừa qua, ch&acirc;n s&uacute;t người Brazil lại im đi tiếng s&uacute;ng.</p>

<p>&nbsp;</p>

<p>Ngược lại, những đội b&oacute;ng trung b&igrave;nh, thậm ch&iacute; từng c&oacute; giai đoạn d&agrave;i vật lộn với cuộc chiến trụ hạng như Hải Ph&ograve;ng, B.B&igrave;nh Dương v&agrave; XSKT Cần Thơ lại đang sở hữu những tiền đạo ghi b&agrave;n nhiều nhất giải. Một c&aacute;ch cặn kẽ hơn, những Anh Đức, Stevens, Nsi đang hưởng lợi nhiều khi được c&aacute;c đồng đội dồn mọi cơ hội để cạnh tranh Vua ph&aacute; lưới.</p>

<h2>Xu hướng ba tuyến ghi b&agrave;n</h2>

<p>Việc c&aacute;c ứng cử vi&ecirc;n v&ocirc; địch V.League kh&ocirc;ng sở hữu c&aacute;c ch&acirc;n s&uacute;t thuộc nh&oacute;m đầu danh s&aacute;ch Vua ph&aacute; lưới cũng phản &aacute;nh một xu hướng kh&aacute;c của V.League m&ugrave;a giải năm nay. B&ecirc;n cạnh chuyện kh&ocirc;ng phụ thuộc qu&aacute; nhiều v&agrave;o một c&aacute; nh&acirc;n tr&ecirc;n h&agrave;ng c&ocirc;ng, thống k&ecirc; cho thấy, &iacute;t nhất gần một nửa cầu thủ trong đội h&igrave;nh của c&aacute;c CLB đ&atilde; lập c&ocirc;ng ở V.League năm nay. Trong đ&oacute; SHB Đ&agrave; Nẵng (16 cầu thủ), H&agrave; Nội FC (12 cầu thủ), Than.QN (11 cầu thủ) l&agrave; những đội c&oacute; số cầu thủ ghi b&agrave;n b&agrave;n đ&ocirc;ng đảo nhất.</p>

<p>&nbsp;</p>

<p>Đ&aacute;ng ch&uacute; &yacute;, xu hướng tạo ra một tỷ lệ v&agrave;ng trong tấn c&ocirc;ng giữa 3 tuyến cũng đang được một số đội b&oacute;ng ch&uacute; trọng. CLB đang l&agrave;m tốt điều đ&oacute; nhất cũng ch&iacute;nh l&agrave; c&aacute;i t&ecirc;n đang c&oacute; cơ hội v&agrave;ng gi&agrave;nh chức v&ocirc; địch m&ugrave;a giải năm nay, H&agrave; Nội FC. So với hai đối thủ cạnh tranh chức v&ocirc; địch l&agrave; FLC Thanh H&oacute;a v&agrave; Quảng Nam FC, đội b&oacute;ng hủ đ&ocirc; tạo ra một tỷ lệ ghi b&agrave;n ấn tượng giữa 3 tuyến, hậu vệ, tiền vệ v&agrave; tiền đạo.</p>

<p>&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/18c.jpg" style="height:399px; width:640px" /></p>

<p><em>H&agrave; Nội FC hưởng lợi với sức mạnh đến từ cả 3 tuyến - Ảnh: Minh Tuấn</em></p>

<p>&nbsp;</p>

<p>H&agrave;ng hậu vệ của H&agrave; Nội m&ugrave;a n&agrave;y ghi được 9 b&agrave;n thắng, nhiều nhất trong số 14 đội b&oacute;ng tranh t&agrave;i ở V.League 2017. H&agrave;ng tiền vệ l&agrave; 12 b&agrave;n trong khi h&agrave;ng tiền đạo l&agrave; 28 pha lập c&ocirc;ng. C&oacute; thể về số lượng, h&agrave;ng tiền vệ hay h&agrave;ng tiền đạo của H&agrave; Nội kh&ocirc;ng ghi nhiều b&agrave;n như FLC Thanh H&oacute;a hay Quảng Nam FC. Nhưng nh&igrave;n một tỷ lệ ph&acirc;n chia được trải đều ra 3 tuyến, đội b&oacute;ng Thủ đ&ocirc; đang sở hữu một lực lượng chiều s&acirc;u đủ khả năng xuy&ecirc;n ph&aacute; khung th&agrave;nh ở mọi vị tr&iacute;, so với 2 đối thủ c&ograve;n lại.</p>
', 1, 3, 0, N'V.league', N'Nghịch lý ở cuộc đua Vua phá lưới V.League', CAST(0x0000A83400FC1F60 AS DateTime), N'ad', CAST(0x0000A83E0016C5FC AS DateTime), N'ad', N'V.league', N'Cả B.Bình Dương, Hải Phòng hay XSKT Cần Thơ đều đã hết mục tiêu. Nhưng những chân sút chủ lực của họ lại tham gia một cuộc đua gay cấn chẳng khác nào trận chiến tranh chức vô địch. V.League 2017 đang chứng kiến một câu chuyện ngược. Khi những chân sút khủng không nằm ở các đội top đầu mà tỏa sáng nơi các đội phải lăn lộn cuộc chiến trụ hạng.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (31, N'BTC V.League sẵn sàng cho màn chào đón nhà vô địch', N'btc-v-league-san-sang-cho-man-chao-don-nha-vo-dich', N'Vòng đấu cuối cùng của V.League 2017 sẽ diễn ra vào cuối tuần này, ở đấy sẽ chính thức xác định ra nhà vô địch của mùa giải. Theo BTC, mọi công tác chuẩn bị chào đón tân vương đã sẵn sàng.', N'/Data/images/content/vleague/20a.jpg', N'<p><img alt="" src="/Data/images/content/vleague/20a.jpg" style="height:393px; width:680px" /></p>

<p>Do cả 3 trận đấu tại c&aacute;c s&acirc;n Tam Kỳ, Cẩm Phả, Vinh đều c&oacute; những ứng vi&ecirc;n s&aacute;ng gi&aacute; của ng&ocirc;i v&ocirc; địch, n&ecirc;n &ocirc;ng Cao Văn Ch&oacute;ng &ndash; Tổng GĐ VPF, đơn vị tổ chức giải đ&atilde; cho biết: &ldquo;Ch&uacute;ng t&ocirc;i đ&atilde; l&ecirc;n sẵn nhiều kịch bản v&agrave; ph&acirc;n c&ocirc;ng nh&acirc;n sự cụ thể đến c&aacute;c s&acirc;n chuẩn bị cho việc ch&agrave;o đ&oacute;n nh&agrave; v&ocirc; địch của m&ugrave;a giải&rdquo;.</p>

<p>&nbsp;</p>

<p>Theo kế hoạch, Chủ tịch VFP V&otilde; Quốc Thắng v&agrave; Trưởng BTC giải Nguyễn Minh Ngọc sẽ c&oacute; mặt tại s&acirc;n Tam Kỳ, Tổng GĐ VPF Cao Văn Ch&oacute;ng đến s&acirc;n Quảng Ninh v&agrave; &ocirc;ng Phạm Ngọc Viễn sẽ dự kh&aacute;n trận đấu ở s&acirc;n Vinh. B&ecirc;n cạnh đ&oacute;, c&aacute;c đơn vị t&agrave;i trợ cũng cắt cử người đến c&aacute;c s&acirc;n chuẩn bị cho việc trao giải v&agrave; ch&uacute;c mừng nh&agrave; v&ocirc; địch.</p>

<p>&nbsp;</p>

<p>Hiện nay, 3 CLB H&agrave; Nội, Quảng Nam v&agrave; FLC Thanh Ho&aacute; đang c&ugrave;ng 45 điểm v&agrave; được xem l&agrave; ứng vi&ecirc;n s&aacute;ng gi&aacute; nhất của ng&ocirc;i vị v&ocirc; địch. Tuy nhi&ecirc;n, kh&ocirc;ng loại trừ trường hợp ở trận đấu cuối m&ugrave;a Quảng Nam thua CLB TP.HCM, FLC Thanh Ho&aacute; thua SLNA, trong l&uacute;c Than Quảng Ninh thắng H&agrave; Nội FC, l&uacute;c ấy sẽ c&oacute; 4 đội c&ugrave;ng 45 điểm l&agrave; H&agrave; Nội, Quảng Ninh, FLC Thanh Ho&aacute; v&agrave; Than Quảng Ninh.</p>

<p>&nbsp;</p>

<p>V&igrave; vậy, &ocirc;ng Cao Văn Ch&oacute;ng đ&atilde; b&agrave;y tỏ: &ldquo;M&ugrave;a giải năm nay thật sự hấp dẫn v&agrave; khả năng sẽ c&oacute; bất ngờ cho đến ph&uacute;t cuối c&ugrave;ng, điều n&agrave;y khiến ch&uacute;ng t&ocirc;i &ndash; những nh&agrave; tổ chức cảm thấy rất vui. Dưới g&oacute;c nh&igrave;n của t&ocirc;i, c&aacute;c trận đấu của giải c&agrave;ng về cuối c&agrave;ng quyết liệt, t&iacute;nh cạnh tranh cao v&agrave; c&aacute;c đội đều chơi rất s&ograve;ng phẳng, qua đ&oacute; thể hiện sự kh&aacute;t khao cực lớn ở cuộc đua v&ocirc; địch. Điều n&agrave;y cho thấy những đồn đo&aacute;n của dư luận về việc c&aacute;c CLB kh&ocirc;ng muốn hoặc nhường nhau ng&ocirc;i v&ocirc; địch l&agrave; rất v&ocirc; căn cứ, đồng thời khiến c&aacute;c CLB cảm thấy bị tổn thương kh&ocirc;ng &iacute;t. Song song đ&oacute;, c&aacute;c đội ở nh&oacute;m giữa d&ugrave; kh&ocirc;ng c&ograve;n nhiều mục ti&ecirc;u, nhưng vẫn chơi rất m&aacute;u lửa v&igrave; m&agrave;u cờ sắc &aacute;o của CLB. Điều ấy l&agrave;m những nh&agrave; tổ chức như ch&uacute;ng t&ocirc;i cảm thấy rất vui v&agrave; tr&acirc;n trọng&rdquo;.</p>

<p>&nbsp;</p>

<p>Cũng do cả 3 trận đấu diễn ra tại c&aacute;c s&acirc;n Quảng Nam, Quảng Ninh v&agrave; Vinh đều khả năng xuất hiện nh&agrave; v&ocirc; địch v&agrave;o ph&uacute;t ch&oacute;t, n&ecirc;n những nh&agrave; tổ chức đ&atilde; chuẩn bị sẵn 3 chiếc c&uacute;p để d&agrave;nh trao cho t&acirc;n vương của m&ugrave;a giải 2017.</p>
', 1, 2, 0, N'V.League', N'BTC V.League sẵn sàng cho màn chào đón nhà vô địch', CAST(0x0000A83400FD0E2C AS DateTime), N'ad', CAST(0x0000A83E00050B07 AS DateTime), N'ad', N'V.League', N'Vòng đấu cuối cùng của V.League 2017 sẽ diễn ra vào cuối tuần này, ở đấy sẽ chính thức xác định ra nhà vô địch của mùa giải. Theo BTC, mọi công tác chuẩn bị chào đón tân vương đã sẵn sàng.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (32, N'Bầu Hiển không treo thưởng vô địch trước cho Hà Nội FC', N'bau-hien-khong-treo-thuong-vo-dich-truoc-cho-ha-noi-fc', N'Bầu Hiển khẳng định sẽ không treo thưởng trước cho Hà Nội FC. Chủ tịch Tập đoàn T&T muốn các cầu thủ thi đấu vì NHM, vì màu cờ sắc áo chứ không phải vì tiền.', N'/Data/images/content/vleague/21a.jpg', N'<p><img alt="" src="/Data/images/content/vleague/21a.jpg" style="height:270px; width:480px" /></p>

<p>&nbsp;</p>

<p>&ldquo;T&ocirc;i kh&ocirc;ng treo thưởng trước cho to&agrave;n đội nếu v&ocirc; địch. L&agrave;m như thế th&igrave; kh&aacute;c g&igrave; c&aacute;c cầu thủ đ&aacute; v&igrave; tiền? C&aacute;c cầu thủ sẽ được nhận phần thưởng xứng đ&aacute;ng nhất khi họ cống hiến, gi&agrave;nh th&agrave;nh t&iacute;ch như mong đợi&rdquo;, bầu Hiển chia sẻ sau&nbsp;<a href="http://bongdaplus.vn/ha-quang-nam-ha-noi-fc-thap-lua-cho-luot-cuoi-2022331711.html" target="_blank">chiến thắng 1-0 của đội b&oacute;ng Thủ đ&ocirc; trước Quảng Nam FC</a>.&nbsp;</p>

<p>&nbsp;</p>

<p>Trước khi trận H&agrave; Nội FC - Quảng Nam FC ở v&ograve;ng 25 diễn ra, đ&atilde; c&oacute; rất nhiều đồn đo&aacute;n cho rằng đội b&oacute;ng Thủ đ&ocirc; sẽ nương ch&acirc;n để đối thủ l&ecirc;n ng&ocirc;i. Nhưng những diễn biến tr&ecirc;n s&acirc;n cho thấy, thầy tr&ograve; HLV Chu Đ&igrave;nh Nghi&ecirc;m đ&atilde; thể hiện quyết t&acirc;m rất cao, c&oacute; được chiến thắng v&agrave; gi&agrave;nh quyền tự quyết tới chức v&ocirc; địch.</p>

<p>&nbsp;</p>

<p>&ldquo;Đ&aacute; b&oacute;ng phải như thế mới sướng! Phải chơi fair-play, chứ biết trước kết quả th&igrave; n&oacute;i l&agrave;m g&igrave;&rdquo;, bầu Hiển n&oacute;i với c&aacute;c học tr&ograve; của HLV Chu Đ&igrave;nh Nghi&ecirc;m. Vui mừng trước m&agrave;n tr&igrave;nh diễn của H&agrave; Nội FC, bầu Hiển đ&atilde; quyết định thưởng cho tập thể v&agrave; c&aacute; nh&acirc;n xuất sắc tổng số tiền 900 triệu đồng sau chiến thắng trước Quảng Nam FC.</p>

<p>&nbsp;</p>

<p>C&ograve;n nhớ ở m&ugrave;a trước, d&ugrave; kh&ocirc;ng treo thưởng nhưng khi H&agrave; Nội FC l&ecirc;n ng&ocirc;i v&ocirc; địch V.League, bầu Hiển v&agrave; c&aacute;c Mạnh thường qu&acirc;n cũng đ&atilde; &ldquo;ph&aacute; k&eacute;t&rdquo; thưởng cho thầy tr&ograve; Chu Đ&igrave;nh Nghi&ecirc;m số tiền kỷ lục l&ecirc;n đến hơn 20 tỷ đồng.</p>
', 1, 1, 0, N'Hà Nội FC', N'Bầu Hiển không treo thưởng vô địch trước cho Hà Nội FC', CAST(0x0000A83400FE45DA AS DateTime), N'ad', CAST(0x0000A83400FE45DA AS DateTime), NULL, N'Hà Nội FC', N'Bầu Hiển khẳng định sẽ không treo thưởng trước cho Hà Nội FC. Chủ tịch Tập đoàn T&T muốn các cầu thủ thi đấu vì NHM, vì màu cờ sắc áo chứ không phải vì tiền.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (33, N'SHB Đà Nẵng muốn thắng để tri ân HLV Lê Huỳnh Đức', N'shb-da-nang-muon-thang-de-tri-an-hlv-le-huynh-duc', N'Sau vòng đấu 25 vừa qua, SHB.ĐN trở về đại bản doanh đóng tại Hòa Xuân và các cầu thủ đã quyết định tổ chức buổi tiệc chia tay HLV Lê Huỳnh Đức. Được biết, cựu danh thủ này đã quyết định sẽ không tiếp tục dẫn dắt đội bóng sông Hàn ngay sau khi V.League 2017 khép lại.', N'/Data/images/content/vleague/22a.jpg', N'<p><img alt="" src="/Data/images/content/vleague/22a.jpg" style="height:270px; width:480px" /></p>

<p>&nbsp;</p>

<p>Đ&acirc;y l&agrave; lần đầu ti&ecirc;n c&aacute;c cầu thủ của đội b&oacute;ng n&agrave;y tổ chức bữa tiệc tri &acirc;n với một HLV. Tại buổi tiệc,&nbsp;<a href="http://bongdaplus.vn/hlv-le-huynh-duc-chia-tay-shb-da-nang-10-nam-mot-cuoc-tinh-2019721711.html">HLV L&ecirc; Huỳnh Đức t&aacute;i khẳng định &ocirc;ng xin nghỉ việc ở SHB.ĐN</a>. Đ&acirc;y l&agrave; điều khiến nh&agrave; cầm qu&acirc;n n&agrave;y phải suy nghĩ rất nhiều, nhưng &ocirc;ng mong muốn đội nh&agrave; c&oacute; sự thay đổi n&ecirc;n &ocirc;ng mới xin r&uacute;t lui.</p>

<p>&nbsp;</p>

<p>Đ&aacute;p lại, c&aacute;c cầu thủ SHB.ĐN đ&atilde; b&agrave;y tỏ sự nuối tiếc khi HLV L&ecirc; Huỳnh Đức sẽ chia tay đội nh&agrave; v&agrave; thậm ch&iacute;, nhiều người c&ograve;n xin chụp ảnh ri&ecirc;ng với thầy để lưu giữ lại những kỷ niệm đẹp.&nbsp;</p>

<p>&nbsp;</p>

<p>Hậu vệ V&otilde; Ho&agrave;ng Qu&atilde;ng, người đ&atilde; gắn b&oacute; với HLV L&ecirc; Huỳnh Đức trong suốt 9 năm qua đ&atilde; kh&ocirc;ng giấu nổi sự x&uacute;c động khi phải n&oacute;i lời chia tay người thầy của m&igrave;nh.&nbsp;</p>

<p>&nbsp;</p>

<p>Trước khi rời bữa tiệc, HLV L&ecirc; Huỳnh Đức đ&atilde; khẳng định với c&aacute;c học tr&ograve; rằng, d&ugrave; sau n&agrave;y c&oacute; l&agrave;m việc ở đội b&oacute;ng kh&aacute;c th&igrave; &ocirc;ng vẫn lu&ocirc;n tr&acirc;n trọng, qu&yacute; mến c&aacute;c cầu thủ m&agrave; &ocirc;ng từng dẫn dắt.&nbsp;</p>

<p>&nbsp;</p>

<p>Với mong muốn c&oacute; m&oacute;n qu&agrave; chia tay thầy thật ấn tượng, tất cả c&aacute;c cầu thủ SHB.ĐN đ&atilde; hứa sẽ nỗ lực cao nhất để c&oacute; trận thắng trước HAGL ở v&ograve;ng đấu cuối của&nbsp;<a href="http://bongdaplus.vn/bong-da-viet-nam.html">V.League</a>&nbsp;2017.</p>
', 1, 2, 1, N'SHB', N'SHB Đà Nẵng muốn thắng để tri ân HLV Lê Huỳnh Đức', CAST(0x0000A83400FEC0CE AS DateTime), N'ad', CAST(0x0000A83E0004F46C AS DateTime), N'ad', N'SHB', N'Sau vòng đấu 25 vừa qua, SHB.ĐN trở về đại bản doanh đóng tại Hòa Xuân và các cầu thủ đã quyết định tổ chức buổi tiệc chia tay HLV Lê Huỳnh Đức. Được biết, cựu danh thủ này đã quyết định sẽ không tiếp tục dẫn dắt đội bóng sông Hàn ngay sau khi V.League 2017 khép lại.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (34, N'VFF không mời đích danh trọng tài Thái Lan bắt trận Hà Nội - Quảng Nam', N'vff-khong-moi-dich-danh-trong-tai-thai-lan-bat-tran-ha-noi-quang-nam', N'Trưởng Ban trọng tài Nguyễn Văn Mùi cho biết, LĐBĐ Việt Nam không mời đích danh trọng tài nước ngoài điều khiển các trận đấu ở V.League.', N'/Data/images/content/vleague/23a.jpg', N'<p><img alt="" src="/Data/images/content/vleague/23a.jpg" style="height:270px; width:480px" /></p>

<p>&nbsp;</p>

<p>Trọng t&agrave;i bắt&nbsp;<a href="http://bongdaplus.vn/tin-tuc/bong-da-viet-nam/v-league/ha-quang-nam-ha-noi-fc-thap-lua-cho-luot-cuoi-2022331711.html">trận H&agrave; Nội v&agrave; Quảng Nam</a>&nbsp;l&agrave; &ocirc;ng Pummarin Khamruen vừa bị cảnh s&aacute;t Th&aacute;i Lan bắt giữ v&igrave; bị t&igrave;nh nghi li&ecirc;n quan đến d&agrave;n xếp c&aacute;c trận đấu.<br />
<br />
Ph&aacute;t biểu về quy tr&igrave;nh mời trọng t&agrave;i ngoại, Trưởng ban trọng t&agrave;i Nguyễn Văn M&ugrave;i cho biết: &ldquo;VPF v&agrave; Ban trọng t&agrave;i họp thống nhất trước khi gửi đề xuất l&ecirc;n LĐBĐ Việt Nam. Sau đ&oacute;, LĐBĐ Việt Nam gửi thư mời sang LĐBĐ nước bạn đề nghị hỗ trợ. Ch&uacute;ng ta chỉ n&ecirc;u ra ti&ecirc;u ch&iacute; trọng t&agrave;i FIFA chứ kh&ocirc;ng thể mời đ&iacute;ch danh. Ngược lại, khi c&aacute;c nước mời trọng t&agrave;i của Việt Nam cũng theo quy tr&igrave;nh như thế chứ kh&ocirc;ng chỉ đ&iacute;ch danh&rdquo;.&nbsp;<br />
<br />
&Ocirc;ng M&ugrave;i cũng cho rằng, LĐBĐ Việt Nam lu&ocirc;n ưu ti&ecirc;n mời trọng t&agrave;i Nhật Bản v&agrave; H&agrave;n Quốc. Trong trường hợp kh&ocirc;ng th&agrave;nh, LĐBĐ Việt Nam mới mời c&aacute;c trọng t&agrave;i trong khu vực Đ&ocirc;ng Nam &Aacute;.<br />
<br />
N&oacute;i về việc&nbsp;<a href="http://bongdaplus.vn/tin-tuc/world-cup/tin-tuc/bong-da-thai-lan-rung-dong-khi-12-nhan-vat-bi-cao-buoc-dan-xep-ty-so-2024011711.html">trọng t&agrave;i Phumarin Khamruen bị bắt</a>, &ocirc;ng Nguyễn Văn M&ugrave;i b&agrave;y tỏ: &ldquo;Thời điểm ấy, LĐBĐ Th&aacute;i Lan cũng chưa biết những vi phạm bởi cảnh s&aacute;t Th&aacute;i Lan chưa th&ocirc;ng b&aacute;o. Ch&uacute;ng ta chỉ c&oacute; thể kiểm tra về năng lực chuy&ecirc;n m&ocirc;n th&ocirc;ng qua AFC v&agrave; được c&ocirc;ng nhận trọng t&agrave;i FIFA, chứ kh&ocirc;ng thể kiểm định tư c&aacute;ch đạo đức&rdquo;.</p>

<p>&nbsp;</p>

<p>Li&ecirc;n quan đến trọng t&agrave;i ở v&ograve;ng 26 tới, trận đấu giữa Than.QN v&agrave; H&agrave; Nội sẽ do trọng t&agrave;i người Singapore Nathan Chan Rong De điều khiển. Đ&acirc;y l&agrave; trọng t&agrave;i trẻ của b&oacute;ng đ&aacute; Đảo quốc sư tử, được c&ocirc;ng nhận trọng t&agrave;i FIFA năm 2017. &Ocirc;ng Nathan Chan Rong De được kh&aacute;n giả Singapore nhớ nhiều nhất khi trong một trận đấu ở giải quốc nội đ&atilde; r&uacute;t tới 6 thẻ v&agrave;ng v&agrave; 1 thẻ đỏ.&nbsp;</p>
', 1, 9, 0, N'VFF', N'VFF không mời đích danh trọng tài Thái Lan bắt trận Hà Nội - Quảng Nam', CAST(0x0000A83400FF3088 AS DateTime), N'ad', CAST(0x0000A83E0004EBB2 AS DateTime), N'ad', N'VFF', N'Trưởng Ban trọng tài Nguyễn Văn Mùi cho biết, LĐBĐ Việt Nam không mời đích danh trọng tài nước ngoài điều khiển các trận đấu ở V.League.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (35, N'ĐT nữ Việt Nam sang Đức tập huấn', N'dt-nu-viet-nam-sang-duc-tap-huan', N'Để có sự chuẩn bị tốt nhất cho VCK Asian Cup 2018, dự kiến tới đây thầy trò HLV Mai Đức Chung sẽ có chuyến tập huấn kéo dài 10 ngày tại Đức. Đây được xem là tin vui với ĐT nữ Việt Nam trước thềm giải đấu quan trọng nhất châu lục.', N'/Data/images/content/vleague/25a.jpg', N'<p><img alt="" src="/Data/images/content/vleague/25a.jpg" style="height:270px; width:480px" /></p>

<p>&nbsp;</p>

<p>Hiện tại, lượt về giải b&oacute;ng đ&aacute; nữ VĐQG - C&uacute;p Th&aacute;i Sơn Bắc 2017 đang diễn ra. V&agrave; đ&acirc;y được xem l&agrave; cơ hội rất tốt để HLV Mai Đức Chung tuyển qu&acirc;n, t&igrave;m ra những nh&acirc;n tố mới bổ sung v&agrave;o th&agrave;nh phần ĐT nữ Việt Nam ở giải đấu sắp tới. Tuy vậy, theo chia sẻ của &ocirc;ng Chung, đ&acirc;y l&agrave; nhiệm vụ kh&ocirc;ng hề dễ d&agrave;ng.</p>

<p>&nbsp;</p>

<p>&ldquo;Kh&oacute; khăn lớn nhất của ch&uacute;ng t&ocirc;i l&agrave; lực lượng cũng chỉ tr&ocirc;ng v&agrave;o mấy đội mạnh như H&agrave; Nội 1, TP.HCM 1, PP.HN v&agrave; TKS.VN. Rất kh&oacute; để&nbsp;<a href="http://bongdaplus.vn/dt-nu-viet-nam-ngay-cang-sung-suc-1898031706.html">t&igrave;m ra những nh&acirc;n tố mới</a>&nbsp;v&agrave; nếu c&oacute; th&igrave; cũng chỉ nằm ở c&aacute;c đội n&agrave;y. BHL sẽ cố gắng t&igrave;m được một v&agrave;i gương mặt mới để bổ sung v&agrave;o những vị tr&iacute; kh&aacute;c đ&atilde; nghỉ, kh&ocirc;ng thi đấu&rdquo;, HLV trưởng của ĐT nữ Việt Nam b&agrave;y tỏ.</p>

<p>&nbsp;</p>

<p>N&oacute;i về kế hoạch tập luyện, chuẩn bị cho VCK Asian Cup 2018 sắp tới, &ocirc;ng Chung cho biết: &ldquo;Theo kế hoạch, khoảng v&agrave;o ng&agrave;y 10/1 ch&uacute;ng t&ocirc;i sẽ tập trung một đợt, trước khi về nghỉ Tết. To&agrave;n đội sẽ tập trung lại sau Tết v&agrave; sẽ sang Đức tập huấn khoảng 10 ng&agrave;y rồi bay thẳng sang Jordan. Nh&igrave;n chung, đ&acirc;y l&agrave; chuyến tập huấn cực kỳ bổ &iacute;ch khi ch&uacute;ng ta được gặp c&aacute;c đối thủ mạnh ở b&ecirc;n đ&oacute;&rdquo;.</p>
', 1, 1, 0, N'Đội tuyển Nữ VN', N'ĐT nữ Việt Nam sang Đức tập huấn', CAST(0x0000A83401007763 AS DateTime), N'ad', CAST(0x0000A83E0004DF3A AS DateTime), N'ad', N'ĐT nữ', N'Để có sự chuẩn bị tốt nhất cho VCK Asian Cup 2018, dự kiến tới đây thầy trò HLV Mai Đức Chung sẽ có chuyến tập huấn kéo dài 10 ngày tại Đức. Đây được xem là tin vui với ĐT nữ Việt Nam trước thềm giải đấu quan trọng nhất châu lục.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (36, N'Quả bóng vàng Việt Nam 2017: HAGL sáng ngang Hà Nội về số lượng đề cử', N'qua-bong-vang-viet-nam-2017-hagl-sang-ngang-ha-noi-ve-so-luong-de-cu', N'Theo danh sách đề cử được BTC giải thưởng Quả bóng vàng Việt Nam 2017 tổng hợp từ việc thăm dò các phóng viên, nhà chuyên môn, hai đội bóng HAGL và Hà Nội có nhiều đề cử nhất với 3 gương mặt mỗi đội ở hạng mục cao nhất.', N'/Data/images/content/vleague/26a.jpg', N'<p><img alt="" src="/Data/images/content/vleague/26a.jpg" style="height:270px; width:480px" /></p>

<p>&nbsp;</p>

<p>S&aacute;ng 22/11, BTC giải thưởng Quả b&oacute;ng v&agrave;ng Việt Nam do b&aacute;o S&agrave;i G&ograve;n Giải Ph&oacute;ng tổ chức đ&atilde; tiến h&agrave;nh buổi họp b&aacute;o, th&ocirc;ng tin về giải thưởng của năm 2017. Theo danh s&aacute;ch đề cử, HAGL v&agrave; H&agrave; Nội c&oacute; nhiều cầu thủ nhất với 3 gương mặt. Cầu thủ đang kho&aacute;c &aacute;o CLB Gangwon của H&agrave;n Quốc l&agrave; Xu&acirc;n Trường cũng c&oacute; t&ecirc;n.<br />
<br />
Phải thừa nhận rằng, kh&ocirc;ng c&oacute; nhiều cầu thủ c&oacute; cống hiến nổi trội cả ở&nbsp;<a href="http://bongdaplus.vn/bong-da-viet-nam/dtqg.html">ĐT Việt Nam</a>&nbsp;lẫn CLB như một trong những ti&ecirc;u ch&iacute; để bầu chọn giải thưởng Quả b&oacute;ng v&agrave;ng. Dự b&aacute;o, c&aacute;c l&aacute; phiếu sẽ kh&oacute; tập trung. Danh hiệu cuối c&ugrave;ng cũng sẽ c&oacute; chủ nh&acirc;n nhưng cũng v&igrave; thế n&ecirc;n cầu thủ đoạt c&aacute;c danh hiệu cao nhất sẽ kh&oacute; nhận được số điểm tuyệt đối.<br />
<br />
Nh&igrave;n lại một năm vừa qua th&igrave; cũng c&oacute; v&agrave;i gương mặt đ&aacute;ng ch&uacute; &yacute;. Anh Đức chơi nổi bật khi đang dẫn đầu danh s&aacute;ch Vua ph&aacute; lưới ở V.League vơi 12 b&agrave;n thắng. Tuy nhi&ecirc;n, th&agrave;nh t&iacute;ch của CLB lại kh&ocirc;ng tương xứng, đặc biệt l&agrave; ở mặt trận&nbsp;<a href="http://bongdaplus.vn/bong-da-viet-nam/v-league.html">V.League</a>&nbsp;khi B.BD nằm ở nh&oacute;m cuối BXH. Điểm s&aacute;ng của đội b&oacute;ng miền Đ&ocirc;ng Nam Bộ l&agrave; v&agrave;o chung kết c&uacute;p QG. Ở s&acirc;n chơi n&agrave;y, Anh Đức cũng l&agrave; đầu t&agrave;u. Ở cấp độ ĐTQG, Anh Đức cũng đ&atilde; trở lại v&agrave; c&oacute; những đ&oacute;ng g&oacute;p nhất định.</p>

<p>&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/26b.jpg" style="height:287px; width:480px" /></p>

<p>&nbsp;</p>

<p>S&aacute;ng 22/11, BTC giải thưởng Quả b&oacute;ng v&agrave;ng Việt Nam do b&aacute;o S&agrave;i G&ograve;n Giải Ph&oacute;ng tổ chức đ&atilde; tiến h&agrave;nh buổi họp b&aacute;o, th&ocirc;ng tin về giải thưởng của năm 2017. Theo danh s&aacute;ch đề cử, HAGL v&agrave; H&agrave; Nội c&oacute; nhiều cầu thủ nhất với 3 gương mặt. Cầu thủ đang kho&aacute;c &aacute;o CLB Gangwon của H&agrave;n Quốc l&agrave; Xu&acirc;n Trường cũng c&oacute; t&ecirc;n.<br />
<br />
Phải thừa nhận rằng, kh&ocirc;ng c&oacute; nhiều cầu thủ c&oacute; cống hiến nổi trội cả ở&nbsp;<a href="http://bongdaplus.vn/bong-da-viet-nam/dtqg.html">ĐT Việt Nam</a>&nbsp;lẫn CLB như một trong những ti&ecirc;u ch&iacute; để bầu chọn giải thưởng Quả b&oacute;ng v&agrave;ng. Dự b&aacute;o, c&aacute;c l&aacute; phiếu sẽ kh&oacute; tập trung. Danh hiệu cuối c&ugrave;ng cũng sẽ c&oacute; chủ nh&acirc;n nhưng cũng v&igrave; thế n&ecirc;n cầu thủ đoạt c&aacute;c danh hiệu cao nhất sẽ kh&oacute; nhận được số điểm tuyệt đối.<br />
<br />
Nh&igrave;n lại một năm vừa qua th&igrave; cũng c&oacute; v&agrave;i gương mặt đ&aacute;ng ch&uacute; &yacute;. Anh Đức chơi nổi bật khi đang dẫn đầu danh s&aacute;ch Vua ph&aacute; lưới ở V.League vơi 12 b&agrave;n thắng. Tuy nhi&ecirc;n, th&agrave;nh t&iacute;ch của CLB lại kh&ocirc;ng tương xứng, đặc biệt l&agrave; ở mặt trận&nbsp;<a href="http://bongdaplus.vn/bong-da-viet-nam/v-league.html">V.League</a>&nbsp;khi B.BD nằm ở nh&oacute;m cuối BXH. Điểm s&aacute;ng của đội b&oacute;ng miền Đ&ocirc;ng Nam Bộ l&agrave; v&agrave;o chung kết c&uacute;p QG. Ở s&acirc;n chơi n&agrave;y, Anh Đức cũng l&agrave; đầu t&agrave;u. Ở cấp độ ĐTQG, Anh Đức cũng đ&atilde; trở lại v&agrave; c&oacute; những đ&oacute;ng g&oacute;p nhất định.</p>
', 1, 1, 0, N'HAGL', N'Quả bóng vàng Việt Nam 2017: HAGL sáng ngang Hà Nội về số lượng đề cử', CAST(0x0000A8340100EF70 AS DateTime), N'ad', CAST(0x0000A83E00057419 AS DateTime), N'ad', N'HAGL', N'Theo danh sách đề cử được BTC giải thưởng Quả bóng vàng Việt Nam 2017 tổng hợp từ việc thăm dò các phóng viên, nhà chuyên môn, hai đội bóng HAGL và Hà Nội có nhiều đề cử nhất với 3 gương mặt mỗi đội ở hạng mục cao nhất.', 1, 0)
INSERT [dbo].[content] ([id], [name], [meta_title], [description_content], [url_image], [detail], [content_category_id], [view_count], [share_count], [tag], [seo_title], [created_at], [created_by], [modified_at], [modified_by], [meta_keyword], [meta_description], [is_active], [is_top_hot]) VALUES (37, N'HLV Park Hang-seo sẽ triệu tập 35 cầu thủ chuẩn bị cho VCK U23 châu Á 2018', N'hlv-park-hang-seo-se-trieu-tap-35-cau-thu-chuan-bi-cho-vck-u23-chau-a-2018', N'Để chuẩn bị cho VCK U23 châu Á diễn ra từ 9-27/1/2018 tại Trung Quốc, HLV Park Hang-seo đã triệu tập 35 cầu thủ lên ĐT U23 Việt Nam và dự kiến toàn đội sẽ hội quân vào ngày 1/12 tới đây.', N'/Data/images/content/vleague/27a.jpg', N'<p><img alt="" src="/Data/images/content/vleague/27a.jpg" style="height:270px; width:480px" /></p>

<p>&nbsp;</p>

<p>Ng&agrave;y 20/11 vừa qua, HLV Park Hang-seo đ&atilde; c&oacute; buổi l&agrave;m việc với l&atilde;nh đạo LĐBĐ Việt Nam (VFF) v&agrave; Hội đồng HLV quốc gia xung quanh kế hoạch chuẩn bị tham dự VCK U23 ch&acirc;u &Aacute; 2018. Nh&agrave; cầm qu&acirc;n người H&agrave;n Quốc đề xuất U23 Việt Nam sẽ hội qu&acirc;n trở lại v&agrave;o ng&agrave;y 1/12 tới tại H&agrave; Nội với khoảng 35 cầu thủ được triệu tập. Trong đợt tập trung n&agrave;y, U23 Việt Nam sẽ gọi l&ecirc;n những cầu thủ nằm trong quy định độ tuổi tham dự VCK ở c&aacute;c đội tuyển U19, U20, U22, U23 cho đến ĐTQG.&nbsp;</p>

<p>&nbsp;</p>

<p>Đ&acirc;y c&oacute; lẽ l&agrave; lần đầu ti&ecirc;n trong lịch sử của b&oacute;ng đ&aacute; Việt Nam c&oacute; đến 35 cầu thủ được gọi. Lần gần đ&acirc;y nhất tại VCK U23 ch&acirc;u &Aacute; 2016 diễn ra ở Qatar, cựu HLV trưởng Toshiya Miura đ&atilde; gọi 30 cầu thủ, một con số m&agrave; l&uacute;c đ&oacute; nhiều người đ&atilde; rất ngạc nhi&ecirc;n. R&otilde; r&agrave;ng, &ocirc;ng Park c&ugrave;ng c&aacute;c cộng sự cũng như bộ phận tham mưu đ&atilde; c&oacute; sự t&iacute;nh to&aacute;n cũng như s&agrave;ng lọc kỹ c&agrave;ng để kh&ocirc;ng bỏ s&oacute;t bất kỳ t&agrave;i năng n&agrave;o nằm trong độ tuổi 23.&nbsp;</p>

<p>&nbsp;</p>

<p>Như đ&atilde; đề cập, tại VCK U23 ch&acirc;u &Aacute; 2018, l&aacute; thăm đ&atilde; đưa&nbsp;<a href="http://bongdaplus.vn/boc-tham-vck-u23-chau-a-2018-viet-nam-gap-lai-han-quoc-2000371710.html" target="_blank">U23 Việt Nam rơi v&agrave;o bảng &ldquo;tử thần&rdquo;</a>&nbsp;với Syria, Australia v&agrave; H&agrave;n Quốc. V&igrave; thế, VFF v&agrave; HLV Park đ&atilde; chuẩn bị những phương &aacute;n nhằm th&iacute;ch ứng hoặc tập l&agrave;m quen với việc phải đối đầu với c&aacute;c &ldquo;&ocirc;ng kẹ&rdquo; của b&oacute;ng đ&aacute; ch&acirc;u &Aacute;. Theo đ&oacute;,&nbsp;<a href="http://bongdaplus.vn/hlv-park-hang-seo-dung-ngay-thai-lan-o-tran-ra-mat-u23-viet-nam-1987891710.html" target="_blank">U23 Việt Nam sẽ tham dự giải giao hữu quốc tế M-150</a>&nbsp;tại Th&aacute;i Lan. Sau đ&oacute;, C&ocirc;ng Phượng v&agrave; c&aacute;c đồng đội sẽ thọ gi&aacute;o đội hạng 4 tại giải nh&agrave; nghề H&agrave;n Quốc (K.League Classic 2017) l&agrave; Ulsan Huyndai.</p>

<p>&nbsp;</p>

<p><img alt="" src="/Data/images/content/vleague/27b.jpg" style="height:331px; width:540px" /></p>

<p><em>HLV Park Hang-seo sẽ gọi 35 cầu thủ l&ecirc;n tập trung U23 Việt Nam - Ảnh: VFF</em></p>

<p>&nbsp;</p>

<p>Chưa dừng lại, trước khi l&ecirc;n đường sang Trung Quốc tập huấn, U23 Việt Nam sẽ c&oacute; cuộc so gi&agrave;y với một đối thủ c&oacute; tr&igrave;nh độ tương đương với U23 Australia. Ngo&agrave;i ra, VFF sẽ li&ecirc;n hệ để chốt địa điểm ở Trung Quốc nhằm gi&uacute;p&nbsp;<a href="http://bongdaplus.vn/park-hang-seo-tags.html" target="_blank">HLV Park Hang-seo</a>&nbsp;v&agrave; c&aacute;c học tr&ograve; th&iacute;ch nghi với điều kiện, thời tiết, s&acirc;n b&atilde;i, ăn uống... giống như C&ocirc;n Sơn, địa điểm diễn ra nơi thi đấu bảng D.</p>

<p>&nbsp;</p>

<p>Một trong những điều được quan t&acirc;m nhất, những cầu thủ n&agrave;o được triệu tập v&agrave;o danh s&aacute;ch 35 người?. Gần như chắc chắn, bộ khung của U23 Việt Nam vẫn sẽ l&agrave; những người từng tham dự v&ograve;ng loại U23 ch&acirc;u &Aacute; cũng như SEA Games 2017. C&oacute; thể kể ra đ&acirc;y thủ m&ocirc;n B&ugrave;i Tiến Dũng (FLC.TH), Ph&iacute; Minh Long (H&agrave; Nội FC); c&aacute;c hậu vệ B&ugrave;i Tiến Dũng (Viettel), Trần Đ&igrave;nh Trọng (S&agrave;i G&ograve;n FC), Ho&agrave;ng Văn Kh&aacute;nh (SLNA), Vũ Văn Thanh, A Ho&agrave;ng (HAGL), Đo&agrave;n Văn Hậu (H&agrave; Nội FC), Hồ Tấn T&agrave;i (B.BD)...</p>

<p>&nbsp;</p>

<p>C&aacute;c tiền vệ Nguyễn Tuấn Anh, Trần Minh Vương, Nguyễn Phong Hồng Duy, Trần Hữu Đ&ocirc;ng Triều, Nguyễn Văn To&agrave;n (HAGL), Lương Xu&acirc;n Trường (Gangwon FC), Đỗ Duy Mạnh, Phạm Đức Huy, Nguyễn Quang Hải (H&agrave; Nội FC), L&acirc;m Ti Ph&ocirc;ng (Sanna.KH), B&ugrave;i Tiến Dụng (SHB.ĐN)... v&agrave; c&aacute;c tiền đạo tiền đạo: Nguyễn C&ocirc;ng Phượng (HAGL), H&agrave; Đức Chinh (SHB.ĐN), Hồ Tuấn T&agrave;i (SLNA), L&ecirc; Thanh B&igrave;nh (FLC.TH)...&nbsp;</p>

<p>&nbsp;</p>

<p>Ngo&agrave;i những c&aacute;i t&ecirc;n n&oacute;i tr&ecirc;n, nhiều khả năng U23 Việt Nam sẽ c&oacute; những nh&acirc;n tố mới như tiền vệ Ch&acirc;u Ngọc Quang, hậu L&ecirc; Văn Sơn (HAGL) v&agrave; một số cầu thủ nổi bật vừa kho&aacute;c &aacute;o U19 Việt Nam gi&agrave;nh quyền lọt v&agrave;o VCK ch&acirc;u &Aacute; 2018 như tiền vệ L&ecirc; Văn Xu&acirc;n (PVF) hay Trương Tiến Anh (Viettel)...&nbsp;</p>

<p>&nbsp;</p>

<p>T&oacute;m lại, với một lứa cầu thủ được trui r&egrave;n qua nhiều giải đấu ở cấp độ ch&acirc;u lục v&agrave; cả thế giới, HLV Park Hang-seo đang c&oacute; nhiều sự lựa chọn ở U23 Việt Nam. Vấn đề chỉ c&ograve;n chờ &ldquo;chất x&aacute;m&rdquo; của nh&agrave; cầm qu&acirc;n người H&agrave;n Quốc.</p>
', 1, 12, 3, N'VCK U23, Park Hang-Seo', N'HLV Park Hang-seo sẽ triệu tập 35 cầu thủ chuẩn bị cho VCK U23 châu Á 2018', CAST(0x0000A8340102B4DB AS DateTime), N'ad', CAST(0x0000A842001872D7 AS DateTime), N'ad', N'VCK U23', N'Để chuẩn bị cho VCK U23 châu Á diễn ra từ 9-27/1/2018 tại Trung Quốc, HLV Park Hang-seo đã triệu tập 35 cầu thủ lên ĐT U23 Việt Nam và dự kiến toàn đội sẽ hội quân vào ngày 1/12 tới đây.', 1, 0)
SET IDENTITY_INSERT [dbo].[content] OFF
/****** Object:  Table [dbo].[user_log]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_log](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name_log] [varchar](50) NOT NULL,
	[password_log] [varchar](32) NOT NULL,
	[name_person] [nvarchar](50) NULL,
	[address_current] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[phone] [varchar](20) NULL,
	[user_group_id] [varchar](20) NULL,
	[created_at] [datetime] NULL,
	[created_by] [varchar](50) NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [varchar](50) NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [pk_user_log_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[user_log] ON
INSERT [dbo].[user_log] ([id], [name_log], [password_log], [name_person], [address_current], [email], [phone], [user_group_id], [created_at], [created_by], [modified_at], [modified_by], [is_active]) VALUES (6, N'ad', N'202cb962ac59075b964b07152d234b70', N'Bùi Văn Sang', N'TPHCM', N'admin@gmail.com', N'011133344456', N'ADMIN', CAST(0x0000A828014559ED AS DateTime), NULL, CAST(0x0000A845002FD522 AS DateTime), N'ad', 1)
INSERT [dbo].[user_log] ([id], [name_log], [password_log], [name_person], [address_current], [email], [phone], [user_group_id], [created_at], [created_by], [modified_at], [modified_by], [is_active]) VALUES (11, N'ad2342', N'202cb962ac59075b964b07152d234b70', N'Phạm Đức Hòa', N'Ly thường kiệt', N'duchoa@gmail.com', N'01112223334', N'ADMIN', CAST(0x0000A8410033759E AS DateTime), N'ad', CAST(0x0000A84500302E8E AS DateTime), N'ad', 1)
INSERT [dbo].[user_log] ([id], [name_log], [password_log], [name_person], [address_current], [email], [phone], [user_group_id], [created_at], [created_by], [modified_at], [modified_by], [is_active]) VALUES (16, N'baohan', N'202cb962ac59075b964b07152d234b70', N'Bảo Hân', N'Trường Chinh', N'baohan@gmail.com', N'04445556667', N'MOD', CAST(0x0000A84500305F80 AS DateTime), N'ad', CAST(0x0000A84500305F80 AS DateTime), NULL, 1)
INSERT [dbo].[user_log] ([id], [name_log], [password_log], [name_person], [address_current], [email], [phone], [user_group_id], [created_at], [created_by], [modified_at], [modified_by], [is_active]) VALUES (17, N'bichdao', N'202cb962ac59075b964b07152d234b70', N'Bích Đào', N'Lê Văn Sỹ', N'bichdao@gmail.com', N'06667778889', N'MEM', CAST(0x0000A84500308E88 AS DateTime), N'ad', CAST(0x0000A84500308E88 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[user_log] OFF
/****** Object:  Table [dbo].[user_credential]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_credential](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[idx_user_group_id] [varchar](20) NOT NULL,
	[idx_user_role_id] [varchar](50) NULL,
 CONSTRAINT [pk_user_role_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [idx_user_role_id] UNIQUE NONCLUSTERED 
(
	[idx_user_group_id] ASC,
	[idx_user_role_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[user_credential] ON
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (29, N'ADMIN', N'ADD_AD')
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (31, N'ADMIN', N'ADD_CONTENT_TAG')
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (74, N'ADMIN', N'ADD_MENU')
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (73, N'ADMIN', N'ADD_MENU_TYPE')
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (71, N'ADMIN', N'ADD_SYSCONFIG')
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (72, N'ADMIN', N'ADD_TAG')
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (75, N'ADMIN', N'ADD_USER_CREDENTIAL')
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (12, N'MEM', N'ADD_AD')
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (14, N'MEM', N'ADD_AD_POSITION')
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (13, N'MEM', N'ADD_CONTENT')
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (26, N'MEM', N'ADD_INFO')
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (19, N'MEM', N'ADD_MENU')
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (27, N'MEM', N'ADD_MENU_TYPE')
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (24, N'MEM', N'EDIT_CONTENT')
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (25, N'MEM', N'EDIT_USER_GROUP')
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (28, N'MEM', N'VIEW_CONTENT')
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (20, N'MEM', N'VIEW_CONTENT_CATE')
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (23, N'MEM', N'VIEW_TAG')
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (21, N'MEM', N'VIEW_USER_CREDENTIAL')
INSERT [dbo].[user_credential] ([id], [idx_user_group_id], [idx_user_role_id]) VALUES (22, N'MEM', N'VIEW_USER_ROLE')
SET IDENTITY_INSERT [dbo].[user_credential] OFF
/****** Object:  Table [dbo].[season_round]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[season_round](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idx_season_id] [varchar](20) NULL,
	[idx_round_id] [varchar](20) NULL,
 CONSTRAINT [pk_seasonRound_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [idx_season_round_id] UNIQUE NONCLUSTERED 
(
	[idx_season_id] ASC,
	[idx_round_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[season_round] ON
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (69, N'VLEAGUE_17', N'VLEAGUE_ROUND1')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (78, N'VLEAGUE_17', N'VLEAGUE_ROUND10')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (79, N'VLEAGUE_17', N'VLEAGUE_ROUND11')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (80, N'VLEAGUE_17', N'VLEAGUE_ROUND12')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (81, N'VLEAGUE_17', N'VLEAGUE_ROUND13')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (82, N'VLEAGUE_17', N'VLEAGUE_ROUND14')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (83, N'VLEAGUE_17', N'VLEAGUE_ROUND15')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (84, N'VLEAGUE_17', N'VLEAGUE_ROUND16')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (85, N'VLEAGUE_17', N'VLEAGUE_ROUND17')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (86, N'VLEAGUE_17', N'VLEAGUE_ROUND18')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (87, N'VLEAGUE_17', N'VLEAGUE_ROUND19')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (70, N'VLEAGUE_17', N'VLEAGUE_ROUND2')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (88, N'VLEAGUE_17', N'VLEAGUE_ROUND20')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (89, N'VLEAGUE_17', N'VLEAGUE_ROUND21')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (90, N'VLEAGUE_17', N'VLEAGUE_ROUND22')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (91, N'VLEAGUE_17', N'VLEAGUE_ROUND23')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (92, N'VLEAGUE_17', N'VLEAGUE_ROUND24')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (93, N'VLEAGUE_17', N'VLEAGUE_ROUND25')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (94, N'VLEAGUE_17', N'VLEAGUE_ROUND26')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (71, N'VLEAGUE_17', N'VLEAGUE_ROUND3')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (72, N'VLEAGUE_17', N'VLEAGUE_ROUND4')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (73, N'VLEAGUE_17', N'VLEAGUE_ROUND5')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (74, N'VLEAGUE_17', N'VLEAGUE_ROUND6')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (75, N'VLEAGUE_17', N'VLEAGUE_ROUND7')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (76, N'VLEAGUE_17', N'VLEAGUE_ROUND8')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (77, N'VLEAGUE_17', N'VLEAGUE_ROUND9')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (95, N'VLEAGUE_18', N'VLEAGUE_ROUND1')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (104, N'VLEAGUE_18', N'VLEAGUE_ROUND10')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (106, N'VLEAGUE_18', N'VLEAGUE_ROUND11')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (96, N'VLEAGUE_18', N'VLEAGUE_ROUND2')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (97, N'VLEAGUE_18', N'VLEAGUE_ROUND3')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (98, N'VLEAGUE_18', N'VLEAGUE_ROUND4')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (99, N'VLEAGUE_18', N'VLEAGUE_ROUND5')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (100, N'VLEAGUE_18', N'VLEAGUE_ROUND6')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (101, N'VLEAGUE_18', N'VLEAGUE_ROUND7')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (102, N'VLEAGUE_18', N'VLEAGUE_ROUND8')
INSERT [dbo].[season_round] ([id], [idx_season_id], [idx_round_id]) VALUES (103, N'VLEAGUE_18', N'VLEAGUE_ROUND9')
SET IDENTITY_INSERT [dbo].[season_round] OFF
/****** Object:  Table [dbo].[season_club]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[season_club](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idx_season_id] [varchar](20) NULL,
	[idx_fooballClub_id] [varchar](20) NULL,
 CONSTRAINT [pk_seasonClub_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [idx_season_footballClub_id] UNIQUE NONCLUSTERED 
(
	[idx_season_id] ASC,
	[idx_fooballClub_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[season_club] ON
INSERT [dbo].[season_club] ([id], [idx_season_id], [idx_fooballClub_id]) VALUES (32, N'VLEAGUE_17', N'BBD')
INSERT [dbo].[season_club] ([id], [idx_season_id], [idx_fooballClub_id]) VALUES (33, N'VLEAGUE_17', N'CTH')
INSERT [dbo].[season_club] ([id], [idx_season_id], [idx_fooballClub_id]) VALUES (34, N'VLEAGUE_17', N'DLA')
INSERT [dbo].[season_club] ([id], [idx_season_id], [idx_fooballClub_id]) VALUES (9, N'VLEAGUE_17', N'HCM')
INSERT [dbo].[season_club] ([id], [idx_season_id], [idx_fooballClub_id]) VALUES (31, N'VLEAGUE_17', N'HGL')
INSERT [dbo].[season_club] ([id], [idx_season_id], [idx_fooballClub_id]) VALUES (10, N'VLEAGUE_17', N'KKH')
INSERT [dbo].[season_club] ([id], [idx_season_id], [idx_fooballClub_id]) VALUES (27, N'VLEAGUE_17', N'QNA')
INSERT [dbo].[season_club] ([id], [idx_season_id], [idx_fooballClub_id]) VALUES (24, N'VLEAGUE_17', N'SDN')
INSERT [dbo].[season_club] ([id], [idx_season_id], [idx_fooballClub_id]) VALUES (30, N'VLEAGUE_17', N'SNA')
INSERT [dbo].[season_club] ([id], [idx_season_id], [idx_fooballClub_id]) VALUES (26, N'VLEAGUE_17', N'THH')
INSERT [dbo].[season_club] ([id], [idx_season_id], [idx_fooballClub_id]) VALUES (28, N'VLEAGUE_17', N'TQN')
INSERT [dbo].[season_club] ([id], [idx_season_id], [idx_fooballClub_id]) VALUES (25, N'VLEAGUE_17', N'TT')
INSERT [dbo].[season_club] ([id], [idx_season_id], [idx_fooballClub_id]) VALUES (29, N'VLEAGUE_17', N'VTEL')
INSERT [dbo].[season_club] ([id], [idx_season_id], [idx_fooballClub_id]) VALUES (22, N'VLEAGUE_17', N'XHP')
INSERT [dbo].[season_club] ([id], [idx_season_id], [idx_fooballClub_id]) VALUES (19, N'VLEAGUE_18', N'CTH')
INSERT [dbo].[season_club] ([id], [idx_season_id], [idx_fooballClub_id]) VALUES (35, N'VLEAGUE_18', N'SDN')
INSERT [dbo].[season_club] ([id], [idx_season_id], [idx_fooballClub_id]) VALUES (16, N'VLEAGUE_18', N'TDT')
INSERT [dbo].[season_club] ([id], [idx_season_id], [idx_fooballClub_id]) VALUES (20, N'VLEAGUE_18', N'TQN')
INSERT [dbo].[season_club] ([id], [idx_season_id], [idx_fooballClub_id]) VALUES (12, N'VLEAGUE_18', N'XHP')
SET IDENTITY_INSERT [dbo].[season_club] OFF
/****** Object:  Table [dbo].[content_tag]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[content_tag](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[idx_content_id] [bigint] NULL,
	[idx_tag_id] [varchar](50) NULL,
 CONSTRAINT [pk_content_tag_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [idx_content_tag_id] UNIQUE NONCLUSTERED 
(
	[idx_content_id] ASC,
	[idx_tag_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[content_tag] ON
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (45, 14, N'bau-hien')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (55, 15, N'shb-da-nang')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (53, 16, N'quang-nam')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (54, 17, N'quang-nam')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (56, 18, N'clb-tp-hcm')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (58, 18, N'cong-vinh')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (57, 18, N'quang-ninh')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (52, 19, N'van-quyet')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (51, 20, N'hai-phong')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (50, 21, N'miura')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (48, 22, N'vong-cuoi')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (42, 23, N'vdqg-nu')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (39, 24, N'van-quyet')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (38, 25, N'ngay-20-11')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (34, 26, N'fc')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (32, 27, N'u20')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (41, 28, N'v-league')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (31, 29, N'phi-son')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (49, 30, N'v-league')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (29, 31, N'v-league')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (27, 33, N'shb')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (26, 34, N'vff')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (25, 35, N'doi-tuyen-nu-vn')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (33, 36, N'hagl')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (61, 37, N'park-hang-seo')
INSERT [dbo].[content_tag] ([id], [idx_content_id], [idx_tag_id]) VALUES (60, 37, N'vck-u23')
SET IDENTITY_INSERT [dbo].[content_tag] OFF
/****** Object:  Table [dbo].[rank]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rank](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[footballClub_id] [varchar](20) NULL,
	[win_match] [int] NULL,
	[win_match_guest] [int] NULL,
	[draw_match] [int] NULL,
	[lose_match] [int] NULL,
	[win_score] [int] NULL,
	[lose_score] [int] NULL,
	[season_id] [varchar](20) NULL,
 CONSTRAINT [pk_rank_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[rank] ON
INSERT [dbo].[rank] ([id], [footballClub_id], [win_match], [win_match_guest], [draw_match], [lose_match], [win_score], [lose_score], [season_id]) VALUES (8, N'CTH', 0, 0, 0, 1, 2, 3, N'VLEAGUE_18')
INSERT [dbo].[rank] ([id], [footballClub_id], [win_match], [win_match_guest], [draw_match], [lose_match], [win_score], [lose_score], [season_id]) VALUES (9, N'TQN', 1, 1, 0, 0, 3, 2, N'VLEAGUE_18')
INSERT [dbo].[rank] ([id], [footballClub_id], [win_match], [win_match_guest], [draw_match], [lose_match], [win_score], [lose_score], [season_id]) VALUES (10, N'TDT', 1, 1, 0, 0, 4, 2, N'VLEAGUE_18')
INSERT [dbo].[rank] ([id], [footballClub_id], [win_match], [win_match_guest], [draw_match], [lose_match], [win_score], [lose_score], [season_id]) VALUES (11, N'XHP', 0, 0, 0, 1, 2, 4, N'VLEAGUE_18')
INSERT [dbo].[rank] ([id], [footballClub_id], [win_match], [win_match_guest], [draw_match], [lose_match], [win_score], [lose_score], [season_id]) VALUES (18, N'XHP', 11, 4, 5, 10, 35, 33, N'VLEAGUE_17')
INSERT [dbo].[rank] ([id], [footballClub_id], [win_match], [win_match_guest], [draw_match], [lose_match], [win_score], [lose_score], [season_id]) VALUES (19, N'HCM', 6, 3, 7, 13, 29, 46, N'VLEAGUE_17')
INSERT [dbo].[rank] ([id], [footballClub_id], [win_match], [win_match_guest], [draw_match], [lose_match], [win_score], [lose_score], [season_id]) VALUES (20, N'SDN', 8, 3, 9, 9, 36, 34, N'VLEAGUE_17')
INSERT [dbo].[rank] ([id], [footballClub_id], [win_match], [win_match_guest], [draw_match], [lose_match], [win_score], [lose_score], [season_id]) VALUES (21, N'TT', 12, 3, 10, 4, 54, 31, N'VLEAGUE_17')
INSERT [dbo].[rank] ([id], [footballClub_id], [win_match], [win_match_guest], [draw_match], [lose_match], [win_score], [lose_score], [season_id]) VALUES (22, N'THH', 13, 5, 9, 4, 44, 29, N'VLEAGUE_17')
INSERT [dbo].[rank] ([id], [footballClub_id], [win_match], [win_match_guest], [draw_match], [lose_match], [win_score], [lose_score], [season_id]) VALUES (23, N'QNA', 13, 8, 9, 4, 46, 32, N'VLEAGUE_17')
INSERT [dbo].[rank] ([id], [footballClub_id], [win_match], [win_match_guest], [draw_match], [lose_match], [win_score], [lose_score], [season_id]) VALUES (24, N'TQN', 12, 4, 7, 7, 42, 34, N'VLEAGUE_17')
INSERT [dbo].[rank] ([id], [footballClub_id], [win_match], [win_match_guest], [draw_match], [lose_match], [win_score], [lose_score], [season_id]) VALUES (25, N'VTEL', 11, 4, 10, 5, 40, 29, N'VLEAGUE_17')
INSERT [dbo].[rank] ([id], [footballClub_id], [win_match], [win_match_guest], [draw_match], [lose_match], [win_score], [lose_score], [season_id]) VALUES (26, N'SNA', 8, 4, 10, 8, 36, 36, N'VLEAGUE_17')
INSERT [dbo].[rank] ([id], [footballClub_id], [win_match], [win_match_guest], [draw_match], [lose_match], [win_score], [lose_score], [season_id]) VALUES (27, N'HGL', 9, 4, 3, 14, 34, 43, N'VLEAGUE_17')
INSERT [dbo].[rank] ([id], [footballClub_id], [win_match], [win_match_guest], [draw_match], [lose_match], [win_score], [lose_score], [season_id]) VALUES (28, N'BBD', 6, 3, 12, 8, 34, 30, N'VLEAGUE_17')
INSERT [dbo].[rank] ([id], [footballClub_id], [win_match], [win_match_guest], [draw_match], [lose_match], [win_score], [lose_score], [season_id]) VALUES (29, N'CTH', 5, 1, 7, 14, 32, 50, N'VLEAGUE_17')
INSERT [dbo].[rank] ([id], [footballClub_id], [win_match], [win_match_guest], [draw_match], [lose_match], [win_score], [lose_score], [season_id]) VALUES (30, N'DLA', 2, 2, 4, 20, 30, 66, N'VLEAGUE_17')
INSERT [dbo].[rank] ([id], [footballClub_id], [win_match], [win_match_guest], [draw_match], [lose_match], [win_score], [lose_score], [season_id]) VALUES (31, N'KKH', 11, 6, 8, 7, 38, 37, N'VLEAGUE_17')
INSERT [dbo].[rank] ([id], [footballClub_id], [win_match], [win_match_guest], [draw_match], [lose_match], [win_score], [lose_score], [season_id]) VALUES (32, N'SDN', 0, 0, 0, 0, 0, 0, N'VLEAGUE_18')
SET IDENTITY_INSERT [dbo].[rank] OFF
/****** Object:  Table [dbo].[match]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[match](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date_at] [date] NULL,
	[time_at] [time](7) NULL,
	[pitch] [nvarchar](50) NULL,
	[home_club] [varchar](20) NULL,
	[guest_club] [varchar](20) NULL,
	[score] [varchar](5) NULL,
	[round_id] [varchar](20) NULL,
	[season_id] [varchar](20) NULL,
 CONSTRAINT [pk_match_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[match] ON
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (19, CAST(0x873D0B00 AS Date), CAST(0x0700B617AB0E0000 AS Time), NULL, N'CTH', N'TQN', N'2,3', N'VLEAGUE_ROUND1', N'VLEAGUE_18')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (21, CAST(0x4F3C0B00 AS Date), CAST(0x070046DB308F0000 AS Time), NULL, N'SDN', N'HGL', N'1,0', N'VLEAGUE_ROUND1', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (22, CAST(0x4F3C0B00 AS Date), CAST(0x070046DB308F0000 AS Time), NULL, N'CTH', N'DLA', N'1,2', N'VLEAGUE_ROUND1', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (23, CAST(0x4F3C0B00 AS Date), CAST(0x0700D88D14940000 AS Time), NULL, N'TT', N'TQN', N'3,2', N'VLEAGUE_ROUND1', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (24, CAST(0x503C0B00 AS Date), CAST(0x0700DE16CF860000 AS Time), NULL, N'THH', N'SNA', N'2,0', N'VLEAGUE_ROUND1', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (25, CAST(0x503C0B00 AS Date), CAST(0x070046DB308F0000 AS Time), NULL, N'XHP', N'VTEL', N'0,1', N'VLEAGUE_ROUND1', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (26, CAST(0x503C0B00 AS Date), CAST(0x07007ABD61930000 AS Time), NULL, N'HCM', N'QNA', N'1,1', N'VLEAGUE_ROUND1', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (27, CAST(0x503C0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'BBD', N'KKH', N'0,1', N'VLEAGUE_ROUND1', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (28, CAST(0x553C0B00 AS Date), CAST(0x070080461C860000 AS Time), NULL, N'TQN', N'HCM', N'2,0', N'VLEAGUE_ROUND2', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (29, CAST(0x553C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'HGL', N'XHP', N'1,2', N'VLEAGUE_ROUND2', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (30, CAST(0x553C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'QNA', N'TT', N'2,1', N'VLEAGUE_ROUND2', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (31, CAST(0x553C0B00 AS Date), CAST(0x07007ABD61930000 AS Time), NULL, N'DLA', N'BBD', N'1,1', N'VLEAGUE_ROUND2', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (32, CAST(0x563C0B00 AS Date), CAST(0x0700B4284D8A0000 AS Time), NULL, N'SNA', N'CTH', N'1,1', N'VLEAGUE_ROUND2', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (33, CAST(0x563C0B00 AS Date), CAST(0x070046DB308F0000 AS Time), NULL, N'KKH', N'THH', N'0,2', N'VLEAGUE_ROUND2', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (34, CAST(0x563C0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'VTEL', N'SDN', N'2,1', N'VLEAGUE_ROUND2', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (35, CAST(0x5A3C0B00 AS Date), CAST(0x070080461C860000 AS Time), NULL, N'THH', N'DLA', N'2,1', N'VLEAGUE_ROUND3', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (36, CAST(0x5A3C0B00 AS Date), CAST(0x070012F9FF8A0000 AS Time), NULL, N'SNA', N'KKH', N'2,2', N'VLEAGUE_ROUND3', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (37, CAST(0x5A3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'CTH', N'BBD', N'1,5', N'VLEAGUE_ROUND3', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (38, CAST(0x5A3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'XHP', N'TQN', N'2,0', N'VLEAGUE_ROUND3', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (39, CAST(0x5A3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'QNA', N'SDN', N'1,1', N'VLEAGUE_ROUND3', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (40, CAST(0x5A3C0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'TT', N'HGL', N'3,0', N'VLEAGUE_ROUND3', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (41, CAST(0x5A3C0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'VTEL', N'HCM', N'0,1', N'VLEAGUE_ROUND3', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (42, CAST(0x5E3C0B00 AS Date), CAST(0x070012F9FF8A0000 AS Time), NULL, N'DLA', N'SNA', N'1,2', N'VLEAGUE_ROUND4', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (43, CAST(0x5E3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'TQN', N'QNA', N'1,3', N'VLEAGUE_ROUND4', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (44, CAST(0x5E3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'SDN', N'XHP', N'2,0', N'VLEAGUE_ROUND4', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (45, CAST(0x5E3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'HGL', N'VTEL', N'1,1', N'VLEAGUE_ROUND4', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (46, CAST(0x5E3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'KKH', N'CTH', N'2,2', N'VLEAGUE_ROUND4', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (47, CAST(0x5E3C0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'HCM', N'TT', N'1,3', N'VLEAGUE_ROUND4', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (48, CAST(0x5E3C0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'BBD', N'THH', N'2,2', N'VLEAGUE_ROUND4', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (49, CAST(0x723C0B00 AS Date), CAST(0x0700DE16CF860000 AS Time), NULL, N'THH', N'HCM', N'1,0', N'VLEAGUE_ROUND5', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (50, CAST(0x723C0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'DLA', N'XHP', N'1,2', N'VLEAGUE_ROUND5', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (51, CAST(0x723C0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'TT', N'SDN', N'1,1', N'VLEAGUE_ROUND5', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (52, CAST(0x723C0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'VTEL', N'BBD', N'1,1', N'VLEAGUE_ROUND5', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (53, CAST(0x733C0B00 AS Date), CAST(0x0700B4284D8A0000 AS Time), NULL, N'SNA', N'QNA', N'2,4', N'VLEAGUE_ROUND5', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (54, CAST(0x733C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'KKH', N'TQN', N'0,3', N'VLEAGUE_ROUND5', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (55, CAST(0x733C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'HGL', N'CTH', N'3,0', N'VLEAGUE_ROUND5', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (56, CAST(0x773C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'XHP', N'TT', N'1,1', N'VLEAGUE_ROUND6', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (57, CAST(0x793C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'CTH', N'VTEL', N'4,2', N'VLEAGUE_ROUND6', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (59, CAST(0x793C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'QNA', N'KKH', N'2,2', N'VLEAGUE_ROUND6', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (60, CAST(0x7A3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'TQN', N'SNA', N'2,1', N'VLEAGUE_ROUND6', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (61, CAST(0x7A3C0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'HCM', N'DLA', N'5,2', N'VLEAGUE_ROUND6', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (62, CAST(0x7A3C0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'BBD', N'HGL', N'0,1', N'VLEAGUE_ROUND6', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (63, CAST(0x7F3C0B00 AS Date), CAST(0x070080461C860000 AS Time), NULL, N'KKH', N'XHP', N'2,1', N'VLEAGUE_ROUND7', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (64, CAST(0x803C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'QNA', N'THH', N'1,1', N'VLEAGUE_ROUND7', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (65, CAST(0x803C0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'HCM', N'CTH', N'1,0', N'VLEAGUE_ROUND7', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (66, CAST(0x803C0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'DLA', N'HGL', N'0,3', N'VLEAGUE_ROUND7', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (67, CAST(0x813C0B00 AS Date), CAST(0x0700B4284D8A0000 AS Time), NULL, N'SNA', N'SDN', N'2,1', N'VLEAGUE_ROUND7', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (68, CAST(0x813C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'TQN', N'VTEL', N'3,0', N'VLEAGUE_ROUND7', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (69, CAST(0x813C0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'TT', N'BBD', N'0,0', N'VLEAGUE_ROUND7', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (70, CAST(0x853C0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'VTEL', N'TT', N'0,0', N'VLEAGUE_ROUND8', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (71, CAST(0x863C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'SDN', N'TQN', N'2,0', N'VLEAGUE_ROUND8', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (72, CAST(0x873C0B00 AS Date), CAST(0x070080461C860000 AS Time), NULL, N'THH', N'CTH', N'1,0', N'VLEAGUE_ROUND8', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (73, CAST(0x873C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'HGL', N'HCM', N'0,1', N'VLEAGUE_ROUND8', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (74, CAST(0x873C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'KKH', N'DLA', N'1,0', N'VLEAGUE_ROUND8', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (75, CAST(0x883C0B00 AS Date), CAST(0x0700B4284D8A0000 AS Time), NULL, N'SNA', N'BBD', N'1,1', N'VLEAGUE_ROUND8', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (76, CAST(0x883C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'XHP', N'QNA', N'2,0', N'VLEAGUE_ROUND8', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (77, CAST(0x8D3C0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'BBD', N'QNA', N'0,1', N'VLEAGUE_ROUND9', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (78, CAST(0x8E3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'SDN', N'HCM', N'3,3', N'VLEAGUE_ROUND9', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (79, CAST(0x8E3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'HGL', N'KKH', N'0,2', N'VLEAGUE_ROUND9', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (80, CAST(0x8F3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'XHP', N'THH', N'0,0', N'VLEAGUE_ROUND9', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (81, CAST(0x8F3C0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'VTEL', N'SNA', N'3,1', N'VLEAGUE_ROUND9', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (82, CAST(0x9A3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'CTH', N'TQN', N'1,1', N'VLEAGUE_ROUND9', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (83, CAST(0x9A3C0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'DLA', N'TT', N'1,5', N'VLEAGUE_ROUND9', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (84, CAST(0x943C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'QNA', N'CTH', N'2,1', N'VLEAGUE_ROUND10', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (85, CAST(0x953C0B00 AS Date), CAST(0x0700B4284D8A0000 AS Time), NULL, N'SNA', N'HGL', N'2,0', N'VLEAGUE_ROUND10', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (86, CAST(0x953C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'KKH', N'VTEL', N'0,0', N'VLEAGUE_ROUND10', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (87, CAST(0x953C0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'HCM', N'XHP', N'0,1', N'VLEAGUE_ROUND10', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (88, CAST(0x963C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'TQN', N'BBD', N'2,0', N'VLEAGUE_ROUND10', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (89, CAST(0x963C0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'DLA', N'SDN', N'1,2', N'VLEAGUE_ROUND10', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (90, CAST(0x963C0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'TT', N'THH', N'2,1', N'VLEAGUE_ROUND10', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (91, CAST(0xA33C0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'VTEL', N'DLA', N'4,0', N'VLEAGUE_ROUND11', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (92, CAST(0xA43C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'XHP', N'SNA', N'1,1', N'VLEAGUE_ROUND11', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (93, CAST(0x4A3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'SDN', N'KKH', N'0,1', N'VLEAGUE_ROUND11', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (94, CAST(0xA43C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'HGL', N'QNA', N'1,0', N'VLEAGUE_ROUND11', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (95, CAST(0xA43C0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'BBD', N'HCM', N'1,0', N'VLEAGUE_ROUND11', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (96, CAST(0xE83C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'CTH', N'TT', N'1,1', N'VLEAGUE_ROUND11', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (97, CAST(0xE83C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'THH', N'TQN', N'1,0', N'VLEAGUE_ROUND11', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (98, CAST(0xA93C0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'VTEL', N'QNA', N'2,1', N'VLEAGUE_ROUND12', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (99, CAST(0xAA3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'XHP', N'CTH', N'3,1', N'VLEAGUE_ROUND12', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (100, CAST(0xAA3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'HGL', N'THH', N'2,3', N'VLEAGUE_ROUND12', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (101, CAST(0xAA3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'SNA', N'HCM', N'1,1', N'VLEAGUE_ROUND12', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (102, CAST(0xAB3C0B00 AS Date), CAST(0x070080461C860000 AS Time), NULL, N'SDN', N'BBD', N'1,1', N'VLEAGUE_ROUND12', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (103, CAST(0xAB3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'KKH', N'TT', N'1,1', N'VLEAGUE_ROUND12', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (104, CAST(0xAB3C0B00 AS Date), CAST(0x0700B4284D8A0000 AS Time), NULL, N'DLA', N'TQN', N'1,2', N'VLEAGUE_ROUND12', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (105, CAST(0xB03C0B00 AS Date), CAST(0x070084B1109B0000 AS Time), NULL, N'TT', N'SNA', N'1,0', N'VLEAGUE_ROUND13', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (106, CAST(0xB13C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'THH', N'VTEL', N'1,1', N'VLEAGUE_ROUND13', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (107, CAST(0xB13C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'QNA', N'DLA', N'1,1', N'VLEAGUE_ROUND13', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (108, CAST(0xB13C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'CTH', N'SDN', N'2,2', N'VLEAGUE_ROUND13', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (109, CAST(0xB13C0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'TQN', N'HGL', N'2,2', N'VLEAGUE_ROUND13', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (110, CAST(0xB23C0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'HCM', N'KKH', N'1,4', N'VLEAGUE_ROUND13', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (111, CAST(0xB23C0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'BBD', N'XHP', N'2,2', N'VLEAGUE_ROUND13', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (112, CAST(0xF73C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'THH', N'SDN', N'3,2', N'VLEAGUE_ROUND14', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (113, CAST(0xF73C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'HGL', N'BBD', N'2,1', N'VLEAGUE_ROUND14', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (114, CAST(0xF33C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'KKH', N'QNA', N'0,3', N'VLEAGUE_ROUND14', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (115, CAST(0xF73C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'SNA', N'TQN', N'1,1', N'VLEAGUE_ROUND14', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (116, CAST(0xF73C0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'DLA', N'HCM', N'2,3', N'VLEAGUE_ROUND14', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (117, CAST(0xF73C0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'VTEL', N'CTH', N'2,1', N'VLEAGUE_ROUND14', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (118, CAST(0xF73C0B00 AS Date), CAST(0x070084B1109B0000 AS Time), NULL, N'TT', N'XHP', N'2,0', N'VLEAGUE_ROUND14', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (119, CAST(0xFB3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'CTH', N'HGL', N'3,0', N'VLEAGUE_ROUND15', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (120, CAST(0xFB3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'SDN', N'TT', N'2,2', N'VLEAGUE_ROUND15', N'VLEAGUE_17')
GO
print 'Processed 100 total records'
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (121, CAST(0xFB3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'XHP', N'DLA', N'3,2', N'VLEAGUE_ROUND15', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (122, CAST(0xFB3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'QNA', N'SNA', N'3,3', N'VLEAGUE_ROUND15', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (123, CAST(0xFB3C0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'HCM', N'THH', N'0,0', N'VLEAGUE_ROUND15', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (124, CAST(0xFB3C0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'BBD', N'VTEL', N'1,3', N'VLEAGUE_ROUND15', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (125, CAST(0xFB3C0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'TQN', N'KKH', N'2,1', N'VLEAGUE_ROUND15', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (126, CAST(0xFF3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'CTH', N'XHP', N'2,0', N'VLEAGUE_ROUND16', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (127, CAST(0xFF3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'THH', N'HGL', N'5,3', N'VLEAGUE_ROUND16', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (128, CAST(0xFF3C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'QNA', N'VTEL', N'1,1', N'VLEAGUE_ROUND16', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (129, CAST(0xFF3C0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'HCM', N'SNA', N'2,2', N'VLEAGUE_ROUND16', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (130, CAST(0xFF3C0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'BBD', N'SDN', N'3,4', N'VLEAGUE_ROUND16', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (131, CAST(0xFF3C0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'TQN', N'DLA', N'2,1', N'VLEAGUE_ROUND16', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (132, CAST(0xFF3C0B00 AS Date), CAST(0x070084B1109B0000 AS Time), NULL, N'TT', N'KKH', N'2,3', N'VLEAGUE_ROUND16', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (133, CAST(0x443D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'SDN', N'CTH', N'3,0', N'VLEAGUE_ROUND17', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (134, CAST(0x443D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'XHP', N'BBD', N'0,2', N'VLEAGUE_ROUND17', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (135, CAST(0x453D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'KKH', N'HCM', N'1,0', N'VLEAGUE_ROUND17', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (136, CAST(0x453D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'HGL', N'TQN', N'4,2', N'VLEAGUE_ROUND17', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (137, CAST(0x453D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'SNA', N'TT', N'1,2', N'VLEAGUE_ROUND17', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (138, CAST(0x453D0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'DLA', N'QNA', N'2,3', N'VLEAGUE_ROUND17', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (139, CAST(0x453D0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'VTEL', N'THH', N'2,0', N'VLEAGUE_ROUND17', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (140, CAST(0x4B3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'CTH', N'HCM', N'2,1', N'VLEAGUE_ROUND18', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (141, CAST(0x4B3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'XHP', N'KKH', N'3,1', N'VLEAGUE_ROUND18', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (142, CAST(0x4B3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'BBD', N'TT', N'2,0', N'VLEAGUE_ROUND18', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (143, CAST(0x4C3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'THH', N'QNA', N'2,3', N'VLEAGUE_ROUND18', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (144, CAST(0x4C3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'HGL', N'DLA', N'1,2', N'VLEAGUE_ROUND18', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (145, CAST(0x4C3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'SDN', N'SNA', N'0,1', N'VLEAGUE_ROUND18', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (146, CAST(0x4C3D0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'VTEL', N'TQN', N'0,0', N'VLEAGUE_ROUND18', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (147, CAST(0x513D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'QNA', N'XHP', N'2,1', N'VLEAGUE_ROUND19', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (148, CAST(0x513D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'BBD', N'SNA', N'0,0', N'VLEAGUE_ROUND19', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (149, CAST(0x513D0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'TQN', N'SDN', N'0,0', N'VLEAGUE_ROUND19', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (150, CAST(0x533D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'CTH', N'THH', N'1,4', N'VLEAGUE_ROUND19', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (151, CAST(0x533D0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'HCM', N'HGL', N'1,0', N'VLEAGUE_ROUND19', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (152, CAST(0x533D0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'DLA', N'KKH', N'2,2', N'VLEAGUE_ROUND19', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (153, CAST(0x533D0B00 AS Date), CAST(0x070084B1109B0000 AS Time), NULL, N'TT', N'VTEL', N'2,2', N'VLEAGUE_ROUND19', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (154, CAST(0x593D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'THH', N'XHP', N'1,1', N'VLEAGUE_ROUND20', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (155, CAST(0x5A3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'SNA', N'VTEL', N'2,0', N'VLEAGUE_ROUND20', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (156, CAST(0x5A3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'KKH', N'HGL', N'4,2', N'VLEAGUE_ROUND20', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (157, CAST(0x5A3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'QNA', N'BBD', N'1,1', N'VLEAGUE_ROUND20', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (158, CAST(0x5A3D0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'HCM', N'SDN', N'1,1', N'VLEAGUE_ROUND20', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (159, CAST(0x5A3D0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'TQN', N'CTH', N'0,0', N'VLEAGUE_ROUND20', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (160, CAST(0x5A3D0B00 AS Date), CAST(0x070084B1109B0000 AS Time), NULL, N'TT', N'DLA', N'4,0', N'VLEAGUE_ROUND20', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (161, CAST(0x673D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'BBD', N'TQN', N'0,1', N'VLEAGUE_ROUND21', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (162, CAST(0x673D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'XHP', N'HCM', N'4,1', N'VLEAGUE_ROUND21', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (163, CAST(0x673D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'HGL', N'SNA', N'0,2', N'VLEAGUE_ROUND21', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (164, CAST(0x683D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'CTH', N'QNA', N'2,3', N'VLEAGUE_ROUND21', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (165, CAST(0x683D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'SDN', N'DLA', N'2,0', N'VLEAGUE_ROUND21', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (166, CAST(0x683D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'THH', N'TT', N'3,3', N'VLEAGUE_ROUND21', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (167, CAST(0x683D0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'VTEL', N'KKH', N'0,0', N'VLEAGUE_ROUND21', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (168, CAST(0x6D3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'SNA', N'XHP', N'2,3', N'VLEAGUE_ROUND22', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (169, CAST(0x6E3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'KKH', N'SDN', N'3,2', N'VLEAGUE_ROUND22', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (170, CAST(0x6E3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'QNA', N'HGL', N'1,1', N'VLEAGUE_ROUND22', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (171, CAST(0x6E3D0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'HCM', N'BBD', N'1,1', N'VLEAGUE_ROUND22', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (172, CAST(0x6F3D0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'TQN', N'THH', N'4,3', N'VLEAGUE_ROUND22', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (173, CAST(0x6F3D0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'DLA', N'VTEL', N'3,3', N'VLEAGUE_ROUND22', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (174, CAST(0x6F3D0B00 AS Date), CAST(0x070084B1109B0000 AS Time), NULL, N'TT', N'CTH', N'4,0', N'VLEAGUE_ROUND22', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (175, CAST(0x743D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'HGL', N'TT', N'3,2', N'VLEAGUE_ROUND23', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (176, CAST(0x753D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'KKH', N'SNA', N'1,1', N'VLEAGUE_ROUND23', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (177, CAST(0x753D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'TQN', N'XHP', N'1,0', N'VLEAGUE_ROUND23', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (178, CAST(0x753D0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'DLA', N'THH', N'0,2', N'VLEAGUE_ROUND23', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (179, CAST(0x763D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'BBD', N'CTH', N'1,1', N'VLEAGUE_ROUND23', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (180, CAST(0x763D0B00 AS Date), CAST(0x070046DB308F0000 AS Time), NULL, N'SDN', N'QNA', N'0,2', N'VLEAGUE_ROUND23', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (181, CAST(0x763D0B00 AS Date), CAST(0x07001CEDAE920000 AS Time), NULL, N'HCM', N'VTEL', N'1,3', N'VLEAGUE_ROUND23', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (182, CAST(0x7B3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'THH', N'BBD', N'1,1', N'VLEAGUE_ROUND24', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (183, CAST(0x7C3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'XHP', N'SDN', N'2,0', N'VLEAGUE_ROUND24', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (184, CAST(0x7C3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'SNA', N'DLA', N'3,2', N'VLEAGUE_ROUND24', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (185, CAST(0x7C3D0B00 AS Date), CAST(0x070050CFDF960000 AS Time), NULL, N'VTEL', N'HGL', N'1,2', N'VLEAGUE_ROUND24', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (186, CAST(0x7D3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'CTH', N'KKH', N'1,2', N'VLEAGUE_ROUND24', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (187, CAST(0x7D3D0B00 AS Date), CAST(0x070084B1109B0000 AS Time), NULL, N'TT', N'HCM', N'4,0', N'VLEAGUE_ROUND24', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (188, CAST(0x823D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'QNA', N'TQN', N'2,1', N'VLEAGUE_ROUND24', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (189, CAST(0x8B3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'BBD', N'DLA', N'4,0', N'VLEAGUE_ROUND25', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (190, CAST(0x8B3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'HCM', N'TQN', N'2,4', N'VLEAGUE_ROUND25', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (191, CAST(0x8B3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'CTH', N'SNA', N'1,2', N'VLEAGUE_ROUND25', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (192, CAST(0x8B3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'SDN', N'VTEL', N'2,3', N'VLEAGUE_ROUND25', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (193, CAST(0x8B3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'THH', N'KKH', N'2,0', N'VLEAGUE_ROUND25', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (194, CAST(0x8B3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'TT', N'QNA', N'1,0', N'VLEAGUE_ROUND25', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (195, CAST(0x8B3D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'XHP', N'HGL', N'1,2', N'VLEAGUE_ROUND25', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (196, CAST(0x913D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'DLA', N'CTH', N'2,3', N'VLEAGUE_ROUND26', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (197, CAST(0x913D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'HGL', N'SDN', N'0,1', N'VLEAGUE_ROUND26', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (198, CAST(0x913D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'KKH', N'BBD', N'2,3', N'VLEAGUE_ROUND26', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (199, CAST(0x913D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'VTEL', N'XHP', N'3,0', N'VLEAGUE_ROUND26', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (200, CAST(0x913D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'TQN', N'TT', N'4,4', N'VLEAGUE_ROUND26', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (201, CAST(0x913D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'QNA', N'HCM', N'3,1', N'VLEAGUE_ROUND26', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (202, CAST(0x913D0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'SNA', N'THH', N'0,1', N'VLEAGUE_ROUND26', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (204, CAST(0x793C0B00 AS Date), CAST(0x0700E80A7E8E0000 AS Time), NULL, N'SDN', N'THH', N'0,0', N'VLEAGUE_ROUND6', N'VLEAGUE_17')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (211, CAST(0xA03D0B00 AS Date), CAST(0x07005ADAE9680000 AS Time), N'123', N'CTH', N'SDN', N'0', N'VLEAGUE_ROUND2', N'VLEAGUE_18')
INSERT [dbo].[match] ([id], [date_at], [time_at], [pitch], [home_club], [guest_club], [score], [round_id], [season_id]) VALUES (214, CAST(0x7B3D0B00 AS Date), CAST(0x0700D2496B000000 AS Time), NULL, N'XHP', N'TDT', N'2,4', N'VLEAGUE_ROUND1', N'VLEAGUE_18')
SET IDENTITY_INSERT [dbo].[match] OFF
/****** Object:  Table [dbo].[match_goal]    Script Date: 12/23/2017 20:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[match_goal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[time_at] [int] NULL,
	[footballer_id] [int] NULL,
	[goal_type_id] [varchar](20) NULL,
	[match_id] [int] NULL,
 CONSTRAINT [pk_match_goal_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[match_goal] ON
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (12, 10, 166, N'shoot', 21)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (13, 53, 25, N'header', 22)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (14, 66, 61, N'corner', 22)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (15, 94, 44, N'free', 22)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (18, 96, 246, N'header', 19)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (19, 14, 31, N'free', 19)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (21, 67, 241, N'corner', 19)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (22, 45, 238, N'corner', 19)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (23, 2, 268, N'corner', 23)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (24, 4, 249, N'pen', 23)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (25, 30, 276, N'free', 23)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (26, 51, 268, N'corner', 23)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (27, 65, 232, N'shoot', 23)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (29, 46, 344, N'corner', 24)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (30, 65, 203, N'own', 24)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (31, 19, 290, N'shoot', 25)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (32, 22, 129, N'shoot', 26)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (33, 80, 76, N'own', 26)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (34, 53, 109, N'corner', 27)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (35, 87, 249, N'corner', 28)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (36, 89, 233, N'corner', 28)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (37, 16, 98, N'corner', 29)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (38, 70, 318, N'corner', 29)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (39, 21, 334, N'header', 29)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (40, 15, 152, N'free', 30)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (41, 71, 268, N'shoot', 30)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (42, 76, 129, N'free', 30)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (43, 73, 49, N'header', 31)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (44, 95, 16, N'corner', 31)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (45, 69, 203, N'shoot', 32)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (46, 93, 183, N'own', 32)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (47, 64, 346, N'free', 33)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (48, 79, 345, N'corner', 33)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (49, 19, 291, N'shoot', 34)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (50, 27, 290, N'free', 34)
INSERT [dbo].[match_goal] ([id], [time_at], [footballer_id], [goal_type_id], [match_id]) VALUES (51, 58, 174, N'shoot', 34)
SET IDENTITY_INSERT [dbo].[match_goal] OFF
/****** Object:  Default [DF__system_co__is_ac__286302EC]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[system_config] ADD  DEFAULT ((1)) FOR [is_active]
GO
/****** Object:  Default [DF__user_grou__is_ac__2B3F6F97]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[user_group] ADD  DEFAULT ((1)) FOR [is_active]
GO
/****** Object:  Default [DF__football___is_ac__3D5E1FD2]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[football_club] ADD  CONSTRAINT [DF__football___is_ac__3D5E1FD2]  DEFAULT ((1)) FOR [is_active]
GO
/****** Object:  Default [DF__content_c__displ__060DEAE8]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[content_category] ADD  DEFAULT ((0)) FOR [display_order]
GO
/****** Object:  Default [DF__content_c__creat__07020F21]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[content_category] ADD  DEFAULT (getdate()) FOR [created_at]
GO
/****** Object:  Default [DF__content_c__modif__07F6335A]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[content_category] ADD  DEFAULT (getdate()) FOR [modified_at]
GO
/****** Object:  Default [DF__content_c__is_ac__08EA5793]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[content_category] ADD  DEFAULT ((1)) FOR [is_active]
GO
/****** Object:  Default [DF__content_c__is_sh__09DE7BCC]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[content_category] ADD  DEFAULT ((0)) FOR [is_showhome]
GO
/****** Object:  Default [DF__info__created_at__1B0907CE]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[info] ADD  DEFAULT (getdate()) FOR [created_at]
GO
/****** Object:  Default [DF__info__modified_a__1BFD2C07]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[info] ADD  DEFAULT (getdate()) FOR [modified_at]
GO
/****** Object:  Default [DF__info__is_active__1CF15040]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[info] ADD  DEFAULT ((1)) FOR [is_active]
GO
/****** Object:  Default [DF__menu__target__014935CB]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[menu] ADD  CONSTRAINT [DF__menu__target__014935CB]  DEFAULT (N'_top') FOR [target]
GO
/****** Object:  Default [DF__menu__is_active__023D5A04]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[menu] ADD  CONSTRAINT [DF__menu__is_active__023D5A04]  DEFAULT ((1)) FOR [is_active]
GO
/****** Object:  Default [DF__advertise__displ__21B6055D]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[advertisement] ADD  CONSTRAINT [DF__advertise__displ__21B6055D]  DEFAULT ((0)) FOR [display_order]
GO
/****** Object:  Default [DF__advertise__creat__22AA2996]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[advertisement] ADD  CONSTRAINT [DF__advertise__creat__22AA2996]  DEFAULT (getdate()) FOR [created_at]
GO
/****** Object:  Default [DF__advertise__modif__239E4DCF]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[advertisement] ADD  CONSTRAINT [DF__advertise__modif__239E4DCF]  DEFAULT (getdate()) FOR [modified_at]
GO
/****** Object:  Default [DF__advertise__is_ac__24927208]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[advertisement] ADD  CONSTRAINT [DF__advertise__is_ac__24927208]  DEFAULT ((1)) FOR [is_active]
GO
/****** Object:  Default [DF__season__start_da__48CFD27E]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[season] ADD  DEFAULT (getdate()) FOR [start_date_at]
GO
/****** Object:  Default [DF__season__end_date__49C3F6B7]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[season] ADD  DEFAULT (getdate()) FOR [end_date_at]
GO
/****** Object:  Default [DF__season__number_c__4AB81AF0]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[season] ADD  DEFAULT ((0)) FOR [number_club]
GO
/****** Object:  Default [DF__season__display___4BAC3F29]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[season] ADD  DEFAULT ((0)) FOR [display_order]
GO
/****** Object:  Default [DF__season__is_activ__4CA06362]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[season] ADD  DEFAULT ((1)) FOR [is_active]
GO
/****** Object:  Default [DF__round__display_o__5070F446]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[round] ADD  DEFAULT ((0)) FOR [display_order]
GO
/****** Object:  Default [DF__footballe__birth__4222D4EF]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[footballer] ADD  DEFAULT (getdate()) FOR [birth_date]
GO
/****** Object:  Default [DF__content__view_co__0CBAE877]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[content] ADD  CONSTRAINT [DF__content__view_co__0CBAE877]  DEFAULT ((0)) FOR [view_count]
GO
/****** Object:  Default [DF_content_share_count]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[content] ADD  CONSTRAINT [DF_content_share_count]  DEFAULT ((0)) FOR [share_count]
GO
/****** Object:  Default [DF__content__created__0DAF0CB0]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[content] ADD  CONSTRAINT [DF__content__created__0DAF0CB0]  DEFAULT (getdate()) FOR [created_at]
GO
/****** Object:  Default [DF__content__modifie__0EA330E9]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[content] ADD  CONSTRAINT [DF__content__modifie__0EA330E9]  DEFAULT (getdate()) FOR [modified_at]
GO
/****** Object:  Default [DF__content__is_acti__0F975522]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[content] ADD  CONSTRAINT [DF__content__is_acti__0F975522]  DEFAULT ((1)) FOR [is_active]
GO
/****** Object:  Default [DF__content__is_top___108B795B]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[content] ADD  CONSTRAINT [DF__content__is_top___108B795B]  DEFAULT ((0)) FOR [is_top_hot]
GO
/****** Object:  Default [DF__user_log__user_g__2E1BDC42]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[user_log] ADD  DEFAULT ('MEMBER') FOR [user_group_id]
GO
/****** Object:  Default [DF__user_log__create__2F10007B]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[user_log] ADD  DEFAULT (getdate()) FOR [created_at]
GO
/****** Object:  Default [DF__user_log__modifi__300424B4]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[user_log] ADD  DEFAULT (getdate()) FOR [modified_at]
GO
/****** Object:  Default [DF__user_log__is_act__30F848ED]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[user_log] ADD  DEFAULT ((1)) FOR [is_active]
GO
/****** Object:  Default [DF_rank_win_match]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[rank] ADD  CONSTRAINT [DF_rank_win_match]  DEFAULT ((0)) FOR [win_match]
GO
/****** Object:  Default [DF_rank_draw_match]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[rank] ADD  CONSTRAINT [DF_rank_draw_match]  DEFAULT ((0)) FOR [draw_match]
GO
/****** Object:  Default [DF_rank_lose_match]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[rank] ADD  CONSTRAINT [DF_rank_lose_match]  DEFAULT ((0)) FOR [lose_match]
GO
/****** Object:  Default [DF_rank_win_score]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[rank] ADD  CONSTRAINT [DF_rank_win_score]  DEFAULT ((0)) FOR [win_score]
GO
/****** Object:  Default [DF_rank_lose_score]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[rank] ADD  CONSTRAINT [DF_rank_lose_score]  DEFAULT ((0)) FOR [lose_score]
GO
/****** Object:  Default [DF_rank_season_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[rank] ADD  CONSTRAINT [DF_rank_season_id]  DEFAULT ((0)) FOR [season_id]
GO
/****** Object:  Default [DF__match__date_at__59063A47]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[match] ADD  DEFAULT (getdate()) FOR [date_at]
GO
/****** Object:  Default [DF__match__time_at__59FA5E80]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[match] ADD  DEFAULT (getdate()) FOR [time_at]
GO
/****** Object:  ForeignKey [fk_menu_type_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[menu]  WITH CHECK ADD  CONSTRAINT [fk_menu_type_id] FOREIGN KEY([menu_type_id])
REFERENCES [dbo].[menu_type] ([id])
GO
ALTER TABLE [dbo].[menu] CHECK CONSTRAINT [fk_menu_type_id]
GO
/****** Object:  ForeignKey [fk_advertisement_position_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[advertisement]  WITH CHECK ADD  CONSTRAINT [fk_advertisement_position_id] FOREIGN KEY([advertisement_position_id])
REFERENCES [dbo].[advertisement_position] ([id])
GO
ALTER TABLE [dbo].[advertisement] CHECK CONSTRAINT [fk_advertisement_position_id]
GO
/****** Object:  ForeignKey [fk__season_tournamnet_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[season]  WITH CHECK ADD  CONSTRAINT [fk__season_tournamnet_id] FOREIGN KEY([tournamnet_id])
REFERENCES [dbo].[tournament] ([id])
GO
ALTER TABLE [dbo].[season] CHECK CONSTRAINT [fk__season_tournamnet_id]
GO
/****** Object:  ForeignKey [fk_round_tournamnet_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[round]  WITH CHECK ADD  CONSTRAINT [fk_round_tournamnet_id] FOREIGN KEY([tournament_id])
REFERENCES [dbo].[tournament] ([id])
GO
ALTER TABLE [dbo].[round] CHECK CONSTRAINT [fk_round_tournamnet_id]
GO
/****** Object:  ForeignKey [fk_footballClub_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[footballer]  WITH CHECK ADD  CONSTRAINT [fk_footballClub_id] FOREIGN KEY([footballClub_id])
REFERENCES [dbo].[football_club] ([id])
GO
ALTER TABLE [dbo].[footballer] CHECK CONSTRAINT [fk_footballClub_id]
GO
/****** Object:  ForeignKey [fk_footballer_type_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[footballer]  WITH CHECK ADD  CONSTRAINT [fk_footballer_type_id] FOREIGN KEY([footballer_type_id])
REFERENCES [dbo].[footballer_type] ([id])
GO
ALTER TABLE [dbo].[footballer] CHECK CONSTRAINT [fk_footballer_type_id]
GO
/****** Object:  ForeignKey [fk_content_category_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[content]  WITH CHECK ADD  CONSTRAINT [fk_content_category_id] FOREIGN KEY([content_category_id])
REFERENCES [dbo].[content_category] ([id])
GO
ALTER TABLE [dbo].[content] CHECK CONSTRAINT [fk_content_category_id]
GO
/****** Object:  ForeignKey [fk_user_group_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[user_log]  WITH CHECK ADD  CONSTRAINT [fk_user_group_id] FOREIGN KEY([user_group_id])
REFERENCES [dbo].[user_group] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[user_log] CHECK CONSTRAINT [fk_user_group_id]
GO
/****** Object:  ForeignKey [fk_credential_group_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[user_credential]  WITH CHECK ADD  CONSTRAINT [fk_credential_group_id] FOREIGN KEY([idx_user_group_id])
REFERENCES [dbo].[user_group] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_credential] CHECK CONSTRAINT [fk_credential_group_id]
GO
/****** Object:  ForeignKey [fk_credential_role_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[user_credential]  WITH CHECK ADD  CONSTRAINT [fk_credential_role_id] FOREIGN KEY([idx_user_role_id])
REFERENCES [dbo].[user_role] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_credential] CHECK CONSTRAINT [fk_credential_role_id]
GO
/****** Object:  ForeignKey [fk_idx_round_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[season_round]  WITH CHECK ADD  CONSTRAINT [fk_idx_round_id] FOREIGN KEY([idx_round_id])
REFERENCES [dbo].[round] ([id])
GO
ALTER TABLE [dbo].[season_round] CHECK CONSTRAINT [fk_idx_round_id]
GO
/****** Object:  ForeignKey [fk_idx_season_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[season_round]  WITH CHECK ADD  CONSTRAINT [fk_idx_season_id] FOREIGN KEY([idx_season_id])
REFERENCES [dbo].[season] ([id])
GO
ALTER TABLE [dbo].[season_round] CHECK CONSTRAINT [fk_idx_season_id]
GO
/****** Object:  ForeignKey [fk_idx_seasonClub_fooballClub_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[season_club]  WITH CHECK ADD  CONSTRAINT [fk_idx_seasonClub_fooballClub_id] FOREIGN KEY([idx_fooballClub_id])
REFERENCES [dbo].[football_club] ([id])
GO
ALTER TABLE [dbo].[season_club] CHECK CONSTRAINT [fk_idx_seasonClub_fooballClub_id]
GO
/****** Object:  ForeignKey [fk_idx_seasonClub_season_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[season_club]  WITH CHECK ADD  CONSTRAINT [fk_idx_seasonClub_season_id] FOREIGN KEY([idx_season_id])
REFERENCES [dbo].[season] ([id])
GO
ALTER TABLE [dbo].[season_club] CHECK CONSTRAINT [fk_idx_seasonClub_season_id]
GO
/****** Object:  ForeignKey [fk_contenttag_content_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[content_tag]  WITH CHECK ADD  CONSTRAINT [fk_contenttag_content_id] FOREIGN KEY([idx_content_id])
REFERENCES [dbo].[content] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[content_tag] CHECK CONSTRAINT [fk_contenttag_content_id]
GO
/****** Object:  ForeignKey [fk_contenttag_tag_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[content_tag]  WITH CHECK ADD  CONSTRAINT [fk_contenttag_tag_id] FOREIGN KEY([idx_tag_id])
REFERENCES [dbo].[tag] ([id])
GO
ALTER TABLE [dbo].[content_tag] CHECK CONSTRAINT [fk_contenttag_tag_id]
GO
/****** Object:  ForeignKey [fk_rank_footballClub_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[rank]  WITH CHECK ADD  CONSTRAINT [fk_rank_footballClub_id] FOREIGN KEY([footballClub_id])
REFERENCES [dbo].[football_club] ([id])
GO
ALTER TABLE [dbo].[rank] CHECK CONSTRAINT [fk_rank_footballClub_id]
GO
/****** Object:  ForeignKey [fk_rank_season_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[rank]  WITH CHECK ADD  CONSTRAINT [fk_rank_season_id] FOREIGN KEY([season_id])
REFERENCES [dbo].[season] ([id])
GO
ALTER TABLE [dbo].[rank] CHECK CONSTRAINT [fk_rank_season_id]
GO
/****** Object:  ForeignKey [fk_match_guestClub_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[match]  WITH CHECK ADD  CONSTRAINT [fk_match_guestClub_id] FOREIGN KEY([guest_club])
REFERENCES [dbo].[football_club] ([id])
GO
ALTER TABLE [dbo].[match] CHECK CONSTRAINT [fk_match_guestClub_id]
GO
/****** Object:  ForeignKey [fk_match_homeClub_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[match]  WITH CHECK ADD  CONSTRAINT [fk_match_homeClub_id] FOREIGN KEY([home_club])
REFERENCES [dbo].[football_club] ([id])
GO
ALTER TABLE [dbo].[match] CHECK CONSTRAINT [fk_match_homeClub_id]
GO
/****** Object:  ForeignKey [fk_match_round_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[match]  WITH CHECK ADD  CONSTRAINT [fk_match_round_id] FOREIGN KEY([round_id])
REFERENCES [dbo].[round] ([id])
GO
ALTER TABLE [dbo].[match] CHECK CONSTRAINT [fk_match_round_id]
GO
/****** Object:  ForeignKey [fk_season_round_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[match]  WITH CHECK ADD  CONSTRAINT [fk_season_round_id] FOREIGN KEY([season_id])
REFERENCES [dbo].[season] ([id])
GO
ALTER TABLE [dbo].[match] CHECK CONSTRAINT [fk_season_round_id]
GO
/****** Object:  ForeignKey [fk_matchGoal_footballer_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[match_goal]  WITH CHECK ADD  CONSTRAINT [fk_matchGoal_footballer_id] FOREIGN KEY([footballer_id])
REFERENCES [dbo].[footballer] ([id])
GO
ALTER TABLE [dbo].[match_goal] CHECK CONSTRAINT [fk_matchGoal_footballer_id]
GO
/****** Object:  ForeignKey [fk_matchGoal_goal_type_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[match_goal]  WITH CHECK ADD  CONSTRAINT [fk_matchGoal_goal_type_id] FOREIGN KEY([goal_type_id])
REFERENCES [dbo].[goal_type] ([id])
GO
ALTER TABLE [dbo].[match_goal] CHECK CONSTRAINT [fk_matchGoal_goal_type_id]
GO
/****** Object:  ForeignKey [fk_matchGoal_result_match_id]    Script Date: 12/23/2017 20:50:22 ******/
ALTER TABLE [dbo].[match_goal]  WITH CHECK ADD  CONSTRAINT [fk_matchGoal_result_match_id] FOREIGN KEY([match_id])
REFERENCES [dbo].[match] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[match_goal] CHECK CONSTRAINT [fk_matchGoal_result_match_id]
GO
