-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-03-2020 a las 04:28:34
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_juana_alarco_de_dammert`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `alum_id` int(11) NOT NULL,
  `alum_dni` varchar(8) NOT NULL,
  `alum_ape` varchar(70) NOT NULL,
  `alum_nom` varchar(70) NOT NULL,
  `alum_sexo` int(2) NOT NULL,
  `alum_fnac` date NOT NULL,
  `alum_grad` int(11) NOT NULL,
  `alum_est` int(2) NOT NULL DEFAULT '1',
  `alum_apod` int(11) NOT NULL,
  `alum_user` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`alum_id`, `alum_dni`, `alum_ape`, `alum_nom`, `alum_sexo`, `alum_fnac`, `alum_grad`, `alum_est`, `alum_apod`, `alum_user`) VALUES
(1, '75406456', 'PRADO AVILA', 'MARIA CARMEN', 0, '2005-02-05', 4, 1, 3, 75406456),
(3, '75200134', 'QUINTO AGUILAR', 'JUAN DIEGO', 1, '2004-08-20', 5, 1, 9, 75200134),
(4, '75246604', 'SALAZAR BRICEÑO', 'ALBERTO', 1, '2005-07-09', 4, 1, 7, 75246604),
(5, '75650012', 'ROBLES MEDINA', 'DIANA', 0, '2005-09-16', 4, 1, 10, 75650012);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apoderado`
--

