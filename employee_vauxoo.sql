-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department (
	id SERIAL PRIMARY KEY     NOT NULL,
	name CHAR(200)  NOT NULL,
	description TEXT  NOT NULL
);

CREATE TABLE employee (
	id SERIAL PRIMARY KEY NOT NULL,
	first_name CHAR(100)  NOT NULL,
	last_name CHAR(100)  NOT NULL,
	id_employee_department INTEGER REFERENCES employee_department
);

CREATE TABLE employee_hobby (
	id SERIAL PRIMARY KEY NOT NULL,
	name CHAR(200) NOT NULL,
	description TEXT NOT NULL
);

INSERT INTO employee_department  (name,description) VALUES 
('AIT','Soporte a equipos de computacion'),
('Estimación de Costos','Calcular y planificar costos de productos '),
('Finanazas','Inversion de la empresa'),
('Control Estadistico','Analisis de datos'),
('RRHH','Personal'),
('Seguridad','Control de acceso y seguridad perimetral');

INSERT INTO employee (first_name,last_name,id_employee_department) VALUES 
('Carlos','Perez','4'),
('Andrea','Figueredo','3'),
('Ismael','Rodriguez','6'),
('Luis','Salazar','5')
;

INSERT INTO employee_hobby (name,description) VALUES 
('Musica','Componer e interpretar canciones'),
('Electronica','Elaborar circuitos'),
('Programar','desarrollar aplicaciones')
;

CREATE TABLE employee_hobby_employee  (
	id_employee INTEGER REFERENCES employee,
	,id_employee_hobby INTEGER REFERENCES employee_hobby
);

INSERT INTO employee_hobby_employee (id_employee,id_employee_hobby) VALUES
('9','1'),
('9','2'),
('10','2'),
('10','3'),
('11','1'),
('11','2'),
('11','3'),
('12','1'),
('12','3')
;

-- ...
