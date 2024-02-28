
/*Inserción de tabla Clientes*/
CALL InsertarCliente('Juan', 'Perez', '1234567890', 'Calle Principal 123');
CALL InsertarCliente('Juan', 'Perez', '1234567890', 'Calle Principal 123');
CALL InsertarCliente('María', 'Rodríguez', '0987654321', 'Avenida Central 456');
CALL InsertarCliente('Carlos', 'González', '9876543210', 'Calle Secundaria 789');
CALL InsertarCliente('Ana', 'López', '5647382910', 'Carrera 10 # 23-45');
CALL InsertarCliente('José', 'Martínez', '5432167890', 'Calle 25 # 67-89');
CALL InsertarCliente('Laura', 'Hernández', '8765432109', 'Avenida Libertador 1234');
CALL InsertarCliente('David', 'Gómez', '6574839201', 'Calle 30 # 40-50');
CALL InsertarCliente('Sofía', 'Castro', '9081726354', 'Calle 50 # 60-70');
CALL InsertarCliente('Miguel', 'Sánchez', '2345678901', 'Avenida Bolívar 5678');
CALL InsertarCliente('Patricia', 'Ramírez', '8765432109', 'Carrera 15 # 20-30');
CALL InsertarCliente('Daniel', 'Pérez', '4356789201', 'Calle 70 # 80-90');
CALL InsertarCliente('Ana María', 'Ruiz', '5678901234', 'Avenida Sur 123');
CALL InsertarCliente('Marcos', 'Díaz', '1234098765', 'Calle Norte 567');
CALL InsertarCliente('Laura', 'Pérez', '9876123409', 'Carrera Este 7890');
CALL InsertarCliente('Juan Carlos', 'Gómez', '3210987654', 'Avenida Oeste 5678');

/*Inserción de tabla empleados*/
CALL InsertarEmpleado('María', 'González', 'Gerente de Ventas', '2023-01-15', 3500.00);
CALL InsertarEmpleado('Pedro', 'Sánchez', 'Analista de Datos', '2023-02-20', 2800.00);
CALL InsertarEmpleado('Ana', 'Martínez', 'Desarrollador de Software', '2023-03-10', 3200.00);
CALL InsertarEmpleado('Juan', 'López', 'Contador', '2023-04-05', 3000.00);
CALL InsertarEmpleado('Sofía', 'Rodríguez', 'Diseñador Gráfico', '2023-05-12', 2900.00);
CALL InsertarEmpleado('Carlos', 'Gómez', 'Ingeniero de Sistemas', '2023-06-18', 3800.00);
CALL InsertarEmpleado('Laura', 'Pérez', 'Especialista en Marketing', '2023-07-22', 3100.00);
CALL InsertarEmpleado('David', 'Hernández', 'Analista Financiero', '2023-08-30', 3400.00);
CALL InsertarEmpleado('Marcela', 'Ruiz', 'Asistente Administrativo', '2023-09-05', 2500.00);
CALL InsertarEmpleado('Andrés', 'Díaz', 'Consultor de Negocios', '2023-10-14', 3600.00);
CALL InsertarEmpleado('Paola', 'García', 'Recursos Humanos', '2023-11-25', 2700.00);
CALL InsertarEmpleado('Eduardo', 'Fernández', 'Técnico de Soporte', '2023-12-03', 2600.00);
CALL InsertarEmpleado('Gabriela', 'Vargas', 'Especialista en Comunicaciones', '2024-01-08', 3000.00);
CALL InsertarEmpleado('Roberto', 'Castro', 'Analista de Mercado', '2024-02-17', 3200.00);
CALL InsertarEmpleado('Natalia', 'Luna', 'Desarrollador Web', '2024-03-21', 3300.00);

