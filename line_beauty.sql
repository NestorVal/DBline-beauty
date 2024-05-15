-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2024 a las 00:23:30
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `line_beauty`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'Labiales'),
(2, 'Cremas'),
(3, 'Bases'),
(4, 'Brochas'),
(5, 'Pestañinas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre_c` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ciudad` varchar(40) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre_c`, `direccion`, `telefono`, `email`, `ciudad`, `fecha_nacimiento`) VALUES
(0, 'Camilo Romero', 'CALLE 84-SUR N 97-60', 2147483647, 'camiloromero200412@gmail.com', 'Bogota D.C', '2004-12-18'),
(10101010, 'Nestor Rubiano', 'CL  75 SUR # 8-08', 7921020, 'link252009@gmail.com', 'Bogota', '1995-07-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id_compra` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_pago` int(11) DEFAULT NULL,
  `fecha` date NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_de_pago`
--

CREATE TABLE `forma_de_pago` (
  `id_pago` int(11) NOT NULL,
  `forma_de_pago` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `forma_de_pago`
--

INSERT INTO `forma_de_pago` (`id_pago`, `forma_de_pago`) VALUES
(1, 'Efectivo'),
(2, 'Tarjeta Credito'),
(3, 'Tarjeta Debito'),
(4, 'Pse');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre_p` varchar(50) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `precio` double NOT NULL,
  `disponibilidad` tinyint(1) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre_p`, `marca`, `precio`, `disponibilidad`, `id_categoria`) VALUES
(1, 'Labial rojo', 'Elf', 89900, 0, 1),
(2, 'LABIAL CREMA', 'ELF', 65, 1, 1),
(3, 'LABIAL ROSA', 'ELF', 77.95, 0, 1),
(4, 'LABIAL RED', 'EV', 57.5, 1, 1),
(5, 'POWER GRIP', 'PRIME', 86.4, 0, 2),
(6, 'POWER GRIP', 'NYX', 108.9, 1, 2),
(7, 'POWER GRIP', 'GLOW', 126.5, 0, 2),
(8, 'POWER GRIP', 'PARIS', 39.9, 1, 2),
(9, 'BASE MATTE', 'SHINE', 94.9, 0, 3),
(10, 'BASE URBAN', 'COVER', 115.2, 1, 3),
(11, 'BASE FIT', 'ME', 108.7, 0, 3),
(12, 'BASE FIT', 'REVLON', 82.8, 1, 3),
(13, 'PESTAÑINA', 'LIFT PENCIL', 139.95, 0, 5),
(14, 'PESTRAÑINA', 'NEW YORK SKY', 58.75, 1, 5),
(15, 'PESTAÑINA', 'BOY BROWN', 49, 0, 5),
(16, 'PESTAÑINA', ' LIFT WATERPROOF', 69.9, 1, 5),
(17, 'PINCEL', 'SILVER ELF', 89.95, 0, 4),
(18, 'PINCEL', 'ECOTOOLS', 79.95, 1, 4),
(19, 'PINCEL', 'BLACK ELF', 65.9, 0, 4),
(20, 'PINCEL', 'L.A COLORS', 58.8, 1, 4),
(21, 'LABIAL CREMA', 'ELF', 65.6, 1, 1),
(22, 'LABIAL ROSA', 'ELF', 77.95, 0, 1),
(23, 'LABIAL RED', 'EV', 57.5, 1, 1),
(24, 'POWER GRIP', 'PRIME', 86.4, 0, 2),
(25, 'POWER GRIP', 'NYX', 108.9, 1, 2),
(26, 'POWER GRIP', 'GLOW', 126.5, 0, 2),
(27, 'POWER GRIP', 'PARIS', 39.9, 1, 2),
(28, 'BASE MATTE', 'SHINE', 94.9, 0, 3),
(29, 'BASE URBAN', 'COVER', 115.2, 1, 3),
(30, 'BASE FIT', 'ME', 108.7, 0, 3),
(31, 'BASE FIT', 'REVLON', 82.8, 1, 3),
(32, 'PESTAÑINA', 'LIFT PENCIL', 139.95, 0, 5),
(33, 'PESTRAÑINA', 'NEW YORK SKY', 58.75, 1, 5),
(34, 'PESTAÑINA', 'BOY BROWN', 49.95, 0, 5),
(35, 'PESTAÑINA', ' LIFT WATERPROOF', 69.9, 1, 5),
(36, 'PINCEL', 'SILVER ELF', 89.95, 0, 4),
(37, 'PINCEL', 'ECOTOOLS', 79.95, 1, 4),
(38, 'PINCEL', 'BLACK ELF', 65.9, 0, 4),
(39, 'PINCEL', 'L.A COLORS', 58.8, 1, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `fk_cliente_compra` (`id_cliente`),
  ADD KEY `fk_producto_compra` (`id_producto`),
  ADD KEY `fk_pago_compra` (`id_pago`);

--
-- Indices de la tabla `forma_de_pago`
--
ALTER TABLE `forma_de_pago`
  ADD PRIMARY KEY (`id_pago`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `forma_de_pago`
--
ALTER TABLE `forma_de_pago`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `fk_cliente_compra` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `fk_pago_compra` FOREIGN KEY (`id_pago`) REFERENCES `forma_de_pago` (`id_pago`),
  ADD CONSTRAINT `fk_producto_compra` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
