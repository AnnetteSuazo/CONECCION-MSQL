-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2021 a las 01:51:43
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_farmacia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clientes`
--

CREATE TABLE `tbl_clientes` (
  `ID_CLIENTES` int(11) NOT NULL,
  `NOMBRE` varchar(60) NOT NULL,
  `APELLIDO` varchar(60) NOT NULL,
  `TELEFONO` int(100) NOT NULL,
  `DIRECCION` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_clientes`
--

INSERT INTO `tbl_clientes` (`ID_CLIENTES`, `NOMBRE`, `APELLIDO`, `TELEFONO`, `DIRECCION`) VALUES
(1, 'JOSE', 'SUAZO', 27718899, 'LOMAS DEL MIRADOR'),
(2, 'MICHELLE', 'MORALES', 27717834, 'SAN BLAS'),
(3, 'CARLOS', 'MALDONADO', 27714567, 'SAN SEBASTIAN'),
(4, 'GUILLERMO', 'LOPEZ', 27718967, 'COLONIA LOMAS DE RIO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_empleados`
--

CREATE TABLE `tbl_empleados` (
  `ID_EMPLEADO` int(11) NOT NULL,
  `NOMBRE` varchar(60) NOT NULL,
  `APELLIDO` varchar(60) NOT NULL,
  `TELEFONO` int(100) NOT NULL,
  `LABOR` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_empleados`
--

INSERT INTO `tbl_empleados` (`ID_EMPLEADO`, `NOMBRE`, `APELLIDO`, `TELEFONO`, `LABOR`) VALUES
(1, 'JUAN', 'SUAZO', 27715678, 'CAJERO'),
(2, 'KEYDI', 'MORALES', 27717832, 'ASISTENTE'),
(3, 'DIEGO', 'MALDONADO', 34576890, 'REPARTIDOR'),
(4, 'DANIEL', 'MARTINEZ', 71234784, 'SEGURIDAD'),
(5, 'YEIRI', 'OVIEDO', 27723456, 'DOCTORA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_productos`
--

CREATE TABLE `tbl_productos` (
  `ID_PRODUCTOS` int(11) NOT NULL,
  `DESCRIPCION` varchar(60) NOT NULL,
  `CANTIDAD` int(100) NOT NULL,
  `PRECIO` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_productos`
--

INSERT INTO `tbl_productos` (`ID_PRODUCTOS`, `DESCRIPCION`, `CANTIDAD`, `PRECIO`) VALUES
(1, 'PANADOL ULTRA CAJA', 12, 150),
(2, 'AMOXICILINA TABLETA', 14, 190),
(3, 'PEPTOBISMOL', 4, 230),
(4, 'BISOLVON', 3, 450),
(5, 'LOXCELL', 20, 560),
(6, 'ACICLOVIR', 145, 320),
(7, 'IZOFRAN', 1, 170),
(8, 'COLCHIMEDIO', 3, 540),
(9, 'BETASERC', 3, 320);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD PRIMARY KEY (`ID_CLIENTES`);

--
-- Indices de la tabla `tbl_empleados`
--
ALTER TABLE `tbl_empleados`
  ADD PRIMARY KEY (`ID_EMPLEADO`);

--
-- Indices de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD PRIMARY KEY (`ID_PRODUCTOS`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  MODIFY `ID_CLIENTES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_empleados`
--
ALTER TABLE `tbl_empleados`
  MODIFY `ID_EMPLEADO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  MODIFY `ID_PRODUCTOS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
