-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-07-2020 a las 19:37:08
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `e6_practica_final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `address_proveidor`
--

CREATE TABLE `address_proveidor` (
  `id` int(11) NOT NULL,
  `carrer` varchar(50) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `pis` varchar(15) NOT NULL,
  `porta` varchar(5) NOT NULL,
  `ciutat` varchar(50) NOT NULL,
  `codi_postal` int(5) NOT NULL,
  `pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `address_proveidor`
--

INSERT INTO `address_proveidor` (`id`, `carrer`, `numero`, `pis`, `porta`, `ciutat`, `codi_postal`, `pais`) VALUES
(6, 'c/ Segovia', '45', '1º', '2ª', 'Burgos', 9005, 'España'),
(7, 'Pso. Portal del Ángel', '5', 'bajos', '2ª', 'Barcelona', 8002, 'España'),
(8, 'Pso. Portal del Ángel', '8', '2º', '1ª', 'Barcelona', 8002, 'España'),
(9, 'Münchenerstr.', '21', '2º', '4ª', 'Münich', 80337, 'Alemania'),
(10, 'Strada della Sera', '10', '3º', 'A', 'Rimini', 47921, 'Italia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `address` int(11) NOT NULL,
  `telefon` int(15) NOT NULL,
  `correu_electronic` varchar(50) NOT NULL,
  `data_registre` date NOT NULL,
  `recomanacio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `nom`, `address`, `telefon`, `correu_electronic`, `data_registre`, `recomanacio`) VALUES
(5, 'Pepe Gutiérrez Nin', 17, 969858933, 'Nino876@yahoo.es', '2019-12-01', 4),
(6, 'Fernando Gamboa', 14, 25058968, 'Gambi@uni.edu', '2020-05-08', NULL),
(8, 'Sonia Álvarez', 16, 988787784, 'son13@gmail.com', '2020-07-13', NULL),
(11, 'Laura Pérez', 17, 689596825, 'LauraP@hotmail.com', '2020-07-04', NULL),
(15, 'Giusseppe Morelli', 17, 988787784, 'geppi34@gmail.com', '2020-04-12', 1),
(16, 'Mira Lavina', 16, 988787784, 'Lav12ina@yahoo.it', '2020-03-12', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients_address`
--

CREATE TABLE `clients_address` (
  `id` int(11) NOT NULL,
  `carrer` varchar(50) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `pis` varchar(15) DEFAULT NULL,
  `porta` varchar(5) DEFAULT NULL,
  `ciutat` varchar(50) NOT NULL,
  `codi_postal` int(5) NOT NULL,
  `pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clients_address`
--

INSERT INTO `clients_address` (`id`, `carrer`, `numero`, `pis`, `porta`, `ciutat`, `codi_postal`, `pais`) VALUES
(13, 'Pso. Maragall', '12', '4º', '1ª', 'Lleida', 25001, 'España'),
(14, 'López Anglada', '6', 'entresuelo', '1ª', 'Madrid', 28080, 'España'),
(15, 'Rambla Catalunya', '253', '7º', '4ª', 'Barcelona', 8015, 'España'),
(16, 'Anton Martín', '25', '3º', '2ª', 'Madrid', 28081, 'España'),
(17, 'Benito Pérez Galdós', '1', '1º', '1ª', 'Salamanca', 37001, 'España');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marques`
--

CREATE TABLE `marques` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL DEFAULT 'Ray-Ban'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marques`
--

INSERT INTO `marques` (`id`, `nom`) VALUES
(1, 'Tom Ford'),
(2, 'Prada'),
(3, 'Carolina Herrera'),
(4, 'Tous'),
(6, 'Ray-Ban');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveidor`
--

CREATE TABLE `proveidor` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `address` int(11) NOT NULL,
  `telefon` int(15) NOT NULL,
  `fax` int(15) NOT NULL,
  `nif` varchar(10) NOT NULL,
  `marca` varchar(30) NOT NULL DEFAULT 'Ray-Ban'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveidor`
--

INSERT INTO `proveidor` (`id`, `nom`, `address`, `telefon`, `fax`, `nif`, `marca`) VALUES
(8, 'Marcolin', 10, 968565485, 968565489, 'J28283923J', 'Prada'),
(9, 'Luxottica', 9, 968565489, 968565498, 'H23456987H', 'Ray-Ban'),
(12, 'Sáfilo', 7, 995868965, 968565489, 'N34876112L', 'Carolina Herrera'),
(13, 'Tudous', 8, 695538978, 695538971, 'L78654309S', 'Tous'),
(14, 'Ramblin', 6, 885654589, 885654567, 'N78769908M', 'Tom Ford');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recomanacions`
--

CREATE TABLE `recomanacions` (
  `id` int(11) NOT NULL,
  `client_que_recomana` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recomanacions`
--

INSERT INTO `recomanacions` (`id`, `client_que_recomana`) VALUES
(4, 'Giusseppe Morelli'),
(0, 'Laura Pérez'),
(2, 'Laura Pérez'),
(3, 'Mira Lavina'),
(1, 'Sonia Álvarez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ulleres`
--

CREATE TABLE `ulleres` (
  `id` int(11) NOT NULL,
  `marca` int(11) NOT NULL,
  `proveidor` int(11) NOT NULL,
  `graduacio_vidre1` decimal(3,2) NOT NULL,
  `graduacio_vidre2` decimal(3,2) NOT NULL,
  `tipus_muntura` set('flotant','pasta','metalica') NOT NULL,
  `color_muntura` varchar(15) NOT NULL,
  `color_vidre` varchar(15) NOT NULL,
  `preu` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ulleres`
--

INSERT INTO `ulleres` (`id`, `marca`, `proveidor`, `graduacio_vidre1`, `graduacio_vidre2`, `tipus_muntura`, `color_muntura`, `color_vidre`, `preu`) VALUES
(2, 1, 14, '0.25', '0.50', 'flotant', 'gris', 'gris', '159.75'),
(3, 6, 9, '0.50', '0.25', 'metalica', 'platejat', 'marro', '250.50'),
(4, 3, 12, '0.75', '1.25', 'pasta', 'negre', 'transparent', '350.25'),
(5, 2, 8, '1.50', '0.50', 'flotant', 'taronja', 'gris', '186.40'),
(6, 6, 9, '0.25', '0.25', 'pasta', 'blau', 'blau', '309.25'),
(7, 4, 13, '0.50', '0.75', 'metalica', 'platejat', 'transparent', '356.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendes`
--

CREATE TABLE `vendes` (
  `id` int(11) NOT NULL,
  `ullera` int(11) NOT NULL,
  `venedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vendes`
--

INSERT INTO `vendes` (`id`, `ullera`, `venedor`) VALUES
(2, 3, 1),
(4, 4, 2),
(1, 5, 4),
(3, 7, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venedors`
--

CREATE TABLE `venedors` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venedors`
--

INSERT INTO `venedors` (`id`, `nom`) VALUES
(1, 'Juan Pollín'),
(2, 'Loles Águila'),
(3, 'Lola Lago'),
(4, 'Emmanuelle Lars');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `address_proveidor`
--
ALTER TABLE `address_proveidor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`,`nom`) USING BTREE,
  ADD KEY `address` (`address`) USING BTREE,
  ADD KEY `recomanacio` (`recomanacio`),
  ADD KEY `nom` (`nom`);

--
-- Indices de la tabla `clients_address`
--
ALTER TABLE `clients_address`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marques`
--
ALTER TABLE `marques`
  ADD PRIMARY KEY (`id`,`nom`) USING BTREE,
  ADD KEY `nom` (`nom`);

--
-- Indices de la tabla `proveidor`
--
ALTER TABLE `proveidor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address` (`address`),
  ADD KEY `marca` (`marca`);

--
-- Indices de la tabla `recomanacions`
--
ALTER TABLE `recomanacions`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `client_que_recomana` (`client_que_recomana`);

--
-- Indices de la tabla `ulleres`
--
ALTER TABLE `ulleres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marca` (`marca`),
  ADD KEY `proveidor` (`proveidor`);

--
-- Indices de la tabla `vendes`
--
ALTER TABLE `vendes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ullera` (`ullera`,`venedor`),
  ADD KEY `venedor` (`venedor`);

--
-- Indices de la tabla `venedors`
--
ALTER TABLE `venedors`
  ADD PRIMARY KEY (`id`,`nom`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `address_proveidor`
--
ALTER TABLE `address_proveidor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `clients_address`
--
ALTER TABLE `clients_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `marques`
--
ALTER TABLE `marques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `proveidor`
--
ALTER TABLE `proveidor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `ulleres`
--
ALTER TABLE `ulleres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `vendes`
--
ALTER TABLE `vendes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `venedors`
--
ALTER TABLE `venedors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_ibfk_3` FOREIGN KEY (`address`) REFERENCES `clients_address` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `clients_ibfk_4` FOREIGN KEY (`recomanacio`) REFERENCES `recomanacions` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `proveidor`
--
ALTER TABLE `proveidor`
  ADD CONSTRAINT `proveidor_ibfk_2` FOREIGN KEY (`address`) REFERENCES `address_proveidor` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `proveidor_ibfk_3` FOREIGN KEY (`marca`) REFERENCES `marques` (`nom`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `recomanacions`
--
ALTER TABLE `recomanacions`
  ADD CONSTRAINT `recomanacions_ibfk_1` FOREIGN KEY (`client_que_recomana`) REFERENCES `clients` (`nom`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `ulleres`
--
ALTER TABLE `ulleres`
  ADD CONSTRAINT `ulleres_ibfk_1` FOREIGN KEY (`marca`) REFERENCES `marques` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ulleres_ibfk_2` FOREIGN KEY (`proveidor`) REFERENCES `proveidor` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `vendes`
--
ALTER TABLE `vendes`
  ADD CONSTRAINT `vendes_ibfk_1` FOREIGN KEY (`ullera`) REFERENCES `ulleres` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `vendes_ibfk_2` FOREIGN KEY (`venedor`) REFERENCES `venedors` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
