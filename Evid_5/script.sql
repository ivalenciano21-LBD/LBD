USE [master]
GO
/****** Object:  Database [LND]    Script Date: 28/09/2018 10:30:45 a.m. ******/
CREATE DATABASE [LND]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LND', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\LND.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LND_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\LND_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LND] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LND].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LND] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LND] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LND] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LND] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LND] SET ARITHABORT OFF 
GO
ALTER DATABASE [LND] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LND] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [LND] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LND] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LND] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LND] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LND] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LND] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LND] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LND] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LND] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LND] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LND] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LND] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LND] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LND] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LND] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LND] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LND] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LND] SET  MULTI_USER 
GO
ALTER DATABASE [LND] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LND] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LND] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LND] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [LND]
GO
/****** Object:  Table [dbo].[Calle]    Script Date: 28/09/2018 10:30:46 a.m. ******/
DROP TABLE [dbo].[Anticipo]
GO
/****** Object:  Table [dbo].[Calle]    Script Date: 28/09/2018 10:30:46 a.m. ******/
DROP TABLE [dbo].[Calle]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 28/09/2018 10:30:46 a.m. ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Cotizacion]    Script Date: 28/09/2018 10:30:46 a.m. ******/
DROP TABLE [dbo].[Cotizacion]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 28/09/2018 10:30:46 a.m. ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 28/09/2018 10:30:46 a.m. ******/
DROP TABLE [dbo].[Estado]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 28/09/2018 10:30:46 a.m. ******/
DROP TABLE [dbo].[Municipio]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 28/09/2018 10:30:46 a.m. ******/
DROP TABLE [dbo].[Pago]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 28/09/2018 10:30:46 a.m. ******/
DROP TABLE [dbo].[Producto]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 28/09/2018 10:30:46 a.m. ******/
DROP TABLE [dbo].[Proveedor]
GO
/****** Object:  Table [dbo].[Tipo_Pago]    Script Date: 28/09/2018 10:30:46 a.m. ******/
DROP TABLE [dbo].[Tipo_Pago]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 28/09/2018 10:30:46 a.m. ******/
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[Anticipo]    Script Date: 28/09/2018 10:30:46 a.m. ******/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anticipo](
	[Id] [int] NOT NULL,
	[Id_Tipo_pago] [int] NOT NULL,
	[pago_inicial] [money] NOT NULL,
 CONSTRAINT [PK_Anticipo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
INSERT [dbo].[Anticipo] ([Id], [Id_Tipo_pago], [pago_inicial]) VALUES (1, 20, 1000.0000)
INSERT [dbo].[Anticipo] ([Id], [Id_Tipo_pago], [pago_inicial]) VALUES (2, 30, 1000.0000)
INSERT [dbo].[Anticipo] ([Id], [Id_Tipo_pago], [pago_inicial]) VALUES (3, 40, 1000.0000)
INSERT [dbo].[Anticipo] ([Id], [Id_Tipo_pago], [pago_inicial]) VALUES (4, 50, 1000.0000)
INSERT [dbo].[Anticipo] ([Id], [Id_Tipo_pago], [pago_inicial]) VALUES (5, 60, 1000.0000)
INSERT [dbo].[Anticipo] ([Id], [Id_Tipo_pago], [pago_inicial]) VALUES (6, 70, 1000.0000)

UPDATE [dbo].[Anticipo]
SET [pago_inicial] = 1200.0000
WHERE [Id_Tipo_pago] = 30
GO
/****** Object:  Table [dbo].[Calle]    Script Date: 28/09/2018 10:30:46 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Calle](
	[Id] [int] NOT NULL,
	[Id_municipio] [int] NOT NULL,
	[Calle] [varchar](50) NOT NULL,
	[Numero] [int] NOT NULL,
 CONSTRAINT [PK_Calle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
INSERT [dbo].[Calle] ([Id], [Id_municipio], [Calle], [Numero] VALUES (1, 20, N'platino', 929)
INSERT [dbo].[Calle] ([Id], [Id_municipio], [Calle], [Numero] VALUES (2, 30, N'plata', 933)
INSERT [dbo].[Calle] ([Id], [Id_municipio], [Calle], [Numero] VALUES (3, 40, N'talio', 899)
INSERT [dbo].[Calle] ([Id], [Id_municipio], [Calle], [Numero] VALUES (4, 50, N'magnesio', 901)
INSERT [dbo].[Calle] ([Id], [Id_municipio], [Calle], [Numero] VALUES (5, 60, N'cobalto', 999)
INSERT [dbo].[Calle] ([Id], [Id_municipio], [Calle], [Numero] VALUES (6, 70, N'oceano pacifico', 900)

UPDATE [dbo].[Calle]
SET [Numero] = 888
WHERE [Id_municipio] = 40
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 28/09/2018 10:30:46 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Ap_paterno] [varchar](50) NOT NULL,
	[Ap_materno] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
INSERT [dbo].[Cliente] ([Id], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (1, N'Iván', N'Valencia', N'Comedores')
INSERT [dbo].[Cliente] ([Id], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (2, N'Alejandro', N'Chavez', N'Zuñiga')
INSERT [dbo].[Cliente] ([Id], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (3, N'Pedro', N'Torres', N'Tapia')
INSERT [dbo].[Cliente] ([Id], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (4, N'Ignacio', N'Diaz de León', N'Gonzalez')
INSERT [dbo].[Cliente] ([Id], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (5, N'David', N'Perez', N'Vergara')
INSERT [dbo].[Cliente] ([Id], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (6, N'Jesús', N'Hernandez', N'Castillo')
INSERT [dbo].[Cliente] ([Id], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (7, N'Juan', N'Ibarra', N'Ruiz')
GO

DELETE FROM [dbo].[Cliente]
WHERE [Id] = 5
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cotizacion]    Script Date: 28/09/2018 10:30:46 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cotizacion](
	[Id] [int] NOT NULL,
	[Id_Tipo_pago] [int] NOT NULL,
	[abono_semanal] [money] NOT NULL,
	[fecha_inicio] [smalldatetime] NOT NULL,
	[fecha_limite] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Cotizacion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
INSERT [dbo].[Cotizacion] ([Id], [Id_Tipo_pago], [abono_semanal], [fecha_inicio], [Fecha_limite]) VALUES (1, 20, 500.0000, CAST(0x07CB0000 AS SmallDateTime), CAST(0x07D20000 AS SmallDateTime))
INSERT [dbo].[Cotizacion] ([Id], [Id_Tipo_pago], [abono_semanal], [fecha_inicio], [Fecha_limite]) VALUES (2, 30, 400.0000, CAST(0x07D20000 AS SmallDateTime), CAST(0x07CA0000 AS SmallDateTime))
INSERT [dbo].[Cotizacion] ([Id], [Id_Tipo_pago], [abono_semanal], [fecha_inicio], [Fecha_limite]) VALUES (3, 40, 300.0000, CAST(0x07CA0000 AS SmallDateTime), CAST(0x07C00000 AS SmallDateTime))
INSERT [dbo].[Cotizacion] ([Id], [Id_Tipo_pago], [abono_semanal], [fecha_inicio], [Fecha_limite]) VALUES (4, 50, 600.0000, CAST(0x07C00000 AS SmallDateTime), CAST(0x07C30000 AS SmallDateTime))
INSERT [dbo].[Cotizacion] ([Id], [Id_Tipo_pago], [abono_semanal], [fecha_inicio], [Fecha_limite]) VALUES (5, 60, 800.0000, CAST(0x07C30000 AS SmallDateTime), CAST(0x07CE0000 AS SmallDateTime))
INSERT [dbo].[Cotizacion] ([Id], [Id_Tipo_pago], [abono_semanal], [fecha_inicio], [Fecha_limite]) VALUES (6, 70, 700.0000, CAST(0x07CE0000 AS SmallDateTime), CAST(0x07C20000 AS SmallDateTime))

UPDATE [dbo].[Cotizacion]
SET [abono_semanal] = 550.0000
WHERE [Id_Tipo_pago] = 20
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 28/09/2018 10:30:46 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Ap_Paterno] [varchar](50) NOT NULL,
	[Ap_Materno] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
INSERT [dbo].[Empleado] ([Id], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (7, N'Ernesto', N'Gonzalez', N'Gonzalez')
INSERT [dbo].[Empleado] ([Id], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (7, N'Adan', N'Campos', N'Salas')
INSERT [dbo].[Empleado] ([Id], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (7, N'Emilio', N'Catala', N'Piña')
INSERT [dbo].[Empleado] ([Id], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (7, N'Luis', N'Ibarra', N'Acuña')
INSERT [dbo].[Empleado] ([Id], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (7, N'Victor', N'Gamez', N'Navarro')
INSERT [dbo].[Empleado] ([Id], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (7, N'Daniel', N'Gomez', N'Rizo')
INSERT [dbo].[Empleado] ([Id], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (7, N'Andres', N'Hernandez', N'Ruiz')

DELETE FROM [dbo].[Empleado]
WHERE [Id] = 2
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 28/09/2018 10:30:46 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado](
	[Id] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
INSERT [dbo].[Estado] ([Id], [Descripcion]) VALUES (1, N'Nuevo Leon')
INSERT [dbo].[Estado] ([Id], [Descripcion]) VALUES (2, N'Tamaulipas')
INSERT [dbo].[Estado] ([Id], [Descripcion]) VALUES (3, N'Chihuahua')
INSERT [dbo].[Estado] ([Id], [Descripcion]) VALUES (4, N'San Luis Potosi')
INSERT [dbo].[Estado] ([Id], [Descripcion]) VALUES (5, N'Coahulia')
INSERT [dbo].[Estado] ([Id], [Descripcion]) VALUES (6, N'Nuevo Leon')
INSERT [dbo].[Estado] ([Id], [Descripcion]) VALUES (7, N'Tamaulipas')

DELETE FROM [dbo].[Estado]
WHERE [Id] = 7
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 28/09/2018 10:30:46 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Municipio](
	[Id] [int] NOT NULL,
	[Id_Estado] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Municipio] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
INSERT [dbo].[Municipio] ([Id], [Id_Estado], [Descripcion]) VALUES (1, 20, N'Monterrey')
INSERT [dbo].[Municipio] ([Id], [Id_Estado], [Descripcion]) VALUES (2, 30, N'Tampico')
INSERT [dbo].[Municipio] ([Id], [Id_Estado], [Descripcion]) VALUES (3, 40, N'Chihuahua')
INSERT [dbo].[Municipio] ([Id], [Id_Estado], [Descripcion]) VALUES (4, 50, N'Charcas')
INSERT [dbo].[Municipio] ([Id], [Id_Estado], [Descripcion]) VALUES (5, 60, N'Zaragoza')
INSERT [dbo].[Municipio] ([Id], [Id_Estado], [Descripcion]) VALUES (6, 70, N'Guadalupe')
GO

DELETE FROM [dbo].[Municipio]
WHERE [Id] = 1
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 28/09/2018 10:30:46 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[Id] [int] NOT NULL,
	[Monto_pago] [money] NOT NULL,
 CONSTRAINT [PK_Pago] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
INSERT [dbo].[Pago] ([Id], [Monto_pago]) VALUES (1, 750.0000)
INSERT [dbo].[Pago] ([Id], [Monto_pago]) VALUES (2, 500.0000)
INSERT [dbo].[Pago] ([Id], [Monto_pago]) VALUES (3, 650.0000)
INSERT [dbo].[Pago] ([Id], [Monto_pago]) VALUES (4, 600.0000)
INSERT [dbo].[Pago] ([Id], [Monto_pago]) VALUES (5, 550.0000)
INSERT [dbo].[Pago] ([Id], [Monto_pago]) VALUES (6, 680.0000)

UPDATE [dbo].[Pago]
SET [Monto_pago] = 480.0000
WHERE [Id] = 3
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 28/09/2018 10:30:46 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[Id] [int] NOT NULL,
	[fecha_entrega] [smalldatetime] NOT NULL,
	[firma_entrega] [smalldatetime] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
INSERT [dbo].[Producto] ([Id], [fecha_entrega], [Firna_entrega], [descripcion], [cantidad]) VALUES (1, CAST(0x07C90000 AS SmallDateTime), CAST(0x07C90000 AS SmallDateTime), N'Sillas', 50)
INSERT [dbo].[Producto] ([Id], [fecha_entrega], [Firna_entrega], [descripcion], [cantidad]) VALUES (2, CAST(0x07C60000 AS SmallDateTime), CAST(0x07C60000 AS SmallDateTime), N'Mesa', 10)
INSERT [dbo].[Producto] ([Id], [fecha_entrega], [Firna_entrega], [descripcion], [cantidad]) VALUES (3, CAST(0x07BD0000 AS SmallDateTime), CAST(0x07BD0000 AS SmallDateTime), N'Sillon', 15)
INSERT [dbo].[Producto] ([Id], [fecha_entrega], [Firna_entrega], [descripcion], [cantidad]) VALUES (4, CAST(0x07CF0000 AS SmallDateTime), CAST(0x07CF0000 AS SmallDateTime), N'Gabinetes', 20)
INSERT [dbo].[Producto] ([Id], [fecha_entrega], [Firna_entrega], [descripcion], [cantidad]) VALUES (5, CAST(0x1F8E0000 AS SmallDateTime), CAST(0x1F8E0000 AS SmallDateTime), N'Estantes', 30)
INSERT [dbo].[Producto] ([Id], [fecha_entrega], [Firna_entrega], [descripcion], [cantidad]) VALUES (6, CAST(0x07D90000 AS SmallDateTime), CAST(0x07D90000 AS SmallDateTime), N'Escritorios', 40)

UPDATE [dbo].[Producto]
SET [cantidad] = 50
WHERE [Id] = 4
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 28/09/2018 10:30:46 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedor](
	[Id] [int] NOT NULL,
	[Id_producto] [int] NOT NULL,
	[Empresa] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[Ap_paterno] [varchar](50) NOT NULL,
	[Ap_materno] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
INSERT [dbo].[Proveedor] ([Id],[Id_producto], [Empresa], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (1, 20, N'A tu medida Estudio', N'Angel', N'Villegas', N'Salazar')
INSERT [dbo].[Proveedor] ([Id],[Id_producto], [Empresa], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (2, 30, N'indesignsolution', N'Erick', N'Roman', N'Guajardo')
INSERT [dbo].[Proveedor] ([Id],[Id_producto], [Empresa], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (3, 40, N'Outdoor living', N'Aydee', N'Flores', N'Trinidad')
INSERT [dbo].[Proveedor] ([Id],[Id_producto], [Empresa], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (4, 50, N'Netcarp', N'Ramon', N'Villalobos', N'Trejo')
INSERT [dbo].[Proveedor] ([Id],[Id_producto], [Empresa], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (5, 60, N'Shine and dry', N'Patricio', N'Salvador', N'Lozano')
INSERT [dbo].[Proveedor] ([Id],[Id_producto], [Empresa], [Nombre], [Ap_paterno], [Ap_materno]) VALUES (6, 70, N'Madera y diseño potosino', N'Miguel', N'Salinas', N'Martinez')

DELETE FROM [dbo].[Proveedor]
WHERE [Id] = 6
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipo_Pago]    Script Date: 28/09/2018 10:30:46 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Pago](
	[Id] [int] NOT NULL,
	[Id_pago] [int] NOT NULL,
 CONSTRAINT [PK_Tipo_Pago] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
INSERT [dbo].[Tipo_Pago] ([Id], [Id_pago]) VALUES (1, 20)
INSERT [dbo].[Tipo_Pago] ([Id], [Id_pago]) VALUES (2, 30)
INSERT [dbo].[Tipo_Pago] ([Id], [Id_pago]) VALUES (3, 40)
INSERT [dbo].[Tipo_Pago] ([Id], [Id_pago]) VALUES (4, 50)
INSERT [dbo].[Tipo_Pago] ([Id], [Id_pago]) VALUES (5, 60)
INSERT [dbo].[Tipo_Pago] ([Id], [Id_pago]) VALUES (6, 70)
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 28/09/2018 10:30:46 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[Id] [int] NOT NULL,
	[Id_producto] [int] NOT NULL,
	[Id_empleado] [int] NOT NULL,
	[Id_cliente] [int] NOT NULL,
	[Id_pago] [int] NOT NULL,
	[fecha_entrega] [smalldatetime] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[total] [money] NOT NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
INSERT [dbo].[Venta] ([Id], [Id_producto], [Id_empleado], [Id_cliente], [Id_pago], [Fech_entrega], [Cantidad], [total]) VALUES (1, 20, 2, 3, 4,  CAST(0x07CB0000 AS SmallDateTime), 10, 2000.0000)
INSERT [dbo].[Venta] ([Id], [Id_producto], [Id_empleado], [Id_cliente], [Id_pago], [Fech_entrega], [Cantidad], [total]) VALUES (1, 30, 4, 6, 8,  CAST(0x07D20000 AS SmallDateTime), 15, 1500.0000)
INSERT [dbo].[Venta] ([Id], [Id_producto], [Id_empleado], [Id_cliente], [Id_pago], [Fech_entrega], [Cantidad], [total]) VALUES (1, 40, 6, 9, 12,  CAST(0x07CA0000 AS SmallDateTime), 5, 1000.0000)
INSERT [dbo].[Venta] ([Id], [Id_producto], [Id_empleado], [Id_cliente], [Id_pago], [Fech_entrega], [Cantidad], [total]) VALUES (1, 50, 8, 12, 16,  CAST(0x07C00000 AS SmallDateTime), 20, 4000.0000)
INSERT [dbo].[Venta] ([Id], [Id_producto], [Id_empleado], [Id_cliente], [Id_pago], [Fech_entrega], [Cantidad], [total]) VALUES (1, 60, 10, 15, 20,  CAST(0x07C30000 AS SmallDateTime), 18, 3600.0000)
INSERT [dbo].[Venta] ([Id], [Id_producto], [Id_empleado], [Id_cliente], [Id_pago], [Fech_entrega], [Cantidad], [total]) VALUES (1, 70, 12, 18, 24,  CAST(0x07CE0000 AS SmallDateTime), 13, 2600.0000)
GO
USE [master]
GO
ALTER DATABASE [LND] SET  READ_WRITE 
GO
