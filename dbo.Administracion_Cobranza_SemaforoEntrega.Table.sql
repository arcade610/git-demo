USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_Cobranza_SemaforoEntrega]    Script Date: 01/12/2014 08:00:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administracion_Cobranza_SemaforoEntrega](
	[CveAdministracion_Cobranza_SemaforoEntrega] [int] NOT NULL,
	[Descripcion] [varchar](250) NULL,
	[Color] [varchar](50) NULL,
	[Dias] [int] NULL,
 CONSTRAINT [PK_Administracion_Cobranza_SemaforoEntrega] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_Cobranza_SemaforoEntrega] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
