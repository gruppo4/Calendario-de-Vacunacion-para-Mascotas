-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-11-2022 a las 19:53:31
-- Versión del servidor: 10.5.16-MariaDB
-- Versión de PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id19615291_calendario`
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
  `direccion` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `psw` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fecha_vacunacion`
--

CREATE TABLE `fecha_vacunacion` (
  `hora` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_vac` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_vet` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `id_vet` int(30) NOT NULL,
  `id_vac` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `veterinaria`
--

CREATE TABLE `veterinario` (
  `id_vet` int(30) NOT NULL,
  `nombre_vet` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_vac` int(12) NOT NULL
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
-- Indices de la tabla `fecha_vacunacion`
--
ALTER TABLE `fecha_vacunacion`
  ADD PRIMARY KEY (`id_vac`),
  ADD KEY `id_vet` (`id_vet`);

--
-- Indices de la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD PRIMARY KEY (`id_mascota`),
  ADD KEY `id_dueño` (`id_dueño`);

--
-- Indices de la tabla `veterinaria`
--
ALTER TABLE `veterinario`
  ADD PRIMARY KEY (`id_vet`),
  ADD KEY `id_vac` (`id_vac`);

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
-- Filtros para la tabla `fecha_vacunacion`
--
ALTER TABLE `fecha_vacunacion`
  ADD CONSTRAINT `fecha_vacunacion_ibfk_1` FOREIGN KEY (`id_vet`) REFERENCES `veterinario` (`id_vet`);

--
-- Filtros para la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD CONSTRAINT `mascota_ibfk_1` FOREIGN KEY (`id_dueño`) REFERENCES `dueño` (`id_dueño`);

--
-- Filtros para la tabla `veterinaria`
--
ALTER TABLE `veterinaria`
  ADD CONSTRAINT `veterinaria_ibfk_1` FOREIGN KEY (`id_vac`) REFERENCES `vacunas_dadas` (`id_vac`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
