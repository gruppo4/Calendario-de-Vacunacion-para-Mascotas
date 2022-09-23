-- phpMyAdmin SQL Dump
-- version 4.6.6deb4+deb9u1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 23-09-2022 a las 21:58:04
-- Versión del servidor: 10.3.34-MariaDB-0+deb10u1
-- Versión de PHP: 7.3.31-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `calendariovacunacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dueño`
--

CREATE TABLE `dueño` (
  `id_dueño` int(11) NOT NULL,
  `id_mascota` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `contraseña` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE `mascota` (
  `id_mascota` int(11) NOT NULL,
  `id_dueño` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `tipo` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `vacunasdadas` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dueño`
--
ALTER TABLE `dueño`
  ADD PRIMARY KEY (`id_dueño`),
  ADD KEY `id_mascota` (`id_mascota`);

--
-- Indices de la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD PRIMARY KEY (`id_mascota`),
  ADD KEY `id_dueño` (`id_dueño`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dueño`
--
ALTER TABLE `dueño`
  MODIFY `id_dueño` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mascota`
--
ALTER TABLE `mascota`
  MODIFY `id_mascota` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `dueño`
--
ALTER TABLE `dueño`
  ADD CONSTRAINT `dueño_ibfk_1` FOREIGN KEY (`id_mascota`) REFERENCES `mascota` (`id_mascota`);

--
-- Filtros para la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD CONSTRAINT `mascota_ibfk_1` FOREIGN KEY (`id_dueño`) REFERENCES `dueño` (`id_dueño`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
