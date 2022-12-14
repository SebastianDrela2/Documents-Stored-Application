USE [master]
GO
/****** Object:  Table [dbo].[operations]    Script Date: 21.10.2022 14:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[operations](
	[ProductName] [varchar](50) NULL,
	[Ammount] [int] NULL,
	[NetPrice] [varchar](50) NULL,
	[GrossPrice] [varchar](50) NULL,
	[client_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[people]    Script Date: 21.10.2022 14:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[people](
	[client_id] [int] NOT NULL,
	[operation_date] [varchar](50) NULL,
	[DocumentName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[operations] ([ProductName], [Ammount], [NetPrice], [GrossPrice], [client_id]) VALUES (N'ProductName1', 20, N'50zl', N'80zl', 84734859)
INSERT [dbo].[operations] ([ProductName], [Ammount], [NetPrice], [GrossPrice], [client_id]) VALUES (N'ProductName1', 30, N'40zl', N'100zl', 84737234)
INSERT [dbo].[operations] ([ProductName], [Ammount], [NetPrice], [GrossPrice], [client_id]) VALUES (N'ProductName2', 50, N'70zl', N'120zl', 84737234)
INSERT [dbo].[operations] ([ProductName], [Ammount], [NetPrice], [GrossPrice], [client_id]) VALUES (N'ProductName7', 76, N'130zl', N'180zl', 84737234)
INSERT [dbo].[operations] ([ProductName], [Ammount], [NetPrice], [GrossPrice], [client_id]) VALUES (N'ProductName5', 400, N'1000zl', N'1500zl', 84737234)
INSERT [dbo].[operations] ([ProductName], [Ammount], [NetPrice], [GrossPrice], [client_id]) VALUES (N'Product1', 120, N'180zl', N'200zl', 45643245)
INSERT [dbo].[operations] ([ProductName], [Ammount], [NetPrice], [GrossPrice], [client_id]) VALUES (N'ProductName2', 200, N'180zl', N'300zl', 45643245)
INSERT [dbo].[operations] ([ProductName], [Ammount], [NetPrice], [GrossPrice], [client_id]) VALUES (N'ProductName1', 260, N'280zl', N'340zl', 37374783)
INSERT [dbo].[operations] ([ProductName], [Ammount], [NetPrice], [GrossPrice], [client_id]) VALUES (N'ProductName2', 400, N'600zl', N'800zl', 37374783)
INSERT [dbo].[operations] ([ProductName], [Ammount], [NetPrice], [GrossPrice], [client_id]) VALUES (N'ProductName3', 500, N'1200zl', N'1600zl', 37374783)
GO
INSERT [dbo].[people] ([client_id], [operation_date], [DocumentName]) VALUES (37374783, N'20.12.2006', N'Wydanie Zewnetrzne')
INSERT [dbo].[people] ([client_id], [operation_date], [DocumentName]) VALUES (45643245, N'19.11.1995', N'Wydanie Zewnetrzne')
INSERT [dbo].[people] ([client_id], [operation_date], [DocumentName]) VALUES (74738847, N'10.05.2003', N'Wydanie Zewnetrzne')
INSERT [dbo].[people] ([client_id], [operation_date], [DocumentName]) VALUES (84734859, N'20.10.2022', N'Wydanie Zewnetrzne')
INSERT [dbo].[people] ([client_id], [operation_date], [DocumentName]) VALUES (84737234, N'19.20.2000', N'Wydanie Zewnetrzne')
GO
ALTER TABLE [dbo].[operations]  WITH CHECK ADD FOREIGN KEY([client_id])
REFERENCES [dbo].[people] ([client_id])
GO
