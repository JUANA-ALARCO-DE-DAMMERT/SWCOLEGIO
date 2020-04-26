-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-04-2020 a las 04:25:31
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `alum_id` int(10) UNSIGNED NOT NULL,
  `alum_dni` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alum_ape` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alum_nom` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alum_sexo` int(11) NOT NULL,
  `alum_fnac` date NOT NULL,
  `alum_grad` int(11) NOT NULL,
  `alum_est` int(11) NOT NULL DEFAULT '1',
  `alum_apod` int(11) NOT NULL,
  `alum_user` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_curso`
--

CREATE TABLE `alumno_curso` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `curso_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apoderado`
--

CREATE TABLE `apoderado` (
  `apod_id` int(10) UNSIGNED NOT NULL,
  `apod_dni` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apod_ape` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apod_nom` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apod_sexo` int(11) NOT NULL,
  `apod_email` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apod_tel` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `asig_id` bigint(20) UNSIGNED NOT NULL,
  `asig_nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`asig_id`, `asig_nom`) VALUES
(1, 'Matemática'),
(2, 'Comunicación'),
(3, 'Ciencias Sociales'),
(4, 'Ciencia y Tecnología'),
(5, 'Arte y cultura'),
(6, 'Educación Física'),
(7, 'Inglés'),
(8, 'Ajedrez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura_docente`
--

CREATE TABLE `asignatura_docente` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trab_id` int(11) NOT NULL,
  `asig_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `asis_id` bigint(20) UNSIGNED NOT NULL,
  `asis_idcurso` int(11) NOT NULL,
  `asis_idalumno` int(11) NOT NULL,
  `asis_fecha` date NOT NULL,
  `asis_est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `curs_id` bigint(20) UNSIGNED NOT NULL,
  `curs_iddocen` int(11) NOT NULL,
  `curs_idasig` int(11) NOT NULL,
  `curs_grado` int(11) NOT NULL,
  `curs_año` int(11) NOT NULL,
  `curs_est` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_linea`
--

CREATE TABLE `examen_linea` (
  `exa_id` bigint(20) UNSIGNED NOT NULL,
  `exa_idcurso` int(11) NOT NULL,
  `exa_titulo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exa_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exa_iddocen` int(11) NOT NULL,
  `exa_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2020_02_09_001642_create_roles_table', 1),
(3, '2020_02_13_023501_create_role_users_table', 1),
(4, '2020_04_22_221157_create_alumno_table', 1),
(5, '2020_04_22_230052_create_alumno_curso_table', 1),
(6, '2020_04_22_230111_create_apoderado_table', 1),
(7, '2020_04_22_230132_create_asignatura_table', 1),
(8, '2020_04_22_230144_create_asignatura_docente_table', 1),
(9, '2020_04_22_230156_create_asistencia_table', 1),
(10, '2020_04_22_231055_create_curso_table', 1),
(11, '2020_04_22_231109_create_examen_linea_table', 1),
(12, '2020_04_22_231121_create_notas_table', 1),
(13, '2020_04_22_231133_create_recurso_table', 1),
(14, '2020_04_22_231148_create_trabajador_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `not_id` bigint(20) UNSIGNED NOT NULL,
  `not_idcurso` int(11) NOT NULL,
  `not_idalumno` int(11) NOT NULL,
  `not_n1` int(11) NOT NULL,
  `not_n2` int(11) NOT NULL,
  `not_n3` int(11) NOT NULL,
  `not_promedio` int(11) NOT NULL,
  `not_bimestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recurso`
--

CREATE TABLE `recurso` (
  `rec_id` bigint(20) UNSIGNED NOT NULL,
  `rec_curso` int(11) NOT NULL,
  `rec_bimestre` int(11) NOT NULL,
  `rec_archivo` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rec_dni` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rec_rol` int(11) NOT NULL,
  `rec_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 75200120, 1, NULL, NULL),
(2, 70327395, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `trab_id` int(10) UNSIGNED NOT NULL,
  `trab_dni` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trab_ape` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trab_nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trab_sexo` int(11) NOT NULL,
  `trab_fnac` date NOT NULL,
  `trab_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trab_tel` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trab_est` int(11) NOT NULL DEFAULT '1',
  `trab_user` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`trab_id`, `trab_dni`, `trab_ape`, `trab_nom`, `trab_sexo`, `trab_fnac`, `trab_email`, `trab_tel`, `trab_est`, `trab_user`) VALUES
(1, '75200120', 'RAMIREZ RODRIGUEZ', 'JORGE LUIS', 1, '1999-10-14', NULL, NULL, 1, 75200120),
(2, '70327395', 'RODRIGUEZ RICHARTE', 'JOSEPH JOQTAN', 1, '1999-03-20', NULL, NULL, 1, 70327395);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `usuario`, `password`, `last_login`, `remember_token`, `created_at`, `updated_at`) VALUES
(70327395, '70327395', '$2y$10$/o1SjWUMe56Cr/IfCkmP6ekV4VUoOykbKJk0p6BEvu3h9YvAJkJT2', NULL, NULL, NULL, NULL),
(75200120, '75200120', '$2y$10$lEDXk5MnlYFKRmmJPfWYm.x/ni32QiNz5lILHws1MpuFaNlJ1aT92', '2020-04-24 21:07:53', NULL, NULL, '2020-04-25 02:07:53');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`alum_id`),
  ADD UNIQUE KEY `alumno_alum_dni_unique` (`alum_dni`);

--
-- Indices de la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `apoderado`
--
ALTER TABLE `apoderado`
  ADD PRIMARY KEY (`apod_id`),
  ADD UNIQUE KEY `apoderado_apod_dni_unique` (`apod_dni`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`asig_id`);

--
-- Indices de la tabla `asignatura_docente`
--
ALTER TABLE `asignatura_docente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`asis_id`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`curs_id`);

--
-- Indices de la tabla `examen_linea`
--
ALTER TABLE `examen_linea`
  ADD PRIMARY KEY (`exa_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`not_id`);

--
-- Indices de la tabla `recurso`
--
ALTER TABLE `recurso`
  ADD PRIMARY KEY (`rec_id`);

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
  ADD UNIQUE KEY `trabajador_trab_dni_unique` (`trab_dni`);

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
  MODIFY `alum_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `apoderado`
--
ALTER TABLE `apoderado`
  MODIFY `apod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `asig_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `asignatura_docente`
--
ALTER TABLE `asignatura_docente`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `asis_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `curs_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `examen_linea`
--
ALTER TABLE `examen_linea`
  MODIFY `exa_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `not_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recurso`
--
ALTER TABLE `recurso`
  MODIFY `rec_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  MODIFY `trab_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79520106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;