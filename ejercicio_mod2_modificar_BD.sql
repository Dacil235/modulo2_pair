-- Parte 1 / Ejercicio 1:
USE tienda_zapatillas;

ALTER TABLE zapatillas
	ADD COLUMN marca VARCHAR(45) NOT NULL,
	ADD COLUMN talla INT NOT NULL;
SELECT * 
	FROM zapatillas;

ALTER TABLE empleados
	MODIFY COLUMN salario FLOAT;

ALTER TABLE clientes
	DROP COLUMN pais;
    
ALTER TABLE facturas
	ADD COLUMN total FLOAT;
    
-- Ejercicio 2:

INSERT INTO zapatillas (modelo, color, marca, talla )
	VALUES ("XQYUN", "Negro", "Nike", 42),
	       ("UOPMN", "Rosas", "Nike", 39),
            ("OPNYT", "Verdes", "Adidas", 39);
            
INSERT INTO empleados (nombre, tienda, salario, fecha_incorporacion)
	VALUES ("Laura", "Alcobendas", 25987, "2010-09-03"),
			("María", "Sevilla", NULL, "2001-04-11"),
            ("Ester", "Oviedo", 30195.98, "2000-11-29");
            
INSERT INTO clientes (id_cliente, nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
	VALUES (1, "Monica", 1234567289, "monica@email.com", "Calle Felicidad", "Móstoles", "Madrid", "28176"),
			(2, "Lorena", 289345678, "lorena@email.com", "Calle Alegria", "Barcelona", "Barcelona", "12346"),
            (3, "Carmen", 298463759, "carmen@email.com", "Calle del Color", "Vigo", "Pontevedra", "23456");
            
INSERT INTO facturas (id_factura, numero_factura, fecha, id_zapatilla, id_empleado, id_cliente, total)
	VALUES (1, 123, "2001-12-11", 1, 2, 1, 54.98),
			(2, 1234, "2005-05-23", 1, 1, 3, 89.91),
            (3, 12345, "2015-09-18", 2, 3, 3, 76.23);
/*           
DELETE FROM empleados;

ALTER TABLE empleados -- Resetear porque la hemos liado!!
	AUTO_INCREMENT = 1
    */
    
-- Ejercicio 3
UPDATE zapatillas
	SET color = "Amarillo"
    WHERE color = "Rosas";
    
UPDATE empleados
	SET tienda = "A Coruña"
	WHERE nombre = "Laura";
    
UPDATE clientes
	SET numero_telefono = 123456728
    WHERE nombre = "Monica";
    
UPDATE facturas
	SET total = 89.91
    WHERE id_zapatilla = 2;

-- Parte 2 / Ejercicio 1:


            
            
