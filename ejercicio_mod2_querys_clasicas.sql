USE northwind;
-- conocer a nuestras trabajadoras


SELECT EmployeeID, LastName, FirstName
FROM	employees;

-- conocer los productos mas baratos

SELECT UnitPrice
FROM products
WHERE UnitPrice BETWEEN 0 and 5;


SELECT UnitPrice /* esto es solo si me pide los 5 primeros pero en este caso me piden rango*/
FROM products
order BY UnitPrice ASC
limit 5;

-- Buscar productos que no tienen precio

SELECT *
FROM products
where UnitPrice is Null;

-- precio menor a 15 dolares pero solo los id menor de 20

 SELECT *
 FROM products
 WHERE UnitPrice   < 15 and ProductID <20;

-- precio superior a 15 dolares producto  mayor de 20

 SELECT  DISTINCT ProductName
 FROM products
 WHERE UnitPrice > 15 and ProductID >20;
 

-- 10 productos , nombre y precios , datos de los paises  

SELECT ProductID, ProductName,  UnitPrice
FROM products
ORDER BY  ProductID asc
LIMIT 10;

-- hacer lo mismo en orden descendiente ---
SELECT ProductID, ProductName,  UnitPrice
FROM products
ORDER BY  ProductID DESC
LIMIT 10;

-- valor unicos de id en la  table ordens 

SELECT DISTINCT OrderID
 from orderdetails;
 
 
 
 /* de lenguaje natural a sql */
 
 

