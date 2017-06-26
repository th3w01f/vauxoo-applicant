-- Your sql code in this file;
-- NOTE: Please, don't add sentence to create database in this script file.;
--       You can create database locally to test it.;
--       Consider add ';' at end sentence.;

-- Se crea la base de datos employee_employee.;
CREATE DATABASE employee_employee;

CREATE TABLE employee (
	id_e serial not null,
	first_name varchar(20),
	last_name varchar(20),
	primary key(id_e),
	id_d int not null,
	id_h int not null,
	id_boss int
);
-- Se selecciona la tabla employee y se le asignan 4 trabajadores.;
SELECT * FROM employee;
INSERT INTO employee(id_e, first_name,last_name) VALUES(01,'Charles','Xavier');
INSERT INTO employee(id_e, first_name,last_name) VALUES(02,'Peter','Parker');
INSERT INTO employee(id_e, first_name,last_name) VALUES(03,'Frank','Castle');
INSERT INTO employee(id_e, first_name,last_name) VALUES(04,'Barry','Allen');



CREATE TABLE employee_department (
	id_d serial not null,
	name varchar(20),
	description varchar(40),
	primary key(id_d)
);

-- Se crea la tabla employee_boss.;
CREATE TABLE employee_boss (
	id_boss serial not null,
	cargo varchar(20),
	primary key(id_boss),
	id_e int

);
-- Se selecciona la tabla employee_department y se asignan 6 apartamentos.;
SELECT * FROM employee_department;
INSERT INTO employee_department(name, description) VALUES('apart201','2 habitaciones,1 baño, Sala y Cocina');
INSERT INTO employee_department(name, description) VALUES('apart202','2 habitaciones,2 baño, Sala y Cocina');
INSERT INTO employee_department(name, description) VALUES('apart203','3 habitaciones,1 baño, Sala y Cocina');
INSERT INTO employee_department(name, description) VALUES('apart204','2 habitaciones,1 baño, Sala y Cocina');
INSERT INTO employee_department(name, description) VALUES('apart205','4 habitaciones,2 baño, Sala y Cocina');
INSERT INTO employee_department(name, description) VALUES('apart206','1 habitaciones,1 baño, Sala y Cocina');

-- Se crea una llave foranea para crear una relacion entre los departamentos y los empleados.;
ALTER table employee add constraint fk_id_department foreign key(id_d) references employee_department(id_d) on delete cascade on update cascade;

-- Se selecciona nuevamente la tabla employee para asignarle un apartamento en especifico.;
SELECT * FROM employee;
INSERT INTO employee(id_e,id_d) VALUES(01,02);
INSERT INTO employee(id_e,id_d) VALUES(04,02);
INSERT INTO employee(id_e,id_d) VALUES(03,06);
INSERT INTO employee(id_e,id_d) VALUES(02,03);

CREATE TABLE employee_hobby (
	id_h serial not null,
	name varchar(30),
	description varchar(30),
	primary key(id_h)
);
-- Se selecciona la tabla employee_hobby para asignar los siguientes pasatiempos.;
SELECT * FROM employee_hobby;
INSERT INTO employee_hobby(name,description) VALUES('Pesca','Todo lo relacionado con los diferentes tipos de pesca incluyendo pesca con arpon');
INSERT INTO employee_hobby(name,description) VALUES('Escritor','Aficion a la redaccion a todo tipo de relatos');
INSERT INTO employee_hobby(name,description) VALUES('Videojuegos','Ociosos extremos');

-- Se genera una llave foranea para crear relacion entre los empleados y los pasatiempos.;
ALTER table employee add constraint fk_id_hobby foreign key(id_h) references employee_hobby(id_h) on delete cascade on update cascade;

-- Se selecciona la tabla employee para agregarle 2 pasatiempos a cada empleado.;
SELECT * FROM employee;
INSERT INTO employee(id_e,id_h,id_h) VALUES(01,03,01);
INSERT INTO employee(id_e,id_h,id_h) VALUES(02,02,03);
INSERT INTO employee(id_e,id_h,id_h) VALUES(03,01,02);
INSERT INTO employee(id_e,id_h,id_h) VALUES(04,03,02);

-- Se selecciona employee_boss para asignar un jefe entre los empleados
SELECT * FROM employee_boss;
INSERT INTO employee_boss(id_e,cargo) VALUES(01,'Analista en Seguridad');

-- Se selecciona employee para agregar un jefe a los 3 empleados restantes.;
SELECT * FROM employee;

-- Se crea una llave foranea para crear la relacion entre empleados y el boss.;
ALTER table employee add constraint fk_id_boss foreign key(id_boss) references employee_boss(id_boss) on delete cascade on update cascade;

-- se insertan los empleados a un solo jefe.;
INSERT INTO employee(id_e,id_boss) VALUES(02,01);
INSERT INTO employee(id_e,id_boss) VALUES(03,01);
INSERT INTO employee(id_e,id_boss) VALUES(04,01);



-- ...
