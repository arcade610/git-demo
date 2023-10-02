USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_Copiado_Trabajo]    Script Date: 01/12/2014 08:00:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administracion_Copiado_Trabajo](
	[CveAdministracion_Vale] [int] NOT NULL,
	[CveAdministracion_Copiado_Equipos] [int] NULL,
	[CveAdministracion_Copiado_TipoTrabajo] [int] NULL,
	[CveAdministracion_Copiado_Tarifa] [int] NULL,
	[CveTransaccion_nQueue] [int] NULL,
	[CveAdministracion_Copiado_Concepto] [int] NULL,
	[Fecha_Trabajo] [datetime] NULL,
	[Cantidad] [int] NULL,
	[Costo_Unitario] [numeric](19, 2) NULL,
	[CargoADespacho] [bit] NULL CONSTRAINT [DF_Administracion_Copiado_Trabajo_CargoADespacho]  DEFAULT ((0)),
	[CargoPersonal] [bit] NULL CONSTRAINT [DF_Administracion_Copiado_Trabajo_CargoPersonal]  DEFAULT ((0)),
	[CargoSaldoInicial] [bit] NULL CONSTRAINT [DF_Administracion_Copiado_Trabajo_CargoSaldoInicial]  DEFAULT ((0)),
 CONSTRAINT [PK_Administracion_Copiado_Trabajo] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_Vale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Administracion_Copiado_Trabajo]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Copiado_Trabajo_Administacion_Copiado_TipoTrabajo] FOREIGN KEY([CveAdministracion_Copiado_TipoTrabajo])
REFERENCES [dbo].[Administracion_Copiado_TipoTrabajo] ([CveAdministracion_Copiado_TipoTrabajo])
GO
ALTER TABLE [dbo].[Administracion_Copiado_Trabajo] CHECK CONSTRAINT [FK_Administracion_Copiado_Trabajo_Administacion_Copiado_TipoTrabajo]
GO
ALTER TABLE [dbo].[Administracion_Copiado_Trabajo]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Copiado_Trabajo_Administracion_Copiado_Concepto] FOREIGN KEY([CveAdministracion_Copiado_Concepto])
REFERENCES [dbo].[Administracion_Copiado_Concepto] ([CveAdministracion_Copiado_Concepto])
GO
ALTER TABLE [dbo].[Administracion_Copiado_Trabajo] CHECK CONSTRAINT [FK_Administracion_Copiado_Trabajo_Administracion_Copiado_Concepto]
GO
ALTER TABLE [dbo].[Administracion_Copiado_Trabajo]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Copiado_Trabajo_Administracion_Copiado_Equipos] FOREIGN KEY([CveAdministracion_Copiado_Equipos])
REFERENCES [dbo].[Administracion_Copiado_Equipos] ([CveAdministracion_Copiado_Equipos])
GO
ALTER TABLE [dbo].[Administracion_Copiado_Trabajo] CHECK CONSTRAINT [FK_Administracion_Copiado_Trabajo_Administracion_Copiado_Equipos]
GO
ALTER TABLE [dbo].[Administracion_Copiado_Trabajo]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Copiado_Trabajo_Administracion_Copiado_Tarifa] FOREIGN KEY([CveAdministracion_Copiado_Tarifa])
REFERENCES [dbo].[Administracion_Copiado_Tarifa] ([CveAdministracion_Copiado_Tarifa])
GO
ALTER TABLE [dbo].[Administracion_Copiado_Trabajo] CHECK CONSTRAINT [FK_Administracion_Copiado_Trabajo_Administracion_Copiado_Tarifa]
GO
ALTER TABLE [dbo].[Administracion_Copiado_Trabajo]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Copiado_Trabajo_Administracion_Vale] FOREIGN KEY([CveAdministracion_Vale])
REFERENCES [dbo].[Administracion_Vale] ([CveAdministracion_Vale])
GO
ALTER TABLE [dbo].[Administracion_Copiado_Trabajo] CHECK CONSTRAINT [FK_Administracion_Copiado_Trabajo_Administracion_Vale]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla que identifica los Vales capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Trabajo', @level2type=N'COLUMN',@level2name=N'CveAdministracion_Vale'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Administracion_Copiado_Equipos que identifica a los Equipos de Copiado capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Trabajo', @level2type=N'COLUMN',@level2name=N'CveAdministracion_Copiado_Equipos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Administracion_Copiado_TipoTrabajo  que identifica a los Tipos de Trabajo de Copiado capturados en el sistema ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Trabajo', @level2type=N'COLUMN',@level2name=N'CveAdministracion_Copiado_TipoTrabajo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Administracion_Copiado_Tarifa que identifica a todas las Tarifas de Copiado que se encuentran capturadas en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Trabajo', @level2type=N'COLUMN',@level2name=N'CveAdministracion_Copiado_Tarifa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Clave que identifica la transacció' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Trabajo', @level2type=N'COLUMN',@level2name=N'CveTransaccion_nQueue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Administracion_Copiado_Concepto que identifica a los Conceptos de Copiado capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Trabajo', @level2type=N'COLUMN',@level2name=N'CveAdministracion_Copiado_Concepto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Trabajo del Vale' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Trabajo', @level2type=N'COLUMN',@level2name=N'Fecha_Trabajo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cantidad designada para un Trabajo de Copiado determinado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Trabajo', @level2type=N'COLUMN',@level2name=N'Cantidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Costo Unitario del trabajo de copiado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Trabajo', @level2type=N'COLUMN',@level2name=N'Costo_Unitario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si se va a cargar al despacho' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Trabajo', @level2type=N'COLUMN',@level2name=N'CargoADespacho'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si se va a cargar a cuenta personal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Trabajo', @level2type=N'COLUMN',@level2name=N'CargoPersonal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si se va a cargar a saldo inicial' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Copiado_Trabajo', @level2type=N'COLUMN',@level2name=N'CargoSaldoInicial'
GO
