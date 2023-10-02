USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_CategoriaOtrosIngresos]    Script Date: 01/12/2014 08:00:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administracion_CategoriaOtrosIngresos](
	[CveAdministracion_CategoriaOtrosIngresos] [int] NOT NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [PK_CategoriaOtrosIngresos] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_CategoriaOtrosIngresos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla que identifica a las Categorias de Otros Ingresos capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CategoriaOtrosIngresos', @level2type=N'COLUMN',@level2name=N'CveAdministracion_CategoriaOtrosIngresos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de las Categorias de Otros Ingresos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CategoriaOtrosIngresos', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
