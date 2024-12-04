USE [master]
GO
/****** Object:  Database [hirent]    Script Date: 03/12/2024 20:46:32 ******/
CREATE DATABASE [hirent]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'hirent', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\hirent.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'hirent_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\hirent_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [hirent].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [hirent] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [hirent] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [hirent] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [hirent] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [hirent] SET ARITHABORT OFF 
GO
ALTER DATABASE [hirent] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [hirent] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [hirent] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [hirent] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [hirent] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [hirent] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [hirent] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [hirent] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [hirent] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [hirent] SET  DISABLE_BROKER 
GO
ALTER DATABASE [hirent] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [hirent] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [hirent] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [hirent] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [hirent] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [hirent] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [hirent] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [hirent] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [hirent] SET  MULTI_USER 
GO
ALTER DATABASE [hirent] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [hirent] SET DB_CHAINING OFF 
GO
ALTER DATABASE [hirent] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [hirent] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [hirent] SET DELAYED_DURABILITY = DISABLED 
GO
USE [hirent]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryCode] [nvarchar](100) NOT NULL,
	[CommonName] [nvarchar](100) NULL,
	[FormalName] [nvarchar](100) NULL,
	[CountryType] [nvarchar](100) NULL,
	[CountrySubType] [nvarchar](100) NULL,
	[Sovereignty] [nvarchar](100) NULL,
	[Capital] [nvarchar](100) NULL,
	[CurrencyCode] [nvarchar](100) NULL,
	[CurrencyName] [nvarchar](100) NULL,
	[TelephoneCode] [nvarchar](100) NULL,
	[CountryCode3] [nvarchar](100) NULL,
	[CountryNumber] [nvarchar](100) NULL,
	[InternetCountryCode] [nvarchar](100) NULL,
	[SortOrder] [int] NULL,
	[IsPublished] [bit] NULL,
	[Flags] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_About]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_About](
	[AboutArticleID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NULL,
	[Description] [nvarchar](150) NULL,
	[Contents] [ntext] NULL,
	[Image] [nvarchar](200) NULL,
	[Status] [varchar](50) NULL,
	[Kind] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [bigint] NULL,
	[UpdateDate] [datetime] NULL,
	[UrlFriendLy] [nvarchar](150) NULL,
	[MetaTitle] [nvarchar](200) NULL,
	[MetaDescription] [nvarchar](200) NULL,
	[MetaKeyWord] [nvarchar](500) NULL,
	[MetaImage] [nvarchar](200) NULL,
 CONSTRAINT [PK_tb_About] PRIMARY KEY CLUSTERED 
(
	[AboutArticleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Access]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Access](
	[LocalAccountID] [bigint] IDENTITY(1,1) NOT NULL,
	[AccessCount] [int] NULL,
 CONSTRAINT [PK_tb_TruyCap] PRIMARY KEY CLUSTERED 
(
	[LocalAccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_CategoryMain]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_CategoryMain](
	[MainCateID] [bigint] IDENTITY(1,1) NOT NULL,
	[MainCateName] [nvarchar](100) NOT NULL,
	[Sort] [int] NULL,
	[MainCateDesc] [nvarchar](100) NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NULL,
	[IsDisplay] [bit] NULL,
	[MainCateIcon] [varchar](20) NULL,
	[MainCateBanner] [ntext] NULL,
	[Language] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MainCateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_CategorySub1]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_CategorySub1](
	[SubCate1ID] [bigint] IDENTITY(1,1) NOT NULL,
	[SubCate1Name] [nvarchar](50) NULL,
	[MainCateID] [bigint] NULL,
	[IsDisplay] [bit] NULL,
	[SubCate1Desc] [nvarchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[Sort] [tinyint] NULL,
	[Language] [varchar](100) NULL,
 CONSTRAINT [PK_tb_CategorySub1] PRIMARY KEY CLUSTERED 
(
	[SubCate1ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_CategorySub2]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_CategorySub2](
	[SubCate2ID] [bigint] IDENTITY(1,1) NOT NULL,
	[SubCate2Name] [nvarchar](50) NULL,
	[SubCate1ID] [bigint] NULL,
	[IsDisplay] [bit] NULL,
	[SubCate2Desc] [nvarchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[Sort] [int] NULL,
	[Language] [varchar](100) NULL,
 CONSTRAINT [PK_tb_CategorySub2] PRIMARY KEY CLUSTERED 
(
	[SubCate2ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_CategorySub3]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_CategorySub3](
	[SubCate3ID] [bigint] IDENTITY(1,1) NOT NULL,
	[SubCate3Name] [nvarchar](50) NULL,
	[SubCate2ID] [bigint] NULL,
	[IsDisplay] [bit] NULL,
	[SubCate2Desc] [nvarchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[Sort] [tinyint] NULL,
 CONSTRAINT [PK_tb_CategorySub3] PRIMARY KEY CLUSTERED 
(
	[SubCate3ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_ContactMessage]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_ContactMessage](
	[MessageID] [int] NOT NULL,
	[LastName] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[PhoneNumber] [varchar](15) NULL,
	[EmailAddress] [varchar](50) NULL,
	[MessageTitle] [nvarchar](200) NULL,
	[CreateDate] [datetime] NULL,
	[IsRead] [varchar](10) NULL,
	[MessageContent] [ntext] NULL,
 CONSTRAINT [PK_tb_ContactMessage] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_ContactUs]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_ContactUs](
	[ContactID] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[CellPhone] [varchar](15) NULL,
	[HomePhone] [varchar](15) NULL,
	[IsDeleted] [bit] NULL,
	[Finished] [bit] NULL,
	[ReadNew] [bit] NULL,
	[MessageContent] [ntext] NULL,
	[CreateDate] [datetime] NULL,
	[ReadDate] [datetime] NULL,
	[FinishDate] [datetime] NULL,
	[Status] [tinyint] NULL,
 CONSTRAINT [PK_tb_ContactUs] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Counteronline]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Counteronline](
	[CounterID] [bigint] NOT NULL,
	[TotalUserOnline] [int] IDENTITY(1,1) NOT NULL,
	[TotalOnline] [int] NULL,
	[TotalClick] [int] NULL,
	[Flag] [tinyint] NULL,
 CONSTRAINT [PK_tb_Counteronline] PRIMARY KEY CLUSTERED 
(
	[CounterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Country]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryCode] [nvarchar](100) NOT NULL,
	[CommonName] [nvarchar](100) NULL,
	[FormalName] [nvarchar](100) NULL,
	[CountryType] [nvarchar](100) NULL,
	[CountrySubType] [nvarchar](100) NULL,
	[Sovereignty] [nvarchar](100) NULL,
	[Capital] [nvarchar](100) NULL,
	[CurrencyCode] [nvarchar](100) NULL,
	[CurrencyName] [nvarchar](100) NULL,
	[TelephoneCode] [nvarchar](100) NULL,
	[CountryCode3] [nvarchar](100) NULL,
	[CountryNumber] [nvarchar](100) NULL,
	[InternetCountryCode] [nvarchar](100) NULL,
	[SortOrder] [int] NULL,
	[IsPublished] [bit] NULL,
	[Flags] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Customer]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Customer](
	[CustomerID] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerNo] [varchar](50) NULL,
	[CustomerGroup] [int] NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Description] [ntext] NULL,
	[Birthday] [date] NULL,
	[Gender] [bit] NULL,
	[Phone] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[Status] [tinyint] NULL,
	[Avatar] [nvarchar](200) NULL,
	[CreateDate] [datetime] NULL,
	[ResetCode] [varchar](50) NULL,
	[ResetStatus] [bit] NULL,
	[ResetLastTime] [datetime] NULL,
 CONSTRAINT [PK_tb_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_CustomerDeliveryAddress]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_CustomerDeliveryAddress](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [bigint] NULL,
	[Address] [nvarchar](250) NULL,
	[Status] [int] NULL,
	[CreateDate] [datetime] NULL,
	[FullName] [nvarchar](100) NULL,
	[PhoneNumber] [varchar](15) NULL,
	[IsMacdinh] [int] NULL,
 CONSTRAINT [PK_tb_CustomerDeliveryAddress] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_DeliverySelection]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_DeliverySelection](
	[DeliverySelectionID] [bigint] IDENTITY(1,1) NOT NULL,
	[DeliveryName] [nvarchar](50) NULL,
	[DeliveryDescription] [nvarchar](200) NULL,
	[SortBy] [int] NULL,
	[DeliveryCost] [float] NULL,
	[Dichvuvanchuyen] [ntext] NULL,
	[Dichvulapdat] [ntext] NULL,
	[Totaldeposit] [float] NULL,
 CONSTRAINT [PK_tb_DeliverySelection] PRIMARY KEY CLUSTERED 
(
	[DeliverySelectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Deposit]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Deposit](
	[DepositId] [int] IDENTITY(1,1) NOT NULL,
	[DepositName] [nvarchar](200) NULL,
	[Prices] [float] NULL,
	[WishId] [int] NULL,
 CONSTRAINT [PK_tb_Deposit_1] PRIMARY KEY CLUSTERED 
(
	[DepositId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_District]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_District](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Type] [nvarchar](50) NULL,
	[LatiLongTude] [nvarchar](50) NULL,
	[ProvinceId] [int] NOT NULL,
	[SortOrder] [int] NULL,
	[IsPublished] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_DocumentSelection]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_DocumentSelection](
	[DocumentSelectionID] [bigint] IDENTITY(1,1) NOT NULL,
	[DocumentName] [nvarchar](50) NULL,
	[DocumentDescription] [nvarchar](200) NULL,
 CONSTRAINT [PK_tb_DocumentSelection] PRIMARY KEY CLUSTERED 
(
	[DocumentSelectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_GetLinkImage]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_GetLinkImage](
	[imgID] [int] IDENTITY(1,1) NOT NULL,
	[imgPath] [nvarchar](500) NULL,
	[imgUpload] [datetime] NULL,
 CONSTRAINT [PK_tb_GetLinkImage] PRIMARY KEY CLUSTERED 
(
	[imgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_GroupCustomer]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_GroupCustomer](
	[GroupCusID] [int] IDENTITY(1,1) NOT NULL,
	[GroupCusCode] [varchar](50) NULL,
	[GroupCusName] [nvarchar](100) NULL,
	[GroupCusDesc] [ntext] NULL,
	[GroupCusValue] [float] NULL,
	[IsDisplay] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[GroupCusCreate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupCusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_HomeBanner]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_HomeBanner](
	[HomeBannerID] [bigint] IDENTITY(1,1) NOT NULL,
	[BannerGroup] [nvarchar](50) NULL,
	[BannerDescription] [nvarchar](100) NULL,
	[BannerLandingpage] [varchar](100) NULL,
	[BannerPath] [ntext] NULL,
	[BannerUpload] [datetime] NULL,
 CONSTRAINT [PK_tb_Home_Banner] PRIMARY KEY CLUSTERED 
(
	[HomeBannerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_HomeMainBanner]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_HomeMainBanner](
	[HomeMainBannerID] [bigint] IDENTITY(1,1) NOT NULL,
	[BannerPath] [nvarchar](100) NULL,
	[BannerDescription] [nvarchar](250) NULL,
	[BannerLandingpage] [ntext] NULL,
	[BannerUpload] [datetime] NULL,
	[BannerHeader1] [nvarchar](100) NULL,
	[BannerHeader2] [nvarchar](100) NULL,
	[SortArr] [int] NULL,
 CONSTRAINT [PK_tb_HomeMainBanner] PRIMARY KEY CLUSTERED 
(
	[HomeMainBannerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_HomeProductGroup]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_HomeProductGroup](
	[ProductGroupID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductGroupName] [nvarchar](50) NULL,
	[Sort] [tinyint] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_tb_Home_ProductGroup] PRIMARY KEY CLUSTERED 
(
	[ProductGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Language]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Language](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Language_name] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_LocalAccount]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_LocalAccount](
	[LocalAccountID] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountCode] [varchar](50) NULL,
	[FirstName] [nvarchar](20) NULL,
	[LastName] [nvarchar](20) NULL,
	[UserName] [varchar](20) NULL,
	[Password] [varchar](50) NULL,
	[Birthday] [date] NULL,
	[Gender] [bit] NULL,
	[Phone] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[Status] [tinyint] NULL,
	[PermissionID] [bigint] NULL,
	[Avatar] [nvarchar](200) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Account] PRIMARY KEY CLUSTERED 
(
	[LocalAccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Order]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Order](
	[OrderID] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerID] [bigint] NULL,
	[OrderCode] [varchar](50) NULL,
	[OrderType] [tinyint] NULL,
	[DiscountAmount] [float] NULL,
	[CreateDate] [datetime] NULL,
	[PickupTime] [datetime] NULL,
	[ReturnTime] [datetime] NULL,
	[Quantity] [int] NULL,
	[ServiceSelectionID] [bigint] NULL,
	[DeliverySelectionID] [bigint] NULL,
	[DocumentSelectionID] [bigint] NULL,
	[TotalDepositAmount] [float] NULL,
	[TotalOrderValue] [float] NULL,
	[OrderStatus] [tinyint] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatingStatus] [bit] NULL,
	[productId] [bigint] NULL,
	[TotalTimes] [int] NULL,
	[TotalPriceAccess] [bigint] NULL,
	[TotalPrices] [bigint] NULL,
	[IsDisplay] [int] NULL,
	[TotalInstall] [bigint] NULL,
	[TotalDelivery] [bigint] NULL,
	[TotalOrders] [bigint] NULL,
	[DepositId] [int] NULL,
	[Dichvuvanchuyen] [ntext] NULL,
	[Dichvulapdat] [ntext] NULL,
	[Totaldeposit] [ntext] NULL,
	[hinhthuc] [int] NULL,
	[hinhthuccontent] [ntext] NULL,
	[Ghichucoc1] [ntext] NULL,
	[Ghichucoc2] [ntext] NULL,
 CONSTRAINT [PK__tb_Order__EC9FA95543E2EC44] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_OrderAccessorySelection]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_OrderAccessorySelection](
	[AccessorySelectionID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderID] [bigint] NULL,
	[ProductID] [bigint] NULL,
	[Quantity] [int] NULL,
	[Totals] [float] NULL,
 CONSTRAINT [PK_tb_Order_AccessorySelection] PRIMARY KEY CLUSTERED 
(
	[AccessorySelectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_OrderTrackingUpdate]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_OrderTrackingUpdate](
	[OrderTrackingUpdateID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[LocalAccount] [bigint] NULL,
	[CreateDate] [datetime] NULL,
	[ReturnDate] [datetime] NULL,
 CONSTRAINT [PK_tb_order_trackingUpdate] PRIMARY KEY CLUSTERED 
(
	[OrderTrackingUpdateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Permission]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Permission](
	[PermissionID] [bigint] IDENTITY(1,1) NOT NULL,
	[PermissionName] [nvarchar](150) NULL,
	[PermissionDescription] [nvarchar](300) NULL,
 CONSTRAINT [PK_tb_Permission] PRIMARY KEY CLUSTERED 
(
	[PermissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Pre_Order]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Pre_Order](
	[pOrderId] [int] IDENTITY(1,1) NOT NULL,
	[customerId] [bigint] NULL,
	[productId] [bigint] NULL,
	[status] [int] NULL,
	[createTime] [datetime] NULL,
	[Totals] [float] NULL,
 CONSTRAINT [PK__tb_Pre_Order] PRIMARY KEY CLUSTERED 
(
	[pOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Pre_Order_accompanying]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Pre_Order_accompanying](
	[pAccompId] [int] IDENTITY(1,1) NOT NULL,
	[pOrderId] [int] NULL,
	[accompanyingQty] [int] NULL,
	[productId] [bigint] NULL,
	[status] [int] NULL,
	[createTimeClone] [datetime] NULL,
	[Totals] [float] NULL,
 CONSTRAINT [PK__tb_Pre_Order_accompanying] PRIMARY KEY CLUSTERED 
(
	[pAccompId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Pre_Order_Details]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Pre_Order_Details](
	[pOrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[pOrderId] [int] NULL,
	[rentalType] [int] NULL,
	[productQty] [int] NULL,
	[timePickup] [varchar](50) NULL,
	[timeReturn] [varchar](50) NULL,
	[serviceId] [int] NULL,
	[depositId] [int] NULL,
	[deliveryId] [int] NULL,
	[deliveryAddress] [int] NULL,
	[deliveryNote] [nvarchar](500) NULL,
	[paymentMethodId] [int] NULL,
	[createTimeClone] [datetime] NULL,
	[OrderCode] [nvarchar](50) NULL,
	[Totals] [float] NULL,
	[TotalInstall] [float] NULL,
	[TotalDelivery] [float] NULL,
	[Dichvuvanchuyen] [ntext] NULL,
	[Dichvulapdat] [ntext] NULL,
	[Totaldeposit] [float] NULL,
	[hinhthuc] [int] NULL,
	[hinhthuccontent] [ntext] NULL,
	[GhichuDichVu] [ntext] NULL,
	[GhiChuVanChuyen] [ntext] NULL,
	[Ghichucoc1] [ntext] NULL,
	[Ghichucoc2] [ntext] NULL,
	[Imagegc1] [ntext] NULL,
	[Imagegc2] [ntext] NULL,
 CONSTRAINT [PK__tb_Pre_Order_Details] PRIMARY KEY CLUSTERED 
(
	[pOrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Product]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Product](
	[ProductID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductCode] [nvarchar](500) NULL,
	[ProductName] [nvarchar](500) NULL,
	[ProductAvatar] [ntext] NULL,
	[ProductCity] [nvarchar](100) NULL,
	[ProductDistrict] [nvarchar](100) NULL,
	[ProductWard] [nvarchar](100) NULL,
	[ShortDescription] [ntext] NULL,
	[FullDescription] [ntext] NULL,
	[ProductSpecification] [ntext] NULL,
	[ProductInstruction] [ntext] NULL,
	[StatusPercentage] [int] NULL,
	[StatusAvailability] [tinyint] NULL,
	[PricePerBlock] [nvarchar](500) NULL,
	[PricePerDay] [nvarchar](500) NULL,
	[PricePerMonth] [nvarchar](500) NULL,
	[ProductMainCate] [bigint] NULL,
	[ProductSubCate1] [bigint] NULL,
	[ProductSubCate2] [bigint] NULL,
	[ProductSubCate3] [bigint] NULL,
	[CreateDate] [datetime] NULL,
	[ProductValue] [float] NULL,
	[ListBy1] [varchar](10) NULL,
	[ListBy2] [varchar](10) NULL,
	[ListBy3] [varchar](10) NULL,
	[ListBy4] [varchar](10) NULL,
	[ListBy5] [varchar](10) NULL,
	[ListBy6] [varchar](10) NULL,
	[ListBy7] [varchar](10) NULL,
	[YoutubeLink] [varchar](60) NULL,
	[Language] [varchar](255) NULL,
	[Position] [int] NULL,
	[Makho] [nvarchar](50) NULL,
	[Hinhthucdatcoc] [int] NULL,
	[Cocbangtienmat] [int] NULL,
	[Cocbanggiayto] [int] NULL,
	[Cocbanggiaytovahopdong] [int] NULL,
	[Cocbanggiaytovahopdongprice] [float] NULL,
	[Cocbangtaisan] [int] NULL,
	[Soluongton] [int] NULL,
 CONSTRAINT [PK_tb_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Product_Translation]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Product_Translation](
	[ProductID_EN] [int] IDENTITY(1,1) NOT NULL,
	[ProductName_EN] [nvarchar](200) NOT NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[FullDescription_EN] [nvarchar](max) NULL,
	[Idproduct] [int] NULL,
	[PricePerBlock_EN] [nvarchar](500) NULL,
	[PricePerDay_EN] [nvarchar](500) NULL,
	[PricePerMonth_EN] [nvarchar](500) NULL,
	[IdLanguage] [varchar](200) NULL,
	[ProductSpecification] [ntext] NULL,
	[ProductInstruction] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID_EN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_ProductAccessorySelection]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_ProductAccessorySelection](
	[ProductAccessorySelectionID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductID] [bigint] NOT NULL,
	[ProductName] [nvarchar](100) NULL,
	[ProductCode] [varchar](50) NULL,
	[PricePerBlock] [float] NULL,
	[PricePerDay] [float] NULL,
	[ProductValue] [float] NULL,
 CONSTRAINT [PK_tb_Product_AccessorySelection] PRIMARY KEY CLUSTERED 
(
	[ProductAccessorySelectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_ProductAccompany]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_ProductAccompany](
	[ProductAccompany] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductID] [bigint] NULL,
	[ProductName] [nvarchar](100) NULL,
	[ProductCode] [varchar](50) NULL,
	[productAccAvatar] [ntext] NULL,
 CONSTRAINT [PK_tb_Product_accompany] PRIMARY KEY CLUSTERED 
(
	[ProductAccompany] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_ProductCategorySelection]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductCategorySelection](
	[ProductCatId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[ProductMainCate] [bigint] NULL,
	[ProductSubCate1] [bigint] NULL,
	[ProductSubCate2] [bigint] NULL,
	[ProductSubCate3] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductCatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_ProductGallery]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductGallery](
	[ImageID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductID] [bigint] NOT NULL,
	[ImagePath] [nvarchar](250) NULL,
 CONSTRAINT [PK_tb_ProductGallery] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_ProductHomeProductGroup]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductHomeProductGroup](
	[ProductHomeProductGroupID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductID] [bigint] NOT NULL,
	[ProductGroupID] [bigint] NOT NULL,
 CONSTRAINT [PK_tb_Product_HomeProductGroup] PRIMARY KEY CLUSTERED 
(
	[ProductHomeProductGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_ProductPricePerDay]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductPricePerDay](
	[PPDId] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Block1] [float] NULL,
	[Block2] [float] NULL,
	[Block3] [float] NULL,
	[Block4] [float] NULL,
	[Block5] [float] NULL,
	[Block6] [float] NULL,
	[Block7] [float] NULL,
	[Block8] [float] NULL,
	[Block9] [float] NULL,
	[Block10] [float] NULL,
	[Block11] [float] NULL,
	[Block12] [float] NULL,
	[Block13] [float] NULL,
	[Block14] [float] NULL,
	[Block15] [float] NULL,
	[Block16] [float] NULL,
	[Block17] [float] NULL,
	[Block18] [float] NULL,
	[Block19] [float] NULL,
	[Block20] [float] NULL,
	[Block21] [float] NULL,
	[Block22] [float] NULL,
	[Block23] [float] NULL,
	[Block24] [float] NULL,
	[Block25] [float] NULL,
	[Block26] [float] NULL,
	[Block27] [float] NULL,
	[Block28] [float] NULL,
	[Block29] [float] NULL,
	[Block30] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[PPDId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_ProductPricePerHour]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductPricePerHour](
	[PPHId] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Block1] [float] NULL,
	[Block2] [float] NULL,
	[Block3] [float] NULL,
	[Block4] [float] NULL,
	[Block5] [float] NULL,
	[Block6] [float] NULL,
	[Block7] [float] NULL,
	[Block8] [float] NULL,
	[Block9] [float] NULL,
	[Block10] [float] NULL,
	[Block11] [float] NULL,
	[Block12] [float] NULL,
	[Block13] [float] NULL,
	[Block14] [float] NULL,
	[Block15] [float] NULL,
	[Block16] [float] NULL,
	[Block17] [float] NULL,
	[Block18] [float] NULL,
	[Block19] [float] NULL,
	[Block20] [float] NULL,
	[Block21] [float] NULL,
	[Block22] [float] NULL,
	[Block23] [float] NULL,
	[Block24] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[PPHId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_ProductPricePerMonth]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductPricePerMonth](
	[PPMId] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[Block1] [float] NULL,
	[Block2] [float] NULL,
	[Block3] [float] NULL,
	[Block4] [float] NULL,
	[Block5] [float] NULL,
	[Block6] [float] NULL,
	[Block7] [float] NULL,
	[Block8] [float] NULL,
	[Block9] [float] NULL,
	[Block10] [float] NULL,
	[Block11] [float] NULL,
	[Block12] [float] NULL,
 CONSTRAINT [PK_tb_ProductPricePerMonth] PRIMARY KEY CLUSTERED 
(
	[PPMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_ProductTermConditionDetails]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductTermConditionDetails](
	[PrDetailsId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NULL,
	[WarehouseId] [bigint] NULL,
	[CostInstallation] [float] NULL,
	[CostDelivery] [float] NULL,
	[CostInstallAndDelivery] [float] NULL,
	[CostReservation] [float] NULL,
	[CostDepositValue] [float] NULL,
	[CostDepositDocument] [float] NULL,
	[CreateTime] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[Tuvanchuyen] [ntext] NULL,
	[Giaotannha] [ntext] NULL,
	[Nhantratannha] [ntext] NULL,
	[Giaovanhantratannha] [ntext] NULL,
	[Tulapdat] [ntext] NULL,
	[Huongdansudung] [ntext] NULL,
	[Thotoilap] [ntext] NULL,
	[Thotoithao] [ntext] NULL,
	[Thodenlapvathao] [ntext] NULL,
 CONSTRAINT [PK__tb_ProductTermConditionDetails] PRIMARY KEY CLUSTERED 
(
	[PrDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_ProductTermConditionDetails_Translation]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductTermConditionDetails_Translation](
	[PrDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[IdLanguage] [nvarchar](200) NULL,
	[CostInstallation] [float] NULL,
	[CostDelivery] [float] NULL,
	[CostInstallAndDelivery] [float] NULL,
	[CostReservation] [float] NULL,
	[CostDepositValue] [float] NULL,
	[CostDepositDocument] [float] NULL,
	[CreateTime] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[Tuvanchuyen] [ntext] NULL,
	[Giaotannha] [ntext] NULL,
	[Nhantratannha] [ntext] NULL,
	[Giaovanhantratannha] [ntext] NULL,
	[Tulapdat] [ntext] NULL,
	[Huongdansudung] [ntext] NULL,
	[Thotoilap] [ntext] NULL,
	[Thotoithao] [ntext] NULL,
	[Thodenlapvathao] [ntext] NULL,
 CONSTRAINT [PK__tb_Produ__53F9FEC06FA88FF2] PRIMARY KEY CLUSTERED 
(
	[PrDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Promotion]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Promotion](
	[PromotionID] [bigint] IDENTITY(1,1) NOT NULL,
	[DiscountByPercentage] [float] NULL,
	[DiscountByPrice] [float] NULL,
	[CreateDate] [datetime] NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Status] [tinyint] NULL,
	[KindPromotion] [tinyint] NULL,
 CONSTRAINT [PK_tb_Sale] PRIMARY KEY CLUSTERED 
(
	[PromotionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Province]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Province](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Type] [nvarchar](20) NULL,
	[TelephoneCode] [int] NULL,
	[ZipCode] [nvarchar](20) NULL,
	[CountryId] [int] NOT NULL,
	[CountryCode] [nvarchar](2) NULL,
	[SortOrder] [int] NULL,
	[IsPublished] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Province] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_ServiceSelection]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ServiceSelection](
	[ServiceSelectionID] [bigint] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](200) NULL,
	[ServiceDescription] [nvarchar](500) NULL,
	[ServiceCost] [float] NULL,
	[SortBy] [int] NULL,
 CONSTRAINT [PK_tb_ServiceSelection] PRIMARY KEY CLUSTERED 
(
	[ServiceSelectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_SiteMap]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_SiteMap](
	[SiteMapID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NULL,
	[Description] [nvarchar](150) NULL,
	[Contents] [ntext] NULL,
	[Image] [nvarchar](200) NULL,
	[Status] [tinyint] NULL,
	[Kind] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [bigint] NULL,
	[UpdateDate] [datetime] NULL,
	[UrlFriendLy] [nvarchar](150) NULL,
	[MetaTitle] [nvarchar](200) NULL,
	[MetaDescription] [nvarchar](200) NULL,
	[MetaKeyWord] [nvarchar](500) NULL,
	[MetaImage] [nvarchar](200) NULL,
 CONSTRAINT [PK_tb_SiteMap] PRIMARY KEY CLUSTERED 
(
	[SiteMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_stockTemp]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_stockTemp](
	[stockTempId] [int] IDENTITY(1,1) NOT NULL,
	[idProduct] [int] NULL,
	[Quatity] [int] NULL,
 CONSTRAINT [PK_tb_stockTemp] PRIMARY KEY CLUSTERED 
(
	[stockTempId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_stockTempLog]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_stockTempLog](
	[stockTempLogID] [int] IDENTITY(1,1) NOT NULL,
	[stockTempId] [int] NULL,
	[createDate] [datetime] NULL,
	[Qty] [int] NULL,
 CONSTRAINT [PK_stockTempLog] PRIMARY KEY CLUSTERED 
(
	[stockTempLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Ward]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Ward](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[LatiLongTude] [nvarchar](50) NULL,
	[DistrictID] [int] NOT NULL,
	[SortOrder] [int] NOT NULL CONSTRAINT [DF_Ward_SortOrder]  DEFAULT ((1)),
	[IsPublished] [bit] NULL CONSTRAINT [DF_Ward_IsPublished]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Ward] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_WareHouse]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_WareHouse](
	[whId] [bigint] IDENTITY(1,1) NOT NULL,
	[WarehouseCode] [varchar](50) NOT NULL,
	[WarehouseName] [nvarchar](200) NULL,
	[WarehouseAddress] [nvarchar](500) NULL,
	[whOpenTime] [varchar](50) NULL,
	[whCloseTime] [varchar](50) NULL,
	[IsDeleted] [bit] NULL,
	[IsDisplay] [bit] NULL,
	[createTime] [datetime] NULL,
	[Images] [varchar](max) NULL,
	[Policy] [nvarchar](max) NULL,
	[Phone] [ntext] NULL,
	[Zalo] [ntext] NULL,
	[Messenger] [ntext] NULL,
	[Skype] [ntext] NULL,
	[Email] [ntext] NULL,
	[Icons] [ntext] NULL,
	[Hopdong] [ntext] NULL,
	[ChinhSach] [ntext] NULL,
	[NgayTaoChinhSach] [datetime] NULL,
	[BannerImage] [ntext] NULL,
	[LocationMap] [ntext] NULL,
 CONSTRAINT [PK__tb_Wareh__86B294E2D96A490F] PRIMARY KEY CLUSTERED 
(
	[whId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_WareHouse_Day]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_WareHouse_Day](
	[whdid] [int] IDENTITY(1,1) NOT NULL,
	[whdName] [nvarchar](200) NULL,
	[whTimeClose] [datetime] NULL,
	[whId] [int] NULL,
 CONSTRAINT [PK_tb_WareHouse_Day] PRIMARY KEY CLUSTERED 
(
	[whdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_WareHouse_Time]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_WareHouse_Time](
	[whtid] [int] IDENTITY(1,1) NOT NULL,
	[whId] [int] NULL,
	[whOpenTime] [nvarchar](50) NULL,
	[whCloseTime] [nvarchar](50) NULL,
	[whOpenTime2] [nvarchar](50) NULL,
	[whCloseTime2] [nvarchar](50) NULL,
	[FromDayOfWeek] [nvarchar](200) NULL,
	[ToDayOfWeek] [int] NULL,
	[whOpenTime3] [nvarchar](50) NULL,
	[whCloseTime3] [nvarchar](50) NULL,
	[Title1] [nvarchar](255) NULL,
	[Title2] [nvarchar](255) NULL,
	[Title3] [nvarchar](255) NULL,
 CONSTRAINT [PK_dbo.warehouse_time] PRIMARY KEY CLUSTERED 
(
	[whtid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_WishList]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_WishList](
	[WishListID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductID] [bigint] NOT NULL,
	[CustomerID] [bigint] NOT NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_tb_WishList] PRIMARY KEY CLUSTERED 
(
	[WishListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TimeBlock]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeBlock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FromTime] [nvarchar](50) NULL,
	[ToTime] [nvarchar](50) NULL,
	[ForDays] [nvarchar](50) NULL,
	[whId] [int] NULL,
	[DisplayOrder] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tinhthanhpho]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tinhthanhpho](
	[MaTP] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Type] [nvarchar](255) NULL,
	[Slug] [nvarchar](255) NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (1, N'AC', N'Ascension', N'', N'Proto Dependency', N'Dependency of Saint Helena', N'United Kingdom', N'Georgetown', N'SHP', N'Pound', N'247', N'ASC', N'', N'.ac', 16, 1, N'ac.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (2, N'AD', N'Andorra', N'Principality of Andorra', N'Independent State', NULL, NULL, N'Andorra la Vella', N'EUR', N'Euro', N'376', N'AND', N'20', N'.ad', 6, 1, N'ad.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (3, N'AE', N'United Arab Emirates', N'United Arab Emirates', N'Independent State', NULL, NULL, N'Abu Dhabi', N'AED', N'Dirham', N'971', N'ARE', N'784', N'.ae', 232, 1, N'ae.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (4, N'AF', N'Afghanistan', N'Islamic State of Afghanistan', N'Independent State', NULL, NULL, N'Kabul', N'AFN', N'Afghani', N'93', N'AFG', N'4', N'.af', 2, 1, N'af.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (5, N'AG', N'Antigua and Barbuda', NULL, N'Independent State', NULL, NULL, N'Saint John''s', N'XCD', N'Dollar', N'+1-268', N'ATG', N'28', N'.ag', 10, 1, N'ag.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (6, N'AI', N'Anguilla', NULL, N'Dependency', N'Overseas Territory', N'United Kingdom', N'The Valley', N'XCD', N'Dollar', N'+1-264', N'AIA', N'660', N'.ai', 8, 1, N'ai.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (7, N'AL', N'Albania', N'Republic of Albania', N'Independent State', NULL, NULL, N'Tirana', N'ALL', N'Lek', N'355', N'ALB', N'8', N'.al', 3, 1, N'al.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (8, N'AM', N'Armenia', N'Republic of Armenia', N'Independent State', NULL, NULL, N'Yerevan', N'AMD', N'Dram', N'374', N'ARM', N'51', N'.am', 12, 1, N'am.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (9, N'AN', N'Netherlands Antilles', NULL, N'Proto Dependency', NULL, N'Netherlands', N'Willemstad', N'ANG', N'Guilder', N'599', N'ANT', N'530', N'.an', 158, 1, N'an.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (10, N'AO', N'Angola', N'Republic of Angola', N'Independent State', NULL, NULL, N'Luanda', N'AOA', N'Kwanza', N'244', N'AGO', N'24', N'.ao', 7, 1, N'ao.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (11, N'AQ', N'Antarctica', NULL, N'Disputed Territory', NULL, N'Undetermined', NULL, NULL, NULL, NULL, N'ATA', N'10', N'.aq', 9, 1, N'aq.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (12, N'AR', N'Argentina', N'Argentine Republic', N'Independent State', NULL, NULL, N'Buenos Aires', N'ARS', N'Peso', N'54', N'ARG', N'32', N'.ar', 11, 1, N'ar.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (13, N'AS', N'American Samoa', N'Territory of American Samoa', N'Dependency', N'Territory', N'United States', N'Pago Pago', N'USD', N'Dollar', N'+1-684', N'ASM', N'16', N'.as', 5, 1, N'as.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (14, N'AT', N'Austria', N'Republic of Austria', N'Independent State', NULL, NULL, N'Vienna', N'EUR', N'Euro', N'43', N'AUT', N'40', N'.at', 16, 1, N'at.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (15, N'AU', N'Australia', N'Commonwealth of Australia', N'Independent State', NULL, NULL, N'Canberra', N'AUD', N'Dollar', N'61', N'AUS', N'36', N'.au', 15, 1, N'au.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (16, N'AW', N'Aruba', NULL, N'Proto Dependency', NULL, N'Netherlands', N'Oranjestad', N'AWG', N'Guilder', N'297', N'ABW', N'533', N'.aw', 13, 1, N'aw.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (17, N'AX', N'Aland', NULL, N'Proto Dependency', NULL, N'Finland', N'Mariehamn', N'EUR', N'Euro', N'+358-18', N'ALA', N'248', N'.ax', 2, 1, N'ax.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (18, N'AZ', N'Azerbaijan', N'Republic of Azerbaijan', N'Independent State', NULL, NULL, N'Baku', N'AZN', N'Manat', N'994', N'AZE', N'31', N'.az', 17, 1, N'az.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (19, N'BA', N'Bosnia and Herzegovina', NULL, N'Independent State', NULL, NULL, N'Sarajevo', N'BAM', N'Marka', N'387', N'BIH', N'70', N'.ba', 29, 1, N'ba.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (20, N'BB', N'Barbados', NULL, N'Independent State', NULL, NULL, N'Bridgetown', N'BBD', N'Dollar', N'+1-246', N'BRB', N'52', N'.bb', 21, 1, N'bb.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (21, N'BD', N'Bangladesh', N'People''s Republic of Bangladesh', N'Independent State', NULL, NULL, N'Dhaka', N'BDT', N'Taka', N'880', N'BGD', N'50', N'.bd', 20, 1, N'bd.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (22, N'BE', N'Belgium', N'Kingdom of Belgium', N'Independent State', NULL, NULL, N'Brussels', N'EUR', N'Euro', N'32', N'BEL', N'56', N'.be', 23, 1, N'be.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (23, N'BF', N'Burkina Faso', NULL, N'Independent State', NULL, NULL, N'Ouagadougou', N'XOF', N'Franc', N'226', N'BFA', N'854', N'.bf', 37, 1, N'bf.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (24, N'BG', N'Bulgaria', N'Republic of Bulgaria', N'Independent State', NULL, NULL, N'Sofia', N'BGN', N'Lev', N'359', N'BGR', N'100', N'.bg', 36, 1, N'bg.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (25, N'BH', N'Bahrain', N'Kingdom of Bahrain', N'Independent State', NULL, NULL, N'Manama', N'BHD', N'Dinar', N'973', N'BHR', N'48', N'.bh', 19, 1, N'bh.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (26, N'BI', N'Burundi', N'Republic of Burundi', N'Independent State', NULL, NULL, N'Bujumbura', N'BIF', N'Franc', N'257', N'BDI', N'108', N'.bi', 38, 1, N'bi.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (27, N'BJ', N'Benin', N'Republic of Benin', N'Independent State', NULL, NULL, N'Porto-Novo', N'XOF', N'Franc', N'229', N'BEN', N'204', N'.bj', 25, 1, N'bj.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (28, N'BM', N'Bermuda', NULL, N'Dependency', N'Overseas Territory', N'United Kingdom', N'Hamilton', N'BMD', N'Dollar', N'+1-441', N'BMU', N'60', N'.bm', 26, 1, N'bm.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (29, N'BN', N'Brunei', N'Negara Brunei Darussalam', N'Independent State', NULL, NULL, N'Bandar Seri Begawan', N'BND', N'Dollar', N'673', N'BRN', N'96', N'.bn', 35, 1, N'bn.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (30, N'BO', N'Bolivia', N'Republic of Bolivia', N'Independent State', NULL, NULL, N'La Paz (administrative/legislative) and Sucre (judical)', N'BOB', N'Boliviano', N'591', N'BOL', N'68', N'.bo', 28, 1, N'bo.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (31, N'BR', N'Brazil', N'Federative Republic of Brazil', N'Independent State', NULL, NULL, N'Brasilia', N'BRL', N'Real', N'55', N'BRA', N'76', N'.br', 32, 1, N'br.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (32, N'BS', N'Bahamas, The', N'Commonwealth of The Bahamas', N'Independent State', NULL, NULL, N'Nassau', N'BSD', N'Dollar', N'+1-242', N'BHS', N'44', N'.bs', 18, 1, N'bs.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (33, N'BT', N'Bhutan', N'Kingdom of Bhutan', N'Independent State', NULL, NULL, N'Thimphu', N'BTN', N'Ngultrum', N'975', N'BTN', N'64', N'.bt', 27, 1, N'bt.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (34, N'BV', N'Bouvet Island', NULL, N'Dependency', N'Territory', N'Norway', NULL, NULL, NULL, NULL, N'BVT', N'74', N'.bv', 31, 1, N'bv.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (35, N'BW', N'Botswana', N'Republic of Botswana', N'Independent State', NULL, NULL, N'Gaborone', N'BWP', N'Pula', N'267', N'BWA', N'72', N'.bw', 30, 1, N'bw.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (36, N'BY', N'Belarus', N'Republic of Belarus', N'Independent State', NULL, NULL, N'Minsk', N'BYR', N'Ruble', N'375', N'BLR', N'112', N'.by', 22, 1, N'by.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (37, N'BZ', N'Belize', NULL, N'Independent State', NULL, NULL, N'Belmopan', N'BZD', N'Dollar', N'501', N'BLZ', N'84', N'.bz', 24, 1, N'bz.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (38, N'CA', N'Canada', NULL, N'Independent State', NULL, NULL, N'Ottawa', N'CAD', N'Dollar', N'1', N'CAN', N'124', N'.ca', 41, 1, N'ca.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (39, N'CC', N'Cocos (Keeling) Islands', N'Territory of Cocos (Keeling) Islands', N'Dependency', N'External Territory', N'Australia', N'West Island', N'AUD', N'Dollar', N'61', N'CCK', N'166', N'.cc', 50, 1, N'cc.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (40, N'CD', N'Congo ? Kinshasa', N'Democratic Republic of the Congo', N'Independent State', NULL, NULL, N'Kinshasa', N'CDF', N'Franc', N'243', N'COD', N'180', N'.cd', 54, 1, N'cd.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (41, N'CF', N'Central African Republic', NULL, N'Independent State', NULL, NULL, N'Bangui', N'XAF', N'Franc', N'236', N'CAF', N'140', N'.cf', 44, 1, N'cf.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (42, N'CG', N'Congo ? Brazzaville', N'Republic of the Congo', N'Independent State', NULL, NULL, N'Brazzaville', N'XAF', N'Franc', N'242', N'COG', N'178', N'.cg', 53, 1, N'cg.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (43, N'CH', N'Switzerland', N'Swiss Confederation', N'Independent State', NULL, NULL, N'Bern', N'CHF', N'Franc', N'41', N'CHE', N'756', N'.ch', 213, 1, N'ch.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (44, N'CI', N'Cote d''Ivoire (Ivory Coast)', N'Republic of Cote d''Ivoire', N'Independent State', NULL, NULL, N'Yamoussoukro', N'XOF', N'Franc', N'225', N'CIV', N'384', N'.ci', 57, 1, N'ci.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (45, N'CK', N'Cook Islands', NULL, N'Dependency', N'Self-Governing in Free Association', N'New Zealand', N'Avarua', N'NZD', N'Dollar', N'682', N'COK', N'184', N'.ck', 55, 1, N'ck.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (46, N'CL', N'Chile', N'Republic of Chile', N'Independent State', NULL, NULL, N'Santiago (administrative/judical) and Valparaiso (legislative)', N'CLP', N'Peso', N'56', N'CHL', N'152', N'.cl', 46, 1, N'cl.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (47, N'CM', N'Cameroon', N'Republic of Cameroon', N'Independent State', NULL, NULL, N'Yaounde', N'XAF', N'Franc', N'237', N'CMR', N'120', N'.cm', 40, 1, N'cm.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (48, N'CN', N'China, People''s Republic of', N'People''s Republic of China', N'Independent State', NULL, NULL, N'Beijing', N'CNY', N'Yuan Renminbi', N'86', N'CHN', N'156', N'.cn', 47, 1, N'cn.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (49, N'CO', N'Colombia', N'Republic of Colombia', N'Independent State', NULL, NULL, N'Bogota', N'COP', N'Peso', N'57', N'COL', N'170', N'.co', 51, 1, N'co.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (50, N'CR', N'Costa Rica', N'Republic of Costa Rica', N'Independent State', NULL, NULL, N'San Jose', N'CRC', N'Colon', N'506', N'CRI', N'188', N'.cr', 56, 1, N'cr.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (51, N'CS', N'Kosovo', NULL, N'Disputed Territory', NULL, N'Administrated by the UN', N'Pristina', N'CSD and EUR', N'Dinar and Euro', N'381', N'SCG', N'891', N'.cs and .yu', 119, 1, N'cs.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (52, N'CU', N'Cuba', N'Republic of Cuba', N'Independent State', NULL, NULL, N'Havana', N'CUP', N'Peso', N'53', N'CUB', N'192', N'.cu', 59, 1, N'cu.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (53, N'CV', N'Cape Verde', N'Republic of Cape Verde', N'Independent State', NULL, NULL, N'Praia', N'CVE', N'Escudo', N'238', N'CPV', N'132', N'.cv', 42, 1, N'cv.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (54, N'CX', N'Christmas Island', N'Territory of Christmas Island', N'Dependency', N'External Territory', N'Australia', N'The Settlement (Flying Fish Cove)', N'AUD', N'Dollar', N'61', N'CXR', N'162', N'.cx', 49, 1, N'cx.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (55, N'CY', N'Cyprus', N'Republic of Cyprus', N'Independent State', NULL, NULL, N'Nicosia', N'CYP', N'Pound', N'357', N'CYP', N'196', N'.cy', 60, 1, N'cy.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (56, N'CZ', N'Czech Republic', NULL, N'Independent State', NULL, NULL, N'Prague', N'CZK', N'Koruna', N'420', N'CZE', N'203', N'.cz', 61, 1, N'cz.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (57, N'DE', N'Germany', N'Federal Republic of Germany', N'Independent State', NULL, NULL, N'Berlin', N'EUR', N'Euro', N'49', N'DEU', N'276', N'.de', 84, 1, N'de.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (58, N'DJ', N'Djibouti', N'Republic of Djibouti', N'Independent State', NULL, NULL, N'Djibouti', N'DJF', N'Franc', N'253', N'DJI', N'262', N'.dj', 63, 1, N'dj.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (59, N'DK', N'Denmark', N'Kingdom of Denmark', N'Independent State', NULL, NULL, N'Copenhagen', N'DKK', N'Krone', N'45', N'DNK', N'208', N'.dk', 62, 1, N'dk.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (60, N'DM', N'Dominica', N'Commonwealth of Dominica', N'Independent State', NULL, NULL, N'Roseau', N'XCD', N'Dollar', N'+1-767', N'DMA', N'212', N'.dm', 64, 1, N'dm.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (61, N'DO', N'Dominican Republic', NULL, N'Independent State', NULL, NULL, N'Santo Domingo', N'DOP', N'Peso', N'+1-809 and 1-829', N'DOM', N'214', N'.do', 65, 1, N'do.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (62, N'DZ', N'Algeria', N'People''s Democratic Republic of Algeria', N'Independent State', NULL, NULL, N'Algiers', N'DZD', N'Dinar', N'213', N'DZA', N'12', N'.dz', 4, 1, N'dz.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (63, N'EC', N'Ecuador', N'Republic of Ecuador', N'Independent State', NULL, NULL, N'Quito', N'USD', N'Dollar', N'593', N'ECU', N'218', N'.ec', 66, 1, N'ec.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (64, N'EE', N'Estonia', N'Republic of Estonia', N'Independent State', NULL, NULL, N'Tallinn', N'EEK', N'Kroon', N'372', N'EST', N'233', N'.ee', 71, 1, N'ee.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (65, N'EG', N'Egypt', N'Arab Republic of Egypt', N'Independent State', NULL, NULL, N'Cairo', N'EGP', N'Pound', N'20', N'EGY', N'818', N'.eg', 67, 1, N'eg.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (66, N'EH', N'Western Sahara', NULL, N'Disputed Territory', NULL, N'Administrated by Morocco', N'El-Aaiun', N'MAD', N'Dirham', N'212', N'ESH', N'732', N'.eh', 242, 1, N'eh.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (67, N'ER', N'Eritrea', N'State of Eritrea', N'Independent State', NULL, NULL, N'Asmara', N'ERN', N'Nakfa', N'291', N'ERI', N'232', N'.er', 70, 1, N'er.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (68, N'ES', N'Spain', N'Kingdom of Spain', N'Independent State', NULL, NULL, N'Madrid', N'EUR', N'Euro', N'34', N'ESP', N'724', N'.es', 205, 1, N'es.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (69, N'ET', N'Ethiopia', N'Federal Democratic Republic of Ethiopia', N'Independent State', NULL, NULL, N'Addis Ababa', N'ETB', N'Birr', N'251', N'ETH', N'231', N'.et', 72, 1, N'et.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (70, N'FI', N'Finland', N'Republic of Finland', N'Independent State', NULL, NULL, N'Helsinki', N'EUR', N'Euro', N'358', N'FIN', N'246', N'.fi', 76, 1, N'fi.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (71, N'FJ', N'Fiji', N'Republic of the Fiji Islands', N'Independent State', NULL, NULL, N'Suva', N'FJD', N'Dollar', N'679', N'FJI', N'242', N'.fj', 75, 1, N'fj.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (72, N'FK', N'Falkland Islands', NULL, N'Dependency', N'Overseas Territory', N'United Kingdom', N'Stanley', N'FKP', N'Pound', N'500', N'FLK', N'238', N'.fk', 73, 1, N'fk.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (73, N'FM', N'Micronesia', N'Federated States of Micronesia', N'Independent State', NULL, NULL, N'Palikir', N'USD', N'Dollar', N'691', N'FSM', N'583', N'.fm', 145, 1, N'fm.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (74, N'FO', N'Faroe Islands', NULL, N'Proto Dependency', NULL, N'Denmark', N'Torshavn', N'DKK', N'Krone', N'298', N'FRO', N'234', N'.fo', 74, 1, N'fo.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (75, N'FR', N'France', N'French Republic', N'Independent State', NULL, NULL, N'Paris', N'EUR', N'Euro', N'33', N'FRA', N'250', N'.fr', 77, 1, N'fr.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (76, N'GA', N'Gabon', N'Gabonese Republic', N'Independent State', NULL, NULL, N'Libreville', N'XAF', N'Franc', N'241', N'GAB', N'266', N'.ga', 81, 1, N'ga.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (77, N'GB', N'United Kingdom', N'United Kingdom of Great Britain and Northern Ireland', N'Independent State', NULL, NULL, N'London', N'GBP', N'Pound', N'44', N'GBR', N'826', N'.uk', 233, 1, N'gb.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (78, N'GD', N'Grenada', NULL, N'Independent State', NULL, NULL, N'Saint George''s', N'XCD', N'Dollar', N'+1-473', N'GRD', N'308', N'.gd', 89, 1, N'gd.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (79, N'GE', N'Georgia', N'Republic of Georgia', N'Independent State', NULL, NULL, N'Tbilisi', N'GEL', N'Lari', N'995', N'GEO', N'268', N'.ge', 83, 1, N'ge.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (80, N'GF', N'French Guiana', N'Overseas Region of Guiana', N'Proto Dependency', N'Overseas Region', N'France', N'Cayenne', N'EUR', N'Euro', N'594', N'GUF', N'254', N'.gf', 78, 1, N'gf.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (81, N'GG', N'Guernsey', N'Bailiwick of Guernsey', N'Dependency', N'Crown Dependency', N'United Kingdom', N'Saint Peter Port', N'GGP', N'Pound', N'44', N'GGY', N'831', N'.gg', 92, 1, N'gg.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (82, N'GH', N'Ghana', N'Republic of Ghana', N'Independent State', NULL, NULL, N'Accra', N'GHC', N'Cedi', N'233', N'GHA', N'288', N'.gh', 85, 1, N'gh.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (83, N'GI', N'Gibraltar', NULL, N'Dependency', N'Overseas Territory', N'United Kingdom', N'Gibraltar', N'GIP', N'Pound', N'350', N'GIB', N'292', N'.gi', 86, 1, N'gi.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (84, N'GL', N'Greenland', NULL, N'Proto Dependency', NULL, N'Denmark', N'Nuuk (Godthab)', N'DKK', N'Krone', N'299', N'GRL', N'304', N'.gl', 88, 1, N'gl.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (85, N'GM', N'Gambia, The', N'Republic of The Gambia', N'Independent State', NULL, NULL, N'Banjul', N'GMD', N'Dalasi', N'220', N'GMB', N'270', N'.gm', 82, 1, N'gm.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (86, N'GN', N'Guinea', N'Republic of Guinea', N'Independent State', NULL, NULL, N'Conakry', N'GNF', N'Franc', N'224', N'GIN', N'324', N'.gn', 93, 1, N'gn.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (87, N'GQ', N'Equatorial Guinea', N'Republic of Equatorial Guinea', N'Independent State', NULL, NULL, N'Malabo', N'XAF', N'Franc', N'240', N'GNQ', N'226', N'.gq', 69, 1, N'gq.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (88, N'GR', N'Greece', N'Hellenic Republic', N'Independent State', NULL, NULL, N'Athens', N'EUR', N'Euro', N'30', N'GRC', N'300', N'.gr', 87, 1, N'gr.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (89, N'GS', N'South Georgia Island', NULL, N'Dependency', N'Overseas Territory', N'United Kingdom', NULL, NULL, NULL, NULL, N'SGS', N'239', N'.gs', 204, 1, N'gs.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (90, N'GT', N'Guatemala', N'Republic of Guatemala', N'Independent State', NULL, NULL, N'Guatemala', N'GTQ', N'Quetzal', N'502', N'GTM', N'320', N'.gt', 91, 1, N'gt.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (91, N'GU', N'Guam', N'Territory of Guam', N'Dependency', N'Territory', N'United States', N'Hagatna', N'USD', N'Dollar', N'+1-671', N'GUM', N'316', N'.gu', 90, 1, N'gu.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (92, N'GW', N'Guinea-Bissau', N'Republic of Guinea-Bissau', N'Independent State', NULL, NULL, N'Bissau', N'XOF', N'Franc', N'245', N'GNB', N'624', N'.gw', 94, 1, N'gw.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (93, N'GY', N'Guyana', N'Co-operative Republic of Guyana', N'Independent State', NULL, NULL, N'Georgetown', N'GYD', N'Dollar', N'592', N'GUY', N'328', N'.gy', 95, 1, N'gy.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (94, N'HK', N'Hong Kong', N'Hong Kong Special Administrative Region', N'Proto Dependency', N'Special Administrative Region', N'China', NULL, N'HKD', N'Dollar', N'852', N'HKG', N'344', N'.hk', 99, 1, N'hk.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (95, N'HM', N'Heard and McDonald Islands', N'Territory of Heard Island and McDonald Islands', N'Dependency', N'External Territory', N'Australia', NULL, NULL, NULL, NULL, N'HMD', N'334', N'.hm', 97, 1, N'hm.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (96, N'HN', N'Honduras', N'Republic of Honduras', N'Independent State', NULL, NULL, N'Tegucigalpa', N'HNL', N'Lempira', N'504', N'HND', N'340', N'.hn', 98, 1, N'hn.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (97, N'HR', N'Croatia', N'Republic of Croatia', N'Independent State', NULL, NULL, N'Zagreb', N'HRK', N'Kuna', N'385', N'HRV', N'191', N'.hr', 58, 1, N'hr.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (98, N'HT', N'Haiti', N'Republic of Haiti', N'Independent State', NULL, NULL, N'Port-au-Prince', N'HTG', N'Gourde', N'509', N'HTI', N'332', N'.ht', 96, 1, N'ht.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (99, N'HU', N'Hungary', N'Republic of Hungary', N'Independent State', NULL, NULL, N'Budapest', N'HUF', N'Forint', N'36', N'HUN', N'348', N'.hu', 100, 1, N'hu.png', 0)
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (100, N'ID', N'Indonesia', N'Republic of Indonesia', N'Independent State', NULL, NULL, N'Jakarta', N'IDR', N'Rupiah', N'62', N'IDN', N'360', N'.id', 103, 1, N'id.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (101, N'IE', N'Ireland', NULL, N'Independent State', NULL, NULL, N'Dublin', N'EUR', N'Euro', N'353', N'IRL', N'372', N'.ie', 106, 1, N'ie.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (102, N'IL', N'Israel', N'State of Israel', N'Independent State', NULL, NULL, N'Jerusalem', N'ILS', N'Shekel', N'972', N'ISR', N'376', N'.il', 108, 1, N'il.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (103, N'IM', N'Isle of Man', NULL, N'Dependency', N'Crown Dependency', N'United Kingdom', N'Douglas', N'IMP', N'Pound', N'44', N'IMN', N'833', N'.im', 107, 1, N'im.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (104, N'IN', N'India', N'Republic of India', N'Independent State', NULL, NULL, N'New Delhi', N'INR', N'Rupee', N'91', N'IND', N'356', N'.in', 102, 1, N'in.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (105, N'IO', N'British Indian Ocean Territory', NULL, N'Dependency', N'Overseas Territory', N'United Kingdom', NULL, NULL, NULL, N'246', N'IOT', N'86', N'.io', 33, 1, N'io.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (106, N'IQ', N'Iraq', N'Republic of Iraq', N'Independent State', NULL, NULL, N'Baghdad', N'IQD', N'Dinar', N'964', N'IRQ', N'368', N'.iq', 105, 1, N'iq.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (107, N'IR', N'Iran', N'Islamic Republic of Iran', N'Independent State', NULL, NULL, N'Tehran', N'IRR', N'Rial', N'98', N'IRN', N'364', N'.ir', 104, 1, N'ir.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (108, N'IS', N'Iceland', N'Republic of Iceland', N'Independent State', NULL, NULL, N'Reykjavik', N'ISK', N'Krona', N'354', N'ISL', N'352', N'.is', 101, 1, N'is.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (109, N'IT', N'Italy', N'Italian Republic', N'Independent State', NULL, NULL, N'Rome', N'EUR', N'Euro', N'39', N'ITA', N'380', N'.it', 109, 1, N'it.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (110, N'JE', N'Jersey', N'Bailiwick of Jersey', N'Dependency', N'Crown Dependency', N'United Kingdom', N'Saint Helier', N'JEP', N'Pound', N'44', N'JEY', N'832', N'.je', 112, 1, N'je.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (111, N'JM', N'Jamaica', NULL, N'Independent State', NULL, NULL, N'Kingston', N'JMD', N'Dollar', N'+1-876', N'JAM', N'388', N'.jm', 110, 1, N'jm.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (112, N'JO', N'Jordan', N'Hashemite Kingdom of Jordan', N'Independent State', NULL, NULL, N'Amman', N'JOD', N'Dinar', N'962', N'JOR', N'400', N'.jo', 113, 1, N'jo.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (113, N'JP', N'Japan', NULL, N'Independent State', NULL, NULL, N'Tokyo', N'JPY', N'Yen', N'81', N'JPN', N'392', N'.jp', 111, 1, N'jp.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (114, N'KE', N'Kenya', N'Republic of Kenya', N'Independent State', NULL, NULL, N'Nairobi', N'KES', N'Shilling', N'254', N'KEN', N'404', N'.ke', 115, 1, N'ke.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (115, N'KG', N'Kyrgyzstan', N'Kyrgyz Republic', N'Independent State', NULL, NULL, N'Bishkek', N'KGS', N'Som', N'996', N'KGZ', N'417', N'.kg', 121, 1, N'kg.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (116, N'KH', N'Cambodia', N'Kingdom of Cambodia', N'Independent State', NULL, NULL, N'Phnom Penh', N'KHR', N'Riels', N'855', N'KHM', N'116', N'.kh', 39, 1, N'kh.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (117, N'KI', N'Kiribati', N'Republic of Kiribati', N'Independent State', NULL, NULL, N'Tarawa', N'AUD', N'Dollar', N'686', N'KIR', N'296', N'.ki', 116, 1, N'ki.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (118, N'KM', N'Comoros', N'Union of Comoros', N'Independent State', NULL, NULL, N'Moroni', N'KMF', N'Franc', N'269', N'COM', N'174', N'.km', 52, 1, N'km.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (119, N'KN', N'Saint Kitts and Nevis', N'Federation of Saint Kitts and Nevis', N'Independent State', NULL, NULL, N'Basseterre', N'XCD', N'Dollar', N'+1-869', N'KNA', N'659', N'.kn', 187, 1, N'kn.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (120, N'KP', N'Korea(North Korea)', N'Democratic People''s Republic of Korea', N'Independent State', NULL, NULL, N'Pyongyang', N'KPW', N'Won', N'850', N'PRK', N'408', N'.kp', 117, 1, N'kp.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (121, N'KR', N'Korea(South Korea)', N'Republic of Korea', N'Independent State', NULL, NULL, N'Seoul', N'KRW', N'Won', N'82', N'KOR', N'410', N'.kr', 118, 1, N'kr.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (122, N'KW', N'Kuwait', N'State of Kuwait', N'Independent State', NULL, NULL, N'Kuwait', N'KWD', N'Dinar', N'965', N'KWT', N'414', N'.kw', 120, 1, N'kw.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (123, N'KY', N'Cayman Islands', NULL, N'Dependency', N'Overseas Territory', N'United Kingdom', N'George Town', N'KYD', N'Dollar', N'+1-345', N'CYM', N'136', N'.ky', 43, 1, N'ky.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (124, N'KZ', N'Kazakhstan', N'Republic of Kazakhstan', N'Independent State', NULL, NULL, N'Astana', N'KZT', N'Tenge', N'7', N'KAZ', N'398', N'.kz', 114, 1, N'kz.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (125, N'LA', N'Laos', N'Lao People''s Democratic Republic', N'Independent State', NULL, NULL, N'Vientiane', N'LAK', N'Kip', N'856', N'LAO', N'418', N'.la', 122, 1, N'la.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (126, N'LB', N'Lebanon', N'Lebanese Republic', N'Independent State', NULL, NULL, N'Beirut', N'LBP', N'Pound', N'961', N'LBN', N'422', N'.lb', 124, 1, N'lb.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (127, N'LC', N'Saint Lucia', NULL, N'Independent State', NULL, NULL, N'Castries', N'XCD', N'Dollar', N'+1-758', N'LCA', N'662', N'.lc', 188, 1, N'lc.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (128, N'LI', N'Liechtenstein', N'Principality of Liechtenstein', N'Independent State', NULL, NULL, N'Vaduz', N'CHF', N'Franc', N'423', N'LIE', N'438', N'.li', 128, 1, N'li.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (129, N'LK', N'Sri Lanka', N'Democratic Socialist Republic of Sri Lanka', N'Independent State', NULL, NULL, N'Colombo (administrative/judical) and Sri Jayewardenepura Kotte (legislative)', N'LKR', N'Rupee', N'94', N'LKA', N'144', N'.lk', 206, 1, N'lk.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (130, N'LR', N'Liberia', N'Republic of Liberia', N'Independent State', NULL, NULL, N'Monrovia', N'LRD', N'Dollar', N'231', N'LBR', N'430', N'.lr', 126, 1, N'lr.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (131, N'LS', N'Lesotho', N'Kingdom of Lesotho', N'Independent State', NULL, NULL, N'Maseru', N'LSL', N'Loti', N'266', N'LSO', N'426', N'.ls', 125, 1, N'ls.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (132, N'LT', N'Lithuania', N'Republic of Lithuania', N'Independent State', NULL, NULL, N'Vilnius', N'LTL', N'Litas', N'370', N'LTU', N'440', N'.lt', 129, 1, N'lt.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (133, N'LU', N'Luxembourg', N'Grand Duchy of Luxembourg', N'Independent State', NULL, NULL, N'Luxembourg', N'EUR', N'Euro', N'352', N'LUX', N'442', N'.lu', 130, 1, N'lu.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (134, N'LV', N'Latvia', N'Republic of Latvia', N'Independent State', NULL, NULL, N'Riga', N'LVL', N'Lat', N'371', N'LVA', N'428', N'.lv', 123, 1, N'lv.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (135, N'LY', N'Libya', N'Great Socialist People''s Libyan Arab Jamahiriya', N'Independent State', NULL, NULL, N'Tripoli', N'LYD', N'Dinar', N'218', N'LBY', N'434', N'.ly', 127, 1, N'ly.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (136, N'MA', N'Morocco', N'Kingdom of Morocco', N'Independent State', NULL, NULL, N'Rabat', N'MAD', N'Dirham', N'212', N'MAR', N'504', N'.ma', 151, 1, N'ma.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (137, N'MC', N'Monaco', N'Principality of Monaco', N'Independent State', NULL, NULL, N'Monaco', N'EUR', N'Euro', N'377', N'MCO', N'492', N'.mc', 147, 1, N'mc.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (138, N'MD', N'Moldova', N'Republic of Moldova', N'Independent State', NULL, NULL, N'Chisinau', N'MDL', N'Leu', N'373', N'MDA', N'498', N'.md', 146, 1, N'md.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (139, N'ME', N'Montenegro', N'Republic of Montenegro', N'Independent State', NULL, NULL, N'Podgorica', N'EUR', N'Euro', N'382', N'MNE', N'499', N'.me and .yu', 149, 1, N'me.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (140, N'MG', N'Madagascar', N'Republic of Madagascar', N'Independent State', NULL, NULL, N'Antananarivo', N'MGA', N'Ariary', N'261', N'MDG', N'450', N'.mg', 133, 1, N'mg.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (141, N'MH', N'Marshall Islands', N'Republic of the Marshall Islands', N'Independent State', NULL, NULL, N'Majuro', N'USD', N'Dollar', N'692', N'MHL', N'584', N'.mh', 139, 1, N'mh.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (142, N'MK', N'Macedonia', N'Republic of Macedonia', N'Independent State', NULL, NULL, N'Skopje', N'MKD', N'Denar', N'389', N'MKD', N'807', N'.mk', 132, 1, N'mk.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (143, N'ML', N'Mali', N'Republic of Mali', N'Independent State', NULL, NULL, N'Bamako', N'XOF', N'Franc', N'223', N'MLI', N'466', N'.ml', 137, 1, N'ml.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (144, N'MM', N'Myanmar (Burma)', N'Union of Myanmar', N'Independent State', NULL, NULL, N'Naypyidaw', N'MMK', N'Kyat', N'95', N'MMR', N'104', N'.mm', 153, 1, N'mm.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (145, N'MN', N'Mongolia', NULL, N'Independent State', NULL, NULL, N'Ulaanbaatar', N'MNT', N'Tugrik', N'976', N'MNG', N'496', N'.mn', 148, 1, N'mn.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (146, N'MO', N'Macau', N'Macau Special Administrative Region', N'Proto Dependency', N'Special Administrative Region', N'China', N'Macau', N'MOP', N'Pataca', N'853', N'MAC', N'446', N'.mo', 131, 1, N'mo.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (147, N'MP', N'Northern Mariana Islands', N'Commonwealth of The Northern Mariana Islands', N'Dependency', N'Commonwealth', N'United States', N'Saipan', N'USD', N'Dollar', N'+1-670', N'MNP', N'580', N'.mp', 166, 1, N'mp.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (148, N'MQ', N'Martinique', N'Overseas Region of Martinique', N'Proto Dependency', N'Overseas Region', N'France', N'Fort-de-France', N'EUR', N'Euro', N'596', N'MTQ', N'474', N'.mq', 140, 1, N'mq.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (149, N'MR', N'Mauritania', N'Islamic Republic of Mauritania', N'Independent State', NULL, NULL, N'Nouakchott', N'MRO', N'Ouguiya', N'222', N'MRT', N'478', N'.mr', 141, 1, N'mr.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (150, N'MS', N'Montserrat', NULL, N'Dependency', N'Overseas Territory', N'United Kingdom', N'Plymouth', N'XCD', N'Dollar', N'+1-664', N'MSR', N'500', N'.ms', 150, 1, N'ms.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (151, N'MT', N'Malta', N'Republic of Malta', N'Independent State', NULL, NULL, N'Valletta', N'MTL', N'Lira', N'356', N'MLT', N'470', N'.mt', 138, 1, N'mt.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (152, N'MU', N'Mauritius', N'Republic of Mauritius', N'Independent State', NULL, NULL, N'Port Louis', N'MUR', N'Rupee', N'230', N'MUS', N'480', N'.mu', 142, 1, N'mu.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (153, N'MV', N'Maldives', N'Republic of Maldives', N'Independent State', NULL, NULL, N'Male', N'MVR', N'Rufiyaa', N'960', N'MDV', N'462', N'.mv', 136, 1, N'mv.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (154, N'MW', N'Malawi', N'Republic of Malawi', N'Independent State', NULL, NULL, N'Lilongwe', N'MWK', N'Kwacha', N'265', N'MWI', N'454', N'.mw', 134, 1, N'mw.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (155, N'MX', N'Mexico', N'United Mexican States', N'Independent State', NULL, NULL, N'Mexico', N'MXN', N'Peso', N'52', N'MEX', N'484', N'.mx', 144, 1, N'mx.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (156, N'MY', N'Malaysia', NULL, N'Independent State', NULL, NULL, N'Kuala Lumpur (legislative/judical) and Putrajaya (administrative)', N'MYR', N'Ringgit', N'60', N'MYS', N'458', N'.my', 135, 1, N'my.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (157, N'MZ', N'Mozambique', N'Republic of Mozambique', N'Independent State', NULL, NULL, N'Maputo', N'MZM', N'Meticail', N'258', N'MOZ', N'508', N'.mz', 152, 1, N'mz.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (158, N'NA', N'Namibia', N'Republic of Namibia', N'Independent State', NULL, NULL, N'Windhoek', N'NAD', N'Dollar', N'264', N'NAM', N'516', N'.na', 154, 1, N'na.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (159, N'NC', N'New Caledonia', NULL, N'Dependency', N'Sui generis Collectivity', N'France', N'Noumea', N'XPF', N'Franc', N'687', N'NCL', N'540', N'.nc', 159, 1, N'nc.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (160, N'NE', N'Niger', N'Republic of Niger', N'Independent State', NULL, NULL, N'Niamey', N'XOF', N'Franc', N'227', N'NER', N'562', N'.ne', 162, 1, N'ne.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (161, N'NF', N'Norfolk Island', N'Territory of Norfolk Island', N'Dependency', N'External Territory', N'Australia', N'Kingston', N'AUD', N'Dollar', N'672', N'NFK', N'574', N'.nf', 165, 1, N'nf.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (162, N'NG', N'Nigeria', N'Federal Republic of Nigeria', N'Independent State', NULL, NULL, N'Abuja', N'NGN', N'Naira', N'234', N'NGA', N'566', N'.ng', 163, 1, N'ng.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (163, N'NI', N'Nicaragua', N'Republic of Nicaragua', N'Independent State', NULL, NULL, N'Managua', N'NIO', N'Cordoba', N'505', N'NIC', N'558', N'.ni', 161, 1, N'ni.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (164, N'NL', N'Netherlands', N'Kingdom of the Netherlands', N'Independent State', NULL, NULL, N'Amsterdam (administrative) and The Hague (legislative/judical)', N'EUR', N'Euro', N'31', N'NLD', N'528', N'.nl', 157, 1, N'nl.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (165, N'NO', N'Norway', N'Kingdom of Norway', N'Independent State', NULL, NULL, N'Oslo', N'NOK', N'Krone', N'47', N'NOR', N'578', N'.no', 167, 1, N'no.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (166, N'NP', N'Nepal', NULL, N'Independent State', NULL, NULL, N'Kathmandu', N'NPR', N'Rupee', N'977', N'NPL', N'524', N'.np', 156, 1, N'np.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (167, N'NR', N'Nauru', N'Republic of Nauru', N'Independent State', NULL, NULL, N'Yaren', N'AUD', N'Dollar', N'674', N'NRU', N'520', N'.nr', 155, 1, N'nr.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (168, N'NU', N'Niue', NULL, N'Dependency', N'Self-Governing in Free Association', N'New Zealand', N'Alofi', N'NZD', N'Dollar', N'683', N'NIU', N'570', N'.nu', 164, 1, N'nu.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (169, N'NZ', N'New Zealand', NULL, N'Independent State', NULL, NULL, N'Wellington', N'NZD', N'Dollar', N'64', N'NZL', N'554', N'.nz', 160, 1, N'nz.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (170, N'OM', N'Oman', N'Sultanate of Oman', N'Independent State', NULL, NULL, N'Muscat', N'OMR', N'Rial', N'968', N'OMN', N'512', N'.om', 168, 1, N'om.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (171, N'PA', N'Panama', N'Republic of Panama', N'Independent State', NULL, NULL, N'Panama', N'PAB', N'Balboa', N'507', N'PAN', N'591', N'.pa', 172, 1, N'pa.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (172, N'PE', N'Peru', N'Republic of Peru', N'Independent State', NULL, NULL, N'Lima', N'PEN', N'Sol', N'51', N'PER', N'604', N'.pe', 175, 1, N'pe.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (173, N'PF', N'French Polynesia', N'Overseas Country of French Polynesia', N'Dependency', N'Overseas Collectivity', N'France', N'Papeete', N'XPF', N'Franc', N'689', N'PYF', N'258', N'.pf', 79, 1, N'pf.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (174, N'PG', N'Papua New Guinea', N'Independent State of Papua New Guinea', N'Independent State', NULL, NULL, N'Port Moresby', N'PGK', N'Kina', N'675', N'PNG', N'598', N'.pg', 173, 1, N'pg.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (175, N'PH', N'Philippines', N'Republic of the Philippines', N'Independent State', NULL, NULL, N'Manila', N'PHP', N'Peso', N'63', N'PHL', N'608', N'.ph', 176, 1, N'ph.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (176, N'PK', N'Pakistan', N'Islamic Republic of Pakistan', N'Independent State', NULL, NULL, N'Islamabad', N'PKR', N'Rupee', N'92', N'PAK', N'586', N'.pk', 169, 1, N'pk.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (177, N'PL', N'Poland', N'Republic of Poland', N'Independent State', NULL, NULL, N'Warsaw', N'PLN', N'Zloty', N'48', N'POL', N'616', N'.pl', 178, 1, N'pl.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (178, N'PM', N'Saint Pierre and Miquelon', N'Territorial Collectivity of Saint Pierre and Miquelon', N'Dependency', N'Overseas Collectivity', N'France', N'Saint-Pierre', N'EUR', N'Euro', N'508', N'SPM', N'666', N'.pm', 189, 1, N'pm.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (179, N'PN', N'Pitcairn Islands', NULL, N'Dependency', N'Overseas Territory', N'United Kingdom', N'Adamstown', N'NZD', N'Dollar', NULL, N'PCN', N'612', N'.pn', 177, 1, N'pn.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (180, N'PR', N'Puerto Rico', N'Commonwealth of Puerto Rico', N'Dependency', N'Commonwealth', N'United States', N'San Juan', N'USD', N'Dollar', N'+1-787 and 1-939', N'PRI', N'630', N'.pr', 180, 1, N'pr.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (181, N'PS', N'Palestinian Territories', NULL, N'Disputed Territory', NULL, N'Administrated by Israel', N'Gaza City (Gaza Strip) and Ramallah (West Bank)', N'ILS', N'Shekel', N'970', N'PSE', N'275', N'.ps', 171, 1, N'ps.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (182, N'PT', N'Portugal', N'Portuguese Republic', N'Independent State', NULL, NULL, N'Lisbon', N'EUR', N'Euro', N'351', N'PRT', N'620', N'.pt', 179, 1, N'pt.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (183, N'PW', N'Palau', N'Republic of Palau', N'Independent State', NULL, NULL, N'Melekeok', N'USD', N'Dollar', N'680', N'PLW', N'585', N'.pw', 170, 1, N'pw.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (184, N'PY', N'Paraguay', N'Republic of Paraguay', N'Independent State', NULL, NULL, N'Asuncion', N'PYG', N'Guarani', N'595', N'PRY', N'600', N'.py', 174, 1, N'py.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (185, N'QA', N'Qatar', N'State of Qatar', N'Independent State', NULL, NULL, N'Doha', N'QAR', N'Rial', N'974', N'QAT', N'634', N'.qa', 181, 1, N'qa.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (186, N'RE', N'Reunion', N'Overseas Region of Reunion', N'Proto Dependency', N'Overseas Region', N'France', N'Saint-Denis', N'EUR', N'Euro', N'262', N'REU', N'638', N'.re', 182, 1, N're.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (187, N'RO', N'Romania', NULL, N'Independent State', NULL, NULL, N'Bucharest', N'RON', N'Leu', N'40', N'ROU', N'642', N'.ro', 183, 1, N'ro.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (188, N'RS', N'Serbia', N'Republic of Serbia', N'Independent State', NULL, NULL, N'Belgrade', N'RSD', N'Dinar', N'381', N'SRB', N'688', N'.rs and .yu', 195, 1, N'rs.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (189, N'RU', N'Russia', N'Russian Federation', N'Independent State', NULL, NULL, N'Moscow', N'RUB', N'Ruble', N'7', N'RUS', N'643', N'.ru and .su', 184, 1, N'ru.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (190, N'RW', N'Rwanda', N'Republic of Rwanda', N'Independent State', NULL, NULL, N'Kigali', N'RWF', N'Franc', N'250', N'RWA', N'646', N'.rw', 185, 1, N'rw.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (191, N'SA', N'Saudi Arabia', N'Kingdom of Saudi Arabia', N'Independent State', NULL, NULL, N'Riyadh', N'SAR', N'Rial', N'966', N'SAU', N'682', N'.sa', 193, 1, N'sa.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (192, N'SB', N'Solomon Islands', NULL, N'Independent State', NULL, NULL, N'Honiara', N'SBD', N'Dollar', N'677', N'SLB', N'90', N'.sb', 201, 1, N'sb.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (193, N'SC', N'Seychelles', N'Republic of Seychelles', N'Independent State', NULL, NULL, N'Victoria', N'SCR', N'Rupee', N'248', N'SYC', N'690', N'.sc', 196, 1, N'sc.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (194, N'SD', N'Sudan', N'Republic of the Sudan', N'Independent State', NULL, NULL, N'Khartoum', N'SDD', N'Dinar', N'249', N'SDN', N'736', N'.sd', 208, 1, N'sd.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (195, N'SE', N'Sweden', N'Kingdom of Sweden', N'Independent State', NULL, NULL, N'Stockholm', N'SEK', N'Kronoa', N'46', N'SWE', N'752', N'.se', 212, 1, N'se.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (196, N'SG', N'Singapore', N'Republic of Singapore', N'Independent State', NULL, NULL, N'Singapore', N'SGD', N'Dollar', N'65', N'SGP', N'702', N'.sg', 198, 1, N'sg.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (197, N'SH', N'Saint Helena', NULL, N'Dependency', N'Overseas Territory', N'United Kingdom', N'Jamestown', N'SHP', N'Pound', N'290', N'SHN', N'654', N'.sh', 186, 1, N'sh.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (198, N'SI', N'Slovenia', N'Republic of Slovenia', N'Independent State', NULL, NULL, N'Ljubljana', N'EUR', N'Euro', N'386', N'SVN', N'705', N'.si', 200, 1, N'si.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (199, N'SJ', N'Svalbard', NULL, N'Proto Dependency', NULL, N'Norway', N'Longyearbyen', N'NOK', N'Krone', N'47', N'SJM', N'744', N'.sj', 210, 1, N'sj.png', 0)
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (200, N'SK', N'Slovakia', N'Slovak Republic', N'Independent State', NULL, NULL, N'Bratislava', N'SKK', N'Koruna', N'421', N'SVK', N'703', N'.sk', 199, 1, N'sk.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (201, N'SL', N'Sierra Leone', N'Republic of Sierra Leone', N'Independent State', NULL, NULL, N'Freetown', N'SLL', N'Leone', N'232', N'SLE', N'694', N'.sl', 197, 1, N'sl.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (202, N'SM', N'San Marino', N'Republic of San Marino', N'Independent State', NULL, NULL, N'San Marino', N'EUR', N'Euro', N'378', N'SMR', N'674', N'.sm', 191, 1, N'sm.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (203, N'SN', N'Senegal', N'Republic of Senegal', N'Independent State', NULL, NULL, N'Dakar', N'XOF', N'Franc', N'221', N'SEN', N'686', N'.sn', 194, 1, N'sn.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (204, N'SO', N'Somalia', NULL, N'Independent State', NULL, NULL, N'Mogadishu', N'SOS', N'Shilling', N'252', N'SOM', N'706', N'.so', 202, 1, N'so.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (205, N'SR', N'Suriname', N'Republic of Suriname', N'Independent State', NULL, NULL, N'Paramaribo', N'SRD', N'Dollar', N'597', N'SUR', N'740', N'.sr', 209, 1, N'sr.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (206, N'ST', N'Sao Tome and Principe', N'Democratic Republic of Sao Tome and Principe', N'Independent State', NULL, NULL, N'Sao Tome', N'STD', N'Dobra', N'239', N'STP', N'678', N'.st', 192, 1, N'st.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (207, N'SV', N'El Salvador', N'Republic of El Salvador', N'Independent State', NULL, NULL, N'San Salvador', N'USD', N'Dollar', N'503', N'SLV', N'222', N'.sv', 68, 1, N'sv.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (208, N'SY', N'Syria', N'Syrian Arab Republic', N'Independent State', NULL, NULL, N'Damascus', N'SYP', N'Pound', N'963', N'SYR', N'760', N'.sy', 214, 1, N'sy.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (209, N'SZ', N'Swaziland', N'Kingdom of Swaziland', N'Independent State', NULL, NULL, N'Mbabane (administrative) and Lobamba (legislative)', N'SZL', N'Lilangeni', N'268', N'SWZ', N'748', N'.sz', 211, 1, N'sz.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (210, N'TA', N'Tristan da Cunha', NULL, N'Proto Dependency', N'Dependency of Saint Helena', N'United Kingdom', N'Edinburgh', N'SHP', N'Pound', N'290', N'TAA', NULL, NULL, 223, 1, N'ta.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (211, N'TC', N'Turks and Caicos Islands', NULL, N'Dependency', N'Overseas Territory', N'United Kingdom', N'Grand Turk', N'USD', N'Dollar', N'+1-649', N'TCA', N'796', N'.tc', 227, 1, N'tc.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (212, N'TD', N'Chad', N'Republic of Chad', N'Independent State', NULL, NULL, N'N''Djamena', N'XAF', N'Franc', N'235', N'TCD', N'148', N'.td', 45, 1, N'td.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (213, N'TF', N'French Southern Territories', N'Territory of the French Southern and Antarctic Lands', N'Dependency', N'Overseas Territory', N'France', N'Martin-de-Vivi?s', NULL, NULL, NULL, N'ATF', N'260', N'.tf', 80, 1, N'tf.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (214, N'TG', N'Togo', N'Togolese Republic', N'Independent State', NULL, NULL, N'Lome', N'XOF', N'Franc', N'228', N'TGO', N'768', N'.tg', 219, 1, N'tg.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (215, N'TH', N'Thailand', N'Kingdom of Thailand', N'Independent State', NULL, NULL, N'Bangkok', N'THB', N'Baht', N'66', N'THA', N'764', N'.th', 217, 1, N'th.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (216, N'TJ', N'Tajikistan', N'Republic of Tajikistan', N'Independent State', NULL, NULL, N'Dushanbe', N'TJS', N'Somoni', N'992', N'TJK', N'762', N'.tj', 215, 1, N'tj.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (217, N'TK', N'Tokelau', NULL, N'Dependency', N'Territory', N'New Zealand', NULL, N'NZD', N'Dollar', N'690', N'TKL', N'772', N'.tk', 220, 1, N'tk.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (218, N'TL', N'Timor-Leste (East Timor)', N'Democratic Republic of Timor-Leste', N'Independent State', NULL, NULL, N'Dili', N'USD', N'Dollar', N'670', N'TLS', N'626', N'.tp and .tl', 218, 1, N'tl.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (219, N'TM', N'Turkmenistan', NULL, N'Independent State', NULL, NULL, N'Ashgabat', N'TMM', N'Manat', N'993', N'TKM', N'795', N'.tm', 226, 1, N'tm.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (220, N'TN', N'Tunisia', N'Tunisian Republic', N'Independent State', NULL, NULL, N'Tunis', N'TND', N'Dinar', N'216', N'TUN', N'788', N'.tn', 224, 1, N'tn.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (221, N'TO', N'Tonga', N'Kingdom of Tonga', N'Independent State', NULL, NULL, N'Nuku''alofa', N'TOP', N'Pa''anga', N'676', N'TON', N'776', N'.to', 221, 1, N'to.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (222, N'TR', N'Turkey', N'Republic of Turkey', N'Independent State', NULL, NULL, N'Ankara', N'TRY', N'Lira', N'90', N'TUR', N'792', N'.tr', 225, 1, N'tr.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (223, N'TT', N'Trinidad and Tobago', N'Republic of Trinidad and Tobago', N'Independent State', NULL, NULL, N'Port-of-Spain', N'TTD', N'Dollar', N'+1-868', N'TTO', N'780', N'.tt', 222, 1, N'tt.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (224, N'TV', N'Tuvalu', NULL, N'Independent State', NULL, NULL, N'Funafuti', N'AUD', N'Dollar', N'688', N'TUV', N'798', N'.tv', 228, 1, N'tv.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (225, N'TW', N'China, Republic of (Taiwan)', N'Republic of China', N'Proto Independent State', NULL, NULL, N'Taipei', N'TWD', N'Dollar', N'886', N'TWN', N'158', N'.tw', 48, 1, N'tw.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (226, N'TZ', N'Tanzania', N'United Republic of Tanzania', N'Independent State', NULL, NULL, N'Dar es Salaam (administrative/judical) and Dodoma (legislative)', N'TZS', N'Shilling', N'255', N'TZA', N'834', N'.tz', 216, 1, N'tz.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (227, N'UA', N'Ukraine', NULL, N'Independent State', NULL, NULL, N'Kiev', N'UAH', N'Hryvnia', N'380', N'UKR', N'804', N'.ua', 231, 1, N'ua.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (228, N'UG', N'Uganda', N'Republic of Uganda', N'Independent State', NULL, NULL, N'Kampala', N'UGX', N'Shilling', N'256', N'UGA', N'800', N'.ug', 230, 1, N'ug.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (229, N'US', N'United States', N'United States of America', N'Independent State', NULL, NULL, N'Washington', N'USD', N'Dollar', N'1', N'USA', N'840', N'.us', 234, 1, N'us.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (230, N'UY', N'Uruguay', N'Oriental Republic of Uruguay', N'Independent State', NULL, NULL, N'Montevideo', N'UYU', N'Peso', N'598', N'URY', N'858', N'.uy', 235, 1, N'uy.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (231, N'UZ', N'Uzbekistan', N'Republic of Uzbekistan', N'Independent State', NULL, NULL, N'Tashkent', N'UZS', N'Som', N'998', N'UZB', N'860', N'.uz', 236, 1, N'uz.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (232, N'VA', N'Vatican City', N'State of the Vatican City', N'Independent State', NULL, NULL, N'Vatican City', N'EUR', N'Euro', N'379', N'VAT', N'336', N'.va', 238, 1, N'va.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (233, N'VC', N'St. Vincent and the Grenadines', NULL, N'Independent State', NULL, NULL, N'Kingstown', N'XCD', N'Dollar', N'+1-784', N'VCT', N'670', N'.vc', 207, 1, N'vc.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (234, N'VE', N'Venezuela', N'Bolivarian Republic of Venezuela', N'Independent State', NULL, NULL, N'Caracas', N'VEB', N'Bolivar', N'58', N'VEN', N'862', N'.ve', 239, 1, N've.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (235, N'VG', N'British Virgin Islands', NULL, N'Dependency', N'Overseas Territory', N'United Kingdom', N'Road Town', N'USD', N'Dollar', N'+1-284', N'VGB', N'92', N'.vg', 34, 1, N'vg.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (236, N'VI', N'U.S. Virgin Islands', N'United States Virgin Islands', N'Dependency', N'Territory', N'United States', N'Charlotte Amalie', N'USD', N'Dollar', N'+1-340', N'VIR', N'850', N'.vi', 229, 1, N'vi.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (237, N'VN', N'Việt Nam', N'Socialist Republic of Vietnam', N'Independent State', NULL, NULL, N'Hanoi', N'VND', N'Dong', N'84', N'VNM', N'704', N'.vn', 1, 1, N'vn.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (238, N'VU', N'Vanuatu', N'Republic of Vanuatu', N'Independent State', NULL, NULL, N'Port-Vila', N'VUV', N'Vatu', N'678', N'VUT', N'548', N'.vu', 237, 1, N'vu.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (239, N'WF', N'Wallis and Futuna', N'Collectivity of the Wallis and Futuna Islands', N'Dependency', N'Overseas Collectivity', N'France', N'Mata''utu', N'XPF', N'Franc', N'681', N'WLF', N'876', N'.wf', 241, 1, N'wf.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (240, N'WS', N'Samoa', N'Independent State of Samoa', N'Independent State', NULL, NULL, N'Apia', N'WST', N'Tala', N'685', N'WSM', N'882', N'.ws', 190, 1, N'ws.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (241, N'YE', N'Yemen', N'Republic of Yemen', N'Independent State', NULL, NULL, N'Sanaa', N'YER', N'Rial', N'967', N'YEM', N'887', N'.ye', 243, 1, N'ye.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (242, N'YT', N'Mayotte', N'Departmental Collectivity of Mayotte', N'Dependency', N'Overseas Collectivity', N'France', N'Mamoudzou', N'EUR', N'Euro', N'262', N'MYT', N'175', N'.yt', 143, 1, N'yt.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (243, N'ZA', N'South Africa', N'Republic of South Africa', N'Independent State', NULL, NULL, N'Pretoria (administrative), Cape Town (legislative), and Bloemfontein (judical)', N'ZAR', N'Rand', N'27', N'ZAF', N'710', N'.za', 203, 1, N'za.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (244, N'ZM', N'Zambia', N'Republic of Zambia', N'Independent State', NULL, NULL, N'Lusaka', N'ZMK', N'Kwacha', N'260', N'ZMB', N'894', N'.zm', 244, 1, N'zm.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (245, N'ZW', N'Zimbabwe', N'Republic of Zimbabwe', N'Independent State', NULL, NULL, N'Harare', N'ZWD', N'Dollar', N'263', N'ZWE', N'716', N'.zw', 245, 1, N'zw.png', 0)
INSERT [dbo].[Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (246, N'AC', N'Ascension', NULL, N'Proto Dependency', N'Dependency of Saint Helena', N'United Kingdom', N'Georgetown', N'SHP', N'Pound', N'247', N'ASC', NULL, N'.ac', 16, 1, N'ac.png', 0)
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[tb_CategoryMain] ON 

INSERT [dbo].[tb_CategoryMain] ([MainCateID], [MainCateName], [Sort], [MainCateDesc], [CreateDate], [IsDeleted], [IsDisplay], [MainCateIcon], [MainCateBanner], [Language]) VALUES (4, N'Dụng cụ, thiết bị', 2, N'Dụng cụ sửa chữa, các thiết bị, máy móc trong gia đình, xe cộ', CAST(N'2018-04-11 14:29:02.473' AS DateTime), 0, 1, N'fa fa-gear', N'../image_banner/banner_maincate_default.jpg', N'Tools, devices')
INSERT [dbo].[tb_CategoryMain] ([MainCateID], [MainCateName], [Sort], [MainCateDesc], [CreateDate], [IsDeleted], [IsDisplay], [MainCateIcon], [MainCateBanner], [Language]) VALUES (5, N'Xe - vận chuyển', 8, N'Cho thuê các loại xe giao thông, xe công trình', CAST(N'2018-04-11 14:29:02.473' AS DateTime), 0, 1, N'fa fa-automobile', N'../image_banner/bannerMaincate_Car_Rental.jpg', N'Transport')
INSERT [dbo].[tb_CategoryMain] ([MainCateID], [MainCateName], [Sort], [MainCateDesc], [CreateDate], [IsDeleted], [IsDisplay], [MainCateIcon], [MainCateBanner], [Language]) VALUES (6, N'Bất động sản', 9, N'Thuê nhà ở, căn hộ, văn phòng, cửa hàng, nhà xưởng, kho bãi, đất đai', CAST(N'2018-04-11 14:29:02.473' AS DateTime), 0, 1, N'fa fa-home', N'../image_banner/bannerMaincate_house.jpg', N'Real estate')
INSERT [dbo].[tb_CategoryMain] ([MainCateID], [MainCateName], [Sort], [MainCateDesc], [CreateDate], [IsDeleted], [IsDisplay], [MainCateIcon], [MainCateBanner], [Language]) VALUES (8, N'Sách, tranh, hoa', 3, N'Sách, tranh, tượng, cây hoa', CAST(N'2018-04-11 14:29:02.473' AS DateTime), 0, 1, N'fa fa-book', N'../image_banner/banner_congcu_1.jpg', N'Book, picture, flower')
INSERT [dbo].[tb_CategoryMain] ([MainCateID], [MainCateName], [Sort], [MainCateDesc], [CreateDate], [IsDeleted], [IsDisplay], [MainCateIcon], [MainCateBanner], [Language]) VALUES (9, N'Thời trang - Phụ kiện', 5, N'Quần áo, váy đầm, giầy dép, túi xách, phụ kiện', CAST(N'2018-04-11 14:29:02.473' AS DateTime), 0, 1, N'fa fa-diamond', N'../image_banner/bannerMaincate_fashion.jpg', N'Fashion - Accessories')
INSERT [dbo].[tb_CategoryMain] ([MainCateID], [MainCateName], [Sort], [MainCateDesc], [CreateDate], [IsDeleted], [IsDisplay], [MainCateIcon], [MainCateBanner], [Language]) VALUES (11, N'Sự kiện, lễ hội', 7, N'Các thiết bị phục vụ tổ chức sự kiện, vui chơi, lễ hội', CAST(N'2018-07-24 10:37:29.673' AS DateTime), 0, 1, N'fa fa-tree', N'../image_banner/bannerMaincate_eventshow.jpg', N'Events, Festival')
INSERT [dbo].[tb_CategoryMain] ([MainCateID], [MainCateName], [Sort], [MainCateDesc], [CreateDate], [IsDeleted], [IsDisplay], [MainCateIcon], [MainCateBanner], [Language]) VALUES (14, N'Test', 10, N'Description', CAST(N'2022-01-19 15:44:32.690' AS DateTime), 0, 0, N'fa fa-home', NULL, N'testen')
SET IDENTITY_INSERT [dbo].[tb_CategoryMain] OFF
SET IDENTITY_INSERT [dbo].[tb_CategorySub1] ON 

INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (15, N'Xe 2 bánh ', 5, 1, N'Xe đạp, xe điện, xe moto, gắn máy', CAST(N'2018-04-13 10:28:23.550' AS DateTime), 0, 83, N'Bicycle, motorbike')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (16, N'Xe Khách', 5, 1, N'Xe 4 chỗ, 7 chỗ, 16 chỗ, 35 chỗ,...', CAST(N'2018-04-13 10:28:59.120' AS DateTime), 0, 84, N'Coach')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (17, N'Xe chở hàng', 5, 1, N'Xe 1,5 tấn, 3,5 tấn,...', CAST(N'2018-04-13 10:29:17.330' AS DateTime), 0, 85, N'Freight truck')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (18, N'Xe Công trình', 5, 1, N'Xe ủi, xe lu, xe xúc, xe cẩu,...', CAST(N'2018-04-13 10:29:46.957' AS DateTime), 0, 86, N'Work car ')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (20, N'Dụng cụ sửa chữa', 4, 1, N'Dụng cụ sửa chữa nhà cửa, xe máy, ôtô', CAST(N'2018-07-16 11:48:09.357' AS DateTime), 0, 11, N'Repair tools')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (26, N'Thiết bị văn phòng', 4, 1, N'Các thiết bị văn phòng, công việc', CAST(N'2018-07-24 10:41:55.477' AS DateTime), 0, 21, N'Office equipments')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (27, N'Thiết bị Nghe Nhìn', 4, 1, N'Âm thanh, Hình ảnh, Ánh sáng, Camera', CAST(N'2018-07-24 12:14:28.643' AS DateTime), 0, 22, N'Audio Visual Equipment')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (28, N'Đồ gia dụng', 4, 1, N'Đồ gia đình', CAST(N'2018-07-24 12:20:32.060' AS DateTime), 0, 26, N'Houseware')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (30, N'Vui chơi, Giải trí, Dã ngoại', 4, 1, N'Đồ trang trí, tiệc tùng, sự kiện, vui chơi và dã ngoại', CAST(N'2018-07-24 12:22:06.623' AS DateTime), 0, 23, N'Entertainment, Picnic')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (39, N'Xe sự kiện', 5, 1, N'Xe đoàn diễu hành, xe lạ, độc đáo', CAST(N'2018-08-04 10:45:58.430' AS DateTime), 0, 81, N'Event car ')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (40, N'Xe độc, lạ', 5, 1, N'Xe độc đáo, hiếm', CAST(N'2018-08-06 18:09:34.420' AS DateTime), 0, 82, N'Unique and strange cars')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (41, N'Tàu thuyền', 5, 1, N'Tàu, ghe, thuyền', CAST(N'2018-08-08 10:21:50.170' AS DateTime), 0, 88, N'Boat ship')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (42, N'Máy công cụ, công trình', 4, 1, N'Máy công cụ, công trình', CAST(N'2018-08-10 09:44:57.933' AS DateTime), 0, 25, N'Tool, Construction Machines')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (43, N'Dụng cụ sửa chữa	', 9, 1, N'Dụng cụ sửa chữa nhà cửa, xe máy, ôtô', CAST(N'2018-08-10 09:58:41.983' AS DateTime), 0, 11, N'Repair tools	')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (44, N'Phụ kiện - trang sức Nữ', 9, 1, N'Túi xách, Phụ kiện đầu tóc, Phụ kiện cài áo, Trang sức đeo tay', CAST(N'2018-08-10 10:13:45.910' AS DateTime), 0, 52, N'Women''s Accessories 	')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (45, N'Thời trang Nam', 9, 1, N'Thời trang Nam', CAST(N'2018-08-10 10:15:42.227' AS DateTime), 0, 53, N'Men''s Fashion ')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (46, N'Phụ kiện - trang sức Nam', 9, 1, N'Phụ kiện - trang sức Nam', CAST(N'2018-08-10 10:18:30.493' AS DateTime), 0, 54, N'Men''s Accessories ')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (47, N'Thời trang trẻ em gái', 9, 1, N'Thời trang trẻ em gái', CAST(N'2018-08-10 10:20:44.590' AS DateTime), 0, 55, N'Girl''s Fashion ')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (48, N'Thời trang trẻ em trai', 9, 1, N'Thời trang trẻ em trai', CAST(N'2018-08-10 10:22:22.297' AS DateTime), 0, 56, N'Boy''s Fashion')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (49, N'Căn hộ', 6, 1, N'Căn hộ cao cấp, Căn hộ dịch vụ, Chung cư', CAST(N'2018-08-10 10:25:02.957' AS DateTime), 0, 92, N'Apartment')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (50, N'Nhà ở', 6, 1, N'Nhà riêng biệt', CAST(N'2018-08-10 10:28:44.273' AS DateTime), 0, 93, N'House')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (51, N'Văn phòng ', 6, 1, N'Văn phòng ', CAST(N'2018-08-10 10:30:09.323' AS DateTime), 0, 91, N'Office')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (52, N'Cửa hàng', 6, 1, N'Cửa hàng', CAST(N'2018-08-10 10:31:26.870' AS DateTime), 0, 95, N'Store')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (53, N'Nhà xưởng', 6, 1, N'Nhà xưởng', CAST(N'2018-08-10 10:32:47.903' AS DateTime), 0, 96, N'Factories')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (54, N'Kho bãi', 6, 1, N'Kho bãi', CAST(N'2018-08-10 10:33:49.827' AS DateTime), 0, 97, N'Warehouse')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (60, N'Sách khoa học, xã hội', 8, 1, N'Sách cũ, sách mới đã hết phát hành', CAST(N'2021-04-14 16:54:15.793' AS DateTime), 0, 31, N'Social Sciences Book')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (61, N'Tranh', 8, 1, N'Tranh vẽ, tranh thêu, ảnh', CAST(N'2021-04-14 16:55:26.353' AS DateTime), 0, 33, N'Picture')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (62, N'Tượng, điêu khắc', 8, 1, N'Tượng, điêu khắc', CAST(N'2021-04-14 17:07:02.787' AS DateTime), 0, 34, N'Statue, sculpture')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (63, N'Cây, hoa', 8, 1, N'Cây hoa thật và cây hoa giả', CAST(N'2021-04-14 17:08:49.450' AS DateTime), 0, 35, N'Plant, Flower')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (65, N'Khai trương, lễ ra mắt', 11, 1, N'Khai trương, lễ ra mắt', CAST(N'2021-04-14 17:36:55.420' AS DateTime), 0, 72, N'Opening, launching')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (66, N'Đám cưới, sinh nhật', 11, 1, N'Sinh nhật, đám cưới, khai trương, ra mắt sản phẩm', CAST(N'2021-04-14 17:40:53.153' AS DateTime), 0, 71, N'Events')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (67, N'testchild', 23, 1, N'asdasd', CAST(N'2021-04-15 16:21:00.587' AS DateTime), 0, 1, N'testchild')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (68, N'Sách giáo dục', 8, 1, N'Sách dạy học', CAST(N'2021-04-17 10:27:23.097' AS DateTime), 0, 32, N'Educational Book')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (69, N'Thiết bị hỗ trợ', 4, 1, N'Thiết bị, máy móc lớn, chuyên môn cho việc sửa chữa, xây dựng', CAST(N'2021-04-17 17:00:21.693' AS DateTime), 0, 24, N'Support device ')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (71, N'Nhà nghỉ, khách sạn', 6, 1, N'Nhà nghỉ, khách sạn', CAST(N'2021-04-20 10:10:17.490' AS DateTime), 0, 94, N'Homestay, Hotel')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (72, N'Hội chợ, triển lãm', 11, 1, N'Hội chợ, triển lãm', CAST(N'2021-04-20 11:08:30.547' AS DateTime), 0, 73, N'Fair, expo')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (73, N'Cắm trại, đi phượt', 11, 1, N'Cắm trại, đi phượt', CAST(N'2021-04-20 11:08:49.233' AS DateTime), 0, 74, N'Camping, go backpacking')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (74, N'Xây dựng đồng đội', 11, 1, N'Xây dựng đồng đội', CAST(N'2021-04-20 11:09:14.183' AS DateTime), 0, 75, N'Team Building')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (75, N'Thuê đất, ao, mặt nước', 6, 1, N'Thuê đất, ao hồ, mặt nước', CAST(N'2021-04-22 11:46:37.830' AS DateTime), 0, 98, N'Land, Lake, water surface')
INSERT [dbo].[tb_CategorySub1] ([SubCate1ID], [SubCate1Name], [MainCateID], [IsDisplay], [SubCate1Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (76, N'Xe nông nghiệp', 5, 1, N'.', CAST(N'2021-04-23 10:18:01.883' AS DateTime), 0, 87, N'Agricultural Machinery')
SET IDENTITY_INSERT [dbo].[tb_CategorySub1] OFF
SET IDENTITY_INSERT [dbo].[tb_CategorySub2] ON 

INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (16, N'Xe 9-16 chỗ', 16, 1, N'Xe 9-16 chỗ', CAST(N'2018-04-13 14:11:45.600' AS DateTime), 0, 845, N'Car 9 - 16 seats')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (17, N'Xe 7 chỗ', 16, 1, N'Xe 7 chỗ', CAST(N'2018-04-13 14:12:11.950' AS DateTime), 0, 843, N'Car 7 seats')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (18, N'Xe trên 16 chỗ', 16, 1, N'Xe trên 16 chỗ', CAST(N'2018-04-13 14:12:30.287' AS DateTime), 0, 846, N'Car over 16 seats ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (22, N'xe đạp', 15, 1, N'....', CAST(N'2018-04-13 14:14:15.207' AS DateTime), 0, 831, N'Bike')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (23, N'Xe điện', 15, 1, N'....', CAST(N'2018-04-13 14:15:19.977' AS DateTime), 0, 832, N'Electric Bicycle')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (24, N'Xe Gắn máy', 15, 1, N'...', CAST(N'2018-04-13 14:15:34.043' AS DateTime), 0, 833, N'Motorbike')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (25, N'Xe cứu hộ, xe cẩu kéo', 18, 1, N'.', CAST(N'2018-04-13 14:16:16.980' AS DateTime), 0, 861, N'Tow truck')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (26, N'Xe ben, xe tải cẩu', 18, 1, N'.', CAST(N'2018-04-13 14:17:14.053' AS DateTime), 0, 862, N'Ben truck, Crane-truck')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (27, N'Sửa điện', 20, 1, N'Dụng cụ và thợ chuyên sửa chữa điện dân dụng', CAST(N'2018-07-18 10:37:47.380' AS DateTime), 0, 111, N'Electrical Repair')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (28, N'Sửa nước', 20, 1, N'Sửa đường ống nước nóng, lạnh; thoát nước', CAST(N'2018-07-18 10:42:39.417' AS DateTime), 0, 112, N'Water Repair')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (29, N'Sửa nhà cửa', 20, 1, N'Dụng cụ, thợ chuyên sửa chữa đồ gỗ, nhà cửa', CAST(N'2018-07-18 10:49:13.553' AS DateTime), 0, 113, N'House repair')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (31, N'Vệ sinh nhà cửa', 20, 1, N'Dụng cụ, thiết bị, dịch vụ chuyên làm vệ sinh sofa, nhà cửa.', CAST(N'2018-07-18 10:54:37.170' AS DateTime), 0, 114, N'Cleaning house')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (32, N'Thiết bị đo', 29, 1, N'Thước, dụng cụ đo đếm, đồng hồ đo các loại', CAST(N'2018-07-18 10:55:46.657' AS DateTime), 0, 151, N'Instrumentation')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (33, N'Thiết bị hỗ trợ', 29, 1, N'Thiết bị, máy móc lớn, chuyên môn cho việc sửa chữa, xây dựng', CAST(N'2018-07-18 10:56:37.157' AS DateTime), 0, 152, N'Support device ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (34, N'In - Scan - Photocopy', 26, 1, N'Các thiết bị, máy móc phục vụ cho văn phòng', CAST(N'2018-07-24 11:07:13.577' AS DateTime), 0, 212, N'Printers- Scanners - Photocopy')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (35, N'Máy tính', 26, 1, N'Máy tính và các phụ kiện máy tính', CAST(N'2018-07-24 12:02:36.207' AS DateTime), 0, 211, N'Computer')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (36, N'Thiết bị khác', 26, 1, N'Hỗ trợ văn phòng, nhà xưởng', CAST(N'2018-07-24 12:03:20.207' AS DateTime), 0, 215, N'Other Devices')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (37, N'Bàn ghế văn phòng', 26, 1, N'bàn ghế hội nghị, hội họp', CAST(N'2018-07-24 12:11:50.220' AS DateTime), 0, 214, N'Furnished office')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (39, N'Mạng viễn thông', 26, 1, N'Mạng', CAST(N'2018-07-30 11:53:08.193' AS DateTime), 0, 213, N'Network')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (44, N'Xe hoa', 39, 1, N'Xe đám cưới', CAST(N'2018-08-04 15:30:53.253' AS DateTime), 0, 811, N'Wedding car')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (46, N'Xe quảng cáo', 39, 1, N'Xe đoàn diễu hành chạy quảng cáo', CAST(N'2018-08-04 16:48:28.703' AS DateTime), 0, 812, N' Advertising Car')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (47, N'Xe dẫn đoàn', 39, 1, N'Xe đoàn diễu hành, chạy quảng cáo', CAST(N'2018-08-05 22:02:52.527' AS DateTime), 0, 813, N'Lead Car')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (48, N'Xe Sang', 40, 1, N'Siêu xe, xe sang', CAST(N'2018-08-06 17:46:35.137' AS DateTime), 0, 822, N'Luxury car')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (49, N'Xe nhà di động', 40, 1, N'Xe có giường nằm, bếp hoặc nhà vệ sinh có sự tiện nghi như một ngôi nhà', CAST(N'2018-08-06 17:50:57.893' AS DateTime), 0, 824, N'Mobile home')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (50, N'Xe ngựa', 40, 1, N'Xe ngựa kéo', CAST(N'2018-08-06 17:51:37.753' AS DateTime), 0, 826, N'Carthorse')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (51, N'Hội xe', 39, 1, N'Xe Phân Khối Lớn, Vespa, Dame, 67', CAST(N'2018-08-08 10:34:44.483' AS DateTime), 0, 814, N'Group Motorbike ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (53, N'Siêu xe', 40, 1, N'Lamborghini, Ferrari , Alfa Romeo', CAST(N'2018-08-08 10:58:30.483' AS DateTime), 0, 821, N'Supercar')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (54, N'Xe cổ', 40, 1, N'Xe Ôtô xưa', CAST(N'2018-08-08 10:59:56.957' AS DateTime), 0, 823, N'Classic car')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (55, N'Xe 3 bánh', 40, 1, N'xe ba bánh', CAST(N'2018-08-08 11:00:46.580' AS DateTime), 0, 825, N'Tricycle')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (56, N'Xe 4-5 chỗ', 16, 1, N'Xe 4-5 chỗ có lái xe', CAST(N'2018-08-08 11:22:37.800' AS DateTime), 0, 841, N'Car 4 - 5 seats')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (57, N'Xe 4-5 chỗ (tự lái)', 16, 1, N'Xe 4-5 chỗ (tự lái)', CAST(N'2018-08-08 11:25:49.740' AS DateTime), 0, 842, N'Self-driving cars 4-5 seats')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (58, N'Xe 7 chỗ (tự lái)', 16, 1, N'Xe 7 chỗ (tự lái)', CAST(N'2018-08-08 11:26:39.617' AS DateTime), 0, 844, N'Self-driving cars 7 seats')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (59, N'Xe bán tải', 17, 1, N'Vừa chở khách vừa chở hàng', CAST(N'2018-08-08 11:30:11.823' AS DateTime), 0, 851, N'Pickup truck')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (60, N'Xe tải nhẹ dưới 3,5 tấn', 17, 1, N'.', CAST(N'2018-08-08 11:33:17.110' AS DateTime), 0, 852, N'Minivan, Trucks under 3. 5 tons ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (61, N'Xe tải trên 3,5 tấn', 17, 1, N'.', CAST(N'2018-08-08 11:34:31.377' AS DateTime), 0, 853, N'Trucks over 3.5 tons')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (62, N'Xe công, đầu kéo', 17, 1, N'Xe công, đầu kéo', CAST(N'2018-08-08 11:35:15.330' AS DateTime), 0, 854, N'Container truck')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (63, N'Xe cần cẩu, xe thang nâng', 18, 1, N'.', CAST(N'2018-08-08 11:45:08.657' AS DateTime), 0, 863, N'Cranes, forklift')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (64, N'Moto nước, Kayak, thuyền phao', 41, 1, N'.', CAST(N'2018-08-08 11:49:19.773' AS DateTime), 0, 881, N'Jetski, Kayak, Buoy boat')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (65, N'Cano, Du thuyền', 41, 1, N'.', CAST(N'2018-08-08 11:49:44.243' AS DateTime), 0, 882, N'Canoes, Yacht ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (68, N'Trồng cây', 14, 1, N'Trồng và chăm sóc cây', CAST(N'2018-08-08 12:39:11.467' AS DateTime), 0, 131, N'Planting tree')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (69, N'Làm vườn', 14, 1, N'Dụng cụ cắt tỉa, dịch vụ chăm sóc cây, vệ sinh vườn', CAST(N'2018-08-08 12:39:48.747' AS DateTime), 0, 132, N'Gardening')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (70, N'Vệ sinh hồ bơi', 14, 1, N'Dụng cụ và dịch vụ vệ sinh, xử lý hồ bơi', CAST(N'2018-08-08 12:40:33.483' AS DateTime), 0, 133, N'Clean the pool')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (71, N'Trình chiếu', 27, 1, N'Trình chiếu', CAST(N'2018-08-10 09:54:25.510' AS DateTime), 0, 221, N'Display device')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (72, N'Âm thanh', 27, 1, N'Loa, Micro, Amppli', CAST(N'2018-08-10 09:55:17.073' AS DateTime), 0, 222, N'Audio equipments')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (73, N'Ánh sáng', 27, 1, N'Thiết bị ánh sáng', CAST(N'2018-08-10 09:59:58.733' AS DateTime), 0, 223, N'Light equipments')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (74, N'Thiết bị khác', 27, 1, N'Bình nước nóng lạnh, xe đẩy hàng, cầu thang...', CAST(N'2018-08-10 10:00:59.143' AS DateTime), 0, 225, N'Other Devices')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (76, N'Thiết bị giải trí', 30, 1, N'Dàn karaoke, Xe điện trẻ em, Xe, tàu, máy bay điều khiển', CAST(N'2018-08-10 10:02:58.897' AS DateTime), 0, 232, N'Entertainment equipment')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (77, N'Dã ngoại', 30, 1, N'Dã ngoại', CAST(N'2018-08-10 10:04:00.617' AS DateTime), 0, 234, N'Picnic')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (78, N'Thiết bị nấu ăn', 28, 1, N'Thiết bị nấu ăn', CAST(N'2018-08-10 10:05:32.447' AS DateTime), 0, 261, N'Cooking equipment')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (79, N'Thiết bị vệ sinh', 28, 1, N'Thiết bị vệ sinh', CAST(N'2018-08-10 10:05:49.493' AS DateTime), 0, 262, N'Sanitary equipment ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (81, N'Máy lạnh', 29, 1, N'Máy lạnh di động, Máy lạnh hội chợ', CAST(N'2018-08-10 10:07:28.933' AS DateTime), 0, 252, NULL)
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (82, N'Máy phát điện', 29, 1, N'Máy phát điện', CAST(N'2018-08-10 10:08:05.573' AS DateTime), 0, 253, NULL)
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (85, N'Áo dài', 43, 1, N'Áo dài', CAST(N'2018-08-10 10:10:51.280' AS DateTime), 0, 511, N'Ao dai Fashion ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (86, N' Công Sở', 43, 1, N'Thời trang công sở', CAST(N'2018-08-10 10:11:06.500' AS DateTime), 0, 514, N'Office Fashion ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (87, N'Lễ hội, sự kiện', 43, 1, N'Thời trang Lễ hội', CAST(N'2018-08-10 10:11:21.250' AS DateTime), 0, 513, N'Festival, Event Fashion ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (88, N'Trang phục truyền thống', 43, 1, N'Trang phục truyền thống', CAST(N'2018-08-10 10:11:36.923' AS DateTime), 0, 512, N'Traditional costume')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (89, N'Thời trang nhóm', 43, 1, N'Thời trang nhóm', CAST(N'2018-08-10 10:11:50.750' AS DateTime), 0, 516, N'Group Fashion ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (90, N'Thể thao', 43, 1, N'Thể thao', CAST(N'2018-08-10 10:12:05.673' AS DateTime), 0, 515, N'Sports fashion ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (91, N'Túi xách', 44, 1, N'Túi xách', CAST(N'2018-08-10 10:14:05.380' AS DateTime), 0, 524, N'Handbags ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (92, N'Phụ kiện đầu tóc', 44, 1, N'Phụ kiện đầu tóc', CAST(N'2018-08-10 10:14:18.113' AS DateTime), 0, 521, N'Hair accessories ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (93, N'Phụ kiện cài áo', 44, 1, N'Phụ kiện cài áo', CAST(N'2018-08-10 10:14:31.457' AS DateTime), 0, 522, N'Coat accessories')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (94, N'Trang sức đeo tay', 44, 1, N'Trang sức đeo tay', CAST(N'2018-08-10 10:14:44.257' AS DateTime), 0, 523, N'Hand jewelry ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (95, N'Vest', 45, 1, N'Vest', CAST(N'2018-08-10 10:16:31.960' AS DateTime), 0, 531, N'Suit')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (96, N'Thể Thao', 45, 1, N'Thời trang thể thao', CAST(N'2018-08-10 10:16:43.883' AS DateTime), 0, 534, N'Sports fashion ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (97, N'Lễ hội, sự kiện', 45, 1, N'Thời trang sự kiện', CAST(N'2018-08-10 10:16:58.477' AS DateTime), 0, 533, N'Festival, event Fashion ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (98, N'Thời trang nhóm', 45, 1, N'Thời trang nhóm', CAST(N'2018-08-10 10:17:14.150' AS DateTime), 0, 535, N'Group fashion ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (99, N'Giầy', 46, 1, N'Giầy', CAST(N'2018-08-10 10:17:33.133' AS DateTime), 0, 546, N'Shoes ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (100, N'Túi xách, Balô, vali', 46, 1, N'Túi xách - Balô, vali', CAST(N'2018-08-10 10:19:05.933' AS DateTime), 0, 544, N'Handbags, Backpack, Suitcase ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (101, N'Phụ kiện cài áo', 46, 1, N'Phụ kiện cài áo', CAST(N'2018-08-10 10:19:24.543' AS DateTime), 0, 542, N'Coat accessories')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (102, N'Trang sức đeo tay', 46, 1, N'Trang sức đeo tay', CAST(N'2018-08-10 10:19:42.247' AS DateTime), 0, 543, N'Hand jewelry ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (103, N' Lễ Hội', 47, 1, N'Thời trang lễ hội', CAST(N'2018-08-10 10:21:04.373' AS DateTime), 0, 551, N'Festival Fashion ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (104, N'Thể Thao', 47, 1, N'Thời trang thể thao', CAST(N'2018-08-10 10:21:19.077' AS DateTime), 0, 552, N'Sports fashion ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (105, N'Thời trang nhóm', 47, 1, N'Thời trang nhóm', CAST(N'2018-08-10 10:21:36.187' AS DateTime), 0, 553, N'Group fashion ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (106, N'Giầy', 47, 1, N'Giầy', CAST(N'2018-08-10 10:21:47.343' AS DateTime), 0, 554, N'Shoes ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (107, N' Lễ Hội', 48, 1, N'Thời trang lễ hội', CAST(N'2018-08-10 10:22:45.937' AS DateTime), 0, 561, N'Festival Fashion ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (108, N' Thể Thao', 48, 1, N'Thời trang thể thao', CAST(N'2018-08-10 10:22:59.330' AS DateTime), 0, 562, N'Sports fashion ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (109, N'Thời trang nhóm', 48, 1, N'Thời trang nhóm', CAST(N'2018-08-10 10:23:11.500' AS DateTime), 0, 563, N'Group fashion ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (110, N'Giầy', 48, 1, N'Giầy', CAST(N'2018-08-10 10:23:27.393' AS DateTime), 0, 564, N'Shoes ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (111, N'Căn hộ cao cấp', 49, 1, N'Căn hộ cao cấp', CAST(N'2018-08-10 10:26:15.490' AS DateTime), 0, 921, N'Luxury Apartment')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (112, N'Căn hộ dịch vụ', 49, 1, N'Căn hộ dịch vụ', CAST(N'2018-08-10 10:27:10.147' AS DateTime), 0, 922, N'Service apartment')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (113, N'Chung cư', 49, 1, N'Chung cư', CAST(N'2018-08-10 10:27:39.257' AS DateTime), 0, 923, N'Condominiums')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (114, N'Biệt thự', 50, 1, N'Biệt thự', CAST(N'2018-08-10 10:29:06.307' AS DateTime), 0, 931, N'Villa')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (115, N'Nhà mặt tiền', 50, 1, N'Nhà mặt tiền', CAST(N'2018-08-10 10:29:20.930' AS DateTime), 0, 932, N'House facade')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (116, N'Văn phòng dịch vụ', 51, 1, N'Văn phòng dịch vụ', CAST(N'2018-08-10 10:30:31.010' AS DateTime), 0, 911, N'Serviced Office')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (117, N'Văn phòng chia sẻ', 51, 1, N'Văn phòng chia sẻ', CAST(N'2018-08-10 10:30:48.403' AS DateTime), 0, 912, N'Shared Office')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (118, N'Văn phòng nhà phố', 51, 1, N'Văn phòng nhà phố', CAST(N'2018-08-10 10:31:03.777' AS DateTime), 0, 914, N'House Office')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (119, N'Cửa hàng nhà phố', 52, 1, N'Cửa hàng nhà phố', CAST(N'2018-08-10 10:31:45.043' AS DateTime), 0, 951, N'Shophouse')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (120, N'Cửa hàng trong TTTM', 52, 1, N'Cửa hàng trong TTTM', CAST(N'2018-08-10 10:31:57.933' AS DateTime), 0, 952, N'Deparment Store')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (121, N'Kiot, sạp trong chợ', 52, 1, N'Kiot, sạp trong chợ', CAST(N'2018-08-10 10:32:12.623' AS DateTime), 0, 953, N'Kiosks')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (122, N'Trong khu công nghiệp', 53, 1, N'Xưởng trong khu công nghiệp', CAST(N'2018-08-10 10:33:08.703' AS DateTime), 0, 961, N'Inside the industrial park')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (123, N'Ngoài khu công nghiệp', 53, 1, N'Xưởng ngoài khu công nghiệp', CAST(N'2018-08-10 10:33:23.810' AS DateTime), 0, 962, N'Outside the industrial park')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (124, N'Nhà Kho', 54, 1, N'Nhà Kho', CAST(N'2018-08-10 10:34:06.907' AS DateTime), 0, 972, N'Warehouse')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (125, N'Kho chia sẻ', 54, 1, N'Kho chia sẻ', CAST(N'2018-08-10 10:34:24.720' AS DateTime), 0, 973, N'Shared Warehouse')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10143, N'Sửa xe', 20, 1, N'Dụng cụ, thiết bị, thợ chuyên sửa xe máy, ôtô tại nhà', CAST(N'2021-04-13 17:44:26.490' AS DateTime), 0, 116, N'Vehicle repair')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10144, N'Phao, thuyền, bóng, súng nước', 14, 1, N'Phao, thuyền, bóng, đồ chơi dưới nước', CAST(N'2021-04-13 18:04:42.650' AS DateTime), 0, 134, N'Buoy, boat, ball, water gun')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10145, N'Sân vườn, hồ bơi', 20, 1, N'Dụng cụ cắt tỉa, dịch vụ chăm sóc cây, vệ sinh vườn, hồ bơi', CAST(N'2021-04-16 11:26:53.540' AS DateTime), 0, 115, N'Garden, pool')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10147, N'Liên hoan - sự kiện', 30, 1, N'Đồ trang trí, tiệc tùng, sự kiện, vui chơi trong nhà và dã ngoại', CAST(N'2021-04-16 11:46:39.423' AS DateTime), 0, 231, N'Party- Event')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10148, N'Đồ chơi', 30, 1, N'Đồ trang trí, tiệc tùng, sự kiện, vui chơi trong nhà và dã ngoại', CAST(N'2021-04-16 11:48:35.570' AS DateTime), 0, 233, N'Games')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10149, N'Camera', 27, 1, N'Âm thanh, Hình ảnh, Ánh sáng', CAST(N'2021-04-16 11:50:34.953' AS DateTime), 0, 224, N'Camera')
GO
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10150, N'cate sub 2', 60, 1, N'mo ta nhanh', CAST(N'2021-04-17 10:16:56.847' AS DateTime), 0, 1000, N'cate sub 2 en')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10151, N'Xã hội, chính trị', 60, 1, N'Xã hội, chính trị', CAST(N'2021-04-17 10:18:04.200' AS DateTime), 0, 312, N'Society, polity.')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10152, N'Kinh tế, pháp luật', 60, 1, N'Kinh tế, pháp luật', CAST(N'2021-04-17 10:18:46.213' AS DateTime), 0, 313, N'Economy, law')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10153, N'Khoa học, Kỹ thuật', 60, 1, N'Khoa học, Kỹ thuật', CAST(N'2021-04-17 10:19:33.193' AS DateTime), 0, 314, N'Science, Technology')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10154, N'Văn hóa, du lịch, ẩm thực', 60, 1, N'Văn hóa, du lịch, ẩm thực', CAST(N'2021-04-17 10:20:10.973' AS DateTime), 0, 315, N'Culture, tourism, cuisine')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10155, N'Kiến trúc, hội họa', 60, 1, N'Kiến trúc, hội họa', CAST(N'2021-04-17 10:20:46.283' AS DateTime), 0, 316, N'Architecture, Arts')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10156, N'Tôn giáo, tâm linh', 60, 1, N'Tôn giáo, tâm linh', CAST(N'2021-04-17 10:21:13.453' AS DateTime), 0, 317, N'Religion, Spirituality')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10157, N'Sách nước ngoài', 60, 1, N'Sách nước ngoài', CAST(N'2021-04-17 10:21:41.120' AS DateTime), 0, 318, N'Foreign books')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10158, N'Tâm lý, Kỹ năng sống', 68, 1, N'.', CAST(N'2021-04-17 10:29:37.150' AS DateTime), 0, 321, N'Psychology, Life Skills')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10159, N'Nuôi dạy con', 68, 1, N'.', CAST(N'2021-04-17 10:30:21.350' AS DateTime), 0, 322, N'Parenting')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10160, N'Ngoại ngữ - Từ điển', 68, 1, N'Ngoại ngữ - Từ điển', CAST(N'2021-04-17 10:30:51.347' AS DateTime), 0, 323, N'Foreign Language, Dictionary')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10161, N'Giáo khoa, tham khảo', 68, 1, N'.', CAST(N'2021-04-17 10:31:17.487' AS DateTime), 0, 324, N'Textbook, Reference')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10162, N'Giáo trình, tài liệu', 68, 1, N'.', CAST(N'2021-04-17 10:31:47.983' AS DateTime), 0, 325, N'Curriculum, document')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10163, N'Sách thiếu nhi', 68, 1, N'.', CAST(N'2021-04-17 10:32:25.810' AS DateTime), 0, 326, N'Children''s Books')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10164, N'Sách nước ngoài', 68, 1, N'.', CAST(N'2021-04-17 10:32:52.713' AS DateTime), 0, 327, N'Foreign books')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10165, N'Tranh vẽ hội họa', 61, 1, N'.', CAST(N'2021-04-17 10:35:22.547' AS DateTime), 0, 331, N'Painting')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10166, N'Tranh thêu tay', 61, 1, N'.', CAST(N'2021-04-17 10:36:51.010' AS DateTime), 0, 332, N'Hand embroidery')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10167, N'Tranh sơn mài', 61, 1, N'.', CAST(N'2021-04-17 10:37:40.880' AS DateTime), 0, 333, N'Lacquer painting')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10168, N'Tranh ảnh', 61, 1, N'.', CAST(N'2021-04-17 10:38:11.440' AS DateTime), 0, 334, N'Picture')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10169, N'Tượng đá', 62, 1, N'.', CAST(N'2021-04-17 10:39:32.530' AS DateTime), 0, 341, N'Stone statue')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10170, N'Tượng gỗ', 62, 1, N'.', CAST(N'2021-04-17 10:40:01.980' AS DateTime), 0, 342, N'Wooden statue')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10171, N'Tượng đúc', 62, 1, N'.', CAST(N'2021-04-17 10:40:36.697' AS DateTime), 0, 343, N'Cast statue')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10172, N'Cây hoa, bình hoa', 63, 1, N'.', CAST(N'2021-04-17 10:42:13.673' AS DateTime), 0, 351, N'Flower plant, vase of flowers')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10173, N'Cây bon sai', 63, 1, N'.', CAST(N'2021-04-17 10:42:56.640' AS DateTime), 0, 352, N'Bonsai')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10174, N'Cây xanh, cây cảnh', 63, 1, N'.', CAST(N'2021-04-17 10:43:37.527' AS DateTime), 0, 353, N'Green trees')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10175, N'Hoa giả, cây giả', 63, 1, N'.', CAST(N'2021-04-17 10:44:18.993' AS DateTime), 0, 354, N'Artificial flowers, artificial plants')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10176, N'Thiết bị đo', 69, 1, N'Thước, dụng cụ đo đếm, đồng hồ đo các loại', CAST(N'2021-04-17 17:01:52.043' AS DateTime), 0, 242, N'Instrumentation')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10177, N'Thiết bị làm mát', 69, 1, N'Thiết bị làm mát', CAST(N'2021-04-17 17:03:10.447' AS DateTime), 0, 243, N'Cooling device')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10178, N'Xe đẩy hàng', 69, 1, N'Xe rùa, xe đẩy hàng 2 bánh, xe đẩy hàng 4 bánh', CAST(N'2021-04-17 17:03:34.787' AS DateTime), 0, 244, N'Hand trolley')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10179, N'Máy phát điện', 70, 1, N'.', CAST(N'2021-04-17 17:06:08.917' AS DateTime), 0, 251, N'Generator ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10180, N'Máy phát điện', 70, 1, N'.', CAST(N'2021-04-17 17:07:43.800' AS DateTime), 0, 251, N'Generator ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10181, N'Nhà nghỉ', 71, 1, N'Nhà nghỉ', CAST(N'2021-04-20 10:11:39.873' AS DateTime), 0, 941, N'Homestay')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10182, N'Tòa nhà văn phòng', 51, 1, N'Tòa nhà văn phòng', CAST(N'2021-04-20 10:19:16.713' AS DateTime), 0, 913, N'Building Office')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10183, N'Hội chợ, triển lãm', 52, 1, N'Hội chợ, triển lãm', CAST(N'2021-04-20 10:23:57.537' AS DateTime), 0, 954, N'Fair, expo')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10184, N'Căn hộ chia sẻ', 49, 1, N'Căn hộ chia sẻ', CAST(N'2021-04-20 10:25:58.093' AS DateTime), 0, 924, N'Shared Apartment')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10185, N'Nhà trong hẻm', 50, 1, N'Nhà trong hẻm', CAST(N'2021-04-20 10:28:06.067' AS DateTime), 0, 933, N'House in alley')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10186, N'Phòng cho thuê', 50, 1, N'Phòng cho thuê', CAST(N'2021-04-20 10:28:31.317' AS DateTime), 0, 934, N'Room for rent')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10188, N'Khách sạn', 71, 1, N'Khách sạn', CAST(N'2021-04-20 10:35:25.457' AS DateTime), 0, 942, N'Hotels')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10189, N'Khu nghỉ dưỡng', 71, 1, N'Khu nghỉ dưỡng', CAST(N'2021-04-20 10:35:47.377' AS DateTime), 0, 943, N'Resort')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10190, N'Thang, dàn giáo', 69, 1, N'Thang, dàn giáo', CAST(N'2021-04-20 10:40:40.840' AS DateTime), 0, 245, N'Ladders, scaffolding')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10191, N'Dụng cụ hỗ trợ', 69, 1, N'Dụng cụ hỗ trợ', CAST(N'2021-04-20 10:41:34.913' AS DateTime), 0, 241, N'Support tool')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10192, N'Máy cầm tay', 42, 1, N'Máy cầm tay', CAST(N'2021-04-20 10:42:18.537' AS DateTime), 0, 251, N'Handheld')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10193, N'Giầy', 44, 1, N'Giầy', CAST(N'2021-04-20 11:01:17.797' AS DateTime), 0, 526, N'Shoes ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10194, N'Trang phục truyền thống', 45, 1, N'Trang phục truyền thống', CAST(N'2021-04-20 11:03:53.147' AS DateTime), 0, 532, N'Traditional costume')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10195, N'Địa điểm, không gian', 66, 1, N'Địa điểm, không gian', CAST(N'2021-04-20 11:10:19.180' AS DateTime), 0, 711, N'Place, space')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10196, N'Trang trí, phông nền', 66, 1, N'Trang trí, phông nền', CAST(N'2021-04-20 11:10:42.740' AS DateTime), 0, 712, N'Decoration, background')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10197, N'Thiết bị giải trí', 66, 1, N'Thiết bị giải trí', CAST(N'2021-04-20 11:11:09.973' AS DateTime), 0, 713, N'Mutimedia')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10198, N'Nấu ăn, phục vụ', 66, 1, N'Nấu ăn, phục vụ', CAST(N'2021-04-20 11:11:31.143' AS DateTime), 0, 714, N'Cook, service')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10199, N'Dịch vụ hỗ trợ', 66, 1, N'Dịch vụ hỗ trợ', CAST(N'2021-04-20 11:11:51.063' AS DateTime), 0, 715, N'Support Services')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10200, N'Địa điểm, không gian', 65, 1, N'Địa điểm, không gian', CAST(N'2021-04-20 11:12:28.780' AS DateTime), 0, 721, N'Place, space')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10201, N'Thiết bị hỗ trợ', 65, 1, N'Thiết bị hỗ trợ', CAST(N'2021-04-20 11:12:53.577' AS DateTime), 0, 722, N'Support equipment')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10202, N'Đội ngũ phục vụ', 65, 1, N'Đội ngũ phục vụ', CAST(N'2021-04-20 11:13:19.527' AS DateTime), 0, 723, N'Service team')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10203, N'Dịch vụ hỗ trợ', 65, 1, N'Dịch vụ hỗ trợ', CAST(N'2021-04-20 11:13:46.260' AS DateTime), 0, 724, N'Support Services')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10204, N'Địa điểm tổ chức', 72, 1, N'Địa điểm tổ chức', CAST(N'2021-04-20 11:14:16.367' AS DateTime), 0, 731, N'Place, space')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10205, N'Thiết bị hỗ trợ', 72, 1, N'Thiết bị hỗ trợ', CAST(N'2021-04-20 11:14:37.927' AS DateTime), 0, 732, N'Support equipment')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10206, N'Đội ngũ quảng cáo, tiếp thị', 72, 1, N'Đội ngũ quảng cáo, tiếp thị', CAST(N'2021-04-20 11:15:03.707' AS DateTime), 0, 733, N'Advertising and marketing team')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10207, N'Dịch vụ hỗ trợ', 72, 1, N'Dịch vụ hỗ trợ', CAST(N'2021-04-20 11:15:24.550' AS DateTime), 0, 734, N'Support Services')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10208, N'Địa điểm, không gian', 73, 1, N'Địa điểm, không gian', CAST(N'2021-04-20 11:15:56.640' AS DateTime), 0, 741, N'Place, space')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10210, N'Dụng cụ cắm trại', 73, 1, N'Dụng cụ cắm trại', CAST(N'2021-04-20 11:16:18.780' AS DateTime), 0, 742, N'Camping tools')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10211, N'Thiết bị, trò chơi', 73, 1, N'Thiết bị, trò chơi', CAST(N'2021-04-20 11:16:36.730' AS DateTime), 0, 743, N'Equipment, games')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10212, N'Dịch vụ hỗ trợ', 73, 1, N'Dịch vụ hỗ trợ', CAST(N'2021-04-20 11:17:00.447' AS DateTime), 0, 744, N'Support Services')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10213, N'Địa điểm, không gian', 74, 1, N'Địa điểm, không gian', CAST(N'2021-04-20 11:17:31.790' AS DateTime), 0, 751, N'Place, space')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10214, N'Thiết bị, trò chơi', 74, 1, N'Thiết bị, trò chơi', CAST(N'2021-04-20 11:17:54.100' AS DateTime), 0, 752, N'Place, space')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10215, N'Dịch vụ hỗ trợ', 74, 1, N'Dịch vụ hỗ trợ', CAST(N'2021-04-20 11:18:18.943' AS DateTime), 0, 753, N'Support Services')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10216, N'Nón', 46, 1, N'Nón lưỡi trai, nón bảo hiểm', CAST(N'2021-04-20 17:16:20.897' AS DateTime), 0, 541, N'Hat')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10217, N'Mục đích khác', 75, 1, N'.', CAST(N'2021-04-22 11:47:51.077' AS DateTime), 0, 984, N'Another purpose')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10218, N'Trồng rừng', 75, 1, N'.', CAST(N'2021-04-22 11:48:43.073' AS DateTime), 0, 982, N'Afforestation')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10219, N'Nuôi thủy hải sản', 75, 1, N'.', CAST(N'2021-04-22 11:49:28.600' AS DateTime), 0, 983, N'Aquaculture')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10220, N'Mục đích khác', 75, 1, N'.', CAST(N'2021-04-22 11:50:06.237' AS DateTime), 0, 984, N'Another purpose')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10221, N'Trao đổi kỳ nghỉ', 71, 1, N'.', CAST(N'2021-04-22 11:52:50.147' AS DateTime), 0, 944, N'Time share')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10222, N'Bãi - kho ngoài trời', 54, 1, N'.', CAST(N'2021-04-22 11:55:42.370' AS DateTime), 0, 971, N'Outdoor warehouse')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10223, N'Phụ kiện khác', 46, 1, N'.', CAST(N'2021-04-23 09:59:42.980' AS DateTime), 0, 545, N'Other accessories')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10224, N'Xe siêu trường, siêu trọng', 17, 1, N'Xe siêu trường, siêu trọng', CAST(N'2021-04-23 10:08:14.130' AS DateTime), 0, 855, N'Heavy Haul Trucking')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10225, N'Xe xúc, xe gầu', 18, 1, N'.', CAST(N'2021-04-23 10:15:30.927' AS DateTime), 0, 864, N'Backhoe')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10226, N'Xe ủi, xe lu', 18, 1, N'.', CAST(N'2021-04-23 10:16:18.487' AS DateTime), 0, 865, N'Bulldozer, Steamroller ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10227, N'Máy kéo', 76, 1, N'.', CAST(N'2021-04-23 10:19:03.287' AS DateTime), 0, 871, N'the Tractor')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10228, N'Máy cày, máy bừa', 76, 1, N'.', CAST(N'2021-04-23 10:19:52.297' AS DateTime), 0, 872, N'Plows, Harrow')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10229, N'Máy gặt đập liên hợp', 76, 1, N'.', CAST(N'2021-04-23 10:20:24.513' AS DateTime), 0, 873, N'Combined harvester')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10230, N'Máy trồng cây', 76, 1, N'.', CAST(N'2021-04-23 10:21:31.353' AS DateTime), 0, 874, N'Planting machine')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10232, N'Tàu du lịch', 41, 1, N'.', CAST(N'2021-04-23 10:28:04.297' AS DateTime), 0, 883, N'Cruise ship')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10233, N'Ghe, xà lan', 41, 1, N'.', CAST(N'2021-04-23 10:28:54.103' AS DateTime), 0, 884, N'Cargo canoes, Barge')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10235, N'Tàu chở hàng', 41, 1, N'.', CAST(N'2021-04-23 10:30:09.600' AS DateTime), 0, 885, N'Cargo ship ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10236, N'Máy hàn', 42, 1, N'Máy hàn', CAST(N'2021-04-24 12:03:47.750' AS DateTime), 0, 252, N'Welder')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10237, N'Máy phát điện', 42, 1, N'Máy phát điện', CAST(N'2021-04-24 12:04:06.797' AS DateTime), 0, 253, N'Generator ')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10238, N'Máy xây dựng', 42, 1, N'Máy xây dựng', CAST(N'2021-04-24 12:04:26.607' AS DateTime), 0, 254, N'Construction machine')
INSERT [dbo].[tb_CategorySub2] ([SubCate2ID], [SubCate2Name], [SubCate1ID], [IsDisplay], [SubCate2Desc], [CreateDate], [IsDeleted], [Sort], [Language]) VALUES (10239, N'cate sub 2', 60, 1, N'mo ta nhanh', CAST(N'2022-01-20 17:01:08.543' AS DateTime), 0, 1, N'cate sub 2 en')
SET IDENTITY_INSERT [dbo].[tb_CategorySub2] OFF
INSERT [dbo].[tb_ContactMessage] ([MessageID], [LastName], [FirstName], [PhoneNumber], [EmailAddress], [MessageTitle], [CreateDate], [IsRead], [MessageContent]) VALUES (0, N'terry', N'tuan', N'0909090909', N'jjj@Jjj.com', N'tieu', CAST(N'2018-06-21 00:00:00.000' AS DateTime), N'NULL', N'de')
SET IDENTITY_INSERT [dbo].[tb_Country] ON 

INSERT [dbo].[tb_Country] ([Id], [CountryCode], [CommonName], [FormalName], [CountryType], [CountrySubType], [Sovereignty], [Capital], [CurrencyCode], [CurrencyName], [TelephoneCode], [CountryCode3], [CountryNumber], [InternetCountryCode], [SortOrder], [IsPublished], [Flags], [IsDeleted]) VALUES (1, N'VN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_Country] OFF
SET IDENTITY_INSERT [dbo].[tb_Customer] ON 

INSERT [dbo].[tb_Customer] ([CustomerID], [CustomerNo], [CustomerGroup], [FirstName], [LastName], [UserName], [Password], [Description], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [Avatar], [CreateDate], [ResetCode], [ResetStatus], [ResetLastTime]) VALUES (27, N'customer003', 4, N'efflect', N'ben', N'ben', N'123', N'ddd', NULL, NULL, N'0909090909', N'ben@gmail.com', N'phap1', NULL, N'../image_customer/account-no-avatar.png', CAST(N'2018-05-01 13:22:40.007' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[tb_Customer] ([CustomerID], [CustomerNo], [CustomerGroup], [FirstName], [LastName], [UserName], [Password], [Description], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [Avatar], [CreateDate], [ResetCode], [ResetStatus], [ResetLastTime]) VALUES (28, N'customer005', 3, N'vans', N'antoine', N'antoine', N'1234', N'', NULL, NULL, N'123123123', N'ant@gmail.com', N'Thailand', NULL, N'../image_customer/account-no-avatar.png', CAST(N'2018-05-01 13:23:47.280' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[tb_Customer] ([CustomerID], [CustomerNo], [CustomerGroup], [FirstName], [LastName], [UserName], [Password], [Description], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [Avatar], [CreateDate], [ResetCode], [ResetStatus], [ResetLastTime]) VALUES (29, N'cusfront2018', 3, N'itm', N'co', NULL, N'123', NULL, NULL, NULL, NULL, N'itm@siyosa.net', NULL, NULL, N'../image_customer/account-no-avatar.png', CAST(N'2018-06-08 13:50:18.787' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[tb_Customer] ([CustomerID], [CustomerNo], [CustomerGroup], [FirstName], [LastName], [UserName], [Password], [Description], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [Avatar], [CreateDate], [ResetCode], [ResetStatus], [ResetLastTime]) VALUES (30, N'cusfront2018', 3, N'terry', N'le', NULL, N'123', NULL, NULL, NULL, NULL, N'terry@siyosa.net', NULL, NULL, N'../image_customer/account-no-avatar.png', CAST(N'2019-04-11 09:48:43.800' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[tb_Customer] ([CustomerID], [CustomerNo], [CustomerGroup], [FirstName], [LastName], [UserName], [Password], [Description], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [Avatar], [CreateDate], [ResetCode], [ResetStatus], [ResetLastTime]) VALUES (31, N'cusfront2018', 3, N'siyosa', N'company', NULL, N'12345', NULL, NULL, NULL, N'0933888999', N'siyosa@gmail.com', N'Số 19, đường 46, Phường Thảo Điền, Quận 2, Hồ Chí Minh', 0, N'../image_customer/account-no-avatar.png', CAST(N'2020-01-07 22:17:50.343' AS DateTime), N'HRPC11042020102116009', 1, CAST(N'2020-04-11 22:38:20.973' AS DateTime))
INSERT [dbo].[tb_Customer] ([CustomerID], [CustomerNo], [CustomerGroup], [FirstName], [LastName], [UserName], [Password], [Description], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [Avatar], [CreateDate], [ResetCode], [ResetStatus], [ResetLastTime]) VALUES (32, N'customer005', 3, N'Dang', N'Le Nam', NULL, N'123456', NULL, NULL, 1, N'0903663879', N'nam_dl@yahoo.com', N'Số 19, đường 46, Phường Thảo Điền, Quận 2, Hồ Chí Minh', NULL, N'../image_customer/account-no-avatar.png', CAST(N'2020-01-07 22:17:50.343' AS DateTime), N'HRPC04052023114112988', 0, NULL)
INSERT [dbo].[tb_Customer] ([CustomerID], [CustomerNo], [CustomerGroup], [FirstName], [LastName], [UserName], [Password], [Description], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [Avatar], [CreateDate], [ResetCode], [ResetStatus], [ResetLastTime]) VALUES (34, N'cusfront2018', 3, N'Minh', N'Le', NULL, N'112233', NULL, NULL, NULL, NULL, N'leminh@gmail.com', NULL, NULL, N'../image_customer/account-no-avatar.png', CAST(N'2020-04-06 13:53:00.757' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[tb_Customer] ([CustomerID], [CustomerNo], [CustomerGroup], [FirstName], [LastName], [UserName], [Password], [Description], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [Avatar], [CreateDate], [ResetCode], [ResetStatus], [ResetLastTime]) VALUES (35, N'cusfront2018', 3, N'sssss', N'aaaa', NULL, N'123', NULL, NULL, NULL, NULL, N'aaaa@gmail.com', NULL, NULL, N'../image_customer/account-no-avatar.png', CAST(N'2020-04-06 13:56:49.473' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[tb_Customer] ([CustomerID], [CustomerNo], [CustomerGroup], [FirstName], [LastName], [UserName], [Password], [Description], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [Avatar], [CreateDate], [ResetCode], [ResetStatus], [ResetLastTime]) VALUES (36, N'cusfront2018', 3, N'qqq', N'wwww', NULL, N'123', NULL, NULL, NULL, NULL, N'qq@gmail.com', NULL, NULL, N'../image_customer/account-no-avatar.png', CAST(N'2020-04-06 13:58:37.030' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[tb_Customer] ([CustomerID], [CustomerNo], [CustomerGroup], [FirstName], [LastName], [UserName], [Password], [Description], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [Avatar], [CreateDate], [ResetCode], [ResetStatus], [ResetLastTime]) VALUES (37, N'CUS131748', 3, N'David', N'Yahoo', NULL, N'12345', NULL, NULL, NULL, N'0909000999', N'david@yahoo.com', N'Long Khánh, Đồng Nai, Việt Nam', NULL, N'../image_customer/Customer-avatar-2020040604385471.jpg', CAST(N'2020-04-06 14:17:48.923' AS DateTime), N'HRPC12042020124727340', 1, CAST(N'2020-04-11 23:48:07.633' AS DateTime))
INSERT [dbo].[tb_Customer] ([CustomerID], [CustomerNo], [CustomerGroup], [FirstName], [LastName], [UserName], [Password], [Description], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [Avatar], [CreateDate], [ResetCode], [ResetStatus], [ResetLastTime]) VALUES (38, N'CUS20204313114353AM', 3, N'Tuấn', N'insitu', NULL, N'12345', NULL, NULL, NULL, NULL, N'tuan.le@insitu.com.vn', NULL, NULL, N'../image_customer/account-no-avatar.png', CAST(N'2020-04-13 12:43:53.467' AS DateTime), N'HRPC13042020124434340', 1, CAST(N'2020-04-13 11:45:12.123' AS DateTime))
INSERT [dbo].[tb_Customer] ([CustomerID], [CustomerNo], [CustomerGroup], [FirstName], [LastName], [UserName], [Password], [Description], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [Avatar], [CreateDate], [ResetCode], [ResetStatus], [ResetLastTime]) VALUES (39, N'CUS20204223084251AM', 3, N'Hi', N'Rent', N'112897670393815', N'Jankivt2', N'createdFromFbLogin', NULL, 1, N'09876543', N'hirent.vn@gmail.com', N'Long Khánh, Đồng Nai, Việt Nam', NULL, N'https://scontent.fsgn5-7.fna.fbcdn.net/v/t1.30497-1/cp0/c15.0.50.50a/p50x50/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1', CAST(N'2020-04-23 08:42:51.393' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tb_Customer] ([CustomerID], [CustomerNo], [CustomerGroup], [FirstName], [LastName], [UserName], [Password], [Description], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [Avatar], [CreateDate], [ResetCode], [ResetStatus], [ResetLastTime]) VALUES (41, N'CUS20202923082934AM', 3, N'test', N'ets', NULL, N'123', NULL, NULL, NULL, NULL, N'test@gmail.com', NULL, NULL, N'../image_customer/account-no-avatar.png', CAST(N'2020-07-23 09:29:34.487' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tb_Customer] ([CustomerID], [CustomerNo], [CustomerGroup], [FirstName], [LastName], [UserName], [Password], [Description], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [Avatar], [CreateDate], [ResetCode], [ResetStatus], [ResetLastTime]) VALUES (42, N'CUS20204223084219AM', 3, N'nghiep', N'ngh', NULL, N'123', NULL, NULL, NULL, NULL, N'nghiep2@gmail.com', NULL, NULL, N'../image_customer/account-no-avatar.png', CAST(N'2020-07-23 09:42:20.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tb_Customer] ([CustomerID], [CustomerNo], [CustomerGroup], [FirstName], [LastName], [UserName], [Password], [Description], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [Avatar], [CreateDate], [ResetCode], [ResetStatus], [ResetLastTime]) VALUES (43, N'CUS20204423084432AM', 3, N'sd', N'ads', NULL, N'123', NULL, NULL, NULL, NULL, N'tttt@gmail.com', NULL, NULL, N'../image_customer/account-no-avatar.png', CAST(N'2020-07-23 09:44:32.177' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tb_Customer] ([CustomerID], [CustomerNo], [CustomerGroup], [FirstName], [LastName], [UserName], [Password], [Description], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [Avatar], [CreateDate], [ResetCode], [ResetStatus], [ResetLastTime]) VALUES (44, N'CUS20204623084605AM', 3, N'ltnghiep', N'dkdhdg', NULL, N'123', NULL, NULL, NULL, NULL, N'tes2@gmail.com', NULL, NULL, N'../image_customer/account-no-avatar.png', CAST(N'2020-07-23 09:46:05.833' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tb_Customer] ([CustomerID], [CustomerNo], [CustomerGroup], [FirstName], [LastName], [UserName], [Password], [Description], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [Avatar], [CreateDate], [ResetCode], [ResetStatus], [ResetLastTime]) VALUES (45, N'CUS20205923085942AM', 3, N'ada', N'sadad', NULL, N'123', NULL, NULL, NULL, NULL, N'testest@gmail.com', NULL, NULL, N'../image_customer/account-no-avatar.png', CAST(N'2020-07-23 09:59:42.097' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tb_Customer] ([CustomerID], [CustomerNo], [CustomerGroup], [FirstName], [LastName], [UserName], [Password], [Description], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [Avatar], [CreateDate], [ResetCode], [ResetStatus], [ResetLastTime]) VALUES (46, N'CUS20202223092238AM', 3, N'asd', N'asd', NULL, N'123', NULL, NULL, NULL, NULL, N'asdasd@gmail.com', NULL, NULL, N'../image_customer/account-no-avatar.png', CAST(N'2020-07-23 10:22:38.580' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tb_Customer] ([CustomerID], [CustomerNo], [CustomerGroup], [FirstName], [LastName], [UserName], [Password], [Description], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [Avatar], [CreateDate], [ResetCode], [ResetStatus], [ResetLastTime]) VALUES (49, N'CUS20212301012322PM', 3, N'The', N'Copy', N'437753691082826', N'fbDefaultPass', N'createdFromFbLogin', NULL, NULL, NULL, N'lethanhnghiep1993@gmail.com', NULL, NULL, N'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=437753691082826', CAST(N'2021-11-01 13:23:22.743' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_Customer] OFF
SET IDENTITY_INSERT [dbo].[tb_CustomerDeliveryAddress] ON 

INSERT [dbo].[tb_CustomerDeliveryAddress] ([ID], [CustomerID], [Address], [Status], [CreateDate], [FullName], [PhoneNumber], [IsMacdinh]) VALUES (19, 32, N'146m Nguyen Van Thu, P.Dakao, Q.1', NULL, CAST(N'2021-03-24 18:17:17.353' AS DateTime), N'Nam', N'0903663879', 1)
INSERT [dbo].[tb_CustomerDeliveryAddress] ([ID], [CustomerID], [Address], [Status], [CreateDate], [FullName], [PhoneNumber], [IsMacdinh]) VALUES (20, 32, N'63 Phan Đăng Lưu Đà Nẵng', NULL, CAST(N'2021-03-24 18:17:55.460' AS DateTime), N'Bố', N'0903731256', 0)
INSERT [dbo].[tb_CustomerDeliveryAddress] ([ID], [CustomerID], [Address], [Status], [CreateDate], [FullName], [PhoneNumber], [IsMacdinh]) VALUES (43, 39, N'30 Lý thái tổ', NULL, CAST(N'2021-04-05 16:09:56.270' AS DateTime), N'Trần kiều Ân', N'0914566873', 1)
INSERT [dbo].[tb_CustomerDeliveryAddress] ([ID], [CustomerID], [Address], [Status], [CreateDate], [FullName], [PhoneNumber], [IsMacdinh]) VALUES (46, 40, N'55/10/36 thành mỹ p.8 quận tân bình tphcm', NULL, CAST(N'2021-11-10 15:53:13.573' AS DateTime), N'Lê thành nghiệp', N'0914588766', 1)
INSERT [dbo].[tb_CustomerDeliveryAddress] ([ID], [CustomerID], [Address], [Status], [CreateDate], [FullName], [PhoneNumber], [IsMacdinh]) VALUES (47, 32, N'41 Thái Ly P.Thảo Điền, Tp. Thủ Đức', NULL, CAST(N'2021-11-16 15:37:39.047' AS DateTime), N'Đặng Hoàng Nam', N'0903663878', 0)
INSERT [dbo].[tb_CustomerDeliveryAddress] ([ID], [CustomerID], [Address], [Status], [CreateDate], [FullName], [PhoneNumber], [IsMacdinh]) VALUES (48, 32, N'146 Tran Hung Đao phường Bến Nghé, Quận 1, Tp.HCM', NULL, CAST(N'2021-11-19 18:24:50.523' AS DateTime), N'Trần Văn Thủy', N'0903123456', 0)
INSERT [dbo].[tb_CustomerDeliveryAddress] ([ID], [CustomerID], [Address], [Status], [CreateDate], [FullName], [PhoneNumber], [IsMacdinh]) VALUES (49, 39, N'66/25 Vũng tàu', NULL, CAST(N'2022-04-13 15:05:20.567' AS DateTime), N'Nghiệp vũng tàu', N'091437463', 0)
INSERT [dbo].[tb_CustomerDeliveryAddress] ([ID], [CustomerID], [Address], [Status], [CreateDate], [FullName], [PhoneNumber], [IsMacdinh]) VALUES (56, 49, N'55/10/36 Thành Mỹ P.8 Quận Tân bình TPHCM', 0, CAST(N'2024-03-25 16:59:25.230' AS DateTime), N'Nghiệp', N'0914566873', 0)
INSERT [dbo].[tb_CustomerDeliveryAddress] ([ID], [CustomerID], [Address], [Status], [CreateDate], [FullName], [PhoneNumber], [IsMacdinh]) VALUES (57, 49, N'Mông Đức, Phức Hữu, Ninh Phước, Ninh Thuận', 0, CAST(N'2024-03-27 10:53:37.893' AS DateTime), N'Nghiệp', N'0914566873', 1)
SET IDENTITY_INSERT [dbo].[tb_CustomerDeliveryAddress] OFF
SET IDENTITY_INSERT [dbo].[tb_DeliverySelection] ON 

INSERT [dbo].[tb_DeliverySelection] ([DeliverySelectionID], [DeliveryName], [DeliveryDescription], [SortBy], [DeliveryCost], [Dichvuvanchuyen], [Dichvulapdat], [Totaldeposit]) VALUES (1, N'Tự vận chuyển
', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tb_DeliverySelection] ([DeliverySelectionID], [DeliveryName], [DeliveryDescription], [SortBy], [DeliveryCost], [Dichvuvanchuyen], [Dichvulapdat], [Totaldeposit]) VALUES (2, N'Giao tận nhà
', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tb_DeliverySelection] ([DeliverySelectionID], [DeliveryName], [DeliveryDescription], [SortBy], [DeliveryCost], [Dichvuvanchuyen], [Dichvulapdat], [Totaldeposit]) VALUES (3, N'Nhận trả tận nhà
', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tb_DeliverySelection] ([DeliverySelectionID], [DeliveryName], [DeliveryDescription], [SortBy], [DeliveryCost], [Dichvuvanchuyen], [Dichvulapdat], [Totaldeposit]) VALUES (4, N'Giao và nhận trả tận nhà
', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tb_DeliverySelection] ([DeliverySelectionID], [DeliveryName], [DeliveryDescription], [SortBy], [DeliveryCost], [Dichvuvanchuyen], [Dichvulapdat], [Totaldeposit]) VALUES (5, N'Tự lắp đặt
', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tb_DeliverySelection] ([DeliverySelectionID], [DeliveryName], [DeliveryDescription], [SortBy], [DeliveryCost], [Dichvuvanchuyen], [Dichvulapdat], [Totaldeposit]) VALUES (6, N'Thợ tới lắp
', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tb_DeliverySelection] ([DeliverySelectionID], [DeliveryName], [DeliveryDescription], [SortBy], [DeliveryCost], [Dichvuvanchuyen], [Dichvulapdat], [Totaldeposit]) VALUES (7, N'Thợ đến tháo
', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tb_DeliverySelection] ([DeliverySelectionID], [DeliveryName], [DeliveryDescription], [SortBy], [DeliveryCost], [Dichvuvanchuyen], [Dichvulapdat], [Totaldeposit]) VALUES (8, N'Thợ đến lắp và tháo
', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_DeliverySelection] OFF
SET IDENTITY_INSERT [dbo].[tb_Deposit] ON 

INSERT [dbo].[tb_Deposit] ([DepositId], [DepositName], [Prices], [WishId]) VALUES (2, N'Giấy tờ xe', 100000, 7)
INSERT [dbo].[tb_Deposit] ([DepositId], [DepositName], [Prices], [WishId]) VALUES (4, N'CMND', 20000, 7)
INSERT [dbo].[tb_Deposit] ([DepositId], [DepositName], [Prices], [WishId]) VALUES (5, N'Passport', 120000, 7)
INSERT [dbo].[tb_Deposit] ([DepositId], [DepositName], [Prices], [WishId]) VALUES (6, N'CMND', 20000, 6)
INSERT [dbo].[tb_Deposit] ([DepositId], [DepositName], [Prices], [WishId]) VALUES (7, N'CMND | ID card', 150000, 4)
INSERT [dbo].[tb_Deposit] ([DepositId], [DepositName], [Prices], [WishId]) VALUES (8, N'Passport', 200000, 4)
INSERT [dbo].[tb_Deposit] ([DepositId], [DepositName], [Prices], [WishId]) VALUES (9, N'Bằng lái | Driver license', 300000, 4)
INSERT [dbo].[tb_Deposit] ([DepositId], [DepositName], [Prices], [WishId]) VALUES (10, N'Hộ khẩu | Household', 400000, 4)
SET IDENTITY_INSERT [dbo].[tb_Deposit] OFF
SET IDENTITY_INSERT [dbo].[tb_District] ON 

INSERT [dbo].[tb_District] ([Id], [Name], [Type], [LatiLongTude], [ProvinceId], [SortOrder], [IsPublished], [IsDeleted]) VALUES (1, N'Quận 1', NULL, NULL, 3, NULL, NULL, NULL)
INSERT [dbo].[tb_District] ([Id], [Name], [Type], [LatiLongTude], [ProvinceId], [SortOrder], [IsPublished], [IsDeleted]) VALUES (2, N'Quận 2', NULL, NULL, 3, NULL, NULL, NULL)
INSERT [dbo].[tb_District] ([Id], [Name], [Type], [LatiLongTude], [ProvinceId], [SortOrder], [IsPublished], [IsDeleted]) VALUES (3, N'Quận 3', NULL, NULL, 3, NULL, NULL, NULL)
INSERT [dbo].[tb_District] ([Id], [Name], [Type], [LatiLongTude], [ProvinceId], [SortOrder], [IsPublished], [IsDeleted]) VALUES (4, N'Quận 4', NULL, NULL, 3, NULL, NULL, NULL)
INSERT [dbo].[tb_District] ([Id], [Name], [Type], [LatiLongTude], [ProvinceId], [SortOrder], [IsPublished], [IsDeleted]) VALUES (5, N'Quận 5', NULL, NULL, 3, NULL, NULL, NULL)
INSERT [dbo].[tb_District] ([Id], [Name], [Type], [LatiLongTude], [ProvinceId], [SortOrder], [IsPublished], [IsDeleted]) VALUES (6, N'Quận 6', NULL, NULL, 3, NULL, NULL, NULL)
INSERT [dbo].[tb_District] ([Id], [Name], [Type], [LatiLongTude], [ProvinceId], [SortOrder], [IsPublished], [IsDeleted]) VALUES (7, N'Quận 7', NULL, NULL, 3, NULL, NULL, NULL)
INSERT [dbo].[tb_District] ([Id], [Name], [Type], [LatiLongTude], [ProvinceId], [SortOrder], [IsPublished], [IsDeleted]) VALUES (8, N'Quận 1', NULL, NULL, 3, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_District] OFF
SET IDENTITY_INSERT [dbo].[tb_GetLinkImage] ON 

INSERT [dbo].[tb_GetLinkImage] ([imgID], [imgPath], [imgUpload]) VALUES (1, N'../image_banner/terry_full_signiture.png', CAST(N'2018-04-22 00:00:00.000' AS DateTime))
INSERT [dbo].[tb_GetLinkImage] ([imgID], [imgPath], [imgUpload]) VALUES (2, N'../image_banner/sql-1.png', CAST(N'2018-04-22 00:00:00.000' AS DateTime))
INSERT [dbo].[tb_GetLinkImage] ([imgID], [imgPath], [imgUpload]) VALUES (3, N'http://savinaweb.siyosa.net/image_banner/sql-1.png', CAST(N'2018-04-22 00:00:00.000' AS DateTime))
INSERT [dbo].[tb_GetLinkImage] ([imgID], [imgPath], [imgUpload]) VALUES (4, N'http://savinaweb.siyosa.net/image_banner/m2.jpg', CAST(N'2018-04-22 17:09:06.950' AS DateTime))
INSERT [dbo].[tb_GetLinkImage] ([imgID], [imgPath], [imgUpload]) VALUES (5, N'http://savinaweb.siyosa.net/image_banner/icon-chat-mobile.png', CAST(N'2018-04-22 18:27:41.593' AS DateTime))
INSERT [dbo].[tb_GetLinkImage] ([imgID], [imgPath], [imgUpload]) VALUES (6, N'http://savinaweb.siyosa.net/image_banner/sql-2.png', CAST(N'2018-04-22 19:55:43.857' AS DateTime))
INSERT [dbo].[tb_GetLinkImage] ([imgID], [imgPath], [imgUpload]) VALUES (7, N'http://savinaweb.siyosa.net/image_banner/sql-2.png', CAST(N'2018-04-22 20:37:02.037' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_GetLinkImage] OFF
SET IDENTITY_INSERT [dbo].[tb_GroupCustomer] ON 

INSERT [dbo].[tb_GroupCustomer] ([GroupCusID], [GroupCusCode], [GroupCusName], [GroupCusDesc], [GroupCusValue], [IsDisplay], [IsDeleted], [GroupCusCreate]) VALUES (3, N'Cus2018001', N'Khách hàng vãng lai', N'Nhóm không có phúc lợi', 10000, 1, 0, CAST(N'2018-04-23 22:33:34.220' AS DateTime))
INSERT [dbo].[tb_GroupCustomer] ([GroupCusID], [GroupCusCode], [GroupCusName], [GroupCusDesc], [GroupCusValue], [IsDisplay], [IsDeleted], [GroupCusCreate]) VALUES (4, N'Cus2018002', N'Khách hàng nhóm 1', N'Được miễn phí vận chuyển ', 15000000, 1, 0, CAST(N'2018-04-23 22:34:49.543' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_GroupCustomer] OFF
SET IDENTITY_INSERT [dbo].[tb_HomeBanner] ON 

INSERT [dbo].[tb_HomeBanner] ([HomeBannerID], [BannerGroup], [BannerDescription], [BannerLandingpage], [BannerPath], [BannerUpload]) VALUES (1, N'1', N'Banner hiển thị bên trái', N'../productsearch', N'../image_banner/banner_mainslider_1.jpg', CAST(N'2018-04-23 19:37:38.053' AS DateTime))
INSERT [dbo].[tb_HomeBanner] ([HomeBannerID], [BannerGroup], [BannerDescription], [BannerLandingpage], [BannerPath], [BannerUpload]) VALUES (2, N'1', N'Banner hiển thị ở giữa', N'../productsearch', N'../image_banner/banner_mainslider_2.jpg', CAST(N'2018-04-22 23:26:07.127' AS DateTime))
INSERT [dbo].[tb_HomeBanner] ([HomeBannerID], [BannerGroup], [BannerDescription], [BannerLandingpage], [BannerPath], [BannerUpload]) VALUES (3, N'1', N'Banner hiển thị bên phải', N'../productsearch', N'../image_banner/banner_mainslider_3.jpg', CAST(N'2018-04-22 23:26:20.387' AS DateTime))
INSERT [dbo].[tb_HomeBanner] ([HomeBannerID], [BannerGroup], [BannerDescription], [BannerLandingpage], [BannerPath], [BannerUpload]) VALUES (4, N'2', N'Banner hiển thị bên trái', N'../productsearch', N'../image_banner/banner_home_3img_1.jpg', CAST(N'2018-07-20 23:01:44.823' AS DateTime))
INSERT [dbo].[tb_HomeBanner] ([HomeBannerID], [BannerGroup], [BannerDescription], [BannerLandingpage], [BannerPath], [BannerUpload]) VALUES (5, N'2', N'Banner hiển thị ở giữa', N'../productsearch', N'../image_banner/banner_home_3img_2.jpg', CAST(N'2018-04-16 05:24:04.957' AS DateTime))
INSERT [dbo].[tb_HomeBanner] ([HomeBannerID], [BannerGroup], [BannerDescription], [BannerLandingpage], [BannerPath], [BannerUpload]) VALUES (6, N'2', N'Banner hiển thị bên phải', N'../productsearch', N'../image_banner/banner_home_3img_3.jpg', CAST(N'2018-04-16 06:24:04.957' AS DateTime))
INSERT [dbo].[tb_HomeBanner] ([HomeBannerID], [BannerGroup], [BannerDescription], [BannerLandingpage], [BannerPath], [BannerUpload]) VALUES (7, N'3', N'Thứ 1 từ trên xuống', N'../productsearch', N'../image_banner/adv-banner-1.jpg', CAST(N'2018-04-16 07:24:04.957' AS DateTime))
INSERT [dbo].[tb_HomeBanner] ([HomeBannerID], [BannerGroup], [BannerDescription], [BannerLandingpage], [BannerPath], [BannerUpload]) VALUES (8, N'3', N'Thứ 2 từ trên xuống', N'../productsearch', N'../image_banner/adv-banner-2.jpg', CAST(N'2018-04-16 08:24:04.957' AS DateTime))
INSERT [dbo].[tb_HomeBanner] ([HomeBannerID], [BannerGroup], [BannerDescription], [BannerLandingpage], [BannerPath], [BannerUpload]) VALUES (9, N'3', N'Thứ 3 từ trên xuống', N'../productsearch', N'../image_banner/adv-banner-3.jpg', CAST(N'2018-04-16 09:24:04.957' AS DateTime))
INSERT [dbo].[tb_HomeBanner] ([HomeBannerID], [BannerGroup], [BannerDescription], [BannerLandingpage], [BannerPath], [BannerUpload]) VALUES (10, N'3', N'Thứ 4 từ trên xuống', N'../productsearch', N'../image_banner/adv-banner-4.jpg', CAST(N'2018-04-16 10:24:04.957' AS DateTime))
INSERT [dbo].[tb_HomeBanner] ([HomeBannerID], [BannerGroup], [BannerDescription], [BannerLandingpage], [BannerPath], [BannerUpload]) VALUES (11, N'3', N'Thứ 5 từ trên xuống', N'../productsearch', N'../image_banner/adv-banner-5.jpg', CAST(N'2018-04-16 11:24:04.957' AS DateTime))
INSERT [dbo].[tb_HomeBanner] ([HomeBannerID], [BannerGroup], [BannerDescription], [BannerLandingpage], [BannerPath], [BannerUpload]) VALUES (12, N'4', N'Banner lớn hiển thị bên trái', N'../productsearch', N'../image_banner/banner13.jpg', CAST(N'2018-04-16 12:24:04.957' AS DateTime))
INSERT [dbo].[tb_HomeBanner] ([HomeBannerID], [BannerGroup], [BannerDescription], [BannerLandingpage], [BannerPath], [BannerUpload]) VALUES (13, N'4', N'Banner nhỏ hiển thị bên phải trên', N'../productsearch', N'../image_banner/banner11.jpg', CAST(N'2018-04-16 13:24:04.957' AS DateTime))
INSERT [dbo].[tb_HomeBanner] ([HomeBannerID], [BannerGroup], [BannerDescription], [BannerLandingpage], [BannerPath], [BannerUpload]) VALUES (14, N'4', N'Banner nhỏ hiển thị bên phải dưới', N'../productsearch', N'../image_banner/banner12.jpg', CAST(N'2018-04-16 14:24:04.957' AS DateTime))
INSERT [dbo].[tb_HomeBanner] ([HomeBannerID], [BannerGroup], [BannerDescription], [BannerLandingpage], [BannerPath], [BannerUpload]) VALUES (20, NULL, NULL, NULL, N'http://savinaweb.siyosa.net/image_banner/terry_full_signiture.png', CAST(N'2018-04-22 20:40:05.907' AS DateTime))
INSERT [dbo].[tb_HomeBanner] ([HomeBannerID], [BannerGroup], [BannerDescription], [BannerLandingpage], [BannerPath], [BannerUpload]) VALUES (21, NULL, NULL, NULL, N'http://savinaweb.siyosa.net/image_banner/icon-chat-mobile.png', CAST(N'2018-04-22 20:59:45.300' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_HomeBanner] OFF
SET IDENTITY_INSERT [dbo].[tb_HomeMainBanner] ON 

INSERT [dbo].[tb_HomeMainBanner] ([HomeMainBannerID], [BannerPath], [BannerDescription], [BannerLandingpage], [BannerUpload], [BannerHeader1], [BannerHeader2], [SortArr]) VALUES (10, N'../image_banner/banner_mainbanner01.jpg', NULL, N'../productsearch', CAST(N'2018-04-23 13:47:27.737' AS DateTime), N'Nội dung 1', N'nội dung 2', 1)
INSERT [dbo].[tb_HomeMainBanner] ([HomeMainBannerID], [BannerPath], [BannerDescription], [BannerLandingpage], [BannerUpload], [BannerHeader1], [BannerHeader2], [SortArr]) VALUES (11, N'../image_banner/banner_mainbanner02.jpg', NULL, N'../productsearch', CAST(N'2018-04-23 13:47:54.253' AS DateTime), N'Header 1', N'Header 2', 2)
SET IDENTITY_INSERT [dbo].[tb_HomeMainBanner] OFF
SET IDENTITY_INSERT [dbo].[tb_HomeProductGroup] ON 

INSERT [dbo].[tb_HomeProductGroup] ([ProductGroupID], [ProductGroupName], [Sort], [Status]) VALUES (1, N'SẢN PHẨM MỚI NHẤT', 1, 1)
INSERT [dbo].[tb_HomeProductGroup] ([ProductGroupID], [ProductGroupName], [Sort], [Status]) VALUES (2, N'NHIỀU NGƯỜI TÌM NHẤT', 2, 1)
INSERT [dbo].[tb_HomeProductGroup] ([ProductGroupID], [ProductGroupName], [Sort], [Status]) VALUES (3, N'SẢN PHẨM ĐỘC, LẠ', 3, 1)
INSERT [dbo].[tb_HomeProductGroup] ([ProductGroupID], [ProductGroupName], [Sort], [Status]) VALUES (4, N'CÓ GIÁ THUÊ RẺ NHẤT', 4, 1)
INSERT [dbo].[tb_HomeProductGroup] ([ProductGroupID], [ProductGroupName], [Sort], [Status]) VALUES (5, N'SẢN PHẨM GẦN BẠN', 5, 1)
INSERT [dbo].[tb_HomeProductGroup] ([ProductGroupID], [ProductGroupName], [Sort], [Status]) VALUES (6, N'RAO VẶT MIỄN PHÍ', 6, 1)
INSERT [dbo].[tb_HomeProductGroup] ([ProductGroupID], [ProductGroupName], [Sort], [Status]) VALUES (7, N'SẢN PHẨM CHO TẶNG', 7, 1)
SET IDENTITY_INSERT [dbo].[tb_HomeProductGroup] OFF
SET IDENTITY_INSERT [dbo].[tb_Language] ON 

INSERT [dbo].[tb_Language] ([ID], [Language_name]) VALUES (1, N'en')
INSERT [dbo].[tb_Language] ([ID], [Language_name]) VALUES (2, N'en')
SET IDENTITY_INSERT [dbo].[tb_Language] OFF
SET IDENTITY_INSERT [dbo].[tb_LocalAccount] ON 

INSERT [dbo].[tb_LocalAccount] ([LocalAccountID], [AccountCode], [FirstName], [LastName], [UserName], [Password], [Birthday], [Gender], [Phone], [Email], [Address], [Status], [PermissionID], [Avatar], [CreateDate]) VALUES (1, N'acclocal01', NULL, NULL, N'admin', N'123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'../image_banner/SiYoSa-Logo.png', NULL)
SET IDENTITY_INSERT [dbo].[tb_LocalAccount] OFF
SET IDENTITY_INSERT [dbo].[tb_Order] ON 

INSERT [dbo].[tb_Order] ([OrderID], [CustomerID], [OrderCode], [OrderType], [DiscountAmount], [CreateDate], [PickupTime], [ReturnTime], [Quantity], [ServiceSelectionID], [DeliverySelectionID], [DocumentSelectionID], [TotalDepositAmount], [TotalOrderValue], [OrderStatus], [UpdatedBy], [UpdatedDate], [UpdatingStatus], [productId], [TotalTimes], [TotalPriceAccess], [TotalPrices], [IsDisplay], [TotalInstall], [TotalDelivery], [TotalOrders], [DepositId], [Dichvuvanchuyen], [Dichvulapdat], [Totaldeposit], [hinhthuc], [hinhthuccontent], [Ghichucoc1], [Ghichucoc2]) VALUES (1, 49, N'dsfdf', 1, 0, CAST(N'2024-05-19 00:00:00.000' AS DateTime), CAST(N'2024-05-16 08:00:00.000' AS DateTime), CAST(N'2024-05-17 09:00:00.000' AS DateTime), 2, 1, 1, NULL, 0, 0, 1, NULL, NULL, NULL, 348, 1, 1, 1, 1, 150000, 25000, 10000, 0, NULL, NULL, N'0', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_Order] OFF
SET IDENTITY_INSERT [dbo].[tb_OrderAccessorySelection] ON 

INSERT [dbo].[tb_OrderAccessorySelection] ([AccessorySelectionID], [OrderID], [ProductID], [Quantity], [Totals]) VALUES (1, 1, 358, 2, 1000)
SET IDENTITY_INSERT [dbo].[tb_OrderAccessorySelection] OFF
SET IDENTITY_INSERT [dbo].[tb_Pre_Order] ON 

INSERT [dbo].[tb_Pre_Order] ([pOrderId], [customerId], [productId], [status], [createTime], [Totals]) VALUES (1, 49, 348, 2, CAST(N'2024-07-28 20:38:34.873' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[tb_Pre_Order] OFF
SET IDENTITY_INSERT [dbo].[tb_Pre_Order_accompanying] ON 

INSERT [dbo].[tb_Pre_Order_accompanying] ([pAccompId], [pOrderId], [accompanyingQty], [productId], [status], [createTimeClone], [Totals]) VALUES (1, 1, 1, 346, NULL, CAST(N'2024-07-28 20:38:35.037' AS DateTime), 51000)
INSERT [dbo].[tb_Pre_Order_accompanying] ([pAccompId], [pOrderId], [accompanyingQty], [productId], [status], [createTimeClone], [Totals]) VALUES (2, 1, 1, 347, NULL, CAST(N'2024-07-28 20:38:35.123' AS DateTime), 51000)
SET IDENTITY_INSERT [dbo].[tb_Pre_Order_accompanying] OFF
SET IDENTITY_INSERT [dbo].[tb_Pre_Order_Details] ON 

INSERT [dbo].[tb_Pre_Order_Details] ([pOrderDetailId], [pOrderId], [rentalType], [productQty], [timePickup], [timeReturn], [serviceId], [depositId], [deliveryId], [deliveryAddress], [deliveryNote], [paymentMethodId], [createTimeClone], [OrderCode], [Totals], [TotalInstall], [TotalDelivery], [Dichvuvanchuyen], [Dichvulapdat], [Totaldeposit], [hinhthuc], [hinhthuccontent], [GhichuDichVu], [GhiChuVanChuyen], [Ghichucoc1], [Ghichucoc2], [Imagegc1], [Imagegc2]) VALUES (1, 1, 1, 1, N'29/07/2024 08:00:00', N'30/07/2024 08:00:00', 3, NULL, 2, NULL, NULL, NULL, NULL, N'20240728203834', 51000, 100000, 25000, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_Pre_Order_Details] OFF
SET IDENTITY_INSERT [dbo].[tb_Product] ON 

INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (339, N'HA0001', N'Máy bắt ốc vít không dây', N'/image_product/HA0001 may-bat-oc-vit.jpg', NULL, NULL, NULL, N'Dùng bắt, tháo ốc vít với khả năng thay nhanh chóng 6 loại đầu vít dẹt (-), đầu bake (+), lục giác với các kích thước lớn nhỏ khác nhau nhờ cơ cấu khớp đặc biệt.', N'', N'', N'', 90, NULL, N'3.000 đ / 2h đầu, 1.500 đ / h tiếp theo', N'10.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 200000, N'active', N'active', N'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'KAK1N1', NULL, NULL, NULL, NULL, NULL, NULL, 10000)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (340, N'HA0002', N'Máy khoan và bắt vít không dây', N'/image_product/HA0002 may-khoan-pin.jpg', NULL, NULL, NULL, N'Máy có thể khoan gỗ, nhôm và sắt mỏng với mũi khoan dưới 8mm.
Máy có tính năng đảo chiều, chỉnh tốc độ nhanh chậm, điều chỉnh lực siết vít.
Máy chỉ kèm 1 pin theo máy và cục sạc chưa bao gồm pin thứ 2, đầu mở vít và mũi khoan. Quý khách lựa thêm pin, các loại đầu vít và loại mũi khoan theo nhu cầu.', N'<p>Do kh&ocirc;ng cần d&acirc;y điện n&ecirc;n m&aacute;y khoan pin th&iacute;ch hợp với những c&ocirc;ng việc l&agrave;m cần di chuyển nhiều, l&agrave;m tr&ecirc;n cao nơi kh&oacute; khăn khi phải thiết lập 1 đường d&acirc;y điện như c&aacute;c m&aacute;y khoan điện truyền thống. M&aacute;y c&oacute; 2 cục pin sạc v&agrave; đế sạc ri&ecirc;ng, gi&uacute;p cho ch&uacute;ng ta l&agrave;m việc gần như li&ecirc;n tục m&agrave; kh&ocirc;ng phải chờ sạc.(cần phải thu&ecirc; th&ecirc;m 1 cục pin nữa nếu như bạn cần). C&oacute; thể d&ugrave;ng c&aacute;c đầu mũi bắt v&iacute;t, mũi khoan gỗ, khoan sắt 8 mm trở lại M&aacute;y c&oacute; đ&egrave;n chiếu s&aacute;ng v&agrave; c&oacute; t&iacute;nh năng đảo chiều, chỉnh tốc độ nhanh chậm, điều chỉnh lực siết v&iacute;t gi&uacute;p cho lực siết vừa đủ kh&ocirc;ng qu&aacute; mạnh khiến g&atilde;y đầu ốc hay bể vật cần siết. M&aacute;y c&oacute; thể khoan gỗ, nh&ocirc;m v&agrave; sắt mỏng với mũi khoan từ 8mm trở lại. M&aacute;y c&oacute; 2 cục pin sạc v&agrave; đế sạc ri&ecirc;ng, gi&uacute;p cho ch&uacute;ng ta l&agrave;m việc gần như li&ecirc;n tục m&agrave; kh&ocirc;ng phải chờ sạc.</p>', N'<p>6868</p>', N'<p>M&aacute;y c&oacute; thể d&ugrave;ng c&aacute;c đầu mũi bắt v&iacute;t, mũi khoan gỗ, khoan sắt 8 mm trở lại C&aacute;ch thay mũi v&iacute;t, mũi khoan : Gạt chốt đen tr&ecirc;n th&acirc;n m&aacute;y qua phải (hoặc tr&aacute;i t&ugrave;y theo m&aacute;y) để m&aacute;y quay ngược chiều kim đồng hồ. Lấy tay (n&ecirc;n đeo găng tay để kh&ocirc;ng bị đau r&aacute;t) giữ chặt v&ograve;ng nhựa đen ngo&agrave;i c&ugrave;ng, b&oacute;p nhẹ c&ograve; m&aacute;y để 3 chấu kẹp mũi mở rộng ra cho tới khi bỏ vừa mũi v&iacute;t hoặc mũi khoan. Sau đ&oacute; gạt chốt ngược lại, tiếp tục giữ chặt v&ograve;ng đen v&agrave; b&oacute;p c&ograve; để kẹp chặt mũi khoan hoặc mũi v&iacute;t lại. C&aacute;ch sử dụng chức năng v&iacute;t : M&aacute;y c&oacute; c&aacute;c cấp độ chỉnh lực siết từ yếu đến mạnh. Bạn xoay v&ograve;ng trong c&ugrave;ng c&oacute; đ&aacute;nh số lực siết để chọn lực siết nhỏ nếu cần gắn c&aacute;c vật bằng nhựa d&ugrave;ng ốc v&iacute;t nhỏ v&agrave; chỉnh mạnh lực siết l&ecirc;n khi d&ugrave;ng ốc v&iacute;t lớn. Gạt chốt qua tr&aacute;i hoặc qua phải để đảo chiều quay m&agrave; mở hay siết v&iacute;t. Lưu &yacute; khi gần hết ốc v&iacute;t th&igrave; n&ecirc;n b&oacute;p c&ograve; nhẹ tay để giảm tốc độ lại cho vừa phải, tr&aacute;ch chạy nhanh qu&aacute; sẽ sinh ra lực qu&aacute;n t&iacute;nh lớn khi bị d&ugrave;ng đột ngột do hết v&iacute;t m&agrave; c&oacute; thể l&agrave;m g&atilde;y v&iacute;t. C&aacute;ch sử dụng m&aacute;y khoan : M&aacute;y c&oacute; thể khoan gỗ, nh&ocirc;m v&agrave; sắt mỏng với mũi khoan từ 8mm trở lại. Xoay v&ograve;ng trong c&ugrave;ng l&ecirc;n mức cao nhất hoặc v&agrave;o vị tr&iacute; khoan, khi đ&oacute; cổ m&aacute;y sẽ kh&ocirc;ng tự trượt khi bị ngừng đột ngột như ở chế độ bắt v&iacute;t. Với sắt d&agrave;y th&igrave; phải d&ugrave;ng m&aacute;y khoan điện c&oacute; c&ocirc;ng suất lớn, v&ograve;ng quay mạnh.</p>', 80, 1, N'9.000 đ / 2h đầu, 4.500 đ / h tiếp theo', N'35.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 700000, NULL, NULL, NULL, N'active', NULL, NULL, NULL, N'', N'', NULL, N'KAK1N1', NULL, 0, 0, 0, 0, 0, 995)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (341, N'HA0003', N'Máy khoan không dây có búa', N'/image_product/6868', NULL, NULL, NULL, N'Ngoài chức năng khoan gỗ, nhôm và sắt mỏng máy có thể khoan được tường gạch với mũi khoan dưới 10 mm.
Máy có tính năng đảo chiều, chỉnh tốc độ nhanh chậm, điều chỉnh lực siết vít.
Máy chỉ kèm 1 pin theo máy và cục sạc chưa bao gồm pin thứ 2, đầu mở vít và mũi khoan. Quý khách lựa thêm pin, các ', N'Nhờ có búa gõ nên máy có thể dùng để khoan tường, bêtông với mũi khoan từ 8mm trở xuống.
Máy có đèn chiếu sáng và có tính năng đảo chiểu, chỉnh tốc độ nhanh chậm điều chỉnh lực siết ốc giúp cho lực siết vừa đủ không quá mạnh khiến gãy đầu ốc ốc bể vật cần siết.
Máy có thể khoan gỗ, nhôm và sắt mỏng với mũi khoản từ 10 mm trở lại.
Máy có 2 cục pin sạc và đế sạc riêng, giúp cho chúng ta làm việc gần như liên tục mà không phải chờ sạc. Do không cần dây điện nên thích hợp với những công việc làm di chuyển nhiều, làm trên cao nơi khó khăn khi phải thiết lập 1 đường dây điện như các máy khoan điện truyền thống.
Có thể dùng các đầu mũi bắt vít, mũi khoan gỗ, khoan sắt 10 mm trở lại, mũi khoan bêtông (8mm trở lại)', N'6868', N'6868', 6868, NULL, N'
9.000 đ / 2h đầu, 4.500 đ / h tiếp theo', N'35.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 6868, NULL, NULL, NULL, N'active', N'active', NULL, NULL, NULL, NULL, NULL, N'KAK1N1', NULL, NULL, NULL, NULL, NULL, NULL, 1000)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (342, N'HA0005', N'Máy khoan điện 650w', N'/image_product/HA0005 Khoan-dien-Hammer-Drill.jpg', NULL, NULL, NULL, N'Máy khoan điện động lực có thể khoan được nhiều thứ như gỗ, nhôm, kính, sắt, gạch, bê tông mỏng.
Máy có tính năng đảo chiều, điều chỉnh tốc độ nên có thể tháo và siết ốc vít với độ lực lớn. 
Máy chưa bao gồm đầu mở vít và mũi khoan. Quý khách lựa thêm các loại vít và loại mũi khoan theo nhu cầu.', N'<p>M&aacute;y khoan điện động lực c&oacute; thể khoan được nhiều thứ như gỗ, nh&ocirc;m, k&iacute;nh, sắt tương đối d&agrave;y (3 mm trở lại), gạch, b&ecirc; t&ocirc;ng mỏng (50 - 60 mm). M&aacute;y c&oacute; t&iacute;nh năng đảo chiều, điều chỉnh tốc độ n&ecirc;n c&oacute; thể th&aacute;o v&agrave; siết ốc v&iacute;t với độ lực lớn. (c&aacute;c vật mỏng, yếu như nhựa kh&ocirc;ng n&ecirc;n d&ugrave;ng v&igrave; c&oacute; thể l&agrave;m vỡ nhựa, gẫy v&iacute;t v&igrave; lực siết qu&aacute; mạnh). C&oacute; thể d&ugrave;ng c&aacute;c đầu mũi bắt v&iacute;t, mũi khoan gỗ, khoan sắt (10 mm) trở lại, mũi khoan b&ecirc;t&ocirc;ng (8mm trở lại)</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'13.000 đ / 2h đầu, 6.500 đ / h tiếp theo', N'50.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 1000000, NULL, N'active', NULL, N'active', NULL, NULL, NULL, N'', N'', NULL, N'KAK1N1', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (343, N'HA0008', N'Máy khoan búa đục bê tông.', N'/image_product/HA0008 Khoan-Duc.jpeg', NULL, NULL, NULL, N'Máy khoan búa đục bê tông có công suất lớn hơn khoan thường nên có thể khoan bê tông sâu tới 15 cm.
Máy có thể đục gạch men, gạch nung một cách dễ dàng nhờ mũi đục chuyên dụng.
Máy chưa bao gồm mũi khoan và mũi đục. Quý khách lựa thêm các loại vít và loại mũi khoan theo nhu cầu.', N'<p>M&aacute;y khoan điện động lực loại trung c&oacute; sức mạnh hơn so với khoan điện loại nhỏ cầm 1 tay nhưng lại kh&aacute; nặng n&ecirc;n kh&oacute; c&oacute; thể d&ugrave;ng khoan gỗ, nh&ocirc;m, k&iacute;nh. Chỉ n&ecirc;n d&ugrave;ng để khoan sắt d&agrave;y (5 mm trở lại), gạch d&agrave;y (200), b&ecirc; t&ocirc;ng (06 - 100 mm). Đặc biệt m&aacute;y c&oacute; t&iacute;nh năng b&uacute;a đập kh&aacute; mạnh n&ecirc;n th&iacute;ch hợp việc đục gạch. C&oacute; thể d&ugrave;ng c&aacute;c đầu mũi khoan sắt (13 mm trở lại), mũi khoan b&ecirc;t&ocirc;ng (10 mm trở lại), mũi đục nhọn hoặc dẹt bề ngang dưới 20 mm.</p>', N'', N'', 90, 1, N'13.000 đ / 2h đầu, mỗi giờ tiếp theo 6.500 đ / h', N'50.000 đ / ngày', N'500.000 đ / tháng', NULL, NULL, NULL, NULL, NULL, 1000000, N'active', NULL, N'active', NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N1', NULL, 1, 1, 0, 0, 0, 9996)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (344, N'HA0009', N'Mũi khoan sắt 3 mm', N'/image_product/HA0009 mui-khoan-sat.jpg', NULL, NULL, NULL, N'Mũi khoan sắt 3 mm dài 60 mm', N'6868', N'6868', N'6868', 90, NULL, N'
2.000 đ / 4h đầu, mỗi giờ tiếp theo 500 đ / h', N'3.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 10000, NULL, N'active', NULL, NULL, N'active', NULL, NULL, NULL, NULL, NULL, N'KAK1N2', NULL, NULL, NULL, NULL, NULL, NULL, 1000)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (345, N'HA0010', N'Mũi khoan sắt 6 mm', N'/image_product/HA0009 mui-khoan-sat.jpg', NULL, NULL, NULL, N'Mũi khoan sắt 6 mm dài 90 mm', N'6868', N'6868', N'6868', 90, NULL, N'
2.000 đ / 2h đầu, mỗi giờ tiếp theo 1.000 đ / h', N'5.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 20000, NULL, NULL, NULL, N'active', N'active', NULL, NULL, NULL, NULL, NULL, N'KAK1N2', NULL, NULL, NULL, NULL, NULL, NULL, 1000)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (346, N'HA0011', N'Mũi khoan sắt 8 mm', N'/image_product/HA0009 mui-khoan-sat.jpg', NULL, NULL, NULL, N'Mũi khoan sắt 8 mm dài 115 mm', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'3.000 đ / 2h đầu, mỗi giờ tiếp theo 1.500 đ / h', N'9.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 36000, N'active', N'active', NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 936)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (347, N'HA0012', N'Mũi khoan sắt 10 mm', N'/image_product/HA0009 mui-khoan-sat.jpg', NULL, NULL, NULL, N'Mũi khoan sắt 10 mm dài 130 mm', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'3.000 đ / 2h đầu, mỗi giờ tiếp theo 1.500 đ / h', N'12.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 45000, N'active', N'active', NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 1, 1, 0, 0, 0, 950)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (348, N'HA0013', N'Mũi khoan sắt 13 mm', N'/image_product/HA0009 mui-khoan-sat.jpg', NULL, NULL, NULL, N'Mũi khoan sắt 13 mm dài 150 mm', N'<p>Mô tả san phẩm</p>', N'<p>Thông số kỹ thuật</p>', N'<p>Hướng dẫn sử dụng</p>', 90, 1, N'4.000 đ / 2h đầu, mỗi giờ tiếp theo 2.000 đ / h', N'15.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 90000, N'active', NULL, NULL, N'active', N'active', N'active', N'active', N'', N'', NULL, N'KAK1N2', NULL, 1, 1, 1, 50000, 1, 921)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (349, N'HA0014', N'Mũi khoan gỗ 3 mm', N'/image_product/HA0014 mui-khoan-go.jpg', NULL, NULL, NULL, N'Mũi khoan gỗ có định tâm - 3 mm dài 60 mm', N'6868', N'6868', N'6868', 90, NULL, N'
2.000 đ / 4h đầu, mỗi giờ tiếp theo 500 đ / h', N'3.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 10000, NULL, N'active', NULL, N'active', NULL, NULL, NULL, NULL, NULL, NULL, N'KAK1N2', NULL, NULL, NULL, NULL, NULL, NULL, 1000)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (350, N'HA0015', N'Mũi khoan gỗ 6 mm', N'/image_product/HA0014 mui-khoan-go.jpg', NULL, NULL, NULL, N'Mũi khoan gỗ có định tâm - 6 mm dài 90 mm', N'', N'', N'', 90, 1, N'2.000 đ / 2h đầu, mỗi giờ tiếp theo 1.000 đ / h', N'5.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 20000, NULL, NULL, NULL, NULL, NULL, NULL, N'active', N'', N'', NULL, N'KAK1N2', NULL, 1, 1, 0, 0, 0, 972)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (351, N'HA0016', N'Mũi khoan gỗ 8 mm', N'/image_product/HA0014 mui-khoan-go.jpg', NULL, NULL, NULL, N'Mũi khoan gỗ có định tâm - 8 mm dài 115 mm', N'6868', N'6868', N'6868', 90, NULL, N'
3.000 đ / 2h đầu, mỗi giờ tiếp theo 1.500 đ / h', N'9.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 36000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'KAK1N2', NULL, NULL, NULL, NULL, NULL, NULL, 1000)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (352, N'HA0017', N'Mũi khoan gỗ 10 mm', N'/image_product/HA0014 mui-khoan-go.jpg', NULL, NULL, NULL, N'Mũi khoan gỗ có định tâm - 10 mm dài 130 mm', N'6868', N'6868', N'6868', 90, NULL, N'
3.000 đ / 2h đầu, mỗi giờ tiếp theo 1.500 đ / h', N'12.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 45000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'KAK1N2', NULL, NULL, NULL, NULL, NULL, NULL, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (354, N'HA0019', N'Mũi khoan bêtông 6 mm', N'/image_product/HA0019 mui-khoan-be-tong.jpg', NULL, NULL, NULL, N'Mũi khoan bêtông 6 mm dài 100 mm', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'2.000 đ / 2h đầu, mỗi giờ tiếp theo 1.000 đ / h', N'5.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 20000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 6)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (355, N'HA0020', N'Mũi khoan bêtông 8 mm', N'/image_product/HA0019 mui-khoan-be-tong.jpg', NULL, NULL, NULL, N'Mũi khoan bêtông 8 mm dài 118 mm', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'3.000 đ / 2h đầu, mỗi giờ tiếp theo 1.500 đ / h', N'8.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 30000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 5)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (356, N'HA0021', N'Mũi khoan bêtông 10 mm', N'/image_product/HA0019 mui-khoan-be-tong.jpg', NULL, NULL, NULL, N'Mũi khoan bêtông 10 mm dài 120 mm', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'3.000 đ / 2h đầu, mỗi giờ tiếp theo 1.500 đ / h', N'10.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 40000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 6)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (357, N'HA0022', N'Mũi khoan bêtông 13 mm', N'/image_product/HA0019 mui-khoan-be-tong.jpg', NULL, NULL, NULL, N'Mũi khoan bêtông 13 mm dài 150 mm', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'4.000 đ / 2h đầu, mỗi giờ tiếp theo 2.000 đ / h', N'15.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 60000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 8)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (358, N'HA0023', N'Mũi khoan bêtông cán dài (không cài)', N'/image_product/HA0023 mui-khoan-be-tong-can-dai-khong-cai.jpg', NULL, NULL, NULL, N'6868', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'4.000 đ / 2h đầu, mỗi giờ tiếp theo 2.000 đ / h', N'15.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 60000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (359, N'HA0026', N'Mũi khoan bêtông đuôi cài 6 mm', N'/image_product/HA0026 mui-khoan-be-tong-duoi-cai.jpg', NULL, NULL, NULL, N'Mũi khoan bêtông 6 mm dài 100 mm đuôi cài kiểu máy khoan bosch lớn', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'2.000 đ / 2h đầu, mỗi giờ tiếp theo 1.000 đ / h', N'5.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 20000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (360, N'HA0027', N'Mũi khoan bêtông đuôi cài 8 mm', N'/image_product/HA0026 mui-khoan-be-tong-duoi-cai.jpg', NULL, NULL, NULL, N'Mũi khoan bêtông 8 mm dài 118 mm đuôi cài kiểu máy khoan bosch lớn', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'3.000 đ / 2h đầu, mỗi giờ tiếp theo 1.500 đ / h', N'9.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 36000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (361, N'HA0028', N'Mũi khoan bêtông đuôi cài 10 mm', N'/image_product/HA0026 mui-khoan-be-tong-duoi-cai.jpg', NULL, NULL, NULL, N'Mũi khoan bêtông 10 mm dài 120 mm đuôi cài kiểu máy khoan bosch lớn', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'3.000 đ / 2h đầu, mỗi giờ tiếp theo 1.500 đ / h', N'12.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 45000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (364, N'HA0031', N'Tắc kê nhựa - từ 3 cm đến 7 cm', N'/image_product/HA0031 tac-ke-nhua.jpg', NULL, NULL, NULL, N'Tắc kê nhựa dùng để cố định những vật dụng trên tường gạch, như đèn, quạt, tivi, tủ bếp… hay đồng hồ, bức ảnh, bức tranh trang trí trong căn nhà bạn. Làm cho căn nhà bạn trở nên gọn đẹp.', N'<p>Tắc k&ecirc; nhựa d&ugrave;ng để cố định những vật dụng tr&ecirc;n tường, như đ&egrave;n, quạt, tivi, tủ bếp&hellip; hay đồng hồ, bức ảnh, bức tranh trang tr&iacute; trong căn nh&agrave; bạn. L&agrave;m cho căn nh&agrave; bạn trở n&ecirc;n gọn g&agrave;ng, đẹp. T&ugrave;y theo trọng lượng vật treo m&agrave; bạn chọn k&iacute;ch thước tắc k&ecirc; ph&ugrave; hợp. Vật treo c&agrave;ng nặng th&igrave; d&ugrave;ng tắc k&ecirc; c&agrave;ng d&agrave;i, c&agrave;ng lớn.</p>', N'<p>6868</p>', N'<p>C&aacute;c bước gắn tắc k&ecirc; : - Bước 1 : X&aacute;c định trọng lượng vật cần treo, x&aacute;c định bao nhi&ecirc;u điểm treo từ đ&oacute; chọn loại tắc k&ecirc; ph&ugrave; hợp v&agrave; d&ugrave;ng mũi khoan b&ecirc; t&ocirc;ng c&oacute; đường k&iacute;nh ph&ugrave; hợp với tắc k&ecirc; đ&oacute; để khi đ&oacute;ng tắc k&ecirc; v&agrave;o cho vừa, kh&ocirc;ng rộng qu&aacute; sẽ khiến bị tuột tắc k&ecirc; ra khi treo vật v&agrave;o, kh&ocirc;ng bị chặt qu&aacute; khi đ&oacute;ng tắc k&ecirc; v&agrave;o bị t&eacute;t, g&atilde;y tắc k&ecirc;. - Bước 2 : Đo hoặc ướm thử vật treo cho c&acirc;n bằng, định vị tr&iacute;, đ&aacute;nh dấu vị tr&iacute; bằng b&uacute;t cho ch&iacute;nh x&aacute;c. - Bước 3 : D&ugrave;ng mũi khoan ph&ugrave; hợp với tắc k&ecirc; (l&agrave; mũi khoan c&oacute; đường k&iacute;nh bằng với th&acirc;n ch&iacute;nh tắc k&ecirc;, nhưng phải nhỏ hơn phần gai ch&igrave;a ra của tắc k&ecirc;) v&agrave; khoan thẳng g&oacute;c, s&acirc;u hơn chiều d&agrave;i tắc k&ecirc; 1 ch&uacute;t. - Bước 4 : D&ugrave;ng b&uacute;a g&otilde; nhẹ tắc k&ecirc; v&agrave;o lỗ khoan từ từ cho tới khi tắc k&ecirc; lọt v&agrave;o hết bằng mặt tường. Trường hợp khoan kh&ocirc;ng thể s&acirc;u hơn th&igrave; c&oacute; thể đ&oacute;ng tắc k&ecirc; v&agrave;o rồi cắt bỏ phần dư. - Bước 5 : Kiểm tra tắc k&ecirc; đ&oacute;ng c&oacute; bị lỏng kh&ocirc;ng. Nếu tắc k&ecirc; bị lỏng qu&aacute; sẽ nguy hiểm g&acirc;y tuột tắc k&ecirc; l&agrave;m rơi bể vật treo v&agrave;o. Khắc phục bằng c&aacute;ch cắt đ&ocirc;i tắc k&ecirc; kh&aacute;c rồi đ&oacute;ng ch&ecirc;m th&ecirc;m v&agrave;o, hoặc gỡ bỏ v&agrave; thay tắc k&ecirc; kh&aacute;c c&oacute; k&iacute;ch thước lớn hơn. - Bước 6 : Bắt v&iacute;t treo vật cần gắn v&agrave;o, c&oacute; thể c&acirc;n chỉnh l&ecirc;n xuống 1 ch&uacute;t cho c&acirc;n đối. Nếu lệch qu&aacute; th&igrave; phải khoan lại để bảo đảm an to&agrave;n, thẩm mĩ.</p>', 90, 1, N'4.000 đ / 2h đầu, mỗi giờ tiếp theo 2.000 đ / h', N'15.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 90000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (365, N'HA0032', N'Tắc kê nhựa nở - tắc kê bướm dùng cho tấm thạch cao', N'/image_product/HA0032 tac-ke-nhua-no-tac-ke-buom-Butter-Fly-Drywall-Plug.jpg', NULL, NULL, NULL, N'Tắc kê nhựa nở còn gọi là tắc kê bướm để chuyên gắn trần, vách làm bằng thạch cao.', N'<p>Tắc k&ecirc; nhựa nở c&ograve;n gọi l&agrave; tắc k&ecirc; bướm để chuy&ecirc;n gắn trần, v&aacute;ch l&agrave;m bằng thạch cao. V&igrave; tấm thạch cao mỏng (thường chưa đến 1 cm) lại yếu hơn so với tường gạch cho n&ecirc;n d&ugrave;ng tắc k&ecirc; thường sẽ kh&ocirc;ng thể b&aacute;m giữ chặt được m&agrave; phải sử dụng loại tắc k&ecirc; nở chuy&ecirc;n dụng n&agrave;y.</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'4.000 đ / 2h đầu, mỗi giờ tiếp theo 2.000 đ / h', N'15.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 90000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (366, N'HA0035', N'Tắc kê sắt - bu lông nở', N'/image_product/HA0035 tac-ke-sat-bu-long-no.png', NULL, NULL, NULL, N'Tắc kê sắt - bu lông nở dùng để cố định những vật dụng nặng lên cột, trần, sàn làm bằng bê tông.', N'<p>Tắc k&ecirc; sắt - bu l&ocirc;ng nở d&ugrave;ng để cố định những vật dụng nặng tr&ecirc;n b&ecirc; t&ocirc;ng như : cột, trần, s&agrave;n. tường b&ecirc; t&ocirc;ng. Kh&ocirc;ng sử dụng tr&ecirc;n tường gạch, v&igrave; tường gạch kh&ocirc;ng chịu được lực siết mạnh, gạch sẽ vỡ v&agrave; rơi tắc k&ecirc;.</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'4.000 đ / 2h đầu, mỗi giờ tiếp theo 2.000 đ / h', N'15.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 90000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (367, N'HA0037', N'Đầu chuyển hướng mũi khoan 90', N'/image_product/HA0037 dau-chuyen-huong-mui-khoan-90.jpg', NULL, NULL, NULL, N'Đầu chuyển hướng mũi khoan 90 độ khóa tay lắp máy khoan đầu kẹp giúp bạn có thể khoan hoạc bắt vít ở những nơi nhỏ hẹp', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'4.000 đ / 2h đầu, mỗi giờ tiếp theo 2.000 đ / h', N'15.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 90000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (368, N'HA0039', N'Đầu kẹp mũi khoan, mũi vít chuyển hướng 90 độ linh hoạt', N'/image_product/6868', NULL, NULL, NULL, N'Đầu kẹp mũi khoan, mũi vít chuyển hướng 90 độ linh hoạt. Phù hợp những nơi cần khoan, vít có không gian chật hẹp, phức tạp.', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'4.000 đ / 2h đầu, mỗi giờ tiếp theo 2.000 đ / h', N'15.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 90000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (369, N'HA0041', N'Mũi khoan lỗ tròn để khoan kính, gạch men', N'/image_product/HA0041 mui-khoan-lo-tron-khoan-kinh-khoan-gach-men.jpg', NULL, NULL, NULL, N'Mũi khoan lỗ tròn để khoan kính, gạch men và nếu có kỹ thuật tốt thì có thể khoan lỗ đá marble, đá hoa cương.', N'<p>Mũi khoan lỗ tr&ograve;n c&oacute; nhiều k&iacute;ch thước kh&aacute;c nhau ph&ugrave; hợp với nhiều ống kh&aacute;c nhau. Đầu mũi khoan c&oacute; phủ bụi kim cương để khoan k&iacute;nh, gạch men v&agrave; nếu c&oacute; kỹ thuật tốt th&igrave; c&oacute; thể khoan lỗ đ&aacute; d&agrave;y, cứng như đ&aacute; marble, đ&aacute; hoa cương. Tuy nhi&ecirc;n người d&ugrave;ng cần nắm r&otilde; kỹ thuật khoan cắt để an to&agrave;n v&agrave; bền mũi khoan.</p>', N'<p>6868</p>', N'<p>Chọn mũi khoan lỗ tr&ograve;n c&oacute; k&iacute;ch thước vừa đủ đường ống cần xuy&ecirc;n qua. Kh&ocirc;ng n&ecirc;n chọn mũi lớn qu&aacute; v&igrave; gi&aacute; mũi c&agrave;ng lớn c&agrave;ng đắt v&agrave; thời gian khoan c&agrave;ng l&acirc;u. Chỉ khoan được k&iacute;nh chưa t&ocirc;i luyện, chưa gia cường, sau khi gia c&ocirc;ng khoan, cắt xong th&igrave; mới mang đi gia cường. C&ograve;n nếu đ&atilde; l&agrave; k&iacute;nh cường lực th&igrave; tuyệt đối kh&ocirc;ng khoan, cắt k&iacute;nh cường lực nếu kh&ocirc;ng k&iacute;nh sẽ nổ vỡ ngay lập tức. Để bền mũi khoan th&igrave; ta phải nhỏ nước li&ecirc;n tục để l&agrave;m m&aacute;t mũi khoan cũng như hạn chế bụi mịn bay ra trong l&uacute;c gia c&ocirc;ng. V&igrave; mũi khoan lỗ tr&ograve;n kh&ocirc;ng c&oacute; mũi định t&acirc;m cho n&ecirc;n mũi khoan rất dễ bị trượt. V&igrave; vậy trước khi khoan th&igrave; lấy viết đ&aacute;nh dấu v&ograve;ng tr&ograve;n vị tr&iacute; khoan. Sau đ&oacute; đưa mũi khoan nghi&ecirc;ng từ 10 đến 20 độ so với mặt cần cắt để mũi khoan chỉ ăn 1 phần đường tr&ograve;n. L&agrave;m như vậy th&igrave; mũi khoan cắt &iacute;t hơn, sẽ nhẹ hơn, tr&aacute;ch bị hiện tượng trượt mũi khoan cũng như mũi khoan kh&ocirc;ng chịu &aacute;p lực qu&aacute; nhiều 1 l&uacute;c v&agrave; c&oacute; chỗ để tho&aacute;t nhiệt ma s&aacute;t tốt hơn, mũi sẽ bền hơn so với việc khoan &eacute;p cả mũi xuống. Sau khi cắt xống 1, 2 mm th&igrave; tiếp tục đổi dần vị tr&iacute; nghi&ecirc;ng theo đường đ&atilde; đ&aacute;nh dấu cho đến hết đường tr&ograve;n.</p>', 90, 1, N'4.000 đ / 2h đầu, mỗi giờ tiếp theo 2.000 đ / h', N'15.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 90000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (370, N'HA0049', N'Mũi khoan khoét gỗ đuôi cá ', N'/image_product/HA0049 mui-khoan-khoet-go-duoi-ca.jpg', NULL, NULL, NULL, N'Mũi khoan gỗ đuôi cá là kiểu mũi khoan dẹt có mũi định tâm dùng cho các loại gỗ mềm. Tốc độ quay đáp ứng từ 800 vòng đến 3000 vòng/phút tùy theo đường kính khoan.', N'<p>Mũi khoan gỗ đu&ocirc;i c&aacute;&nbsp;hay c&ograve;n gọi l&agrave; mũi khoan gỗ dẹt c&oacute; định t&acirc;m, kiểu cổ điển. R&igrave;a mũi khoan c&oacute; me định dạng đường bi&ecirc;n lỗ khoan. Mũi định t&acirc;m kiểu h&igrave;nh th&aacute;p tứ diện. Lỗ tr&ecirc;n đầu mũi d&ugrave;ng để tản nhiệt v&agrave; treo m&oacute;c dụng cụ. Đ&acirc;y l&agrave; kiểu ra đời từ rất sớm, th&ocirc; sơ cổ điển nhất so với c&aacute;c loại mũi khoan xoắn ốc, hay mũi kho&eacute;t lỗ gỗ nhưng rất hiệu dụng, v&igrave; thế n&oacute; vẫn được sử dụng đến ng&agrave;y nay. Mũi khoan gỗ đu&ocirc;i c&aacute; chỉ sử dụng cho c&aacute;c loại gỗ mềm, kh&ocirc;ng d&ugrave;ng cho c&aacute;c loại gỗ qu&aacute; cứng do khả năng giữ hướng khoan thấp v&agrave; độ đồng t&acirc;m thấp. Vận tốc của m&aacute;y khoan sử dụng đối với mũi khoan gỗ dẹt n&agrave;y từ 800 v&ograve;ng/ph&uacute;t đến 3000 v&ograve;ng/ph&uacute;t. T&ugrave;y theo đường k&iacute;nh kh&aacute;c nhau, bạn tham chiếu với giản đồ hay đặc tuyến quan hệ đường k&iacute;nh mũi khoan v&agrave; vận tốc quay.</p>', N'<p>Mũi khoan gỗ đu&ocirc;i c&aacute; chỉ sử dụng cho c&aacute;c loại gỗ mềm, kh&ocirc;ng d&ugrave;ng cho c&aacute;c loại gỗ qu&aacute; cứng do khả năng giữ hướng khoan thấp v&agrave; độ đồng t&acirc;m thấp. Vận tốc của m&aacute;y khoan sử dụng đối với mũi khoan gỗ dẹt n&agrave;y từ 800 v&ograve;ng/ph&uacute;t đến 3000 v&ograve;ng/ph&uacute;t. T&ugrave;y theo đường k&iacute;nh mũi khoan v&agrave; vận tốc quay.</p>', N'<p>6868</p>', 90, 1, N'4.000 đ / 2h đầu, mỗi giờ tiếp theo 2.000 đ / h', N'15.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 90000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (371, N'HA0050', N'Mũi khoan khoét gỗ tròn', N'/image_product/HA0050 mui-khoan-khoet-go-tron.jpg', NULL, NULL, NULL, N'6868', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'4.000 đ / 2h đầu, mỗi giờ tiếp theo 2.000 đ / h', N'15.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 90000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (372, N'HA0051', N'Mũi khoan bước thẳng', N'/image_product/HA0051 mui-khoan-buoc-thang.jpg', NULL, NULL, NULL, N'6868', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'4.000 đ / 2h đầu, mỗi giờ tiếp theo 2.000 đ / h', N'15.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 90000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (373, N'HA0052', N'Mũi khoan bước xoắn', N'/image_product/HA0052 mui-khoan-buoc-xoan.jpg', NULL, NULL, NULL, N'6868', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'4.000 đ / 2h đầu, mỗi giờ tiếp theo 2.000 đ / h', N'15.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 90000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (374, N'HA0053', N'Máy đục bêtông loại trung', N'/image_product/6868', NULL, NULL, NULL, N'Máy có thể đục bê tông sàn dày 80 mm. Máy đã bao gồm 1 đầu đục bê tông. Nếu khách hàng cần thuê thêm loại mũi khác, vui lòng chọn thuê thêm phụ kiện kèm theo', N'<p>M&aacute;y chuy&ecirc;n để đục tường gạch, lột s&agrave;n gạch men, s&agrave;n b&ecirc;t&ocirc;ng c&oacute; độ d&agrave;y dưới 80mm t&ugrave;y theo từng loại mũi đục ri&ecirc;ng</p>', N'<p>6868</p>', N'<p>6868</p>', 60, 1, N'40.000 đ / 2h đầu, mỗi giờ tiếp theo 20.000 đ / h', N'150.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 3000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK2N1', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (375, N'HA0054', N'Máy đục bê tông đại', N'/image_product/6868', NULL, NULL, NULL, N'Máy có thể đục bê tông cột dày 200 mm. Máy đã bao gồm 1 đầu đục bê tông. Nếu khách hàng cần thuê thêm loại mũi khác, vui lòng chọn thuê thêm phụ kiện kèm theo', N'<p>M&aacute;y chuy&ecirc;n để đục s&agrave;n, cột b&ecirc;t&ocirc;ng độ d&agrave;y lớn dưới 200mm</p>', N'<p>6868</p>', N'<p>6868</p>', 60, 1, N'40.000 đ / 2h đầu, mỗi giờ tiếp theo 20.000 đ / h', N'150.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 3000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK2N1', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (376, N'HA0061', N'Máy cưa lưỡi kiếm', N'/image_product/HA0061 may-cua-luoi-kiem-Reciprocating-Saw.jpg', NULL, NULL, NULL, N'6868', N'<p>Giống như m&aacute;y cưa lọng, nhưng c&oacute; thể cắt vật liệu d&agrave;y v&agrave; cứng hơn. Đặc biệt l&agrave; với những vật liệu qu&aacute; d&agrave;y m&agrave; m&aacute;y cắt tr&ograve;n bị hạn chế bởi đường k&iacute;nh k&iacute;nh của đĩa cắt n&ecirc;n kh&ocirc;ng cắt được.</p>', N'<p>6868</p>', N'<p>6868</p>', 60, 1, N'14.000 đ / 2h đầu, mỗi giờ tiếp theo 7.000 đ / h', N'50.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 1000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK2N1', NULL, 0, 0, 0, 0, 0, 15)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (377, N'HA0064', N'Máy mài góc, máy cắt cầm tay', N'/image_product/HA0064 may-mai-goc-Angle-Grinder.jpg', NULL, NULL, NULL, N'Máy chưa bao gồm lưỡi cắt, đĩa mài. Quý khách có thể thuê thêm các loại đĩa tùy theo nhu cầu sử dụng', N'<p>M&aacute;y c&oacute; thể cắt nh&ocirc;m, sắt, inox, nhựa, gạch, đ&aacute; hoặc cưa gỗ t&ugrave;y theo loại lưỡi cắt, lưỡi cưa ph&ugrave; hợp. M&aacute;y cũng d&ugrave;ng để m&agrave;i, đ&aacute;nh b&oacute;ng c&aacute;c vật liệu tr&ecirc;n t&ugrave;y theo đĩa đ&aacute;nh nh&aacute;m, b&ocirc;ng đ&aacute;nh b&oacute;ng ph&ugrave; hợp.</p>', N'', N'', 90, 1, N'14.000 đ / 2h đầu, mỗi giờ tiếp theo 7.000 đ / h', N'50.000 đ / ngày', N'', NULL, NULL, NULL, NULL, NULL, 1000000, NULL, N'NULL', N'NULL', NULL, NULL, N'NULL', NULL, N'', N'Angle Grinder, metal hand cutter machine', NULL, N'KAK2N1', NULL, 1, 1, 0, 0, 0, 9)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (378, N'HA0066', N'Đĩa nhám xếp mài gỗ 100 mm', N'/image_product/HA0066 dia-nham-xep-mai-go.png', NULL, NULL, NULL, N'Đĩa nhám xếp 100 mm mài gỗ cho máy mài góc', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'6.000 đ / 3h đầu, mỗi giờ tiếp theo 2.000 đ / h', N'10.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 55000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (379, N'HA0067', N'Đĩa đá mài 100 mm', N'/image_product/HA0067 dia-da-mai-100-mm-Flap-Discs-Sanding-Grinding-Wheels-110-mm-for-Angle-Grinder.jpg', NULL, NULL, NULL, N'Đĩa 100 mm đá mài sắt, inox cho máy mài góc', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'2.000 đ / 4h đầu, mỗi giờ tiếp theo 500 đ / h', N'3.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 15000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (380, N'HA0068', N'Chén cước 75 mm đánh gỉ sắt', N'/image_product/HA0068 chen-cuoc-75-mm-danh-gi-sat.jpg', NULL, NULL, NULL, N'Bàn chải cốc 75mm làm bằng dây sắt uốn tráng đồng dùng để đánh gỉ sắt, vệ sinh sân xi măng, bê ', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'3.000 đ / 3h đầu, mỗi giờ tiếp theo 1.000 đ / h', N'5.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 25000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (381, N'HA0069', N'Đĩa cắt sắt ', N'/image_product/HA0069 dia-cat-sat-Metal-Cut-Off-Cutting-Wheels-110-mm-for-Angle-Grinder.jpg', NULL, NULL, NULL, N'Cắt được nhôm, sắt, inox mỏng', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 95, 1, N'1.000 đ / 2h đầu, mỗi giờ tiếp theo 500 đ / h', N'2.500 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 7000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (382, N'HA0070', N'Đĩa cắt nhôm, sắt, inox', N'/image_product/HA0070 dia-cat-nhom-sat-inox-Circular-Saw-Blade-for-Aluminum- metal.jpg', NULL, NULL, NULL, N'6868', N'6868', N'6868', N'6868', 6868, NULL, N'6868', N'6868', N'6868', NULL, NULL, NULL, NULL, NULL, 45000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'KAK1N2', NULL, NULL, NULL, NULL, NULL, NULL, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (383, N'HA0071', N'Đĩa cắt ướt gạch men, gạch ngói, đá hoa cương', N'/image_product/HA0071 dia-cat-uot-gach-men-gach-ngoi-da-hoa-cuong-Circular-Saw-Wet-Blade-for-stone-tile-marble.jpg', NULL, NULL, NULL, N'6868', N'<p>Wet Diamond Saw Blade</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'6.000 đ / 2h đầu, mỗi giờ tiếp theo 3.000 đ / h', N'20.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 100000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (384, N'HA0072', N'Đĩa cưa gỗ, nhựa', N'/image_product/HA0072 dia-cua-go-nhua-Circular-Saw-Blade-For-wood-and-Plastic-cutting-works.jpg', NULL, NULL, NULL, N'6868', N'<p>6868</p>', N'<p>6868</p>', N'<p>6868</p>', 90, 1, N'3.000 đ / 2h đầu, mỗi giờ tiếp theo 1.500 đ / h', N'12.000 đ / ngày', N'6868', NULL, NULL, NULL, NULL, NULL, 60000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, N'KAK1N2', NULL, 0, 0, 0, 0, 0, 10)
INSERT [dbo].[tb_Product] ([ProductID], [ProductCode], [ProductName], [ProductAvatar], [ProductCity], [ProductDistrict], [ProductWard], [ShortDescription], [FullDescription], [ProductSpecification], [ProductInstruction], [StatusPercentage], [StatusAvailability], [PricePerBlock], [PricePerDay], [PricePerMonth], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3], [CreateDate], [ProductValue], [ListBy1], [ListBy2], [ListBy3], [ListBy4], [ListBy5], [ListBy6], [ListBy7], [YoutubeLink], [Language], [Position], [Makho], [Hinhthucdatcoc], [Cocbangtienmat], [Cocbanggiayto], [Cocbanggiaytovahopdong], [Cocbanggiaytovahopdongprice], [Cocbangtaisan], [Soluongton]) VALUES (394, N'NTDSW', N'Nintendo swtich', N'/image_product/61jnrafz7zl._ac_sl1457__272e42c39407421085450d2a0e0ad8ea.jpg', NULL, NULL, NULL, N'lorem ipsum dolor sit amet', N'<p>mo ta chi ti&ecirc;tt1 2</p>', N'<p>th&ocirc;ng số kỹ thuật2</p>', N'<p>hướng dẫn sử dụng2</p>', 90, NULL, N'900', N'800', N'70000', NULL, NULL, NULL, NULL, NULL, 90000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10)
SET IDENTITY_INSERT [dbo].[tb_Product] OFF
SET IDENTITY_INSERT [dbo].[tb_Product_Translation] ON 

INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1167, N'1', N'1', N'1', 209, N'1', N'1', N'1', N'1', N'1', N'1')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1168, N'HA0002', N'The machine can drill wood, aluminum and thin iron with the drill bits less than 8mm._x000D_
The machine features reverse, fast and slow speed adjustment, screw tightening force adjustment.
The machine only comes with a battery supplied with the device and the charger. Not include the 2nd battery, screws and drill bits. You can choose to add batteries, screw heads and drill bits according to your needs. ', N'6868', 210, N'3.000 đ / first 2 hours ; 1.500 đ / hour after', N'10.000 VND / day', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1169, N'HA0003', N'In addition to drilling wood, aluminum and iron, the machine can drill brick walls with the drill bits of less than 10 mm.
The machine features reverse, fast and slow speed adjustment, screw tightening force adjustment.
The machine only comes with a battery supplied with the device and the charger. Not include the 2nd battery, screws and drill bits. You can choose to add batteries, screw heads and drill bits according to your needs. 
', N'6868', 211, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1170, N'HA0005', N'The electrodynamic drill can drill many things like wood, aluminum, glass, iron, brick, and thin concrete._x000D_
The machine has the function of reversing, adjusting the speed, so it is possible to remove and tighten screws with great force._x000D_
The machine does not include a screwdriver and a drill. You can choose more screws and drill bits according to your needs. ', N'Variable Speed Reversible, Pistol Grip, Anti-Lock Control', 212, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1171, N'HA0008', N'The hammer drill has a larger power than normal drilling, so it can drill in concrete up to 15 cm deep._x000D_
The machine can chisel ceramic tiles, fired bricks easily by a dedicated chisel._x000D_
It does not include drill bits and chisels. You can choose more screws and drill bits according to your needs. ', N'6868', 213, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1172, N'HA0009', N'3mm x 60mm metal drill bits', N'6868', 214, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1173, N'HA0010', N'6mm x 90mm metal drill bits', N'6868', 215, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1174, N'HA0011', N'8mm x 115mm metal drill bits', N'6868', 216, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1175, N'HA0012', N'10mm x 130mm metal drill bits', N'6868', 217, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1176, N'HA0013', N'13mm x 150mm metal drill bits', N'6868', 218, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1177, N'HA0014', N'3mm x 60mm Brad Point Drill Bits for Wood', N'6868', 219, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1178, N'HA0015', N'6mm x 90mm Brad Point Drill Bits for Wood', N'6868', 220, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1179, N'HA0016', N'8mm x 115mm Brad Point Drill Bits for Wood', N'6868', 221, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1180, N'HA0017', N'10mm x 130mm Brad Point Drill Bits for Wood', N'6868', 222, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1181, N'HA0018', N'13mm x 150mm Brad Point Drill Bits for Wood', N'6868', 223, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1182, N'HA0019', N'6 mm x 100 mm Concrete drill bits', N'6868', 224, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1183, N'HA0020', N'8 mm x 118 mm Concrete drill bits', N'6868', 225, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1184, N'HA0021', N'10 mm x 120 mm Concrete drill bits', N'6868', 226, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1185, N'HA0022', N'13 mm x 150 mm Concrete drill bits', N'6868', 227, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1186, N'HA0023', N'6868', N'6868', 228, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1187, N'HA0026', N'6 mm Concrete drill bits - SDS shank (Special Direct System)', N'6868', 229, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1188, N'HA0027', N'8 mm x 118 mm Concrete drill bits', N'6868', 230, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1189, N'HA0028', N'10 mm x 120 mm Concrete drill bits', N'6868', 231, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1190, N'HA0029', N'13 mm x 150 mm Concrete drill bits', N'6868', 232, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1191, N'HA0030', N'14 mm x 350 mm Concrete long drill bits - SDS shank (Special Direct System)', N'6868', 233, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1192, N'HA0031', N'Plastic Wall Plug are used to fix objects on the brick wall, such as lamps, fans, television, kitchen cabinets ... or clocks, pictures, decorative paintings in your house. Your home will be neat and nice.', N'Plastic Wall Plug are used to fix objects on the brick wall, such as lamps, fans, television, kitchen cabinets ... or clocks, pictures, decorative paintings in your house. Your home will be neat and nice.
Depending on the weight of the hanging object, you can choose the suitable size of the plastic wall plug. The heavier the hanging object, the longer and larger plastic wall plug will be used.', 234, N'6868', N'6868', N'6868', NULL, N'6868', N'Steps to work :
- Step 1: Determine the weight of the object to hang, determine how many hanging points from there choose suitable size of the plastic wall plug and use a concrete drill bits with the right diameter for that  when closing the plug to fit. It is not too wide will cause the plug to slip out when hanging objects on, It is not too tight when closing the plug, the plug and the wall can be break.
- Step 2: Measure or test hanging objects for balance, position and mark the position with a pen for accuracy.
- Step 3: Using a drill bits that matches the plug (the drill bits has diameter is equal to the main body of the plug but must be less than the protruding spikes of the plug). You should drill straight and a little deeper than the length of the plug.
- Step 4: Use a hammer to gently knock the plug into the borehole slowly until the plug is fully absorbed by the wall surface. In case the drilling cannot go any deeper, the plug can be closed and the residue cut off.
- Step 5: Check the closed plug is loose. If the plug becomes too loose, it will cause the plug to slip off and the object to be dropped. Fix by cutting another plug in half and then adding, or removing and replacing another the plug bigger.
- Step 6: Screw to hang the object to be attached, you can be adjusted up and down a little for balance. If the deviation is too much, it must be drilled again to ensure safety and aesthetics.')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1193, N'HA0032', N'The plastic hatching plug is also known as the butterfly plug to specialize in mounting the ceiling and wall made of drywall.', N'The plastic hatching plug is also known as the butterfly plug to specialize in mounting the ceiling and wall made of drywall. Because the drywall is thin (usually less than 1 cm) and weaker than a brick wall. If you use a plastic wall plug, it will not be able to hold it firmly, it must be used with this specialized hatch.', 235, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1194, N'HA0035', N'Metal Plug - expansion bolts are used to fix heavy objects on columns, ceilings, floors where made by concrete', N'Metal Plug - expansion bolts are used to fix heavy objects on columns, ceilings, floors where made by concrete. Do not use on the brick wall, because the brick wall cannot withstand strong force, the brick will break and the plug will drop.', 236, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1195, N'HA0037', N'6868', N'6868', 237, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1196, N'HA0039', N'Right Angle Drill Adapter and Flexible Angle Extension Bit Kit for Drill or Screwdriver 1/4" Socket Adapter Magnetic, Handy, Solid Construction Usefull in Tight Corner Workspace', N'6868', 238, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1197, N'HA0041', N'6868', N'6868', 239, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1198, N'HA0049', N'6868', N'https://vinatools.com/mui-khoan-go/', 240, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1199, N'HA0050', N'6868', N'6868', 241, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1200, N'6868', N'6868', N'6868', 242, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1201, N'6868', N'6868', N'6868', 243, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1202, N'HA0052', N'6868', N'6868', 244, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1203, N'HA0053', N'6868', N'6868', 245, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1204, N'HA0061', N'6868', N'6868', 246, N'6868', N'6868', N'6868', N'1', N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1205, N'HA0064', N'6868', N'6868', 247, N'6868', N'6868', N'6868', N'1', N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1206, N'HA0066', N'6868', N'6868', 248, N'6868', N'6868', N'6868', N'1', N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1207, N'HA0067', N'Flap Discs Sanding Grinding Wheels 100 mm for Angle Grinder', N'6868', 249, N'6868', N'6868', N'6868', N'1', N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1208, N'HA0068', N'Cup Brush 75mm by Brass Coated Steel Wire', N'6868', 250, N'6868', N'6868', N'6868', N'1', N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1209, N'HA0069', N'6868', N'6868', 251, N'6868', N'6868', N'6868', N'1', N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1210, N'HA0070', N'6868', N'6868', 252, N'6868', N'6868', N'6868', N'1', N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1211, N'HA0071', N'6868', N'6868', 253, N'6868', N'6868', N'6868', N'1', N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1212, N'HA0072', N'6868', N'6868', 254, N'6868', N'6868', N'6868', N'1', N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1213, N'HA0073', N'6868', N'6868', 255, N'6868', N'6868', N'6868', N'1', N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1214, N'HA0081', N'6868', N'6868', 256, N'6868', N'6868', N'6868', N'1', N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1215, N'HA0091', N'6868', N'6868', 257, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1216, N'HA0093', N'6868', N'6868', 258, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1217, N'HA0094', N'6868', N'6868', 259, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1218, N'HA0095', N'6868', N'6868', 260, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1219, N'HA0096', N'6868', N'6868', 261, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1220, N'HA0097', N'6868', N'6868', 262, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1221, N'HA0098', N' ', N'6868', 263, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1222, N'HA0115', N'https://sites.google.com/site/giangiaotiep/home/gia-gian-giao-xay-dung', N'6868', 264, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1223, N'HA0116', N'6868', N'6868', 265, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1224, N'HA0117', N'6868', N'6868', 266, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1225, N'HA0119', N'Aluminium Telescoping Ladder Extension Steps Anti-Slip Rubber Feet Lightweight Portable Heavy Duty 330lb Load Capacity', N'1.Adjustable Height: Compacting from handy 2.6Ft to 10.5Ft, easy to extend and retract with Velcro storage straps, convenient to use, storage and carry around;
2.Safe & Compact: Featuring Premium Aluminum Alloy design, industrial-grade height-locking latches and solid anti-slip rubber-tipped feet on the bottom of ladder step, the telescopic ladder is approved by Safety Standard EN131;
3.Light weight & Strong: Net weight approximate 9.2 kg (20.3lb), easy to transport and store; Maximum 150kg/330lb load-bearing capacity;
4.Application: This useful ladder should be part of any household and tool kit. It can be used to reach the most difficult area; Practical and useful ladder for individuals and professionals; Great for Home/Building maintenance, Washing window, Exterior/Interior Decorating, Painting etc;', 267, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1226, N'HA0120', N'6868', N'6868', 268, N'6868', N'6868', N'6868', NULL, N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1227, N'HA0104', N'Aluminum Telescopic Ladder Telescoping A-Type Extension Multi Purpose, Aluminium Portable Ladder Foldable Ladder', N'<p>mo ta en</p>', 269, N'6868', N'6868', N'6868', N'1', N'<p>ky thuat en</p>', N'<p>su dung en</p>')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1228, N'HA0051', N'6868', N'6868', 270, N'6868', N'6868', N'6868', N'1', N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1229, N'HA0060', N'6868', N'6868', 271, N'6868', N'6868', N'6868', N'1', N'6868', N'6868')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1284, N'Cordless Electric Screwdriver', N'Dùng bắt, tháo ốc vít với khả năng thay nhanh chóng 6 loại đầu vít dẹt (-), đầu bake (+), lục giác với các kích thước lớn nhỏ khác nhau nhờ cơ cấu khớp đặc biệt.', N'The device uses screw tightening and removing with the ability to quickly change 6 types of screws : slot (-) , cross (+) , hexagon with different sizes of large and small by special mechanism joints.
The device uses rechargeable batteries, so it is not entangled with the power cord. Charging time is about 3 hours, it can do from 1 to 2 hours. Compact, lightweight machine suitable for electrical repair, carpentry.', 339, N'3.000 VND for first 2 hours, 1.500 VND for next subsequent hours', N'3.000 VND for first 2 hours, 1.500 VND for next subsequent hours', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1285, N'Cordless Drill and Screwdriver', N'The machine can drill wood, aluminum and thin iron with the drill bits less than 8mm.
The machine features reverse, fast and slow speed adjustment, screw tightening force adjustment.
The machine only comes with a battery supplied with the device and the charger. Not include the 2nd battery, screws and drill bits. You can choose to add batteries, screw heads and drill bits according to your needs. ', N'', 340, N'3.000 đ / first 2 hours ; 1.500 đ / hour after', N'3.000 đ / first 2 hours ; 1.500 đ / hour after', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1286, N'Cordless Rotary Hammer Drill', N'In addition to drilling wood, aluminum and iron, the machine can drill brick walls with the drill bits of less than 10 mm.
The machine features reverse, fast and slow speed adjustment, screw tightening force adjustment.
The machine only comes with a battery supplied with the device and the charger. Not include the 2nd battery, screws and drill bits. You can choose to add batteries, screw heads and drill bits according to your needs. 
', N'', 341, N'6868', N'6868', N'6868', NULL, N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1287, N'Electic Corded Drill', N'The electrodynamic drill can drill many things like wood, aluminum, glass, iron, brick, and thin concrete.
The machine has the function of reversing, adjusting the speed, so it is possible to remove and tighten screws with great force.
The machine does not include a screwdriver and a drill. You can choose more screws and drill bits according to your needs. ', N'<p>Variable Speed Reversible, Pistol Grip, Anti-Lock Control</p>', 342, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1288, N'Hammer Drill', N'Máy khoan búa đục bê tông có công suất lớn hơn khoan thường nên có thể khoan bê tông sâu tới 15 cm.
Máy có thể đục gạch men, gạch nung một cách dễ dàng nhờ mũi đục chuyên dụng.
Máy chưa bao gồm mũi khoan và mũi đục. Quý khách lựa thêm các loại vít và loại mũi khoan theo nhu cầu.', N'<p>6868</p>', 343, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1289, N'3 mm Metal Drill Bits', N'3mm x 60mm metal drill bits', N'6868', 344, N'6868', N'6868', N'6868', NULL, N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1290, N'6 mm Metal Drill Bits', N'6mm x 90mm metal drill bits', N'6868', 345, N'6868', N'6868', N'6868', NULL, N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1291, N'8 mm Metal Drill Bits', N'8mm x 115mm metal drill bits', N'<p>6868</p>', 346, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1292, N'10 mm Metal Drill Bits', N'10mm x 130mm metal drill bits', N'<p>6868</p>', 347, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1293, N'13mm Metal Drill Bits', N'13mm x 150mm metal drill bits', N'<p>6868</p>', 348, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1294, N'3 mm Brad Point Drill Bits for Wood', N'3mm x 60mm Brad Point Drill Bits for Wood', N'6868', 349, N'6868', N'6868', N'6868', NULL, N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1295, N'6 mm Brad Point Drill Bits for Wood', N'6mm x 90mm Brad Point Drill Bits for Wood', N'<p>6868</p>', 350, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1296, N'8 mm Brad Point Drill Bits for Wood', N'8mm x 115mm Brad Point Drill Bits for Wood', N'6868', 351, N'6868', N'6868', N'6868', NULL, N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1297, N'10 mm Brad Point Drill Bits for Wood', N'10mm x 130mm Brad Point Drill Bits for Wood', N'6868', 352, N'6868', N'6868', N'6868', NULL, N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1299, N'6 mm Concrete Drill Bits', N'6 mm x 100 mm Concrete drill bits', N'<p>6868</p>', 354, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1300, N'8 mm Concrete Drill Bits', N'8 mm x 118 mm Concrete drill bits', N'<p>6868</p>', 355, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1301, N'10 mm Concrete Drill Bits', N'10 mm x 120 mm Concrete drill bits', N'<p>6868</p>', 356, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1302, N'13 mm Concrete Drill Bits', N'13 mm x 150 mm Concrete drill bits', N'<p>6868</p>', 357, N'3.000 VND for first 2 hours, 1.500 VND for next subsequent hours', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1303, N'Concrete Long Straight Drill Bits', N'6868', N'<p>6868</p>', 358, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1304, N'6 mm Concrete Drill Bits - SDS', N'6 mm Concrete drill bits - SDS shank (Special Direct System)', N'<p>6868</p>', 359, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1305, N'8 mm Concrete Drill Bits - SDS', N'8 mm x 118 mm Concrete drill bits', N'<p>6868</p>', 360, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1306, N'10 mm Concrete Drill Bits - SDS', N'10 mm x 120 mm Concrete drill bits', N'<p>6868</p>', 361, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1309, N'Plastic Wall Plug : 3 cm - 7 cm', N'Plastic Wall Plug are used to fix objects on the brick wall, such as lamps, fans, television, kitchen cabinets ... or clocks, pictures, decorative paintings in your house. Your home will be neat and nice.', N'<p>Plastic Wall Plug are used to fix objects on the brick wall, such as lamps, fans, television, kitchen cabinets ... or clocks, pictures, decorative paintings in your house. Your home will be neat and nice. Depending on the weight of the hanging object, you can choose the suitable size of the plastic wall plug. The heavier the hanging object, the longer and larger plastic wall plug will be used.</p>', 364, N'6868', N'6868', N'6868', N'1', N'', N'<p>Steps to work : - Step 1: Determine the weight of the object to hang, determine how many hanging points from there choose suitable size of the plastic wall plug and use a concrete drill bits with the right diameter for that when closing the plug to fit. It is not too wide will cause the plug to slip out when hanging objects on, It is not too tight when closing the plug, the plug and the wall can be break. - Step 2: Measure or test hanging objects for balance, position and mark the position with a pen for accuracy. - Step 3: Using a drill bits that matches the plug (the drill bits has diameter is equal to the main body of the plug but must be less than the protruding spikes of the plug). You should drill straight and a little deeper than the length of the plug. - Step 4: Use a hammer to gently knock the plug into the borehole slowly until the plug is fully absorbed by the wall surface. In case the drilling cannot go any deeper, the plug can be closed and the residue cut off. - Step 5: Check the closed plug is loose. If the plug becomes too loose, it will cause the plug to slip off and the object to be dropped. Fix by cutting another plug in half and then adding, or removing and replacing another the plug bigger. - Step 6: Screw to hang the object to be attached, you can be adjusted up and down a little for balance. If the deviation is too much, it must be drilled again to ensure safety and aesthetics.</p>')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1310, N'Butterfly Drywall Plug', N'The plastic hatching plug is also known as the butterfly plug to specialize in mounting the ceiling and wall made of drywall.', N'<p>The plastic hatching plug is also known as the butterfly plug to specialize in mounting the ceiling and wall made of drywall. Because the drywall is thin (usually less than 1 cm) and weaker than a brick wall. If you use a plastic wall plug, it will not be able to hold it firmly, it must be used with this specialized hatch.</p>', 365, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1311, N'Metal Wall Plug', N'Metal Plug - expansion bolts are used to fix heavy objects on columns, ceilings, floors where made by concrete', N'<p>Metal Plug - expansion bolts are used to fix heavy objects on columns, ceilings, floors where made by concrete. Do not use on the brick wall, because the brick wall cannot withstand strong force, the brick will break and the plug will drop.</p>', 366, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1312, N'Right Angle - 90 Degree Drill Adapter', N'6868', N'', 367, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1313, N'Right Angle Drill Adapter and Flexible Angle Extension Bit Kit for Drill or Screwdriver', N'Right Angle Drill Adapter and Flexible Angle Extension Bit Kit for Drill or Screwdriver 1/4" Socket Adapter Magnetic, Handy, Solid Construction Usefull in Tight Corner Workspace', N'', 368, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1314, N'Hole Drill Bits for Glass, Ceramic Tiles', N'6868', N'', 369, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1315, N'Wood spade Drill bits', N'6868', N'<p>https://vinatools.com/mui-khoan-go/</p>', 370, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1316, N'Forstner Bits', N'6868', N'<p>6868</p>', 371, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1317, N'Straight step drill bits', N'6868', N'<p>6868</p>', 372, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1318, N'Spiral step drill bits', N'6868', N'<p>6868</p>', 373, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1319, N'Rotary Hammer with Shocks', N'6868', N'', 374, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1320, N'Heavy Hammer', N'6868', N'', 375, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1321, N'Reciprocating Saw', N'6868', N'', 376, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1322, N'Angle Grinder, metal hand cutter machine', N'6868', N'', 377, N'6868', N'6868', N'6868', N'1', N'', N'')
GO
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1323, N'Grinding Sanding Sandpaper Wheels 100 mm', N'6868', N'<p>6868</p>', 378, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1324, N'Flap Discs Sanding Grinding Wheels 100 mm', N'Flap Discs Sanding Grinding Wheels 100 mm for Angle Grinder', N'<p>6868</p>', 379, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1325, N'Cup Brush 75mm for removing rust', N'Cup Brush 75mm by Brass Coated Steel Wire', N'<p>6868</p>', 380, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1326, N'Metal Cut-Off Cutting Wheels 110 mm for Angle Grinder', N'6868', N'<p>6868</p>', 381, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1327, N'Circular Saw Blade for Aluminum,  metal', N'6868', N'6868', 382, N'6868', N'6868', N'6868', NULL, N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1328, N'Circular Saw Wet Blade for Ceramic Brick, tile, stone, marble', N'6868', N'<p>6868</p>', 383, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1329, N'Circular Saw Blade For wood and Plastic cutting works', N'6868', N'<p>6868</p>', 384, N'6868', N'6868', N'6868', N'1', N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1330, N'Circular Saw Dry/Wet Diamond Blade for High Performance Cutting of Masonry, Concrete, Stone, Roof Tile and More', N'6868', N'6868', 385, N'6868', N'6868', N'6868', NULL, N'', N'')
INSERT [dbo].[tb_Product_Translation] ([ProductID_EN], [ProductName_EN], [ShortDescription], [FullDescription_EN], [Idproduct], [PricePerBlock_EN], [PricePerDay_EN], [PricePerMonth_EN], [IdLanguage], [ProductSpecification], [ProductInstruction]) VALUES (1332, N'Circular Saw Dry/Wet Diamond Blade for High Performance Cutting of Masonry, Concrete, Stone, Roof Tile and More 2', N'lorem ipsum dolor sit amet', NULL, 394, N'6868', N'6868', N'6868', N'1', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_Product_Translation] OFF
SET IDENTITY_INSERT [dbo].[tb_ProductAccessorySelection] ON 

INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (220, 210, N'Mũi khoan bêtông 6 mm', N'HA0019', NULL, NULL, NULL)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (250, 247, N'Đĩa cưa gỗ, nhựa', N'HA0072', NULL, NULL, 60000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (251, 247, N'Đĩa cắt ướt gạch men, gạch ngói, đá hoa cương', N'HA0071', NULL, NULL, 100000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (252, 247, N'Đĩa cắt nhôm, sắt, inox', N'HA0070', NULL, NULL, 45000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (253, 247, N'Đĩa cắt sắt ', N'HA0069', NULL, NULL, 7000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (254, 247, N'Chén cước 75 mm đánh gỉ sắt', N'HA0068', NULL, NULL, 25000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (255, 247, N'Đĩa đá mài 100 mm', N'HA0067', NULL, NULL, 15000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (267, 269, N'Máy cưa lưỡi kiếm', N'HA0061', NULL, NULL, 1000000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (273, 348, N'Mũi khoan sắt 10 mm', N'HA0012', NULL, NULL, 45000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (274, 348, N'Mũi khoan sắt 8 mm', N'HA0011', NULL, NULL, 36000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (275, 343, N'Mũi khoan bêtông 13 mm', N'HA0022', NULL, NULL, 60000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (276, 343, N'Mũi khoan bêtông 10 mm', N'HA0021', NULL, NULL, 40000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (277, 343, N'Mũi khoan bêtông 8 mm', N'HA0020', NULL, NULL, 30000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (278, 343, N'Mũi khoan bêtông 6 mm', N'HA0019', NULL, NULL, 20000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (282, 343, N'Mũi khoan gỗ 6 mm', N'HA0015', NULL, NULL, 20000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (304, 377, N'Đĩa cưa gỗ, nhựa', N'HA0072', NULL, NULL, 60000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (305, 377, N'Đĩa cắt ướt gạch men, gạch ngói, đá hoa cương', N'HA0071', NULL, NULL, 100000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (306, 377, N'Đĩa cắt nhôm, sắt, inox', N'HA0070', NULL, NULL, 45000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (307, 377, N'Đĩa cắt sắt ', N'HA0069', NULL, NULL, 7000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (308, 377, N'Chén cước 75 mm đánh gỉ sắt', N'HA0068', NULL, NULL, 25000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (309, 377, N'Đĩa đá mài 100 mm', N'HA0067', NULL, NULL, 15000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (310, 377, N'Đĩa nhám xếp mài gỗ 100 mm', N'HA0066', NULL, NULL, 55000)
INSERT [dbo].[tb_ProductAccessorySelection] ([ProductAccessorySelectionID], [ProductID], [ProductName], [ProductCode], [PricePerBlock], [PricePerDay], [ProductValue]) VALUES (315, 339, N'Mũi khoan gỗ 3 mm', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_ProductAccessorySelection] OFF
SET IDENTITY_INSERT [dbo].[tb_ProductCategorySelection] ON 

INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (680, 209, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (681, 210, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (682, 211, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (683, 212, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (684, 213, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (685, 214, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (686, 215, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (687, 216, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (688, 217, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (689, 218, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (690, 219, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (691, 220, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (692, 221, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (693, 222, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (694, 223, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (695, 224, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (696, 225, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (697, 226, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (698, 227, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (699, 228, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (700, 229, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (701, 230, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (702, 231, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (703, 232, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (704, 233, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (705, 234, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (706, 235, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (707, 236, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (708, 237, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (709, 238, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (710, 239, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (711, 240, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (712, 241, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (713, 242, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (714, 243, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (715, 244, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (716, 245, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (717, 246, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (718, 247, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (719, 248, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (720, 249, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (721, 250, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (722, 251, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (723, 252, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (724, 253, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (725, 254, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (726, 255, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (727, 256, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (728, 257, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (729, 258, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (730, 259, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (731, 260, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (732, 261, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (733, 262, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (734, 263, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (735, 264, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (736, 265, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (737, 266, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (738, 267, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (739, 268, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (740, 269, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (741, 270, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (742, 271, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (794, 339, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (795, 340, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (796, 341, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (797, 342, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (798, 343, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (799, 344, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (800, 345, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (801, 346, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (802, 347, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (803, 348, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (804, 349, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (805, 350, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (806, 351, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (807, 352, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (809, 354, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (810, 355, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (811, 356, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (812, 357, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (813, 358, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (814, 359, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (815, 360, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (816, 361, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (819, 364, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (820, 365, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (821, 366, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (822, 367, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (823, 368, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (824, 369, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (825, 370, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (826, 371, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (827, 372, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (828, 373, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (829, 374, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (830, 375, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (831, 376, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (833, 378, 4, 20, 29, NULL)
GO
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (834, 379, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (835, 380, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (836, 381, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (837, 382, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (838, 383, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (839, 384, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (840, 385, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (845, 389, 9, 47, 103, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (847, 389, 5, 18, 26, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (849, 389, 8, 62, 10171, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (850, 377, 4, 20, 29, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (851, 377, 4, 42, 10238, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (855, 393, 4, 30, 76, NULL)
INSERT [dbo].[tb_ProductCategorySelection] ([ProductCatId], [ProductId], [ProductMainCate], [ProductSubCate1], [ProductSubCate2], [ProductSubCate3]) VALUES (856, 394, 4, 30, 76, NULL)
SET IDENTITY_INSERT [dbo].[tb_ProductCategorySelection] OFF
SET IDENTITY_INSERT [dbo].[tb_ProductGallery] ON 

INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (31, 209, N'/image_product/HA0001 may-bat-oc-vit 2.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (32, 209, N'/image_product/HA0001 may-bat-oc-vit 3.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (33, 210, N'/image_product/HA0002 may-khoan-pin 2.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (34, 212, N'/image_product/HA0005 may-khoan-van-vit.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (35, 213, N'/image_product/HA0008 Khoan-Duc 2.jpeg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (36, 214, N'/image_product/HA0009 mui-khoan-sat 2.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (37, 235, N'/image_product/HA0032 tac-ke-nhua-no-tac-ke-buom-Butter-Fly-Drywall-Plug 2.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (38, 235, N'/image_product/HA0032 tac-ke-nhua-no-tac-ke-buom-Butter-Fly-Drywall-Plug 3.png')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (39, 237, N'/image_product/HA0037 dau-chuyen-huong-mui-khoan-90 2.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (40, 241, N'/image_product/HA0050 mui-khoan-khoet-go-tron 2.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (41, 241, N'/image_product/HA0050 mui-khoan-khoet-go-tron 3.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (42, 247, N'/image_product/HA0064 may-mai-goc-Angle-Grinder 2.png')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (43, 247, N'/image_product/HA0064 may-cat-cam-tay-Machine-Handheld-Cutter.jpeg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (44, 249, N'/image_product/HA0067 dia-da-mai-100-mm-Flap-Discs-Sanding-Grinding-Wheels-110-mm-for-Angle-Grinder 2.png')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (45, 253, N'/image_product/HA0071 dia-cat-uot-gach-men-gach-ngoi-da-hoa-cuong-Circular-Saw-Wet-Blade-for-stone-tile-marble 2.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (46, 254, N'/image_product/HA0072 dia-cua-go-nhua-Circular-Saw-Blade-For-wood-and-Plastic-cutting-works 2.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (47, 255, N'/image_product/HA0073 dia-cat-kim-cuong-kho-uot-hieu-suat-cao-Circular-Saw-Dry-or-Wet-Diamond-Blade-for-High-Performance-Cutting-of-Masonry-Concrete-Stone-Roof-Tile-and-More 2.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (48, 260, N'/image_product/HA0095 non-han-co-kinh-han-tu-dong-toi 2.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (52, 269, N'/image_product/Product-gallery-2021101505220870.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (53, 269, N'/image_product/Product-gallery-2021101505220991.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (54, 269, N'/image_product/Product-gallery-2021101505221140.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (55, 269, N'/image_product/Product-gallery-2021101505221290.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (56, 209, N'/image_product/HA0001 may-bat-oc-vit 4.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (85, 339, N'/image_product/HA0001 may-bat-oc-vit 2.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (86, 339, N'/image_product/HA0001 may-bat-oc-vit 3.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (87, 339, N'/image_product/HA0001 may-bat-oc-vit 4.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (88, 340, N'/image_product/HA0002 may-khoan-pin 2.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (89, 342, N'/image_product/HA0005 may-khoan-van-vit.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (90, 343, N'/image_product/HA0008 Khoan-Duc 2.jpeg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (91, 344, N'/image_product/HA0009 mui-khoan-sat 2.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (92, 365, N'/image_product/HA0032 tac-ke-nhua-no-tac-ke-buom-Butter-Fly-Drywall-Plug 2.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (93, 365, N'/image_product/HA0032 tac-ke-nhua-no-tac-ke-buom-Butter-Fly-Drywall-Plug 3.png')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (94, 367, N'/image_product/HA0037 dau-chuyen-huong-mui-khoan-90 2.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (95, 367, N'/image_product/HA0037 dau-chuyen-huong-mui-khoan-90 3.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (96, 371, N'/image_product/HA0050 mui-khoan-khoet-go-tron 2.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (97, 371, N'/image_product/HA0050 mui-khoan-khoet-go-tron 3.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (100, 379, N'/image_product/HA0067 dia-da-mai-100-mm-Flap-Discs-Sanding-Grinding-Wheels-110-mm-for-Angle-Grinder 2.png')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (101, 383, N'/image_product/HA0071 dia-cat-uot-gach-men-gach-ngoi-da-hoa-cuong-Circular-Saw-Wet-Blade-for-stone-tile-marble 2.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (102, 384, N'/image_product/HA0072 dia-cua-go-nhua-Circular-Saw-Blade-For-wood-and-Plastic-cutting-works 2.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (111, 376, N'/image_product/Product-gallery-2022032411404751.jpg')
INSERT [dbo].[tb_ProductGallery] ([ImageID], [ProductID], [ImagePath]) VALUES (112, 377, N'/image_product/Product-gallery-2022032411432376.jpg')
SET IDENTITY_INSERT [dbo].[tb_ProductGallery] OFF
SET IDENTITY_INSERT [dbo].[tb_ProductPricePerDay] ON 

INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (38, 614, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (39, 737, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (40, 1078, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (41, 1037, 10000, 20000, 30000, 40000, 50000, 60000, 70000, 80000, 90000, 100000, 110000, 120000, 130000, 140000, 150000, 160000, 170000, 180000, 190000, 200000, 210000, 220000, 230000, 240000, 250000, 260000, 270000, 280000, 290000, 300000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (42, 1077, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (43, 1076, 10000, 20000, 30000, 40000, 50000, 60000, 70000, 80000, 90000, 100000, 110000, 120000, 130000, 140000, 150000, 160000, 170000, 180000, 190000, 200000, 210000, 220000, 230000, 240000, 250000, 260000, 270000, 280000, 290000, 300000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (44, 1073, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (45, 1041, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (46, 1070, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (47, 1061, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (48, 1057, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (49, 1056, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (50, 1055, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (51, 1054, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (52, 1053, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (53, 1052, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (54, 1051, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (55, 1038, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000, 35000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (56, 1079, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (57, 1080, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (58, 1081, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (59, 1082, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (60, 1082, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (61, 1084, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (62, 1092, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (63, 1102, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (64, 119, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (65, 120, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (66, 269, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (67, 256, 55000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 540000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (68, 209, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 520000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (69, 271, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 520000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (70, 270, 15000, 30000, 45000, 60000, 75000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (71, 247, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 550000, 600000, 650000, 700000, 750000, 800000, 850000, 900000, 950000, 1000000, 1050000, 1100000, 1150000, 1200000, 1250000, 1300000, 1350000, 1400000, 1450000, 1500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (72, 255, 30000, 60000, 90000, 120000, 150000, 180000, 210000, 240000, 270000, 300000, 300000, 300000, 300000, 300000, 300000, 300000, 300000, 300000, 300000, 300000, 300000, 300000, 300000, 300000, 300000, 300000, 300000, 300000, 300000, 300000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (73, 254, 12000, 24000, 36000, 48000, 60000, 72000, 84000, 96000, 108000, 120000, 132000, 144000, 156000, 168000, 180000, 192000, 204000, 216000, 228000, 240000, 252000, 264000, 276000, 288000, 300000, 312000, 324000, 336000, 348000, 360000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (74, 253, 20000, 40000, 60000, 80000, 100000, 120000, 140000, 160000, 180000, 200000, 220000, 240000, 260000, 280000, 300000, 320000, 340000, 360000, 380000, 400000, 420000, 440000, 460000, 480000, 500000, 520000, 540000, 560000, 580000, 600000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (75, 252, 12000, 24000, 36000, 48000, 60000, 72000, 84000, 96000, 108000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (76, 251, 2500, 5000, 7500, 10000, 12500, 15000, 17500, 20000, 22500, 25000, 27500, 30000, 32500, 35000, 37500, 40000, 42500, 45000, 47500, 50000, 52500, 55000, 57500, 60000, 62500, 65000, 67500, 70000, 72500, 75000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (77, 250, 5000, 10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, 50000, 55000, 60000, 65000, 70000, 75000, 80000, 85000, 90000, 95000, 100000, 105000, 110000, 115000, 120000, 125000, 130000, 135000, 140000, 145000, 150000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (78, 249, 2000, 4000, 6000, 8000, 10000, 12000, 14000, 16000, 18000, 20000, 22000, 24000, 26000, 28000, 30000, 32000, 34000, 36000, 38000, 40000, 42000, 44000, 46000, 48000, 50000, 52000, 54000, 56000, 58000, 60000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (79, 248, 10000, 20000, 30000, 40000, 50000, 60000, 70000, 80000, 90000, 100000, 110000, 120000, 130000, 140000, 150000, 160000, 170000, 180000, 190000, 200000, 210000, 220000, 230000, 240000, 250000, 260000, 270000, 280000, 290000, 300000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (80, 246, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 550000, 600000, 650000, 700000, 750000, 800000, 850000, 900000, 950000, 1000000, 1050000, 1100000, 1150000, 1200000, 1250000, 1300000, 1350000, 1400000, 1450000, 1500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (81, 291, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 520000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (82, 348, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 520000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (83, 346, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 520000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (84, 347, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 520000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (86, 389, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 520000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (87, 343, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 550000, 600000, 650000, 700000, 750000, 800000, 850000, 900000, 950000, 1000000, 1050000, 1100000, 1150000, 1200000, 1250000, 1300000, 1350000, 1400000, 1450000, 1500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (88, 350, 5000, 10000, 15000, 20000, 25000, 30000, 35000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (89, 377, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 550000, 600000, 650000, 700000, 750000, 800000, 850000, 900000, 950000, 1000000, 1050000, 1100000, 1150000, 1200000, 1250000, 1300000, 1350000, 1400000, 1450000, 1500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (90, 376, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 550000, 600000, 650000, 700000, 750000, 800000, 850000, 900000, 950000, 1000000, 1050000, 1100000, 1150000, 1200000, 1250000, 1300000, 1350000, 1400000, 1450000, 1500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (91, 357, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 520000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (92, 339, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 520000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (95, 393, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 520000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (96, 394, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 520000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (97, 378, 10000, 20000, 30000, 40000, 50000, 60000, 70000, 80000, 90000, 100000, 110000, 120000, 130000, 140000, 150000, 160000, 170000, 180000, 190000, 200000, 210000, 220000, 230000, 240000, 250000, 260000, 270000, 280000, 290000, 300000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (98, 379, 3000, 6000, 9000, 12000, 15000, 18000, 21000, 24000, 27000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (99, 384, 12000, 24000, 36000, 48000, 60000, 72000, 84000, 96000, 108000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (100, 383, 20000, 40000, 60000, 80000, 100000, 120000, 140000, 160000, 180000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (101, 381, 2500, 5000, 7500, 10000, 12500, 15000, 17500, 20000, 22500, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (102, 380, 5000, 10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (103, 375, 150000, 300000, 450000, 600000, 750000, 900000, 1050000, 1200000, 1350000, 1500000, 1650000, 1800000, 1950000, 2100000, 2250000, 2400000, 2550000, 2700000, 2850000, 3000000, 3150000, 3300000, 3450000, 3600000, 3750000, 3900000, 4050000, 4200000, 4350000, 4500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (104, 374, 150000, 300000, 450000, 600000, 750000, 900000, 1050000, 1200000, 1350000, 1500000, 1650000, 1800000, 1950000, 2100000, 2250000, 2400000, 2550000, 2700000, 2850000, 3000000, 3150000, 3300000, 3450000, 3600000, 3750000, 3900000, 4050000, 4200000, 4350000, 4500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (105, 373, 15000, 15000, 15000, 48000, 60000, 72000, 84000, 96000, 108000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (106, 372, 15000, 15000, 15000, 48000, 60000, 72000, 84000, 96000, 108000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (107, 371, 15000, 15000, 15000, 48000, 60000, 72000, 84000, 96000, 108000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (108, 370, 15000, 15000, 15000, 48000, 60000, 72000, 84000, 96000, 108000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (109, 369, 15000, 15000, 15000, 48000, 60000, 72000, 84000, 96000, 108000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (110, 368, 15000, 15000, 15000, 48000, 60000, 72000, 84000, 96000, 108000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (111, 367, 15000, 15000, 15000, 48000, 60000, 72000, 84000, 96000, 108000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (112, 366, 15000, 15000, 15000, 48000, 60000, 72000, 84000, 96000, 108000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (113, 365, 15000, 15000, 15000, 48000, 60000, 72000, 84000, 96000, 108000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (114, 364, 15000, 15000, 15000, 48000, 60000, 72000, 84000, 96000, 108000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (115, 361, 12000, 24000, 36000, 48000, 60000, 72000, 84000, 96000, 108000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (116, 360, 9000, 18000, 27000, 36000, 45000, 54000, 63000, 72000, 81000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (117, 359, 5000, 10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (118, 358, 15000, 30000, 45000, 60000, 75000, 90000, 105000, 120000, 135000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000, 150000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (119, 356, 10000, 20000, 30000, 40000, 50000, 60000, 70000, 80000, 90000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (120, 355, 8000, 24000, 36000, 48000, 60000, 72000, 84000, 96000, 108000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (121, 354, 5000, 10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, 50000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000, 25000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (122, 342, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 550000, 600000, 650000, 700000, 750000, 800000, 850000, 900000, 950000, 1000000, 1050000, 1100000, 1150000, 1200000, 1250000, 1300000, 1350000, 1400000, 1450000, 1500000)
INSERT [dbo].[tb_ProductPricePerDay] ([PPDId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24], [Block25], [Block26], [Block27], [Block28], [Block29], [Block30]) VALUES (123, 340, 35000, 70000, 105000, 140000, 175000, 210000, 245000, 280000, 315000, 350000, 350000, 350000, 350000, 350000, 350000, 350000, 350000, 350000, 350000, 350000, 350000, 350000, 350000, 350000, 350000, 350000, 350000, 350000, 350000, 350000)
SET IDENTITY_INSERT [dbo].[tb_ProductPricePerDay] OFF
SET IDENTITY_INSERT [dbo].[tb_ProductPricePerHour] ON 

INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (38, 612, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (39, 614, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (40, 737, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (41, 1078, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (42, 1037, 3000, 3000, 4500, 6000, 7500, 9000, 10500, 12000, 13500, 15000, 16500, 18000, 19500, 21000, 22500, 24000, 25500, 27000, 28500, 30000, 31500, 33000, 34500, 36000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (43, 1077, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (44, 1041, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (45, 1076, 3000, 3000, 4500, 6000, 7500, 9000, 10500, 12000, 13500, 15000, 16500, 18000, 19500, 21000, 22500, 24000, 25500, 27000, 28500, 30000, 31500, 33000, 34500, 36000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (46, 1038, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (47, 1073, 300, 300, 300, 300, 300, 300, 300, 300, 300, 300, 300, 300, 300, 300, 300, 300, 300, 300, 300, 300, 300, 300, 300, 300)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (48, 1070, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (49, 1061, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (50, 1057, 6500, 6500, 6500, 6500, 6500, 6500, 6500, 6500, 6500, 6500, 6500, 6500, 6500, 6500, 6500, 6500, 6500, 6500, 6500, 6500, 6500, 6500, 6500, 6500)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (51, 1056, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (52, 1055, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (53, 1054, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (54, 1053, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (55, 1052, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (56, 1051, 14000, 14000, 21000, 28000, 35000, 42000, 49000, 56000, 63000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (57, 1079, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (58, 1080, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (59, 1081, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (60, 1082, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (61, 1082, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (62, 1084, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (63, 1092, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (64, 1102, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (65, 119, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (66, 120, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (67, 269, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (68, 256, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 52000, 50000, 53000, 50000, 50000, 50000, 50000, 50000, 54000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (69, 209, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (70, 271, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (71, 270, 4000, 4000, 6000, 8000, 10000, 12000, 14000, 16000, 18000, 20000, 22000, 24000, 26000, 28000, 30000, 32000, 34000, 36000, 38000, 40000, 42000, 44000, 46000, 48000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (72, 247, 7000, 14000, 21000, 28000, 35000, 42000, 49000, 56000, 63000, 70000, 77000, 84000, 91000, 98000, 105000, 112000, 119000, 126000, 133000, 140000, 147000, 154000, 161000, 168000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (73, 255, 8000, 8000, 12000, 16000, 20000, 24000, 28000, 32000, 36000, 40000, 44000, 48000, 52000, 56000, 60000, 64000, 68000, 72000, 76000, 80000, 84000, 88000, 92000, 96000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (74, 254, 3000, 3000, 4500, 6000, 7500, 9000, 10500, 12000, 13500, 15000, 16500, 18000, 19500, 21000, 22500, 24000, 25500, 27000, 28500, 30000, 31500, 33000, 34500, 36000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (75, 253, 6000, 6000, 9000, 12000, 15000, 18000, 21000, 24000, 27000, 30000, 33000, 36000, 39000, 42000, 45000, 48000, 51000, 54000, 57000, 60000, 63000, 66000, 69000, 72000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (76, 252, 3000, 3000, 4500, 6000, 7500, 9000, 10500, 12000, 13500, 15000, 16500, 18000, 19500, 21000, 22500, 24000, 25500, 27000, 28500, 30000, 31500, 33000, 34500, 36000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (77, 251, 1000, 1000, 1500, 2000, 2500, 3000, 3500, 4000, 4500, 5000, 5500, 6000, 6500, 7000, 7500, 8000, 8500, 9000, 9500, 10000, 10500, 11000, 11500, 12000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (78, 250, 3000, 3000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 10000, 11000, 12000, 13000, 14000, 15000, 16000, 17000, 18000, 19000, 20000, 21000, 22000, 23000, 24000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (79, 249, 2000, 2000, 2000, 2000, 2500, 3000, 3500, 4000, 4500, 5000, 5500, 6000, 6500, 7000, 7500, 8000, 8500, 9000, 9500, 10000, 10500, 11000, 11500, 12000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (80, 248, 6000, 6000, 6000, 8000, 10000, 12000, 14000, 16000, 18000, 20000, 22000, 24000, 26000, 28000, 30000, 32000, 34000, 36000, 38000, 40000, 42000, 44000, 46000, 48000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (81, 246, 14000, 14000, 21000, 28000, 35000, 42000, 49000, 56000, 63000, 70000, 77000, 84000, 91000, 98000, 105000, 112000, 119000, 126000, 133000, 140000, 147000, 154000, 161000, 168000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (82, 291, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (83, 348, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (84, 346, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (85, 347, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (87, 389, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (88, 343, 13000, 13000, 19500, 26000, 32500, 39000, 45500, 52000, 58500, 65000, 71500, 78000, 84500, 91000, 97500, 104000, 110500, 117000, 123500, 130000, 136500, 143000, 149500, 156000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (89, 350, 2000, 2000, 4000, 6000, 8000, 10000, 12000, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (90, 377, 14000, 14000, 21000, 28000, 35000, 42000, 49000, 56000, 63000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (91, 376, 14000, 14000, 21000, 28000, 35000, 42000, 49000, 56000, 63000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000, 70000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (92, 357, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (93, 339, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (96, 393, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (97, 394, 11000, 15000, 20000, 20000, 30000, 30000, 35000, 40000, 45000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 51000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (98, 378, 6000, 6000, 6000, 8000, 10000, 12000, 14000, 16000, 18000, 20000, 22000, 24000, 26000, 28000, 30000, 32000, 34000, 36000, 38000, 40000, 42000, 44000, 46000, 48000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (99, 379, 2000, 2000, 2000, 2000, 2500, 3000, 3500, 4000, 4500, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (100, 384, 3000, 3000, 4500, 6000, 7500, 9000, 10500, 12000, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (101, 383, 6000, 6000, 9000, 12000, 15000, 18000, 21000, 24000, 27000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (102, 381, 1000, 1000, 1500, 2000, 2500, 3000, 3500, 4000, 4500, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (103, 380, 3000, 3000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (104, 375, 20000, 20000, 20000, 40000, 60000, 80000, 100000, 120000, 140000, 160000, 160000, 160000, 160000, 160000, 160000, 160000, 160000, 160000, 160000, 160000, 160000, 160000, 160000, 160000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (105, 374, 20000, 20000, 20000, 40000, 60000, 80000, 100000, 120000, 140000, 160000, 160000, 160000, 160000, 160000, 160000, 160000, 160000, 160000, 160000, 160000, 160000, 160000, 160000, 160000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (106, 373, 2000, 2000, 2000, 4000, 6000, 8000, 10000, 12000, 14000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (107, 372, 2000, 2000, 2000, 4000, 6000, 8000, 10000, 12000, 14000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (108, 371, 2000, 2000, 2000, 4000, 6000, 8000, 10000, 12000, 14000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (109, 370, 2000, 2000, 2000, 4000, 6000, 8000, 10000, 12000, 14000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (110, 369, 2000, 2000, 2000, 4000, 6000, 8000, 10000, 12000, 14000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (111, 368, 2000, 2000, 2000, 4000, 6000, 8000, 10000, 12000, 14000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (112, 367, 2000, 2000, 2000, 4000, 6000, 8000, 10000, 12000, 14000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (113, 366, 2000, 2000, 2000, 4000, 6000, 8000, 10000, 12000, 14000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (114, 365, 2000, 2000, 2000, 4000, 6000, 8000, 10000, 12000, 14000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (115, 364, 2000, 2000, 2000, 4000, 6000, 8000, 10000, 12000, 14000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000, 16000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (116, 361, 1500, 1500, 1500, 3000, 4500, 6000, 7500, 9000, 10500, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (117, 360, 1500, 1500, 1500, 3000, 4500, 6000, 7500, 9000, 10500, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (118, 359, 1000, 1000, 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 8000, 8000, 8000, 8000, 8000, 8000, 8000, 8000, 8000, 8000, 8000, 8000, 8000, 8000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (119, 358, 1000, 1000, 1000, 6000, 7500, 9000, 10500, 12000, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (120, 356, 1500, 1500, 1500, 6000, 7500, 9000, 10500, 12000, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500, 13500)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (121, 355, 1500, 1500, 1500, 3000, 4500, 6000, 7500, 9000, 10500, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (122, 354, 1000, 1000, 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 8000, 8000, 8000, 8000, 8000, 8000, 8000, 8000, 8000, 8000, 8000, 8000, 8000, 8000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (123, 342, 6500, 6500, 6500, 13000, 19500, 26000, 32500, 39000, 45500, 52000, 52000, 52000, 52000, 52000, 52000, 52000, 52000, 52000, 52000, 52000, 52000, 52000, 52000, 52000)
INSERT [dbo].[tb_ProductPricePerHour] ([PPHId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12], [Block13], [Block14], [Block15], [Block16], [Block17], [Block18], [Block19], [Block20], [Block21], [Block22], [Block23], [Block24]) VALUES (124, 340, 4500, 4500, 4500, 6000, 7500, 9000, 10500, 12000, 13500, 15000, 15000, 15000, 15000, 15000, 15000, 15000, 15000, 15000, 15000, 15000, 15000, 15000, 15000, 15000)
SET IDENTITY_INSERT [dbo].[tb_ProductPricePerHour] OFF
SET IDENTITY_INSERT [dbo].[tb_ProductPricePerMonth] ON 

INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (31, 614, 1000000, 2000000, 3000000, 4000000, 5000000, 6000000, 7000000, 8000000, 9000000, 10000000, 11000000, 12000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (32, 737, 1000000, 2000000, 3000000, 4000000, 5000000, 6000000, 7000000, 8000000, 9000000, 10000000, 11000000, 12000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (33, 1078, 1000000, 2000000, 3000000, 4000000, 5000000, 6000000, 7000000, 8000000, 9000000, 10000000, 11000000, 12000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (34, 1076, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (35, 1037, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (36, 1092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (37, 1102, 12000000, 24000000, 36000000, 48000000, 60000000, 72000000, 84000000, 96000000, 108000000, 120000000, 120000000, 120000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (38, 119, 12000000, 24000000, 36000000, 48000000, 60000000, 72000000, 84000000, 96000000, 108000000, 120000000, 120000000, 120000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (39, 120, 12000000, 24000000, 36000000, 48000000, 60000000, 72000000, 84000000, 96000000, 108000000, 120000000, 120000000, 120000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (40, 269, 12000000, 24000000, 36000000, 48000000, 60000000, 72000000, 84000000, 96000000, 108000000, 120000000, 120000000, 120000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (41, 256, 12000000, 24000000, 36000000, 48000000, 60000000, 72000000, 84000000, 96000000, 108000000, 120000000, 120000000, 120000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (42, 209, 12000000, 24000000, 36000000, 48000000, 60000000, 72000000, 84000000, 96000000, 108000000, 120000000, 120000000, 120000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (43, 271, 12000000, 24000000, 36000000, 48000000, 60000000, 72000000, 84000000, 96000000, 108000000, 120000000, 120000000, 120000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (44, 270, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (45, 247, 1000000, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (46, 255, 300000, 300000, 300000, 300000, 300000, 300000, 300000, 300000, 300000, 300000, 300000, 300000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (47, 254, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (48, 253, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (49, 252, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (50, 251, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (51, 250, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (52, 249, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (53, 248, 110000, 110000, 110000, 110000, 110000, 110000, 110000, 110000, 110000, 110000, 110000, 110000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (54, 246, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (55, 291, 12000000, 24000000, 36000000, 48000000, 60000000, 72000000, 84000000, 96000000, 108000000, 120000000, 120000000, 120000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (56, 348, 12000000, 24000000, 36000000, 48000000, 60000000, 72000000, 84000000, 96000000, 108000000, 120000000, 120000000, 120000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (57, 346, 12000000, 24000000, 36000000, 48000000, 60000000, 72000000, 84000000, 96000000, 108000000, 120000000, 120000000, 120000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (58, 347, 12000000, 24000000, 36000000, 48000000, 60000000, 72000000, 84000000, 96000000, 108000000, 120000000, 120000000, 120000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (60, 389, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (61, 343, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 550000, 600000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (62, 357, 12000000, 24000000, 36000000, 48000000, 60000000, 72000000, 84000000, 96000000, 108000000, 120000000, 120000000, 120000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (63, 339, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (66, 393, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (67, 394, 50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000, 500000, 500000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (68, 378, 110000, 110000, 110000, 110000, 110000, 110000, 110000, 110000, 110000, 110000, 110000, 110000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (69, 379, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (70, 384, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (71, 383, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000, 200000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (72, 381, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000, 14000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (73, 380, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (74, 375, 6000000, 6000000, 6000000, 6000000, 6000000, 6000000, 6000000, 6000000, 6000000, 6000000, 6000000, 6000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (75, 374, 6000000, 6000000, 6000000, 6000000, 6000000, 6000000, 6000000, 6000000, 6000000, 6000000, 6000000, 6000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (76, 373, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (77, 372, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (78, 371, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (79, 370, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (80, 369, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (81, 368, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (82, 367, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (83, 366, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (84, 365, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (85, 364, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000, 180000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (86, 361, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000, 90000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (87, 360, 72000, 72000, 72000, 72000, 72000, 72000, 72000, 72000, 72000, 72000, 72000, 72000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (88, 359, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (89, 358, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000, 120000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (90, 356, 80000, 80000, 80000, 80000, 80000, 80000, 80000, 80000, 80000, 80000, 80000, 80000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (91, 355, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (92, 354, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000, 40000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (93, 342, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000, 2000000)
INSERT [dbo].[tb_ProductPricePerMonth] ([PPMId], [ProductID], [Block1], [Block2], [Block3], [Block4], [Block5], [Block6], [Block7], [Block8], [Block9], [Block10], [Block11], [Block12]) VALUES (94, 340, 1400000, 1400000, 1400000, 1400000, 1400000, 1400000, 1400000, 1400000, 1400000, 1400000, 1400000, 1400000)
SET IDENTITY_INSERT [dbo].[tb_ProductPricePerMonth] OFF
SET IDENTITY_INSERT [dbo].[tb_ProductTermConditionDetails] ON 

INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (700, 339, 4, 6868, 6868, 6868, NULL, NULL, NULL, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'53', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (701, 340, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'2', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (702, 341, 4, 100000, 50000, 25000, NULL, NULL, NULL, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'3', NULL, N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (703, 342, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'4', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (704, 343, 4, 6868, 6868, 6868, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'53', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (705, 344, 4, 100000, 50000, 25000, NULL, NULL, NULL, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'6', NULL, N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (706, 345, 4, 100000, 50000, 25000, NULL, NULL, NULL, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'7', NULL, N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (707, 346, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'8', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (708, 347, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'9', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (709, 348, 4, 100000, 50000, 25000, 2000, 1000, 2000, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'Sử dụng đúng kỹ thuật, không chạy máy liên tục quá lâu khiến máy bị nóng, gây cháy máy.', N'Vui lòng bấm xem link youtube sau : https://www.youtube.com/watch?v=N8wWRMGtwLA', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (710, 349, 4, 100000, 50000, 25000, NULL, NULL, NULL, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'11', NULL, N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (711, 350, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'12', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (712, 351, 4, 100000, 50000, 25000, NULL, NULL, NULL, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'13', NULL, N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (713, 352, 4, 100000, 50000, 25000, NULL, NULL, NULL, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'14', NULL, N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (715, 354, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'16', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (716, 355, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'17', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (717, 356, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'18', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (718, 357, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'19', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (719, 358, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'20', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (720, 359, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'21', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (721, 360, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'22', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (722, 361, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'23', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (725, 364, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'26', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (726, 365, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'27', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (727, 366, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'28', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (728, 367, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'29', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (729, 368, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'30', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (730, 369, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'31', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (731, 370, 4, 100000, 50000, 25000, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'32', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (732, 371, 4, 6868, 6868, 6868, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'33', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (733, 372, 4, 6868, 6868, 6868, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'34', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (734, 373, 4, 6868, 6868, 6868, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'35', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (735, 374, 4, 6868, 6868, 6868, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'36', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (736, 375, 4, 6868, 6868, 6868, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'37', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (737, 376, 4, 6868, 6868, 6868, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'43', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (738, 377, 4, 50000, 50000, 50000, 20000, 1000000, 30000, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km', N'', N'Sử dụng đúng kỹ thuật, không chạy máy liên tục quá lâu khiến máy bị nóng, gây cháy máy.', N'Xem link hướng dẫn', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang', N'Thời gian tháo mất 15 pht.', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (739, 378, 4, 6868, 6868, 6868, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'46', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (740, 379, 4, 6868, 6868, 6868, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'47', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (741, 380, 4, 6868, 6868, 6868, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'48', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (742, 381, 4, 6868, 6868, 6868, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'49', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (743, 382, 4, 6868, 6868, 6868, NULL, NULL, NULL, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'50', NULL, N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (744, 383, 4, 6868, 6868, 6868, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'51', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (745, 384, 4, 123, 345, 567, 0, 0, 0, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'52', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
INSERT [dbo].[tb_ProductTermConditionDetails] ([PrDetailsId], [ProductId], [WarehouseId], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (749, 394, 4, 6868, 6868, 6868, NULL, NULL, NULL, NULL, NULL, N'Quý khách vui lòng chuyển tiền thuê trước để shop giữ hàng lại.|6868', N'Thời gian giao hàng khoảng 15 phút. Giao hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'Vui lòng trả hàng sớm trước 15 phút giờ shop đóng cửa. Nhận hàng trong bán kính 3 km, nếu xa hơn sẽ tính thêm phụ thu 5.000 / km|6868', N'6868|6868', N'53', N'', N'Thời gian lắp mất 15 phút. Không lắp trên cao quá 2m, nếu lắp cao hơn phải có sẵn thang|6868', N'Thời gian tháo mất 15 phút.|6868', N'Thời gian lắp mất 30 phút và thời gian tháo 15 phút trước khi hết giờ|6868')
SET IDENTITY_INSERT [dbo].[tb_ProductTermConditionDetails] OFF
SET IDENTITY_INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ON 

INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (12, 378, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (13, 379, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (14, 384, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (15, 383, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (16, 381, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (17, 380, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (18, 375, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (19, 374, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (20, 373, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (21, 372, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (22, 371, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (23, 370, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (24, 369, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (25, 368, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (26, 367, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (27, 366, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (28, 365, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (29, 364, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (30, 361, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (31, 360, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (32, 359, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (33, 358, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (34, 356, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (35, 355, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (36, 354, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (37, 342, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tb_ProductTermConditionDetails_Translation] ([PrDetailsId], [ProductId], [IdLanguage], [CostInstallation], [CostDelivery], [CostInstallAndDelivery], [CostReservation], [CostDepositValue], [CostDepositDocument], [CreateTime], [CreatedBy], [Tuvanchuyen], [Giaotannha], [Nhantratannha], [Giaovanhantratannha], [Tulapdat], [Huongdansudung], [Thotoilap], [Thotoithao], [Thodenlapvathao]) VALUES (38, 340, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tb_ProductTermConditionDetails_Translation] OFF
SET IDENTITY_INSERT [dbo].[tb_Province] ON 

INSERT [dbo].[tb_Province] ([Id], [Name], [Type], [TelephoneCode], [ZipCode], [CountryId], [CountryCode], [SortOrder], [IsPublished], [IsDeleted]) VALUES (2, N'Hà Nội', NULL, NULL, NULL, 1, NULL, 0, NULL, NULL)
INSERT [dbo].[tb_Province] ([Id], [Name], [Type], [TelephoneCode], [ZipCode], [CountryId], [CountryCode], [SortOrder], [IsPublished], [IsDeleted]) VALUES (3, N'Hồ Chí Minh', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL)
INSERT [dbo].[tb_Province] ([Id], [Name], [Type], [TelephoneCode], [ZipCode], [CountryId], [CountryCode], [SortOrder], [IsPublished], [IsDeleted]) VALUES (4, N'An Giang', NULL, NULL, NULL, 1, NULL, 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_Province] OFF
SET IDENTITY_INSERT [dbo].[tb_ServiceSelection] ON 

INSERT [dbo].[tb_ServiceSelection] ([ServiceSelectionID], [ServiceName], [ServiceDescription], [ServiceCost], [SortBy]) VALUES (1, N'Thợ đến lắp', N'Kỹ thuật viên của chúng tôi sẽ giao sản phẩm đến tận nơi đồng thời tiền hành lắp đặt và hướng dẫn sử dụng cho quý khách.', 75000, 1)
INSERT [dbo].[tb_ServiceSelection] ([ServiceSelectionID], [ServiceName], [ServiceDescription], [ServiceCost], [SortBy]) VALUES (2, N'Hướng dẫn sử dụng', N'Kỹ thuật viên của chúng tôi sẽ hướng dẫn sử dụng cho quý khách khi đến nhận hàng.', 37000, 2)
INSERT [dbo].[tb_ServiceSelection] ([ServiceSelectionID], [ServiceName], [ServiceDescription], [ServiceCost], [SortBy]) VALUES (3, N'Tự lặp đặt', N'Quý khách hàng tự lắp đặt và sử dụng sản phẩm, chúng tôi có thể tư vấn qua điện thoại.', 0, 3)
SET IDENTITY_INSERT [dbo].[tb_ServiceSelection] OFF
SET IDENTITY_INSERT [dbo].[tb_stockTemp] ON 

INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1006, 23, 20)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1007, 22, 10)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1008, 21, 10)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1009, 24, 1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1010, 23, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1011, 24, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1012, 23, -2)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1013, 23, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1014, 23, -2)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1015, 23, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1016, 23, -2)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1017, 39, 4)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1018, 1037, 2)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1019, 1037, 54)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1020, 1078, 23)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1021, 1078, 7)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1022, 1078, 1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1023, 1051, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1024, 1081, 10)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1025, 1051, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1026, 1051, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1027, 1061, 1000)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1028, 1051, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1029, 1051, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1030, 1051, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1031, 1051, 10000)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1032, 1051, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1033, 1051, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1034, 1057, 10)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1035, 1056, 10)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1036, 1052, 10)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1037, 1051, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1038, 1078, 10)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1039, 1041, 1000)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1040, 1041, 100)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1041, 1038, 100)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1042, 1051, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1043, 1102, 100)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1044, 269, 1000)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1045, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1046, 209, 3)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1047, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1048, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1049, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1050, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1051, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1052, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1053, 270, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1054, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1055, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1056, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1057, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1058, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1059, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1060, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1061, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1062, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1063, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1064, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1065, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1066, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1067, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1068, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1069, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1070, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1071, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1072, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1073, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1074, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1075, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1076, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1077, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1078, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1079, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1080, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1081, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1082, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1083, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1084, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1085, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1086, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1087, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1088, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1089, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1090, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1091, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1092, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1093, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1094, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1095, 270, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1096, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1097, 271, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1098, 270, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1099, 270, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1100, 270, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1101, 269, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1102, 260, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1103, 256, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1104, 255, 5)
GO
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1105, 254, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1106, 253, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1107, 252, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1108, 251, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1109, 251, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1110, 250, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1111, 250, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1112, 249, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1113, 248, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1114, 247, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1115, 246, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1116, 244, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1117, 241, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1118, 241, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1119, 241, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1120, 240, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1121, 239, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1122, 237, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1123, 236, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1124, 237, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1125, 236, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1126, 235, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1127, 234, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1128, 233, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1129, 232, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1130, 230, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1131, 229, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1132, 223, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1133, 228, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1134, 227, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1135, 209, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1136, 210, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1137, 212, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1138, 213, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1139, 213, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1140, 214, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1141, 215, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1142, 216, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1143, 217, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1144, 218, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1145, 219, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1146, 221, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1147, 223, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1148, 224, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1149, 226, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1150, 268, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1151, 267, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1152, 266, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1153, 265, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1154, 264, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1155, 263, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1156, 262, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1157, 261, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1158, 257, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1159, 258, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1160, 259, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1161, 245, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1162, 243, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1163, 242, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1164, 222, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1165, 225, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1166, 231, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1167, 220, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1168, 211, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1169, 238, 5)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1170, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1171, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1172, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1173, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1174, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1175, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1176, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1177, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1178, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1179, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1180, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1181, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1182, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1183, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1184, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1185, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1186, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1187, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1188, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1189, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1190, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1191, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1192, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1193, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1194, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1195, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1196, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1197, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1198, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1199, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1200, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1201, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1202, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1203, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1204, 269, -1)
GO
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1205, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1206, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1207, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1208, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1209, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1210, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1211, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1212, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1213, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1214, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1215, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1216, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1217, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1218, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1219, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1220, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1221, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1222, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1223, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1224, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1225, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1226, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1227, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1228, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1229, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1230, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1231, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1232, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1233, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1234, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1235, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1236, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1237, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1238, 269, -2)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1239, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1240, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1241, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1242, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1243, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1244, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1245, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1246, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1247, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1248, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1249, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1250, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1251, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1252, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1253, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1254, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1255, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1256, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1257, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1258, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1259, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1260, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1261, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1262, 269, -2)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1263, 269, -2)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1264, 269, -2)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1265, 269, -2)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1266, 269, -2)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1267, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1268, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1269, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1270, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1271, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1272, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1273, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1274, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1275, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1276, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1277, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1278, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1279, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1280, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1281, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1282, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1283, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1284, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1285, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1286, 269, -2)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1287, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1288, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1289, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1290, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1291, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1292, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1293, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1294, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1295, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1296, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1297, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1298, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1299, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1300, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1301, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1302, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1303, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1304, 269, -1)
GO
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1305, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1306, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1307, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1308, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1309, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1310, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1311, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1312, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1313, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1314, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1315, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1316, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1317, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1318, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1319, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1320, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1321, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1322, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1323, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1324, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1325, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1326, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1327, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1328, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1329, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1330, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1331, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1332, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1333, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1334, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1335, 269, -2)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1336, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1337, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1338, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1339, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1340, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1341, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1342, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1343, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1344, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1345, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1346, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1347, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1348, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1349, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1350, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1351, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1352, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1353, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1354, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1355, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1356, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1357, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1358, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1359, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1360, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1361, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1362, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1363, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1364, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1365, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1366, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1367, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1368, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1369, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1370, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1371, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1372, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1373, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1374, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1375, 269, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1376, 348, -2)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1377, 348, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1378, 348, -2)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1379, 348, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1380, 348, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1381, 348, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1382, 348, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1383, 348, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1384, 348, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1385, 348, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1386, 348, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1387, 348, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1388, 343, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1389, 343, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1390, 343, -2)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1391, 343, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1392, 348, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1393, 348, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1394, 348, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1395, 348, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1396, 343, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1397, 348, -2)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1398, 343, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1399, 343, -2)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1400, 348, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1401, 348, -3)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1402, 348, -2)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1403, 348, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1404, 348, -1)
GO
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1405, 343, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1406, 348, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1407, 343, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1408, 343, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1409, 343, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1410, 348, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1411, 348, -1)
INSERT [dbo].[tb_stockTemp] ([stockTempId], [idProduct], [Quatity]) VALUES (1412, 348, -1)
SET IDENTITY_INSERT [dbo].[tb_stockTemp] OFF
SET IDENTITY_INSERT [dbo].[tb_stockTempLog] ON 

INSERT [dbo].[tb_stockTempLog] ([stockTempLogID], [stockTempId], [createDate], [Qty]) VALUES (1, 3, CAST(N'2020-06-19 14:34:53.990' AS DateTime), 10)
INSERT [dbo].[tb_stockTempLog] ([stockTempLogID], [stockTempId], [createDate], [Qty]) VALUES (2, 3, CAST(N'2020-06-19 14:36:46.910' AS DateTime), 12)
INSERT [dbo].[tb_stockTempLog] ([stockTempLogID], [stockTempId], [createDate], [Qty]) VALUES (3, 3, CAST(N'2020-06-19 14:37:31.020' AS DateTime), 13)
INSERT [dbo].[tb_stockTempLog] ([stockTempLogID], [stockTempId], [createDate], [Qty]) VALUES (4, 3, CAST(N'2020-06-19 14:38:04.120' AS DateTime), 45)
INSERT [dbo].[tb_stockTempLog] ([stockTempLogID], [stockTempId], [createDate], [Qty]) VALUES (5, 3, CAST(N'2020-06-19 14:38:52.227' AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[tb_stockTempLog] OFF
INSERT [dbo].[tb_Ward] ([Id], [Name], [Type], [LatiLongTude], [DistrictID], [SortOrder], [IsPublished], [IsDeleted]) VALUES (1, N'Phường 1', NULL, NULL, 1, 1, 1, NULL)
INSERT [dbo].[tb_Ward] ([Id], [Name], [Type], [LatiLongTude], [DistrictID], [SortOrder], [IsPublished], [IsDeleted]) VALUES (2, N'Phường 2', NULL, NULL, 1, 1, 1, NULL)
INSERT [dbo].[tb_Ward] ([Id], [Name], [Type], [LatiLongTude], [DistrictID], [SortOrder], [IsPublished], [IsDeleted]) VALUES (3, N'Phường 3', NULL, NULL, 1, 1, 1, NULL)
INSERT [dbo].[tb_Ward] ([Id], [Name], [Type], [LatiLongTude], [DistrictID], [SortOrder], [IsPublished], [IsDeleted]) VALUES (4, N'Phường 4', NULL, NULL, 2, 1, 1, NULL)
INSERT [dbo].[tb_Ward] ([Id], [Name], [Type], [LatiLongTude], [DistrictID], [SortOrder], [IsPublished], [IsDeleted]) VALUES (5, N'Phường 5', NULL, NULL, 2, 1, 1, NULL)
INSERT [dbo].[tb_Ward] ([Id], [Name], [Type], [LatiLongTude], [DistrictID], [SortOrder], [IsPublished], [IsDeleted]) VALUES (6, N'Phường 6', NULL, NULL, 3, 1, 1, NULL)
INSERT [dbo].[tb_Ward] ([Id], [Name], [Type], [LatiLongTude], [DistrictID], [SortOrder], [IsPublished], [IsDeleted]) VALUES (7, N'Phường 7', NULL, NULL, 3, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[tb_WareHouse] ON 

INSERT [dbo].[tb_WareHouse] ([whId], [WarehouseCode], [WarehouseName], [WarehouseAddress], [whOpenTime], [whCloseTime], [IsDeleted], [IsDisplay], [createTime], [Images], [Policy], [Phone], [Zalo], [Messenger], [Skype], [Email], [Icons], [Hopdong], [ChinhSach], [NgayTaoChinhSach], [BannerImage], [LocationMap]) VALUES (1, N'WH202001', N'Levoisin', N'Số 431, đường Nguyễn Kiệm, phường 9, quận Phú Nhuận, Hồ Chí Minh, Việt Nam', N'09:00', N'18:30', NULL, NULL, CAST(N'2020-03-14 05:50:12.010' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tb_WareHouse] ([whId], [WarehouseCode], [WarehouseName], [WarehouseAddress], [whOpenTime], [whCloseTime], [IsDeleted], [IsDisplay], [createTime], [Images], [Policy], [Phone], [Zalo], [Messenger], [Skype], [Email], [Icons], [Hopdong], [ChinhSach], [NgayTaoChinhSach], [BannerImage], [LocationMap]) VALUES (2, N'WH2020023', N'The Backyard quận 23', N'số 44, đường 44, phường Thảo Điền, quận 23', N'', N'', NULL, NULL, CAST(N'2021-01-04 15:17:23.707' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tb_WareHouse] ([whId], [WarehouseCode], [WarehouseName], [WarehouseAddress], [whOpenTime], [whCloseTime], [IsDeleted], [IsDisplay], [createTime], [Images], [Policy], [Phone], [Zalo], [Messenger], [Skype], [Email], [Icons], [Hopdong], [ChinhSach], [NgayTaoChinhSach], [BannerImage], [LocationMap]) VALUES (3, N'WH202003', N'Nam Anh building quận 1', N'An Phú, An Khánh, quận 2, TPHCM', N'10:30', N'17:30', NULL, NULL, CAST(N'2020-03-16 06:40:03.677' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tb_WareHouse] ([whId], [WarehouseCode], [WarehouseName], [WarehouseAddress], [whOpenTime], [whCloseTime], [IsDeleted], [IsDisplay], [createTime], [Images], [Policy], [Phone], [Zalo], [Messenger], [Skype], [Email], [Icons], [Hopdong], [ChinhSach], [NgayTaoChinhSach], [BannerImage], [LocationMap]) VALUES (4, N'HoangAnh', N'Hoàng Anh', N'34 Lê Duẩn, Quận 1, Tp.HCM', NULL, NULL, NULL, NULL, NULL, N'/image_Waswhouse/Product-avatar-2021102003570049.png', NULL, N'0903663879', N'0925840939', N'https://www.messenger.com/t/hoang.anh.7503', N'live:9bb87494f6d2ab2f', N'ttskhpn@gmail.com', NULL, NULL, NULL, CAST(N'2023-08-29 12:15:24.460' AS DateTime), N'/image_Waswhouse/Product-avatar-2021111003453993.jpg', N'https://goo.gl/maps/2jzSGg1THTmEgNMP6')
INSERT [dbo].[tb_WareHouse] ([whId], [WarehouseCode], [WarehouseName], [WarehouseAddress], [whOpenTime], [whCloseTime], [IsDeleted], [IsDisplay], [createTime], [Images], [Policy], [Phone], [Zalo], [Messenger], [Skype], [Email], [Icons], [Hopdong], [ChinhSach], [NgayTaoChinhSach], [BannerImage], [LocationMap]) VALUES (6, N'KhoTest011', N'KT001', N'TPHCM', N'', N'', NULL, NULL, CAST(N'2021-10-28 17:20:25.817' AS DateTime), N'../image_product/Product-avatar-2021012904035028.jpg', N'<p>asdda</p>', N'0914566873', N'0914566873', N'', N'', N'', NULL, N'', N'', CAST(N'2021-10-28 17:20:25.817' AS DateTime), N'', N'https://www.google.com/maps/place/55/10/36 Thành Mỹ, Phường 8, Tân Bình, Thành phố Hồ Chí Minh, Vietnam/@10.7820505,106.6509012,17z/data=!3m1!4b1!4m5!3m4!1s0x31752ec818d57489:0x52fb880f12fe298a!8m2!3d10.7820505!4d106.6530899')
INSERT [dbo].[tb_WareHouse] ([whId], [WarehouseCode], [WarehouseName], [WarehouseAddress], [whOpenTime], [whCloseTime], [IsDeleted], [IsDisplay], [createTime], [Images], [Policy], [Phone], [Zalo], [Messenger], [Skype], [Email], [Icons], [Hopdong], [ChinhSach], [NgayTaoChinhSach], [BannerImage], [LocationMap]) VALUES (7, N'VM2', N'Vinsmart2', N'TP.HCM', NULL, NULL, NULL, NULL, CAST(N'2021-04-02 14:31:39.867' AS DateTime), NULL, NULL, N'0913456y2', N'zalo2', N'messenger2', N'skype2', N'email2', N'/Images/WareHouse/WareHouse2021040808583954.jpg', N'/Images/WareHouse/WareHouse2021040711350289.docx', N'/Images/WareHouse/WareHouse2021040711352689.docx', NULL, N'/Images/WareHouse/WareHouse2021040711340692.jpg', N'google map2')
INSERT [dbo].[tb_WareHouse] ([whId], [WarehouseCode], [WarehouseName], [WarehouseAddress], [whOpenTime], [whCloseTime], [IsDeleted], [IsDisplay], [createTime], [Images], [Policy], [Phone], [Zalo], [Messenger], [Skype], [Email], [Icons], [Hopdong], [ChinhSach], [NgayTaoChinhSach], [BannerImage], [LocationMap]) VALUES (8, N'MaKH', N'test kho hàng', N'dia chi kho hàng', NULL, NULL, NULL, NULL, NULL, N'/image_Waswhouse/1683254769200_640.jpg', NULL, N'0914566873', N'0914566873', N'fb/messanger', N'skype', N'lethanhnghiep1993@gmail.com', NULL, NULL, NULL, CAST(N'2023-08-29 12:16:57.860' AS DateTime), N'/image_Waswhouse/b22bac11901d6a43330c.jpg', N'google map')
SET IDENTITY_INSERT [dbo].[tb_WareHouse] OFF
SET IDENTITY_INSERT [dbo].[tb_WareHouse_Day] ON 

INSERT [dbo].[tb_WareHouse_Day] ([whdid], [whdName], [whTimeClose], [whId]) VALUES (1, N'Nghỉ lễ', CAST(N'2020-07-22 00:00:00.000' AS DateTime), 7)
INSERT [dbo].[tb_WareHouse_Day] ([whdid], [whdName], [whTimeClose], [whId]) VALUES (3, N'Nghỉ lễ 2', CAST(N'2020-07-24 00:00:00.000' AS DateTime), 7)
INSERT [dbo].[tb_WareHouse_Day] ([whdid], [whdName], [whTimeClose], [whId]) VALUES (7, N'', CAST(N'2021-11-22 00:00:00.000' AS DateTime), 4)
INSERT [dbo].[tb_WareHouse_Day] ([whdid], [whdName], [whTimeClose], [whId]) VALUES (8, N'Sinh nhật con', CAST(N'2021-12-21 00:00:00.000' AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[tb_WareHouse_Day] OFF
SET IDENTITY_INSERT [dbo].[tb_WareHouse_Time] ON 

INSERT [dbo].[tb_WareHouse_Time] ([whtid], [whId], [whOpenTime], [whCloseTime], [whOpenTime2], [whCloseTime2], [FromDayOfWeek], [ToDayOfWeek], [whOpenTime3], [whCloseTime3], [Title1], [Title2], [Title3]) VALUES (32, 4, N'08:20', N'11:00', N'13:00', N'17:00', N'2,3,5,', NULL, N'', N'', N'Buổi sáng1', N'Buổi trưa2', N'Buổi chiều3')
INSERT [dbo].[tb_WareHouse_Time] ([whtid], [whId], [whOpenTime], [whCloseTime], [whOpenTime2], [whCloseTime2], [FromDayOfWeek], [ToDayOfWeek], [whOpenTime3], [whCloseTime3], [Title1], [Title2], [Title3]) VALUES (35, 4, N'09:30', N'12:20', N'', N'', N'6,', NULL, N'', N'', N'Buổi sáng', N'Buổi trưa', N'Buổi chiều')
SET IDENTITY_INSERT [dbo].[tb_WareHouse_Time] OFF
SET IDENTITY_INSERT [dbo].[TimeBlock] ON 

INSERT [dbo].[TimeBlock] ([Id], [FromTime], [ToTime], [ForDays], [whId], [DisplayOrder]) VALUES (42, N'04:00,08:00,13:30', N'07:00,11:00,15:12', N'2', 4, NULL)
INSERT [dbo].[TimeBlock] ([Id], [FromTime], [ToTime], [ForDays], [whId], [DisplayOrder]) VALUES (43, N'04:00,08:00,13:30', N'07:00,11:00,15:12', N'3', 4, NULL)
INSERT [dbo].[TimeBlock] ([Id], [FromTime], [ToTime], [ForDays], [whId], [DisplayOrder]) VALUES (45, N'04:00,08:00,13:30', N'07:00,11:00,15:12', N'5', 4, NULL)
INSERT [dbo].[TimeBlock] ([Id], [FromTime], [ToTime], [ForDays], [whId], [DisplayOrder]) VALUES (46, N'04:00,08:00,13:30', N'07:00,11:00,15:12', N'6', 4, NULL)
INSERT [dbo].[TimeBlock] ([Id], [FromTime], [ToTime], [ForDays], [whId], [DisplayOrder]) VALUES (47, N'04:00,08:00,13:30', N'07:00,11:00,15:12', N'7', 4, NULL)
INSERT [dbo].[TimeBlock] ([Id], [FromTime], [ToTime], [ForDays], [whId], [DisplayOrder]) VALUES (48, N'04:00,08:00,13:30', N'07:00,11:00,15:12', N'8', 4, NULL)
INSERT [dbo].[TimeBlock] ([Id], [FromTime], [ToTime], [ForDays], [whId], [DisplayOrder]) VALUES (49, N'04:00,08:00,13:30', N'07:00,11:00,15:12', N'4', 4, NULL)
SET IDENTITY_INSERT [dbo].[TimeBlock] OFF
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'01', N'Hà Nội', N'Thành phố Trung ương', N'HANOI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'02', N'Hà Giang', N'Tỉnh', N'HAGIANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'04', N'Cao Bằng', N'Tỉnh', N'CAOBANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'06', N'Bắc Kạn', N'Tỉnh', N'BACKAN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'08', N'Tuyên Quang', N'Tỉnh', N'TUYENQUANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'10', N'Lào Cai', N'Tỉnh', N'LAOCAI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'11', N'Điện Biên', N'Tỉnh', N'DIENBIEN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'12', N'Lai Châu', N'Tỉnh', N'LAICHAU')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'14', N'Sơn La', N'Tỉnh', N'SONLA')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'15', N'Yên Bái', N'Tỉnh', N'YENBAI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'17', N'Hoà Bình', N'Tỉnh', N'HOABINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'19', N'Thái Nguyên', N'Tỉnh', N'THAINGUYEN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'20', N'Lạng Sơn', N'Tỉnh', N'LANGSON')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'22', N'Quảng Ninh', N'Tỉnh', N'QUANGNINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'24', N'Bắc Giang', N'Tỉnh', N'BACGIANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'25', N'Phú Thọ', N'Tỉnh', N'PHUTHO')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'26', N'Vĩnh Phúc', N'Tỉnh', N'VINHPHUC')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'27', N'Bắc Ninh', N'Tỉnh', N'BACNINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'30', N'Hải Dương', N'Tỉnh', N'HAIDUONG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'31', N'Hải Phòng', N'Thành phố Trung ương', N'HAIPHONG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'33', N'Hưng Yên', N'Tỉnh', N'HUNGYEN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'34', N'Thái Bình', N'Tỉnh', N'THAIBINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'35', N'Hà Nam', N'Tỉnh', N'HANAM')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'36', N'Nam Định', N'Tỉnh', N'NAMDINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'37', N'Ninh Bình', N'Tỉnh', N'NINHBINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'38', N'Thanh Hóa', N'Tỉnh', N'THANHHOA')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'40', N'Nghệ An', N'Tỉnh', N'NGHEAN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'42', N'Hà Tĩnh', N'Tỉnh', N'HATINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'44', N'Quảng Bình', N'Tỉnh', N'QUANGBINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'45', N'Quảng Trị', N'Tỉnh', N'QUANGTRI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'46', N'Thừa Thiên Huế', N'Tỉnh', N'THUATHIENHUE')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'48', N'Thành phố Đà Nẵng', N'Thành phố Trung ương', N'DANANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'49', N'Quảng Nam', N'Tỉnh', N'QUANGNAM')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'51', N'Quảng Ngãi', N'Tỉnh', N'QUANGNGAI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'52', N'Bình Định', N'Tỉnh', N'BINHDINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'54', N'Phú Yên', N'Tỉnh', N'PHUYEN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'56', N'Khánh Hòa', N'Tỉnh', N'KHANHHOA')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'58', N'Ninh Thuận', N'Tỉnh', N'NINHTHUAN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'60', N'Bình Thuận', N'Tỉnh', N'BINHTHUAN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'62', N'Kon Tum', N'Tỉnh', N'KONTUM')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'64', N'Gia Lai', N'Tỉnh', N'GIALAI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'66', N'Đắk Lắk', N'Tỉnh', N'DAKLAK')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'67', N'Đắk Nông', N'Tỉnh', N'DAKNONG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'68', N'Lâm Đồng', N'Tỉnh', N'LAMDONG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'70', N'Bình Phước', N'Tỉnh', N'BINHPHUOC')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'72', N'Tây Ninh', N'Tỉnh', N'TAYNINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'74', N'Bình Dương', N'Tỉnh', N'BINHDUONG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'75', N'Đồng Nai', N'Tỉnh', N'DONGNAI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'77', N'Bà Rịa - Vũng Tàu', N'Tỉnh', N'BARIAVUNGTAU')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'79', N'Thành phố Hồ Chí Minh', N'Thành phố Trung ương', N'HOCHIMINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'80', N'Long An', N'Tỉnh', N'LONGAN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'82', N'Tiền Giang', N'Tỉnh', N'TIENGIANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'83', N'Bến Tre', N'Tỉnh', N'BENTRE')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'84', N'Trà Vinh', N'Tỉnh', N'TRAVINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'86', N'Vĩnh Long', N'Tỉnh', N'VINHLONG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'87', N'Đồng Tháp', N'Tỉnh', N'DONGTHAP')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'89', N'An Giang', N'Tỉnh', N'ANGIANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'91', N'Kiên Giang', N'Tỉnh', N'KIENGIANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'92', N'Thành phố Cần Thơ', N'Thành phố Trung ương', N'CANTHO')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'93', N'Hậu Giang', N'Tỉnh', N'HAUGIANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'94', N'Sóc Trăng', N'Tỉnh', N'SOCTRANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'95', N'Bạc Liêu', N'Tỉnh', N'BACLIEU')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'96', N'Cà Mau', N'Tỉnh', N'CAMAU')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'01', N'Hà Nội', N'Thành phố Trung ương', N'HANOI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'02', N'Hà Giang', N'Tỉnh', N'HAGIANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'04', N'Cao Bằng', N'Tỉnh', N'CAOBANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'06', N'Bắc Kạn', N'Tỉnh', N'BACKAN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'08', N'Tuyên Quang', N'Tỉnh', N'TUYENQUANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'10', N'Lào Cai', N'Tỉnh', N'LAOCAI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'11', N'Điện Biên', N'Tỉnh', N'DIENBIEN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'12', N'Lai Châu', N'Tỉnh', N'LAICHAU')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'14', N'Sơn La', N'Tỉnh', N'SONLA')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'15', N'Yên Bái', N'Tỉnh', N'YENBAI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'17', N'Hoà Bình', N'Tỉnh', N'HOABINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'19', N'Thái Nguyên', N'Tỉnh', N'THAINGUYEN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'20', N'Lạng Sơn', N'Tỉnh', N'LANGSON')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'22', N'Quảng Ninh', N'Tỉnh', N'QUANGNINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'24', N'Bắc Giang', N'Tỉnh', N'BACGIANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'25', N'Phú Thọ', N'Tỉnh', N'PHUTHO')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'26', N'Vĩnh Phúc', N'Tỉnh', N'VINHPHUC')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'27', N'Bắc Ninh', N'Tỉnh', N'BACNINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'30', N'Hải Dương', N'Tỉnh', N'HAIDUONG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'31', N'Hải Phòng', N'Thành phố Trung ương', N'HAIPHONG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'33', N'Hưng Yên', N'Tỉnh', N'HUNGYEN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'34', N'Thái Bình', N'Tỉnh', N'THAIBINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'35', N'Hà Nam', N'Tỉnh', N'HANAM')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'36', N'Nam Định', N'Tỉnh', N'NAMDINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'37', N'Ninh Bình', N'Tỉnh', N'NINHBINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'38', N'Thanh Hóa', N'Tỉnh', N'THANHHOA')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'40', N'Nghệ An', N'Tỉnh', N'NGHEAN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'42', N'Hà Tĩnh', N'Tỉnh', N'HATINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'44', N'Quảng Bình', N'Tỉnh', N'QUANGBINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'45', N'Quảng Trị', N'Tỉnh', N'QUANGTRI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'46', N'Thừa Thiên Huế', N'Tỉnh', N'THUATHIENHUE')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'48', N'Thành phố Đà Nẵng', N'Thành phố Trung ương', N'DANANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'49', N'Quảng Nam', N'Tỉnh', N'QUANGNAM')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'51', N'Quảng Ngãi', N'Tỉnh', N'QUANGNGAI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'52', N'Bình Định', N'Tỉnh', N'BINHDINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'54', N'Phú Yên', N'Tỉnh', N'PHUYEN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'56', N'Khánh Hòa', N'Tỉnh', N'KHANHHOA')
GO
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'58', N'Ninh Thuận', N'Tỉnh', N'NINHTHUAN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'60', N'Bình Thuận', N'Tỉnh', N'BINHTHUAN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'62', N'Kon Tum', N'Tỉnh', N'KONTUM')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'64', N'Gia Lai', N'Tỉnh', N'GIALAI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'66', N'Đắk Lắk', N'Tỉnh', N'DAKLAK')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'67', N'Đắk Nông', N'Tỉnh', N'DAKNONG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'68', N'Lâm Đồng', N'Tỉnh', N'LAMDONG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'70', N'Bình Phước', N'Tỉnh', N'BINHPHUOC')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'72', N'Tây Ninh', N'Tỉnh', N'TAYNINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'74', N'Bình Dương', N'Tỉnh', N'BINHDUONG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'75', N'Đồng Nai', N'Tỉnh', N'DONGNAI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'77', N'Bà Rịa - Vũng Tàu', N'Tỉnh', N'BARIAVUNGTAU')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'79', N'Thành phố Hồ Chí Minh', N'Thành phố Trung ương', N'HOCHIMINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'80', N'Long An', N'Tỉnh', N'LONGAN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'82', N'Tiền Giang', N'Tỉnh', N'TIENGIANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'83', N'Bến Tre', N'Tỉnh', N'BENTRE')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'84', N'Trà Vinh', N'Tỉnh', N'TRAVINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'86', N'Vĩnh Long', N'Tỉnh', N'VINHLONG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'87', N'Đồng Tháp', N'Tỉnh', N'DONGTHAP')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'89', N'An Giang', N'Tỉnh', N'ANGIANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'91', N'Kiên Giang', N'Tỉnh', N'KIENGIANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'92', N'Thành phố Cần Thơ', N'Thành phố Trung ương', N'CANTHO')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'93', N'Hậu Giang', N'Tỉnh', N'HAUGIANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'94', N'Sóc Trăng', N'Tỉnh', N'SOCTRANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'95', N'Bạc Liêu', N'Tỉnh', N'BACLIEU')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'96', N'Cà Mau', N'Tỉnh', N'CAMAU')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'01', N'Hà Nội', N'Thành phố Trung ương', N'HANOI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'02', N'Hà Giang', N'Tỉnh', N'HAGIANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'04', N'Cao Bằng', N'Tỉnh', N'CAOBANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'06', N'Bắc Kạn', N'Tỉnh', N'BACKAN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'08', N'Tuyên Quang', N'Tỉnh', N'TUYENQUANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'10', N'Lào Cai', N'Tỉnh', N'LAOCAI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'11', N'Điện Biên', N'Tỉnh', N'DIENBIEN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'12', N'Lai Châu', N'Tỉnh', N'LAICHAU')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'14', N'Sơn La', N'Tỉnh', N'SONLA')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'15', N'Yên Bái', N'Tỉnh', N'YENBAI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'17', N'Hoà Bình', N'Tỉnh', N'HOABINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'19', N'Thái Nguyên', N'Tỉnh', N'THAINGUYEN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'20', N'Lạng Sơn', N'Tỉnh', N'LANGSON')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'22', N'Quảng Ninh', N'Tỉnh', N'QUANGNINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'24', N'Bắc Giang', N'Tỉnh', N'BACGIANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'25', N'Phú Thọ', N'Tỉnh', N'PHUTHO')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'26', N'Vĩnh Phúc', N'Tỉnh', N'VINHPHUC')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'27', N'Bắc Ninh', N'Tỉnh', N'BACNINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'30', N'Hải Dương', N'Tỉnh', N'HAIDUONG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'31', N'Hải Phòng', N'Thành phố Trung ương', N'HAIPHONG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'33', N'Hưng Yên', N'Tỉnh', N'HUNGYEN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'34', N'Thái Bình', N'Tỉnh', N'THAIBINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'35', N'Hà Nam', N'Tỉnh', N'HANAM')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'36', N'Nam Định', N'Tỉnh', N'NAMDINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'37', N'Ninh Bình', N'Tỉnh', N'NINHBINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'38', N'Thanh Hóa', N'Tỉnh', N'THANHHOA')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'40', N'Nghệ An', N'Tỉnh', N'NGHEAN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'42', N'Hà Tĩnh', N'Tỉnh', N'HATINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'44', N'Quảng Bình', N'Tỉnh', N'QUANGBINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'45', N'Quảng Trị', N'Tỉnh', N'QUANGTRI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'46', N'Thừa Thiên Huế', N'Tỉnh', N'THUATHIENHUE')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'48', N'Thành phố Đà Nẵng', N'Thành phố Trung ương', N'DANANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'49', N'Quảng Nam', N'Tỉnh', N'QUANGNAM')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'51', N'Quảng Ngãi', N'Tỉnh', N'QUANGNGAI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'52', N'Bình Định', N'Tỉnh', N'BINHDINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'54', N'Phú Yên', N'Tỉnh', N'PHUYEN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'56', N'Khánh Hòa', N'Tỉnh', N'KHANHHOA')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'58', N'Ninh Thuận', N'Tỉnh', N'NINHTHUAN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'60', N'Bình Thuận', N'Tỉnh', N'BINHTHUAN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'62', N'Kon Tum', N'Tỉnh', N'KONTUM')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'64', N'Gia Lai', N'Tỉnh', N'GIALAI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'66', N'Đắk Lắk', N'Tỉnh', N'DAKLAK')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'67', N'Đắk Nông', N'Tỉnh', N'DAKNONG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'68', N'Lâm Đồng', N'Tỉnh', N'LAMDONG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'70', N'Bình Phước', N'Tỉnh', N'BINHPHUOC')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'72', N'Tây Ninh', N'Tỉnh', N'TAYNINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'74', N'Bình Dương', N'Tỉnh', N'BINHDUONG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'75', N'Đồng Nai', N'Tỉnh', N'DONGNAI')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'77', N'Bà Rịa - Vũng Tàu', N'Tỉnh', N'BARIAVUNGTAU')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'79', N'Thành phố Hồ Chí Minh', N'Thành phố Trung ương', N'HOCHIMINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'80', N'Long An', N'Tỉnh', N'LONGAN')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'82', N'Tiền Giang', N'Tỉnh', N'TIENGIANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'83', N'Bến Tre', N'Tỉnh', N'BENTRE')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'84', N'Trà Vinh', N'Tỉnh', N'TRAVINH')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'86', N'Vĩnh Long', N'Tỉnh', N'VINHLONG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'87', N'Đồng Tháp', N'Tỉnh', N'DONGTHAP')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'89', N'An Giang', N'Tỉnh', N'ANGIANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'91', N'Kiên Giang', N'Tỉnh', N'KIENGIANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'92', N'Thành phố Cần Thơ', N'Thành phố Trung ương', N'CANTHO')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'93', N'Hậu Giang', N'Tỉnh', N'HAUGIANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'94', N'Sóc Trăng', N'Tỉnh', N'SOCTRANG')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'95', N'Bạc Liêu', N'Tỉnh', N'BACLIEU')
INSERT [dbo].[Tinhthanhpho] ([MaTP], [Name], [Type], [Slug]) VALUES (N'96', N'Cà Mau', N'Tỉnh', N'CAMAU')
ALTER TABLE [dbo].[tb_District]  WITH CHECK ADD  CONSTRAINT [FK_District_Province] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[tb_Province] ([Id])
GO
ALTER TABLE [dbo].[tb_District] CHECK CONSTRAINT [FK_District_Province]
GO
ALTER TABLE [dbo].[tb_Province]  WITH CHECK ADD  CONSTRAINT [FK_Province_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[tb_Country] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_Province] CHECK CONSTRAINT [FK_Province_Country]
GO
ALTER TABLE [dbo].[tb_Ward]  WITH CHECK ADD  CONSTRAINT [FK_Ward_District] FOREIGN KEY([DistrictID])
REFERENCES [dbo].[tb_District] ([Id])
GO
ALTER TABLE [dbo].[tb_Ward] CHECK CONSTRAINT [FK_Ward_District]
GO
/****** Object:  StoredProcedure [dbo].[testStored1]    Script Date: 03/12/2024 20:46:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[testStored1]
AS
BEGIN
    SET NOCOUNT ON;
select * from tb_CategoryMain
order by MainCateID desc
END




GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kinh độ, vĩ độ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_District', @level2type=N'COLUMN',@level2name=N'LatiLongTude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1: 3 banner dưới main slider ; 2: 3 BANNER NGANG Ở TRÊN; 3: 5 BANNER ĐỨNG BÊN CỘT PHẢI; 4: 3 BANNER Ở DƯỚI (1 TRÁI 2 PHẢI) ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_HomeBanner', @level2type=N'COLUMN',@level2name=N'BannerGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1: Rented; 2:finished; 3: on process' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_Order', @level2type=N'COLUMN',@level2name=N'OrderStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cờ trạng thái cho biết đon hàng có Renew hay không để set return_time cho đúng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_Order', @level2type=N'COLUMN',@level2name=N'UpdatingStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'lần cập nhật (ola62n 1, lần 2,..)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_OrderTrackingUpdate', @level2type=N'COLUMN',@level2name=N'OrderTrackingUpdateID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ngày trả SP mới' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_OrderTrackingUpdate', @level2type=N'COLUMN',@level2name=N'ReturnDate'
GO
USE [master]
GO
ALTER DATABASE [hirent] SET  READ_WRITE 
GO
