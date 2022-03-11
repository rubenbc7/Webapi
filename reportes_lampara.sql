-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-03-2022 a las 23:53:54
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reportes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes_lampara`
--

CREATE TABLE `reportes_lampara` (
  `id` int(11) NOT NULL,
  `nombre_reportante` varchar(165) NOT NULL,
  `latitud` decimal(20,15) NOT NULL,
  `longitud` decimal(20,15) NOT NULL,
  `foto` varchar(265) NOT NULL,
  `fecha_inicio_desperfecto` date DEFAULT NULL,
  `nota` varchar(265) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reportes_lampara`
--

INSERT INTO `reportes_lampara` (`id`, `nombre_reportante`, `latitud`, `longitud`, `foto`, `fecha_inicio_desperfecto`, `nota`, `created_at`, `updated_at`) VALUES
(1, 'Emiliano', '27.487181177272763', '-109.966537392183540', 'imagen.png', NULL, 'Es la unica luz de la calle y no sirve', '2022-03-10 05:22:46', '2022-03-10 05:22:46'),
(2, 'Emiliano', '27.487181177272763', '-109.966537392183540', 'imagen.png', '2022-03-02', 'Es la unica luz de la calle y no sirve', '2022-03-10 05:36:26', '2022-03-10 05:36:26');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reportes_lampara`
--
ALTER TABLE `reportes_lampara`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reportes_lampara`
--
ALTER TABLE `reportes_lampara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
