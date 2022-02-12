/*Cano Pérez Pedro, No. Cuenta: 2193000343*/

CREATE DATABASE databasename;

use profesores;

/*creación de la tabla congreso*/
create table Congreso(
	idCongreso int auto_increment,
    nombre varchar(45),
    sede varchar(45),
    
    primary key(idCongreso)
);

/*Creación de la tabla artículo*/
create table Articulo(
	idArticulo int auto_increment,
	Nombre varchar(45),
	Num_págs varchar(45),
    
	primary key(idArticulo)
);

/*Creación de la tabla departamento*/
create table Departamento(
	idDepartamento int auto_increment,
	Nombre varchar(45),
    
	primary key(idDepartamento)
);

/*Creación de la tabla categoría*/
create table Categoria(
	idCategoria int auto_increment,
	Categoria varchar(45),
	Sueldo varchar(45), 
    
	primary key(idCategoria)
);

/*Creación de la tabla profesor*/
create table Profesor(
	idProfesor int auto_increment,
	Numero_económico varchar(45),
	Nombre varchar(45),
	Edad int,
	idCategoria int,
	idDepartamento int,
    
    
	primary key(idProfesor),
	FOREIGN KEY (idCategoria) REFERENCES categoria(idCategoria),
	FOREIGN KEY (idDepartamento) REFERENCES departamento(idDepartamento)
);

/*Creación de la tabla escribe*/
create table Escribe(
	idEscribe int auto_increment,
	idProfesor int,
	idArticulo int,
    
	primary key(idEscribe),
   	FOREIGN KEY (idProfesor) REFERENCES profesor(idProfesor),
	FOREIGN KEY (idArticulo) REFERENCES articulo(idArticulo)
);

/*Creación de la tabla asiste*/
create table Asiste(
	idAsiste int auto_increment,
	idProfesor int,
	idCongreso int,
    
	primary key(idAsiste),
	FOREIGN KEY (idProfesor) REFERENCES profesor(idProfesor),
	FOREIGN KEY (idCongreso) REFERENCES congreso(idCongreso)
);

/*inserciones*/
/*departamento*/
insert into profesores.departamento (Nombre)
values 
	("Diseño"),
    ("Matemáticas"), 
    ("Sistemas"),
    ("Física"),
    ("Química");

/*Congreso*/
insert into profesores.congreso (nombre, sede)
values 
	("ISWC", "Portugal"),
    ("CIC", "USA"), 
    ("ROCC", "México"),
    ("PLN", "España"),
    ("SWEBIS", "México");

/*articulo*/
insert into articulo (Nombre, Num_págs)
values
	("Minería de datos en redes sociales", 11),
    ("El futuro de Base de Datos", 6),
    ("Algoritmos bioinspirados", 5),
    ("Algoritmos genético", 12),
    ("Redes neuronales", 4),
    ("Modelo del cerebro humano", 7);

/*Categoría*/
insert into categoria (Categoria, Sueldo)
values
    ("Titular A", 15000),
    ("Titular B", 16000),
    ("Titular C", 22000);

/*Profesor*/
insert into profesor (Numero_económico, Nombre, Edad, idCategoria, idDepartamento)
values
	("38574", "Hugo Estrada", 35, 1, 3),
    ("12584", "Alicia Martinez", 38, 2, 2),
    ("2584", "Máximo López", 39, 3, 3),
    ("96473", "Noé Alejandro", 30, 1, 3),
    ("39874", "Azucena Montes", 32, 1, 2),
    ("25874", "Gabriel Serna", 33, 2, 2),
    ("12566", "Andrea Fuentes", 34, 1, 1),
    ("24987", "José Ruiz", 44, 3, 4);

/*Asiste*/
insert into asiste (idProfesor, idCongreso)
values
	(1, 1),
    (2, 1),
    (1, 2),
    (2, 2),
    (1, 3),
    (1, 4),
    (1, 5);

/*Escribe*/
insert into escribe (idProfesor, idArticulo)
values
	(1, 1),
    (1, 2),
    (1, 3),
    (2, 4),
    (2, 5),
    (4, 6),
    (4, 1);

/*Copia de la tabla Categoría*/
CREATE TABLE categoria2 SELECT * FROM categoria;

