CREATE DATABASE dealership;

USE dealership;

CREATE TABLE employee (
ID int NOT NULL AUTO_INCREMENT,
lastName varchar(50) NOT NULL,
firstName varchar(50) NOT NULL,
address varchar(90) NOT NULL,
zipCode char(5) NOT NULL,
phone char(10) NOT NULL,
email varchar(90) NOT NULL UNIQUE,
PRIMARY KEY (ID)


);
CREATE TABLE customer (
ID int NOT NULL AUTO_INCREMENT,
lastName varchar(50) NOT NULL,
firstName varchar(50) NOT NULL,
address varchar(90) NOT NULL,
zipCode char(5) NOT NULL,
phone char(10) NOT NULL,
email varchar(90) NOT NULL UNIQUE,
PRIMARY KEY (ID)


);

CREATE TABLE Vehicle (
ID int NOT NULL AUTO_INCREMENT,
type varchar(50) NOT NULL,
make varchar(50) NOT NULL,
model varchar(50) NOT NULL,
color varchar(25) NOT NULL,
engine varchar(10) NOT NULL,
cylinders varchar(2) NOT NULL,
transmission varchar(40) NOT NULL,
vin char(17) NOT NULL,
odometer int NOT NULL default 0 ,
retail decimal(8,2) NOT NULL,
year int NOT NULL,
PRIMARY KEY (ID)

);

