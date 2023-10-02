USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_Cobranza_Semaforo]    Script Date: 01/12/2014 08:00:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administracion_Cobranza_Semaforo](
	[CveAdministracion_Cobranza_Semaforo] [int] NOT NULL,
	[Descripcion] [varchar](250) NULL,
	[Color] [varchar](50) NULL,
	[Dias] [int] NULL,
 CONSTRAINT [PK_Administracion_Cobranza_Semaforo] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_Cobranza_Semaforo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla que identifica a los Semaforos de Cobranza capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Cobranza_Semaforo', @level2type=N'COLUMN',@level2name=N'CveAdministracion_Cobranza_Semaforo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del estado del Semaforo de Cobranza' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Cobranza_Semaforo', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del color de la Cobranza Semaforo que indica su estatus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Cobranza_Semaforo', @level2type=N'COLUMN',@level2name=N'Color'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica los días en los que se efectuará la Cobranza Semaforo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_Cobranza_Semaforo', @level2type=N'COLUMN',@level2name=N'Dias'
GO
