CREATE TABLE dbo.estudiantes_registros (
ID_Estudiantes INT PRIMARY KEY IDENTITY(1,1),
Nombre VARCHAR(100),
Apellido VARCHAR(100),
Email VARCHAR(150)
)

CREATE TABLE dbo.profesores_registros (
ID_profesores INT PRIMARY KEY IDENTITY(1,1),
Nombre VARCHAR(100),
Email VARCHAR(150),
)

CREATE TABLE dbo.Curso_registros (
ID_curso INT PRIMARY KEY IDENTITY(1,1),
Curso VARCHAR(100),
)

CREATE TABLE dbo.aula_depart_registros (
ID_aula INT PRIMARY KEY IDENTITY(1,1),
Aula VARCHAR(100),
Departamento VARCHAR(120)
)

CREATE TABLE dbo.pago_registros (
ID_pago INT PRIMARY KEY IDENTITY(1,1),
Estado VARCHAR(100),
Metodo VARCHAR(150)
)

INSERT INTO dbo.estudiantes_registros (Nombre, Apellido, Email)
SELECT Nombre_Estudiante, Nombre_Estudiante, Email_Estudiante
FROM dbo.Estudiantes

INSERT INTO dbo.profesores_registros (Nombre, Email)
SELECT Profesor_Curso, Email_Profesor
FROM dbo.Estudiantes

INSERT INTO dbo.Curso_registros (Curso)
SELECT Curso_Asignado
FROM dbo.Estudiantes

INSERT INTO dbo.pago_registros (Estado, Metodo)
SELECT Estado_Pago, Metodo_Pago
FROM dbo.Estudiantes

