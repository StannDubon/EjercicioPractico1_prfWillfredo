
/*Clientes*/
DELIMITER //

CREATE PROCEDURE InsertarCliente(
    IN p_nombre VARCHAR(50),
    IN p_apellido VARCHAR(50),
    IN p_telefono VARCHAR(10),
    IN p_direccion VARCHAR(225)
)
BEGIN
    INSERT INTO Tbclientes(nombre, apellido, telefono, direccion)
    VALUES (p_nombre, p_apellido, p_telefono, p_direccion);
END //

DELIMITER ;

/*Empleados*/
DELIMITER //

CREATE PROCEDURE InsertarEmpleado(
    IN p_nombre VARCHAR(50),
    IN p_apellido VARCHAR(50),
    IN p_cargo VARCHAR(50),
    IN p_fecha_contratacion DATE,
    IN p_salario DECIMAL(10,2)
)
BEGIN
    INSERT INTO tbempleados(nombre, apellido, cargo, fecha_contratacion, salario)
    VALUES (p_nombre, p_apellido, p_cargo, p_fecha_contratacion, p_salario);
END //

DELIMITER ;

/*Pedidos*/
DELIMITER //

CREATE PROCEDURE InsertarPedido(
    IN p_cliente_id CHAR(36),
    IN p_fecha_pedido DATE,
    IN p_total DECIMAL(10,2),
    IN p_estado VARCHAR(20),
    IN p_empleado_id CHAR(36)
)
BEGIN
    INSERT INTO tbpedidos(cliente_id, fecha_pedido, total, estado, empleado_id)
    VALUES (p_cliente_id, p_fecha_pedido, p_total, p_estado, p_empleado_id);
END //

DELIMITER ;

/*Productos*/
DELIMITER //

CREATE PROCEDURE InsertarProducto(
    IN p_nombre VARCHAR(100),
    IN p_descripcion VARCHAR(500),
    IN p_precio DECIMAL(10,2),
    IN p_existencias INT
)
BEGIN
    INSERT INTO productos(nombre, descripcion, precio, existencias)
    VALUES (p_nombre, p_descripcion, p_precio, p_existencias);
END //

DELIMITER ;

/*Detalles_Pedidos*/
DELIMITER //

CREATE PROCEDURE InsertarDetallePedido(
    IN p_pedido_id CHAR(36),
    IN p_producto_id CHAR(36),
    IN p_cantidad INT,
    IN p_precio_unitario DECIMAL(10,2),
    IN p_subtotal DECIMAL(10,2)
)
BEGIN
    INSERT INTO detalles_pedido(pedido_id, producto_id, cantidad, precio_unitario, subtotal)
    VALUES (p_pedido_id, p_producto_id, p_cantidad, p_precio_unitario, p_subtotal);
END //

DELIMITER ;