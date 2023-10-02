USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_CodigoTarea]    Script Date: 01/12/2014 08:00:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administracion_CodigoTarea](
	[CveAdministracion_CodigoTarea] [int] NOT NULL,
	[CveEmpleado] [int] NULL,
	[CveCliente] [int] NULL,
	[CveAsunto] [int] NULL,
	[Identificador] [varchar](50) NULL,
	[Descripcion] [varchar](500) NULL,
	[Descripcion_Ing] [varchar](500) NULL,
	[FechaAlta] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[Activo] [bit] NULL,
	[Historico] [bit] NULL CONSTRAINT [DF_Administracion_GlosarioTareas_Historico]  DEFAULT ((0)),
 CONSTRAINT [PK_Administracion_GlosarioTareas] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_CodigoTarea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla que identifica los Códigos de Tareas capturados en el sistema ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoTarea', @level2type=N'COLUMN',@level2name=N'CveAdministracion_CodigoTarea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Empleado que identifica a los Empleados capturados en el sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoTarea', @level2type=N'COLUMN',@level2name=N'CveEmpleado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de los Códigos de Tareas capturados' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoTarea', @level2type=N'COLUMN',@level2name=N'Identificador'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre en Esapañol de los Códigos de Tarea capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoTarea', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre en Inglés  de los Códigos de Tarea capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoTarea', @level2type=N'COLUMN',@level2name=N'Descripcion_Ing'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se dan de Alta los Códigos de Tarea en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoTarea', @level2type=N'COLUMN',@level2name=N'FechaAlta'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se Modifican los Códigos de Tareas en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoTarea', @level2type=N'COLUMN',@level2name=N'FechaModificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si los Códigos de Tarea capturados en el sistema se encuentran  activos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoTarea', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si los Códigos de Tarea capturados son Historicos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoTarea', @level2type=N'COLUMN',@level2name=N'Historico'
GO
