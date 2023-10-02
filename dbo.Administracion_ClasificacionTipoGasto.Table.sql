USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_ClasificacionTipoGasto]    Script Date: 01/12/2014 08:00:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administracion_ClasificacionTipoGasto](
	[CveAdministracion_ClasificacionTipoGasto] [int] NOT NULL,
	[Nombre] [varchar](250) NULL,
	[NombreIng] [varchar](250) NULL,
	[EsDeGastosAutomaticos] [bit] NULL,
	[FechaCorte] [datetime] NULL,
 CONSTRAINT [PK_Administracion_ClasificacionTipoGasto] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_ClasificacionTipoGasto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla que identifica lasClasificaciones de de los Tipos de  Gastos que se encuentran capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ClasificacionTipoGasto', @level2type=N'COLUMN',@level2name=N'CveAdministracion_ClasificacionTipoGasto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la Clasificación de los Tipos  de Gastos capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ClasificacionTipoGasto', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre en Inglés  de la Clasificación de los  Tipos de Gastos capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ClasificacionTipoGasto', @level2type=N'COLUMN',@level2name=N'NombreIng'
GO
