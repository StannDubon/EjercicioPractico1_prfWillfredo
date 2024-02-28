/*Creación de usuario

mysql -u root
CREATE USER 'quick_bite'@'localhost' IDENTIFIED BY 'Quick_bite_2024'; GRANT ALL PRIVILEGES ON *.* TO 'quick_bite'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
*/

/*
Creación de Back Up

mysqldump -u quick_bite -pQuick_bite_2024 QuickBite > backup_quickbite.sql
*/

DROP DATABASE IF EXISTS QuickBite
CREATE DATABASE QuickBite
USE QuickBite

CREATE TABLE Tbclientes(
cliente_id CHAR(36) PRIMARY KEY DEFAULT UUID(),
nombre VARCHAR(50) NOT null,
apellido VARCHAR(50),
telefono VARCHAR(10),
direccion VARCHAR(225)
);

CREATE TABLE tbempleados(
empleado_id CHAR(36) PRIMARY KEY DEFAULT UUID(),
nombre VARCHAR(50),
apellido VARCHAR(50),
cargo VARCHAR(50),
fecha_contratacion DATE,
salario DECIMAL(10,2)
);

CREATE TABLE tbpedidos(
pedido_id CHAR(36) PRIMARY KEY DEFAULT UUID(),
cliente_id CHAR(36),
fecha_pedido DATE,
total DECIMAL(10,2),
estado VARCHAR (20),
empleado_id CHAR(36)
);

CREATE TABLE productos(
producto_id CHAR(36) PRIMARY KEY DEFAULT UUID(),
nombre VARCHAR(100),
descripcion VARCHAR(500),
precio DECIMAL(10,2),
existencias INT
);

CREATE TABLE detalles_pedido(
detalle_id CHAR(36) PRIMARY KEY DEFAULT UUID(),
pedido_id CHAR(36),
producto_id CHAR(36),
cantidad INT,
precio_unitario DECIMAL(10,2),
subtotal DECIMAL(10,2)
);

ALTER TABLE tbpedidos ADD CONSTRAINT pedido_cliente
FOREIGN KEY (cliente_id) REFERENCES Tbclientes(cliente_id)

ALTER TABLE tbpedidos ADD CONSTRAINT pedido_emple
FOREIGN KEY (empleado_id) REFERENCES tbempleados(empleado_id)

ALTER TABLE detalles_pedido ADD CONSTRAINT producto_deta
FOREIGN KEY (producto_id) REFERENCES productos(producto_id)

ALTER TABLE detalles_pedido ADD CONSTRAINT detalle_pedi
FOREIGN KEY (pedido_id) REFERENCES tbpedidos(pedido_id)

ALTER TABLE Tbclientes
ALTER COLUMN nombre VARCHAR(50) NOT NULL,
ALTER COLUMN direccion VARCHAR(225) NOT NULL;

ALTER TABLE tbempleados
ALTER COLUMN nombre VARCHAR(50) NOT NULL,
ALTER COLUMN apellido VARCHAR(50) NOT NULL,
ALTER COLUMN cargo VARCHAR(50) NOT NULL,
ALTER COLUMN fecha_contratacion DATE NOT NULL,
ALTER COLUMN salario DECIMAL(10,2) NOT NULL;

ALTER TABLE tbpedidos
ALTER COLUMN cliente_id CHAR(36) NOT NULL,
ALTER COLUMN fecha_pedido DATE NOT NULL,
ALTER COLUMN total DECIMAL(10,2) NOT NULL,
ALTER COLUMN estado VARCHAR(20) NOT NULL,
ALTER COLUMN empleado_id CHAR(36) NOT NULL;

ALTER TABLE productos
ALTER COLUMN nombre VARCHAR(100) NOT NULL,
ALTER COLUMN descripcion VARCHAR(500) NOT NULL,
ALTER COLUMN precio DECIMAL(10,2) NOT NULL,
ALTER COLUMN existencias INT NOT NULL;

ALTER TABLE detalles_pedido
ALTER COLUMN pedido_id CHAR(36) NOT NULL,
ALTER COLUMN producto_id CHAR(36) NOT NULL,
ALTER COLUMN cantidad INT NOT NULL,
ALTER COLUMN precio_unitario DECIMAL(10,2) NOT NULL,
ALTER COLUMN subtotal DECIMAL(10,2) NOT NULL;


/*Trigger de descuento*/
DELIMITER //

CREATE TRIGGER actualizar_existencias AFTER INSERT ON detalles_pedido
FOR EACH ROW
BEGIN
    DECLARE stock_actual INT;
    
    -- Obtener la existencia actual del producto
    SELECT existencias INTO stock_actual FROM productos WHERE producto_id = NEW.producto_id;
    
    -- Calcular el nuevo stock después de la compra
    SET stock_actual = stock_actual - NEW.cantidad;
    
    -- Actualizar la existencia del producto
    UPDATE productos SET existencias = stock_actual WHERE producto_id = NEW.producto_id;
END;
//

DELIMITER ;