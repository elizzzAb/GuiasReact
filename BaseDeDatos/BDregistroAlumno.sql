Use registroAlumno;
CREATE TABLE alumno(
id int IDENTITY (1,1) primary key,
dni VARCHAR (8) NOT NULL,
nombre VARCHAR(255) NOT NULL,
direccion VARCHAR (255) NOT NULL,
edad int NOT NULL,
email VARCHAR (100) NOT NULL
);

CREATE TABLE profesor(
usuario VARCHAR(255) PRIMARY KEY,
pass VARCHAR (255) NOT NULL, 
nombre VARCHAR (255) NOT NULL, 
email VARCHAR (255) NOT NULL
);

CREATE TABLE asignatura(
id	INT	 IDENTITY (1,1) PRIMARY KEY,
nombre VARCHAR (255) NOT NULL, 
creditos INT DEFAULT 0 NOT NULL, 
profesor VARCHAR(255),
FOREIGN KEY (profesor) REFERENCES profesor(usuario)
);

CREATE TABLE matricula(
	id int IDENTITY(1,1) PRIMARY KEY,
	alumnoId INT NOT NULL, 
	asignaturaId INT NOT NULL, 
	FOREIGN KEY (alumnoId) REFERENCES  alumno(id),
	FOREIGN KEY (asignaturaId) REFERENCES asignatura(Id)
);

CREATE TABLE  calificacion (
	id int IDENTITY(1,1) PRIMARY KEY,
	descripcion VARCHAR (255) NOT NULL,
	nota REAL NOT NULL,
	porcentaje INT NOT NULL, 
	matriculaId INT NOT NULL, 
	FOREIGN KEY (matriculaId) REFERENCES matricula(id)

);


USE registroAlumno

INSERT INTO [dbo].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('4570012T','Miguel Alba Mu�oz','C/Catadores 6',21,'miguel@gmail.com');
INSERT INTO [dbo].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('5540004H','Jesus Rosado P�rez','C/Espronceda 57',21,'jesus@gmail.com');
INSERT INTO [dbo].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('3714623B','Ana Mart�nez Segura','C/Ave 1',19,'ana@gmail.com');
INSERT INTO [dbo].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('8172446X','Naiara G�mez Lucero','C/Rafael Alberti 5',20,'naiara@hotmail.com');
INSERT INTO [dbo].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('6623895J','Pedro Giraldo S�nchez','C/Cerro �guila 122',21,'pedro@gmail.com');
INSERT INTO [dbo].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('1465252W','Mar�a P�rez L�pez','C/Cielo S/N',18,'maria@gmail.com');
INSERT INTO [dbo].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('1012618H','Luis Rodr�guez Lances','C/Ceuta 41',19,'luis@gmail.com');
INSERT INTO [dbo].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('4142276Q','Roc�o Ruiz Ruiz','C/Ben�tez 3',20,'rocio@gmail.com');
INSERT INTO [dbo].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('3116151Y','Diego Manzorro Rodr�guez','C/Isla 5',20,'diego@gmail.com');
INSERT INTO [dbo].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('3970711M','Antonio Cobelo S�nchez','C/Muniera 7',21,'antonio@gmail.com');

/*Tabla profesores*/
INSERT INTO [dbo].[profesor]([usuario],[pass],[nombre],[email]) VALUES ('rocio','1234','Rocio S�nchez Jim�nez','rocio@gmail.com');
INSERT INTO [dbo].[profesor]([usuario],[pass],[nombre],[email]) VALUES ('julio','1234','Julio Cerro Garc�s','julio@gmail.com');
INSERT INTO [dbo].[profesor]([usuario],[pass],[nombre],[email]) VALUES ('ivan','1234','Ivan Mart�nez Recio','ivan@gmail.com');