/*Actualización de la tabla categoría2*/
update categoria2 set Sueldo = 10000 where Categoria = "Titular A";
update categoria2 set Sueldo = 15000 where Categoria = "Titular B";
update categoria2 set Sueldo = 20000 where Categoria = "Titular C";

/*copia de la tabla profesor*/
CREATE TABLE profesor2 SELECT * FROM profesor;

/*eliminación de "categoría" de la tabla profesor*/
alter table profesor2 drop idDepartamento;
select * from asistencia;

/*creación tabla asistencia*/
create table asistencia(
	ID_ASISTENCIA INT NOT NULL AUTO_INCREMENT,
    PROFESOR_ID INT,
    FECHA DATE,
    HORA TIME,
    
    PRIMARY KEY (ID_ASISTENCIA),
    FOREIGN KEY (ID_ASISTENCIA) REFERENCES profesor(iProfesor)
    
);
/*inserciones de asistencia*/
/*insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20180101 (año/mes/día), '8:00');*/
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20180101, '8:00');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20180102, '8:01');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20180303, '8:02');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20180304, '8:03');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20180305, '8:04');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20180306, '8:06');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20180307, '8:10');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20180308, '8:12');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20180309, '8:22');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20180310, '8:05');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20180311, '8:06');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20180313, '8:07');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20180314, '8:08');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20191102, '8:30');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20191105, '9:00');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20191106, '8:45');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20191107, '8:52');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20101108, '8:37');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20181109, '8:36');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20191110, '8:33');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20200502, '8:48');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20200503, '8:49');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20200504, '8:50');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20200505, '8:51');
insert into asistencia (PROFESOR_ID, FECHA, HORA) values (1, 20200506, '8:53');

/*LISTAR LOS NOMBRES DE TODOS LOS DEPARTAMENTOS*/
SELECT Nombre FROM departamento;

/*MOSTRAR TODA LA INFORMACIÓN DE LOS PROFESORES QUE TENGAN CATEGORÍA 1 DEL DEPARTAMENTO D 3*/
SELECT * FROM profesor WHERE profesor.idCategoria = 1 AND profesor.idDepartamento = 3;

/*MOSTRAR NOMBRE Y CATEGORÍA DE PROFESORES MAYORES A 35 AÑOS*/
SELECT profesor.Nombre, profesor.idCategoria FROM profesor WHERE profesor.Edad > 35;

/*MOSTRAR NOMBRE Y EDAD DE PROFESORES CON SUELDO SUPERIOR A 20 000 QUE SEAN MAYORES A 40 AÑOS Y CON CATEGORÍA 3*/
SELECT profesor.Nombre, profesor.Edad FROM profesor WHERE profesor.Edad > 40 AND profesor.idCategoria = 3;

/*MOSTRAR NOMBRE Y EDAD DE PROFESORES CON SUELDO SUPERIOR A 20 000 QUE SEAN MAYORES A 40 AÑOS Y CON CATEGORÍA 3*/
SELECT profesor.Nombre, profesor.Edad FROM profesor WHERE profesor.Edad > 40 AND profesor.idCategoria = (SELECT categoria.idCategoria FROM categoria WHERE categoria.Sueldo > 20000);

/*MOSTRAR EL NÚMERO ECONÓMICO Y NOMBRE DE LOS PROFESORES CON SUELDO MAYOR A 15000 QUE NO SEAN CATEGORÍA 1*/
SELECT profesor.Numero_económico, profesor.Nombre FROM profesor WHERE profesor.idCategoria != 1;

/*LOCALIZAR LOS ID_PROF DE LOS PROFESORES QUE HAN ASISTIDO A CONGRESOS*/
SELECT DISTINCT asiste.idProfesor FROM asiste;

/*RECUPERAR EL ID DE LOS PROFESORES QUE NO TIENEN RETARDOS, ES DECIR, AQUELLOS PROFESORES QUE SIEMPRE HAN LLEGADO ANTES DE LAS 08 30 HRS*/
SELECT asistencia.PROFESOR_ID FROM asistencia WHERE asistencia.HORA < '08:30';

/*RECUPERAR EL ID DE LOS PROFESORES QUE ASISTIERON EL DÍA 31/DIC/2018*/
SELECT asistencia.PROFESOR_ID FROM asistencia WHERE asistencia.FECHA = '2018-12-31';

