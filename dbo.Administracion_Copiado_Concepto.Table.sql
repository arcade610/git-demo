USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_Copiado_Concepto]    Script Date: 01/12/2014 08:00:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administracion_Copiado_Concepto](
	[CveAdministracion_Copiado_Concepto] [int] NOT NULL,
	[Nombre] [varchar](500) NULL,
	[NombreIng] [varchar](500) NULL,
	[CveCliente] [int] NULL,
	[CveAsunto] [int] NULL,
	[CveEmpleado] [int] NULL,
	[FechaAlta] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_Administracion_Copiado_Conceptos] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_Copiado_Concepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Administracion_Copiado_Concepto]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Copiado_Concepto_Asunto] FOREIGN KEY([CveAsunto])
REFERENCES [dbo].[Asunto] ([CveAsunto])
GO
ALTER TABLE [dbo].[Administracion_Copiado_Concepto] CHECK CONSTRAINT [FK_Administracion_Copiado_Concepto_Asunto]
GO
ALTER TABLE [dbo].[Administracion_Copiado_Concepto]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Copiado_Concepto_Cliente] FOREIGN KEY([CveCliente])
REFERENCES [dbo].[Cliente] ([CveCliente])
GO
ALTER TABLE [dbo].[Administracion_Copiado_Concepto] CHECK CONSTRAINT [FK_Administracion_Copiado_Concepto_Cliente]
GO
ALTER TABLE [dbo].[Administracion_Copiado_Concepto]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Copiado_Concepto_Empleado] FOREIGN KEY([CveEmpleado])
REFERENCES [dbo].[Empleado] ([CveEmpleado])
GO
ALTER TABLE [dbo].[Administracion_Copiado_Concepto] CHECK CONSTRAINT [FK_Administracion_Copiado_Concepto_Empleado]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla que identifica los Concepto Copiado capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Concepto', @level2type=N'COLUMN',@level2name=N'CveAdministracion_Copiado_Concepto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre en Español del Concepto del uso de Copiado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Concepto', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre en Inglés del Concepto del uso del  Copiado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Concepto', @level2type=N'COLUMN',@level2name=N'NombreIng'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Cliente que identifica a los Clientes capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Concepto', @level2type=N'COLUMN',@level2name=N'CveCliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Asunto que identifica los Asuntos capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Concepto', @level2type=N'COLUMN',@level2name=N'CveAsunto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Empleado que identifica a los Empleados capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Concepto', @level2type=N'COLUMN',@level2name=N'CveEmpleado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se da de alta del Concepto de Copiado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Concepto', @level2type=N'COLUMN',@level2name=N'FechaAlta'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se modificaron los datos capturados del Concepto del uso del Copiado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Concepto', @level2type=N'COLUMN',@level2name=N'FechaModificacion'
GO