CREATE TABLE `apoderado` (
  `apod_id` int(11) NOT NULL,
  `apod_dni` varchar(8) NOT NULL,
  `apod_ape` varchar(70) NOT NULL,
  `apod_nom` varchar(70) NOT NULL,
  `apod_sexo` int(2) NOT NULL,
  `apod_email` varchar(70) DEFAULT NULL,
  `apod_tel` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `apoderado`
--

INSERT INTO `apoderado` (`apod_id`, `apod_dni`, `apod_ape`, `apod_nom`, `apod_sexo`, `apod_email`, `apod_tel`) VALUES
(1, '06540979', 'CAVERO FALLA', 'ALBERTO NEMESIO', 1, 'alberto_cavero@gmail.com', '952741863'),
(2, '25406456', 'ALVAREZ PERALTA', 'LUIS', 1, 'lalvarezp@hotmail.com', '998741036'),
(3, '48509790', 'AVILA BRAVO', 'VIOLETA', 0, 'v.avila@hotmail.com', ''),
(4, '41529163', 'LACHI AGÜERO', 'NANCY ELIZABETH', 0, 'nancy_lachi@hotmail.com', '974855240'),
(5, '40456077', 'TACSA ORELLANA', 'MABEL ROCIO', 0, 'mtacsa@gmail.com', '985744128'),
(6, '74078065', 'ARROYO PAREDES', 'ALDAIR YOE', 1, 'aldair.arroyo5@gmail.com', '957411237'),
(7, '75200158', 'BRICEÑO VASQUEZ', 'BRIDGITH PRISCILA', 0, NULL, NULL),
(8, '74850405', 'AGUILAR AGUILA', 'CELIA', 0, 'celia16.aa@gmail.com', NULL),
(9, '76204070', 'QUINTO ACUÑA', 'RODRIGO JAVIER', 1, 'rodrigo.quinto@hotmail.com', NULL),
(10, '75265129', 'ROBLES FLOREANO', 'HUGO PABLO', 1, 'hugo.robles.fl@hotmail.com', '952741632');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `asig_id` int(11) NOT NULL,
  `asig_nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`asig_id`, `asig_nom`) VALUES
(1, 'Matemáticas'),
(2, 'Comunicación'),
(3, 'Inglés'),
(4, 'Historia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura_docente`
--

CREATE TABLE `asignatura_docente` (
  `id` int(11) NOT NULL,
  `trab_id` int(11) NOT NULL,
  `asig_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asignatura_docente`
--

INSERT INTO `asignatura_docente` (`id`, `trab_id`, `asig_id`) VALUES
(1, 3, 1),
(2, 3, 3),
(3, 5, 3),
(4, 5, 4),
(5, 6, 1),
(6, 6, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `curs_id` int(11) NOT NULL,
  `curs_iddocen` int(11) NOT NULL,
  `curs_idasig` int(11) NOT NULL,
  `curs_año` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`curs_id`, `curs_iddocen`, `curs_idasig`, `curs_año`) VALUES
(1001, 6, 1, 2020);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrador', NULL, NULL),
(2, 'secre', 'Secretaria', NULL, NULL),
(3, 'docen', 'Docente', NULL, NULL),
(4, 'alum', 'Alumno', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(4, 75406456, 4, NULL, NULL),
(5, 75200134, 4, NULL, NULL),
(6, 75246604, 4, NULL, NULL),
(7, 75650012, 4, NULL, NULL),
(8, 75200120, 1, NULL, NULL),
(9, 70327395, 1, NULL, NULL),
(10, 25745094, 3, NULL, NULL),
(12, 25428530, 3, NULL, NULL),
(13, 75200163, 3, NULL, NULL),
(14, 7779398, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `trab_id` int(11) NOT NULL,
  `trab_dni` varchar(8) NOT NULL,
  `trab_ape` varchar(70) NOT NULL,
  `trab_nom` varchar(50) NOT NULL,
  `trab_sexo` int(2) NOT NULL,
  `trab_fnac` date NOT NULL,
  `trab_est` int(2) NOT NULL DEFAULT '1',
  `trab_user` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`trab_id`, `trab_dni`, `trab_ape`, `trab_nom`, `trab_sexo`, `trab_fnac`, `trab_est`, `trab_user`) VALUES
(1, '75200120', 'RAMIREZ RODRIGUEZ', 'JORGE LUIS', 1, '1999-10-14', 1, 75200120),
(2, '70327395', 'RODRIGUEZ RICHARTE', 'JOSEPH JOQTAN', 1, '1999-03-20', 1, 70327395),
(3, '25745094', 'FERREYRA COVEÑAS', 'JUAN MANUEL', 1, '1985-03-20', 1, 25745094),
(4, '25428530', 'MURILLO LOPEZ', 'FRANCISCA DE PAULA', 0, '1992-07-22', 1, 25428530),
(5, '75200163', 'ATAPOMA ACUÑA', 'BRUCE ANTHONY', 1, '1989-11-12', 1, 75200163),
(6, '07779398', 'PICASSO SALINAS', 'RAFAEL BERNARDO LUIS', 1, '1984-12-22', 1, 7779398);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `usuario`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(7779398, '07779398', '$2y$10$6UrRWu33MAWkHWhgC3VutelNsbKlSSIUsALqXKHln8YR.yefVzXuW', NULL, '2020-03-10 05:41:32', '2020-03-10 05:41:32'),
(25428530, '25428530', '$2y$10$8XCnkVVYe9ui9qxbdK5dA.5vmmxh5Rz2y11lZSBtSDqKlWTw3fRsm', NULL, '2020-03-09 08:44:11', '2020-03-09 08:44:11'),
(25745094, '25745094', '$2y$10$cxheRsBl/6qzGT3krv3ECug6D1/nYeDSg4PkGy9FK.7SjvhsrmVIy', NULL, '2020-03-08 08:32:04', '2020-03-08 08:32:04'),
(70327395, '70327395', '$2y$10$f8Kb1wMgIKMbLj5INDuhie0HYWPJYpIMuCmT83wg9j6etu/Pzhmz2', NULL, '2020-03-01 22:40:17', '2020-03-01 22:40:17'),
(75200120, '75200120', '$2y$10$5.jkgqLutEYda6JHA19DteDLCPewHVmHAoLOrav0lwmq3jxghxYOW', NULL, '2020-03-01 22:39:25', '2020-03-01 22:39:25'),
(75200134, '75200134', '$2y$10$fnab.LDrfaNd0f4QB6CNwuEWzyTJ/suWx/WhQxieXj22kQGI1V9dK', NULL, '2020-03-02 04:26:27', '2020-03-02 04:26:27'),
(75200163, '75200163', '$2y$10$QcH.BGSdvo77oFJvZ4y.puuZRTPgqajgyWMkB7xdbFWa8nccp1yAC', NULL, '2020-03-09 08:53:17', '2020-03-09 08:53:17'),
(75246604, '75246604', '$2y$10$snps3sKLO2IqS8PyUT2ncuInYGM4atsH0VXyoOsTQh6igSBOv6y0q', NULL, '2020-03-02 07:28:26', '2020-03-02 07:28:26'),
(75406456, '75406456', '$2y$10$QLMUZ5fbHtgx3tA0OQmKIO3mDnJyIviWw3fTIEotWqITscOXA1O96', NULL, '2020-03-02 00:45:53', '2020-03-02 00:45:53'),
(75650012, '75650012', '$2y$10$pmMtfvf5tPyrpwp6lQz9LeXOzjPt0t4ewvB2kliVQr.QN9H54/JYe', NULL, '2020-03-02 07:30:36', '2020-03-02 07:30:36');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`alum_id`),
  ADD UNIQUE KEY `alum_dni` (`alum_dni`),
  ADD KEY `alum_apod` (`alum_apod`),
  ADD KEY `alum_user` (`alum_user`);

--
-- Indices de la tabla `apoderado`
--
ALTER TABLE `apoderado`
  ADD PRIMARY KEY (`apod_id`),
  ADD UNIQUE KEY `apod_dni` (`apod_dni`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`asig_id`);

--
-- Indices de la tabla `asignatura_docente`
--
ALTER TABLE `asignatura_docente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trab_id` (`trab_id`),
  ADD KEY `asig_id` (`asig_id`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`curs_id`),
  ADD KEY `curs_iddocen` (`curs_iddocen`),
  ADD KEY `curs_idasig` (`curs_idasig`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indices de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD PRIMARY KEY (`trab_id`),
  ADD UNIQUE KEY `trab_dni` (`trab_dni`),
  ADD KEY `trab_user` (`trab_user`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `alum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `apoderado`
--
ALTER TABLE `apoderado`
  MODIFY `apod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `asig_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `asignatura_docente`
--
ALTER TABLE `asignatura_docente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `curs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  MODIFY `trab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75650013;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`alum_apod`) REFERENCES `apoderado` (`apod_id`),
  ADD CONSTRAINT `alumno_ibfk_2` FOREIGN KEY (`alum_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `asignatura_docente`
--
ALTER TABLE `asignatura_docente`
  ADD CONSTRAINT `asignatura_docente_ibfk_1` FOREIGN KEY (`trab_id`) REFERENCES `trabajador` (`trab_id`),
  ADD CONSTRAINT `asignatura_docente_ibfk_2` FOREIGN KEY (`asig_id`) REFERENCES `asignatura` (`asig_id`);

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`curs_idasig`) REFERENCES `asignatura` (`asig_id`),
  ADD CONSTRAINT `curso_ibfk_2` FOREIGN KEY (`curs_iddocen`) REFERENCES `trabajador` (`trab_id`);

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD CONSTRAINT `trabajador_ibfk_1` FOREIGN KEY (`trab_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
