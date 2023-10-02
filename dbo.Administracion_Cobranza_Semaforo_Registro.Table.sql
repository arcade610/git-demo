USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_Cobranza_Semaforo_Registro]    Script Date: 01/12/2014 08:00:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administracion_Cobranza_Semaforo_Registro](
	[CveAdministracion_Cobranza_Semaforo_Registro] [int] NOT NULL,
	[CveAdministracion_Cobranza_Semaforo] [int] NULL,
	[CveCliente] [int] NULL,
	[CveEmpleado] [int] NULL,
	[Comentario] [varchar](4000) NULL,
	[FechaComentario] [datetime] NULL,
	[FechaAlta] [datetime] NULL,
 CONSTRAINT [PK_Administracion_Cobranza_Semaforo_Registro] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_Cobranza_Semaforo_Registro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Administracion_Cobranza_Semaforo_Registro]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Cobranza_Semaforo_Registro_Administracion_Cobranza_Semaforo] FOREIGN KEY([CveAdministracion_Cobranza_Semaforo])
REFERENCES [dbo].[Administracion_Cobranza_Semaforo] ([CveAdministracion_Cobranza_Semaforo])
GO
ALTER TABLE [dbo].[Administracion_Cobranza_Semaforo_Registro] CHECK CONSTRAINT [FK_Administracion_Cobranza_Semaforo_Registro_Administracion_Cobranza_Semaforo]
GO
ALTER TABLE [dbo].[Administracion_Cobranza_Semaforo_Registro]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Cobranza_Semaforo_Registro_Cliente] FOREIGN KEY([CveCliente])
REFERENCES [dbo].[Cliente] ([CveCliente])
GO
ALTER TABLE [dbo].[Administracion_Cobranza_Semaforo_Registro] CHECK CONSTRAINT [FK_Administracion_Cobranza_Semaforo_Registro_Cliente]
GO
ALTER TABLE [dbo].[Administracion_Cobranza_Semaforo_Registro]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Cobranza_Semaforo_Registro_Empleado] FOREIGN KEY([CveEmpleado])
REFERENCES [dbo].[Empleado] ([CveEmpleado])
GO
ALTER TABLE [dbo].[Administracion_Cobranza_Semaforo_Registro] CHECK CONSTRAINT [FK_Administracion_Cobranza_Semaforo_Registro_Empleado]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla  que identifica los Registros de los Semaforos de Cobranza que se encuentran capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Cobranza_Semaforo_Registro', @level2type=N'COLUMN',@level2name=N'CveAdministracion_Cobranza_Semaforo_Registro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Administracion_Cobranza_Semaforo que identifica  a los Semaforos de Cobranza que se encuentran capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Cobranza_Semaforo_Registro', @level2type=N'COLUMN',@level2name=N'CveAdministracion_Cobranza_Semaforo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Cliente que identifica a los Clientes capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Cobranza_Semaforo_Registro', @level2type=N'COLUMN',@level2name=N'CveCliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Empleado que identifica a los Empleados capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Cobranza_Semaforo_Registro', @level2type=N'COLUMN',@level2name=N'CveEmpleado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Comentario referente  a los  Registros de  Semaforos de Cobranza' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Cobranza_Semaforo_Registro', @level2type=N'COLUMN',@level2name=N'Comentario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra la Fecha en que se realizó el Comentario de los Registros de Semaforos de Cobranza' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Cobranza_Semaforo_Registro', @level2type=N'COLUMN',@level2name=N'FechaComentario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra la Fecha en que se dan  de alta los  Registros de  Semaforos de Cobranza' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Cobranza_Semaforo_Registro', @level2type=N'COLUMN',@level2name=N'FechaAlta'
GO
