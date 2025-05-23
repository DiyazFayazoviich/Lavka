USE [Kvalik_Diyaz]
GO
/****** Object:  User [user01]    Script Date: 19.04.2025 16:04:26 ******/
CREATE USER [user01] FOR LOGIN [user01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Directions]    Script Date: 19.04.2025 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Directions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 19.04.2025 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdServices] [int] NOT NULL,
	[IdUser] [int] NULL,
	[Status] [varchar](50) NULL,
	[EndDateTime] [date] NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 19.04.2025 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 19.04.2025 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[ModificationDate] [date] NULL,
	[IdDirections] [int] NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 19.04.2025 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 19.04.2025 16:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Login] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[IdRoles] [int] NULL,
	[Balance] [decimal](18, 0) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Directions] ON 

INSERT [dbo].[Directions] ([Id], [Name]) VALUES (1, N'Аниме')
INSERT [dbo].[Directions] ([Id], [Name]) VALUES (2, N'Новый год')
INSERT [dbo].[Directions] ([Id], [Name]) VALUES (3, N'Хэллоуин')
INSERT [dbo].[Directions] ([Id], [Name]) VALUES (4, N'Киберпанк')
INSERT [dbo].[Directions] ([Id], [Name]) VALUES (5, N'Нуар')
INSERT [dbo].[Directions] ([Id], [Name]) VALUES (6, N'Стимпанк')
INSERT [dbo].[Directions] ([Id], [Name]) VALUES (7, N'NUL')
INSERT [dbo].[Directions] ([Id], [Name]) VALUES (8, N'Фентези')
INSERT [dbo].[Directions] ([Id], [Name]) VALUES (9, N'Хоррор')
INSERT [dbo].[Directions] ([Id], [Name]) VALUES (10, N'Сказки')
SET IDENTITY_INSERT [dbo].[Directions] OFF
GO
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([Id], [IdServices], [IdUser], [Status], [EndDateTime]) VALUES (1, 10, 1, N'Услуга произведена', CAST(N'2024-04-16' AS Date))
INSERT [dbo].[Posts] ([Id], [IdServices], [IdUser], [Status], [EndDateTime]) VALUES (2, 11, 2, N'Услуга ждет начала', CAST(N'2024-04-20' AS Date))
INSERT [dbo].[Posts] ([Id], [IdServices], [IdUser], [Status], [EndDateTime]) VALUES (3, 12, 3, N'Услуга в процессе', CAST(N'2024-04-19' AS Date))
INSERT [dbo].[Posts] ([Id], [IdServices], [IdUser], [Status], [EndDateTime]) VALUES (4, 13, 1, N'Услуга ждет начала', CAST(N'2024-04-20' AS Date))
INSERT [dbo].[Posts] ([Id], [IdServices], [IdUser], [Status], [EndDateTime]) VALUES (5, 14, 2, N'Услуга ждет начала', CAST(N'2024-04-20' AS Date))
INSERT [dbo].[Posts] ([Id], [IdServices], [IdUser], [Status], [EndDateTime]) VALUES (6, 15, 3, N'Услуга произведена', CAST(N'2024-04-16' AS Date))
INSERT [dbo].[Posts] ([Id], [IdServices], [IdUser], [Status], [EndDateTime]) VALUES (7, 16, 1, N'Услуга в процессе', CAST(N'2024-04-17' AS Date))
INSERT [dbo].[Posts] ([Id], [IdServices], [IdUser], [Status], [EndDateTime]) VALUES (8, 17, 2, N'Услуга в процессе', CAST(N'2024-04-17' AS Date))
INSERT [dbo].[Posts] ([Id], [IdServices], [IdUser], [Status], [EndDateTime]) VALUES (9, 18, 3, N'Услуга в процессе', CAST(N'2024-04-17' AS Date))
INSERT [dbo].[Posts] ([Id], [IdServices], [IdUser], [Status], [EndDateTime]) VALUES (10, 19, 1, N'Услуга ждет начала', CAST(N'2024-05-17' AS Date))
SET IDENTITY_INSERT [dbo].[Posts] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name]) VALUES (1, N'Пользователь')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (2, N'Администратор')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (3, N'Мастер')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (4, N'Модератор')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([Id], [Name], [ModificationDate], [IdDirections]) VALUES (10, N'Профессиональный грим', CAST(N'2024-04-04' AS Date), 1)
INSERT [dbo].[Services] ([Id], [Name], [ModificationDate], [IdDirections]) VALUES (11, N'Мерцающий макияж', CAST(N'2024-04-04' AS Date), 2)
INSERT [dbo].[Services] ([Id], [Name], [ModificationDate], [IdDirections]) VALUES (12, N'Реалистичные раны', CAST(N'2024-04-04' AS Date), 3)
INSERT [dbo].[Services] ([Id], [Name], [ModificationDate], [IdDirections]) VALUES (13, N'Съемный протез', CAST(N'2024-04-04' AS Date), 4)
INSERT [dbo].[Services] ([Id], [Name], [ModificationDate], [IdDirections]) VALUES (14, N'Дымчатые тени', CAST(N'2024-04-04' AS Date), 5)
INSERT [dbo].[Services] ([Id], [Name], [ModificationDate], [IdDirections]) VALUES (15, N'Латунная оправа', CAST(N'2024-04-04' AS Date), 6)
INSERT [dbo].[Services] ([Id], [Name], [ModificationDate], [IdDirections]) VALUES (16, N'Зеленые оттенки', CAST(N'2024-04-04' AS Date), 7)
INSERT [dbo].[Services] ([Id], [Name], [ModificationDate], [IdDirections]) VALUES (17, N'Футуризм', CAST(N'2024-04-04' AS Date), 8)
INSERT [dbo].[Services] ([Id], [Name], [ModificationDate], [IdDirections]) VALUES (18, N'Морщины', CAST(N'2024-04-04' AS Date), 9)
INSERT [dbo].[Services] ([Id], [Name], [ModificationDate], [IdDirections]) VALUES (19, N'Атласные банты', CAST(N'2024-04-04' AS Date), 10)
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Name], [Login], [Password], [IdRoles], [Balance]) VALUES (1, N'Кирилл', N'1', N'1', 1, CAST(1000 AS Decimal(18, 0)))
INSERT [dbo].[User] ([Id], [Name], [Login], [Password], [IdRoles], [Balance]) VALUES (2, N'Дияз', N'2', N'2', 2, CAST(2000 AS Decimal(18, 0)))
INSERT [dbo].[User] ([Id], [Name], [Login], [Password], [IdRoles], [Balance]) VALUES (3, N'Фаниль ', N'3', N'3', 3, CAST(3000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_Services] FOREIGN KEY([IdServices])
REFERENCES [dbo].[Services] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Services]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_User]
GO
ALTER TABLE [dbo].[Services]  WITH CHECK ADD  CONSTRAINT [FK_Services_Directions] FOREIGN KEY([IdDirections])
REFERENCES [dbo].[Directions] ([Id])
GO
ALTER TABLE [dbo].[Services] CHECK CONSTRAINT [FK_Services_Directions]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Roles] FOREIGN KEY([IdRoles])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Roles]
GO
