-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-09-2018 a las 06:57:18
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ipsbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id` int(11) NOT NULL,
  `paciente` varchar(350) COLLATE latin1_spanish_ci NOT NULL,
  `area` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `estado` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `estado_pago` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `costo` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `id` int(11) NOT NULL,
  `numdoc` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `nom1` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `nom2` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `apellido1` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `apellido2` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `sexo` varchar(1) COLLATE latin1_spanish_ci NOT NULL,
  `fec_nac` date NOT NULL,
  `e_mail` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `direc` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `telefono` varchar(11) COLLATE latin1_spanish_ci NOT NULL,
  `estado` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `area` varchar(50) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`id`, `numdoc`, `nom1`, `nom2`, `apellido1`, `apellido2`, `sexo`, `fec_nac`, `e_mail`, `direc`, `telefono`, `estado`, `area`) VALUES
(2, '768', 'Eric', 'Segundo', 'Gonzalez', 'Martinez', 'm', '1967-06-05', 'eric@mail.com', 'calle 34', '3452387', 'Activo', 'Medicina General'),
(3, '453', 'Marta', 'Luisa', 'Castro', 'Martinez', 'f', '1990-12-23', 'mluisa@mail.com', 'cra 4a', '65863245', 'Activo', 'Psicologia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL,
  `numdoc` varchar(11) COLLATE latin1_spanish_ci NOT NULL,
  `nom1` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `nom2` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `apellido1` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `apellido2` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `sexo` char(1) COLLATE latin1_spanish_ci NOT NULL,
  `fec_nac` date NOT NULL,
  `e_mail` varchar(50) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id`, `numdoc`, `nom1`, `nom2`, `apellido1`, `apellido2`, `sexo`, `fec_nac`, `e_mail`) VALUES
(1, '123', 'Andres', 'Alfredo', 'Soto', 'Suarez', 'm', '2005-07-15', 'andres@mail.com'),
(2, '234', 'Tomas', 'Alfonso', 'Soto', 'Suarez', 'm', '1998-11-16', 'andres@mail.com'),
(3, '345', 'Amando', 'ahora', 'Casas', 'De Papel', 'm', '1998-03-12', 'ama@mail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `medicos`
--
ALTER TABLE `medicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