INSERT INTO vehicle(make, model, year, retail, type, cylinders, engine, transmission, color, VIN, odometer) VALUES 
('BMW', '3 Series', '2022', '41450', 'Sedan', 'I4', '2.0', '8-speed shiftable automatic', 'Alpine White', 'WBAAR3346YJB35144', '10'),
('BMW', '3 Series', '2022', '56700', 'Coupe', 'I6', '3.0', '8-speed shiftable automatic', 'Potamaic Blue', 'WBAAG1107B7071594', '15'),
('BMW', '2 Series', '2020', '40750', 'Sedan', 'I4', '2.0', '8-speed shiftable automatic', 'Tanzanite Blue', 'WB10416A01ZC60664', '15000'),
('BMW', '2 Series', '2020', '54000', 'Convertible', 'I6', '3.0', '8-speed shiftable automatic', 'Mineral Grey', 'WBAEP33403PE91635', '16000'),
('BMW', '1 Series', '2018', '34900', 'Sedan', 'I4', '2.0', '8-speed shiftable automatic', 'Sunset Orange', 'WBAVC53597F280348', '24000'),
('BMW', '1 Series', '2018', '48950', 'Sedan', 'I6', '3.0', '8-speed shiftable automatic', 'Mediterranean Blue', 'WBASP2C58BC337294', '25000'),
('BMW', '5 Series', '2016', '33150', 'Sedan', 'I4', '2.0', '8-speed shiftable automatic', 'Dravit Grey Metallic', '5UXZW0C51BL657600', '43000'),
('BMW', '5 Series', '2016', '45800', 'Sedan', 'I6', '3.0', '8-speed shiftable automatic', 'Black Sapphire', 'WBABB2304KEC18748', '44324'),
('BMW', '6 Series', '2014', '32750', 'Sedan', 'I4', '2.0', '8-speed shiftable automatic', 'Sunset Orange', 'WBAEA8104C8160045', '51000'),
('BMW', '6 Series', '2014', '45400', 'Sedan', 'I6', '3.0', '8-speed shiftable automatic', 'Alpine White', 'WBSNB93526CX06186', '54000'),
('BMW', '7 Series', '2014', '41450', 'Wagon', 'I4', '2.0', '8-speed shiftable automatic', 'Potamaic Blue', 'WBAVM1C58FVZ94090', '56789'),
('BMW', '7 Series', '2012', '34900', 'Sedan', 'I4', '2.0', '6-speed manual', 'Mineral Grey', 'WBS6C9C50F0010137', '45678'),
('BMW', '8 Series', '2012', '42400', 'Sedan', 'I6', '3.0', '6-speed manual', 'Mediterranean Blue', 'WBA1A1101FP627759', '56123'),
('BMW', '8 Series', '2012', '37500', 'Wagon', 'I6', '3.0', '6-speed manual', 'Black Sapphire', 'WBA1K5C54FV473864', '76543'),
('Ford', 'F-150', '2022', '30495', 'Truck (Regular Cab)', 'V6', '3.3', '10-speed shiftable automatic', 'Velocity Blue', '1FTPX27W8XNC05837', '100'),
('Ford', 'F-150', '2022', '62070', 'Truck (SuperCrew)', 'V8', '5.0', '10-speed shiftable automatic', 'Guard', '1FDTF4GT0FEC04565', '150'),
('Ford', 'F-150', '2022', '52360', 'Truck (SuperCab)', 'V6', 2.7, '10-speed shiftable automatic', 'Antimatter Blue', '1FAPP37U0RK147737', '240'),
('Ford', 'F-250', '2020', '28745', 'Truck (Regular Cab)', 'V6', '3.3', '6-speed shiftable automatic', 'Space White', 'NM0GE9F71E1140792', '12345'),
('Ford', 'F-250', '2020', '32830', 'Truck (SuperCab)', 'V6', '3.3', '6-speed shiftable automatic', 'Carbonized Gray', '1FTHS34L5FHB78984', '23456'),
('Ford', 'F-250', '2020', '35285', 'Truck (SuperCrew)', 'V6', '3.3', '6-speed shiftable automatic', 'Oxford White', '1ZVLT22B0P0016902', '31234'),
('Ford', 'F-350', '2015', '26030', 'Truck (Regular Cab)', 'V6', '3.5', '6-speed shiftable automatic', 'Iconic Silver', '3FA6P0HR4DR275908', '76543'),
('Ford', 'F-350', '2015', '30090', 'Truck (SuperCab)', 'V6', '3.5', '6-speed shiftable automatic', 'Rapid Red', '1FMDU32E0XUB16328', '81234'),
('Ford', 'F-350', '2015', '32545', 'Truck (SuperCrew)', 'V6', '3.5', '6-speed shiftable automatic', 'Agate Black', '1FT8X3A66FEA17593', '34899'),
('Toyota', 'Prius', '2022', '25075', 'Hatchback', 'I4', '1.8', 'continuously variable-speed automatic', 'Red', 'JTECB09J823005642', '135'),
('Toyota', 'Camry', '2020', '24325', 'Sedan', 'I4', '1.8', 'continuously variable-speed automatic', 'White', '4T1BG12K7TU071892', '178'),
('Toyota', 'Corolla', '2018', '23475', 'Sedan', 'I4', '1.8', 'continuously variable-speed automatic', 'Black', 'JT4RN81A5L5058840', '10234'),
('Toyota', 'RAV4', '2003', '19995', 'SUV', 'I4', '1.5', 'continuously variable-speed automatic', 'Grey', '2T1LR38E13C094100', '12098'),
('Toyota', '4Runner', '2002', '19995', 'SUV', 'I4', '1.5', 'continuously variable-speed automatic', 'Red', 'JTEBU3FJ3E5048175', '54198'),
('Toyota', 'Prius', '2001', '19995', 'Hatchback', 'I4', '1.5', 'continuously variable-speed automatic', 'Black', '5TFAW5F13FX422831', '78103');

CREATE TABLE model (
ID int NOT NULL AUTO_INCREMENT,
model varchar(50) NOT NULL unique,
PRIMARY KEY(ID)
);

CREATE TABLE make (
ID int NOT NULL AUTO_INCREMENT,
make varchar(50) NOT NULL unique,
PRIMARY KEY(ID)
);

CREATE TABLE type (
ID int NOT NULL AUTO_INCREMENT,
type varchar(50) NOT NULL unique,
PRIMARY KEY(ID)
);

CREATE TABLE color (
ID int NOT NULL AUTO_INCREMENT,
color varchar(25) NOT NULL unique,
PRIMARY KEY(ID)
);

CREATE TABLE engine (
ID int NOT NULL AUTO_INCREMENT,
engine varchar(10) NOT NULL unique,
PRIMARY KEY(ID)
);

CREATE TABLE transmission (
ID int NOT NULL AUTO_INCREMENT,
transmission varchar(40) NOT NULL unique,
PRIMARY KEY(ID)
);

CREATE TABLE cylinders (
ID int NOT NULL AUTO_INCREMENT,
cylinders varchar(2) NOT NULL unique,
PRIMARY KEY(ID)
);


INSERT INTO color(color) 
SELECT DISTINCT color 
FROM vehicle;

