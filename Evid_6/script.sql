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

SELECT * INTO varchar FROM Anticipo

drop table Anticipo

CREATE TABLE [dbo].[Anticipo](
	[Id] [int] NOT NULL,
	[Id_Tipo_pago] [int] NOT NULL,
	[pago_inicial] [money] NOT NULL,
 CONSTRAINT [PK_Anticipo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


SELECT Numero AS "Num" FROM Calle ORDER BY Numero

SELECT Id_municipio AS "id_Mun" FROM Calle ORDER BY Id_Municipio

SELECT MAX(Pago_inicial) as PrecioMasAlto from Anticipo 

SELECT COUNT(Nombre) as NombreCliente FROM Cliente

SELECT COUNT(Abono_semanal) AS PrimerAbono FROM Ccotizacion where Abono_semanal >= 500.0000

SELECT COUNT(Monto_pago) AS Dinero FROM Pago where Monto_pago <= 650.0000

SELECT SUM(Total) as TotalRecibo from Venta 





SELECT Id, Proveedor.Nombre as NombreProveedor, Proveedor.Id_producto, Producto.Nombre as NombreProducto

FROM Proveedor INNER JOIN Producto on Producto.Id = Proveedor.Id_producto

SELECT * FROM Venta CROSS JOIN Cliente

SELECT * FROM Venta LEFT JOIN Empleado ON Empleado.Id = Venta.Id_Empleado

SELECT * FROM Venta RIGHT JOIN Producto ON Producto.Id = Venta.Id_producto



select * from Producto 

where Producto.cantidad >100

ORDER BY Id

select * from Pago

where Pago.Monto_pago = 500.0000

ORDER BY Monto_pago

select * from Calle 

where Calle.Id >40

ORDER BY Numero

select * from  Venta

where Venta.total >400.0000 AND Venta.total >=600.0000 OR Venta.Cantidad=1

ORDER BY Precio_Individual

select * from  Venta

where Venta.Precio_Individual >100 AND Venta.PrecioTotal >=500 OR Venta.Cantidad=10

Order by Venta.total, Venta.total, Venta.Cantidad DESC



SELECT MAX(Total) as PrecioMasAlto from Venta

group by Venta.total 

SELECT COUNT(Nombre) as NumerodeEmpleados FROM Empleado

group by Empleado.Nombre

SELECT SUM(Cantidad) as TotalVendido from Venta 

group by Venta.Cantidad

having COUNT(*)= 1



SELECT COUNT(Pago_inicial) AS Pago FROM Anticipo

where Pago_inicial = 1000.0000

SELECT COUNT(abono_semanal) AS Abono FROM Cotizacion

where abono_semanal <=500.0000



Select Cliente.Id from Cliente

inner join Venta on (Cliente.Id = Venta.Id_cliente) Group by Cliente.Id

Select Empleado.Id from Empleado

inner join Venta on (Empleado.Id = Venta.Id_empleado) Group by Empleado.Id

Select Producto.Id from Producto

inner join Venta on (Producto.Id = Venta.Id_producto) Group by Producto.Id