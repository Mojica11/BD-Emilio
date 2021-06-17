Create database Escuela

Use Escuela

-- Tabla de los estudiantes
create table Estudiante(

cod_est int, 
nombre_est varchar (30),
apellido_est varchar (30),
género_est varchar (10),
número_est bigint,
correo_est varchar (20),
área_est varchar (30),
nacionalidad_est varchar (10),
fecha_est date,
edad_est int,
dirección_est varchar (200),
tipodesangre_est varchar (10),
cod_pa1 int,
cod_cur1 int
constraint pk_cest primary key (cod_est),
constraint fk_fpa1 foreign key (cod_pa1) references Padre (cod_pa),
constraint fk_fcur1 foreign key (cod_cur1) references Curso (cod_cur)
)

-- Tabla de los padres
create table Padre(

cod_pa int, 
nombre_pa varchar (50),
apellido_pa varchar (50),
número_pa bigint
constraint pk_cpa primary key (cod_pa)
)

-- Tabla de los cursos
create table Curso(

cod_cur int,
nombre_cur varchar (10)
constraint pk_ccur primary key (cod_cur)
) 