INSERT INTO model(model) 
SELECT DISTINCT model 
FROM vehicle;

INSERT INTO make(make) 
SELECT DISTINCT make 
FROM vehicle;

INSERT INTO type(type) 
SELECT DISTINCT type 
FROM vehicle;

INSERT INTO engine(engine) 
SELECT DISTINCT engine 
FROM vehicle;

INSERT INTO transmission(transmission) 
SELECT DISTINCT transmission 
FROM vehicle;

INSERT INTO cylinders(cylinders) 
SELECT DISTINCT cylinders 
FROM vehicle;

UPDATE vehicle SET make = 1 
WHERE make = 'BMW'; 

UPDATE vehicle SET make = 2 
WHERE make = 'Ford'; 

UPDATE vehicle SET make = 3 
WHERE make = 'Toyota';

 UPDATE vehicle SET model = 1 
 WHERE model = '3 Series'; 
 UPDATE vehicle SET model = 2 
 WHERE model = '2 Series'; 
 UPDATE vehicle SET model = 3 
 WHERE model = '1 Series'; 
 UPDATE vehicle SET model = 4 
 WHERE model = '5 Series'; 
 UPDATE vehicle SET model = 5 
 WHERE model = '6 Series'; 
 UPDATE vehicle SET model = 6 
 WHERE model = '7 Series'; 
 UPDATE vehicle SET model = 7 
 WHERE model = '8 Series'; 
 UPDATE vehicle SET model = 8 
 WHERE model = 'F-150'; 
 UPDATE vehicle SET model = 9 
 WHERE model = 'F-250'; 
 UPDATE vehicle SET model = 10 
 WHERE model = 'F-350'; 
 UPDATE vehicle SET model = 11 
 WHERE model = 'Prius'; 
 UPDATE vehicle SET model = 12 
 WHERE model = 'Camry'; 
 UPDATE vehicle SET model = 13 
 WHERE model = 'Corolla'; 
 UPDATE vehicle SET model = 14 
 WHERE model = 'RAV4'; 
 UPDATE vehicle SET model = 15 
 WHERE model = '4Runner';
 
 
  UPDATE vehicle SET type = 1 
 WHERE type = 'Sedan'; 
 UPDATE vehicle SET type = 2 
 WHERE type = 'Coupe'; 
 UPDATE vehicle SET type = 3 
 WHERE type = 'Convertible'; 
 UPDATE vehicle SET type = 4 
 WHERE type = 'Wagon'; 
 UPDATE vehicle SET type = 5 
 WHERE type = 'Truck (Regular Cab)'; 
 UPDATE vehicle SET type = 6 
 WHERE type = 'Truck (SuperCrew)'; 
 UPDATE vehicle SET type = 7 
 WHERE type = 'Truck (SuperCab)'; 
 UPDATE vehicle SET type = 8 
 WHERE type = 'Hatchback'; 
 UPDATE vehicle SET type = 9 
 WHERE type = 'SUV'; 
 
 UPDATE vehicle SET color = 1 
 WHERE color = 'Alpine White'; 
 UPDATE vehicle SET color = 2 
 WHERE color = 'Potamaic Blue'; 
 UPDATE vehicle SET color = 3 
 WHERE color = 'Tanzanite Blue'; 
 UPDATE vehicle SET color = 4 
 WHERE color = 'Mineral Grey'; 
 UPDATE vehicle SET color = 5 
 WHERE color = 'Sunset Orange'; 
 UPDATE vehicle SET color = 6 
 WHERE color = 'Mediterranean Blue'; 
 UPDATE vehicle SET color = 7 
 WHERE color = 'Dravit Grey Metallic'; 
 UPDATE vehicle SET color = 8 
 WHERE color = 'Black Sapphire'; 
 UPDATE vehicle SET color = 9 
 WHERE color = 'Velocity Blue'; 
 UPDATE vehicle SET color = 10 
 WHERE color = 'Guard'; 
 UPDATE vehicle SET color = 11 
 WHERE color = 'Antimatter Blue'; 
 UPDATE vehicle SET color = 12 
 WHERE color = 'Space White'; 
 UPDATE vehicle SET color = 13 
 WHERE color = 'Carbonized Gray'; 
 UPDATE vehicle SET color = 14 
 WHERE color = 'Oxford White'; 
 UPDATE vehicle SET color = 15 
 WHERE color = 'Iconic Silver';
 UPDATE vehicle SET color = 16
 WHERE color = 'Rapid Red'; 
 UPDATE vehicle SET color = 17
 WHERE color = 'Agate Black'; 
 UPDATE vehicle SET color = 18 
 WHERE color = 'Red'; 
 UPDATE vehicle SET color = 19
 WHERE color = 'White'; 
 UPDATE vehicle SET color = 20
 WHERE color = 'Black'; 
 UPDATE vehicle SET color = 21
 WHERE color = 'Grey'; 
 
 UPDATE vehicle SET engine = 1 
 WHERE engine = '2.0'; 
 UPDATE vehicle SET engine = 2 
 WHERE engine = '3.0'; 
 UPDATE vehicle SET engine = 3 
 WHERE engine = '3.3'; 
 UPDATE vehicle SET engine = 4 
 WHERE engine = '5.0'; 
 UPDATE vehicle SET engine = 5 
 WHERE engine = '2.7'; 
 UPDATE vehicle SET engine = 6 
 WHERE engine = '3.5'; 
 UPDATE vehicle SET engine = 7 
 WHERE engine = '1.8'; 
 UPDATE vehicle SET engine = 8 
 WHERE engine = '1.5'; 
 
  UPDATE vehicle SET transmission = 1 
 WHERE transmission = '8-speed shiftable automatic'; 
 UPDATE vehicle SET transmission = 2 
 WHERE transmission = '6-speed manual'; 
 UPDATE vehicle SET transmission = 3 
 WHERE transmission = '10-speed shiftable automatic'; 
 UPDATE vehicle SET transmission = 4 
 WHERE transmission = '6-speed shiftable automatic'; 
 UPDATE vehicle SET transmission = 5 
 WHERE transmission = 'continuously variable-speed automatic'; 
 
 UPDATE vehicle SET cylinders = 1 
 WHERE cylinders = 'I4'; 
 UPDATE vehicle SET cylinders = 2 
 WHERE cylinders = 'I6'; 
 UPDATE vehicle SET cylinders = 3 
 WHERE cylinders = 'V6'; 
 UPDATE vehicle SET cylinders = 4 
 WHERE cylinders = 'V8'; 
 
 ALTER TABLE vehicle MODIFY COLUMN make int NOT NULL;
 ALTER TABLE vehicle MODIFY COLUMN model int NOT NULL;
 ALTER TABLE vehicle MODIFY COLUMN engine int NOT NULL;
 ALTER TABLE vehicle MODIFY COLUMN transmission int NOT NULL;
 ALTER TABLE vehicle MODIFY COLUMN color int NOT NULL;
 ALTER TABLE vehicle MODIFY COLUMN type int NOT NULL;
 ALTER TABLE vehicle MODIFY COLUMN cylinders int NOT NULL;
 
 ALTER TABLE vehicle
 ADD FOREIGN KEY (make) REFERENCES make(ID);
 
  ALTER TABLE vehicle
 ADD FOREIGN KEY (model) REFERENCES model(ID);
 
  ALTER TABLE vehicle
 ADD FOREIGN KEY (engine) REFERENCES engine(ID);
 
  ALTER TABLE vehicle
 ADD FOREIGN KEY (transmission) REFERENCES transmission(ID);
 
  ALTER TABLE vehicle
 ADD FOREIGN KEY (color) REFERENCES color(ID);
 
  ALTER TABLE vehicle
 ADD FOREIGN KEY (type) REFERENCES type(ID);
 
  ALTER TABLE vehicle
 ADD FOREIGN KEY (cylinders) REFERENCES cylinders(ID);
 
 /* Test case source code  */
SELECT v.id, ty.type, ma.make, mo.model, co.color, e.engine, cy.cylinders, 
tr.transmission, v.vin, v.odometer, v.retail, v.year
  FROM color co, cylinders cy, engine e, make ma, model mo, transmission tr, type 
ty, vehicle v
 WHERE  v.color = co.id
   AND  v.cylinders = cy.id
   AND  v.engine = e.id
   AND  v.make = ma.id
   AND  v.model = mo.id
   AND  v.transmission = tr.id
   AND  v.type = ty.id
ORDER BY v.id;
 
 

