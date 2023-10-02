USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_Copiado_Tarifa]    Script Date: 01/12/2014 08:00:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administracion_Copiado_Tarifa](
	[CveAdministracion_Copiado_Tarifa] [int] NOT NULL,
	[CveAdministracion_Copiado_TipoTrabajo] [int] NULL,
	[CveCliente] [int] NULL,
	[CveAsunto] [int] NULL,
	[CveMoneda] [int] NULL,
	[Costo] [numeric](19, 2) NULL,
	[FechaEfectiva] [datetime] NULL,
	[FechaAlta] [datetime] NULL,
 CONSTRAINT [PK_Administracion_Copiado_Tarifa] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_Copiado_Tarifa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Administracion_Copiado_Tarifa]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Copiado_Tarifa_Administacion_Copiado_TipoTrabajo] FOREIGN KEY([CveAdministracion_Copiado_TipoTrabajo])
REFERENCES [dbo].[Administracion_Copiado_TipoTrabajo] ([CveAdministracion_Copiado_TipoTrabajo])
GO
ALTER TABLE [dbo].[Administracion_Copiado_Tarifa] CHECK CONSTRAINT [FK_Administracion_Copiado_Tarifa_Administacion_Copiado_TipoTrabajo]
GO
ALTER TABLE [dbo].[Administracion_Copiado_Tarifa]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Copiado_Tarifa_Moneda] FOREIGN KEY([CveMoneda])
REFERENCES [dbo].[Moneda] ([CveMoneda])
GO
ALTER TABLE [dbo].[Administracion_Copiado_Tarifa] CHECK CONSTRAINT [FK_Administracion_Copiado_Tarifa_Moneda]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla que que identifica las Tarifas de Copiado capturadas en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Tarifa', @level2type=N'COLUMN',@level2name=N'CveAdministracion_Copiado_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Administracion_Copiado_TipoTrabajo que identifica a todos los Tipos de Trabajo de Copiado capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Tarifa', @level2type=N'COLUMN',@level2name=N'CveAdministracion_Copiado_TipoTrabajo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Moneda que identifica  el tipo de Moneda capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Tarifa', @level2type=N'COLUMN',@level2name=N'CveMoneda'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Costo del Tipo de Trabajo Copiado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Tarifa', @level2type=N'COLUMN',@level2name=N'Costo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se hace efectiva  la Tarifa de Copiado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Tarifa', @level2type=N'COLUMN',@level2name=N'FechaEfectiva'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se da de alta la Tarifa de Copiado ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Tarifa', @level2type=N'COLUMN',@level2name=N'FechaAlta'
GO