/*Inserción de tabla Pedidos*/
CALL InsertarPedido('98d25517-d65a-11ee-be7a-00be43bd1f7a', '2024-02-28', 150.00, 'En Proceso', '9ae6819c-d65a-11ee-be7a-00be43bd1f7a');
CALL InsertarPedido('98d3b190-d65a-11ee-be7a-00be43bd1f7a', '2023-01-28', 234.00, 'En Proceso', '9ae6efd1-d65a-11ee-be7a-00be43bd1f7a');
CALL InsertarPedido('98d3fe0a-d65a-11ee-be7a-00be43bd1f7a', '2022-12-28', 648.00, 'En Proceso', '9ae739df-d65a-11ee-be7a-00be43bd1f7a');
CALL InsertarPedido('98d45fd3-d65a-11ee-be7a-00be43bd1f7a', '2021-07-28', 456.00, 'En Proceso', '9ae79603-d65a-11ee-be7a-00be43bd1f7a');
CALL InsertarPedido('98d4aed1-d65a-11ee-be7a-00be43bd1f7a', '2020-08-28', 234.00, 'En Proceso', '9ae7e904-d65a-11ee-be7a-00be43bd1f7a');
CALL InsertarPedido('98d4f754-d65a-11ee-be7a-00be43bd1f7a', '2019-02-28', 354.00, 'En Proceso', '9ae8404b-d65a-11ee-be7a-00be43bd1f7a');
CALL InsertarPedido('98d5309c-d65a-11ee-be7a-00be43bd1f7a', '2018-03-28', 150.00, 'En Proceso', '9ae88284-d65a-11ee-be7a-00be43bd1f7a');
CALL InsertarPedido('98d58a85-d65a-11ee-be7a-00be43bd1f7a', '2017-02-28', 456.00, 'En Proceso', '9ae8df2b-d65a-11ee-be7a-00be43bd1f7a');
CALL InsertarPedido('98d5dd19-d65a-11ee-be7a-00be43bd1f7a', '2016-02-28', 150.00, 'En Proceso', '9ae92bb8-d65a-11ee-be7a-00be43bd1f7a');
CALL InsertarPedido('98d62e89-d65a-11ee-be7a-00be43bd1f7a', '2015-02-28', 150.00, 'En Proceso', '9ae96670-d65a-11ee-be7a-00be43bd1f7a');
CALL InsertarPedido('98d681d2-d65a-11ee-be7a-00be43bd1f7a', '2014-02-28', 12.00, 'En Proceso', '9ae99d98-d65a-11ee-be7a-00be43bd1f7a');
CALL InsertarPedido('98d6d0af-d65a-11ee-be7a-00be43bd1f7a', '2013-04-28', 465.00, 'En Proceso', '9ae9d3d9-d65a-11ee-be7a-00be43bd1f7a');
CALL InsertarPedido('98d7219b-d65a-11ee-be7a-00be43bd1f7a', '2012-07-28', 756.00, 'En Proceso', '9aea2dd5-d65a-11ee-be7a-00be43bd1f7a');
CALL InsertarPedido('98d77090-d65a-11ee-be7a-00be43bd1f7a', '2011-03-28', 234.00, 'En Proceso', '9aea7b40-d65a-11ee-be7a-00be43bd1f7a');
CALL InsertarPedido('98d7c394-d65a-11ee-be7a-00be43bd1f7a', '2010-09-28', 324.00, 'En Proceso', '9aeadc74-d65a-11ee-be7a-00be43bd1f7a');

/*Inserción de tabla Productos*/
CALL InsertarProducto('Laptop', 'Computadora portátil de última generación', 1200.00, 50);
CALL InsertarProducto('Laptop', 'Computadora portátil de última generación', 1200.00, 50);
CALL InsertarProducto('Smartphone', 'Teléfono inteligente con cámara de alta resolución', 800.00, 100);
CALL InsertarProducto('Tablet', 'Tableta con pantalla táctil de 10 pulgadas', 400.00, 75);
CALL InsertarProducto('Televisor', 'Televisor LED de 55 pulgadas con resolución 4K', 1500.00, 30);
CALL InsertarProducto('Auriculares inalámbricos', 'Auriculares Bluetooth con cancelación de ruido', 100.00, 200);
CALL InsertarProducto('Impresora', 'Impresora láser multifuncional', 300.00, 50);
CALL InsertarProducto('Altavoces Bluetooth', 'Altavoces portátiles con conexión inalámbrica', 80.00, 150);
CALL InsertarProducto('Cámara digital', 'Cámara compacta de 20 megapíxeles', 250.00, 80);
CALL InsertarProducto('Monitor de computadora', 'Monitor de 24 pulgadas con resolución Full HD', 200.00, 100);
CALL InsertarProducto('Teclado y ratón inalámbricos', 'Conjunto de teclado y ratón ergonómicos', 50.00, 120);
CALL InsertarProducto('Disco duro externo', 'Disco duro portátil de 1TB', 70.00, 90);
CALL InsertarProducto('Router WiFi', 'Router de doble banda para conexiones de alta velocidad', 120.00, 60);
CALL InsertarProducto('Batería externa', 'Batería portátil de 10000mAh', 30.00, 180);
CALL InsertarProducto('Impresora 3D', 'Impresora de escritorio para imprimir objetos en 3D', 500.00, 25);
CALL InsertarProducto('Webcam HD', 'Cámara web de alta definición para videollamadas', 40.00, 110);

