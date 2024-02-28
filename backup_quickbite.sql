-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: QuickBite
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `detalles_pedido`
--

DROP TABLE IF EXISTS `detalles_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalles_pedido` (
  `detalle_id` char(36) NOT NULL DEFAULT uuid(),
  `pedido_id` char(36) DEFAULT NULL,
  `producto_id` char(36) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`detalle_id`),
  KEY `producto_deta` (`producto_id`),
  KEY `detalle_pedi` (`pedido_id`),
  CONSTRAINT `detalle_pedi` FOREIGN KEY (`pedido_id`) REFERENCES `tbpedidos` (`pedido_id`),
  CONSTRAINT `producto_deta` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`producto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_pedido`
--

LOCK TABLES `detalles_pedido` WRITE;
/*!40000 ALTER TABLE `detalles_pedido` DISABLE KEYS */;
INSERT INTO `detalles_pedido` VALUES ('1bf84a24-d65d-11ee-be7a-00be43bd1f7a','f765e046-d65b-11ee-be7a-00be43bd1f7a','629cfbf1-d65c-11ee-be7a-00be43bd1f7a',2,1200.00,2400.00),('1bf9488e-d65d-11ee-be7a-00be43bd1f7a','f766cbcb-d65b-11ee-be7a-00be43bd1f7a','629e027d-d65c-11ee-be7a-00be43bd1f7a',5,800.00,4000.00),('1bf9f0df-d65d-11ee-be7a-00be43bd1f7a','f76706bf-d65b-11ee-be7a-00be43bd1f7a','629e408d-d65c-11ee-be7a-00be43bd1f7a',3,400.00,1200.00),('1bfa3617-d65d-11ee-be7a-00be43bd1f7a','f7679036-d65b-11ee-be7a-00be43bd1f7a','629e9e9e-d65c-11ee-be7a-00be43bd1f7a',1,1500.00,1500.00),('1bfa72ca-d65d-11ee-be7a-00be43bd1f7a','f767c942-d65b-11ee-be7a-00be43bd1f7a','629f078b-d65c-11ee-be7a-00be43bd1f7a',10,100.00,1000.00),('1bfab00b-d65d-11ee-be7a-00be43bd1f7a','f7681dfd-d65b-11ee-be7a-00be43bd1f7a','629f432a-d65c-11ee-be7a-00be43bd1f7a',2,300.00,600.00),('1bfaef3b-d65d-11ee-be7a-00be43bd1f7a','f7686732-d65b-11ee-be7a-00be43bd1f7a','629f7cc2-d65c-11ee-be7a-00be43bd1f7a',8,80.00,640.00),('1bfb2b0b-d65d-11ee-be7a-00be43bd1f7a','f768a03d-d65b-11ee-be7a-00be43bd1f7a','629fb577-d65c-11ee-be7a-00be43bd1f7a',4,250.00,1000.00),('1bfb67a5-d65d-11ee-be7a-00be43bd1f7a','f768d944-d65b-11ee-be7a-00be43bd1f7a','629fee61-d65c-11ee-be7a-00be43bd1f7a',6,200.00,1200.00),('1bfbafb6-d65d-11ee-be7a-00be43bd1f7a','f7690e48-d65b-11ee-be7a-00be43bd1f7a','62a0369a-d65c-11ee-be7a-00be43bd1f7a',3,50.00,150.00),('1bfc0561-d65d-11ee-be7a-00be43bd1f7a','f7694363-d65b-11ee-be7a-00be43bd1f7a','62a07594-d65c-11ee-be7a-00be43bd1f7a',2,70.00,140.00),('1bfc415c-d65d-11ee-be7a-00be43bd1f7a','f7697e90-d65b-11ee-be7a-00be43bd1f7a','62a0b036-d65c-11ee-be7a-00be43bd1f7a',1,120.00,120.00),('1bfc82f6-d65d-11ee-be7a-00be43bd1f7a','f769b6c5-d65b-11ee-be7a-00be43bd1f7a','62a0e991-d65c-11ee-be7a-00be43bd1f7a',5,30.00,150.00),('1bfccb9c-d65d-11ee-be7a-00be43bd1f7a','f769f135-d65b-11ee-be7a-00be43bd1f7a','62a122f2-d65c-11ee-be7a-00be43bd1f7a',2,500.00,1000.00),('1bfd05b2-d65d-11ee-be7a-00be43bd1f7a','f76a2f40-d65b-11ee-be7a-00be43bd1f7a','62a15a07-d65c-11ee-be7a-00be43bd1f7a',3,40.00,120.00);
/*!40000 ALTER TABLE `detalles_pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER actualizar_existencias AFTER INSERT ON detalles_pedido
FOR EACH ROW
BEGIN
    DECLARE stock_actual INT;
    
    -- Obtener la existencia actual del producto
    SELECT existencias INTO stock_actual FROM productos WHERE producto_id = NEW.producto_id;
    
    -- Calcular el nuevo stock después de la compra
    SET stock_actual = stock_actual - NEW.cantidad;
    
    -- Actualizar la existencia del producto
    UPDATE productos SET existencias = stock_actual WHERE producto_id = NEW.producto_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `producto_id` char(36) NOT NULL DEFAULT uuid(),
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `existencias` int(11) DEFAULT NULL,
  PRIMARY KEY (`producto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('629cfbf1-d65c-11ee-be7a-00be43bd1f7a','Laptop','Computadora portátil de última generación',1200.00,48),('629e027d-d65c-11ee-be7a-00be43bd1f7a','Laptop','Computadora portátil de última generación',1200.00,45),('629e408d-d65c-11ee-be7a-00be43bd1f7a','Smartphone','Teléfono inteligente con cámara de alta resolución',800.00,97),('629e9e9e-d65c-11ee-be7a-00be43bd1f7a','Tablet','Tableta con pantalla táctil de 10 pulgadas',400.00,74),('629f078b-d65c-11ee-be7a-00be43bd1f7a','Televisor','Televisor LED de 55 pulgadas con resolución 4K',1500.00,20),('629f432a-d65c-11ee-be7a-00be43bd1f7a','Auriculares inalámbricos','Auriculares Bluetooth con cancelación de ruido',100.00,198),('629f7cc2-d65c-11ee-be7a-00be43bd1f7a','Impresora','Impresora láser multifuncional',300.00,42),('629fb577-d65c-11ee-be7a-00be43bd1f7a','Altavoces Bluetooth','Altavoces portátiles con conexión inalámbrica',80.00,146),('629fee61-d65c-11ee-be7a-00be43bd1f7a','Cámara digital','Cámara compacta de 20 megapíxeles',250.00,74),('62a0369a-d65c-11ee-be7a-00be43bd1f7a','Monitor de computadora','Monitor de 24 pulgadas con resolución Full HD',200.00,97),('62a07594-d65c-11ee-be7a-00be43bd1f7a','Teclado y ratón inalámbricos','Conjunto de teclado y ratón ergonómicos',50.00,118),('62a0b036-d65c-11ee-be7a-00be43bd1f7a','Disco duro externo','Disco duro portátil de 1TB',70.00,89),('62a0e991-d65c-11ee-be7a-00be43bd1f7a','Router WiFi','Router de doble banda para conexiones de alta velocidad',120.00,55),('62a122f2-d65c-11ee-be7a-00be43bd1f7a','Batería externa','Batería portátil de 10000mAh',30.00,178),('62a15a07-d65c-11ee-be7a-00be43bd1f7a','Impresora 3D','Impresora de escritorio para imprimir objetos en 3D',500.00,22),('62a18fa4-d65c-11ee-be7a-00be43bd1f7a','Webcam HD','Cámara web de alta definición para videollamadas',40.00,110);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbclientes`
--

DROP TABLE IF EXISTS `tbclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbclientes` (
  `cliente_id` char(36) NOT NULL DEFAULT uuid(),
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `direccion` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`cliente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbclientes`
--

LOCK TABLES `tbclientes` WRITE;
/*!40000 ALTER TABLE `tbclientes` DISABLE KEYS */;
INSERT INTO `tbclientes` VALUES ('98d25517-d65a-11ee-be7a-00be43bd1f7a','Juan','Perez','1234567890','Calle Principal 123'),('98d3b190-d65a-11ee-be7a-00be43bd1f7a','Juan','Perez','1234567890','Calle Principal 123'),('98d3fe0a-d65a-11ee-be7a-00be43bd1f7a','María','Rodríguez','0987654321','Avenida Central 456'),('98d45fd3-d65a-11ee-be7a-00be43bd1f7a','Carlos','González','9876543210','Calle Secundaria 789'),('98d4aed1-d65a-11ee-be7a-00be43bd1f7a','Ana','López','5647382910','Carrera 10 # 23-45'),('98d4f754-d65a-11ee-be7a-00be43bd1f7a','José','Martínez','5432167890','Calle 25 # 67-89'),('98d5309c-d65a-11ee-be7a-00be43bd1f7a','Laura','Hernández','8765432109','Avenida Libertador 1234'),('98d58a85-d65a-11ee-be7a-00be43bd1f7a','David','Gómez','6574839201','Calle 30 # 40-50'),('98d5dd19-d65a-11ee-be7a-00be43bd1f7a','Sofía','Castro','9081726354','Calle 50 # 60-70'),('98d62e89-d65a-11ee-be7a-00be43bd1f7a','Miguel','Sánchez','2345678901','Avenida Bolívar 5678'),('98d681d2-d65a-11ee-be7a-00be43bd1f7a','Patricia','Ramírez','8765432109','Carrera 15 # 20-30'),('98d6d0af-d65a-11ee-be7a-00be43bd1f7a','Daniel','Pérez','4356789201','Calle 70 # 80-90'),('98d7219b-d65a-11ee-be7a-00be43bd1f7a','Ana María','Ruiz','5678901234','Avenida Sur 123'),('98d77090-d65a-11ee-be7a-00be43bd1f7a','Marcos','Díaz','1234098765','Calle Norte 567'),('98d7c394-d65a-11ee-be7a-00be43bd1f7a','Laura','Pérez','9876123409','Carrera Este 7890'),('98d7fbdb-d65a-11ee-be7a-00be43bd1f7a','Juan Carlos','Gómez','3210987654','Avenida Oeste 5678');
/*!40000 ALTER TABLE `tbclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbempleados`
--

DROP TABLE IF EXISTS `tbempleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbempleados` (
  `empleado_id` char(36) NOT NULL DEFAULT uuid(),
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `fecha_contratacion` date DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`empleado_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbempleados`
--

LOCK TABLES `tbempleados` WRITE;
/*!40000 ALTER TABLE `tbempleados` DISABLE KEYS */;
INSERT INTO `tbempleados` VALUES ('9ae6819c-d65a-11ee-be7a-00be43bd1f7a','María','González','Gerente de Ventas','2023-01-15',3500.00),('9ae6efd1-d65a-11ee-be7a-00be43bd1f7a','Pedro','Sánchez','Analista de Datos','2023-02-20',2800.00),('9ae739df-d65a-11ee-be7a-00be43bd1f7a','Ana','Martínez','Desarrollador de Software','2023-03-10',3200.00),('9ae79603-d65a-11ee-be7a-00be43bd1f7a','Juan','López','Contador','2023-04-05',3000.00),('9ae7e904-d65a-11ee-be7a-00be43bd1f7a','Sofía','Rodríguez','Diseñador Gráfico','2023-05-12',2900.00),('9ae8404b-d65a-11ee-be7a-00be43bd1f7a','Carlos','Gómez','Ingeniero de Sistemas','2023-06-18',3800.00),('9ae88284-d65a-11ee-be7a-00be43bd1f7a','Laura','Pérez','Especialista en Marketing','2023-07-22',3100.00),('9ae8df2b-d65a-11ee-be7a-00be43bd1f7a','David','Hernández','Analista Financiero','2023-08-30',3400.00),('9ae92bb8-d65a-11ee-be7a-00be43bd1f7a','Marcela','Ruiz','Asistente Administrativo','2023-09-05',2500.00),('9ae96670-d65a-11ee-be7a-00be43bd1f7a','Andrés','Díaz','Consultor de Negocios','2023-10-14',3600.00),('9ae99d98-d65a-11ee-be7a-00be43bd1f7a','Paola','García','Recursos Humanos','2023-11-25',2700.00),('9ae9d3d9-d65a-11ee-be7a-00be43bd1f7a','Eduardo','Fernández','Técnico de Soporte','2023-12-03',2600.00),('9aea2dd5-d65a-11ee-be7a-00be43bd1f7a','Gabriela','Vargas','Especialista en Comunicaciones','2024-01-08',3000.00),('9aea7b40-d65a-11ee-be7a-00be43bd1f7a','Roberto','Castro','Analista de Mercado','2024-02-17',3200.00),('9aeadc74-d65a-11ee-be7a-00be43bd1f7a','Natalia','Luna','Desarrollador Web','2024-03-21',3300.00);
/*!40000 ALTER TABLE `tbempleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbpedidos`
--

DROP TABLE IF EXISTS `tbpedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbpedidos` (
  `pedido_id` char(36) NOT NULL DEFAULT uuid(),
  `cliente_id` char(36) DEFAULT NULL,
  `fecha_pedido` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `empleado_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`pedido_id`),
  KEY `pedido_cliente` (`cliente_id`),
  KEY `pedido_emple` (`empleado_id`),
  CONSTRAINT `pedido_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `tbclientes` (`cliente_id`),
  CONSTRAINT `pedido_emple` FOREIGN KEY (`empleado_id`) REFERENCES `tbempleados` (`empleado_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbpedidos`
--

LOCK TABLES `tbpedidos` WRITE;
/*!40000 ALTER TABLE `tbpedidos` DISABLE KEYS */;
INSERT INTO `tbpedidos` VALUES ('f765e046-d65b-11ee-be7a-00be43bd1f7a','98d25517-d65a-11ee-be7a-00be43bd1f7a','2024-02-28',150.00,'En Proceso','9ae6819c-d65a-11ee-be7a-00be43bd1f7a'),('f766cbcb-d65b-11ee-be7a-00be43bd1f7a','98d3b190-d65a-11ee-be7a-00be43bd1f7a','2023-01-28',234.00,'En Proceso','9ae6efd1-d65a-11ee-be7a-00be43bd1f7a'),('f76706bf-d65b-11ee-be7a-00be43bd1f7a','98d3fe0a-d65a-11ee-be7a-00be43bd1f7a','2022-12-28',648.00,'En Proceso','9ae739df-d65a-11ee-be7a-00be43bd1f7a'),('f7679036-d65b-11ee-be7a-00be43bd1f7a','98d45fd3-d65a-11ee-be7a-00be43bd1f7a','2021-07-28',456.00,'En Proceso','9ae79603-d65a-11ee-be7a-00be43bd1f7a'),('f767c942-d65b-11ee-be7a-00be43bd1f7a','98d4aed1-d65a-11ee-be7a-00be43bd1f7a','2020-08-28',234.00,'En Proceso','9ae7e904-d65a-11ee-be7a-00be43bd1f7a'),('f7681dfd-d65b-11ee-be7a-00be43bd1f7a','98d4f754-d65a-11ee-be7a-00be43bd1f7a','2019-02-28',354.00,'En Proceso','9ae8404b-d65a-11ee-be7a-00be43bd1f7a'),('f7686732-d65b-11ee-be7a-00be43bd1f7a','98d5309c-d65a-11ee-be7a-00be43bd1f7a','2018-03-28',150.00,'En Proceso','9ae88284-d65a-11ee-be7a-00be43bd1f7a'),('f768a03d-d65b-11ee-be7a-00be43bd1f7a','98d58a85-d65a-11ee-be7a-00be43bd1f7a','2017-02-28',456.00,'En Proceso','9ae8df2b-d65a-11ee-be7a-00be43bd1f7a'),('f768d944-d65b-11ee-be7a-00be43bd1f7a','98d5dd19-d65a-11ee-be7a-00be43bd1f7a','2016-02-28',150.00,'En Proceso','9ae92bb8-d65a-11ee-be7a-00be43bd1f7a'),('f7690e48-d65b-11ee-be7a-00be43bd1f7a','98d62e89-d65a-11ee-be7a-00be43bd1f7a','2015-02-28',150.00,'En Proceso','9ae96670-d65a-11ee-be7a-00be43bd1f7a'),('f7694363-d65b-11ee-be7a-00be43bd1f7a','98d681d2-d65a-11ee-be7a-00be43bd1f7a','2014-02-28',12.00,'En Proceso','9ae99d98-d65a-11ee-be7a-00be43bd1f7a'),('f7697e90-d65b-11ee-be7a-00be43bd1f7a','98d6d0af-d65a-11ee-be7a-00be43bd1f7a','2013-04-28',465.00,'En Proceso','9ae9d3d9-d65a-11ee-be7a-00be43bd1f7a'),('f769b6c5-d65b-11ee-be7a-00be43bd1f7a','98d7219b-d65a-11ee-be7a-00be43bd1f7a','2012-07-28',756.00,'En Proceso','9aea2dd5-d65a-11ee-be7a-00be43bd1f7a'),('f769f135-d65b-11ee-be7a-00be43bd1f7a','98d77090-d65a-11ee-be7a-00be43bd1f7a','2011-03-28',234.00,'En Proceso','9aea7b40-d65a-11ee-be7a-00be43bd1f7a'),('f76a2f40-d65b-11ee-be7a-00be43bd1f7a','98d7c394-d65a-11ee-be7a-00be43bd1f7a','2010-09-28',324.00,'En Proceso','9aeadc74-d65a-11ee-be7a-00be43bd1f7a');
/*!40000 ALTER TABLE `tbpedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-28 11:31:32
