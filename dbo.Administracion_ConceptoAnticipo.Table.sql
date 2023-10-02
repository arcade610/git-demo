USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_ConceptoAnticipo]    Script Date: 01/12/2014 08:00:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administracion_ConceptoAnticipo](
	[CveAdministracion_ConceptoAnticipo] [int] NOT NULL,
	[Descripcion] [varchar](250) NULL,
	[DescripcionIng] [varchar](250) NULL,
 CONSTRAINT [PK_Administracion_ConceptoAnticipo] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_ConceptoAnticipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
