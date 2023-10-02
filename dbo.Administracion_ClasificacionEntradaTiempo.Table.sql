USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_ClasificacionEntradaTiempo]    Script Date: 01/12/2014 08:00:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administracion_ClasificacionEntradaTiempo](
	[CveAdministracion_ClasificacionEntradaTiempo] [int] NOT NULL,
	[CveCliente] [int] NULL,
	[CveAsunto] [int] NULL,
	[CvePadre] [int] NULL,
	[Nivel] [int] NULL,
	[Identificador] [varchar](250) NULL,
	[Nombre] [varchar](250) NULL,
	[EsDetalle] [bit] NULL,
	[Activa] [bit] NULL,
	[FechaCambioEstatus] [datetime] NULL,
	[Facturable] [bit] NULL,
 CONSTRAINT [PK_Asunto_Clasificacion_A] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_ClasificacionEntradaTiempo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Administracion_ClasificacionEntradaTiempo]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_ClasificacionEntradaTiempo_Cliente] FOREIGN KEY([CveCliente])
REFERENCES [dbo].[Cliente] ([CveCliente])
GO
ALTER TABLE [dbo].[Administracion_ClasificacionEntradaTiempo] CHECK CONSTRAINT [FK_Administracion_ClasificacionEntradaTiempo_Cliente]
GO
ALTER TABLE [dbo].[Administracion_ClasificacionEntradaTiempo]  WITH CHECK ADD  CONSTRAINT [FK_Asunto_Clasificacion_Asunto] FOREIGN KEY([CveAsunto])
REFERENCES [dbo].[Asunto] ([CveAsunto])
GO
ALTER TABLE [dbo].[Administracion_ClasificacionEntradaTiempo] CHECK CONSTRAINT [FK_Asunto_Clasificacion_Asunto]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla que identifica  las Clasificaciones de todas las Entradas de Tiempo capturadas en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ClasificacionEntradaTiempo', @level2type=N'COLUMN',@level2name=N'CveAdministracion_ClasificacionEntradaTiempo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Cliente que identifica a los Clientes capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ClasificacionEntradaTiempo', @level2type=N'COLUMN',@level2name=N'CveCliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Asunto que identifica a todos los Asuntos capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ClasificacionEntradaTiempo', @level2type=N'COLUMN',@level2name=N'CveAsunto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Clave que identifica el nodo o padre donde se captura la Entrada de Tiempo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ClasificacionEntradaTiempo', @level2type=N'COLUMN',@level2name=N'CvePadre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nivel al que pertenece la Entrada de Tiempo capturada en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ClasificacionEntradaTiempo', @level2type=N'COLUMN',@level2name=N'Nivel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifica a las  Entrada de Tiempo capturadas en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ClasificacionEntradaTiempo', @level2type=N'COLUMN',@level2name=N'Identificador'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre desigando a las clasificaciones de Entradas de Tiempo capturadas en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ClasificacionEntradaTiempo', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si la clasificación Entrada Tiempo es detalle o no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ClasificacionEntradaTiempo', @level2type=N'COLUMN',@level2name=N'EsDetalle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si la clasificación Entrada Tiempo se encuentra activa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ClasificacionEntradaTiempo', @level2type=N'COLUMN',@level2name=N'Activa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra  la Fecha en la que una clasificación Entrada Tiempo cambia de estatus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ClasificacionEntradaTiempo', @level2type=N'COLUMN',@level2name=N'FechaCambioEstatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si la clasificación Entrada Tiempo es facturable' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ClasificacionEntradaTiempo', @level2type=N'COLUMN',@level2name=N'Facturable'
GO
