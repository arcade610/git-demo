USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_Tarifa]    Script Date: 01/12/2014 08:00:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administracion_Tarifa](
	[CveAdministracion_Tarifa] [int] NOT NULL,
	[CveAdministracion_TipoTarifa] [int] NULL,
	[CveAdministracion_TipoAbogado] [int] NULL,
	[CveEmpleado] [int] NULL,
	[CveMoneda] [int] NULL,
	[CveEmpleadoCaptura] [int] NULL,
	[Monto] [numeric](18, 2) NULL,
	[FechaEfectiva] [datetime] NULL,
	[MasReciente] [bit] NULL,
	[FechaAlta] [datetime] NULL,
 CONSTRAINT [PK_Administracion_TarifaTipoAbogado] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_Tarifa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Administracion_Tarifa]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Tarifa_Administracion_TipoTarifa] FOREIGN KEY([CveAdministracion_TipoTarifa])
REFERENCES [dbo].[Administracion_TipoTarifa] ([CveAdministracion_TipoTarifa])
GO
ALTER TABLE [dbo].[Administracion_Tarifa] CHECK CONSTRAINT [FK_Administracion_Tarifa_Administracion_TipoTarifa]
GO
ALTER TABLE [dbo].[Administracion_Tarifa]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Tarifa_Empleado] FOREIGN KEY([CveEmpleado])
REFERENCES [dbo].[Empleado] ([CveEmpleado])
GO
ALTER TABLE [dbo].[Administracion_Tarifa] CHECK CONSTRAINT [FK_Administracion_Tarifa_Empleado]
GO
ALTER TABLE [dbo].[Administracion_Tarifa]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Tarifa_Empleado1] FOREIGN KEY([CveEmpleadoCaptura])
REFERENCES [dbo].[Empleado] ([CveEmpleado])
GO
ALTER TABLE [dbo].[Administracion_Tarifa] CHECK CONSTRAINT [FK_Administracion_Tarifa_Empleado1]
GO
ALTER TABLE [dbo].[Administracion_Tarifa]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_TarifaTipoAbogado_Administracion_TipoAbogado] FOREIGN KEY([CveAdministracion_TipoAbogado])
REFERENCES [dbo].[Administracion_TipoAbogado] ([CveAdministracion_TipoAbogado])
GO
ALTER TABLE [dbo].[Administracion_Tarifa] CHECK CONSTRAINT [FK_Administracion_TarifaTipoAbogado_Administracion_TipoAbogado]
GO
ALTER TABLE [dbo].[Administracion_Tarifa]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_TarifaTipoAbogado_Moneda] FOREIGN KEY([CveMoneda])
REFERENCES [dbo].[Moneda] ([CveMoneda])
GO
ALTER TABLE [dbo].[Administracion_Tarifa] CHECK CONSTRAINT [FK_Administracion_TarifaTipoAbogado_Moneda]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla que identifica las tarifas capturadas en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Tarifa', @level2type=N'COLUMN',@level2name=N'CveAdministracion_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla que identifica a los tipos de tarifas que se encuentran capturadas en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Tarifa', @level2type=N'COLUMN',@level2name=N'CveAdministracion_TipoTarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Administracion_TipoAbogado que identifica a los tipos de Abagados capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Tarifa', @level2type=N'COLUMN',@level2name=N'CveAdministracion_TipoAbogado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Empleado que identifica a los Empleados que se se encuentran capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Tarifa', @level2type=N'COLUMN',@level2name=N'CveEmpleado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Moneda que identifica los tipos de Monedas que se encuentran capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Tarifa', @level2type=N'COLUMN',@level2name=N'CveMoneda'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Empleado que identifica a los Empleados que se encuentran capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Tarifa', @level2type=N'COLUMN',@level2name=N'CveEmpleadoCaptura'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el monto correspondiente a la tarifa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Tarifa', @level2type=N'COLUMN',@level2name=N'Monto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra la fecha en que se hace efectiva la tarifa capturada en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Tarifa', @level2type=N'COLUMN',@level2name=N'FechaEfectiva'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si el valor de la tarifa capturada en el sistema es la mas reciente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Tarifa', @level2type=N'COLUMN',@level2name=N'MasReciente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra la fecha en que se dan de alta las tarifas en el sistema ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Tarifa', @level2type=N'COLUMN',@level2name=N'FechaAlta'
GO
