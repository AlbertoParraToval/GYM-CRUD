-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-02-2022 a las 12:27:56
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gimnasio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `CodAct` int(11) NOT NULL,
  `NomAct` varchar(20) NOT NULL,
  `DescAct` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`CodAct`, `NomAct`, `DescAct`) VALUES
(1, 'Body Pump', 'BodyPump es un programa grupal de entrenamiento basado en el levantamiento de pesas, creado y distribuido internacionalmente por Les Mills International.'),
(2, 'Boxeo', 'Entremientos mix con sparring y peleas reales para todas las categorías.'),
(3, 'Spinning', 'El spinning es un ejercicio aeróbico y de piernas principalmente, donde el monitor o profesor puede mediante el cambio de la frecuencia de pedaleo y de la resistencia al movimiento.'),
(4, 'Zumba', 'Zumba es una disciplina fitness creada a mediados de los años 90 enfocada por una parte a mantener un cuerpo saludable y a fortalecer y dar flexibilidad al cuerpo mediante movimientos de baile.'),
(5, 'Aerobic', 'Aeróbic  es un tipo de gimnasia que se realiza con música. Sus beneficios son además de ejercitar capacidades físicas, ejercitar la flexibilidad, coordinación, orientación, ritmo, etc.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apuntado`
--

CREATE TABLE `apuntado` (
  `CodCli` int(11) NOT NULL,
  `CodAct` int(11) NOT NULL,
  `FecApu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `apuntado`
--

INSERT INTO `apuntado` (`CodCli`, `CodAct`, `FecApu`) VALUES
(1, 3, '2003-01-01'),
(6, 4, '1900-01-01'),
(8, 2, '1900-01-01'),
(9, 2, '1900-01-01'),
(50, 3, '2000-01-01'),
(55, 3, '1900-01-01'),
(231, 2, '2001-01-01'),
(234, 3, '1900-01-01'),
(392, 3, '2001-01-01'),
(999, 5, '2003-01-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `CodCli` int(11) NOT NULL,
  `NomCli` varchar(20) NOT NULL,
  `ApeCli` varchar(40) NOT NULL,
  `FechNac` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`CodCli`, `NomCli`, `ApeCli`, `FechNac`) VALUES
(9, 'Ale cueto', 'Benitez pere', '2022-02-09'),
(22, 'Sergio', 'Morales García', '1995-05-07'),
(234, 'adsf', 'asdf', '2016-01-20'),
(342, 'Diego', 'Aguilera Martin', '1997-01-01'),
(343, 'Alejandro', 'Cueto Jimenez', '1990-01-01'),
(1233, 'David', 'Antunez Pérez', '1992-05-07'),
(3245, 'Jose Antonio', 'Benitez Ruiz', '1999-01-01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`CodAct`),
  ADD UNIQUE KEY `NomAct` (`NomAct`);

--
-- Indices de la tabla `apuntado`
--
ALTER TABLE `apuntado`
  ADD PRIMARY KEY (`CodCli`,`CodAct`),
  ADD KEY `CodAct` (`CodAct`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`CodCli`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
