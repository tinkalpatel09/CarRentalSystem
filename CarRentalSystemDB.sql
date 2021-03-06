USE [CarRentalSystemDB]
GO
/****** Object:  Table [dbo].[BillingDetails]    Script Date: 2020-04-10 7:42:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillingDetails](
	[Billid] [int] IDENTITY(1,1) NOT NULL,
	[BillDate] [date] NOT NULL,
	[TotalAmount] [float] NOT NULL,
	[BookingId] [int] NOT NULL,
	[Customer_Id] [int] NOT NULL,
 CONSTRAINT [PK_BillingDetails] PRIMARY KEY CLUSTERED 
(
	[Billid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingDetails]    Script Date: 2020-04-10 7:42:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingDetails](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[Prize] [float] NOT NULL,
	[PickupLoc] [nvarchar](50) NOT NULL,
	[CarId] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Billid] [int] NOT NULL,
 CONSTRAINT [PK_BookingDetails] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 2020-04-10 7:42:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[CarId] [int] IDENTITY(1,1) NOT NULL,
	[CarType] [nvarchar](50) NOT NULL,
	[CarModel] [nvarchar](50) NOT NULL,
	[CarBrand] [nvarchar](50) NOT NULL,
	[prize] [float] NOT NULL,
	[Available] [varchar](50) NOT NULL,
	[ImagePath] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED 
(
	[CarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2020-04-10 7:42:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Phonenumber] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocationDetails]    Script Date: 2020-04-10 7:42:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationDetails](
	[Loc_id] [int] NOT NULL,
	[LocationName] [nvarchar](50) NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[ZipCode] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LocationDetails] PRIMARY KEY CLUSTERED 
(
	[Loc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BillingDetails] ON 

INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (1, CAST(N'2020-04-07' AS Date), 300, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (2, CAST(N'2020-04-07' AS Date), 0, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (3, CAST(N'2020-04-07' AS Date), 0, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (4, CAST(N'2020-04-08' AS Date), 0, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (5, CAST(N'2020-04-08' AS Date), 0, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (6, CAST(N'2020-04-08' AS Date), 0, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (7, CAST(N'2020-04-10' AS Date), 0, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (8, CAST(N'2020-04-10' AS Date), 0, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (9, CAST(N'2020-04-10' AS Date), 0, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (10, CAST(N'2020-04-10' AS Date), 0, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (11, CAST(N'2020-04-10' AS Date), 0, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (12, CAST(N'2020-04-10' AS Date), 0, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (13, CAST(N'2020-04-10' AS Date), 0, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (14, CAST(N'2020-04-10' AS Date), 0, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (15, CAST(N'2020-04-10' AS Date), 0, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (16, CAST(N'2020-04-10' AS Date), 0, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (17, CAST(N'2020-04-10' AS Date), 0, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (18, CAST(N'2020-04-10' AS Date), 0, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (19, CAST(N'2020-04-10' AS Date), 0, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (20, CAST(N'2020-04-10' AS Date), 0, 0, 1)
INSERT [dbo].[BillingDetails] ([Billid], [BillDate], [TotalAmount], [BookingId], [Customer_Id]) VALUES (21, CAST(N'2020-04-10' AS Date), 0, 0, 1)
SET IDENTITY_INSERT [dbo].[BillingDetails] OFF
SET IDENTITY_INSERT [dbo].[BookingDetails] ON 

INSERT [dbo].[BookingDetails] ([BookingId], [Prize], [PickupLoc], [CarId], [StartDate], [EndDate], [Billid]) VALUES (1, 300, N'saint marc', 2, CAST(N'2020-04-01T00:00:00.000' AS DateTime), CAST(N'2020-04-07T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[BookingDetails] ([BookingId], [Prize], [PickupLoc], [CarId], [StartDate], [EndDate], [Billid]) VALUES (2, 300, N'saint marc', 2, CAST(N'2020-04-01T00:00:00.000' AS DateTime), CAST(N'2020-04-07T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[BookingDetails] ([BookingId], [Prize], [PickupLoc], [CarId], [StartDate], [EndDate], [Billid]) VALUES (3, 300, N'saint marc', 2, CAST(N'2020-04-01T00:00:00.000' AS DateTime), CAST(N'2020-04-07T00:00:00.000' AS DateTime), 13)
INSERT [dbo].[BookingDetails] ([BookingId], [Prize], [PickupLoc], [CarId], [StartDate], [EndDate], [Billid]) VALUES (4, 300, N'saint marc', 2, CAST(N'2020-04-01T00:00:00.000' AS DateTime), CAST(N'2020-04-07T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[BookingDetails] ([BookingId], [Prize], [PickupLoc], [CarId], [StartDate], [EndDate], [Billid]) VALUES (5, 280, N'saint marc', 1, CAST(N'2020-04-17T00:00:00.000' AS DateTime), CAST(N'2020-04-24T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[BookingDetails] ([BookingId], [Prize], [PickupLoc], [CarId], [StartDate], [EndDate], [Billid]) VALUES (6, 300, N'saint marc', 2, CAST(N'2020-04-01T00:00:00.000' AS DateTime), CAST(N'2020-04-07T00:00:00.000' AS DateTime), 16)
INSERT [dbo].[BookingDetails] ([BookingId], [Prize], [PickupLoc], [CarId], [StartDate], [EndDate], [Billid]) VALUES (7, 300, N'saint marc', 2, CAST(N'2020-04-01T00:00:00.000' AS DateTime), CAST(N'2020-04-07T00:00:00.000' AS DateTime), 17)
INSERT [dbo].[BookingDetails] ([BookingId], [Prize], [PickupLoc], [CarId], [StartDate], [EndDate], [Billid]) VALUES (8, 300, N'saint marc', 2, CAST(N'2020-04-01T00:00:00.000' AS DateTime), CAST(N'2020-04-07T00:00:00.000' AS DateTime), 18)
INSERT [dbo].[BookingDetails] ([BookingId], [Prize], [PickupLoc], [CarId], [StartDate], [EndDate], [Billid]) VALUES (9, 300, N'saint marc', 2, CAST(N'2020-04-01T00:00:00.000' AS DateTime), CAST(N'2020-04-07T00:00:00.000' AS DateTime), 19)
INSERT [dbo].[BookingDetails] ([BookingId], [Prize], [PickupLoc], [CarId], [StartDate], [EndDate], [Billid]) VALUES (10, 50, N'saint marc', 2, CAST(N'2020-04-16T00:00:00.000' AS DateTime), CAST(N'2020-04-17T00:00:00.000' AS DateTime), 20)
INSERT [dbo].[BookingDetails] ([BookingId], [Prize], [PickupLoc], [CarId], [StartDate], [EndDate], [Billid]) VALUES (11, 300, N'saint marc', 2, CAST(N'2020-04-01T00:00:00.000' AS DateTime), CAST(N'2020-04-07T00:00:00.000' AS DateTime), 21)
SET IDENTITY_INSERT [dbo].[BookingDetails] OFF
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([CarId], [CarType], [CarModel], [CarBrand], [prize], [Available], [ImagePath]) VALUES (1, N'Economy Car', N'Mirage or Similar', N'Mitsubishi', 40, N'yes', N'~/Content/upload/1.png')
INSERT [dbo].[Cars] ([CarId], [CarType], [CarModel], [CarBrand], [prize], [Available], [ImagePath]) VALUES (2, N'Compact Car', N'Nissan Versa or Similar', N'Nissan', 50, N'yes', N'~/Content/upload/2.png')
INSERT [dbo].[Cars] ([CarId], [CarType], [CarModel], [CarBrand], [prize], [Available], [ImagePath]) VALUES (3, N'Intermediate Car', N'Hyundai Elantra or Similar', N'Hyundai', 60, N'yes', N'~/Content/upload/3.png')
INSERT [dbo].[Cars] ([CarId], [CarType], [CarModel], [CarBrand], [prize], [Available], [ImagePath]) VALUES (4, N'Standard Car', N'Volkswagaen Jetta or Similar', N'Volkswagaen ', 70, N'yes', N'~/Content/upload/9634802034.png')
INSERT [dbo].[Cars] ([CarId], [CarType], [CarModel], [CarBrand], [prize], [Available], [ImagePath]) VALUES (5, N'Fullsize Car', N'Ford Fusion or Similar', N'Ford', 80, N'yes', N'~/Content/upload/19931392275.png')
INSERT [dbo].[Cars] ([CarId], [CarType], [CarModel], [CarBrand], [prize], [Available], [ImagePath]) VALUES (6, N'Convertible', N'Ford Mustang or Similar', N'Ford', 100, N'yes', N'~/Content/upload/20546622066.png')
INSERT [dbo].[Cars] ([CarId], [CarType], [CarModel], [CarBrand], [prize], [Available], [ImagePath]) VALUES (7, N'Sports Car', N'Dodge Challenger or Similar', N'Dodge', 110, N'yes', N'~/Content/upload/1374398767.png')
INSERT [dbo].[Cars] ([CarId], [CarType], [CarModel], [CarBrand], [prize], [Available], [ImagePath]) VALUES (8, N'Premium Car ', N'Chryslar 300s or Similar', N'Chrysler', 100, N'yes', N'~/Content/upload/18192453408.png')
INSERT [dbo].[Cars] ([CarId], [CarType], [CarModel], [CarBrand], [prize], [Available], [ImagePath]) VALUES (9, N'Luxury Car', N'Cadillac xts or Similar', N'Cadillac ', 130, N'yes', N'~/Content/upload/13471766539.png')
INSERT [dbo].[Cars] ([CarId], [CarType], [CarModel], [CarBrand], [prize], [Available], [ImagePath]) VALUES (10, N'Electric Car', N'Tesla Model S or Similar', N'Tesla', 150, N'yes', N'~/Content/upload/137980137410.png')
INSERT [dbo].[Cars] ([CarId], [CarType], [CarModel], [CarBrand], [prize], [Available], [ImagePath]) VALUES (11, N'Compact SUV', N'Ford Eco or Similar', N'Ford', 70, N'yes', N'~/Content/upload/41992396211.png')
INSERT [dbo].[Cars] ([CarId], [CarType], [CarModel], [CarBrand], [prize], [Available], [ImagePath]) VALUES (12, N'Intermediate SUV', N'Toyota RAV4 or similar', N'Toyota', 85, N'yes', N'~/Content/upload/40337771512.png')
INSERT [dbo].[Cars] ([CarId], [CarType], [CarModel], [CarBrand], [prize], [Available], [ImagePath]) VALUES (13, N'Standard SUV', N'Ford Edge or Similar', N'Ford Edge', 95, N'yes', N'~/Content/upload/38505118813.png')
INSERT [dbo].[Cars] ([CarId], [CarType], [CarModel], [CarBrand], [prize], [Available], [ImagePath]) VALUES (14, N'Fullsize SUV', N'Chevrolet tahoe or similar', N'Chevrolet', 110, N'yes', N'~/Content/upload/153712299614.png')
INSERT [dbo].[Cars] ([CarId], [CarType], [CarModel], [CarBrand], [prize], [Available], [ImagePath]) VALUES (15, N'Luxury SUV', N'Infiniti QX80 or Similar', N'Infiniti', 150, N'yes', N'~/Content/upload/23018425715.png')
INSERT [dbo].[Cars] ([CarId], [CarType], [CarModel], [CarBrand], [prize], [Available], [ImagePath]) VALUES (16, N'Premium SUV ', N'chevy suburban or Similar', N'chevy ', 140, N'yes', N'~/Content/upload/59547934016.png')
INSERT [dbo].[Cars] ([CarId], [CarType], [CarModel], [CarBrand], [prize], [Available], [ImagePath]) VALUES (17, N'Jeep 2 Door', N'Jeep wrangler or Similar', N'Jeep', 120, N'yes', N'~/Content/upload/33365793417.png')
INSERT [dbo].[Cars] ([CarId], [CarType], [CarModel], [CarBrand], [prize], [Available], [ImagePath]) VALUES (18, N'Jeep 4 Door', N'Jeep Unlimited or similar', N'Jeep', 140, N'yes', N'~/Content/upload/115061744718.png')
INSERT [dbo].[Cars] ([CarId], [CarType], [CarModel], [CarBrand], [prize], [Available], [ImagePath]) VALUES (19, N'Elite SUV ', N'Audi Q3 or Similar', N'Audi', 160, N'yes', N'~/Content/upload/184551808219.png')
SET IDENTITY_INSERT [dbo].[Cars] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Customer_Id], [FirstName], [LastName], [Username], [Phonenumber], [Email], [Address], [Password]) VALUES (1, N'Tinkal', N'patel', N'tinkal123', 123456789, N'Tinkalpatel@gmail.com', N'2125rue', N'12345')
INSERT [dbo].[Customer] ([Customer_Id], [FirstName], [LastName], [Username], [Phonenumber], [Email], [Address], [Password]) VALUES (2, N'alex', N'verko', N'alex1', 123456789, N'alex@gmail.com', N'2000cathrine', N'123')
INSERT [dbo].[Customer] ([Customer_Id], [FirstName], [LastName], [Username], [Phonenumber], [Email], [Address], [Password]) VALUES (3, N'Anthony', N'disoxa', N'anthony123', 123456789, N'Anthony@gmail.com', N'2322loreant', N'antho123')
INSERT [dbo].[Customer] ([Customer_Id], [FirstName], [LastName], [Username], [Phonenumber], [Email], [Address], [Password]) VALUES (4, N'Dinkar', N'Taneja', N'dink123', 438728333, N'dinkar@gmail.com', N'1200 stanley', N'asdfg1234')
INSERT [dbo].[Customer] ([Customer_Id], [FirstName], [LastName], [Username], [Phonenumber], [Email], [Address], [Password]) VALUES (5, N'Dinkar', N'Taneja', N'dink123', 1234567890, N'dinkar@gmail.com', N'2000 marc', N'12345')
INSERT [dbo].[Customer] ([Customer_Id], [FirstName], [LastName], [Username], [Phonenumber], [Email], [Address], [Password]) VALUES (6, N'rahil', N'patel', N'rahil123', 1234564321, N'rahil123@gmail.com', N'1232 derdr', N'12345')
INSERT [dbo].[Customer] ([Customer_Id], [FirstName], [LastName], [Username], [Phonenumber], [Email], [Address], [Password]) VALUES (7, N'romio', N'dosoza', N'romio123', 1234567890, N'romio@gmail.com', N'1200 stanley', N'123456')
SET IDENTITY_INSERT [dbo].[Customer] OFF
ALTER TABLE [dbo].[BillingDetails]  WITH CHECK ADD  CONSTRAINT [FK_BillingDetails_Customer] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[BillingDetails] CHECK CONSTRAINT [FK_BillingDetails_Customer]
GO
ALTER TABLE [dbo].[BookingDetails]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetails_BillingDetails] FOREIGN KEY([Billid])
REFERENCES [dbo].[BillingDetails] ([Billid])
GO
ALTER TABLE [dbo].[BookingDetails] CHECK CONSTRAINT [FK_BookingDetails_BillingDetails]
GO
ALTER TABLE [dbo].[BookingDetails]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetails_Cars] FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([CarId])
GO
ALTER TABLE [dbo].[BookingDetails] CHECK CONSTRAINT [FK_BookingDetails_Cars]
GO
