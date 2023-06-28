-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2023 a las 16:15:59
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS `libreria2` CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Selección de la base de datos
USE `libreria2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(55) NOT NULL,
  `nombre_autor` text NOT NULL,
  `libros_autor` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `id_calificacion` int(55) NOT NULL,
  `puntaje_calificacion` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `calificacion`
--

INSERT INTO `calificacion` (`id_calificacion`, `puntaje_calificacion`) VALUES
(1, 'Exelente'),
(2, 'Muy Bueno'),
(3, 'Bueno'),
(4, 'Malo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(55) NOT NULL,
  `nombre_genero` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `nombre_genero`) VALUES
(1, 'Clasicos'),
(2, 'Autoayuda'),
(3, 'Ciencia Ficcion'),
(4, 'Romance'),
(5, 'Suspenso'),
(6, 'Thriller'),
(7, 'Psicologico'),
(8, 'Realismo Magico'),
(9, 'Cortos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interaccion`
--

CREATE TABLE `interaccion` (
  `id_interaccion` int(11) NOT NULL,
  `usuario_interaccion` int(11) NOT NULL,
  `usuario_obj_interaccion` int(11) NOT NULL,
  `tipo_interaccion` int(11) NOT NULL,
  `fec_interaccion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id_libros` int(55) NOT NULL,
  `titulo_libros` varchar(55) NOT NULL,
  `autor_libros` int(55) NOT NULL,
  `genero_libro` int(55) NOT NULL,
  `sinopsis_libro` text NOT NULL,
  `fecpub_libros` date NOT NULL,
  `portada_libros` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preferencias`
--

CREATE TABLE `preferencias` (
  `id_preferencias` int(55) NOT NULL,
  `genero_preferencias` int(55) NOT NULL,
  `autor_preferencias` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recomendacion`
--

CREATE TABLE `recomendacion` (
  `id_recomendacion` int(55) NOT NULL,
  `usuario_recomendacion` int(55) NOT NULL,
  `libro_recomendacion` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reseña`
--

CREATE TABLE `reseña` (
  `id_reseña` int(55) NOT NULL,
  `usuario_reseña` int(55) NOT NULL,
  `calificacion_reseña` int(55) NOT NULL,
  `texto_reseña` text NOT NULL,
  `fecha_reseña` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(55) NOT NULL,
  `nombre_usuario` varchar(55) NOT NULL,
  `contraseña_usuario` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`id_calificacion`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `interaccion`
--
ALTER TABLE `interaccion`
  ADD PRIMARY KEY (`id_interaccion`),
  ADD KEY `usuario_interaccion` (`usuario_interaccion`),
  ADD KEY `usuario_obj_interaccion` (`usuario_obj_interaccion`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_libros`),
  ADD KEY `genero_libro` (`genero_libro`),
  ADD KEY `autor_libros` (`autor_libros`);

--
-- Indices de la tabla `preferencias`
--
ALTER TABLE `preferencias`
  ADD PRIMARY KEY (`id_preferencias`),
  ADD KEY `genero_preferencias` (`genero_preferencias`),
  ADD KEY `autor_preferencias` (`autor_preferencias`);

--
-- Indices de la tabla `recomendacion`
--
ALTER TABLE `recomendacion`
  ADD PRIMARY KEY (`id_recomendacion`),
  ADD KEY `usuario_recomendacion` (`usuario_recomendacion`),
  ADD KEY `libro_recomendacion` (`libro_recomendacion`);

--
-- Indices de la tabla `reseña`
--
ALTER TABLE `reseña`
  ADD PRIMARY KEY (`id_reseña`),
  ADD KEY `usuario_reseña` (`usuario_reseña`),
  ADD KEY `calificacion_reseña` (`calificacion_reseña`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `id_autor` int(55) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `id_calificacion` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `interaccion`
--
ALTER TABLE `interaccion`
  MODIFY `id_interaccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id_libros` int(55) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `preferencias`
--
ALTER TABLE `preferencias`
  MODIFY `id_preferencias` int(55) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recomendacion`
--
ALTER TABLE `recomendacion`
  MODIFY `id_recomendacion` int(55) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reseña`
--
ALTER TABLE `reseña`
  MODIFY `id_reseña` int(55) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(55) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `interaccion`
--
ALTER TABLE `interaccion`
  ADD CONSTRAINT `interaccion_ibfk_1` FOREIGN KEY (`usuario_interaccion`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `interaccion_ibfk_2` FOREIGN KEY (`usuario_obj_interaccion`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `interaccion_ibfk_3` FOREIGN KEY (`usuario_interaccion`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `interaccion_ibfk_4` FOREIGN KEY (`usuario_obj_interaccion`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`autor_libros`) REFERENCES `autor` (`id_autor`),
  ADD CONSTRAINT `libros_ibfk_2` FOREIGN KEY (`genero_libro`) REFERENCES `genero` (`id_genero`),
  ADD CONSTRAINT `libros_ibfk_3` FOREIGN KEY (`genero_libro`) REFERENCES `genero` (`id_genero`),
  ADD CONSTRAINT `libros_ibfk_4` FOREIGN KEY (`autor_libros`) REFERENCES `autor` (`id_autor`);

--
-- Filtros para la tabla `preferencias`
--
ALTER TABLE `preferencias`
  ADD CONSTRAINT `preferencias_ibfk_1` FOREIGN KEY (`genero_preferencias`) REFERENCES `genero` (`id_genero`),
  ADD CONSTRAINT `preferencias_ibfk_2` FOREIGN KEY (`autor_preferencias`) REFERENCES `autor` (`id_autor`),
  ADD CONSTRAINT `preferencias_ibfk_3` FOREIGN KEY (`genero_preferencias`) REFERENCES `genero` (`id_genero`),
  ADD CONSTRAINT `preferencias_ibfk_4` FOREIGN KEY (`autor_preferencias`) REFERENCES `autor` (`id_autor`);

--
-- Filtros para la tabla `recomendacion`
--
ALTER TABLE `recomendacion`
  ADD CONSTRAINT `recomendacion_ibfk_1` FOREIGN KEY (`usuario_recomendacion`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `recomendacion_ibfk_2` FOREIGN KEY (`libro_recomendacion`) REFERENCES `libros` (`id_libros`),
  ADD CONSTRAINT `recomendacion_ibfk_3` FOREIGN KEY (`usuario_recomendacion`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `recomendacion_ibfk_4` FOREIGN KEY (`libro_recomendacion`) REFERENCES `libros` (`id_libros`);

--
-- Filtros para la tabla `reseña`
--
ALTER TABLE `reseña`
  ADD CONSTRAINT `reseña_ibfk_1` FOREIGN KEY (`usuario_reseña`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `reseña_ibfk_2` FOREIGN KEY (`calificacion_reseña`) REFERENCES `calificacion` (`id_calificacion`),
  ADD CONSTRAINT `reseña_ibfk_3` FOREIGN KEY (`usuario_reseña`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `reseña_ibfk_4` FOREIGN KEY (`calificacion_reseña`) REFERENCES `calificacion` (`id_calificacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
