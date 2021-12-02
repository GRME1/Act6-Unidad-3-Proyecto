-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2021 a las 23:41:36
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `uber`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE `conductores` (
  `id` int(20) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `apellidop` varchar(60) NOT NULL,
  `apellidom` varchar(60) NOT NULL,
  `telefono` varchar(60) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `vehiculo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conductores`
--

INSERT INTO `conductores` (`id`, `nombre`, `apellidop`, `apellidom`, `telefono`, `direccion`, `vehiculo`) VALUES
(1, 'Julio', 'Valverde', 'Rodriguez', '656214875', 'Calle del leon 2421', 'Nissan sentra 2021'),
(3, 'Victor', 'Avalos', 'Tovar', '656987436', 'av las torres, palacio de mitla 3848', 'Lincoln mkz 2015 rojo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(10) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `apellidop` varchar(60) NOT NULL,
  `apellidom` varchar(60) NOT NULL,
  `telefono` varchar(60) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `ocupacion` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `apellidop`, `apellidom`, `telefono`, `direccion`, `ocupacion`) VALUES
(1, 'Alfredo', 'Molina', 'Guerrero', '65675413', 'Av del jaguar 128', 'Gerente'),
(2, 'Aixa', 'Coss', 'Yarbrough', '656843521', 'MANUEL PEREZ TREVIÑO 2300 , TECNOLOGICO , PIEDRAS NEGRAS , C', 'Conductor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(9) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellidop` varchar(40) NOT NULL,
  `apellidom` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` int(12) NOT NULL,
  `fecha_registro` varchar(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidop`, `apellidom`, `email`, `telefono`, `fecha_registro`) VALUES
(1, 'Marlon', 'Garcia', 'Rangel', 'grme1@gmail.com', 656245989, '11/12/2021'),
(2, 'Kate', 'Bishop', 'Eliazbeth', 'katebe@mail.com', 656943622, '16/08/2020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajes`
--

CREATE TABLE `viajes` (
  `id` int(10) NOT NULL,
  `conductor` varchar(60) NOT NULL,
  `vehiculo` varchar(60) NOT NULL,
  `pasajero` varchar(60) NOT NULL,
  `destino` varchar(60) NOT NULL,
  `salida` varchar(60) NOT NULL,
  `importe` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `viajes`
--

INSERT INTO `viajes` (`id`, `conductor`, `vehiculo`, `pasajero`, `destino`, `salida`, `importe`) VALUES
(1, 'Alfredo', 'Nissan sentra 2021', 'Manuel', 'AV DEL MAR 1111 , ZONA DORADA , MAZATLAN , SIN , C.P. 82110', 'AV. DEL MAR 1234 , ZONA COSTERA , MAZATLAN , SIN , C.P. 8214', '95.00'),
(2, 'Pablo', 'Lincoln mkz 2015 rojo', 'Irving', 'CORREGIDORA SUR 240 , BUROCRATA , QUERETARO , QRO , C.P. 760', 'CARRETERA COSTERA KM. 200+244 , VISTA HERMOSA , TAPACHULA , ', '120.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `conductores`
--
ALTER TABLE `conductores`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `viajes`
--
ALTER TABLE `viajes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