/*Inserción de tabla Detalles Pedido*/
CALL InsertarDetallePedido('f765e046-d65b-11ee-be7a-00be43bd1f7a', '629cfbf1-d65c-11ee-be7a-00be43bd1f7a', 2, 1200.00, 2400.00);
CALL InsertarDetallePedido('f766cbcb-d65b-11ee-be7a-00be43bd1f7a', '629e027d-d65c-11ee-be7a-00be43bd1f7a', 5, 800.00, 4000.00);
CALL InsertarDetallePedido('f76706bf-d65b-11ee-be7a-00be43bd1f7a', '629e408d-d65c-11ee-be7a-00be43bd1f7a', 3, 400.00, 1200.00);
CALL InsertarDetallePedido('f7679036-d65b-11ee-be7a-00be43bd1f7a', '629e9e9e-d65c-11ee-be7a-00be43bd1f7a', 1, 1500.00, 1500.00);
CALL InsertarDetallePedido('f767c942-d65b-11ee-be7a-00be43bd1f7a', '629f078b-d65c-11ee-be7a-00be43bd1f7a', 10, 100.00, 1000.00);
CALL InsertarDetallePedido('f7681dfd-d65b-11ee-be7a-00be43bd1f7a', '629f432a-d65c-11ee-be7a-00be43bd1f7a', 2, 300.00, 600.00);
CALL InsertarDetallePedido('f7686732-d65b-11ee-be7a-00be43bd1f7a', '629f7cc2-d65c-11ee-be7a-00be43bd1f7a', 8, 80.00, 640.00);
CALL InsertarDetallePedido('f768a03d-d65b-11ee-be7a-00be43bd1f7a', '629fb577-d65c-11ee-be7a-00be43bd1f7a', 4, 250.00, 1000.00);
CALL InsertarDetallePedido('f768d944-d65b-11ee-be7a-00be43bd1f7a', '629fee61-d65c-11ee-be7a-00be43bd1f7a', 6, 200.00, 1200.00);
CALL InsertarDetallePedido('f7690e48-d65b-11ee-be7a-00be43bd1f7a', '62a0369a-d65c-11ee-be7a-00be43bd1f7a', 3, 50.00, 150.00);
CALL InsertarDetallePedido('f7694363-d65b-11ee-be7a-00be43bd1f7a', '62a07594-d65c-11ee-be7a-00be43bd1f7a', 2, 70.00, 140.00);
CALL InsertarDetallePedido('f7697e90-d65b-11ee-be7a-00be43bd1f7a', '62a0b036-d65c-11ee-be7a-00be43bd1f7a', 1, 120.00, 120.00);
CALL InsertarDetallePedido('f769b6c5-d65b-11ee-be7a-00be43bd1f7a', '62a0e991-d65c-11ee-be7a-00be43bd1f7a', 5, 30.00, 150.00);
CALL InsertarDetallePedido('f769f135-d65b-11ee-be7a-00be43bd1f7a', '62a122f2-d65c-11ee-be7a-00be43bd1f7a', 2, 500.00, 1000.00);
CALL InsertarDetallePedido('f76a2f40-d65b-11ee-be7a-00be43bd1f7a', '62a15a07-d65c-11ee-be7a-00be43bd1f7a', 3, 40.00, 120.00);