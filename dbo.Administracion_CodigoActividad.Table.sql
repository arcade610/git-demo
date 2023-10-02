USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_CodigoActividad]    Script Date: 01/12/2014 08:00:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administracion_CodigoActividad](
	[CveAdministracion_CodigoActividad] [int] NOT NULL,
	[CveAdministracion_CodigoActividad_Clasificacion] [int] NULL,
	[Identificador] [varchar](50) NULL,
	[Nombre] [varchar](500) NULL,
	[Nombre_Ing] [varchar](500) NULL,
	[FechaAlta] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[RequiereDescripcion] [bit] NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_Administracion_CodigoActividad] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_CodigoActividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Administracion_CodigoActividad]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_CodigoActividad_Administracion_CodigoActividad_Clasificacion] FOREIGN KEY([CveAdministracion_CodigoActividad_Clasificacion])
REFERENCES [dbo].[Administracion_CodigoActividad_Clasificacion] ([CveAdministracion_CodigoActividad_Clasificacion])
GO
ALTER TABLE [dbo].[Administracion_CodigoActividad] CHECK CONSTRAINT [FK_Administracion_CodigoActividad_Administracion_CodigoActividad_Clasificacion]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Clave de la tabla que identifica  los Códigos de Actividad capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad', @level2type=N'COLUMN',@level2name=N'CveAdministracion_CodigoActividad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Administracion_CodigoActividad_Clasificacion que identifica las clasificaciones  de los Codigos de Actividad capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad', @level2type=N'COLUMN',@level2name=N'CveAdministracion_CodigoActividad_Clasificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Clave que Identifica a  los Códigos de Actividad capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad', @level2type=N'COLUMN',@level2name=N'Identificador'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de los Códigos de Actividad capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre en Inglés de los Códigos de Actividad capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad', @level2type=N'COLUMN',@level2name=N'Nombre_Ing'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se dan de alta los Códigos de Actividad en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad', @level2type=N'COLUMN',@level2name=N'FechaAlta'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se modifican los Códigos de Actividad capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad', @level2type=N'COLUMN',@level2name=N'FechaModificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si los Códigos de Actividad capturados requieren descripción ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad', @level2type=N'COLUMN',@level2name=N'RequiereDescripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si los Códigos de Actividad se encuentran activos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad', @level2type=N'COLUMN',@level2name=N'Activo'
GO
