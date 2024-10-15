CREATE TABLE oficinas (
num_oficina INT NOT NULL,
ciudad VARCHAR (15) NOT NULL,
region VARCHAR (10) NOT NULL,
dir INT,
objetivo FLOAT,
ventas FLOAT NOT NULL,
PRIMARY KEY (num_oficina));

CREATE TABLE rep_ventas (
num_empl INT NOT NULL,
nombre VARCHAR (15) NOT NULL,
edad INT NOT NULL,
oficina_rep INT NOT NULL,
titulo VARCHAR (10),
contrato DATE NOT NULL,
director INt,
cuota FLOAT,
ventas FLOAT NOT NULL,
PRIMARY KEY (num_empl)
FOREIGN KEY (director) REFERENCE directores(id_dir)
FOREIGN KEY (operaen) REFERENCE oficina(num_oficina));

CREATE TABLE clientes (
num_clie INT NOT NULL,
empresa VARCHAR (20) NOT NULL,
rep_clie INT NOT NULL,
limite_credito FLOAT,
PRIMARY KEY (num_clie)
FOREIGN KEY (rep_clie));	

CREATE TABLE productos (
id_fab VARCHAR (3) NOT NULL,
id_producto varchar (5) NOT NULL,
descripcion VARCHAR (20) NOT NULL,
precio FLOAT NOT NULL,
existencias INT NOT NULL,
PRIMARY KEY (id_fab, id_producto));

CREATE TABLE pedidos (
num_pedido INT AUTO_INCREMENT NOT NULL,
fecha_pedido DATE NOT NULL,
clie INT NOT NULL,
rep INT NOT NULL,
fab VARCHAR(3) NOT null,
cant INT NOT NULL,
importe FLOAT NOT NULL,
PRIMARY KEY (num_pedido)
FOREIGN KEY (clie) REFERENCE clientes(num_clie)
FOREIGN KEY (rep) REFERENCE repventas(num_empl)
FOREIGN KEY (fab, producto) REFERENCE productos(id_fab, id_producto));


INSERT INTO oficinas (num_oficina, ciudad, region, dir, objetivo, ventas) VALUES ('22', 'denver', 'Oeste', 108, 300.000,00, 186.042.00);
INSERT INTO oficinas (num_oficina, ciudad, region, dir, objetivo, ventas) VALUES ('11', 'New York', 'Este', 106, 575.000,00, 692.637,00);
INSERT INTO oficinas (num_oficina, ciudad, region, dir, objetivo, ventas) VALUES ('12', 'Chicago', 'este', 104, 800.000,00, 735.045,00);
INSERT INTO oficinas (num_oficina, ciudad, region, dir, objetivo, ventas) VALUES ('13', 'Atlanta', 'este', 105, 250.000,00, 367.911,00);
INSERT INTO oficinas (num_oficina, ciudad, region, dir, objetivo, ventas) VALUES ('21', 'Los Angeles', 'Oeste', 108, 725.000,00, 835.975,00);