/*RECUPERAR TODAS LAS HORAS DE ENTRADA ASOCIADAS AL PROFESOR CON ID= 15*/
SELECT asistencia.HORA FROM asistencia WHERE asistencia.PROFESOR_ID = 15;

/*RECUPERE EL NOMBRE DE TODOS LOS PROFESORES QUE SON CATEGORIA 1*/
SELECT * FROM profesor WHERE profesor.idCategoria = 1;

/*RECUPERE EL ID DEL DEPARTAMENTO DE TODOS LOS PROFESORES QUE TIENEN NÚMERO ECONÓMICO QUE EMPIEZA CON 3*/
SELECT * FROM profesor WHERE profesor.Numero_económico regexp "^3";

/*RECUPERE EL ID DEL DEPARTAMENTO DE TODOS LOS PROFESORES QUE TIENEN NÚMERO ECONÓMICO QUE EMPIEZA CON 3*/
SELECT * FROM profesor WHERE profesor.Numero_económico LIKE "3%";

/*LISTAR NOMBRE DE LOS ARTÍCULOS CON NÚMERO DE PÁGINAS ENTRE 6 Y 12*/
SELECT * FROM articulo WHERE articulo.Num_págs > 6 and articulo.Num_págs < 12;

/*LISTAR NOMBRE DE LOS ARTÍCULOS CON NÚMERO DE PÁGINAS MAYOR A 6 Y QUE ADEMÁS CONTENGA LA PALABRA algoritmo EN SU NOMBRE*/
SELECT * FROM articulo WHERE articulo.Num_págs > 6 and articulo.Nombre like "%algoritmo%";

/*LISTAR NOMBRE DE PROFESORES CUYO NOMBRE NO INICIE CON VOCAL MAYÚSCULA O MINÚSCULA, PERO QUE SUSEGUNDA LETRA SI SEA VOCAL*/
SELECT profesor.Nombre FROM profesor WHERE profesor.Nombre not regexp  "^[aeiou]" and profesor.Nombre regexp "^.[aeiouáéíóú]";

/*LISTAR NOMBRE Y SEDE DE LOS CONGRESOS QUE EL NOMBRE DE LA SEDE INICIE CON CONSONANTE, SEGUIDO DE CUALQUIER CARÁCTER Y DESPUÉS UNA LETRA x*/
SELECT * FROM congreso WHERE congreso.sede not regexp "^[aeiou]" and congreso.sede regexp "[A-Z]" and congreso.sede like "%x%";

/*LISTAR EL ID DE LOS PROFESORES QUE ASITIERON ENTRE EL MES DE MARZO Y EL MES DE SEPTIEMBRE DE 2018*/
SELECT asistencia.PROFESOR_ID, asistencia.FECHA FROM asistencia WHERE asistencia.FECHA > 20180301 and asistencia.FECHA < 20180901;

/**Encontrar el total de profesores por categoría
*Encontrar el total de congresos realizados en Mexico
*Encontrar el total de artículos con la palabra */
select profesor.idCategoria, count(*) from profesor group by profesor.idCategoria;
select congreso.sede, count(*) from congreso where congreso.sede = 'México';
select count(*) from articulo where articulo.nombre like "%algoritmo%";

/*GENERE UNA TABLA LLAMADA PROFESOR_BACKUP COMO UNA COPIA EXACTA DE OTRA*/
create table tablaProfesor_backup(
	idProfesor int auto_increment,
	Numero_económico varchar(45),
	Nombre varchar(45),
	Edad int,
	idCategoria int,
	idDepartamento int,
    
    
	primary key(idProfesor),
	FOREIGN KEY (idCategoria) REFERENCES categoria(idCategoria),
	FOREIGN KEY (idDepartamento) REFERENCES departamento(idDepartamento)
);
/*INSERTE TODOS LOS REGISTROS DE LA TABLA “ EN LA “TABLA PROFESOR_BACKUP CUYA CATEGORÍA SEA LA DE UN TITULAR C 3*/
INSERT INTO tablaprofesor_backup (Numero_económico, Nombre, Edad, idCategoria, idDepartamento) SELECT Numero_económico, Nombre, Edad, idCategoria, idDepartamento FROM profesor WHERE profesor.idCategoria = 3;

