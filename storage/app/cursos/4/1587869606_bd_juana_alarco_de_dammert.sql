-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2020 a las 22:05:32
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
-- Base de datos: `bd_juana_alarco_de_dammert`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `matricularAlumnos` (`codcurso` INT, `grado` INT)  BEGIN
	SELECT * 
    FROM alumno al 
    WHERE al.alum_grad=grado AND al.alum_est=1 AND NOT (al.alum_id in (
        SELECT ac.alumno_id FROM alumno_curso ac WHERE ac.curso_id=codcurso)) 
    order by al.alum_ape asc;
END$$

DELIMITER ;

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
(3, '75200134', 'QUINTO AGUILAR', 'JUAN DIEGO', 1, '2004-08-20', 3, 1, 9, 75200134),
(4, '75246604', 'SALAZAR BRICEÑO', 'ALBERTO', 1, '2004-07-09', 3, 1, 7, 75246604),
(5, '75650012', 'ROBLES MEDINA', 'DIANA', 0, '2005-09-16', 4, 1, 10, 75650012),
(6, '79520105', 'CHUMPITAZ AGUILAR', 'ELSA', 0, '2005-08-19', 4, 1, 8, 79520105),
(7, '78415200', 'HUAMAN TACSA', 'DAVID', 1, '2004-11-29', 4, 1, 5, 78415200),
(8, '76900080', 'ZEVALLOS HINOSTROZA', 'JOEL', 1, '2005-08-24', 4, 1, 11, 76900080),
(9, '78540496', 'SUAREZ AGUILAR', 'CESAR', 1, '2005-04-14', 4, 1, 8, 78540496),
(10, '78464060', 'QUINTO AGUILAR', 'SHEYLA', 0, '2006-11-11', 3, 1, 9, 78464060),
(11, '78850490', 'CHAVEZ CARMONA', 'MONICA', 0, '2006-09-09', 3, 1, 12, 78850490),
(12, '78603026', 'MARQUEZ ZEGARRA', 'FELIPE', 1, '2006-03-13', 3, 1, 13, 78603026),
(13, '79606046', 'MADRID SALAZAR', 'LIZ', 0, '2006-06-02', 3, 1, 14, 79606046);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_curso`
--

CREATE TABLE `alumno_curso` (
  `id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumno_curso`
--

INSERT INTO `alumno_curso` (`id`, `curso_id`, `alumno_id`) VALUES
(1, 1002, 6),
(2, 1004, 4),
(3, 1001, 4),
(4, 1002, 7),
(5, 1002, 1),
(6, 1002, 9),
(7, 1002, 8),
(8, 1002, 5),
(9, 1004, 11),
(10, 1004, 13),
(11, 1004, 12),
(12, 1004, 3),
(13, 1004, 10),
(14, 1001, 11),
(15, 1001, 13),
(16, 1001, 12),
(17, 1001, 3),
(18, 1001, 10);

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
(7, '75200158', 'BRICEÑO VASQUEZ', 'BRIDGITH PRISCILA', 0, 'b-priscila@gmail.com', NULL),
(8, '74850405', 'AGUILAR AGUILA', 'CELIA', 0, 'celia16.aa@gmail.com', NULL),
(9, '76204070', 'QUINTO ACUÑA', 'RODRIGO JAVIER', 1, 'rodrigo.quinto@hotmail.com', NULL),
(10, '75265129', 'ROBLES FLOREANO', 'HUGO PABLO', 1, 'hugo.robles.fl@hotmail.com', '952741632'),
(11, '07514045', 'HINOSTROZA FLORES', 'DINA', 0, 'd.hinostroza@hotmail.com', '963521412'),
(12, '27040570', 'CHAVEZ VALDIVIA', 'TOMAS', 1, 'jlramirezr@ucvvirtual.edu.pe', NULL),
(13, '70384996', 'MARQUEZ AMARAL', 'MARIO KEVIN', 1, 'mariomarquez@hotmail.com', '952412630'),
(14, '70384930', 'MADRID REMUZGO', 'GIANCARLOS JESUS', 1, 'jlramirezr@ucvvirtual.edu.pe', '985741304');

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
(4, 'Historia'),
(5, 'C.T.A.'),
(6, 'Arte');

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
(6, 6, 2),
(7, 7, 3),
(8, 7, 4),
(9, 7, 5),
(10, 4, 1),
(11, 8, 2),
(12, 8, 5);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`asis_id`, `asis_idcurso`, `asis_idalumno`, `asis_fecha`, `asis_est`) VALUES
(1, 1002, 1, '2020-03-27', 0),
(2, 1002, 5, '2020-03-27', 0),
(3, 1002, 6, '2020-03-27', 0),
(4, 1002, 7, '2020-03-27', 1),
(5, 1002, 8, '2020-03-27', 0),
(6, 1002, 9, '2020-03-27', 2),
(7, 1002, 1, '2020-03-30', 0),
(8, 1002, 5, '2020-03-30', 0),
(9, 1002, 6, '2020-03-30', 1),
(10, 1002, 7, '2020-03-30', 2),
(11, 1002, 8, '2020-03-30', 0),
(12, 1002, 9, '2020-03-30', 1),
(13, 1002, 1, '2020-03-31', 2),
(14, 1002, 5, '2020-03-31', 0),
(15, 1002, 6, '2020-03-31', 0),
(16, 1002, 7, '2020-03-31', 1),
(17, 1002, 8, '2020-03-31', 0),
(18, 1002, 9, '2020-03-31', 0),
(19, 1002, 6, '2020-04-01', 0),
(20, 1002, 7, '2020-04-01', 1),
(21, 1002, 1, '2020-04-01', 0),
(22, 1002, 5, '2020-04-01', 0),
(23, 1002, 9, '2020-04-01', 1),
(24, 1002, 8, '2020-04-01', 0),
(25, 1004, 11, '2020-03-27', 0),
(26, 1004, 13, '2020-03-27', 1),
(27, 1004, 12, '2020-03-27', 0),
(28, 1004, 10, '2020-03-27', 0),
(29, 1004, 3, '2020-03-27', 2),
(30, 1004, 4, '2020-03-27', 0),
(31, 1004, 11, '2020-03-30', 1),
(32, 1004, 13, '2020-03-30', 0),
(33, 1004, 12, '2020-03-30', 0),
(34, 1004, 10, '2020-03-30', 1),
(35, 1004, 3, '2020-03-30', 0),
(36, 1004, 4, '2020-03-30', 0),
(37, 1004, 11, '2020-04-01', 0),
(38, 1004, 13, '2020-04-01', 1),
(39, 1004, 12, '2020-04-01', 0),
(40, 1004, 10, '2020-04-01', 0),
(41, 1004, 3, '2020-04-01', 2),
(42, 1004, 4, '2020-04-01', 1),
(45, 1004, 11, '2020-04-13', 1),
(46, 1004, 13, '2020-04-13', 1),
(47, 1004, 12, '2020-04-13', 0),
(48, 1004, 10, '2020-04-13', 0),
(49, 1004, 3, '2020-04-13', 0),
(50, 1004, 4, '2020-04-13', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `curs_id` int(11) NOT NULL,
  `curs_iddocen` int(11) NOT NULL,
  `curs_idasig` int(11) NOT NULL,
  `curs_grado` int(11) NOT NULL,
  `curs_año` int(4) NOT NULL,
  `curs_est` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`curs_id`, `curs_iddocen`, `curs_idasig`, `curs_grado`, `curs_año`, `curs_est`) VALUES
(1001, 6, 1, 3, 2020, 1),
(1002, 5, 4, 4, 2020, 1),
(1003, 8, 2, 2, 2020, 1),
(1004, 5, 4, 3, 2020, 1);

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

--
-- Volcado de datos para la tabla `examen_linea`
--

INSERT INTO `examen_linea` (`exa_id`, `exa_idcurso`, `exa_titulo`, `exa_link`, `exa_iddocen`, `exa_fecha`) VALUES
(1, 1004, 'Prueba 1', 'https://docs.google.com/forms/d/e/1FAIpQLSdCzKLReC9jruRDjMHLZPAGr4QZuIAc5Idw1ChV87GChtYc0w/viewform?embedded=true', 75200163, '2020-04-22 03:04:23');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`not_id`, `not_idcurso`, `not_idalumno`, `not_n1`, `not_n2`, `not_n3`, `not_promedio`, `not_bimestre`) VALUES
(1, 1002, 6, 12, 14, 13, 13, 1),
(2, 1002, 7, 15, 16, 12, 14, 1),
(3, 1002, 1, 13, 17, 15, 15, 1),
(4, 1002, 5, 11, 10, 16, 12, 1),
(5, 1002, 9, 7, 15, 12, 11, 1),
(6, 1002, 8, 12, 10, 17, 13, 1),
(7, 1002, 6, 12, 14, 16, 14, 2),
(8, 1002, 7, 18, 10, 14, 14, 2),
(9, 1002, 1, 11, 13, 17, 14, 2),
(10, 1002, 5, 9, 12, 12, 11, 2),
(11, 1002, 9, 8, 11, 14, 11, 2),
(12, 1002, 8, 12, 17, 16, 15, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recurso`
--

