-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2022 a las 19:06:37
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
(1, 'Yoga', 'El yoga es una práctica que conecta el cuerpo, la respiración y la mente. Esta práctica utiliza posturas físicas, ejercicios de respiración y meditación para mejorar la salud general.'),
(2, 'Boxeo', 'Deporte en el que dos personas combaten entre sí, únicamente con sus puños. '),
(3, 'Body Attack', 'Entrenamiento inspirado en movimientos de diferentes deportes que mejora la resistencia cardiovascular, la fuerza y potencia muscular.'),
(4, 'Zumba', 'Zumba es una disciplina fitness creada a mediados de los años 90 enfocada por una parte a mantener un cuerpo saludable y a fortalecer y dar flexibilidad al cuerpo mediante movimientos de baile.'),
(5, 'CrossFit', 'Se define como un sistema de entrenamiento de fuerza y acondicionamiento basado en ejercicios funcionales constantemente variados realizados a una alta intensidad.'),
(6, 'Xcore', 'Una sesión de abdominales muy variada, que ayuda al deportista a mejorar la fuerza en el core o centro del cuerpo.'),
(7, 'Body Pump', ' Se realizan muchas repeticiones a un ritmo más o menos rápido, lo que ayuda a activar la capacidad cardiovascular');

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
(1, 1, '1900-01-01'),
(2, 3, '1900-01-01'),
(3, 5, '1900-01-01'),
(5, 3, '1900-01-01'),
(7, 7, '1900-01-01'),
(12, 5, '1900-01-01'),
(15, 3, '1900-01-01'),
(23, 1, '1900-01-01'),
(50, 2, '1900-01-01'),
(132, 4, '1900-01-01'),
(223, 5, '1900-01-01'),
(234, 2, '1900-01-01'),
(424, 5, '1900-01-01'),
(666, 3, '1900-01-01'),
(999, 5, '2003-01-01'),
(2322, 2, '1900-01-01'),
(2343, 2, '1900-01-01'),
(3412, 7, '1900-01-01'),
(12312, 2, '1900-01-01');

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
(5, 'Alberto ', 'Parra Toval', '2003-01-21'),
(7, 'Jose Antonio', 'Benitez Ruiz', '2003-02-05'),
(12, 'David', 'Antúnez Pérez', '2003-06-05'),
(15, 'Diego', 'Rodríguez Barcos', '2002-10-10'),
(23, 'Alberto ', 'Aguilera Martín', '1997-12-31'),
(132, 'Alvaro', 'Fernandez Fernandez', '2022-02-19'),
(234, 'Sergio', 'Morales Garcia', '2003-11-08'),
(424, 'Veronica', 'Pons Gonzalez', '2003-08-21'),
(666, 'Sergio', 'Aguilera Martín', '2002-09-12');

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
