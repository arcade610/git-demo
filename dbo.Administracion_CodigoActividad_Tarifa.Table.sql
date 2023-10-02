USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_CodigoActividad_Tarifa]    Script Date: 01/12/2014 08:00:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administracion_CodigoActividad_Tarifa](
	[CveAdministracion_CodigoActividad_Tarifa] [int] NOT NULL,
	[CveAdministracion_CodigoActividad] [int] NULL,
	[CveEmpresa] [int] NULL,
	[CveMoneda] [int] NULL,
	[Monto] [numeric](19, 2) NULL,
	[FechaEfectiva] [datetime] NULL,
	[FechaAlta] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_Administracion_CodigoActividad_Tarifa] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_CodigoActividad_Tarifa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Administracion_CodigoActividad_Tarifa]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_CodigoActividad_Tarifa_Administracion_CodigoActividad] FOREIGN KEY([CveAdministracion_CodigoActividad])
REFERENCES [dbo].[Administracion_CodigoActividad] ([CveAdministracion_CodigoActividad])
GO
ALTER TABLE [dbo].[Administracion_CodigoActividad_Tarifa] CHECK CONSTRAINT [FK_Administracion_CodigoActividad_Tarifa_Administracion_CodigoActividad]
GO
ALTER TABLE [dbo].[Administracion_CodigoActividad_Tarifa]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_CodigoActividad_Tarifa_Empresa] FOREIGN KEY([CveEmpresa])
REFERENCES [dbo].[Empresa] ([CveEmpresa])
GO
ALTER TABLE [dbo].[Administracion_CodigoActividad_Tarifa] CHECK CONSTRAINT [FK_Administracion_CodigoActividad_Tarifa_Empresa]
GO
ALTER TABLE [dbo].[Administracion_CodigoActividad_Tarifa]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_CodigoActividad_Tarifa_Moneda] FOREIGN KEY([CveMoneda])
REFERENCES [dbo].[Moneda] ([CveMoneda])
GO
ALTER TABLE [dbo].[Administracion_CodigoActividad_Tarifa] CHECK CONSTRAINT [FK_Administracion_CodigoActividad_Tarifa_Moneda]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla que identifica las Tarifas de los Códigos de Actividad capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad_Tarifa', @level2type=N'COLUMN',@level2name=N'CveAdministracion_CodigoActividad_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Administración_CodigoActividad que identifica a los Códigos de Actividad que se encuentran capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad_Tarifa', @level2type=N'COLUMN',@level2name=N'CveAdministracion_CodigoActividad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Empresa que identifica las Empresas capturadas en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad_Tarifa', @level2type=N'COLUMN',@level2name=N'CveEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Moneda que identifica los tipos de Moneda capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad_Tarifa', @level2type=N'COLUMN',@level2name=N'CveMoneda'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Monto total de las tarifas de los Códigos de Actividad que se encuentran capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad_Tarifa', @level2type=N'COLUMN',@level2name=N'Monto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se hacen efectivas las Tarifas de Código de Actividad que se encuentran capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad_Tarifa', @level2type=N'COLUMN',@level2name=N'FechaEfectiva'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se dan de alta las Tarifas de Código de Actividad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad_Tarifa', @level2type=N'COLUMN',@level2name=N'FechaAlta'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se modificaron las tarifas de los  Códigos de Actividad que se encuentran capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad_Tarifa', @level2type=N'COLUMN',@level2name=N'FechaModificacion'
GO