/*MODIFIQUE LA TABLA PROFESOR_BACKUP AGREGANDO UN CAMPO ADICIONAL A ESTA EN EL QUE SE
INDIQUE EL TIEMPO DE DEDICACIÓN DE UN PROFESOR (TIEMPO COMPLETO O TIEMPO PARCIAL)*/
 ALTER TABLE tablaprofesor_backup ADD TiempoDedicacion VARCHAR(255);
 
 /*modificación de categoría*/
INSERT INTO categoria (idCategoria, Categoria, Sueldo) VALUES (4, "Titular D", 40000);

/*AGREGUE UN REGISTRO A LA TABLA PROFESOR_BACKUP LLAMADO “BRENDA ESPARSA NUM_ECO
99999 EDAD 30 CATEGORÍA 4 (TITULAR D, SUELDO 40000 DEPARTAMENTO 2 Y TIEMPO COMPLETO*/
INSERT INTO tablaprofesor_backup (Numero_económico, Nombre, Edad, idCategoria, idDepartamento, TiempoDedicacion) VALUES ("99999","BRENDA ESPARSA", 30, 4, 2, "TIEMPO COMPLETO");

/*MODIFIQUE TODOS LOS REGISTROS DE LA TABLA PROFESOR_BACKUP CUYA EDAD SEA MENOR A 40 Y
ASÍGNELES EN EL CAMPO DEDICACIÓN TIEMPO COMPLETO Y AL RESTO TIEMPO PARCIAL*/
UPDATE tablaprofesor_backup SET TiempoDedicacion = "TIEMPO COMPLETO" WHERE Edad < 40;
UPDATE tablaprofesor_backup SET TiempoDedicacion = "TIEMPO PARCIAL" WHERE Edad > 40;

/*RECUPERE TODOS LO PROFESORES DE LA TABLA PROFESOR_BACKUP QUE SU NOMBRE EMPIECE CON
DOS CONSONANTES*/
SELECT * FROM tablaprofesor_backup WHERE tablaprofesor_backup.Nombre not regexp "^[aeiou]" and tablaprofesor_backup.Nombre regexp '^[b-z]' and tablaprofesor_backup.Nombre not regexp "^.[aeiou]" and tablaprofesor_backup.Nombre regexp "^.[b-z]";

/*LA EDAD MAYOR Y MENOR DE TODOS LOS PROFESORES*/
SELECT MIN(Edad), MAX(edad) FROM profesor;

/*PROMEDIO DE EDADES DE PROFESORES CON APELLIDO “LÓPEZ"*/
SELECT AVG(Edad) FROM profesor WHERE profesor.Nombre like "%López%";

/*MOSTRAR NOMBRE DE LOS ARTÍCULOS CON NÚMERO DE PÁGINAS ENTRE 6 Y 12*/
SELECT articulo.Nombre FROM articulo WHERE articulo.Num_págs > 6 and articulo.Num_págs < 12;

/*MOSTRAR NOMBRE DE LOS ARTÍCULOS CON NÚMERO DE PÁGINAS MAYOR A 6 Y QUE ADEMÁS
CONTENGA LA PALABRA “ EN SU NOMBRE DATOS PUEDE INICIAR CON MAYÚSCULA O
MINÚSCULA*/
SELECT profesor.Nombre, profesor.idDepartamento FROM articulo WHERE articulo.Num_págs > 6 and articulo.Nombre like "%datos%";

/*MOSTRAR NOMBRE E ID DEPARTAMENTO DE PROFESORES CUYO NOMBRE NO INICIE CON VOCAL
MAYÚSCULA O MINÚSCULA, PERO QUE SU SEGUNDA LETRA SI SEA VOCAL MINÚSCULA*/
SELECT profesor.Nombre, profesor.idDepartamento FROM profesor
WHERE profesor.Nombre not regexp "^[aeiou]" and CAST(profesor.Nombre AS BINARY)  regexp binary "^.[aeiou]";

/*MOSTRAR NOMBRE Y SEDE DE LOS CONGRESOS QUE EL NOMBRE DE LA SEDE INICIE CON
CONSONANTE, SEGUIDO DE CUALQUIER CARÁCTER Y DESPUÉS UNA LETRA “x"*/
SELECT congreso.nombre, congreso.sede FROM congreso
WHERE congreso.sede not regexp "^[aeiou]" and congreso.sede regexp "^.[a-z-áéíóú]" and congreso.sede like "%X%";

