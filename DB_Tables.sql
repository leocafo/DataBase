/****** Object:  Table [dbo].[Calificacion]    Script Date: 20/12/2019 11:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificacion](
	[idCalificacion] [int] NOT NULL,
	[idAlumno] [int] NULL,
	[idGrupo] [int] NULL,
	[promedio] [int] NULL,
	[observacion] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCalificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Matricula]    Script Date: 20/12/2019 11:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matricula](
	[idMatricula] [int] NULL,
	[idSemestre] [int] NULL,
	[idAlumno] [int] NULL,
	[numeroCreditos] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Semestre]    Script Date: 20/12/2019 11:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Semestre](
	[idSemestre] [int] NOT NULL,
	[fechaInicio] [date] NULL,
	[fechaFinal] [date] NULL,
	[periodoAcademico] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idSemestre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Materias].[Carrera]    Script Date: 20/12/2019 11:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Materias].[Carrera](
	[idCarrera] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
	[numeroCreditos] [int] NULL,
	[numeroSemestres] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Materias].[Carrera_Materia]    Script Date: 20/12/2019 11:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Materias].[Carrera_Materia](
	[idMateria] [int] NULL,
	[idCarrera] [int] NULL,
	[idMateriaCarrera] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Materias].[CarreraMateria]    Script Date: 20/12/2019 11:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Materias].[CarreraMateria](
	[idMateria] [int] NULL,
	[idCarrera] [int] NULL,
	[idMateriaCarrera] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Materias].[Grupos]    Script Date: 20/12/2019 11:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Materias].[Grupos](
	[idGrupos] [int] NOT NULL,
	[idMateria] [int] NULL,
	[idProfesor] [int] NULL,
	[nombre] [varchar](100) NULL,
	[salon] [varchar](100) NULL,
	[horario] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idGrupos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Materias].[Materias]    Script Date: 20/12/2019 11:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Materias].[Materias](
	[idMateria] [int] NULL,
	[nombre] [text] NULL,
	[numeroCreditos] [int] NULL,
	[fechaCreacion] [date] NULL,
	[fechaActualizacion] [date] NULL,
	[fechaCierre] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [Personas].[Administrativo]    Script Date: 20/12/2019 11:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Personas].[Administrativo](
	[id] [int] NULL,
	[tipodeCargo] [int] NULL,
	[idIngreso] [int] NULL,
	[idPersona] [int] NULL,
	[fechaIngreso] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Personas].[Alumno]    Script Date: 20/12/2019 11:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Personas].[Alumno](
	[idAlumno] [varchar](100) NULL,
	[idPersona] [varchar](100) NULL,
	[idGrupo] [varchar](100) NULL,
	[codigoMatricula] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Personas].[Ingreso]    Script Date: 20/12/2019 11:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Personas].[Ingreso](
	[id] [int] NULL,
	[eps] [int] NULL,
	[arl] [int] NULL,
	[pension] [int] NULL,
	[cesantias] [int] NULL,
	[salario] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Personas].[Persona]    Script Date: 20/12/2019 11:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Personas].[Persona](
	[idPersona] [varchar](100) NULL,
	[nombre] [varchar](100) NULL,
	[apellido] [varchar](100) NULL,
	[tipoDocumento] [varchar](100) NULL,
	[numeroDocuemnto] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[telefono] [int] NULL,
	[rh] [varchar](100) NULL,
	[fechaDeNacimiento] [date] NULL,
	[lugarNacimiento] [varchar](100) NULL,
	[contactoEmergencia] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Personas].[Profesor]    Script Date: 20/12/2019 11:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Personas].[Profesor](
	[idProfesor] [int] NULL,
	[idPersona] [int] NULL,
	[titulo] [varchar](100) NULL,
	[idIngreso] [int] NULL,
	[cantidadGrupos] [int] NULL
) ON [PRIMARY]

GO

