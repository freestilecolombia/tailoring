-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2024 a las 01:00:49
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mibdventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `iddetalleventa` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidadproducto` int(11) NOT NULL,
  `precioventa` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`iddetalleventa`, `idventa`, `idproducto`, `cantidadproducto`, `precioventa`) VALUES
(1, 1, 1, 1, 32000),
(2, 1, 2, 1, 70000),
(3, 2, 1, 1, 32000),
(4, 2, 2, 1, 70000),
(5, 3, 4, 1, 32213),
(6, 3, 1, 1, 32000),
(7, 4, 4, 1, 32213),
(8, 4, 1, 1, 32000),
(9, 4, 2, 5, 70000),
(10, 5, 4, 1, 32213),
(11, 5, 1, 1, 32000),
(12, 5, 2, 5, 70000),
(13, 5, 1, 1, 32000),
(14, 6, 4, 1, 32213),
(15, 6, 1, 1, 32000),
(16, 6, 2, 5, 70000),
(17, 6, 1, 1, 32000),
(18, 6, 1, 1, 32000),
(19, 7, 4, 1, 32213),
(20, 7, 1, 1, 32000),
(21, 7, 2, 5, 70000),
(22, 7, 1, 1, 32000),
(23, 7, 1, 1, 32000),
(24, 8, 4, 1, 32213),
(25, 8, 1, 1, 32000),
(26, 8, 2, 5, 70000),
(27, 8, 1, 1, 32000),
(28, 8, 1, 1, 32000),
(29, 9, 4, 1, 32213),
(30, 9, 1, 1, 32000),
(31, 9, 2, 5, 70000),
(32, 9, 1, 1, 32000),
(33, 9, 1, 1, 32000),
(34, 9, 3, 20, 10560000),
(35, 10, 4, 1, 32213),
(36, 10, 1, 1, 32000),
(37, 10, 2, 5, 70000),
(38, 10, 1, 1, 32000),
(39, 10, 1, 1, 32000),
(40, 10, 3, 20, 10560000),
(41, 10, 3, 4, 10560000),
(42, 11, 6, 5, 230000),
(43, 12, 6, 5, 230000),
(44, 12, 2, 1, 70000),
(45, 12, 6, 1, 230000),
(46, 13, 6, 5, 230000),
(47, 13, 2, 1, 70000),
(48, 13, 6, 1, 230000),
(49, 13, 6, 1, 230000),
(50, 14, 2, 1, 70000),
(51, 15, 6, 1, 230000),
(52, 16, 1, 1, 32000),
(53, 16, 6, 1, 230000),
(54, 17, 1, 3, 32000),
(55, 17, 6, 1, 230000),
(56, 17, 2, 1, 70000),
(57, 18, 1, 3, 32000),
(58, 18, 6, 1, 230000),
(59, 18, 2, 1, 70000),
(60, 19, 1, 4, 32000),
(61, 19, 2, 1, 70000),
(62, 20, 1, 5, 32000),
(63, 20, 6, 15, 230000),
(64, 21, 1, 5, 32000),
(65, 21, 6, 15, 230000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) NOT NULL,
  `nombreproducto` varchar(200) NOT NULL,
  `descripcionproducto` varchar(500) NOT NULL,
  `unidad` varchar(10) NOT NULL,
  `precio` int(15) NOT NULL,
  `foto` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombreproducto`, `descripcionproducto`, `unidad`, `precio`, `foto`) VALUES
