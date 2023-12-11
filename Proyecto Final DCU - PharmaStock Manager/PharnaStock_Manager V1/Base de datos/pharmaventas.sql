-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-07-2021 a las 11:03:00
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sis_java`
--

-- --------------------------------------------------------
CREATE DATABASE pharmaventas
USE pharmaventas
--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `dni` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(180) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(1, '1234598', 'Carlos Joel', '92413878', 'Pantoja, Santo Domingo');
-- Ejemplo 2
INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(2, '5678123', 'Laura García', '8097654321', 'Gazcue, Santo Domingo');

-- Ejemplo 3
INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(3, '9876543', 'Roberto Fernández', '8299876543', 'Bella Vista, Santo Domingo');

-- Ejemplo 4
INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(4, '8765432', 'Ana Martínez', '8098765432', 'Ensanche Naco, Santo Domingo');

-- Ejemplo 5
INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(5, '3456789', 'Diego Rodríguez', '8297654321', 'Villa Mella, Santo Domingo');

-- Ejemplo 6
INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(6, '2345678', 'María Pérez', '8098765432', 'Los Alcarrizos, Santo Domingo');

-- Ejemplo 7
INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(7, '4567890', 'Juan Sánchez', '8299876543', 'Santiago, República Dominicana');

-- Ejemplo 8
INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(8, '8901234', 'Sofía Torres', '8098765432', 'La Romana, República Dominicana');

-- Ejemplo 9
INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(9, '5678901', 'Pedro Castillo', '8297654321', 'Puerto Plata, República Dominicana');

-- Ejemplo 10
INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(10, '0123456', 'Luisa García', '8098765432', 'Higüey, República Dominicana');

-- Ejemplo 11
INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(11, '6543210', 'Miguel Fernández', '8299876543', 'Bonao, República Dominicana');

-- Ejemplo 12
INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(12, '7890123', 'Carmen Martínez', '8098765432', 'San Francisco de Macorís, República Dominicana');

-- Ejemplo 13
INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(13, '9870123', 'Daniel Rodríguez', '8297654321', 'San Pedro de Macorís, República Dominicana');

-- Ejemplo 14
INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(14, '5430123', 'Laura Pérez', '8098765432', 'La Vega, República Dominicana');

-- Ejemplo 15
INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(15, '7894561', 'José Sánchez', '8299876543', 'Mao, República Dominicana');

-- Ejemplo 16
INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(16, '1235678', 'Carla Torres', '8098765432', 'Azua, República Dominicana');

-- Ejemplo 17
INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(17, '8902345', 'Andrés Castillo', '8297654321', 'Barahona, República Dominicana');

-- Ejemplo 18
INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(18, '2347890', 'Elena García', '8098765432', 'Nagua, República Dominicana');

-- Ejemplo 19
INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(19, '5678901', 'Rafael Sánchez', '8299876543', 'Salcedo, República Dominicana');

-- Ejemplo 20
INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(20, '0123456', 'Laura Fernández', '8098765432', 'Monte Plata, República Dominicana');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `ruc` int(15) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `mensaje` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `ruc`, `nombre`, `telefono`, `direccion`, `mensaje`) VALUES
(1, 71347267, 'PharmaStock Manager', 925491523, 'Santo Domingo', 'PharmaStock Manager');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `proveedor` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO productos (id, codigo, nombre, proveedor, stock, precio)
VALUES
  (1, '001', 'Aspirina', 1, 100, 5),
  (2, '002', 'Ibuprofeno', 2, 150, 7), 
  (3, '003', 'Paracetamol', 3, 80, 4),
  (4, '004', 'Loratadina', 4, 200, 10),
  (5, '005', 'Omeprazol', 5, 90, 15),
  (6, '006', 'Esomeprazol', 1, 75, 18),
  (7, '007', 'Losartan', 7, 135, 9),
  (8, '008', 'Atorvastatina', 8, 170, 22),
  (9, '009', 'Sertralina', 9, 125, 19), 
  (10, '010', 'Metformina', 10, 105, 14),
  (11, '011', 'Amoxicilina', 11, 95, 17),
  (12, '012', 'Ciprofloxacino', 12, 180, 20), 
  (13, '013', 'Azitromicina', 4, 140, 12),
  (14, '014', 'Prednisona', 14, 120, 23),
  (15, '015', 'Salbutamol', 15, 100, 11), 
  (16, '016', 'Formoterol', 16, 90, 13),
  (17, '017', 'Budesonida', 5, 130, 16),
  (18, '018', 'Insulina Glargina', 18, 115, 21), 
  (19, '019', 'Adalimumab', 19, 175, 25), 
  (20, '020', 'Rivaroxaban', 20, 150, 18);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `ruc` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO proveedor (id, ruc, nombre, telefono, direccion) 
VALUES 
  (1, '200', 'Bayer', '798978879', 'Estados Unidos'),
  (2, '300', 'Pfizer', '898778899', 'Estados Unidos'),
  (3, '400', 'Johnson & Johnson', '899768909', 'Estados Unidos'),
  (4, '500', 'GlaxoSmithKline', '888767899', 'Reino Unido'),
  (5, '600', 'Novartis', '877657890', 'Suiza'),
  (6, '700', 'Merck & Co.', '866547990','Estados Unidos'),
  (7, '800', 'Sanofi','855449909','Francia'),
  (8, '900', 'AstraZeneca','844338819','Reino Unido'),
  (9, '001','Roche','833882920','Suiza'),
  (10,'101','AbbVie','999883930','Estados Unidos'),
  (11,'202','Takeda','822774840','Japon'),
  (12,'303','Amgen','771663850','Estados Unidos'),
  (13,'404','Gilead Sciences','995544960','Estados Unidos'),
  (14,'505','CSL','884433970','Australia'),
  (15,'606','Vertex Pharmaceuticals','994331980','Estados Unidos'),
  (16,'707','Regeneron','774430980','Estados Unidos'),
  (17,'808','Eisai','663319988','Japon'),
  (18,'909','Biogen','552211987','Estados Unidos'),
  (19,'111','Alexion Pharmaceuticals','319997095','Estados Unidos'),
  (20,'212','Hansoh Pharmaceutical','444886077','China');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `rol` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `pass`, `rol`) VALUES
(1, 'admin', 'admin', 'admin', 'Administrador'),
(2, 'Deivi Aquino', 'deivi@gmail.com', '12345', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `vendedor` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_pro` (`id_pro`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proveedor` (`proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente` (`cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
  ORDER BY id ASC;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_1` FOREIGN KEY (`id_pro`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_ibfk_2` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`proveedor`) REFERENCES `proveedor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;