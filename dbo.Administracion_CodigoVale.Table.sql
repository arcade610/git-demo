USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_CodigoVale]    Script Date: 01/12/2014 08:00:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administracion_CodigoVale](
	[CveAdministracion_CodigoVale] [int] NULL,
	[CveAdministracion_TipoGasto] [int] NULL,
	[CveEmpleado] [int] NULL,
	[CveCliente] [int] NULL,
	[CveAsunto] [int] NULL,
	[Identificador] [varchar](50) NULL,
	[Descripcion] [varchar](500) NULL,
	[Descripcion_Ing] [varchar](500) NULL,
	[FechaAlta] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[Activo] [bit] NULL,
	[Historico] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