/*EXTRAER NOMBRE DEL PROFESOR QUE TRABAJA EN EL DEPARTAMENTO DE SISTEMAS*/
SELECT p.Nombre as "Nombre Profesor", d.Nombre as "Departamento"FROM profesor p, departamento d
WHERE p.idDepartamento = d.idDepartamento AND d.Nombre = "Sistemas";

/*MOSTRAR LOS NOMBRES DE LOS PROFESORES QUE HAN ASISTIDO A CONGRESO Y EL
NOMBRE DEL CONGRESO AL QUE ASISTIERON.*/
SELECT p.Nombre as "Nombre profesor", c.nombre as "Nombre congreso" FROM profesor p, congreso c, asiste a 
WHERE p.idProfesor = a.idProfesor AND a.idCongreso = c.idCongreso;

/*EXTRAER EL NOMBRE Y SUELDO DE LOS PROFESORES QUE HAN ESCRITO ARTÍCULOS
EXTENSOS, ES DECIR, CON MÁS DE 10 PÁGINAS*/
SELECT p.Nombre, a.Nombre, c.Sueldo FROM escribe e, profesor p, articulo a, categoria c 
WHERE p.idProfesor = e.idProfesor AND a.idArticulo = e.idArticulo AND a.Num_págs > 10;

/*NOMBRE DE LOS ARTÍCULOS QUE FUERON ESCRITOS POR PROFESORES QUE
PERTENECEN AL DEPARTAMENTO DE MATEMÁTICAS, ADEMÁS HAN ASISTIDO AL
CONGRESO LLAMADO ISWC*/
SELECT a.Nombre, d.Nombre, c.nombre, p.Nombre FROM escribe e, profesor p, articulo a, departamento d, congreso c, asiste h
WHERE p.idProfesor = e.idProfesor AND e.idArticulo = a.idArticulo AND p.idDepartamento = d.idDepartamento AND d.Nombre = "Matemáticas"
AND p.idProfesor = h.idAsiste AND h.idCongreso = c.idCongreso AND c.nombre = "ISWC";

/*MOSTRAR EL NOMBRE DE TODOS LOS PROFESORES QUE HAN ESCRITO AL MENOS UN
ARTÍCULO*/
SELECT p.Nombre FROM profesor p, escribe e WHERE p.idProfesor = e.idProfesor group by p.idProfesor;

/*MOSTRAR EL NOMBRE DE TODOS LOS PROFESORES QUE NO TIENE
RETARDOS*/
SELECT p.Nombre FROM profesor p, asistencia a
WHERE p.idProfesor = a.PROFESOR_ID AND a.HORA > "08:30" group by p.Nombre;

/*MOSTRAR EL NOMBRE DE LOS DEPARTAMENTOS CON AL MENOS UN
PROFESOR EN ÉL*/
SELECT d.Nombre FROM profesor p, departamento d WHERE p.idProfesor = d.idDepartamento;

/*RECUPERAR EL NOMBRE Y SUELDO DE LOS PROFESORES QUE LLEGAN
TARDE*/
SELECT p.Nombre, c.Sueldo FROM profesor p, asistencia a, categoria c
WHERE p.idCategoria = c.idCategoria AND p.idProfesor = a.PROFESOR_ID AND a.HORA > "08:30" group by p.Nombre;

/*AGREGUE UN REGISTRO EN LA TABLA CONGRESO CON LOS SIGUIENTES DATOS NOMBRE WIMOB SEDE FRANCIA*/
INSERT INTO congreso (nombre, sede) VALUES ("WIMOB","FRANCIA");

/*AGREGUE UN REGISTRO POR CADA PROFESOR “TITULAR C” EN LA TABLA ASISTE
CON EL CONGRESO CREADO EN EL PUNTO ANTERIOR*/
INSERT INTO asiste (idProfesor, idCongreso) VALUES (3, 6);
INSERT INTO asiste (idProfesor, idCongreso) VALUES (8, 6);

/*MUESTRE EL NOMBRE DEL PROFESOR, DEPARTAMENTO Y NOMBRE DEL CONGRESO*/
SELECT p.Nombre, d.Nombre, c.nombre
FROM ((profesor p INNER JOIN departamento d on p.idDepartamento = d.idDepartamento)
INNER JOIN asiste a ON p.idProfesor = a.idProfesor) INNER JOIN congreso c ON c.idCongreso = a.idCongreso;