CREATE TABLE `recurso` (
  `rec_id` int(11) NOT NULL,
  `rec_curso` int(11) NOT NULL,
  `rec_bimestre` int(11) NOT NULL,
  `rec_archivo` varchar(180) NOT NULL,
  `rec_dni` varchar(8) NOT NULL,
  `rec_rol` int(11) NOT NULL,
  `rec_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `recurso`
--

INSERT INTO `recurso` (`rec_id`, `rec_curso`, `rec_bimestre`, `rec_archivo`, `rec_dni`, `rec_rol`, `rec_fechahora`) VALUES
(3, 1004, 1, '1586658320_Excel de prueba N° 1.xlsx', '75200163', 3, '2020-04-12 02:25:20'),
(4, 1004, 1, '1586658722_Word de prueba N° 1.docx', '78850490', 4, '2020-04-12 02:32:02'),
(6, 1004, 1, '1587346231_PPT Prueba.pptx', '75200163', 3, '2020-04-20 01:30:31'),
(7, 1002, 1, '1587613835_Nuevo documento de texto.txt', '75200163', 3, '2020-04-23 03:50:35');

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
(14, 7779398, 3, NULL, NULL),
(15, 79520105, 4, NULL, NULL),
(16, 78415200, 4, NULL, NULL),
(17, 76900080, 4, NULL, NULL),
(18, 78540496, 4, NULL, NULL),
(19, 78464060, 4, NULL, NULL),
(20, 78850490, 4, NULL, NULL),
(21, 78603026, 4, NULL, NULL),
(22, 79606046, 4, NULL, NULL),
(24, 25840870, 3, NULL, NULL),
(25, 45102775, 3, NULL, NULL),
(26, 25406106, 2, NULL, NULL);

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
(6, '07779398', 'PICASSO SALINAS', 'RAFAEL BERNARDO LUIS', 1, '1984-12-22', 1, 7779398),
(7, '25840870', 'AZAÑERO JESUS', 'LIDIA MARILUZ', 0, '1985-04-23', 1, 25840870),
(8, '45102775', 'RODRIGUEZ MUÑOZ', 'ELIAS SAMUEL', 1, '1992-01-01', 1, 45102775),
(9, '25406106', 'OLARTE ARROYO', 'SONIA ISABEL', 0, '1991-02-01', 1, 25406106);

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
(25406106, '25406106', '$2y$10$4ZGNQVPQLzdPVcmzNR6lSeoq8N68FWSLrk7EIFiwPqlnN7i0rll4K', NULL, '2020-04-19 05:12:29', '2020-04-19 05:12:29'),
(25428530, '25428530', '$2y$10$8XCnkVVYe9ui9qxbdK5dA.5vmmxh5Rz2y11lZSBtSDqKlWTw3fRsm', NULL, '2020-03-09 08:44:11', '2020-03-09 08:44:11'),
(25745094, '25745094', '$2y$10$cxheRsBl/6qzGT3krv3ECug6D1/nYeDSg4PkGy9FK.7SjvhsrmVIy', NULL, '2020-03-08 08:32:04', '2020-03-08 08:32:04'),
(25840870, '25840870', '$2y$10$oT3OTJV3rk8PCeYi1SKf2.bsRjd9Edmun5NXabItuyy2/ASEQVg92', NULL, '2020-04-14 21:49:58', '2020-04-14 21:49:58'),
(45102775, '45102775', '$2y$10$gGRHihsbJt0fypTAl8RsJuGHxF2sD5GT7WCAbt1PiQvm1tSoHhXWu', NULL, '2020-04-18 23:39:02', '2020-04-18 23:39:02'),
(70327395, '70327395', '$2y$10$f8Kb1wMgIKMbLj5INDuhie0HYWPJYpIMuCmT83wg9j6etu/Pzhmz2', NULL, '2020-03-01 22:40:17', '2020-03-01 22:40:17'),
(75200120, '75200120', '$2y$10$5.jkgqLutEYda6JHA19DteDLCPewHVmHAoLOrav0lwmq3jxghxYOW', NULL, '2020-03-01 22:39:25', '2020-03-01 22:39:25'),
(75200134, '75200134', '$2y$10$fnab.LDrfaNd0f4QB6CNwuEWzyTJ/suWx/WhQxieXj22kQGI1V9dK', NULL, '2020-03-02 04:26:27', '2020-03-02 04:26:27'),
(75200163, '75200163', '$2y$10$QcH.BGSdvo77oFJvZ4y.puuZRTPgqajgyWMkB7xdbFWa8nccp1yAC', NULL, '2020-03-09 08:53:17', '2020-03-09 08:53:17'),
(75246604, '75246604', '$2y$10$snps3sKLO2IqS8PyUT2ncuInYGM4atsH0VXyoOsTQh6igSBOv6y0q', NULL, '2020-03-02 07:28:26', '2020-03-02 07:28:26'),
(75406456, '75406456', '$2y$10$QLMUZ5fbHtgx3tA0OQmKIO3mDnJyIviWw3fTIEotWqITscOXA1O96', NULL, '2020-03-02 00:45:53', '2020-03-02 00:45:53'),
(75650012, '75650012', '$2y$10$pmMtfvf5tPyrpwp6lQz9LeXOzjPt0t4ewvB2kliVQr.QN9H54/JYe', NULL, '2020-03-02 07:30:36', '2020-03-02 07:30:36'),
(76900080, '76900080', '$2y$10$rzUQKVruYtUy.maiolrI4OzBqQTu2Upa1Qr/g8hBICV1DHj/EuDV6', NULL, '2020-03-26 07:22:08', '2020-03-26 07:22:08'),
(78415200, '78415200', '$2y$10$i41nsGlgBXV9XDF13UKEtuE3Yfyr6v9e0CnWd3ph.cK43.Ymz3JCK', NULL, '2020-03-25 07:58:03', '2020-03-25 07:58:03'),
(78464060, '78464060', '$2y$10$abEIsBTfDtloNvmQLyy2JuD6lybF8BPFOasBD2C8W9hJRZr82t12y', NULL, '2020-03-29 07:19:25', '2020-03-29 07:19:25'),
(78540496, '78540496', '$2y$10$aqe5EygHhqaItVXl.dGwj.74429cwJo/08GYtwF57mcwpDsRGRn7y', NULL, '2020-03-26 07:23:53', '2020-03-26 07:23:53'),
(78603026, '78603026', '$2y$10$usmKmKRtulGQmcH5UJFPWu1BNe0oGvgIfKvMKGrz.JsjYzSEgrKxi', NULL, '2020-03-29 07:32:05', '2020-03-29 07:32:05'),
(78850490, '78850490', '$2y$10$iGF2E2D6tpCNRhBXeX9PzOlM.RHkafViJfZE5Cu9KiwZdiqBong06', NULL, '2020-03-29 07:27:46', '2020-03-29 07:27:46'),
(79520105, '79520105', '$2y$10$gEbeIteYMHfjbBH6nnk26ee7hPhu9vXlemai1ByHcILf6jjZNd/8W', NULL, '2020-03-24 06:42:00', '2020-03-24 06:42:00'),
(79606046, '79606046', '$2y$10$QR4fLwLIhcyh.l16ePXuN.ijXQqWuxfceSXOUh77I9Q1heUCX033u', NULL, '2020-03-29 07:33:51', '2020-03-29 07:33:51');

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
-- Indices de la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curso_id` (`curso_id`),
  ADD KEY `alumno_id` (`alumno_id`);

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
-- Indices de la tabla `examen_linea`
--
ALTER TABLE `examen_linea`
  ADD PRIMARY KEY (`exa_id`),
  ADD KEY `exa_idcurso` (`exa_idcurso`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`not_id`),
  ADD KEY `not_idcurso` (`not_idcurso`),
  ADD KEY `not_idalumno` (`not_idalumno`);

--
-- Indices de la tabla `recurso`
--
ALTER TABLE `recurso`
  ADD PRIMARY KEY (`rec_id`),
  ADD KEY `rec_curso` (`rec_curso`);

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
  MODIFY `alum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `apoderado`
--
ALTER TABLE `apoderado`
  MODIFY `apod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `asig_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `asignatura_docente`
--
ALTER TABLE `asignatura_docente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `asis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `curs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;

--
-- AUTO_INCREMENT de la tabla `examen_linea`
--
ALTER TABLE `examen_linea`
  MODIFY `exa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `not_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `recurso`
--
ALTER TABLE `recurso`
  MODIFY `rec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  MODIFY `trab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
