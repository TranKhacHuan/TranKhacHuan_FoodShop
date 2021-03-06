USE [master]
GO
/****** Object:  Database [Db_Shop_Online]    Script Date: 8/19/2021 4:15:08 PM ******/
CREATE DATABASE [Db_Shop_Online]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Db_Shop_Online', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Db_Shop_Online.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Db_Shop_Online_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Db_Shop_Online_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Db_Shop_Online] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Db_Shop_Online].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Db_Shop_Online] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Db_Shop_Online] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Db_Shop_Online] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Db_Shop_Online] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Db_Shop_Online] SET ARITHABORT OFF 
GO
ALTER DATABASE [Db_Shop_Online] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Db_Shop_Online] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Db_Shop_Online] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Db_Shop_Online] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Db_Shop_Online] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Db_Shop_Online] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Db_Shop_Online] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Db_Shop_Online] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Db_Shop_Online] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Db_Shop_Online] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Db_Shop_Online] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Db_Shop_Online] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Db_Shop_Online] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Db_Shop_Online] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Db_Shop_Online] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Db_Shop_Online] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Db_Shop_Online] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Db_Shop_Online] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Db_Shop_Online] SET  MULTI_USER 
GO
ALTER DATABASE [Db_Shop_Online] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Db_Shop_Online] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Db_Shop_Online] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Db_Shop_Online] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Db_Shop_Online] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Db_Shop_Online] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Db_Shop_Online] SET QUERY_STORE = OFF
GO
USE [Db_Shop_Online]
GO
/****** Object:  Table [dbo].[About]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[Detail] [ntext] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
	[Language] [varchar](2) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[CategoryID] [bigint] NOT NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NOT NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Tags] [nvarchar](500) NULL,
	[Language] [varchar](2) NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentTag]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentTag](
	[ContentID] [bigint] NOT NULL,
	[TagID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ContentTag] PRIMARY KEY CLUSTERED 
(
	[ContentID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credential]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credential](
	[UserGroupID] [varchar](20) NOT NULL,
	[RoleID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Credential] PRIMARY KEY CLUSTERED 
(
	[UserGroupID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Content] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [varchar](50) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[ID] [varchar](2) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Target] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[TypeID] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_MenuType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerID] [bigint] NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipMobile] [varchar](50) NULL,
	[ShipAddress] [nvarchar](50) NULL,
	[ShipEmail] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ProductID] [bigint] NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Code] [varchar](10) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[MoreImages] [xml] NULL,
	[Price] [decimal](18, 0) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[IncludedVAT] [bit] NULL,
	[Quantity] [int] NOT NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Link] [nvarchar](250) NULL,
	[Description] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemConfig]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemConfig](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Value] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_SystemConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](32) NULL,
	[GroupID] [varchar](20) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[ProvinceID] [int] NULL,
	[DistrictID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[ID] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome], [Language]) VALUES (1, N'Tin thế giới', N'tin-the-gioi', NULL, 1, NULL, CAST(N'2015-08-15T07:49:20.183' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 0, NULL)
INSERT [dbo].[Category] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome], [Language]) VALUES (2, N'Tin trong nước', N'tin-trong-nuoc', NULL, 2, NULL, CAST(N'2015-08-15T07:49:33.087' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 0, NULL)
INSERT [dbo].[Category] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome], [Language]) VALUES (3, N'34234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'vi')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID], [Content], [Status]) VALUES (1, N'<p>Công ty CP Online Shop</p><p>Địa chỉ: Số 1 Quang Trung Hà Đông </p> <p>Điện thoại: 04 6523 5342</p>', 1)
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Content] ON 

INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Description], [Image], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount], [Tags], [Language]) VALUES (1, N'tin tức demo', N'tin-tuc-demo', N'424', N'/Data/images/14.PNG', 1, N'42342342', 12, CAST(N'2015-09-20T08:01:57.590' AS DateTime), N'toanbn', NULL, NULL, N'313', N'13                                                                                                                                                                                                                                                        ', 1, NULL, 0, N'tin tức,thời sự', NULL)
SET IDENTITY_INSERT [dbo].[Content] OFF
GO
INSERT [dbo].[ContentTag] ([ContentID], [TagID]) VALUES (1, N'thoi-su')
INSERT [dbo].[ContentTag] ([ContentID], [TagID]) VALUES (1, N'tin-tuc')
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([ID], [Name], [Phone], [Email], [Address], [Content], [CreatedDate], [Status]) VALUES (1, N'43454', N'5345', N'53453', N'354', N'
       345                 ', CAST(N'2015-09-13T21:36:30.167' AS DateTime), NULL)
INSERT [dbo].[Feedback] ([ID], [Name], [Phone], [Email], [Address], [Content], [CreatedDate], [Status]) VALUES (2, N'4234', N'4234', N'634', N'423', N'243    ', CAST(N'2015-09-13T21:37:45.667' AS DateTime), NULL)
INSERT [dbo].[Feedback] ([ID], [Name], [Phone], [Email], [Address], [Content], [CreatedDate], [Status]) VALUES (3, N'r2', N'4234', N'43243', N'423', N'423
                        ', CAST(N'2015-09-13T21:38:27.120' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
INSERT [dbo].[Footer] ([ID], [Content], [Status]) VALUES (N'footer', N'<div class="wrap">	
	     <div class="section group">
				<div class="col_1_of_4 span_1_of_4">
						<h4>Information</h4>
						<ul>
						<li><a href="about.html">About Us</a></li>
						<li><a href="contact.html">Customer Service</a></li>
						<li><a href="#">Advanced Search</a></li>
						<li><a href="delivery.html">Orders and Returns</a></li>
						<li><a href="contact.html">Contact Us</a></li>
						</ul>
					</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Why buy from us</h4>
						<ul>
						<li><a href="about.html">About Us</a></li>
						<li><a href="contact.html">Customer Service</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="contact.html">Site Map</a></li>
						<li><a href="#">Search Terms</a></li>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>My account</h4>
						<ul>
							<li><a href="contact.html">Sign In</a></li>
							<li><a href="index.html">View Cart</a></li>
							<li><a href="#">My Wishlist</a></li>
							<li><a href="#">Track My Order</a></li>
							<li><a href="contact.html">Help</a></li>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Contact</h4>
						<ul>
							<li><span>+91-123-456789</span></li>
							<li><span>+00-123-000000</span></li>
						</ul>
						<div class="social-icons">
							<h4>Follow Us</h4>
					   		  <ul>
							      <li><a href="#" target="_blank"><img src="images/facebook.png" alt="" /></a></li>
							      <li><a href="#" target="_blank"><img src="images/twitter.png" alt="" /></a></li>
							      <li><a href="#" target="_blank"><img src="images/skype.png" alt="" /> </a></li>
							      <li><a href="#" target="_blank"> <img src="images/dribbble.png" alt="" /></a></li>
							      <li><a href="#" target="_blank"> <img src="images/linkedin.png" alt="" /></a></li>
							      <div class="clear"></div>
						     </ul>
   	 					</div>
				</div>
			</div>			
        </div>
        <div class="copy_right">
				<p>Company Name © All rights Reseverd | Design by  <a href="http://w3layouts.com">W3Layouts</a> </p>
		   </div>', 1)
GO
INSERT [dbo].[Language] ([ID], [Name], [IsDefault]) VALUES (N'en', N'Tiếng Anh', 0)
INSERT [dbo].[Language] ([ID], [Name], [IsDefault]) VALUES (N'vi', N'Tiếng Việt', 1)
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (1, N'Trang chủ', N'/', 1, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (2, N'Giới thiệu', N'/gioi-thieu', 2, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (3, N'Tin tức', N'/tin-tuc', 3, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (4, N'Sản phẩm', N'/san-pham', 4, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (5, N'Liên hệ', N'/lien-he', 5, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (6, N'Đăng nhập', N'/dang-nhap', 1, N'_self', 1, 2)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (7, N'Đăng ký', N'/dang-ky', 2, N'_self', 1, 2)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuType] ON 

INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (1, N'Menu chính')
INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (2, N'Menu top')
SET IDENTITY_INSERT [dbo].[MenuType] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (1, CAST(N'2015-09-10T22:51:27.657' AS DateTime), NULL, N'toanbn', N'2312412', N'hn', N'ngoctoan89@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (2, CAST(N'2015-09-12T21:45:35.777' AS DateTime), NULL, N'toàn', N'0966036626', N'Xuân Đỉnh Từ Liêm Hà Nội', N'toanbn@esvn.com.vn', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (3, CAST(N'2015-09-12T21:46:10.357' AS DateTime), NULL, N'toàn', N'0966036626', N'Xuân Đỉnh Từ Liêm Hà Nội', N'toanbn@esvn.com.vn', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (4, CAST(N'2015-09-12T21:47:26.417' AS DateTime), NULL, N'toanbn', N'0966036626', N'Xuân Đỉnh Từ Liêm Hà Nội', N'toanbn@esvn.com.vn', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (5, CAST(N'2015-09-12T21:49:37.137' AS DateTime), NULL, N'eq', N'eqw', N'Xuân Đỉnh Từ Liêm Hà Nội', N'eqw', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (6, CAST(N'2015-09-12T21:55:54.457' AS DateTime), NULL, N'toanbn', N'0966036626', N'23', N'131', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (7, CAST(N'2015-09-12T21:57:49.660' AS DateTime), NULL, N'423', N'423', N'423', N'423', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (8, CAST(N'2015-09-12T21:58:08.873' AS DateTime), NULL, N'423', N'423', N'423', N'423', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (9, CAST(N'2015-09-12T21:59:23.833' AS DateTime), NULL, N'423', N'424', N'424', N'42', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10, CAST(N'2015-09-12T22:01:38.170' AS DateTime), NULL, N'534', N'53', N'543', N'534', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (11, CAST(N'2015-09-13T06:58:46.767' AS DateTime), NULL, N'4', N'423', N'423', N'423', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (12, CAST(N'2015-09-13T07:00:01.937' AS DateTime), NULL, N'34', N'423', N'432', N'423', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (13, CAST(N'2015-09-13T07:07:01.167' AS DateTime), NULL, N'423', N'423', N'423', N'423', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (14, CAST(N'2015-09-13T07:18:25.970' AS DateTime), NULL, N'toanbn', N'423', N'423', N'423', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (15, CAST(N'2015-09-13T07:21:34.320' AS DateTime), NULL, N'34', N'342', N'424', N'42', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (16, CAST(N'2015-09-13T07:24:01.707' AS DateTime), NULL, N'342', N'432', N'423', N'432', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (17, CAST(N'2015-09-13T07:47:09.587' AS DateTime), NULL, N'342', N'234', N'424', N'423', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (18, CAST(N'2015-09-13T07:47:30.560' AS DateTime), NULL, N'342', N'234', N'424', N'423', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (19, CAST(N'2015-09-13T07:47:42.443' AS DateTime), NULL, N'342', N'234', N'424', N'ngoctoan89@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (20, CAST(N'2021-06-15T21:25:55.863' AS DateTime), NULL, NULL, NULL, N'Binh Duong', N'trankhachuan13101999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (21, CAST(N'2021-06-15T21:32:35.930' AS DateTime), NULL, N'loc123', N'2525252', N'Binh Duong', N'emlunemcoquyen_100@yahoo.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (22, CAST(N'2021-06-15T21:42:39.523' AS DateTime), NULL, N'nhatwipu', N'123123214321', N'Đồng Nai', N'nhat@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (23, CAST(N'2021-06-18T21:44:51.600' AS DateTime), NULL, N'huanprovip', N'0979460676', N'Đồng Nai', N'emlunemcoquyen_100@yahoo.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (25, CAST(N'2021-06-19T20:33:39.667' AS DateTime), NULL, N'Loc456', N'0979460676', N'Binh Duong', N'cc@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (26, CAST(N'2021-06-19T20:49:13.253' AS DateTime), NULL, N'nhatwipuu', N'0979460676', N'Đồng Nai', N'nhatlol@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (27, CAST(N'2021-06-19T20:54:17.957' AS DateTime), NULL, N'luanlol', N'123321', N'Đồng Nai', N'nhat@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (28, CAST(N'2021-06-19T21:26:04.767' AS DateTime), NULL, N'huantran99', N'0979460676', N'Binh Duong', N'trankhachuan13101999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (29, CAST(N'2021-07-03T20:32:58.657' AS DateTime), NULL, N'Trần Khắc Huân', N'0979460676', N'Binh Duong', N'emlunemcoquyen_100@yahoo.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (30, CAST(N'2021-07-03T20:35:14.527' AS DateTime), NULL, N'Trần Khắc Huân', N'0979460676', N'LHU', N'trankhachuan13101999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (31, CAST(N'2021-07-03T20:36:48.603' AS DateTime), NULL, N'Trần Khắc Huân', N'0979460676', N'LHU', N'emlunemcoquyen_100"yahoo.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (32, CAST(N'2021-07-03T20:40:27.067' AS DateTime), NULL, N'Trần Khắc Huân', N'0979460676', N'Đồng Nai', N'trankhachuan13101999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (33, CAST(N'2021-07-18T20:28:51.643' AS DateTime), NULL, N'Trần Khắc Tèo', N'0979460676', N'Binh Duong', N'cc@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (34, CAST(N'2021-08-17T10:44:54.263' AS DateTime), NULL, N'admin', N'123321', N'LHU', N'admin@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 15, 1, CAST(12535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 16, 1, CAST(12535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 1, 3, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 2, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 3, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 4, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 5, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 6, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 11, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 13, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 17, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 18, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 19, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 7, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 8, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 9, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 10, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 12, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 14, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (13, 21, 0, CAST(70000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (13, 24, 5, CAST(350000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (13, 25, 1, CAST(70000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (13, 28, 1, CAST(70000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (14, 20, 0, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (14, 23, 1, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (14, 25, 1, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (14, 27, 1, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (14, 28, 1, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (15, 22, 3, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (15, 23, 2, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (15, 24, 1, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (15, 26, 1, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (15, 28, 1, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (19, 26, 1, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (19, 27, 1, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (20, 25, 1, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (20, 26, 1, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (20, 32, 1, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (20, 34, 1, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (21, 27, 1, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (21, 30, 1, NULL)
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (21, 32, 1, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (21, 33, 1, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (48, 29, 3, NULL)
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (48, 30, 1, NULL)
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (48, 31, 1, CAST(41000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (48, 32, 2, CAST(41000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (48, 34, 1, CAST(41000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (49, 30, 1, NULL)
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (49, 31, 1, CAST(41000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (49, 33, 1, CAST(41000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (13, N'Bánh Gà Thần Thánh', NULL, N'banh-ga-than-thanh', N'Lorem', N'/Assets/Client/images/banhgathanthanh (1).png', NULL, CAST(70000 AS Decimal(18, 0)), NULL, NULL, 0, 1, NULL, NULL, CAST(N'2021-06-06T19:15:07.770' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2021-06-20T19:15:07.770' AS DateTime), 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (14, N'Gà Rán Ủ Hoa Tiêu', NULL, N'ga-ran-u-hoa-tieu', N'Lorem', N'/Assets/Client/images/garangau.png', NULL, CAST(100000 AS Decimal(18, 0)), NULL, NULL, 0, 1, NULL, NULL, CAST(N'2021-06-06T19:17:33.877' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (15, N'Bò Tơ Quán Mộc', NULL, N'bo-to-quan-moc', N'Lorem', N'/Assets/Client/images/botoquanmoc.png', NULL, CAST(100000 AS Decimal(18, 0)), NULL, NULL, 0, 1, NULL, NULL, CAST(N'2021-06-06T19:20:39.277' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (16, N'Bánh Mì Chảo', NULL, N'banh-mi-chao', N'Lorem', N'/Assets/Client/images/banhmichao.png', NULL, CAST(70000 AS Decimal(18, 0)), NULL, NULL, 0, 1, NULL, NULL, CAST(N'2021-06-06T19:23:25.010' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (17, N'Gà Rán Popeyes', NULL, N'ga-ran-popeyes', N'Lorem', N'/Assets/Client/images/garanpopeyes.png', NULL, CAST(100000 AS Decimal(18, 0)), NULL, NULL, 0, 1, NULL, NULL, CAST(N'2021-06-06T19:25:34.737' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2021-06-20T19:15:07.770' AS DateTime), 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (18, N'Bánh Cuốn Nóng', NULL, N'banh-cuon-nong', N'Lorem', N'/Assets/Client/images/banhcuonnong.png', NULL, CAST(55000 AS Decimal(18, 0)), NULL, NULL, 0, 1, NULL, NULL, CAST(N'2021-06-06T19:27:21.903' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (19, N'Sinh Tố Dâu', NULL, N'sinh-to-dau', N'Lorem', N'/Assets/Client/images/sinhtodau.png', NULL, CAST(100000 AS Decimal(18, 0)), NULL, NULL, 0, 2, NULL, NULL, CAST(N'2021-06-09T19:41:08.517' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2021-06-20T19:15:07.770' AS DateTime), 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (20, N'Sinh Tố Đu Đủ', NULL, N'sinh-to-du-du', N'Lorem', N'/Assets/Client/images/sinhtodudu.png', NULL, CAST(100000 AS Decimal(18, 0)), NULL, NULL, 0, 2, NULL, NULL, CAST(N'2021-06-09T19:41:54.240' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2021-10-20T19:15:07.770' AS DateTime), 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (21, N'Sinh Tố Bơ', NULL, N'sinh-to-bo', N'Lorem', N'/Assets/Client/images/sinhtobo.png', NULL, CAST(100000 AS Decimal(18, 0)), NULL, NULL, 0, 2, NULL, NULL, CAST(N'2021-06-09T19:44:07.890' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (22, N'Sữa Chua Trân Châu', NULL, N'sua-chua-tran-chau', N'Lorem', N'/Assets/Client/images/suachuatranchau.png', NULL, CAST(65000 AS Decimal(18, 0)), NULL, NULL, 0, 2, NULL, NULL, CAST(N'2021-06-09T19:54:58.993' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (23, N'Lục Trà Dâu', NULL, N'luc-tra-dau', N'Lorem', N'/Assets/Client/images/luctradau.png', NULL, CAST(45000 AS Decimal(18, 0)), NULL, NULL, 0, 2, NULL, NULL, CAST(N'2021-06-09T19:57:11.633' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (24, N'Trà Sữa Trân Châu', NULL, N'tra-sua-tran-chau', N'Lorem', N'/Assets/Client/images/trasuatranchau.png', NULL, CAST(53000 AS Decimal(18, 0)), NULL, NULL, 0, 2, NULL, NULL, CAST(N'2021-06-09T19:58:18.527' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (25, N'Trà Sữa Thảo Mộc', NULL, N'tra-sua-thao-moc', N'Lorem', N'/Assets/Client/images/trasuathaomoc.png', NULL, CAST(52000 AS Decimal(18, 0)), NULL, NULL, 0, 2, NULL, NULL, CAST(N'2021-06-09T19:59:35.533' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (26, N'Canh Chua Chay Nấm', NULL, N'canh-chua-chay-nam', N'Lorem', N'/Assets/Client/images/canhchuachaynam.png', NULL, CAST(55000 AS Decimal(18, 0)), NULL, NULL, 0, 3, NULL, NULL, CAST(N'2021-06-19T22:20:02.360' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (27, N'Súp Chay Rau Củ', NULL, N'sup-chay-rau-cu', N'Lorem', N'/Assets/Client/images/supchayraucu.png', NULL, CAST(45000 AS Decimal(18, 0)), NULL, NULL, 0, 3, NULL, NULL, CAST(N'2021-06-19T22:22:45.557' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (28, N'Canh Rong Biển Hạt Sen', NULL, N'canh-rong-bien-hat-sen', N'Loem', N'/Assets/Client/images/canhrongbienhatsen.png', NULL, CAST(45000 AS Decimal(18, 0)), NULL, NULL, 0, 3, NULL, NULL, CAST(N'2021-06-19T22:24:15.287' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (29, N'Canh Mướp Đắng Nấu Lạc', NULL, N'canh-muop-dang-nau-lac', N'Lorem', N'/Assets/Client/images/canhmuopdangnaulac.png', NULL, CAST(30000 AS Decimal(18, 0)), NULL, NULL, 0, 3, NULL, NULL, CAST(N'2021-06-19T22:25:41.013' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (30, N'Canh Chua Tảo Xoắn', N'C03', N'canh-chua-tao-xoan', N'Lorem', N'/Assets/Client/images/canhchuataoxoan.png', NULL, CAST(60000 AS Decimal(18, 0)), NULL, NULL, 0, 3, NULL, NULL, CAST(N'2021-06-19T22:26:38.400' AS DateTime), NULL, CAST(N'2021-06-22T12:36:31.287' AS DateTime), NULL, NULL, NULL, 1, CAST(N'2021-10-20T19:15:07.770' AS DateTime), 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (31, N'Canh Bí Đỏ Nấu Thịt Bằm Chay', NULL, N'canh-bi-do-nau-thit-bam-chay', N'Lorem', N'/Assets/Client/images/canhbidonauthitbamchay.png', NULL, CAST(45000 AS Decimal(18, 0)), NULL, NULL, 0, 3, NULL, NULL, CAST(N'2021-06-19T22:28:22.607' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (32, N'Bánh Tiramisu', NULL, N'banh-tiramisu', N'Loren', N'/Assets/Client/images/banhtiramisu.png', NULL, CAST(40000 AS Decimal(18, 0)), NULL, NULL, 0, 4, NULL, NULL, CAST(N'2021-06-28T10:41:33.040' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (33, N'Bánh Mousse Chanh Leo', NULL, N'banh-mousse-chanh-leo', N'Lorem', N'/Assets/Client/images/banhmoussechanhleo.png', NULL, CAST(30000 AS Decimal(18, 0)), NULL, NULL, 0, 4, NULL, NULL, CAST(N'2021-06-28T10:42:54.903' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (34, N'Bánh Bông Lan Trứng Muối', NULL, N'banh-bong-lan-trung-muoi', N'Lorem', N'/Assets/Client/images/banhbonglantrungmuoi.png', NULL, CAST(65000 AS Decimal(18, 0)), NULL, NULL, 0, 4, NULL, NULL, CAST(N'2021-06-28T10:44:00.390' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (35, N'Bánh Trà Sữa', NULL, N'banh-tra-sua', N'Lorem', N'/Assets/Client/images/banhtrasua.png', NULL, CAST(40000 AS Decimal(18, 0)), NULL, NULL, 0, 4, NULL, NULL, CAST(N'2021-06-28T10:44:40.267' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2021-10-20T19:15:07.770' AS DateTime), 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (36, N'Bánh Quy Trà Xanh', NULL, N'banh-quy-tra-xanh', N'Lorem', N'/Assets/Client/images/banhquytraxanh.png', NULL, CAST(18000 AS Decimal(18, 0)), NULL, NULL, 0, 4, NULL, NULL, CAST(N'2021-06-28T10:46:54.150' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (37, N'Su Kem Vani', NULL, N'su-kem-van-ni', N'Lorem', N'/Assets/Client/images/sukemvani.png', NULL, CAST(35000 AS Decimal(18, 0)), NULL, NULL, 0, 4, NULL, NULL, CAST(N'2021-06-28T10:48:00.647' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (38, N'Mì Trộn Thập Cẩm', NULL, N'mi-tron-thap-cam', N'Lorem', N'/Assets/Client/images/mitronthapcam.png', NULL, CAST(34000 AS Decimal(18, 0)), NULL, NULL, 0, 6, NULL, NULL, CAST(N'2021-06-28T10:52:31.727' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (39, N'Mì Trộn Xúc Xích', NULL, N'mi-tron-xuc-xich', N'Lorem', N'/Assets/Client/images/mitronxucxich.png', NULL, CAST(25000 AS Decimal(18, 0)), NULL, NULL, 0, 6, NULL, NULL, CAST(N'2021-06-28T10:53:13.403' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (40, N'Mì Trộn Trứng Cút', NULL, N'mi-tron-trung-cut', N'Lorem', N'/Assets/Client/images/mitrontrungcut.png', NULL, CAST(25000 AS Decimal(18, 0)), NULL, NULL, 0, 6, NULL, NULL, CAST(N'2021-06-28T10:53:52.037' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (41, N'Mì Trộn Rau Củ', NULL, N'mi-tron-rau-cu', N'Lorem', N'/Assets/Client/images/mitronraucu.png', NULL, CAST(22000 AS Decimal(18, 0)), NULL, NULL, 0, 6, NULL, NULL, CAST(N'2021-06-28T10:54:37.023' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (42, N'Mì Trộn Mực Xoắn', NULL, N'mi-tron-muc-xoan', N'Lorem', N'/Assets/Client/images/mitronmucxoan.png', NULL, CAST(25000 AS Decimal(18, 0)), NULL, NULL, 0, 6, NULL, NULL, CAST(N'2021-06-28T10:55:12.463' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (43, N'Mì Trộn Hồ Lô', NULL, N'mi-tron-ho-lo', N'Lorem', N'/Assets/Client/images/mitronholo.png', NULL, CAST(25000 AS Decimal(18, 0)), NULL, NULL, 0, 6, NULL, NULL, CAST(N'2021-06-28T10:55:50.200' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (44, N'Cơm Đùi Gà Sốt Cay', NULL, N'com-dui-ga-sot-cay', N'Lorem', N'/Assets/Client/images/comduigasotcay.png', NULL, CAST(36000 AS Decimal(18, 0)), NULL, NULL, 0, 7, NULL, NULL, CAST(N'2021-06-28T10:59:21.710' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (45, N'Cơm Đùi Gà Chua Ngọt', NULL, N'com-dui-ga-chua-ngot', N'Lorem', N'/Assets/Client/images/comduigachuangot.png', NULL, CAST(36000 AS Decimal(18, 0)), NULL, NULL, 0, 7, NULL, NULL, CAST(N'2021-06-28T11:00:34.253' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (46, N'Cơm Thịt Rang Cháy Cạnh', NULL, N'com-thit-rang-chay-canh', N'Lorem123', N'/Assets/Client/images/comthitrangchaycanh.png', NULL, CAST(40000 AS Decimal(18, 0)), NULL, NULL, 0, 7, NULL, NULL, CAST(N'2021-06-28T11:02:49.137' AS DateTime), NULL, CAST(N'2021-07-02T20:58:16.357' AS DateTime), NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (47, N'Cơm Gà Sốt Nấm', NULL, N'com-ga-sot-nam', N'Lorem', N'/Assets/Client/images/comgasotnam.png', NULL, CAST(37000 AS Decimal(18, 0)), NULL, NULL, 0, 7, NULL, NULL, CAST(N'2021-06-28T11:03:31.467' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (48, N'Cơm Cá Kho Riềng Sả', NULL, N'com-ca-kho-rieng-sa', N'Lorem', N'/Assets/Client/images/comcakhoriengsa.png', NULL, CAST(41000 AS Decimal(18, 0)), NULL, NULL, 0, 7, NULL, NULL, CAST(N'2021-06-28T11:04:12.507' AS DateTime), NULL, CAST(N'2021-07-02T20:46:59.657' AS DateTime), NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (49, N'Cơm Bò Sốt Tiêu Đen', NULL, N'com-bo-sot-tieu-den', N'Lorem', N'/Assets/Client/images/combosottieuden.png', NULL, CAST(41000 AS Decimal(18, 0)), NULL, NULL, 0, 7, NULL, NULL, CAST(N'2021-06-28T11:05:01.050' AS DateTime), NULL, CAST(N'2021-07-02T20:56:48.357' AS DateTime), NULL, NULL, NULL, 1, NULL, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (1, N'Food', N'food', NULL, 0, NULL, CAST(N'2015-08-26T19:00:44.567' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (2, N'Drink', N'drink', NULL, 1, NULL, CAST(N'2015-08-26T19:20:32.210' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (3, N'Vege', N'vege', NULL, 1, NULL, CAST(N'2015-08-26T19:20:32.210' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (4, N'Cakes', N'cake', NULL, 1, NULL, CAST(N'2015-08-26T19:20:32.210' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (5, N'Dessert', N'desset', NULL, 1, NULL, CAST(N'2015-08-26T19:20:32.210' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (6, N'Noodle', N'noodle', NULL, 1, NULL, CAST(N'2015-08-26T19:20:32.210' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (7, N'Rice', N'rice', NULL, 1, NULL, CAST(N'2015-08-26T19:20:32.210' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD_CONTENT', N'Thêm tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD_USER', N'Thêm user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'DELETE_USER', N'Xoá user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_CONTENT', N'Sửa tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_USER', N'Sửa user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'VIEW_USER', N'Xem danh sách user')
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (1, N'/assets/client/images/slide-2-image.jpg', 1, N'/', NULL, CAST(N'2015-08-26T19:21:44.440' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (2, N'/assets/client/images/slide-1-image.jpg', 2, N'/', NULL, CAST(N'2015-08-26T19:22:01.173' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
INSERT [dbo].[Tag] ([ID], [Name]) VALUES (N'thoi-su', N'thời sự')
INSERT [dbo].[Tag] ([ID], [Name]) VALUES (N'tin-tuc', N'tin tức')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (2, N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'MOD', N'toanf', N'hn', N'ngoctoan.dev@gmail.com', N'121', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (38, N'huantran99', N'd61423ac993e1371ce858e1e46b8b4fd', N'MEMBER', N'Trần Khắc Huân', N'Bình Dương', NULL, N'0979460676', NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (39, N'teo123', N'abbf7b69c9447a1e9b1819d0564eacde', N'MEMBER', N'TeoBom', N'Bình Dương', N'teolol@gmail.com', N'0979460676', NULL, NULL, CAST(N'2021-07-14T22:11:00.843' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'ADMIN', N'Quản trị')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MEMBER', N'Thành viên')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MOD', N'Moderatior')
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_ShowOnHome]  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_ViewCount]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Feedback_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Language] ADD  CONSTRAINT [DF_Language_IsDefault]  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_OrderDetail_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_ViewCount]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_ShowOnHome]  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_DisplayOrder]  DEFAULT ((1)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_GroupID]  DEFAULT ('MEMBER') FOR [GroupID]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  StoredProcedure [dbo].[SP_Account_Login]    Script Date: 8/19/2021 4:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SP_Account_Login]
    @UserName VARCHAR(20) ,
    @PassWord VARCHAR(20)
AS
    BEGIN
        DECLARE @count INT;
        DECLARE @res BIT;
        SELECT  @count = COUNT(*)
        FROM    [dbo].[User]
        WHERE   UserName = @UserName
                AND PassWord = @PassWord;
        IF @count > 0
            SET @res = 1;
        ELSE
            SET @res = 0;
        SELECT  @res;	
    END;
GO
USE [master]
GO
ALTER DATABASE [Db_Shop_Online] SET  READ_WRITE 
GO
