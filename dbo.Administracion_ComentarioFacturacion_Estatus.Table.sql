USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_ComentarioFacturacion_Estatus]    Script Date: 01/12/2014 08:00:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administracion_ComentarioFacturacion_Estatus](
	[CveAdministracion_ComentarioFacturacion_Estatus] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Administracion_ComentarioFacturacion_Estatus] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_ComentarioFacturacion_Estatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
