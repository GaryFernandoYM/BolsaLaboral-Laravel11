-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-08-2024 a las 15:33:20
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bolsalaboral`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `nombre_rs` varchar(255) NOT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `ruc` varchar(20) DEFAULT NULL,
  `correo` varchar(100) NOT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `rol` tinyint(4) NOT NULL CHECK (`rol` in (1,2,3,4)),
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `archivo_cv` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `nombre_rs`, `dni`, `ruc`, `correo`, `celular`, `rol`, `usuario`, `contrasena`, `archivo_cv`) VALUES
(1, 'Juan Pérez', '12345678', NULL, 'juan.perez@example.com', '987654321', 3, 'juanp', 'contraseña1', NULL),
(2, 'Empresa XYZ S.A.', NULL, '20123456789', 'contacto@empresaxyz.com', '912345678', 2, 'empresaxyz', 'contraseña2', NULL),
(3, 'Admin', NULL, NULL, 'admin@bolsalaboral.com', '999888777', 1, 'admin', 'adminpassword', NULL),
(4, 'Supervisor', '87654321', NULL, 'supervisor@example.com', '966554433', 4, 'supervisor', 'supervisorpassword', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD UNIQUE KEY `ruc` (`ruc`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