/*RECUPERE EL NOMBRE DE TODOS LOS ARTÍCULOS QUE SE HAN ESCRITO POR LOS
PROFESORES DEL DEPARTAMENTO DE matemáticas*/
SELECT a.Nombre, p.Nombre, d.Nombre FROM ((departamento d INNER JOIN profesor p ON d.idDepartamento = p.idDepartamento) 
INNER JOIN escribe e ON p.idProfesor = e.idProfesor) INNER JOIN articulo a ON a.idArticulo = e.idArticulo 
WHERE d.Nombre = "Matemáticas";

/*RECUPERE EL NOMBRE Y NOMBRE DE DEPARTAMENTO DE TODOS LOS
PROFESORES QUE HAN ESCRITO ARTÍCULOS RELACIONADOS CON
“ALGORITMOS" EN GENERAL*/
SELECT p.Nombre, d.Nombre, a.Nombre FROM ((profesor p INNER JOIN departamento d ON p.idDepartamento = d.idDepartamento)
INNER JOIN escribe e ON p.idProfesor = e.idProfesor) INNER JOIN articulo a ON a.idArticulo = e.idArticulo
AND a.Nombre LIKE "%algoritmo%";

/*RECUPERE EL NOMBRE DEPARTAMENTO Y CATEGORÍA DE CADA
PROFESOR QUE HAYA LLEGADO ENTRE LAS 08 00 Y 08 30 AL MENOS UNA
VEZ*/
SELECT p.Nombre, d.Nombre, c.Categoria FROM ((profesor p INNER JOIN asistencia a ON p.idProfesor = a.PROFESOR_ID)
INNER JOIN categoria c ON p.idCategoria = c.idCategoria) INNER JOIN departamento d ON d.idDepartamento = p.idDepartamento
WHERE a.HORA > "8:00" AND a.HORA < "8:30" group by p.Nombre;

/*RECUPERE EL NOMBRE DEPARTAMENTO, CATEGORÍA, FECHA Y HORA
PARA CADA PROFESOR, CONSIDERANDO QUE SE DEBE DEVOLVER EL
REGISTRO QUE SE TENGA PARA CADA PROFESOR CON MAYOR HORA DE
ENTRADA SIN IMPORTAR LA FECHA*/
SELECT p.Nombre, d.Nombre as Departamento, c.Categoria, a.FECHA, a.HORA, MAX(HORA) FROM ((profesor p INNER JOIN asistencia a 
ON p.idProfesor = a.PROFESOR_ID) INNER JOIN categoria c ON p.idCategoria = c.idCategoria)
INNER JOIN departamento d ON p.idDepartamento = d.idDepartamento group by a.PROFESOR_ID;

/*verifique el resultado de las siguientes consultas*/
SELECT * FROM (profesor p INNER JOIN departamento d ON p.idDepartamento = d.idDepartamento)
INNER JOIN asistencia a ON p.idProfesor = a.PROFESOR_ID;

SELECT * FROM (profesor p INNER JOIN departamento d ON p.idDepartamento = d.idDepartamento)
LEFT JOIN asistencia a ON p.idProfesor = a.PROFESOR_ID;

/*¿Qué sucedió? las consultas resultaron ser iguales
¿Cuál es la diferencia entre una y otra? ninguna*/

/*AGREGUE LAS SIGUIENTES CATEGORÍAS: “ASOCIADO A, ASOCIADO B, ASOC IADO C Y ASOCIADO D”, CON LOS SUELDOS
"10000, 12000, 14000, 16000"*/
INSERT INTO categoria (Categoria, Sueldo) values
												("ASOCIADO A", 10000),
                                                ("ASOCIADO B", 12000),
                                                ("ASOCIADO C", 14000),
                                                ("ASOCIADO B", 16000);

/*AGREGUE 5 REGISTROS EN LA TABLA PROFESOR PARA CADA UNA DE LAS CATEGORÍAS CREADAS*/
INSERT INTO profesor (Numero_económico, Nombre, Edad, idCategoria, idDepartamento)
VALUES ("12324533", "Profesor X", 90, 5, 2),
	   ("67543858", "James Howlett", 120, 6, 5),
       ("43542342", "Erik Lehnsherr", 90, 7, 4),
       ("65778456", "Ororo Munroe", 40, 8, 4),
       ("86754386", "Jean Grey", 40, 8, 3);
       
