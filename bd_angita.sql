-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-08-2020 a las 22:02:02
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_angita`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email_cliente` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `cel_cliente` int(9) NOT NULL,
  `dir_cliente` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `ultima_modificacion` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `deuda` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabla para registrar nuevos clientes';

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `email_cliente`, `cel_cliente`, `dir_cliente`, `ultima_modificacion`, `deuda`) VALUES
(1, 'María Ganoza', 'maría@hotmail.com', 987455487, 'Av. España 1410', 'Gianmarco', 24.8),
(2, 'Guillermin', 'guillermin@gmail.com', 987654320, 'Las flores 1215', 'Gianmarco', 130),
(3, 'Marco Calderón', 'marco@hotmail.com', 987445123, 'Calle Los Pinos 1420', 'Gianmarco', 25),
(4, 'Michi', 'michel@example.com', 987654321, 'Av. España 4578', 'Gianmarco', 34.8),
(5, 'Megan', 'megan@hotmail.com', 887946522, 'Av. Pumacahua 1359', 'Anthony', 24),
(7, 'Manyuri Gonzáles', 'manyu@hotmail.com', 987654321, 'Alto Trujillo 2450', 'Anthony', 42),
(8, 'Mica', 'mica@hotmail.com', 945879441, 'Los Pinos 1420', 'Gianmarco', 14),
(27, 'Miguel Palacios', 'mp@gmail.com', 987456123, 'Las Paletas 1024', 'Gianmarco', 0),
(28, 'Luis Garcia', 'luis_garcia@gmail.com', 123456789, 'Las Rosas 69', 'Gianmarco', 0),
(30, 'Patricio', 'patricio@hotmail.com', 987441122, 'Av. España 1420', 'Gianmarco', 0),
(31, 'jose jose', 'jose@gmail.com', 946112857, 'Las Mariquitas 1411', 'Jorge', 0),
(32, 'Mario Cardenas', 'mario@outlook.es', 987734848, 'Las Venecas 873', 'Gianmarco', 0),
(33, 'Miguel', 'miguelin@hotmail.com', 946112758, 'Las Palmas 1024', 'Gianmarco', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `nombre_producto` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `marca` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `precio` float NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total_pagar` float NOT NULL,
  `dia_venta` int(11) NOT NULL,
  `mes_venta` int(11) NOT NULL,
  `annio_venta` int(11) NOT NULL,
  `tipo_venta` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `venta_realizada_por` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabla para registrar detalles de las ventas';

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id_venta`, `id_cliente`, `nombre_producto`, `marca`, `precio`, `cantidad`, `total_pagar`, `dia_venta`, `mes_venta`, `annio_venta`, `tipo_venta`, `venta_realizada_por`) VALUES
(1, 1, 'Galleta', 'Rellenita', 0.5, 1, 0.5, 6, 7, 2020, 'Crédito', 'Gianmarco'),
(2, 2, 'Cerveza', 'Pilsen Trujillo', 5.5, 12, 66, 6, 7, 2020, 'Crédito', 'Anthony'),
(3, 2, 'Cerveza', 'Pilsen Trujillo', 5.5, 6, 33, 6, 7, 2020, 'Contado', 'Anthony'),
(4, 4, 'Snack', 'Lays', 0.7, 4, 2.8, 6, 7, 2020, 'Crédito', 'Anthony'),
(5, 4, 'Chocolate', 'Sublime', 1.5, 1, 1.5, 6, 7, 2020, 'Contado', 'Anthony'),
(6, 4, 'Chocolate', 'Sublime', 1.5, 1, 1.5, 6, 7, 2020, 'Crédito', 'Anthony');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nombre_producto` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `marca` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dia_registro` int(11) NOT NULL,
  `mes_registro` int(11) NOT NULL,
  `annio_registro` int(11) NOT NULL,
  `precio` float NOT NULL,
  `stock` int(11) NOT NULL,
  `ultima_modificacion` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `observaciones` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabla para registrar nuevos productos';

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `id_usuario`, `nombre_producto`, `marca`, `dia_registro`, `mes_registro`, `annio_registro`, `precio`, `stock`, `ultima_modificacion`, `observaciones`) VALUES
(1, 1, 'Cerveza', 'Pilsen Trujillo', 0, 0, 0, 5.5, 88, 'Anthony', 'Para los borrachos.'),
(2, 3, 'Galleta', 'Rellenita', 0, 0, 0, 0.5, 78, 'Janeth', 'Galleta para llenar el apetito.'),
(3, 1, 'Gaseosa', 'Inca Kola', 0, 0, 0, 2.5, 98, 'Gianmarco', 'Presentación de 500 ml'),
(4, 3, 'Detergente', 'Bolivar', 0, 0, 0, 3.8, 20, 'Gianmarco', 'Presentación de 500 gr'),
(5, 3, 'Chocolate', 'Sublime', 19, 6, 2020, 1.5, 18, 'Anthony', ''),
(6, 1, 'Snack', 'Lays', 0, 0, 0, 0.7, 30, 'Gianmarco', 'Presentación de 50 gr'),
(7, 3, 'Jabón', 'Marsella', 15, 6, 2020, 1.8, 18, 'Janeth', 'Jabón exclusivamente para lavar ropa.'),
(8, 1, 'Snack', 'Cheetos', 15, 6, 2020, 1.5, 70, 'Gianmarco', 'Snack super hiper picante.'),
(9, 1, 'Desodorante', 'Rexona', 19, 6, 2020, 2.2, 0, 'Gianmarco', 'Super refrescante.'),
(10, 1, 'Fideo', 'Lavaggi', 15, 6, 2020, 2.5, 100, 'Gianmarco', 'Alimento super nutritivo.'),
(11, 3, 'Papel higiénico', 'Scott', 19, 6, 2020, 2.5, 20, 'Janeth', 'PH super suave.'),
(12, 3, 'Avena', 'Grano de Oro', 15, 6, 2020, 3.5, 0, 'Janeth', ''),
(13, 1, 'Dulce', 'Halls', 15, 6, 2020, 0.1, 20, 'Gianmarco', 'Dulce super refrescante'),
(14, 1, 'Chocolate', 'Donofrio', 15, 6, 2020, 5.5, 0, 'Gianmarco', 'El mejor chocolate del mundo.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `celular` int(9) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_nivel` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `estatus` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `registrado_por` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabla para registrar nuevos usuarios';

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre_usuario`, `email`, `celular`, `username`, `password`, `tipo_nivel`, `estatus`, `registrado_por`) VALUES
(1, 'Gian Contreras', 'gianmarco@hotmail.com', 946112852, 'Gianmarco', '70493428', 'Administrador', 'Activo', 'Gianmarco'),
(2, 'Jorge Contreras', 'george@hotmail.com', 949214997, 'Jorge', '12345678', 'Vendedor', 'Activo', 'Gianmarco'),
(3, 'Janeth Pumamango', 'janeth@hotmail.com', 929291122, 'Janeth', '11111111', 'Administrador', 'Activo', 'Gianmarco'),
(4, 'Anthony Contreras', 'anthony@gmail.com', 965999369, 'Anthony', '12345678', 'Vendedor', 'Activo', 'Gianmarco'),
(5, 'Stefany Contreras', 'stefany_1995@gmail.com', 942232811, 'Stefany', '12345678', 'Vendedor', 'Activo', 'Gianmarco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `dia_venta` int(11) NOT NULL,
  `mes_venta` int(11) NOT NULL,
  `annio_venta` int(11) NOT NULL,
  `tipo_venta` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `venta_realizada_por` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `observaciones` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabla para registrar las ventas del negocio';

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `id_producto`, `id_cliente`, `dia_venta`, `mes_venta`, `annio_venta`, `tipo_venta`, `venta_realizada_por`, `observaciones`) VALUES
(1, 1, 1, 18, 5, 2020, 'Contado', 'Jorge', ''),
(2, 11, 2, 18, 25, 2020, 'Crédito', 'Jorge', 'Para uso personal'),
(3, 11, 2, 18, 6, 2020, 'Contado', 'Gianmarco', 'Para uso personal'),
(4, 3, 5, 18, 6, 2020, 'Contado', 'Janeth', 'Para calmar la sed'),
(5, 6, 5, 18, 6, 2020, 'Contado', 'Jorge', 'Delicioso snack'),
(6, 2, 2, 18, 6, 2020, '', 'Gianmarco', ''),
(7, 5, 2, 28, 6, 2020, '', '', ''),
(8, 6, 2, 28, 6, 2020, '', '', ''),
(9, 7, 2, 28, 6, 2020, 'Contado', 'GIanmarco', ''),
(10, 4, 3, 28, 6, 2020, 'Crédito', '', ''),
(11, 4, 1, 28, 6, 2020, 'Crédito', '', ''),
(12, 3, 4, 28, 6, 2020, 'Crédito', '', ''),
(13, 4, 5, 28, 6, 2020, 'Crédito', '', ''),
(14, 7, 4, 28, 6, 2020, 'Contado', '', ''),
(15, 5, 0, 29, 6, 2020, '', '', ''),
(16, 6, 2, 2, 7, 2020, 'Contado', 'Anthony', ''),
(17, 1, 2, 2, 7, 2020, 'Crédito', 'Anthony', ''),
(18, 1, 2, 2, 7, 2020, 'Crédito', 'Anthony', ''),
(19, 6, 1, 2, 7, 2020, 'Crédito', '', ''),
(20, 6, 1, 2, 7, 2020, 'Crédito', '', ''),
(21, 3, 1, 2, 7, 2020, '', '', ''),
(22, 14, 4, 2, 7, 2020, 'Crédito', '', ''),
(23, 8, 2, 2, 7, 2020, 'Crédito', '', ''),
(24, 8, 2, 2, 7, 2020, 'Crédito', '', ''),
(25, 14, 8, 2, 7, 2020, 'Crédito', '', ''),
(26, 2, 1, 2, 7, 2020, 'Contado', '', ''),
(27, 2, 1, 2, 7, 2020, 'Contado', '', ''),
(28, 2, 1, 2, 7, 2020, 'Contado', '', ''),
(29, 2, 1, 2, 7, 2020, 'Crédito', '', ''),
(30, 2, 7, 2, 7, 2020, 'Contado', '', ''),
(31, 2, 1, 2, 7, 2020, 'Contado', '', ''),
(32, 2, 1, 2, 7, 2020, 'Crédito', '', ''),
(33, 7, 5, 2, 7, 2020, 'Contado', 'Gianmarco', 'Para lavar ropa.'),
(34, 14, 7, 2, 7, 2020, 'Crédito', 'Gianmarco', ''),
(35, 2, 7, 2, 7, 2020, 'Crédito', 'Gianmarco', ''),
(36, 14, 7, 2, 7, 2020, 'Crédito', 'Gianmarco', ''),
(37, 9, 3, 2, 7, 2020, 'Crédito', '', ''),
(38, 12, 5, 2, 7, 2020, 'Contado', '', ''),
(39, 1, 2, 3, 7, 2020, 'Contado', '', ''),
(40, 12, 5, 3, 7, 2020, 'Crédito', '', ''),
(41, 6, 4, 3, 7, 2020, 'Crédito', 'Janeth', 'Producto altamente grasoso.'),
(42, 5, 1, 3, 7, 2020, 'Crédito', 'Janeth', ''),
(43, 4, 1, 3, 7, 2020, 'Contado', 'Janeth', ''),
(44, 4, 4, 3, 7, 2020, 'Crédito', 'Jorge', 'Detergente para lavar sus calzones sucios.'),
(45, 1, 1, 5, 7, 2020, 'Contado', 'Gianmarco', ''),
(46, 8, 1, 5, 7, 2020, 'Contado', 'Gianmarco', ''),
(47, 1, 1, 5, 7, 2020, 'Contado', 'Gianmarco', ''),
(48, 1, 2, 5, 7, 2020, 'Crédito', 'Anthony', 'Para emborracharse y llorar por ella V:'),
(49, 2, 1, 6, 7, 2020, 'Crédito', 'Gianmarco', ''),
(50, 2, 1, 6, 7, 2020, 'Crédito', 'Gianmarco', ''),
(51, 1, 2, 6, 7, 2020, 'Crédito', 'Anthony', ''),
(52, 1, 2, 6, 7, 2020, 'Contado', 'Anthony', ''),
(53, 6, 4, 6, 7, 2020, 'Crédito', 'Anthony', ''),
(54, 5, 4, 6, 7, 2020, 'Contado', 'Anthony', ''),
(55, 5, 4, 6, 7, 2020, 'Crédito', 'Anthony', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id_venta`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
