USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_Convenio]    Script Date: 01/12/2014 08:00:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administracion_Convenio](
	[CveAdministracion_Convenio] [int] NOT NULL,
	[CveCliente] [int] NULL,
	[CveMoneda] [int] NULL,
	[Monto] [numeric](19, 2) NULL,
	[Horas] [numeric](19, 2) NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFin] [datetime] NULL,
 CONSTRAINT [PK_Administracion_Convenio] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_Convenio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Administracion_Convenio]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Convenio_Cliente] FOREIGN KEY([CveCliente])
REFERENCES [dbo].[Cliente] ([CveCliente])
GO
ALTER TABLE [dbo].[Administracion_Convenio] CHECK CONSTRAINT [FK_Administracion_Convenio_Cliente]
GO
ALTER TABLE [dbo].[Administracion_Convenio]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_Convenio_Moneda] FOREIGN KEY([CveMoneda])
REFERENCES [dbo].[Moneda] ([CveMoneda])
GO
ALTER TABLE [dbo].[Administracion_Convenio] CHECK CONSTRAINT [FK_Administracion_Convenio_Moneda]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla que identifica a los Convenios capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Convenio', @level2type=N'COLUMN',@level2name=N'CveAdministracion_Convenio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Cliente que identifica a los Clientes capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Convenio', @level2type=N'COLUMN',@level2name=N'CveCliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Moneda que identifica a los tipos de monedas capturados en el sistema ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Convenio', @level2type=N'COLUMN',@level2name=N'CveMoneda'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Monto total del Convenio capturado ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Convenio', @level2type=N'COLUMN',@level2name=N'Monto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Horas invertidas en el Convenio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Convenio', @level2type=N'COLUMN',@level2name=N'Horas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se da Inicio al Convenio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Convenio', @level2type=N'COLUMN',@level2name=N'FechaInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en la que termina el Convenio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Convenio', @level2type=N'COLUMN',@level2name=N'FechaFin'
GO
