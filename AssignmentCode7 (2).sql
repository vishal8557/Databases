/*
SELECT REPLACE(email,from_renovations,to_dealership);
*/

UPDATE employee SET email = REPLACE(email,'renovations', 'dealership');
/*
ALTER TABLE vehicle MODIFY COLUMN make int NOT NULL;
*/
ALTER TABLE sale MODIFY COLUMN salePrice decimal(8,2) NOT NULL default 0;



INSERT INTO sale(employeeID, customerId, vehicleid) VALUES 

(1, 14, 3),

(2, 30, 33),

(3, 8, 15),

(5, 18, 21),

(8, 12, 9),

(10, 31, 36);

UPDATE sale
 SET salePrice =
  (SELECT retail
   FROM vehicle
 WHERE id = 3 
 )
  WHERE vehicleid = 3;
  
  UPDATE sale
 SET salePrice =
  (SELECT retail
   FROM vehicle
 WHERE id = 33 
 )
  WHERE vehicleid = 33;
  
  UPDATE sale
 SET salePrice =
  (SELECT retail
   FROM vehicle
 WHERE id = 15
 )
  WHERE vehicleid = 15;

UPDATE sale
 SET salePrice =
  (SELECT retail
   FROM vehicle
 WHERE id = 21
 )
  WHERE vehicleid = 21;
  
  UPDATE sale
 SET salePrice =
  (SELECT retail
   FROM vehicle
 WHERE id = 9 
 )
  WHERE vehicleid = 9;

UPDATE sale
 SET salePrice =
  (SELECT retail
   FROM vehicle
 WHERE id = 36 
 )
  WHERE vehicleid = 36;

CREATE VIEW saleView AS
 SELECT concat(c.firstName, ' ', c.lastName) AS 'Customer Name',
 concat(c.address, ' ', cs.city, ' ', cs.state, ' ', cs.zipCode) AS 'Customer Address',
 c.phone AS 'Customer Phone',
c.email AS 'Customer Email',
concat(e.firstName, ' ', e.lastName) AS 'Sales Associate',
e.phone AS 'Sales Associate Phone',
e.email AS 'Sales Associate Email',
v.year as 'Year',
ma.make as 'Make',
mo.model as 'Model',
co.color as 'Color',
t.type as 'Type',
v.vin as 'VIN',
s.salePrice as 'Sale Price'
FROM customer c, employee e, sale s, cityState cs, vehicle v, make ma,model mo, color co, type t
 WHERE s.customerId = c.ID
  AND s.employeeID = e.ID
  AND s.vehicleid = v.ID
 AND c.zipCode = cs.zipCode
 AND v.make = ma.ID
 AND v.model = mo.ID
 AND v.color = co.ID
 AND v.type = t.ID
   ORDER BY v.ID;
  
  


