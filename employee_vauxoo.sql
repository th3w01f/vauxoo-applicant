-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
  id serial,
	primary key (id),
	unique(id),
	first_name varchar(50) not null,
	last_name varchar(50) not null
);

CREATE TABLE employee_department (
  id serial,
	primary key (id),
	unique(id),
	name varchar(50) not null,
	description text not null
);

CREATE TABLE employee_hobby (
	id serial,
	primary key (id),
	unique(id),
	name varchar(100) not null,
	description text not null
);

-- asignacion de empleados a la tabla;
INSERT INTO employee (first_name, last_name)
	VALUES
		('FirstName1', 'LastName1'),
		('FirstName2', 'LastName2'),
		('FirstName3', 'LastName3'),
		('FirstName4', 'LastName4');
-- asignacion de departamentos;
INSERT INTO employee_department (name, description)
	VALUES
		('Department1', 'DepartmentDescription1'),
		('Department2', 'DepartmentDescription2'),
		('Department3', 'DepartmentDescription3'),
		('Department4', 'DepartmentDescription4'),
		('Department5', 'DepartmentDescription5'),
		('Department6', 'DepartmentDescription6');

-- añadiendo columna adicional para asignar jefe;
ALTER TABLE employee ADD COLUMN id_department serial;

UPDATE employee SET id_department = '1' WHERE id = '1';
UPDATE employee SET id_department = '2' WHERE id = '2';
UPDATE employee SET id_department = '4' WHERE id = '3';
UPDATE employee SET id_department = '2' WHERE id = '4';

-- añadir hobbies;

INSERT INTO employee_hobby (name, description)
	VALUES
		('Hobby1', 'HobbyDescription1'),
		('Hobby2', 'HobbyDescription2'),
		('Hobby3', 'HobbyDescription3');

-- crear tabla para hobbies;
CREATE TABLE usr_hbb (
	id_usr serial,
	id_hbb serial,
	primary key(id_usr, id_hbb),	
);

-- asignar hobby a cada empleado;
INSERT INTO usr_hbb (id_usr, id_hbb)
	Values
		(1, 1),
		(1, 2),
		(1, 3),
		(2, 1),
		(2, 2),
		(3, 2),
		(3, 3),
		(4, 1),
		(4, 2),
		(4, 3);

-- añadir nuevo campo para utilizar como llave foranea y asignar jefe;
ALTER TABLE employee ADD COLUMN id_boss serial;

ALTER TABLE employee
add constraint emp_boss_fk
foreign key (id_boss) references employee;

UPDATE employee SET id_boss = '1' WHERE id = '1';
UPDATE employee SET id_boss = '1' WHERE id = '2';
UPDATE employee SET id_boss = '1' WHERE id = '3';
UPDATE employee SET id_boss = '1' WHERE id = '4';
-- ...
