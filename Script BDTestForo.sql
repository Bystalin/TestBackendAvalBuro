USE [BDTestForo]
GO
/****** Object:  Table [dbo].[tbcomentario]    Script Date: 12/3/2023 08:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbcomentario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[comentario] [nvarchar](100) NOT NULL,
	[puntos] [int] NOT NULL,
	[cant_respuestas] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[idcomentario] [int] NULL,
	[avatar] [nvarchar](500) NULL,
 CONSTRAINT [PK_tbcomentario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbcomentario] ON 

INSERT [dbo].[tbcomentario] ([id], [nombre], [comentario], [puntos], [cant_respuestas], [fecha], [idcomentario], [avatar]) VALUES (1, N'Byron Suarez', N'Que es y para que sirve Java?', 2, 0, CAST(N'2023-03-12T14:59:44.467' AS DateTime), 0, N'')
INSERT [dbo].[tbcomentario] ([id], [nombre], [comentario], [puntos], [cant_respuestas], [fecha], [idcomentario], [avatar]) VALUES (3, N'Byron Suarez', N'Que es SQL?', 1, 0, CAST(N'2022-03-12T00:00:00.000' AS DateTime), 0, N'')
INSERT [dbo].[tbcomentario] ([id], [nombre], [comentario], [puntos], [cant_respuestas], [fecha], [idcomentario], [avatar]) VALUES (4, N'Byron Suarez', N'Que es el front-end?', 1, 2, CAST(N'2023-03-12T00:00:00.000' AS DateTime), 0, N'')
INSERT [dbo].[tbcomentario] ([id], [nombre], [comentario], [puntos], [cant_respuestas], [fecha], [idcomentario], [avatar]) VALUES (5, N'Luis Guzman', N'es la parte que el usuario puede ver', 5, 0, CAST(N'2023-03-12T00:00:00.000' AS DateTime), 4, N'https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png')
INSERT [dbo].[tbcomentario] ([id], [nombre], [comentario], [puntos], [cant_respuestas], [fecha], [idcomentario], [avatar]) VALUES (13, N'Carla Jaramillo', N'Que es el Back-end?', 1, 0, CAST(N'2023-03-12T15:21:46.750' AS DateTime), 0, N'')
INSERT [dbo].[tbcomentario] ([id], [nombre], [comentario], [puntos], [cant_respuestas], [fecha], [idcomentario], [avatar]) VALUES (22, N'Stalin Guzman', N'Los roles de un programador full stack?', 1, 0, CAST(N'2023-03-12T00:00:00.000' AS DateTime), 0, N'')
INSERT [dbo].[tbcomentario] ([id], [nombre], [comentario], [puntos], [cant_respuestas], [fecha], [idcomentario], [avatar]) VALUES (23, N'Stalin Guzman', N'Los roles de un programador junior?', 1, 0, CAST(N'2023-01-12T04:01:48.000' AS DateTime), 0, N'')
INSERT [dbo].[tbcomentario] ([id], [nombre], [comentario], [puntos], [cant_respuestas], [fecha], [idcomentario], [avatar]) VALUES (24, N'Stalin Guzman', N'Que es PosgreSQL?', 1, 0, CAST(N'2023-03-12T04:03:11.000' AS DateTime), 0, N'')
INSERT [dbo].[tbcomentario] ([id], [nombre], [comentario], [puntos], [cant_respuestas], [fecha], [idcomentario], [avatar]) VALUES (39, N'Pedro', N'El frontend es la parte del desarrollo web que se dedica a la parte frontal de un sitio web', 1, 0, CAST(N'2023-03-12T00:00:00.000' AS DateTime), 4, N'https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png')
INSERT [dbo].[tbcomentario] ([id], [nombre], [comentario], [puntos], [cant_respuestas], [fecha], [idcomentario], [avatar]) VALUES (40, N'Luis', N'El frontend es la parte del desarrollo web que se dedica a la parte frontal de un sitio web', 5, 0, CAST(N'2023-03-12T00:00:00.000' AS DateTime), 13, N'')
INSERT [dbo].[tbcomentario] ([id], [nombre], [comentario], [puntos], [cant_respuestas], [fecha], [idcomentario], [avatar]) VALUES (41, N'Victoria', N'Un tipo de lenguaje de programación que te permite manipular y descargar datos de una base de datos.', 4, 0, CAST(N'2023-03-12T00:00:00.000' AS DateTime), 3, N'https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png')
SET IDENTITY_INSERT [dbo].[tbcomentario] OFF
GO
