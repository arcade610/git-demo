USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_CobranzaComentario]    Script Date: 01/12/2014 08:00:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administracion_CobranzaComentario](
	[CveAdministracion_CobranzaComentario] [int] NOT NULL,
	[CveAdministracion_CobranzaComentario_Clasificacion] [int] NULL,
	[CveCliente] [int] NULL,
	[CveEmpleado] [int] NULL,
	[Comentario] [varchar](8000) NULL,
	[FechaComentario] [datetime] NULL,
	[FechaAlta] [datetime] NULL,
	[TipoComentario] [bit] NULL,
 CONSTRAINT [PK_Administracion_CobranzaComentario] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_CobranzaComentario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Administracion_CobranzaComentario]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_CobranzaComentario_Administracion_CobranzaComentario_Clasificacion] FOREIGN KEY([CveAdministracion_CobranzaComentario_Clasificacion])
REFERENCES [dbo].[Administracion_CobranzaComentario_Clasificacion] ([CveAdministracion_CobranzaComentario_Clasificacion])
GO
ALTER TABLE [dbo].[Administracion_CobranzaComentario] CHECK CONSTRAINT [FK_Administracion_CobranzaComentario_Administracion_CobranzaComentario_Clasificacion]
GO
ALTER TABLE [dbo].[Administracion_CobranzaComentario]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_CobranzaComentario_Cliente] FOREIGN KEY([CveCliente])
REFERENCES [dbo].[Cliente] ([CveCliente])
GO
ALTER TABLE [dbo].[Administracion_CobranzaComentario] CHECK CONSTRAINT [FK_Administracion_CobranzaComentario_Cliente]
GO
ALTER TABLE [dbo].[Administracion_CobranzaComentario]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_CobranzaComentario_Empleado] FOREIGN KEY([CveEmpleado])
REFERENCES [dbo].[Empleado] ([CveEmpleado])
GO
ALTER TABLE [dbo].[Administracion_CobranzaComentario] CHECK CONSTRAINT [FK_Administracion_CobranzaComentario_Empleado]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla que identifica a todos los comentarios de Cobranza que se encuentran capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CobranzaComentario', @level2type=N'COLUMN',@level2name=N'CveAdministracion_CobranzaComentario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Administracion_CobranzaComentario_Clasificacion que identifica a las Clasificaciones de los Comentarios de Cobranza que se encuentran capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CobranzaComentario', @level2type=N'COLUMN',@level2name=N'CveAdministracion_CobranzaComentario_Clasificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Cliente que identifica a los Clientes capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CobranzaComentario', @level2type=N'COLUMN',@level2name=N'CveCliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Empleado que identifica a los Empleados capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CobranzaComentario', @level2type=N'COLUMN',@level2name=N'CveEmpleado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del Comentario referente a las Cobranzas capturadas en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CobranzaComentario', @level2type=N'COLUMN',@level2name=N'Comentario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra la Fecha en la que se realizan los Comentarios de Cobranza ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CobranzaComentario', @level2type=N'COLUMN',@level2name=N'FechaComentario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra la Fecha en la que se dan de alta los Comentarios de Cobranza en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CobranzaComentario', @level2type=N'COLUMN',@level2name=N'FechaAlta'
GO
