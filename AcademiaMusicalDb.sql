USE [master]
GO
/****** Object:  Database [AcademiaMusicalDb]    Script Date: 8/23/2024 9:51:47 PM ******/
CREATE DATABASE [AcademiaMusicalDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AcademiaMusicalDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\AcademiaMusicalDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AcademiaMusicalDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\AcademiaMusicalDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AcademiaMusicalDb] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AcademiaMusicalDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AcademiaMusicalDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AcademiaMusicalDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AcademiaMusicalDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AcademiaMusicalDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AcademiaMusicalDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [AcademiaMusicalDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AcademiaMusicalDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AcademiaMusicalDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AcademiaMusicalDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AcademiaMusicalDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AcademiaMusicalDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AcademiaMusicalDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AcademiaMusicalDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AcademiaMusicalDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AcademiaMusicalDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AcademiaMusicalDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AcademiaMusicalDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AcademiaMusicalDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AcademiaMusicalDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AcademiaMusicalDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AcademiaMusicalDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AcademiaMusicalDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AcademiaMusicalDb] SET RECOVERY FULL 
GO
ALTER DATABASE [AcademiaMusicalDb] SET  MULTI_USER 
GO
ALTER DATABASE [AcademiaMusicalDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AcademiaMusicalDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AcademiaMusicalDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AcademiaMusicalDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AcademiaMusicalDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AcademiaMusicalDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'AcademiaMusicalDb', N'ON'
GO
ALTER DATABASE [AcademiaMusicalDb] SET QUERY_STORE = ON
GO
ALTER DATABASE [AcademiaMusicalDb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [AcademiaMusicalDb]
GO
/****** Object:  Table [dbo].[Conciertos]    Script Date: 8/23/2024 9:51:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conciertos](
	[ConciertoID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Fecha] [date] NULL,
	[Ubicacion] [varchar](150) NULL,
	[CursoID] [int] NULL,
 CONSTRAINT [PK_Conciertos] PRIMARY KEY CLUSTERED 
(
	[ConciertoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 8/23/2024 9:51:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursos](
	[CursoID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Horario] [varchar](50) NULL,
	[Duracion] [varchar](50) NULL,
	[ProfesorID] [int] NULL,
 CONSTRAINT [PK_Cursos] PRIMARY KEY CLUSTERED 
(
	[CursoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 8/23/2024 9:51:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[EstudianteID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Matricula] [varchar](25) NULL,
	[CursoID] [int] NULL,
	[Edad] [tinyint] NULL,
	[Email] [varchar](100) NULL,
	[Telefono] [bigint] NULL,
 CONSTRAINT [PK_Estudiantes] PRIMARY KEY CLUSTERED 
(
	[EstudianteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inscripciones]    Script Date: 8/23/2024 9:51:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inscripciones](
	[InscripcionID] [int] NOT NULL,
	[EstudianteID] [int] NULL,
	[CursoID] [int] NULL,
	[FechaInscripcion] [date] NULL,
	[Estado] [varchar](50) NULL,
 CONSTRAINT [PK_Inscripciones] PRIMARY KEY CLUSTERED 
(
	[InscripcionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 8/23/2024 9:51:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesores](
	[ProfesorID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Especialidad] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Telefono] [bigint] NULL,
 CONSTRAINT [PK_Profesores] PRIMARY KEY CLUSTERED 
(
	[ProfesorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Conciertos] ([ConciertoID], [Nombre], [Fecha], [Ubicacion], [CursoID]) VALUES (1, N'Concierto de Guitarra', CAST(N'2024-08-01' AS Date), N'Auditorio Principal', 1)
INSERT [dbo].[Conciertos] ([ConciertoID], [Nombre], [Fecha], [Ubicacion], [CursoID]) VALUES (2, N'Recital de Piano', CAST(N'2024-08-15' AS Date), N'	Sala de Conciertos', 2)
INSERT [dbo].[Conciertos] ([ConciertoID], [Nombre], [Fecha], [Ubicacion], [CursoID]) VALUES (3, N'Muestra Coral', CAST(N'2024-08-22' AS Date), N'Teatro Municipal', 3)
INSERT [dbo].[Conciertos] ([ConciertoID], [Nombre], [Fecha], [Ubicacion], [CursoID]) VALUES (4, N'Concierto de Violín	', CAST(N'2024-08-05' AS Date), N'Auditorio Principal', 4)
INSERT [dbo].[Conciertos] ([ConciertoID], [Nombre], [Fecha], [Ubicacion], [CursoID]) VALUES (5, N'Clases de Teoria Musical', CAST(N'2024-08-12' AS Date), N'Sala de Clases', 5)
INSERT [dbo].[Conciertos] ([ConciertoID], [Nombre], [Fecha], [Ubicacion], [CursoID]) VALUES (6, N'Taller de Composicion', CAST(N'2024-08-19' AS Date), N'Centro Cultural', 6)
INSERT [dbo].[Conciertos] ([ConciertoID], [Nombre], [Fecha], [Ubicacion], [CursoID]) VALUES (7, N'Concierto de Percusion', CAST(N'2024-08-03' AS Date), N'Teatro Municipal', 7)
INSERT [dbo].[Conciertos] ([ConciertoID], [Nombre], [Fecha], [Ubicacion], [CursoID]) VALUES (8, N'Historia en Vivo', CAST(N'2024-08-10' AS Date), N'Auditorio Principal', 8)
INSERT [dbo].[Conciertos] ([ConciertoID], [Nombre], [Fecha], [Ubicacion], [CursoID]) VALUES (9, N'Improvisacion Jazz en Vivo', CAST(N'2024-08-17' AS Date), N'Sala de Conciertos', 9)
INSERT [dbo].[Conciertos] ([ConciertoID], [Nombre], [Fecha], [Ubicacion], [CursoID]) VALUES (10, N'Noche Electronica', CAST(N'2024-05-24' AS Date), N'Centro Cultural', 10)
GO
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Horario], [Duracion], [ProfesorID]) VALUES (1, N'Guitarra Basica', N'Lunes y Miercoles 10:00-11:30', N'3 meses', 1)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Horario], [Duracion], [ProfesorID]) VALUES (2, N'Piano Avanzado', N'Martes y Jueves 15:00-16:30 ', N'4 meses', 2)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Horario], [Duracion], [ProfesorID]) VALUES (3, N'Canto Coral', N'Viernes 17:00-19:00', N'2 meses', 3)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Horario], [Duracion], [ProfesorID]) VALUES (4, N'Violin Inicial', N'Lunes y Miercoles 14:00-15:30', N'6 meses', 10)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Horario], [Duracion], [ProfesorID]) VALUES (5, N'Teoria musical', N'Martes 10:00-12:00', N'1 mes', 4)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Horario], [Duracion], [ProfesorID]) VALUES (6, N'Armonia y Composicion', N'Jueves 18:00-20:00', N'5 meses', 5)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Horario], [Duracion], [ProfesorID]) VALUES (7, N'Percusion', N'Sabado 11:00-13:00', N'3 meses', 6)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Horario], [Duracion], [ProfesorID]) VALUES (8, N'Historia de la Musica', N'Miercoles 16:00-18:00', N'2 meses', 7)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Horario], [Duracion], [ProfesorID]) VALUES (9, N'Improvizacion de Jazz', N'Viernes 20:00-22:00', N'4 meses', 8)
INSERT [dbo].[Cursos] ([CursoID], [Nombre], [Horario], [Duracion], [ProfesorID]) VALUES (10, N'Musica Electronica', N'	Sabado 15:00-17:00', N'3 meses', 9)
GO
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellido], [Matricula], [CursoID], [Edad], [Email], [Telefono]) VALUES (1, N'Cindy', N'Moron', N'2024M0001', 10, 21, N'cmoron@gmail.com', 8094264526)
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellido], [Matricula], [CursoID], [Edad], [Email], [Telefono]) VALUES (2, N'Dahiana', N'Baez', N'2024M0002', 9, 15, N'dbaez@gmail.com', 8297546576)
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellido], [Matricula], [CursoID], [Edad], [Email], [Telefono]) VALUES (3, N'Engel', N'Pujols', N'2024M0003', 8, 18, N'epujols@gmail.com', 8493275752)
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellido], [Matricula], [CursoID], [Edad], [Email], [Telefono]) VALUES (4, N'Ricardo', N'Salado', N'2024M0004', 7, 22, N'rsalado@gmail.com', 8296412765)
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellido], [Matricula], [CursoID], [Edad], [Email], [Telefono]) VALUES (5, N'Amaury', N'Comas', N'2024M0005', 6, 14, N'acomas@gmail.com', 8491275997)
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellido], [Matricula], [CursoID], [Edad], [Email], [Telefono]) VALUES (6, N'Ramon', N'Medrano', N'2024M0006', 5, 19, N'rmedrano@gmail.com', 8091656741)
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellido], [Matricula], [CursoID], [Edad], [Email], [Telefono]) VALUES (7, N'Danybell', N'Rosario', N'2024M0007', 4, 20, N'drosario@gmail.com', 8094262621)
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellido], [Matricula], [CursoID], [Edad], [Email], [Telefono]) VALUES (8, N'Joyfer', N'Williams', N'2024M0008', 3, 14, N'jwillians@gmail.com', 8497265479)
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellido], [Matricula], [CursoID], [Edad], [Email], [Telefono]) VALUES (9, N'Sandy', N'Medina', N'2024M0009', 2, 17, N'smedina@gmail.com', 8099162766)
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Apellido], [Matricula], [CursoID], [Edad], [Email], [Telefono]) VALUES (10, N'Lorena', N'Jimenez', N'2024M0010', 1, 13, N'ljimenez@gmail.com', 8294645651)
GO
INSERT [dbo].[Inscripciones] ([InscripcionID], [EstudianteID], [CursoID], [FechaInscripcion], [Estado]) VALUES (1, 1, 10, CAST(N'2024-06-10' AS Date), N'Activo')
INSERT [dbo].[Inscripciones] ([InscripcionID], [EstudianteID], [CursoID], [FechaInscripcion], [Estado]) VALUES (2, 2, 9, CAST(N'2024-06-11' AS Date), N'Activo')
INSERT [dbo].[Inscripciones] ([InscripcionID], [EstudianteID], [CursoID], [FechaInscripcion], [Estado]) VALUES (3, 3, 8, CAST(N'2024-06-12' AS Date), N'Activo')
INSERT [dbo].[Inscripciones] ([InscripcionID], [EstudianteID], [CursoID], [FechaInscripcion], [Estado]) VALUES (4, 4, 7, CAST(N'2024-06-13' AS Date), N'Activo')
INSERT [dbo].[Inscripciones] ([InscripcionID], [EstudianteID], [CursoID], [FechaInscripcion], [Estado]) VALUES (5, 5, 6, CAST(N'2024-06-14' AS Date), N'Activo')
INSERT [dbo].[Inscripciones] ([InscripcionID], [EstudianteID], [CursoID], [FechaInscripcion], [Estado]) VALUES (6, 6, 5, CAST(N'2024-06-15' AS Date), N'Activo')
INSERT [dbo].[Inscripciones] ([InscripcionID], [EstudianteID], [CursoID], [FechaInscripcion], [Estado]) VALUES (7, 7, 4, CAST(N'2024-06-16' AS Date), N'Activo')
INSERT [dbo].[Inscripciones] ([InscripcionID], [EstudianteID], [CursoID], [FechaInscripcion], [Estado]) VALUES (8, 8, 3, CAST(N'2024-06-17' AS Date), N'Activo')
INSERT [dbo].[Inscripciones] ([InscripcionID], [EstudianteID], [CursoID], [FechaInscripcion], [Estado]) VALUES (9, 9, 2, CAST(N'2024-06-18' AS Date), N'Activo')
INSERT [dbo].[Inscripciones] ([InscripcionID], [EstudianteID], [CursoID], [FechaInscripcion], [Estado]) VALUES (10, 10, 1, CAST(N'2024-06-19' AS Date), N'Activo')
GO
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellido], [Especialidad], [Email], [Telefono]) VALUES (1, N'Marilena', N'Ramirez', N'Guitarra', N'mramirez@gmail.com', 8293871453)
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellido], [Especialidad], [Email], [Telefono]) VALUES (2, N'Angel', N'Vazquez', N'Piano', N'avazquez@gmail.com', 8093848384)
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellido], [Especialidad], [Email], [Telefono]) VALUES (3, N'Victor', N'Morillo', N'Canto', N'vmorillo@gmail.com', 8492968847)
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellido], [Especialidad], [Email], [Telefono]) VALUES (4, N'Guina', N'Herrera', N'Teoria Musical', N'gherrera@gmail.com', 8095219384)
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellido], [Especialidad], [Email], [Telefono]) VALUES (5, N'Santo', N'Figueroa', N'Composicion', N'sfigueroa@gmail.com', 8093983773)
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellido], [Especialidad], [Email], [Telefono]) VALUES (6, N'Hamlet', N'Castillo', N'Percusion', N'hcastillo@gmail.com', 8497757521)
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellido], [Especialidad], [Email], [Telefono]) VALUES (7, N'Vincent', N'Guerrero', N'Historia de la Musica', N'vguerrero@gmail.com', 8092458547)
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellido], [Especialidad], [Email], [Telefono]) VALUES (8, N'Daniel', N'Martinez', N'Jazz', N'dmartinez@gmail.com', 8297585685)
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellido], [Especialidad], [Email], [Telefono]) VALUES (9, N'Claribel', N'Peguero', N'Musica electronica', N'cpeguero@gmail.com', 8093826241)
INSERT [dbo].[Profesores] ([ProfesorID], [Nombre], [Apellido], [Especialidad], [Email], [Telefono]) VALUES (10, N'Manuel', N'Perez', N'Violin', N'mperez@gmail.com', 8491346952)
GO
ALTER TABLE [dbo].[Conciertos]  WITH CHECK ADD  CONSTRAINT [FK_Conciertos_Cursos] FOREIGN KEY([CursoID])
REFERENCES [dbo].[Cursos] ([CursoID])
GO
ALTER TABLE [dbo].[Conciertos] CHECK CONSTRAINT [FK_Conciertos_Cursos]
GO
ALTER TABLE [dbo].[Cursos]  WITH CHECK ADD  CONSTRAINT [FK_Cursos_Profesores] FOREIGN KEY([ProfesorID])
REFERENCES [dbo].[Profesores] ([ProfesorID])
GO
ALTER TABLE [dbo].[Cursos] CHECK CONSTRAINT [FK_Cursos_Profesores]
GO
ALTER TABLE [dbo].[Estudiantes]  WITH CHECK ADD  CONSTRAINT [FK_Estudiantes_Cursos] FOREIGN KEY([CursoID])
REFERENCES [dbo].[Cursos] ([CursoID])
GO
ALTER TABLE [dbo].[Estudiantes] CHECK CONSTRAINT [FK_Estudiantes_Cursos]
GO
ALTER TABLE [dbo].[Inscripciones]  WITH CHECK ADD  CONSTRAINT [FK_Inscripciones_Cursos] FOREIGN KEY([CursoID])
REFERENCES [dbo].[Cursos] ([CursoID])
GO
ALTER TABLE [dbo].[Inscripciones] CHECK CONSTRAINT [FK_Inscripciones_Cursos]
GO
ALTER TABLE [dbo].[Inscripciones]  WITH CHECK ADD  CONSTRAINT [FK_Inscripciones_Estudiantes] FOREIGN KEY([EstudianteID])
REFERENCES [dbo].[Estudiantes] ([EstudianteID])
GO
ALTER TABLE [dbo].[Inscripciones] CHECK CONSTRAINT [FK_Inscripciones_Estudiantes]
GO
USE [master]
GO
ALTER DATABASE [AcademiaMusicalDb] SET  READ_WRITE 
GO
