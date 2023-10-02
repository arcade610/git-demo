USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_Cliente_TipoTarifa]    Script Date: 01/12/2014 08:00:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administracion_Cliente_TipoTarifa](
	[CveAdministracion_Cliente_TipoTarifa] [int] NOT NULL,
	[CveAdministracion_ClasificacionEntradaTiempo] [int] NULL,
	[CveAdministracion_TipoTarifa] [int] NULL,
	[CveCliente] [int] NULL,
	[CveAsunto] [int] NULL,
	[CveEmpleado] [int] NULL,
	[FechaEfectiva] [datetime] NULL,
	[FechaAlta] [datetime] NULL,
 CONSTRAINT [PK_Administracion_Cliente_TipoTarifa] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_Cliente_TipoTarifa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Administracion_Cliente_TipoTarifa]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Cliente_TipoTarifa_Administracion_ClasificacionEntradaTiempo] FOREIGN KEY([CveAdministracion_ClasificacionEntradaTiempo])
REFERENCES [dbo].[Administracion_ClasificacionEntradaTiempo] ([CveAdministracion_ClasificacionEntradaTiempo])
GO
ALTER TABLE [dbo].[Administracion_Cliente_TipoTarifa] CHECK CONSTRAINT [FK_Administracion_Cliente_TipoTarifa_Administracion_ClasificacionEntradaTiempo]
GO
ALTER TABLE [dbo].[Administracion_Cliente_TipoTarifa]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Cliente_TipoTarifa_Administracion_TipoTarifa1] FOREIGN KEY([CveAdministracion_TipoTarifa])
REFERENCES [dbo].[Administracion_TipoTarifa] ([CveAdministracion_TipoTarifa])
GO
ALTER TABLE [dbo].[Administracion_Cliente_TipoTarifa] CHECK CONSTRAINT [FK_Administracion_Cliente_TipoTarifa_Administracion_TipoTarifa1]
GO
ALTER TABLE [dbo].[Administracion_Cliente_TipoTarifa]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Cliente_TipoTarifa_Asunto] FOREIGN KEY([CveAsunto])
REFERENCES [dbo].[Asunto] ([CveAsunto])
GO
ALTER TABLE [dbo].[Administracion_Cliente_TipoTarifa] CHECK CONSTRAINT [FK_Administracion_Cliente_TipoTarifa_Asunto]
GO
ALTER TABLE [dbo].[Administracion_Cliente_TipoTarifa]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Cliente_TipoTarifa_Cliente] FOREIGN KEY([CveCliente])
REFERENCES [dbo].[Cliente] ([CveCliente])
GO
ALTER TABLE [dbo].[Administracion_Cliente_TipoTarifa] CHECK CONSTRAINT [FK_Administracion_Cliente_TipoTarifa_Cliente]
GO
ALTER TABLE [dbo].[Administracion_Cliente_TipoTarifa]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Cliente_TipoTarifa_Empleado] FOREIGN KEY([CveEmpleado])
REFERENCES [dbo].[Empleado] ([CveEmpleado])
GO
ALTER TABLE [dbo].[Administracion_Cliente_TipoTarifa] CHECK CONSTRAINT [FK_Administracion_Cliente_TipoTarifa_Empleado]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de tabla que identifica los Tipos de Tarifas por Cliente capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Cliente_TipoTarifa', @level2type=N'COLUMN',@level2name=N'CveAdministracion_Cliente_TipoTarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Administracion_ClasificacionEntradaTiempo que identifica las Clasificaciones  a las que pertenecen las Entradas de Tiempo capturadas en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Cliente_TipoTarifa', @level2type=N'COLUMN',@level2name=N'CveAdministracion_ClasificacionEntradaTiempo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Administracion_TipoTarifa que identifica los tipos de Tarifas capturadas en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Cliente_TipoTarifa', @level2type=N'COLUMN',@level2name=N'CveAdministracion_TipoTarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Cliente que identifica a  los Clientes capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Cliente_TipoTarifa', @level2type=N'COLUMN',@level2name=N'CveCliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Asunto que identifica  los Asuntos capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Cliente_TipoTarifa', @level2type=N'COLUMN',@level2name=N'CveAsunto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Empleado que identifica a  los Empleados que se encuentran capturados en el sistema ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Cliente_TipoTarifa', @level2type=N'COLUMN',@level2name=N'CveEmpleado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se hace efectiva el tipo de tarifa por Cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Cliente_TipoTarifa', @level2type=N'COLUMN',@level2name=N'FechaEfectiva'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en la que se da de alta el Tipo de Tarifa por cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Cliente_TipoTarifa', @level2type=N'COLUMN',@level2name=N'FechaAlta'
GO
