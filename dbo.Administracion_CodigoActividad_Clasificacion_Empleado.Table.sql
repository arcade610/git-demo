USE [GeniusLegal]
GO
/****** Object:  Table [dbo].[Administracion_CodigoActividad_Clasificacion_Empleado]    Script Date: 01/12/2014 08:00:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administracion_CodigoActividad_Clasificacion_Empleado](
	[CveAdministracion_CodigoActividad_Clasificacion] [int] NOT NULL,
	[CveEmpleado] [int] NOT NULL,
 CONSTRAINT [PK_Administracion_CodigoActividad_Clasificacion_Empleado] PRIMARY KEY CLUSTERED 
(
	[CveAdministracion_CodigoActividad_Clasificacion] ASC,
	[CveEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Administracion_CodigoActividad_Clasificacion_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_CodigoActividad_Clasificacion_Empleado_Administracion_CodigoActividad_Clasificacion] FOREIGN KEY([CveAdministracion_CodigoActividad_Clasificacion])
REFERENCES [dbo].[Administracion_CodigoActividad_Clasificacion] ([CveAdministracion_CodigoActividad_Clasificacion])
GO
ALTER TABLE [dbo].[Administracion_CodigoActividad_Clasificacion_Empleado] CHECK CONSTRAINT [FK_Administracion_CodigoActividad_Clasificacion_Empleado_Administracion_CodigoActividad_Clasificacion]
GO
ALTER TABLE [dbo].[Administracion_CodigoActividad_Clasificacion_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Administracion_CodigoActividad_Clasificacion_Empleado_Empleado] FOREIGN KEY([CveEmpleado])
REFERENCES [dbo].[Empleado] ([CveEmpleado])
GO
ALTER TABLE [dbo].[Administracion_CodigoActividad_Clasificacion_Empleado] CHECK CONSTRAINT [FK_Administracion_CodigoActividad_Clasificacion_Empleado_Empleado]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla Administracion_CodigoActividad_Clasificacion que identifica a las Clasificaciones  de los Códigos de Actividad que se encuentran capturados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad_Clasificacion_Empleado', @level2type=N'COLUMN',@level2name=N'CveAdministracion_CodigoActividad_Clasificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave de la tabla que Empleado que identifica a los Empleados capurados en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Administracion_CodigoActividad_Clasificacion_Empleado', @level2type=N'COLUMN',@level2name=N'CveEmpleado'
GO
