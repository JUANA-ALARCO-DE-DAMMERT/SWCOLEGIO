-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-02-2020 a las 05:43:45
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
  `alum_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, '06540979', 'CAVERO FALLA', 'ALBERTO NEMESIO', 1, 'alberton@gmail.com', '952741863'),
(2, '25406456', 'ALVAREZ PERALTA', 'LUIS', 1, 'lalvarezp@hotmail.com', '998741036'),
(3, '48509790', 'AVILA BRAVO', 'VIOLETA', 0, 'v.avila@hotmail.com', ''),
(4, '41529163', 'LACHI AGÜERO', 'NANCY ELIZABETH', 0, 'nancy_lachi@hotmail.com', '974855240'),
(5, '40456077', 'TACSA ORELLANA', 'MABEL ROCIO', 0, 'mtacsa@gmail.com', '985744128'),
(6, '74078065', 'ARROYO PAREDES', 'ALDAIR YOE', 1, 'aldair.arroyo5@gmail.com', '957411237');

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
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `curs_id` int(11) NOT NULL,
  `curs_iddocen` int(11) NOT NULL,
  `curs_idasig` int(11) NOT NULL,
  `año` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`curs_id`, `curs_iddocen`, `curs_idasig`, `año`) VALUES
(1001, 100001, 4, 2020),
(1002, 100002, 1, 2020);

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
  `trab_user` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`trab_id`, `trab_dni`, `trab_ape`, `trab_nom`, `trab_sexo`, `trab_fnac`, `trab_est`, `trab_user`) VALUES
(100001, '25418596', 'DUARTE CHUMPITAZ', 'CARLOS EDUARDO', 1, '1984-02-12', 1, 25418596),
(100002, '24418549', 'ESPINOZA MORALES', 'BRENDA ', 0, '1982-07-23', 1, 24418549);

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
(70327395, '70327395', '$2y$10$YEuqCO2W1HEi3jbBievKpOnHpNmusnElegx8a2zMite2mbpt/X3tS', NULL, '2020-02-26 09:43:08', '2020-02-26 09:43:08'),
(75200120, '75200120', '$2y$10$t1HJcrYGUNkOUwGALG2.SuCXnS7aQvIv4cW7N7iiBwXnmNAM90/f2', NULL, '2020-02-14 08:06:24', '2020-02-14 08:06:24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`alum_id`),
  ADD UNIQUE KEY `alum_dni` (`alum_dni`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD PRIMARY KEY (`trab_id`),
  ADD UNIQUE KEY `trab_dni` (`trab_dni`);

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
  MODIFY `alum_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `apoderado`
--
ALTER TABLE `apoderado`
  MODIFY `apod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `asig_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `curs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  MODIFY `trab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100003;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75200121;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`curs_idasig`) REFERENCES `asignatura` (`asig_id`),
  ADD CONSTRAINT `curso_ibfk_2` FOREIGN KEY (`curs_iddocen`) REFERENCES `trabajador` (`trab_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;