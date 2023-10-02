USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_ComentarioFacturacion]    Script Date: 01/12/2014 08:00:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administracion_ComentarioFacturacion](
	[CveAdministracion_ComentarioFacturacion] [int] NOT NULL,
	[CveAdministracion_ComentarioFacturacion_Estatus] [int] NULL,
	[CveCliente] [int] NULL,
	[CveAsunto] [int] NULL,
	[CveEmpleado] [int] NULL,
	[Comentario] [varchar](2000) NULL,
	[FechaAlta] [datetime] NULL,
	[FechaInactivo] [datetime] NULL,
 CONSTRAINT [PK_Administracion_ComentarioFacturacion] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_ComentarioFacturacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Administracion_ComentarioFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_ComentarioFacturacion_Administracion_ComentarioFacturacion_Estatus] FOREIGN KEY([CveAdministracion_ComentarioFacturacion_Estatus])
REFERENCES [dbo].[Administracion_ComentarioFacturacion_Estatus] ([CveAdministracion_ComentarioFacturacion_Estatus])
GO
ALTER TABLE [dbo].[Administracion_ComentarioFacturacion] CHECK CONSTRAINT [FK_Administracion_ComentarioFacturacion_Administracion_ComentarioFacturacion_Estatus]
GO
ALTER TABLE [dbo].[Administracion_ComentarioFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_ComentarioFacturacion_Asunto] FOREIGN KEY([CveAsunto])
REFERENCES [dbo].[Asunto] ([CveAsunto])
GO
ALTER TABLE [dbo].[Administracion_ComentarioFacturacion] CHECK CONSTRAINT [FK_Administracion_ComentarioFacturacion_Asunto]
GO
ALTER TABLE [dbo].[Administracion_ComentarioFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_ComentarioFacturacion_Cliente] FOREIGN KEY([CveCliente])
REFERENCES [dbo].[Cliente] ([CveCliente])
GO
ALTER TABLE [dbo].[Administracion_ComentarioFacturacion] CHECK CONSTRAINT [FK_Administracion_ComentarioFacturacion_Cliente]
GO
ALTER TABLE [dbo].[Administracion_ComentarioFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_ComentarioFacturacion_Empleado] FOREIGN KEY([CveEmpleado])
REFERENCES [dbo].[Empleado] ([CveEmpleado])
GO
ALTER TABLE [dbo].[Administracion_ComentarioFacturacion] CHECK CONSTRAINT [FK_Administracion_ComentarioFacturacion_Empleado]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla que identifica  los Comentarios de Facturación que se encuentran capturados en el sistema ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ComentarioFacturacion', @level2type=N'COLUMN',@level2name=N'CveAdministracion_ComentarioFacturacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Cliente  que identifica a los Clientes capturados en el sistema ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ComentarioFacturacion', @level2type=N'COLUMN',@level2name=N'CveCliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Asunto que identifica a los Asuntos capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ComentarioFacturacion', @level2type=N'COLUMN',@level2name=N'CveAsunto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Empleado que identifica a todos los Empleados capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ComentarioFacturacion', @level2type=N'COLUMN',@level2name=N'CveEmpleado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción de los Comentarios de Facturación' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ComentarioFacturacion', @level2type=N'COLUMN',@level2name=N'Comentario'
GO
