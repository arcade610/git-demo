USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_Copiado_Equipos]    Script Date: 01/12/2014 08:00:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administracion_Copiado_Equipos](
	[CveAdministracion_Copiado_Equipos] [int] NOT NULL,
	[CveAdministracion_Copiado_TipoTrabajo] [int] NULL,
	[Nombre] [varchar](250) NULL,
	[IP] [varchar](50) NULL,
	[Numero_Serial] [varchar](50) NULL,
	[Modelo] [varchar](50) NULL,
	[FechaAlta] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_Administracion_Copiado_Equipos] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_Copiado_Equipos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Administracion_Copiado_Equipos]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Copiado_Equipos_Administacion_Copiado_TipoTrabajo] FOREIGN KEY([CveAdministracion_Copiado_TipoTrabajo])
REFERENCES [dbo].[Administracion_Copiado_TipoTrabajo] ([CveAdministracion_Copiado_TipoTrabajo])
GO
ALTER TABLE [dbo].[Administracion_Copiado_Equipos] CHECK CONSTRAINT [FK_Administracion_Copiado_Equipos_Administacion_Copiado_TipoTrabajo]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla que identifica los Equipos de Copiado capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Equipos', @level2type=N'COLUMN',@level2name=N'CveAdministracion_Copiado_Equipos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Administracion_Copiado_TipoTrabajo que identifica a todos los tipos de trabajos de copiado capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Equipos', @level2type=N'COLUMN',@level2name=N'CveAdministracion_Copiado_TipoTrabajo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del Equipo de trabajo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Equipos', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dirección IP designado al Equipo de  Copiado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Equipos', @level2type=N'COLUMN',@level2name=N'IP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numero de Serie del Equipo de Copiado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Equipos', @level2type=N'COLUMN',@level2name=N'Numero_Serial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Modelo del Equipo de Copiado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Equipos', @level2type=N'COLUMN',@level2name=N'Modelo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se dió de Alta el Equipo de Copiado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Equipos', @level2type=N'COLUMN',@level2name=N'FechaAlta'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se modificaron los datos capturados del Equipo de Copiado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Equipos', @level2type=N'COLUMN',@level2name=N'FechaModificacion'
GO