/*CREAR UNA VISTA DE LA TABLA PROFESOR PARA CADA CATEGORÍA EXISTEN TE, DE MODO QUE CADA VISTA CONTENGA
UNA CATEGORÍA DE PROFESORES (TITULAR, ASOCIADO)*/
CREATE VIEW TitularA AS SELECT p.Numero_económico, p.Nombre, p. Edad, p.idCategoria, p.idDepartamento
FROM profesor p INNER JOIN categoria c ON p.idCategoria = c.idCategoria WHERE c.Categoria = "Titular A";

CREATE VIEW TitularB AS SELECT p.Numero_económico, p.Nombre, p. Edad, p.idCategoria, p.idDepartamento
FROM profesor p INNER JOIN categoria c ON p.idCategoria = c.idCategoria WHERE c.Categoria = "Titular B";

CREATE VIEW TitularC AS SELECT p.Numero_económico, p.Nombre, p. Edad, p.idCategoria, p.idDepartamento
FROM profesor p INNER JOIN categoria c ON p.idCategoria = c.idCategoria WHERE c.Categoria = "Titular C";

CREATE VIEW TitularD AS SELECT p.Numero_económico, p.Nombre, p. Edad, p.idCategoria, p.idDepartamento
FROM profesor p INNER JOIN categoria c ON p.idCategoria = c.idCategoria WHERE c.Categoria = "Titular D";

CREATE VIEW AsociadoA AS SELECT p.Numero_económico, p.Nombre, p. Edad, p.idCategoria, p.idDepartamento
FROM profesor p INNER JOIN categoria c ON p.idCategoria = c.idCategoria WHERE c.Categoria = "ASOCIADO A";

CREATE VIEW AsociadoB AS SELECT p.Numero_económico, p.Nombre, p. Edad, p.idCategoria, p.idDepartamento
FROM profesor p INNER JOIN categoria c ON p.idCategoria = c.idCategoria WHERE c.Categoria = "ASOCIADO B";

CREATE VIEW AsociadoC AS SELECT p.Numero_económico, p.Nombre, p. Edad, p.idCategoria, p.idDepartamento
FROM profesor p INNER JOIN categoria c ON p.idCategoria = c.idCategoria WHERE c.Categoria = "ASOCIADO C";

CREATE VIEW AsociadoD AS SELECT p.Numero_económico, p.Nombre, p. Edad, p.idCategoria, p.idDepartamento
FROM profesor p INNER JOIN categoria c ON p.idCategoria = c.idCategoria WHERE c.Categoria = "ASOCIADO D";

/*CREAR UNA FUNCIÓN QUE DEVUELVA EL ID DE UN DEPARTAMENTO CON BASE EN SU NOMBRE Y UNA PARA OBTENER EL
ID DE LA CATEGORÍA CON BASE EN SU NOMBRE*/
DELIMITER //
CREATE FUNCTION Nombre_id2 (Nom VARCHAR(255)) RETURNS INT
deterministic
BEGIN
	DECLARE x INT;
	SELECT departamento.idDepartamento INTO x FROM departamento WHERE departamento.Nombre = Nom;
    RETURN x;
END //
DELIMITER ;

DELIMITER //
CREATE FUNCTION categoriaid3 (Nom VARCHAR(255)) RETURNS INT
deterministic
BEGIN
	DECLARE x INT;
	SELECT categoria.idCategoria INTO x FROM categoria WHERE categoria.Categoria = Nom;
    RETURN x;
END //
DELIMITER ;

/*CREAR UN PROCEDIMIENTO ALMACENADO LLAMADO INSERTA_PROFESOR QUE RECIBA LOS
SIGUIENTES DATOS DE UN PROFESOR Y QUE LOS INSERTE EN LA BD: NUM_ECO, NOMBRE, EDAD, NOMBRE_DEPARTAMENTO
NOMBRE_CATEGORIA*/
DELIMITER //
CREATE PROCEDURE INSERTA_PROFESOR(_NUM_ECO VARCHAR(255), _NOMBRE VARCHAR(255), _EDAD INT, _NOMBRE_DEPARTAMENTO VARCHAR(255), _NOMBRE_CATEGORIA VARCHAR(255))
BEGIN
	INSERT INTO profesor (profesor.Numero_económico, profesor.Nombre) values (_NUM_ECO, _NOMBRE);
    INSERT INTO departamento (departamento.Nombre) values (_NOMBRE_DEPARTAMENTO);
    INSERT INTO categoria (categoria.Categoria) values (_NOMBRE_CATEGORIA);
