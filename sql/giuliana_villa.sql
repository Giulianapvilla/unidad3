-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 02-04-2023 a las 05:03:30
-- Versión del servidor: 8.0.31
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `giuliana_villa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

DROP TABLE IF EXISTS `agenda`;
CREATE TABLE IF NOT EXISTS `agenda` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time DEFAULT NULL,
  `agendada` tinyint(1) NOT NULL DEFAULT '0',
  `confirmada` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `agenda`
--

INSERT INTO `agenda` (`id`, `fecha`, `hora`, `agendada`, `confirmada`) VALUES
(1, '2023-03-31', '08:00:00', 1, 1),
(2, '2023-03-31', '09:00:00', 1, 0),
(3, '2023-03-31', '10:00:00', 0, 0),
(4, '2023-03-31', '11:00:00', 1, 0),
(5, '2023-03-31', '13:00:00', 0, 0),
(6, '2023-03-31', '14:00:00', 0, 0),
(7, '2023-03-31', '15:00:00', 0, 0),
(8, '2023-03-31', '16:00:00', 0, 0),
(9, '2023-03-31', '17:00:00', 0, 0),
(10, '2023-04-01', '09:00:00', 0, 0),
(11, '2023-04-01', '10:00:00', 0, 0),
(12, '2023-04-01', '11:00:00', 0, 0),
(13, '2023-04-01', '13:00:00', 0, 0),
(14, '2023-04-01', '14:00:00', 0, 0),
(15, '2023-04-01', '15:00:00', 0, 0),
(16, '2023-04-01', '16:00:00', 0, 0),
(17, '2023-04-01', '17:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

DROP TABLE IF EXISTS `citas`;
CREATE TABLE IF NOT EXISTS `citas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipoIdentificacion` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `numeroIdentificacion` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `nombre` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `apellido` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `idAgenda` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idAgenda` (`idAgenda`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id`, `tipoIdentificacion`, `numeroIdentificacion`, `nombre`, `apellido`, `telefono`, `email`, `idAgenda`) VALUES
(1, 'Cedula', '1017203654', 'Esteban ', 'Villa', '55555555', 'mail@mail.com', 1),
(2, 'Cedula', '1023456767', 'Yenifer', 'Fonnegra', '3445676', 'andrea@mail.com', 2),
(4, 'Cedula', '345555', 'Leandro', 'Mejia', '34555555', 'mejia@mail.com', 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
