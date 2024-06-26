USE [master]
GO
/****** Object:  Database [WebBanHang]    Script Date: 13/04/2024 15:17:43 ******/
CREATE DATABASE [WebBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\WebBanHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\WebBanHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [WebBanHang] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebBanHang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebBanHang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebBanHang] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [WebBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebBanHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [WebBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebBanHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebBanHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WebBanHang] SET QUERY_STORE = ON
GO
ALTER DATABASE [WebBanHang] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [WebBanHang]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 13/04/2024 15:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 13/04/2024 15:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 13/04/2024 15:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 13/04/2024 15:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 13/04/2024 15:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 13/04/2024 15:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 13/04/2024 15:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 13/04/2024 15:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItems]    Script Date: 13/04/2024 15:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_CartItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 13/04/2024 15:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 13/04/2024 15:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 13/04/2024 15:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[ShippingAddress] [nvarchar](max) NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[PaymentMethod] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 13/04/2024 15:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 13/04/2024 15:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240412154506_NDT', N'6.0.28')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240413031553_Update_CartItem', N'6.0.28')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240413042332_SuaLaiOrder', N'6.0.28')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'Admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e1182ad0-3b01-435b-b869-16e265e80115', N'1')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e1182ad0-3b01-435b-b869-16e265e80115', N'Admin', N'Admin@gmail.com', N'ADMIN@GMAIL.COM', N'Admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELJDTSG3kwELt5osygWnYj8mgNfcphdC/R+AlRGsy8MwHs34zWMwyTHWuta5DTs3/g==', N'QJWF32453A5RTZVKBUC2FW65MMHDMTNS', N'b651a0d7-0929-45ca-b2c5-81a9b5106a82', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Sneaker')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (28, 12, 7, 6, CAST(1195000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (29, 13, 3, 1, CAST(895000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (30, 13, 4, 2, CAST(895000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (31, 13, 2, 7, CAST(775000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (32, 14, 7, 9, CAST(1195000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (33, 14, 6, 7, CAST(995000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (34, 14, 5, 7, CAST(448500.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (35, 14, 4, 8, CAST(895000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [FullName], [Phone], [Email], [OrderDate], [TotalPrice], [ShippingAddress], [Notes], [PaymentMethod]) VALUES (10, N'e1182ad0-3b01-435b-b869-16e265e80115', N'Nguyễn Đức Thắng', N'0703635306', N'ducthang140912@gmail.com', CAST(N'2024-04-13T04:48:44.0163240' AS DateTime2), CAST(11155000.00 AS Decimal(18, 2)), N'i67, khu dân cư thới an, phường thới an, Q12', N'hhhhhhhhhhhh', 0)
INSERT [dbo].[Orders] ([Id], [UserId], [FullName], [Phone], [Email], [OrderDate], [TotalPrice], [ShippingAddress], [Notes], [PaymentMethod]) VALUES (11, N'e1182ad0-3b01-435b-b869-16e265e80115', N'Nguyễn Đức Thắng', N'0703635306', N'ducthang140912@gmail.com', CAST(N'2024-04-13T04:50:55.0326300' AS DateTime2), CAST(9365000.00 AS Decimal(18, 2)), N'i67, khu dân cư thới an, phường thới an, Q12', N'kkkkkkkkkkkk', 0)
INSERT [dbo].[Orders] ([Id], [UserId], [FullName], [Phone], [Email], [OrderDate], [TotalPrice], [ShippingAddress], [Notes], [PaymentMethod]) VALUES (12, N'e1182ad0-3b01-435b-b869-16e265e80115', N'Nguyễn Đức Thắng', N'0703635306', N'ducthang140912@gmail.com', CAST(N'2024-04-13T05:48:37.0377495' AS DateTime2), CAST(7170000.00 AS Decimal(18, 2)), N'i67, khu dân cư thới an, phường thới an, Q12', N'33123', 0)
INSERT [dbo].[Orders] ([Id], [UserId], [FullName], [Phone], [Email], [OrderDate], [TotalPrice], [ShippingAddress], [Notes], [PaymentMethod]) VALUES (13, N'e1182ad0-3b01-435b-b869-16e265e80115', N'Nguyễn Đức Thắng', N'0703635306', N'ducthang140912@gmail.com', CAST(N'2024-04-13T06:03:03.7131481' AS DateTime2), CAST(8110000.00 AS Decimal(18, 2)), N'i67, khu dân cư thới an, phường thới an, Q12', N'gggggggggg', 0)
INSERT [dbo].[Orders] ([Id], [UserId], [FullName], [Phone], [Email], [OrderDate], [TotalPrice], [ShippingAddress], [Notes], [PaymentMethod]) VALUES (14, N'e1182ad0-3b01-435b-b869-16e265e80115', N'Nguyễn Đức Thắng', N'0703635306', N'ducthang140912@gmail.com', CAST(N'2024-04-13T06:04:33.4600930' AS DateTime2), CAST(28019500.00 AS Decimal(18, 2)), N'i67, khu dân cư thới an, phường thới an, Q12', N'hhhhhhhhhh', 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (1, N'Nike Air Force 1 White Low', CAST(895000.00 AS Decimal(18, 2)), N'Về Nike Air Force 1 White
Thiết Kế Ấn Tượng
Chất liệu da tổng hợp bền bỉ. Tất cả chi tiết được thiết kế độc đáo với màu trắng nguyên khối bao quanh toàn bộ thân giày. Xu hướng mang giày trắng của giới trẻ giúp cho Air Force 1 thuộc top sản phẩm được yêu thích và bán chạy nhất trong những năm gần đây.

Tính Năng Thời Trang All-In-One
Phù hợp cho cả nam nữ. Air Force 1 được xem như một món phụ kiện thời trang khi có thể diện kèm với nhiều loại trang phục trong các dịp khác nhau như đi chơi, đi làm, đi học,… mà vẫn nổi bật.

Công Nghệ Đế Air Độc Quyền
Là điểm mạnh của dòng giày Air Force 1 khi Nike ưu ái đệm “túi khí” vào toàn bộ phần đế giày. Êm ái và thoải mái là cảm giác khi mang Air Force 1 cả ngày dài. Lớp lót bên trong được may bằng chất liệu lưới mềm mại cùng hệ thống lỗ thông hơi thoáng khí giúp thấm hút mồ hôi và hạn chế vi khuẩn gây mùi.

Hỗ Trợ Tăng Chiều Cao
Bộ đế 3cm giúp hack chiều cao đáng kể với họa tiết ngôi sao năm cánh dập nổi giúp tăng độ bám và chống trơn trượt khi di chuyển.

Bảo Hành Lên Đến 3 Tháng
Quý khách có thể liên hệ cửa hàng để được hỗ trợ theo chính sách khi gặp bất kì vấn đề trong quá trình mua sắm.

Đầy Đủ Phụ Kiện
Bao gồm: hộp giày chính hãng, giấy gói hút ẩm, tag giày, hóa đơn mua hàng. Sản phẩm cũng được đóng gói tiêu chuẩn double box hạn chế móp méo trong quá trình vận chuyển.', N'/images/IMG_1047.jpg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (2, N'Vans Old Skool Classic Black', CAST(775000.00 AS Decimal(18, 2)), N'Old Skool đen là sản phẩm bán chạy nhất của Vans, luôn cháy hàng ngay sau khi lên kệ. Với chật da lộn mix vải, cùng với phối vào đen-trắng dễ phối dù là vest lịch lãm, váy bánh bèo hay sexy cho đến những bộ đồng phục nghiêm túc, đều giúp bạn nổi bật hơn hết. Một gợi ý đáng lựa chọn cho các cặp đôi.

Dễ dàng phối với nhiều loại trang phục
Trẻ trung năng động và vô cùng cuốn hút
Thời Trang Đường Phố.', N'/images/unisex.jpg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (3, N'Adidas Stan Smith Fairway', CAST(895000.00 AS Decimal(18, 2)), N'Fullbox Stan Smith. 2 ver Trắng Gót Xanh/ Full White. Thiết kế basic trend dài dài. Phù hợp: nam nữ, đi học, đi làm, hoạt động thể thao. Size: 36-44. Chất liệu: Da. Giao hàng toàn quốc. Bảo hành 3 tháng. Đổi trả dễ dàng. Streetwear, trẻ trung năng động.', N'/images/IMG_2217-2.jpg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (4, N'Adidas Superstar Running White', CAST(895000.00 AS Decimal(18, 2)), N'Giày supper star là giày bóng rổ được ưa chuộng nhất trên thế giới.', N'/images/IMG_2215-2.jpg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (5, N'Adidas Prophere Grey Solar Red', CAST(448500.00 AS Decimal(18, 2)), N'Fullbox Prophere. 3 ver Trắng / Đen / Xám. Đế giày tăng chiều cao. Phù hợp: nam nữ, đi học, đi làm, hoạt động thể thao. Size: 36-44. Giao hàng toàn quốc. Bảo hành 3 tháng. Đổi trả dễ dàng. Streetwear, trẻ trung năng động.

Giày Adidas Prophere chính là cái tên đang được nhắc đến nhiều nhất trên các cộng đồng người chơi giày. Bộ đế và midsole được thiết kế vô cùng đặc biệt chắc chắn sẽ không thể tìm thấy ở bất kì phiên bản nào khác.

Và một trong những mẫu giày được thiết kế dành cho tương lai – Adidas Prophere Grey Solar Red đang “làm mưa làm gió” trong thời gian gần đây. Cùng tìm hiểu về đôi giày này ngay nhé.', N'/images/IMG_2211-2.jpg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (6, N'Alexander McQueen Oversized Sneaker Black', CAST(995000.00 AS Decimal(18, 2)), N'Fullbox McQueen. 3 ver Gót Đen/ Gót Nude/ Full White. Đế giày tăng chiều cao. Phù hợp: nam nữ, đi học, đi làm, hoạt động thể thao. Size: 36-44. Chất liệu: Da. Giao hàng toàn quốc. Bảo hành 3 tháng. Đổi trả dễ dàng. Streetwear, trẻ trung năng động.', N'/images/phoi-do-unisex.jpg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (7, N'Air Force 1 Shadow Pale Ivory', CAST(1195000.00 AS Decimal(18, 2)), N'Điểm phá cách từ Air Force 1 Shadow chính là xu hướng thiết kế "nhân đôi" vô cùng độc đáo. Sự xuất hiện của Shadow như nét chấm phá lên mẫu giày nhiều năm tuổi này. Sở hữu một đôi Air Force 1 Shadow đồng nghĩa với vẻ ngoài của bạn gấp đôi sự ấn tượng.', N'/images/IMG_1013.jpg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (8, N'Balenciaga Triple S Trainer Black Red', CAST(1395000.00 AS Decimal(18, 2)), N'Đây là thương hiệu thời trang lâu đời nổi tiếng, cao cấp nhất nhì thế giới được thành lập từ năm 1919. Tiếp nối sự thành công, thương hiệu tiếp tục tung ra Triple S – dòng giày đa sắc màu, phá bỏ mọi giới hạn, đủ đẹp, đủ chất để khiến giới mộ điệu lại một lần nữa phải điên đảo Đây là mẫu giày cũng được nhiều người nghệ sĩ thế giới lựa chọn. Tại Việt Nam, giày Triple S được rất nhiều nghệ sĩ nổi tiếng yêu thích.
Thiết kế đột phá.
Một đôi giày ra đời đã phá vỡ những tiêu chuẩn về thời trang hiện nay.
Phần đế cao, uốn lượn hơn hẳn để bạn ăn gian thêm vài centimet
Pha trộn những gam màu vintage và nhiều chất liệu vải khác nhau.
Trên thân, gót hay đế giày cũng đều được thêu và khắc tên thương hiệu, tạo sự đẳng cấp.', N'/images/Triple-S-Trainer-Black-Red-2018-768x768.jpg', 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 13/04/2024 15:17:44 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 13/04/2024 15:17:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 13/04/2024 15:17:44 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 13/04/2024 15:17:44 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 13/04/2024 15:17:44 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 13/04/2024 15:17:44 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 13/04/2024 15:17:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_OrderId]    Script Date: 13/04/2024 15:17:44 ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderId] ON [dbo].[OrderDetails]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 13/04/2024 15:17:44 ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 13/04/2024 15:17:44 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductImages_ProductId]    Script Date: 13/04/2024 15:17:44 ******/
CREATE NONCLUSTERED INDEX [IX_ProductImages_ProductId] ON [dbo].[ProductImages]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 13/04/2024 15:17:44 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [WebBanHang] SET  READ_WRITE 
GO
