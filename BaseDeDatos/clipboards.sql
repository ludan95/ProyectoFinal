USE [ecommerceArtesanias]
GO

/****** Object:  Table [dbo].[direccion]    Script Date: 01/jun./2022 02:06:02 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[direccion](
	[id_direccion] [int] IDENTITY(1,1) NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[municipio] [varchar](50) NOT NULL,
	[localidad] [varchar](50) NOT NULL,
	[calle] [varchar](50) NOT NULL,
	[numero] [varchar](10) NOT NULL,
	[codigo_postal] [varchar](5) NOT NULL,
	[telefono] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

---------------


USE [ecommerceArtesanias]
GO

/****** Object:  Table [dbo].[tarjeta]    Script Date: 01/jun./2022 02:16:11 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tarjeta](
	[id_tarjeta] [int] IDENTITY(1,1) NOT NULL,
	[numero_tarjeta] [varchar](16) NOT NULL,
	[nombre_titular] [varchar](50) NOT NULL,
	[fecha_caducidad_mes] [varchar](2) NOT NULL,
	[fecha_caducidad_anio] [varchar](2) NOT NULL,
	[numero_seguridad] [varchar](3) NOT NULL,
	[entidad_bancaria] [varchar](50) NOT NULL,
	[tipo_tarjeta] [varchar](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tarjeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



-------------------


USE [ecommerceArtesanias]
GO

/****** Object:  Table [dbo].[cliente]    Script Date: 01/jun./2022 02:18:23 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[cliente](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre_cliente] [varchar](50) NOT NULL,
	[apellidos_cliente] [varchar](50) NOT NULL,
	[correo_electronico] [varchar](50) NOT NULL,
	[img] [varchar](50) NOT NULL,
	[contrasenia_usuario] [varchar](50) NOT NULL,
	[id_direccion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[cliente]  WITH CHECK ADD  CONSTRAINT [fk_direccionCliente] FOREIGN KEY([id_direccion])
REFERENCES [dbo].[direccion] ([id_direccion])
GO

ALTER TABLE [dbo].[cliente] CHECK CONSTRAINT [fk_direccionCliente]
GO





-------------------------------

USE [ecommerceArtesanias]
GO

/****** Object:  Table [dbo].[artesano]    Script Date: 01/jun./2022 02:18:41 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[artesano](
	[id_artesano] [int] IDENTITY(1,1) NOT NULL,
	[nombre_artesano] [varchar](50) NOT NULL,
	[apellidos_artesano] [varchar](50) NOT NULL,
	[correo_electronico] [varchar](50) NOT NULL,
	[region] [varchar](50) NOT NULL,
	[img] [varchar](50) NOT NULL,
	[contrasenia_artesano] [varchar](50) NOT NULL,
	[id_direccion] [int] NOT NULL,
	[id_tarjeta] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_artesano] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[artesano]  WITH CHECK ADD  CONSTRAINT [fk_direccionArtesano] FOREIGN KEY([id_direccion])
REFERENCES [dbo].[direccion] ([id_direccion])
GO

ALTER TABLE [dbo].[artesano] CHECK CONSTRAINT [fk_direccionArtesano]
GO

ALTER TABLE [dbo].[artesano]  WITH CHECK ADD  CONSTRAINT [fk_tarjetaArtesano] FOREIGN KEY([id_tarjeta])
REFERENCES [dbo].[tarjeta] ([id_tarjeta])
GO

ALTER TABLE [dbo].[artesano] CHECK CONSTRAINT [fk_tarjetaArtesano]
GO




-----------------------


USE [ecommerceArtesanias]
GO

/****** Object:  Table [dbo].[artesania]    Script Date: 01/jun./2022 02:19:03 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[artesania](
	[id_artesania] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[material] [varchar](25) NOT NULL,
	[color_predominante] [varchar](25) NOT NULL,
	[precio] [int] NOT NULL,
	[cantidad_vender] [int] NOT NULL,
	[categoria] [varchar](30) NOT NULL,
	[img] [varchar](50) NOT NULL,
	[descripcion] [text] NULL,
	[oferta] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_artesania] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO





----------------------------



USE [ecommerceArtesanias]
GO

/****** Object:  Table [dbo].[detalle_artesania]    Script Date: 01/jun./2022 02:19:18 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[detalle_artesania](
	[id_artesano] [int] NOT NULL,
	[id_artesania] [int] NOT NULL,
	[cantidad_agregar] [int] NOT NULL,
	[precio] [int] NOT NULL,
	[fecha] [date] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[detalle_artesania]  WITH CHECK ADD  CONSTRAINT [fk_artesaniaDEtalleArtesania] FOREIGN KEY([id_artesania])
REFERENCES [dbo].[artesania] ([id_artesania])
GO

ALTER TABLE [dbo].[detalle_artesania] CHECK CONSTRAINT [fk_artesaniaDEtalleArtesania]
GO

ALTER TABLE [dbo].[detalle_artesania]  WITH CHECK ADD  CONSTRAINT [fk_artesanoDetalleArtesania] FOREIGN KEY([id_artesano])
REFERENCES [dbo].[artesano] ([id_artesano])
GO

ALTER TABLE [dbo].[detalle_artesania] CHECK CONSTRAINT [fk_artesanoDetalleArtesania]
GO



-----------------------------


USE [ecommerceArtesanias]
GO

/****** Object:  Table [dbo].[venta]    Script Date: 01/jun./2022 02:19:36 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[venta](
	[id_venta] [int] IDENTITY(1,1) NOT NULL,
	[id_cliente] [int] NOT NULL,
	[id_tarjeta] [int] NOT NULL,
	[fecha] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [fk_clienteVenta] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[cliente] ([id_cliente])
GO

ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [fk_clienteVenta]
GO

ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [fk_tarjetaVenta] FOREIGN KEY([id_tarjeta])
REFERENCES [dbo].[tarjeta] ([id_tarjeta])
GO

ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [fk_tarjetaVenta]
GO




-----------------------------------



USE [ecommerceArtesanias]
GO

/****** Object:  Table [dbo].[detalle_venta]    Script Date: 01/jun./2022 02:19:47 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[detalle_venta](
	[id_venta] [int] NOT NULL,
	[id_artesania] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD  CONSTRAINT [fk_artesaniaDetalleVenta] FOREIGN KEY([id_artesania])
REFERENCES [dbo].[artesania] ([id_artesania])
GO

ALTER TABLE [dbo].[detalle_venta] CHECK CONSTRAINT [fk_artesaniaDetalleVenta]
GO

ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD  CONSTRAINT [fk_ventaDetalleVenta] FOREIGN KEY([id_venta])
REFERENCES [dbo].[venta] ([id_venta])
GO

ALTER TABLE [dbo].[detalle_venta] CHECK CONSTRAINT [fk_ventaDetalleVenta]
GO



_________________________









https://codverter.com/src/sqltoclass


