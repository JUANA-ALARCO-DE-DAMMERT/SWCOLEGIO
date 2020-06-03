-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2020 a las 00:00:38
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
-- Base de datos: `swexpo`
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
  `alum_sexo` int(11) NOT NULL,
  `alum_fnac` date NOT NULL,
  `alum_grad` int(11) NOT NULL,
  `alum_est` int(11) NOT NULL,
  `alum_apod` int(11) NOT NULL,
  `alum_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_curso`
--

CREATE TABLE `alumno_curso` (
  `id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apoderado`
--

CREATE TABLE `apoderado` (
  `apod_id` int(11) NOT NULL,
  `apod_dni` varchar(8) NOT NULL,
  `apod_ape` varchar(70) NOT NULL,
  `apod_nom` varchar(70) NOT NULL,
  `apod_sexo` int(11) NOT NULL,
  `apod_email` varchar(70) NOT NULL,
  `apod_tel` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `asig_id` int(11) NOT NULL,
  `asig_nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura_docente`
--

CREATE TABLE `asignatura_docente` (
  `id` int(11) NOT NULL,
  `trab_id` int(11) NOT NULL,
  `asig_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `asis_id` int(11) NOT NULL,
  `asis_idcurso` int(11) NOT NULL,
  `asis_idalumno` int(11) NOT NULL,
  `asis_fecha` date NOT NULL,
  `asis_est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `curs_id` int(11) NOT NULL,
  `curs_iddocen` int(11) NOT NULL,
  `curs_idasig` int(11) NOT NULL,
  `curs_grado` int(11) NOT NULL,
  `curs_año` int(11) NOT NULL,
  `curs_est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE `encuesta` (
  `enc_id` int(11) NOT NULL,
  `enc_titulo` varchar(100) NOT NULL,
  `enc_link` text NOT NULL,
  `enc_usuario` int(11) NOT NULL,
  `enc_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_linea`
--

CREATE TABLE `examen_linea` (
  `exa_id` int(11) NOT NULL,
  `exa_idcurso` int(11) NOT NULL,
  `exa_titulo` varchar(100) NOT NULL,
  `exa_link` text NOT NULL,
  `exa_iddocen` int(11) NOT NULL,
  `exa_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `not_id` int(11) NOT NULL,
  `not_idcurso` int(11) NOT NULL,
  `not_idalumno` int(11) NOT NULL,
  `not_n1` int(11) NOT NULL,
  `not_n2` int(11) NOT NULL,
  `not_n3` int(11) NOT NULL,
  `not_promedio` int(11) NOT NULL,
  `not_bimestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(11) NOT NULL,
  `año` int(11) NOT NULL,
  `idalumno` int(11) NOT NULL,
  `montoanual` decimal(8,2) NOT NULL,
  `descuento` decimal(8,2) NOT NULL,
  `inicial` decimal(8,2) NOT NULL,
  `marzo` decimal(8,2) NOT NULL,
  `abril` decimal(8,2) NOT NULL,
  `mayo` decimal(8,2) NOT NULL,
  `junio` decimal(8,2) NOT NULL,
  `julio` decimal(8,2) NOT NULL,
  `agosto` decimal(8,2) NOT NULL,
  `setiembre` decimal(8,2) NOT NULL,
  `octubre` decimal(8,2) NOT NULL,
  `noviembre` decimal(8,2) NOT NULL,
  `diciembre` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recurso`
--

CREATE TABLE `recurso` (
  `rec_id` int(11) NOT NULL,
  `rec_curso` int(11) NOT NULL,
  `rec_bimestre` int(11) NOT NULL,
  `rec_archivo` varchar(180) NOT NULL,
  `rec_dni` int(11) NOT NULL,
  `rec_rol` int(11) NOT NULL,
  `rec_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recvideo`
--

CREATE TABLE `recvideo` (
  `vid_id` int(11) NOT NULL,
  `vid_curso` int(11) NOT NULL,
  `vid_titulo` varchar(100) NOT NULL,
  `vid_link` text NOT NULL,
  `vid_usuario` int(11) NOT NULL,
  `vid_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `trab_id` int(11) NOT NULL,
  `trab_dni` varchar(9) NOT NULL,
  `trab_ape` varchar(70) NOT NULL,
  `trab_nom` varchar(70) NOT NULL,
  `trab_sexo` int(11) NOT NULL,
  `trab_fnac` date NOT NULL,
  `trab_email` varchar(100) NOT NULL,
  `trab_tel` varchar(11) NOT NULL,
  `trab_est` int(11) NOT NULL,
  `trab_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `usuario` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `pwrd` varchar(100) NOT NULL,
  `last_login` datetime NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `link` text NOT NULL,
  `idalumno` int(11) NOT NULL,
  `idsecre` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`alum_id`),
  ADD KEY `alum_apod` (`alum_apod`),
  ADD KEY `alum_user` (`alum_user`);

--
-- Indices de la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumno_id` (`alumno_id`),
  ADD KEY `curso_id` (`curso_id`);

--
-- Indices de la tabla `apoderado`
--
ALTER TABLE `apoderado`
  ADD PRIMARY KEY (`apod_id`);

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
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`asis_id`),
  ADD KEY `asis_idcurso` (`asis_idcurso`),
  ADD KEY `asis_idalumno` (`asis_idalumno`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`curs_id`),
  ADD KEY `curs_iddocen` (`curs_iddocen`),
  ADD KEY `curs_idasig` (`curs_idasig`);

--
-- Indices de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  ADD PRIMARY KEY (`enc_id`),
  ADD KEY `enc_usuario` (`enc_usuario`);

--
-- Indices de la tabla `examen_linea`
--
ALTER TABLE `examen_linea`
  ADD PRIMARY KEY (`exa_id`),
  ADD KEY `exa_iddocen` (`exa_iddocen`),
  ADD KEY `exa_idcurso` (`exa_idcurso`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`not_id`),
  ADD KEY `not_idcurso` (`not_idcurso`),
  ADD KEY `not_idalumno` (`not_idalumno`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idalumno` (`idalumno`);

--
-- Indices de la tabla `recurso`
--
ALTER TABLE `recurso`
  ADD PRIMARY KEY (`rec_id`),
  ADD KEY `rec_curso` (`rec_curso`),
  ADD KEY `rec_dni` (`rec_dni`),
  ADD KEY `rec_rol` (`rec_rol`);

--
-- Indices de la tabla `recvideo`
--
ALTER TABLE `recvideo`
  ADD PRIMARY KEY (`vid_id`),
  ADD KEY `vid_usuario` (`vid_usuario`),
  ADD KEY `vid_curso` (`vid_curso`);

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
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD PRIMARY KEY (`trab_id`),
  ADD KEY `trab_user` (`trab_user`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idalumno` (`idalumno`),
  ADD KEY `idsecre` (`idsecre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `alum_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `apoderado`
--
ALTER TABLE `apoderado`
  MODIFY `apod_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `asig_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignatura_docente`
--
ALTER TABLE `asignatura_docente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `asis_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `curs_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  MODIFY `enc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `examen_linea`
--
ALTER TABLE `examen_linea`
  MODIFY `exa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `not_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recurso`
--
ALTER TABLE `recurso`
  MODIFY `rec_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recvideo`
--
ALTER TABLE `recvideo`
  MODIFY `vid_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  MODIFY `trab_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`alum_apod`) REFERENCES `apoderado` (`apod_id`),
  ADD CONSTRAINT `alumno_ibfk_2` FOREIGN KEY (`alum_user`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  ADD CONSTRAINT `alumno_curso_ibfk_1` FOREIGN KEY (`alumno_id`) REFERENCES `alumno` (`alum_id`),
  ADD CONSTRAINT `alumno_curso_ibfk_2` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`curs_id`);

--
-- Filtros para la tabla `asignatura_docente`
--
ALTER TABLE `asignatura_docente`
  ADD CONSTRAINT `asignatura_docente_ibfk_1` FOREIGN KEY (`trab_id`) REFERENCES `trabajador` (`trab_id`),
  ADD CONSTRAINT `asignatura_docente_ibfk_2` FOREIGN KEY (`asig_id`) REFERENCES `asignatura` (`asig_id`);

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`asis_idalumno`) REFERENCES `alumno` (`alum_id`),
  ADD CONSTRAINT `asistencia_ibfk_2` FOREIGN KEY (`asis_idcurso`) REFERENCES `curso` (`curs_id`);

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`curs_idasig`) REFERENCES `asignatura` (`asig_id`),
  ADD CONSTRAINT `curso_ibfk_2` FOREIGN KEY (`curs_iddocen`) REFERENCES `trabajador` (`trab_id`);

--
-- Filtros para la tabla `encuesta`
--
ALTER TABLE `encuesta`
  ADD CONSTRAINT `encuesta_ibfk_1` FOREIGN KEY (`enc_usuario`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `examen_linea`
--
ALTER TABLE `examen_linea`
  ADD CONSTRAINT `examen_linea_ibfk_1` FOREIGN KEY (`exa_idcurso`) REFERENCES `curso` (`curs_id`),
  ADD CONSTRAINT `examen_linea_ibfk_2` FOREIGN KEY (`exa_iddocen`) REFERENCES `trabajador` (`trab_id`);

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`not_idalumno`) REFERENCES `alumno` (`alum_id`),
  ADD CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`not_idcurso`) REFERENCES `curso` (`curs_id`);

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`idalumno`) REFERENCES `alumno` (`alum_id`);

--
-- Filtros para la tabla `recurso`
--
ALTER TABLE `recurso`
  ADD CONSTRAINT `recurso_ibfk_1` FOREIGN KEY (`rec_curso`) REFERENCES `curso` (`curs_id`),
  ADD CONSTRAINT `recurso_ibfk_2` FOREIGN KEY (`rec_rol`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `recurso_ibfk_3` FOREIGN KEY (`rec_dni`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `recvideo`
--
ALTER TABLE `recvideo`
  ADD CONSTRAINT `recvideo_ibfk_1` FOREIGN KEY (`vid_curso`) REFERENCES `curso` (`curs_id`),
  ADD CONSTRAINT `recvideo_ibfk_2` FOREIGN KEY (`vid_usuario`) REFERENCES `trabajador` (`trab_id`);

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD CONSTRAINT `trabajador_ibfk_1` FOREIGN KEY (`trab_user`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`idalumno`) REFERENCES `alumno` (`alum_id`),
  ADD CONSTRAINT `video_ibfk_2` FOREIGN KEY (`idsecre`) REFERENCES `trabajador` (`trab_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