INSERT INTO rep_ventas (num_empl, nombre, edad, oficina_rep, titulo, contrato, director, cuota, ventas) VALUES (105, 'bill adams', 37, 13, 'rep ventas', '1988-02-12',104, 350.000,00, 367.977,00);
INSERT INTO rep_ventas (num_empl, nombre, edad, oficina_rep, titulo, contrato, director, cuota, ventas) VALUES (109, 'Mary Jones', 31, 11, 'rep ventas', '1999-10-12',106, 300.000,00, 392.725,00);
INSERT INTO rep_ventas (num_empl, nombre, edad, oficina_rep, titulo, contrato, director, cuota, ventas) VALUES (102, 'Sue Smith', 48, 21, 'rep ventas', '1986-12-10',108, 350.000,00, 474.050,00);
INSERT INTO rep_ventas (num_empl, nombre, edad, oficina_rep, titulo, contrato, director, cuota, ventas) VALUES (106, 'Sam Clark', 52, 12, 'VP ventas', '1988-06-14',, 275.000,00, 299.912,00);
INSERT INTO rep_ventas (num_empl, nombre, edad, oficina_rep, titulo, contrato, director, cuota, ventas) VALUES (104, 'Bob Smith', 33, 12, 'rep ventas', '1987-05-19',106, 200.000,00, 142.594,00);
INSERT INTO rep_ventas (num_empl, nombre, edad, oficina_rep, titulo, contrato, director, cuota, ventas) VALUES (101, 'Dan Robert', 45, 12, 'rep ventas', '1986-10-20',104, 350.000,00, 305.673,00);
INSERT INTO rep_ventas (num_empl, nombre, edad, oficina_rep, titulo, contrato, director, cuota, ventas) VALUES (110, 'Tom Snyder', 41, NULL, 'rep ventas', '1990-01-13',101,, 75.985,00);
INSERT INTO rep_ventas (num_empl, nombre, edad, oficina_rep, titulo, contrato, director, cuota, ventas) VALUES (108, 'Larry Fitch', 62, 21, 'DIR ventas', '1989-10-12',106, 350.000,00, 361.865,00);
INSERT INTO rep_ventas (num_empl, nombre, edad, oficina_rep, titulo, contrato, director, cuota, ventas) VALUES (103, 'Paul Cruz', 29, 12, 'rep ventas', '1987-03-01',104, 275.000,00, 286.775,00);
INSERT INTO rep_ventas (num_empl, nombre, edad, oficina_rep, titulo, contrato, director, cuota, ventas) VALUES (107, 'Nancy Angelli', 49, 22, 'rep ventas', '1988-11-14',108, 300.000,00, 186.042,00);


INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2111,'JPC inc.', 103, 50.000,00);
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2102,'Fisrt Copr',101,65.000,00); 
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2103,'Acme Mfg', 105,50.000,00);
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2123,'Carter & Sons',102,40.000,00);
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2107,'Ace International',110,35.000,00);
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2115,'Smith Corp',101,20.000,00);
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2101,'Jones Mfg',106,65.000,00);
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2112,'Zetacorp',108,50.000,000);
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2121,'QMA Assoc',103,45.000,009);
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2114,'Orion Corp',102,20.000,00);
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2124,'Peter Brothers',107,40.000,00);
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2108,'Holm & Landis',109,55.000,00);
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2117,'J.P. Sinclair',106,35.000,00);
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2122,'Three-Way Lines',105,30.000,00);
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2120, 'Rico Interprises',102,50.000,00);
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2106,'Fred Lewis Corp',102,65.000,00);
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2119,'Solomon Inc',109, 25.000,00);
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2118,'Midwest Systems',108,60.000,00);
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2113,'Ian & Schmith',104,20.000,00);
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2109,'Chen Associates',103,25.000,00);
INSERT INTO clientes (num_clie, empresa, rep_clie, limite_credito) VALUES (2105 ,'AAA Investments',101,45.000,00);


INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('REI','2A45C','V Stago TRinquete',79, 210); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('ASI','4100Y','Extractor',2750,25); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('QSA','XK47', 'Reductor', 355,38); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('BIC','41672', 'Plate',180,0);
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('IMM','779C','Riostra 2-TM',1875,9); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('ACI','41003','Articulo tipo 3',107,207); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('AQI','41004', 'Articulo tipo 4',117,139); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('BIQ','41005', 'Manivela',652,3); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('QSE','887P','Perno Riostra', 250,24); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('REE','XK48', 'Reductor',134,203); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('FEA','2A44L', 'Bisagra Izquierda',4500,12); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('IRM','112','Cubierta',148,115); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('BIW','887H','Soporte Riostra',54,223); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('ASR','41089', 'Retn',225,78); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('EMM','41001', 'Articulo tipo 1',55,277); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('AVI','775C','Riostra 1-Tm',1425,5); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('QSY','4100Z','Montador',2500,28); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('ACE','XK48A','Reductor',117,37); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('REU','41002','Articulo tipo 2',76,167); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('IMN','2A44R','Bisagra Drcha',4500,12); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('ADI','773C','Riostra 1/2-Tm',975,28); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('ASD','4100X','Ajustador',25,37); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('FEU','114','Bancada Motor',243,15); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('ENN','887X','Retenedor Riostra',475,32); 
INSERT INTO productos (id_fab, id_producto, descripcion, precio,existencias) VALUES ('REO','2A44G','Pasador Bisagra',350,14); 



INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1989-12-17', 2117, 106, 'REI', '2A44L' ,7, 31500); 
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-01-11', 2111, 105, 'ACI', '41003', 35, 3745);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-01-03', 2101, 106, 'FEA', '114', 6, 1458);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-02-10', 2118, 108, 'QSA', 'K47', 4, 1420);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1989-10-12', 2102, 101, 'ACI', '4100Z', 9, 22500);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-01-30', 2107, 110, 'ACI', '4100Z', 9, 22500);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-02-02', 2112, 108, 'REI', '2A44R', 10, 45000);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1989-12-17', 2103, 105, 'ACI', '41004', 28, 3276);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-01-14', 2118, 108, 'BIC', '41003', 1, 652);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-02-23', 2108, 109, 'FEA', '112', 10, 1480);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-01-08', 2124, 107, 'BIC', '41003', 1, 652);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1989-12-27', 2103, 105, 'AC1', '41004', 6, 702);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-01-20', 2114, 108, 'QSA', 'XK47', 20, 7100);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-02-24', 2124, 107, 'FEA', '114', 10, 2430);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1989-10-12', 2114, 102, 'ACI', '4100Z', 6, 15000);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-01-22', 2103, 105, 'ACI', '41003', 54, 4104);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-01-08', 2112, 108, 'IMM', '773C', 3, 2925);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-03-02', 2109, 1007,'IMM', '775C', 22, 31350);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-01-29', 2107, 110, 'REI', '2A456', 8, 632);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1989-11-04', 2118, 108, 'ACI', '41002', 10, 760);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1989-10-12', 2111, 103, 'REI', '2A44G', 6, 2100);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1998-02-15', 2108, 101, 'ACI', '4100X', 6, 150);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-02-10', 2120, 102, 'IMM', '779C', 2, 3750);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1989-01-04', 2106, 102, 'REI', '2A45C', 24, 1896);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-02-27', 2106, 102, 'QSA', 'XK47', 6, 2130);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-01-25', 2108, 109. 'IMM', '779C', 3, 5625);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-02-10', 2118, 108, 'QSA', 'XK47', 2, 776);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1989-12-31', 2103, 105, 'ACI', '4100Y', 11, 27500);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-02-18', 2111, 103, 'ACI', '4110X', 24, 600);
INSERT INTO pedidos (fecha_pedido, clie, rep, fab,producto, cant, importe) VALUES ('1990-02-02', 2113, 101, 'REI', '2A44R', 5, 22500);



//*Lista de las oficinas de ventas de la region ESte con sus objetivos y ventas.**/
SELECT oficina, ciudad, objetivos, ventas
FROM oficinas 
WHERE region ='Este';



/*Lista de las oficinas (con sus objetivos y ventas) de la region ESTE, cuys ventas exceden a sus objetivos, ordenadas en orden alfábetico por ciudad*/
SELECT oficina, ciudad, objetivo, ventas
FROM oficinas
WHERE region ='Este'
AND ventas < objetivo 
ORDER BY ciudad ASC;

/*Cuales soon los objetivos y ventas promedio para las oficinas de la región ESTE*/
SELECT AVG(objetivo) AS promedio_objetivo,
AVG(ventas) AS promedio_ventas
FROM oficinas
WHERE region ='este';

/*cual es el nombre, cuota y ventas del empleado numero 107*/
SELECT nombre, cuota, ventas
FROM repventas
WHERE num_empl = 107;

/*lista de la ciudad, la region y el importe por encima o por debajo del objetibo para cada oficina*/

/*Mostrar el valor del inventario para cada producto*/

/*Hallar a los vendedores contratados antes de 1988*/
SELECT nombre, contrato
FROM repventas
WHERE contratto < '1988-01-01';

/*Lista de las oficinas cuyas ventas estan por debajo del 80% del objetivo*/

/*Lista de los pedidos comprendidos entre el 01 de octubre de 1989 y el 31  de diciembre de 1989*/
SELECT *
FROM pedidos
WHERE fecha_pedidos BETWEEN '1989-10-01' AND '1989-12-31';

/*Hallar todos los pedidos obtenidos por cuatro vendedores especificos (107,109,101,103)*/
SELECT *
FROM pedidos 
WHERE rep IN (107,109,101,103);































