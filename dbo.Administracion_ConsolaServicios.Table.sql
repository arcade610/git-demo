USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_ConsolaServicios]    Script Date: 01/12/2014 08:00:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administracion_ConsolaServicios](
	[Caracteres_Cliente] [int] NULL,
	[Caracteres_Asunto] [int] NULL,
	[Caracteres_Empleado] [int] NULL,
	[Caracter_Separacion_ClienteAsunto] [varchar](1) NULL,
	[Tipo_Descomposicion_ClienteAsunto] [int] NULL,
	[Telefonia_Iniciar_Automaticamente_Servicios_Telefonia] [bit] NULL,
	[Telefonia_BD_Homologacion] [varchar](500) NULL,
	[Telefonia_Asignacion_Automatica_ClienteAsunto_Historico] [bit] NULL,
	[Telefonia_Asignacion_Constante] [bit] NULL,
	[Telefonia_Timer_Segundos_SMDR] [int] NULL,
	[Telefonia_Timer_Segundos_CargaLlamadas] [int] NULL,
	[Telefonia_FechaUltimaCarga] [datetime] NULL,
	[Telefonia_VerificaExisteLlamada] [bit] NULL,
	[Copiado_Iniciar_Automaticamente_Servicios] [bit] NULL,
	[Copiado_Lineas_Consola] [int] NULL,
	[Copiado_Timer_Segundos_Carga] [int] NULL,
	[Copiado_Timer_Segundos_Catalogos] [int] NULL,
	[Mensajeria_Iniciar_Automaticamente_Servicios] [bit] NULL,
	[Mensajeria_CSV_Ruta_UPS] [varchar](500) NULL,
	[Mensajeria_Nombre_Archivo_UPS] [varchar](500) NULL,
	[Mensajeria_BD_Ruta_DHL] [varchar](500) NULL,
	[Mensajeria_Timer_Segundos_DHL] [int] NULL,
	[Mensajeria_Timer_Segundos_UPS] [int] NULL,
	[Mensajeria_Clave_Empleado_Carga] [int] NULL,
	[Mensaje_Supervision_Email_1] [varchar](500) NULL,
	[Mensaje_Supervision_Email_2] [varchar](500) NULL,
	[Mensaje_Supervision_Email_3] [varchar](500) NULL,
	[Mensaje_Supervision_Manda] [bit] NULL,
	[Mensaje_Supervision_Timer_Segundos] [int] NULL,
	[Mensaje_Supervision_Cuenta] [varchar](500) NULL,
	[Mensaje_Supervision_Puerto] [int] NULL,
	[Mensaje_Supervision_Subject] [varchar](500) NULL,
	[Mensaje_Supervision_Servidor] [varchar](500) NULL,
	[Mensaje_Supervision_Usuario] [varchar](50) NULL,
	[Mensaje_Supervision_Password] [varchar](500) NULL,
	[CveAdministracion_Mensajeria_Carrier_DHL] [int] NULL,
	[CveAdministracion_Mensajeria_Carrier_UPS] [int] NULL,
	[SmartScreenPaginaInicial] [varchar](500) NULL,
	[SmartScreenTimerPaginaInicial] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Número de Caracteres del Indentificador del Cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Caracteres_Cliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Número de Caracteres del Indentificador del Asunto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Caracteres_Asunto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Número de Caracteres del Indentificador del Empleado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Caracteres_Empleado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra los Caracteres que existen entre el Cliente y el Asunto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Caracter_Separacion_ClienteAsunto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica el Tipo de Descomposición entre el Cliente y el Asunto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Tipo_Descomposicion_ClienteAsunto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si se Iniciará automáticamente el Servicio de Telefonía' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Telefonia_Iniciar_Automaticamente_Servicios_Telefonia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra la Descripción de la telefonía BD de Homologación' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Telefonia_BD_Homologacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si la Telefonía se asignará automáticamente a los Asuntos Históricos de los Clientes capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Telefonia_Asignacion_Automatica_ClienteAsunto_Historico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si la Telefonía se Asignará de manera constante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Telefonia_Asignacion_Constante'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Tiempo en Segundos SMDR invertidos en la Telefonia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Telefonia_Timer_Segundos_SMDR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Tiempo en Segundos invertidos en las Cargas de llamadas Telefónicas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Telefonia_Timer_Segundos_CargaLlamadas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra la Fecha de la última Carga Telefónica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Telefonia_FechaUltimaCarga'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Verifica si existe alguna llamada telefónica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Telefonia_VerificaExisteLlamada'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si se deberán iniciar Automáticamente los Servicios de Copiado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Copiado_Iniciar_Automaticamente_Servicios'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el número de Líneas de la Consola de de Copiado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Copiado_Lineas_Consola'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Tiempo en Segundos invertido en la Carga de Copiado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Copiado_Timer_Segundos_Carga'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Tiempo en segundos de los Catálogos de Copiado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Copiado_Timer_Segundos_Catalogos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si se deberán iniciar automáticamente los Servicios de Mensajeria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Mensajeria_Iniciar_Automaticamente_Servicios'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra la Ruta UPS de Mensajeria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Mensajeria_CSV_Ruta_UPS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra los Nombres de los Archivos UPS de Mensajeria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Mensajeria_Nombre_Archivo_UPS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra la Ruta DHL de Mensajeria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Mensajeria_BD_Ruta_DHL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Tiempo en Segundos de la Mensajeria DHL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Mensajeria_Timer_Segundos_DHL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Tiempo en Segundos de la Mensajeria UPS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Mensajeria_Timer_Segundos_UPS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra la clave  del Empleado que realizó la Carga de Mensajeria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Mensajeria_Clave_Empleado_Carga'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Mensaje de Email1 de Supervisión' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Mensaje_Supervision_Email_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Mensaje de Email2 de Supervisión' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Mensaje_Supervision_Email_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Mensaje de Email3 de Supervisión' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Mensaje_Supervision_Email_3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si el Mensaje de Supervisión fue Enviado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Mensaje_Supervision_Manda'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Tiempo en Segundos del Mensaje de Supervisión' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Mensaje_Supervision_Timer_Segundos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra la Cuenta del Mensaje de Supervisión' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Mensaje_Supervision_Cuenta'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Puerto del Mensaje de Supervisión' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Mensaje_Supervision_Puerto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Subject del Mensaje de Supervisión' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Mensaje_Supervision_Subject'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Nombre del Servidor que administra los  mensajes de Supervisión' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Mensaje_Supervision_Servidor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Nombre del Usuario que supervisa los Mensajes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Mensaje_Supervision_Usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Muestra el Password para acceder a la Supervisión de Mensajes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_ConsolaServicios', @level2type=N'COLUMN',@level2name=N'Mensaje_Supervision_Password'
GO
