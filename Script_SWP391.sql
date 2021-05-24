USE [master]
GO
/****** Object:  Database [OnlineShoppingSystem]    Script Date: 5/24/2021 9:08:08 PM ******/
CREATE DATABASE [OnlineShoppingSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OnlineShoppingSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\OnlineShoppingSystem.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'OnlineShoppingSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\OnlineShoppingSystem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [OnlineShoppingSystem] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OnlineShoppingSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OnlineShoppingSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OnlineShoppingSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OnlineShoppingSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OnlineShoppingSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OnlineShoppingSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OnlineShoppingSystem] SET  MULTI_USER 
GO
ALTER DATABASE [OnlineShoppingSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OnlineShoppingSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OnlineShoppingSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [OnlineShoppingSystem] SET DELAYED_DURABILITY = DISABLED 
GO
USE [OnlineShoppingSystem]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 5/24/2021 9:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[FeedBackID] [int] NOT NULL,
	[Name] [nchar](100) NOT NULL,
	[FeedBack Content] [nchar](100) NOT NULL,
	[Email] [nchar](100) NOT NULL,
	[Phone] [nchar](10) NOT NULL,
	[Status] [int] NOT NULL,
	[Rated Star] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[FeedBackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FeedBackAttachedImage]    Script Date: 5/24/2021 9:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBackAttachedImage](
	[ImageID] [int] NOT NULL,
	[Name] [nchar](100) NOT NULL,
 CONSTRAINT [PK_FeedBackAttachedImage] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FeedBackImage]    Script Date: 5/24/2021 9:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBackImage](
	[FeedBackID] [int] NOT NULL,
	[ImageID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 5/24/2021 9:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[OrderedDate] [date] NOT NULL,
	[SaleMemberID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ReceiverName] [nchar](100) NOT NULL,
	[ReceiverGender] [nchar](10) NOT NULL,
	[ReceiverAddress] [nchar](100) NOT NULL,
	[ReceiverEmail] [nchar](100) NOT NULL,
	[ReceiverPhone] [nchar](10) NOT NULL,
	[Note] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 5/24/2021 9:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post]    Script Date: 5/24/2021 9:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[PostID] [int] NOT NULL,
	[Title] [nchar](100) NOT NULL,
	[Thumbnail] [nchar](100) NOT NULL,
	[BriefInfo] [nchar](100) NOT NULL,
	[Author] [nchar](50) NOT NULL,
	[Description] [nchar](100) NOT NULL,
	[Featured] [nchar](100) NOT NULL,
	[Status] [int] NOT NULL,
	[PostCategoryID] [int] NOT NULL,
	[DateCreated] [date] NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PostCategory]    Script Date: 5/24/2021 9:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostCategory](
	[PostCategoryID] [int] NOT NULL,
	[Name] [nchar](100) NOT NULL,
 CONSTRAINT [PK_PostCategory] PRIMARY KEY CLUSTERED 
(
	[PostCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/24/2021 9:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] NOT NULL,
	[Title] [nchar](100) NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[Thumbnail] [nchar](100) NOT NULL,
	[BriefInfo] [nchar](100) NOT NULL,
	[Description] [nchar](100) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ListPrice] [float] NOT NULL,
	[SalePrice] [float] NOT NULL,
	[Featured] [nchar](100) NOT NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [date] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductAttachedImage]    Script Date: 5/24/2021 9:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAttachedImage](
	[ImageID] [int] NOT NULL,
	[Name] [nchar](100) NOT NULL,
 CONSTRAINT [PK_ProductAttachedImage] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 5/24/2021 9:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductCategoryID] [int] NOT NULL,
	[Name] [nchar](100) NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 5/24/2021 9:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[ProductID] [int] NOT NULL,
	[ImageID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Slider]    Script Date: 5/24/2021 9:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[SliderID] [int] NOT NULL,
	[Title] [nchar](100) NOT NULL,
	[Description] [nchar](100) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[SliderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SliderContent]    Script Date: 5/24/2021 9:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SliderContent](
	[SliderID] [int] NULL,
	[ProductID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 5/24/2021 9:08:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] NOT NULL,
	[Gender] [nchar](10) NOT NULL,
	[UserName] [nchar](100) NOT NULL,
	[Address] [nchar](100) NOT NULL,
	[Email] [nchar](100) NOT NULL,
	[Phone] [nchar](20) NOT NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [date] NOT NULL,
	[Avatar] [nchar](100) NOT NULL,
	[Role] [int] NOT NULL,
	[Password] [nchar](100) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_User]    Script Date: 5/24/2021 9:08:08 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_User] ON [dbo].[User]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_FeedBack_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[FeedBack] CHECK CONSTRAINT [FK_FeedBack_Product]
GO
ALTER TABLE [dbo].[FeedBackImage]  WITH CHECK ADD  CONSTRAINT [FK_FeedBackImage_FeedBack] FOREIGN KEY([FeedBackID])
REFERENCES [dbo].[FeedBack] ([FeedBackID])
GO
ALTER TABLE [dbo].[FeedBackImage] CHECK CONSTRAINT [FK_FeedBackImage_FeedBack]
GO
ALTER TABLE [dbo].[FeedBackImage]  WITH CHECK ADD  CONSTRAINT [FK_FeedBackImage_FeedBackAttachedImage] FOREIGN KEY([ImageID])
REFERENCES [dbo].[FeedBackAttachedImage] ([ImageID])
GO
ALTER TABLE [dbo].[FeedBackImage] CHECK CONSTRAINT [FK_FeedBackImage_FeedBackAttachedImage]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([SaleMemberID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User1] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User1]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_PostCategory] FOREIGN KEY([PostCategoryID])
REFERENCES [dbo].[PostCategory] ([PostCategoryID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_PostCategory]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[ProductCategory] ([ProductCategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD  CONSTRAINT [FK_ProductImage_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductImage] CHECK CONSTRAINT [FK_ProductImage_Product]
GO
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD  CONSTRAINT [FK_ProductImage_ProductAttachedImage] FOREIGN KEY([ImageID])
REFERENCES [dbo].[ProductAttachedImage] ([ImageID])
GO
ALTER TABLE [dbo].[ProductImage] CHECK CONSTRAINT [FK_ProductImage_ProductAttachedImage]
GO
ALTER TABLE [dbo].[SliderContent]  WITH CHECK ADD  CONSTRAINT [FK_SliderContent_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[SliderContent] CHECK CONSTRAINT [FK_SliderContent_Product]
GO
ALTER TABLE [dbo].[SliderContent]  WITH CHECK ADD  CONSTRAINT [FK_SliderContent_Slider] FOREIGN KEY([SliderID])
REFERENCES [dbo].[Slider] ([SliderID])
GO
ALTER TABLE [dbo].[SliderContent] CHECK CONSTRAINT [FK_SliderContent_Slider]
GO
USE [master]
GO
ALTER DATABASE [OnlineShoppingSystem] SET  READ_WRITE 
GO