/*Tabla asignaturas*/
INSERT INTO [dbo].[asignatura]([nombre],[creditos],[profesor]) VALUES('Matem�ticas',6,'rocio');
INSERT INTO [dbo].[asignatura]([nombre],[creditos],[profesor]) VALUES('Inform�tica',4,'rocio');
INSERT INTO [dbo].[asignatura]([nombre],[creditos],[profesor]) VALUES('Ingl�s',5,'julio');
INSERT INTO [dbo].[asignatura]([nombre],[creditos],[profesor]) VALUES('Lengua',6,'ivan');

/*Tabla matricula*/
INSERT INTO [dbo].[matricula]([alumnoId],[asignaturaId]) VALUES(1,1);
INSERT INTO [dbo].[matricula]([alumnoId],[asignaturaId]) VALUES(1,2);
INSERT INTO [dbo].[matricula]([alumnoId],[asignaturaId]) VALUES(1,3);
INSERT INTO [dbo].[matricula]([alumnoId],[asignaturaId]) VALUES(2,2);
INSERT INTO [dbo].[matricula]([alumnoId],[asignaturaId]) VALUES(3,3);
INSERT INTO [dbo].[matricula]([alumnoId],[asignaturaId]) VALUES(3,4);
INSERT INTO [dbo].[matricula]([alumnoId],[asignaturaId]) VALUES(4,1);
INSERT INTO [dbo].[matricula]([alumnoId],[asignaturaId]) VALUES(5,2);
INSERT INTO [dbo].[matricula]([alumnoId],[asignaturaId]) VALUES(5,3);
INSERT INTO [dbo].[matricula]([alumnoId],[asignaturaId]) VALUES(6,1);
INSERT INTO [dbo].[matricula]([alumnoId],[asignaturaId]) VALUES(7,4);
INSERT INTO [dbo].[matricula]([alumnoId],[asignaturaId]) VALUES(8,3);
INSERT INTO [dbo].[matricula]([alumnoId],[asignaturaId]) VALUES(8,4);
INSERT INTO [dbo].[matricula]([alumnoId],[asignaturaId]) VALUES(9,2);
INSERT INTO [dbo].[matricula]([alumnoId],[asignaturaId]) VALUES(9,3);
INSERT INTO [dbo].[matricula]([alumnoId],[asignaturaId]) VALUES(10,4);

--------------------------------------------------------------------------------

Use [registroAlumno]
GO
SELECT [id], [dni], [nombre], [direccion], [edad], [email]
FROM [dbo].[alumno]
GO


--Nos indica qu� nombre pertenece qu� nombre y a cu�ntas asignaturas pertenece un estudiante.
Select a.nombre, asig.nombre From alumno a 
 left join matricula m on m.alumnoId = a.id
 left join asignatura asig on asig.id = m.asignaturaId 
 GO

 --gu�a 8
 Select * from alumno a 
left join matricula m on a.id = m.alumnoId
left join asignatura asig on asig.id = m.asignaturaId
Where asig.profesor = 'ivan'

Select 
a.id, a.dni, 
a.nombre, 
a.direccion, 
a.edad, 
a.email, 
asig.nombre
from alumno a 
left join matricula m on a.id = m.alumnoId
left join asignatura asig on asig.id = m.asignaturaId
Where asig.profesor = 'ivan'

--gu�a 10

--Select a.id, a.nombre, s.id, s.nombre FROM alumno a 
--left join matricula m on a.id = m.alumnoId 
--left join asignatura a on m.asignaturaId = s.id 
--WHERE a.nombre = 'Miguel';

Select a.id, a.nombre, a.id, a.nombre 
FROM alumno a
left join matricula m on a.id = m.alumnoId
left join asignatura s on m.asignaturaId = s.id
WHERE a.nombre = 'Miguel';


 Select a.id, a.nombre, s.id, s.nombre From alumno a 
  left join matricula m on a.id = m.alumnoId
  left join asignatura s on m.asignaturaId = s.id
  
  --Nuevo registro en calificaci�n (gu�a 11)
INSERT INTO [registroAlumno].[dbo].[calificacion] ([descripcion], [nota], [porcentaje], [matriculaId])
VALUES ('Examen', 8, 100, 11);
select * from calificacion