(1, 'vestidos estampados ', 'colección con diseños modernos y coloridos', '55 disp', 320000, ''),
(2, 'servicio sastrería basic', 'ajuste traje en paño a medida del cliente normal', '3 piezas', 200000, ''),
(3, 'Servicio Sastrería premium', 'Diseño, pruebas y confección de traje a la medida. telas importadas ', '4 piezas', 6700000, ''),
(4, 'traje', 'corbata, pantalon, camisa, saco', '4 piezas', 3220000, ''),
(5, 'smoking ', 'traje con material incluido chaleco, camisa, saco, pantalón y moño', '5 piezas', 3000000, ''),
(6, 'Vestido de novia ', 'Modificación vestido,  al gusto del cliente ', '1 pieza', 2300000, ''),
(11, 'chalecos', 'chaleco paño 5 botones tela importada', '55 disp', 500000, ''),
(13, 'traje estampado ', 'diseño a gusto del cliente, telas nacionales', '4 piezas', 3200000, ''),
(16, 'traje seda', 'sedas importadas diseños y confecciones a gusto del cliente', '5 piezas', 5000000, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL,
  `documento` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `Rol` enum('Empleado','Cliente') NOT NULL,
  `estado` enum('Activo','Inactivo') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `documento`, `nombre`, `correo`, `password`, `Rol`, `estado`) VALUES
(1, 1033789402, 'thyara isabella parada granada', 'thyara_isabella@hotmail.com', '12345', 'Empleado', 'Activo'),
(2, 1031136274, 'Juan david parada', 'freestile68@gmail.com', '12345', 'Empleado', 'Activo'),
(10, 1033792322, 'Ana maria granada larrota', 'any_is_crazy@gmail.com', '12345', 'Empleado', 'Activo'),
(11, 52038286, 'Luz stella ortiz', 'stella_win@gmail.com', '12345', 'Cliente', 'Activo'),
(13, 1034365879, 'laura ortiz', 'lau_ortiz@gmail.com', '12345', 'Empleado', 'Activo'),
(16, 789, 'pedro', 'remal@hot.com', '0987', 'Cliente', 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idventa` int(11) NOT NULL,
  `numerofactura` varchar(20) NOT NULL,
  `idclienteventa` int(11) NOT NULL,
  `idempleadoventa` int(11) NOT NULL,
  `fechaventa` date NOT NULL,
  `totalventa` double NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idventa`, `numerofactura`, `idclienteventa`, `idempleadoventa`, `fechaventa`, `totalventa`, `estado`) VALUES
(1, '34', 2, 2, '2020-10-01', 342342, 'A'),
(2, '0', 1, 1, '2020-10-21', 102000, '1'),
(3, '35', 1, 1, '2020-10-21', 64213, '1'),
(4, '36', 2, 1, '2020-10-21', 414213, '1'),
(5, '37', 1, 1, '2020-10-21', 446213, '1'),
(6, '38', 1, 1, '2020-10-21', 478213, '1'),
(7, '38', 1, 1, '2020-10-21', 478213, '1'),
(8, '39', 1, 1, '2020-10-21', 478213, '1'),
(9, '40', 1, 1, '2020-10-21', 211678213, '1'),
(10, '41', 2, 1, '2020-10-21', 253918213, '1'),
(11, '42', 7, 1, '2020-10-21', 1150000, '1'),
(12, '42', 1, 1, '2020-10-21', 1450000, '1'),
(13, '43', 2, 1, '2020-10-21', 1680000, '1'),
(14, '44', 1, 1, '2020-10-21', 70000, '1'),
(15, '45', 1, 1, '2020-10-21', 230000, '1'),
(16, '46', 7, 1, '2020-10-21', 262000, '1'),
(17, '47', 2, 1, '2020-10-21', 396000, '1'),
(18, '47', 2, 1, '2020-10-21', 396000, '1'),
(19, '48', 9, 1, '2020-10-21', 198000, '1'),
(20, '49', 10, 1, '2020-10-21', 3610000, '1'),
(21, '49', 10, 1, '2020-10-21', 7220000, '1'),
(22, '50', 0, 1, '2020-10-21', 0, '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`iddetalleventa`),
  ADD KEY `venta detalle venta` (`idventa`),
  ADD KEY `detalle producto` (`idproducto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
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
  ADD PRIMARY KEY (`idventa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  MODIFY `iddetalleventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `detalle producto` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `venta detalle venta` FOREIGN KEY (`idventa`) REFERENCES `ventas` (`idventa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
