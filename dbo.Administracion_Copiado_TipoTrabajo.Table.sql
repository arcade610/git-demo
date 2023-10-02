USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_Copiado_TipoTrabajo]    Script Date: 01/12/2014 08:00:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administracion_Copiado_TipoTrabajo](
	[CveAdministracion_Copiado_TipoTrabajo] [int] NOT NULL,
	[CveAdministracion_TipoGasto] [int] NULL,
	[Nombre] [varchar](250) NULL,
	[Descripcion] [varchar](250) NULL,
	[FechaAlta] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_Administacion_Copiado_TipoTrabajo] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_Copiado_TipoTrabajo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Administracion_Copiado_TipoTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_Administacion_Copiado_TipoTrabajo_Administracion_TipoGasto] FOREIGN KEY([CveAdministracion_TipoGasto])
REFERENCES [dbo].[Administracion_TipoGasto] ([CveAdministracion_TipoGasto])
GO
ALTER TABLE [dbo].[Administracion_Copiado_TipoTrabajo] CHECK CONSTRAINT [FK_Administacion_Copiado_TipoTrabajo_Administracion_TipoGasto]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla que identifica los tipos de trabajo de copiado capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_TipoTrabajo', @level2type=N'COLUMN',@level2name=N'CveAdministracion_Copiado_TipoTrabajo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Administracion_TipoGasto que identifica los Tipos de Gastos capturados' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_TipoTrabajo', @level2type=N'COLUMN',@level2name=N'CveAdministracion_TipoGasto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del Tipo de Trabajo de Copiado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_TipoTrabajo', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del Tipo de Trabajo de Copiado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_TipoTrabajo', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se dan de alta los Tipos de Trabajo de Copiado ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_TipoTrabajo', @level2type=N'COLUMN',@level2name=N'FechaAlta'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en la que se modifican los datos de los Tipos de Trabajo de Copiado capturados ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_TipoTrabajo', @level2type=N'COLUMN',@level2name=N'FechaModificacion'
GO
