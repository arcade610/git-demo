USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_BillFactura]    Script Date: 01/12/2014 08:00:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administracion_BillFactura](
	[CveAdministracion_Documento_Factura] [int] NOT NULL,
	[CveAdministracion_Documento_Bill] [int] NOT NULL,
	[CveMonedaBill] [int] NULL,
	[CveEmpleado] [int] NULL,
	[MontoMoneda] [numeric](19, 2) NULL,
	[MontoPesos] [numeric](19, 2) NULL,
	[TipoDeCambio] [numeric](19, 4) NULL,
	[FactorDeAsignacion] [numeric](19, 10) NULL,
	[PorcentajeFacturado] [numeric](19, 10) NULL,
	[FechaAplicacion] [datetime] NULL,
	[FechaAlta] [datetime] NULL,
 CONSTRAINT [PK_Administracion_ BillFactura] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_Documento_Factura] ASC,
	[CveAdministracion_Documento_Bill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Administracion_BillFactura]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_ BillFactura_Administracion_Documento] FOREIGN KEY([CveAdministracion_Documento_Factura])
REFERENCES [dbo].[Administracion_Documento] ([CveAdministracion_Documento])
GO
ALTER TABLE [dbo].[Administracion_BillFactura] CHECK CONSTRAINT [FK_Administracion_ BillFactura_Administracion_Documento]
GO
ALTER TABLE [dbo].[Administracion_BillFactura]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_ BillFactura_Administracion_Documento1] FOREIGN KEY([CveAdministracion_Documento_Bill])
REFERENCES [dbo].[Administracion_Documento] ([CveAdministracion_Documento])
GO
ALTER TABLE [dbo].[Administracion_BillFactura] CHECK CONSTRAINT [FK_Administracion_ BillFactura_Administracion_Documento1]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave principal de la tabla Administracion_Documento que identifica a los Tipos de Documentos que se encuentran capturados en el sistema, por ejemplo: Bill, Factura, etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_BillFactura', @level2type=N'COLUMN',@level2name=N'CveAdministracion_Documento_Factura'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave principal de la tabla Administracion_Documento que identifica a los Tipos de Documentos que se encuentran capturados en el sistema, por ejemplo: Bill, Factura, etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_BillFactura', @level2type=N'COLUMN',@level2name=N'CveAdministracion_Documento_Bill'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Clave que identifica los Tipos de Moneda utilizados en el Documento Bill Factura, por ejemplo:Dolares, Moneda, etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_BillFactura', @level2type=N'COLUMN',@level2name=N'CveMonedaBill'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Clave de la tabla Empleado que identifica a los Empleados que se encuentran capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_BillFactura', @level2type=N'COLUMN',@level2name=N'CveEmpleado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica el Monto Total  en Moneda generado por el Documento Bill - Factura' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_BillFactura', @level2type=N'COLUMN',@level2name=N'MontoMoneda'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica el Monto Total  en Pesos generado por el Documento  Bill - Factura' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_BillFactura', @level2type=N'COLUMN',@level2name=N'MontoPesos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Tipo de Cambio utilizado en el Documento Bill - Factura' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_BillFactura', @level2type=N'COLUMN',@level2name=N'TipoDeCambio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica el Factor de Asignación del Documento Bill -  Factura' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_BillFactura', @level2type=N'COLUMN',@level2name=N'FactorDeAsignacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Porcentaje facturado del Documento  Bill - Factura' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_BillFactura', @level2type=N'COLUMN',@level2name=N'PorcentajeFacturado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra la Fecha de Aplicación del Documento Bill - Factura' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_BillFactura', @level2type=N'COLUMN',@level2name=N'FechaAplicacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra la Fecha en que se da de Alta el Documento Bill -  Factura' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_BillFactura', @level2type=N'COLUMN',@level2name=N'FechaAlta'
GO
