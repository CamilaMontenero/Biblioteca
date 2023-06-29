-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-06-2023 a las 17:34:00
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libreria2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(55) NOT NULL,
  `nombre_autor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id_autor`, `nombre_autor`) VALUES
(1, 'Jane Austen'),
(2, 'Louisa May Alcott'),
(3, 'Miguel Ruiz'),
(4, 'Eckhart Tolle'),
(5, 'Frank Herbert'),
(6, 'Orson Scott Card'),
(7, 'Laura Esquivel'),
(8, 'John Green'),
(9, 'John Katzenbach'),
(10, 'Thomas Harris'),
(11, 'Paula Hawkins'),
(12, 'Dan Brown'),
(13, 'Yasunari Kawabata'),
(14, 'Anthony Burgess'),
(15, 'Gabriel Garcia Marquez'),
(16, 'Frances Hodgson Burnett'),
(17, 'Franz Kafka');

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
-- Estructura de tabla para la tabla `caracteristicas_libros`
--

CREATE TABLE `caracteristicas_libros` (
  `id` int(11) NOT NULL,
  `libro_id` int(11) DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `sinopsis` text DEFAULT NULL,
  `titulo_libro` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `caracteristicas_libros`
--

INSERT INTO `caracteristicas_libros` (`id`, `libro_id`, `autor`, `genero`, `sinopsis`, `titulo_libro`) VALUES
(1, 1, '1', '1', 'La historia sigue las vivencias de Elizabeth Bennet y su familia en la Inglaterra rural del siglo XIX. Se centra en el romance entre Elizabeth y el apuesto y rico señor Darcy, y explora temas de clase social, matrimonio y prejuicios.', NULL),
(2, 2, '2', '1', 'La novela sigue las vidas de las cuatro hermanas March (Meg, Jo, Beth y Amy) mientras atraviesan la transición de la niñez a la adultez en la época de la Guerra Civil en Estados Unidos. La historia se centra en la importancia de la familia, la amistad y el crecimiento personal.', NULL),
(3, 3, '3', '2', 'El libro presenta cuatro principios para alcanzar la libertad personal y la felicidad basados en la sabiduría tolteca. Estos acuerdos son: sé impecable con tus palabras, no te tomes nada personalmente, no hagas suposiciones y siempre da lo mejor de ti.', NULL),
(4, 4, '4', '2', ' El autor explora la importancia de vivir en el momento presente y liberarse de las preocupaciones del pasado y del futuro. El libro ofrece enseñanzas y prácticas para experimentar la paz interior y la iluminación a través de la atención plena.', NULL),
(5, 5, '5', '3', 'La historia se desarrolla en un futuro lejano en el planeta desierto Arrakis, donde la lucha por el control del recurso más valioso, la especia llamada melange, desencadena conflictos políticos y religiosos. El libro combina elementos de política, ecología, religión y aventura.', NULL),
(6, 6, '6', '3', 'El protagonista, Ender Wiggin, es reclutado desde una edad temprana para ser entrenado en una escuela militar espacial con el objetivo de liderar la lucha de la humanidad contra una raza alienígena hostil. El libro explora temas de guerra, estrategia y ética.', NULL),
(7, 7, '7', '4', 'La novela cuenta la historia de Tita, una joven mexicana atrapada por las tradiciones familiares que le impiden casarse con el amor de su vida. A través de la cocina y de las recetas transmitidas de generación en generación, Tita encuentra una forma de expresar sus emociones.', NULL),
(8, 8, '8', '4', 'La historia sigue a Hazel Grace Lancaster, una adolescente con cáncer, y a Augustus Waters, otro paciente en su grupo de apoyo. Juntos, exploran el amor, la vida y la muerte mientras enfrentan los desafíos de sus enfermedades.', NULL),
(9, 9, '9', '5', 'Un psicoanalista llamado Frederick Starks recibe una carta amenazadora de un misterioso individuo que se hace llamar Rumpelstiltskin. Starks se ve envuelto en un juego psicológico mortal en el que debe descubrir la identidad del acosador antes de que sea demasiado tarde.', NULL),
(10, 10, '10', '5', 'La agente del FBI Clarice Starling busca la ayuda del brillante pero peligroso psiquiatra forense Hannibal Lecter para atrapar a un asesino en serie conocido como Buffalo Bill. La novela se sumerge en la psicología criminal y explora la relación entre Starling y Lecter.', NULL),
(11, 11, '11', '6', 'La historia sigue a Rachel Watson, una mujer divorciada y alcohólica que se obsesiona con una pareja que ve desde el tren todos los días. Cuando una de las personas desaparece, Rachel se involucra en la investigación y descubre secretos oscuros.', NULL),
(12, 12, '12', '6', 'El profesor de simbología Robert Langdon se encuentra envuelto en una búsqueda frenética para resolver un misterio relacionado con el Santo Grial y la vida de Jesucristo. La novela mezcla elementos de historia, arte y conspiraciones religiosas.', NULL),
(13, 13, '13', '7', 'El libro cuenta la historia de Eguchi, un anciano que visita una casa donde hombres mayores pasan la noche con jóvenes durmientes. A medida que Eguchi reflexiona sobre la muerte y el deseo, se adentra en un mundo de fantasía y exploración psicológica.', NULL),
(14, 14, '14', '7', 'Ambientada en un futuro distópico, la novela sigue a Alex, un joven delincuente y amante de la violencia que es sometido a un experimento de condicionamiento para reformarlo. La historia examina temas de libre albedrío, violencia y control social.', NULL),
(15, 15, '15', '8', 'La novela narra la historia de la familia Buendía a lo largo de siete generaciones en el pueblo ficticio de Macondo. La obra combina elementos de realismo y fantasía, y explora temas como la soledad, el amor, la guerra y el paso del tiempo.', NULL),
(16, 16, '7', '8', 'La novela cuenta la historia de Tita, una joven mexicana atrapada por las tradiciones familiares que le impiden casarse con el amor de su vida. A través de la cocina y de las recetas transmitidas de generación en generación, Tita encuentra una forma de expresar sus emociones.', NULL),
(17, 17, '16', '9', 'La historia sigue a Mary Lennox, una niña huérfana que descubre un jardín abandonado en la finca de su tío. Con la ayuda de su primo Colin y de su amigo Dickon, Mary revive el jardín y encuentra sanación y alegría en medio de la adversidad.', NULL),
(18, 18, '17', '9', 'Gregor Samsa, un vendedor que vive con su familia, se despierta una mañana convertido en un insecto gigante. La historia explora la alienación, la transformación y la deshumanización en la sociedad moderna.', NULL);

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

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_libros`, `titulo_libros`, `autor_libros`, `genero_libro`, `sinopsis_libro`, `fecpub_libros`, `portada_libros`) VALUES
(1, 'Orgullo y Prejuicio', 1, 1, 'La historia sigue las vivencias de Elizabeth Bennet y su familia en la Inglaterra rural del siglo XIX. Se centra en el romance entre Elizabeth y el apuesto y rico señor Darcy, y explora temas de clase social, matrimonio y prejuicios.', '1813-01-28', 'https://avatars.mds.yandex.net/i?id=3a9bac021b82867072154ebc'),
(2, 'Mujercitas', 2, 1, 'La novela sigue las vidas de las cuatro hermanas March (Meg, Jo, Beth y Amy) mientras atraviesan la transición de la niñez a la adultez en la época de la Guerra Civil en Estados Unidos. La historia se centra en la importancia de la familia, la amistad y el crecimiento personal.', '1868-09-30', 'https://4.bp.blogspot.com/-rFH5ZE7FS94/VPOpKrBpWgI/AAAAAAAAR'),
(3, 'Los cuatro acuerdos', 3, 2, 'El libro presenta cuatro principios para alcanzar la libertad personal y la felicidad basados en la sabiduría tolteca. Estos acuerdos son: sé impecable con tus palabras, no te tomes nada personalmente, no hagas suposiciones y siempre da lo mejor de ti.', '1997-08-07', 'https://avatars.mds.yandex.net/i?id=cbaa9f8919d0b5e4c96b5b45'),
(4, 'El poder del ahora', 4, 2, ' El autor explora la importancia de vivir en el momento presente y liberarse de las preocupaciones del pasado y del futuro. El libro ofrece enseñanzas y prácticas para experimentar la paz interior y la iluminación a través de la atención plena.', '1997-03-01', 'https://avatars.mds.yandex.net/i?id=711d359e8d6c74752d9fbc5d'),
(5, 'Dune', 5, 3, 'La historia se desarrolla en un futuro lejano en el planeta desierto Arrakis, donde la lucha por el control del recurso más valioso, la especia llamada melange, desencadena conflictos políticos y religiosos. El libro combina elementos de política, ecología, religión y aventura.', '1965-06-01', 'https://i.pinimg.com/originals/11/a6/6f/11a66f8e70700ce5f359'),
(6, 'El juego de Ender', 6, 3, 'El protagonista, Ender Wiggin, es reclutado desde una edad temprana para ser entrenado en una escuela militar espacial con el objetivo de liderar la lucha de la humanidad contra una raza alienígena hostil. El libro explora temas de guerra, estrategia y ética.', '1985-01-15', 'https://avatars.mds.yandex.net/i?id=a7967023ffcd6c54eac02301'),
(7, 'Como agua para chocolate', 7, 4, 'La novela cuenta la historia de Tita, una joven mexicana atrapada por las tradiciones familiares que le impiden casarse con el amor de su vida. A través de la cocina y de las recetas transmitidas de generación en generación, Tita encuentra una forma de expresar sus emociones.', '1989-01-01', 'https://avatars.mds.yandex.net/i?id=2d10d1ef482a41992c97b252'),
(8, 'Bajo la misma estrella', 8, 4, 'La historia sigue a Hazel Grace Lancaster, una adolescente con cáncer, y a Augustus Waters, otro paciente en su grupo de apoyo. Juntos, exploran el amor, la vida y la muerte mientras enfrentan los desafíos de sus enfermedades.', '2012-10-01', 'https://pbs.twimg.com/profile_images/474920852345999360/J7tt'),
(9, 'El psicoanalista', 9, 5, 'Un psicoanalista llamado Frederick Starks recibe una carta amenazadora de un misterioso individuo que se hace llamar Rumpelstiltskin. Starks se ve envuelto en un juego psicológico mortal en el que debe descubrir la identidad del acosador antes de que sea demasiado tarde.', '1997-01-01', 'https://avatars.mds.yandex.net/i?id=f8921963faffa78faa2757d6'),
(10, 'El silencio de los corderos', 10, 5, 'La agente del FBI Clarice Starling busca la ayuda del brillante pero peligroso psiquiatra forense Hannibal Lecter para atrapar a un asesino en serie conocido como Buffalo Bill. La novela se sumerge en la psicología criminal y explora la relación entre Starling y Lecter.', '1988-05-05', 'https://i.ytimg.com/vi/GEQn8IwrbQQ/maxresdefault.jpg'),
(11, 'La chica del tren', 11, 6, 'La historia sigue a Rachel Watson, una mujer divorciada y alcohólica que se obsesiona con una pareja que ve desde el tren todos los días. Cuando una de las personas desaparece, Rachel se involucra en la investigación y descubre secretos oscuros.', '2015-01-13', 'https://avatars.mds.yandex.net/i?id=4b7170d04d0cd2e64e940073'),
(12, 'El código Da Vinci', 12, 6, 'El profesor de simbología Robert Langdon se encuentra envuelto en una búsqueda frenética para resolver un misterio relacionado con el Santo Grial y la vida de Jesucristo. La novela mezcla elementos de historia, arte y conspiraciones religiosas.', '2003-03-18', 'https://avatars.mds.yandex.net/i?id=ae1603f82ff16cbe8d63cfe4'),
(13, 'La casa de las bellas durmientes', 13, 7, 'El libro cuenta la historia de Eguchi, un anciano que visita una casa donde hombres mayores pasan la noche con jóvenes durmientes. A medida que Eguchi reflexiona sobre la muerte y el deseo, se adentra en un mundo de fantasía y exploración psicológica.', '1961-10-01', 'https://i.pinimg.com/736x/04/09/cd/0409cd59b937e1ceaaba99805'),
(14, 'La naranja mecánica', 14, 7, 'Ambientada en un futuro distópico, la novela sigue a Alex, un joven delincuente y amante de la violencia que es sometido a un experimento de condicionamiento para reformarlo. La historia examina temas de libre albedrío, violencia y control social.', '1962-06-21', 'https://avatars.mds.yandex.net/i?id=5cf273b3de04c4d3a15a61f9'),
(15, 'Cien años de soledad', 15, 8, 'La novela narra la historia de la familia Buendía a lo largo de siete generaciones en el pueblo ficticio de Macondo. La obra combina elementos de realismo y fantasía, y explora temas como la soledad, el amor, la guerra y el paso del tiempo.', '1967-06-06', 'https://www.elindependiente.com/wp-content/uploads/2019/03/1'),
(16, 'Como agua para chocolate', 7, 8, 'La novela cuenta la historia de Tita, una joven mexicana atrapada por las tradiciones familiares que le impiden casarse con el amor de su vida. A través de la cocina y de las recetas transmitidas de generación en generación, Tita encuentra una forma de expresar sus emociones.', '1989-01-01', 'https://www.elindependiente.com/wp-content/uploads/2019/03/1'),
(17, 'El jardín secreto', 16, 9, 'La historia sigue a Mary Lennox, una niña huérfana que descubre un jardín abandonado en la finca de su tío. Con la ayuda de su primo Colin y de su amigo Dickon, Mary revive el jardín y encuentra sanación y alegría en medio de la adversidad.', '1911-11-01', 'https://avatars.mds.yandex.net/i?id=3057d9494ea57b935ce06d06'),
(18, 'La metamorfosis', 17, 9, 'Gregor Samsa, un vendedor que vive con su familia, se despierta una mañana convertido en un insecto gigante. La historia explora la alienación, la transformación y la deshumanización en la sociedad moderna.', '1915-10-15', 'https://avatars.mds.yandex.net/i?id=08c3cbdb0052dd2b4cc05fda');

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
-- Indices de la tabla `caracteristicas_libros`
--
ALTER TABLE `caracteristicas_libros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libro_id` (`libro_id`);

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
  MODIFY `id_autor` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `id_calificacion` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `caracteristicas_libros`
--
ALTER TABLE `caracteristicas_libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id_libros` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(55) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `caracteristicas_libros`
--
ALTER TABLE `caracteristicas_libros`
  ADD CONSTRAINT `caracteristicas_libros_ibfk_1` FOREIGN KEY (`libro_id`) REFERENCES `libros` (`id_libros`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
