-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 11-07-2020 a las 22:57:01
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cpsprueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_cliente`
--

CREATE TABLE `tb_cliente` (
  `ID_USER` int(11) NOT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `codigodescuento` varchar(10) DEFAULT NULL,
  `descuento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_cliente`
--

INSERT INTO `tb_cliente` (`ID_USER`, `nombre`, `codigodescuento`, `descuento`) VALUES
(1, 'aaron', '1234', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_cotizaciones`
--

CREATE TABLE `tb_cotizaciones` (
  `ID_Cotizacion` int(11) NOT NULL,
  `peso` double DEFAULT NULL,
  `ancho` double DEFAULT NULL,
  `alto` double DEFAULT NULL,
  `largo` double DEFAULT NULL,
  `P_Destino` int(11) DEFAULT NULL,
  `P_Origen` varchar(50) DEFAULT NULL,
  `ID_Cliente` int(11) DEFAULT NULL,
  `total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_cotizaciones`
--

INSERT INTO `tb_cotizaciones` (`ID_Cotizacion`, `peso`, `ancho`, `alto`, `largo`, `P_Destino`, `P_Origen`, `ID_Cliente`, `total`) VALUES
(1, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(2, 2, 2, 10, 2, 6, '2', 1, 106.4),
(3, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(4, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(5, 2, 2, 10, 2, 6, '2', 1, 106.4),
(6, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(7, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(8, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(9, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(10, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(11, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(12, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(13, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(14, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(15, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(16, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(17, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(18, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(19, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(20, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(21, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(22, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(23, 2, 2, 10, 2, 6, '2', 1, 106.4),
(24, 2, 2, 10, 2, 6, '2', 1, 106.4),
(25, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(26, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(27, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(28, 2, 2, 10, 2, 6, '2', 1, 106.4),
(29, 2, 2, 10, 2, 6, '2', 1, 106.4),
(30, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(31, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(32, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(33, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(34, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(35, 2, 2, 10, 2, 6, '2', 1, 106.4),
(36, 2, 2, 10, 2, 6, '2', 1, 106.4),
(37, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(38, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(39, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(40, 2, 2, 10, 2, 6, '2', 1, 106.4),
(41, 2, 2, 10, 2, 6, '2', 1, 106.4),
(42, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(43, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(44, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(45, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(46, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(47, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(48, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(49, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(50, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(51, 2, 2, 10, 2, 6, '2', 1, 106.4),
(52, 2, 2, 10, 2, 6, '2', 1, 106.4),
(53, 2, 2, 10, 2, 6, '2', NULL, 116.4),
(54, 2, 2, 10, 2, 6, '2', 1, 106.4),
(55, 2, 2, 10, 2, 6, '2', 1, 106.4),
(56, 2, 2, 10, 2, 6, '2', 1, 106.4),
(57, 10, 2, 10, 2, 6, '2', 1, 266.4),
(58, 10, 2, 10, 2, 1, '2', NULL, 116.4),
(59, 10, 2, 10, 2, 5, '2', NULL, 96.4),
(60, 10, 2, 10, 2, 2, '2', NULL, 166.4),
(61, 10, 4, 5, 5, 1, 'Guatemala', NULL, 216),
(62, 10, 4, 5, 5, 1, 'Guatemala', 1, 166);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_regiones`
--

CREATE TABLE `tb_regiones` (
  `ID_Region` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `tarifa` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_regiones`
--

INSERT INTO `tb_regiones` (`ID_Region`, `nombre`, `tarifa`) VALUES
(1, 'America del norte', 5),
(2, 'europa', 10),
(3, 'asia', 20),
(4, 'America del sur', 5),
(5, 'America Central', 3),
(6, 'Africa', 25),
(7, 'oceania', 25);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_si_el_usuario_existe`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_si_el_usuario_existe` (
`dato1` double
,`dato2` double
,`codigodescuento` varchar(10)
,`ID_Cotizacion` int(11)
,`total` float
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_si_el_usuario_no_existe`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_si_el_usuario_no_existe` (
`dato1` double
,`ID_Cotizacion` int(11)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_si_el_usuario_existe`
--
DROP TABLE IF EXISTS `vista_si_el_usuario_existe`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_si_el_usuario_existe`  AS  select ((`tb_cotizaciones`.`peso` * `tb_regiones`.`tarifa`) + (((1.66 * `tb_cotizaciones`.`ancho`) * `tb_cotizaciones`.`alto`) * `tb_cotizaciones`.`largo`)) AS `dato1`,((`tb_cliente`.`descuento` * 0.5) * `tb_cotizaciones`.`peso`) AS `dato2`,`tb_cliente`.`codigodescuento` AS `codigodescuento`,`tb_cotizaciones`.`ID_Cotizacion` AS `ID_Cotizacion`,`tb_cotizaciones`.`total` AS `total` from ((`tb_cliente` join `tb_cotizaciones` on((`tb_cliente`.`ID_USER` = `tb_cotizaciones`.`ID_Cliente`))) join `tb_regiones` on((`tb_cotizaciones`.`P_Destino` = `tb_regiones`.`ID_Region`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_si_el_usuario_no_existe`
--
DROP TABLE IF EXISTS `vista_si_el_usuario_no_existe`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_si_el_usuario_no_existe`  AS  select ((`tb_cotizaciones`.`peso` * `tb_regiones`.`tarifa`) + (((1.66 * `tb_cotizaciones`.`ancho`) * `tb_cotizaciones`.`alto`) * `tb_cotizaciones`.`largo`)) AS `dato1`,`tb_cotizaciones`.`ID_Cotizacion` AS `ID_Cotizacion` from (`tb_cotizaciones` join `tb_regiones` on((`tb_cotizaciones`.`P_Destino` = `tb_regiones`.`ID_Region`))) where isnull(`tb_cotizaciones`.`ID_Cliente`) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD PRIMARY KEY (`ID_USER`);

--
-- Indices de la tabla `tb_cotizaciones`
--
ALTER TABLE `tb_cotizaciones`
  ADD PRIMARY KEY (`ID_Cotizacion`),
  ADD KEY `ID_Cliente` (`ID_Cliente`),
  ADD KEY `P_Destino` (`P_Destino`);

--
-- Indices de la tabla `tb_regiones`
--
ALTER TABLE `tb_regiones`
  ADD PRIMARY KEY (`ID_Region`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_cliente`
--
ALTER TABLE `tb_cliente`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tb_cotizaciones`
--
ALTER TABLE `tb_cotizaciones`
  MODIFY `ID_Cotizacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `tb_regiones`
--
ALTER TABLE `tb_regiones`
  MODIFY `ID_Region` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_cotizaciones`
--
ALTER TABLE `tb_cotizaciones`
  ADD CONSTRAINT `tb_cotizaciones_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `tb_cliente` (`ID_USER`),
  ADD CONSTRAINT `tb_cotizaciones_ibfk_2` FOREIGN KEY (`P_Destino`) REFERENCES `tb_regiones` (`ID_Region`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
