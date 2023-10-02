USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_CodigoActividad_Clasificacion_Favoritos]    Script Date: 01/12/2014 08:00:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administracion_CodigoActividad_Clasificacion_Favoritos](
	[CveAdministracion_CodigoActividad_Clasificacion] [int] NOT NULL,
	[CveCliente] [int] NOT NULL,
	[CveAsunto] [int] NOT NULL,
 CONSTRAINT [PK_Administracion_CodigoActividad_Clasificacion_Favoritos] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_CodigoActividad_Clasificacion] ASC,
	[CveCliente] ASC,
	[CveAsunto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Administracion_CodigoActividad_Clasificacion_Favoritos]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_CodigoActividad_Clasificacion_Favoritos_Administracion_CodigoActividad_Clasificacion] FOREIGN KEY([CveAdministracion_CodigoActividad_Clasificacion])
REFERENCES [dbo].[Administracion_CodigoActividad_Clasificacion] ([CveAdministracion_CodigoActividad_Clasificacion])
GO
ALTER TABLE [dbo].[Administracion_CodigoActividad_Clasificacion_Favoritos] CHECK CONSTRAINT [FK_Administracion_CodigoActividad_Clasificacion_Favoritos_Administracion_CodigoActividad_Clasificacion]
GO
ALTER TABLE [dbo].[Administracion_CodigoActividad_Clasificacion_Favoritos]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_CodigoActividad_Clasificacion_Favoritos_Asunto] FOREIGN KEY([CveAsunto])
REFERENCES [dbo].[Asunto] ([CveAsunto])
GO
ALTER TABLE [dbo].[Administracion_CodigoActividad_Clasificacion_Favoritos] CHECK CONSTRAINT [FK_Administracion_CodigoActividad_Clasificacion_Favoritos_Asunto]
GO
ALTER TABLE [dbo].[Administracion_CodigoActividad_Clasificacion_Favoritos]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_CodigoActividad_Clasificacion_Favoritos_Cliente] FOREIGN KEY([CveCliente])
REFERENCES [dbo].[Cliente] ([CveCliente])
GO
ALTER TABLE [dbo].[Administracion_CodigoActividad_Clasificacion_Favoritos] CHECK CONSTRAINT [FK_Administracion_CodigoActividad_Clasificacion_Favoritos_Cliente]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Administracion_CodigoActividad_Clasificacion que identifica  las Clasificaciones de los Códigos de Actividad capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad_Clasificacion_Favoritos', @level2type=N'COLUMN',@level2name=N'CveAdministracion_CodigoActividad_Clasificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Cliente que identifica a los Clientes capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad_Clasificacion_Favoritos', @level2type=N'COLUMN',@level2name=N'CveCliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Asunto que identifica los Asuntos capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad_Clasificacion_Favoritos', @level2type=N'COLUMN',@level2name=N'CveAsunto'
GO
