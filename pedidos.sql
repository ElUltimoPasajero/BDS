-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2023 a las 19:37:53
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pedidos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `codigo_pedido` varchar(255) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `item`
--

INSERT INTO `item` (`id`, `codigo_pedido`, `cantidad`, `producto_id`) VALUES
(1, 'PED-001', 5, 5),
(2, 'PED-001', 3, 10),
(3, 'PED-001', 2, 15),
(4, 'PED-002', 4, 6),
(5, 'PED-003', 3, 22),
(6, 'PED-003', 2, 1),
(7, 'PED-004', 1, 15),
(8, 'PED-004', 4, 19),
(9, 'PED-005', 2, 8),
(10, 'PED-005', 3, 21),
(11, 'PED-006', 4, 16),
(12, 'PED-006', 2, 19),
(13, 'PED-007', 3, 5),
(14, 'PED-007', 1, 6),
(15, 'PED-008', 4, 7),
(16, 'PED-008', 2, 9),
(17, 'PED-009', 2, 12),
(18, 'PED-009', 3, 9),
(19, 'PED-010', 3, 17),
(20, 'PED-010', 2, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `código` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id`, `código`, `fecha`, `usuario_id`, `total`) VALUES
(1, 'PED-001', '1990-01-15', 1, 5000.00),
(2, 'PED-002', '1991-03-20', 2, 7500.00),
(3, 'PED-003', '1992-05-10', 3, 6000.00),
(4, 'PED-004', '1993-09-05', 4, 9000.00),
(5, 'PED-005', '1994-11-30', 5, 4500.00),
(6, 'PED-006', '1995-02-12', 1, 5500.00),
(7, 'PED-007', '1996-07-22', 2, 7750.00),
(8, 'PED-008', '1997-04-18', 3, 6250.00),
(9, 'PED-009', '1998-08-08', 4, 9250.00),
(10, 'PED-010', '1999-12-24', 5, 4750.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad_disponible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `precio`, `cantidad_disponible`) VALUES
(3, 'Super Mario World', 4999.99, 10),
(4, 'The Legend of Zelda: A Link to the Past', 5999.99, 15),
(5, 'Street Fighter II', 3999.99, 12),
(6, 'Sonic the Hedgehog', 3499.99, 18),
(7, 'Doom', 4599.99, 9),
(8, 'Final Fantasy VI', 6499.99, 11),
(9, 'Chrono Trigger', 6999.99, 15),
(10, 'Mortal Kombat II', 3799.99, 12),
(11, 'Metal Gear Solid', 5299.99, 18),
(12, 'Resident Evil', 4499.99, 9),
(13, 'Star Fox', 3999.99, 11),
(14, 'Donkey Kong Country', 3999.99, 13),
(15, 'Quake', 4599.99, 19),
(16, 'Castlevania: Symphony of the Night', 5999.99, 9),
(17, 'Half-Life', 4799.99, 13),
(18, 'Diablo', 5299.99, 15),
(19, 'GoldenEye 007', 3999.99, 12),
(20, 'Pokémon Red and Blue', 4999.99, 18),
(21, 'The Sims', 3599.99, 9),
(22, 'Final Fantasy VII', 6999.99, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `contraseña` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `contraseña`, `email`) VALUES
(1, 'JuanPerez', '1234', 'juan.perez@example.com'),
(2, 'MariaRodriguez', 'P1234', 'maria.rodriguez@example.com'),
(3, 'Carlos González', 'Gonzalez123!', 'carlos.gonzalez@example.com'),
(4, 'Laura Martínez', 'L4ur4_2023', 'laura.martinez@example.com'),
(5, 'Andrés Sánchez', 'A$anchez', 'andres.sanchez@example.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