END//
DELIMITER ;

/*INSERTE AL MENOS DOS PROFESORES UTILIZANDO SU PROCEDIMIENTO ALMACENADO*/
DROP PROCEDURE IF EXISTS inserta_profesor2;
DELIMITER //
CREATE PROCEDURE inserta_profesor2 (_NUM_ECO VARCHAR(255), _NOMBRE VARCHAR (255), _EDAD INT, _IDCATEGORIA VARCHAR(255), _IDDEPARTAMENTO VARCHAR(255))
BEGIN
	INSERT INTO profesor (Numero_económico, Nombre, Edad, idCategoria, idDepartamento)
    VALUES (_NUM_ECO,_NOMBRE,_EDAD,categoriaid3(_IDCATEGORIA),Nombre_id2(_IDDEPARTAMENTO));
END//
DELIMITER ;

call inserta_profesor2("3413234", "Victor von Doom", 44, "Titular A", "Física");
call inserta_profesor2("4453564", "Curtis Connors", 38, "Titular B", "Química");

/*INSERTE AL MENOS DOS CONGRESOS CON SEDE EN MÉXICO*/
INSERT INTO congreso (nombre, sede) values
										 ("EGS","México"),
                                         ("E3","México");

/*GENERE LA VISTA DE TODAS LOS CONGRESOS REALIZADAS EN MÉXICO, LA CUAL SE LLAMARÁ
MEX_CONG*/
CREATE VIEW MEX_CONG AS SELECT * FROM congreso WHERE sede = "México";

/*GENERE LA VISTA DE TODOS LOS CONGRESOS QUE EMPIEZAN CON UNA VOCAL, LLAMADA
CONG_VOCAL*/
CREATE VIEW CONG_VOCAL AS SELECT * FROM congreso WHERE nombre regexp "^[aeiouáéíóú]";

/*GENERE UN PROCEDIMIENTO ALMACENADO QUE PERMITA INSERTAR UN REGISTRO EN LA TABLA
DEPARTAMENTO, PASANDO COMO ARGUMENTO EL NOMBRE DEL DEPARTAMENTO*/
DELIMITER //
CREATE PROCEDURE inserta_depto (_DEPTON VARCHAR(255))
BEGIN
	INSERT INTO departamento (Nombre) values (_DEPTON);
END //
DELIMITER ;

call inserta_depto("Ciencias de la Computación");

/*GENERE UNA TABLA QUE SE LLAME LOG_PROFESOR, LA CUAL CONTENDRÁ:*/
CREATE TABLE LOG_PROFESOR(
	LOG_PROFESOR_ID INT NOT NULL AUTO_INCREMENT,
    USUARIO VARCHAR (255),
    FECHA DATETIME,
    NUMREGISTRO INT,
    CATEGO_ANTERIOR INT,
    CATEGO_POSTERIOR INT,
    
    PRIMARY KEY(LOG_PROFESOR_ID)
);

/*GENERE UN TRIGGER QUE AL MODIFICAR EL CAMPO CATEGORIA DE LA TABLA PROFESOR, INSERTE UN REGISTRO EN LA TABLA
LOG_PROFESOR CON EL NOMBRE DE USUARIO QUE REALIZÓ LA CONSULTA Y LA FECHA ACTUAL*/
DROP TRIGGER IF EXISTS profesores.respaldo;
DELIMITER //
CREATE TRIGGER respaldo BEFORE UPDATE ON profesor
FOR EACH ROW
  BEGIN
	INSERT INTO LOG_PROFESOR (USUARIO,FECHA,NUMREGISTRO,CATEGO_ANTERIOR,CATEGO_POSTERIOR)
    VALUES (current_user(),now(),log_profesor.LOG_PROFESOR_ID,OLD.idCategoria, NEW.idCategoria);
  END //
DELIMITER ;