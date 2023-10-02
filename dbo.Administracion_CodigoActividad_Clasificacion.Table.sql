USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_CodigoActividad_Clasificacion]    Script Date: 01/12/2014 08:00:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administracion_CodigoActividad_Clasificacion](
	[CveAdministracion_CodigoActividad_Clasificacion] [int] NOT NULL,
	[Nombre] [varchar](250) NULL,
	[Nombre_Ing] [varchar](250) NULL,
 CONSTRAINT [PK_Administracion_CodigoActividad_Clasificacion] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_CodigoActividad_Clasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla que identifica la Clasificación de los Códigos de Actividad capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad_Clasificacion', @level2type=N'COLUMN',@level2name=N'CveAdministracion_CodigoActividad_Clasificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la Clasificación de los Códigos de Actividad capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad_Clasificacion', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre en Inglés de la Clasificación de los Códigos de Actividad capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad_Clasificacion', @level2type=N'COLUMN',@level2name=N'Nombre_Ing'
GO
