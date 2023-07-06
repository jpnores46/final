-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-07-2023 a las 00:29:52
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
-- Base de datos: `empresacoacodo2023`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_alumnos` int(11) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `dni` int(11) NOT NULL,
  `correo` varchar(25) NOT NULL,
  `aprobado` tinyint(1) NOT NULL,
  `fecha` date NOT NULL,
  `cursos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumnos`, `apellido`, `nombre`, `dni`, `correo`, `aprobado`, `fecha`, `cursos`) VALUES
(0, 'Nores', 'Juan Pablo', 25436392, 'jpnores@gmail.com', 1, '2023-06-16', 102),
(1, 'Nores', 'Simon', 70436392, 'simon@gmail.com', 1, '2023-06-16', 101),
(2, 'Carrera', 'Ofelia', 90256369, 'ofelia@gmail.com', 1, '2023-07-06', 102),
(3, 'Carrera ', 'Matilde', 90654789, 'matilde@gmail.com', 1, '2023-07-06', 101),
(4, 'Carrera', 'Adrian', 24569965, 'Adrianc@gmail.com', 1, '2023-07-06', 102),
(5, 'Nores', 'Fermin', 993214556, 'Fermin@gmail.com', 1, '2023-07-06', 102),
(6, 'Nores', 'Fidel', 802365635, 'Fidel@iuna.com.ar', 1, '2023-07-06', 102);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id_cursos` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `detalle` varchar(25) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `profesor` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id_cursos`, `nombre`, `detalle`, `habilitado`, `profesor`) VALUES
(101, 'Javascript', 'bla bla', 1, 'Marcos'),
(102, 'PHP', 'fraa', 1, 'Putin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_alumnos`),
  ADD KEY `cursos` (`cursos`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_cursos`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`cursos`) REFERENCES `cursos` (`id_cursos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
