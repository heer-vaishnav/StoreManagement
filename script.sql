USE [master]
GO
/****** Object:  Database [StoreManagement]    Script Date: 26-03-2020 11:32:02 ******/
CREATE DATABASE [StoreManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StoreManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\StoreManagement.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'StoreManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\StoreManagement_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [StoreManagement] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StoreManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StoreManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StoreManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StoreManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StoreManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StoreManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [StoreManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StoreManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StoreManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StoreManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StoreManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StoreManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StoreManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StoreManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StoreManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StoreManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StoreManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StoreManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StoreManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StoreManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StoreManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StoreManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StoreManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StoreManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StoreManagement] SET  MULTI_USER 
GO
ALTER DATABASE [StoreManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StoreManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StoreManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StoreManagement] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [StoreManagement] SET DELAYED_DURABILITY = DISABLED 
GO
USE [StoreManagement]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 26-03-2020 11:32:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carts](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
	[ProductPrice] [int] NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 26-03-2020 11:32:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductDetails](
	[ProductDetailId] [int] IDENTITY(1,1) NOT NULL,
	[ProductStock] [int] NOT NULL,
	[ProductDiscount] [int] NOT NULL,
	[ProductDescription] [varchar](50) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ProductDetails] PRIMARY KEY CLUSTERED 
(
	[ProductDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 26-03-2020 11:32:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
	[ProductPrice] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 26-03-2020 11:32:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [int] NOT NULL,
	[UserMobileNumber] [int] NOT NULL,
	[UserAddress] [varchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ProductDetails] ON 

INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductStock], [ProductDiscount], [ProductDescription], [ProductId]) VALUES (1, 100, 10, N'200ml', 1)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductStock], [ProductDiscount], [ProductDescription], [ProductId]) VALUES (2, 150, 5, N'50gm', 2)
SET IDENTITY_INSERT [dbo].[ProductDetails] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [UserId]) VALUES (1, N'Shampoo', 250, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [UserId]) VALUES (2, N'Wafers', 20, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [UserId]) VALUES (3, N'Shampoo', 250, 2)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [UserId]) VALUES (4, N'Chocolate', 10, 2)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [UserName], [Password], [UserMobileNumber], [UserAddress]) VALUES (1, N'Heer', 123, 987654321, N'Abc')
INSERT [dbo].[Users] ([UserId], [UserName], [Password], [UserMobileNumber], [UserAddress]) VALUES (2, N'Jay', 111, 765432190, N'Xyz')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Index [IX_Carts]    Script Date: 26-03-2020 11:32:04 ******/
ALTER TABLE [dbo].[Carts] ADD  CONSTRAINT [IX_Carts] UNIQUE NONCLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK_ProductDetails_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Users]
GO
USE [master]
GO
ALTER DATABASE [StoreManagement] SET  READ_WRITE 
GO
