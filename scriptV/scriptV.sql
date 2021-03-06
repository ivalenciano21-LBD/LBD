USE [Valencio]
GO
/****** Object:  Table [dbo].[Utiles]    Script Date: 08/09/2018 12:36:57 a. m. ******/
DROP TABLE [dbo].[Utiles]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 08/09/2018 12:36:57 a. m. ******/
DROP TABLE [dbo].[Personas]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 08/09/2018 12:36:57 a. m. ******/
DROP TABLE [dbo].[Paises]
GO
/****** Object:  Table [dbo].[Matrimonio]    Script Date: 08/09/2018 12:36:57 a. m. ******/
DROP TABLE [dbo].[Matrimonio]
GO
/****** Object:  Table [dbo].[Mascotas]    Script Date: 08/09/2018 12:36:57 a. m. ******/
DROP TABLE [dbo].[Mascotas]
GO
/****** Object:  Table [dbo].[Mascotas]    Script Date: 08/09/2018 12:36:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mascotas](
	[Mascota] [varchar](50) NOT NULL,
	[Cantidad] [int] NULL,
	[Imagen] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matrimonio]    Script Date: 08/09/2018 12:36:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matrimonio](
	[Nombre] [varchar](50) NULL,
	[Casada(o)] [bit] NULL,
	[Fecha_Matrimonio] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 08/09/2018 12:36:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[Pais] [nchar](10) NOT NULL,
	[Poblacion] [int] NULL,
	[Bandera] [image] NULL,
	[Localizacion] [float] NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[Pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 08/09/2018 12:36:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[Nombre] [varchar](50) NOT NULL,
	[Edad] [int] NULL,
	[Ingreso] [money] NULL,
 CONSTRAINT [PK_Personas] PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utiles]    Script Date: 08/09/2018 12:36:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utiles](
	[Utiles] [varchar](50) NOT NULL,
	[Cantidad] [int] NULL,
	[Valor Individual] [money] NOT NULL,
	[Proveedor] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
