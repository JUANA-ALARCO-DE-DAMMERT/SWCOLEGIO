-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2020 a las 23:31:48
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

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`alum_id`, `alum_dni`, `alum_ape`, `alum_nom`, `alum_sexo`, `alum_fnac`, `alum_grad`, `alum_est`, `alum_apod`, `alum_user`) VALUES
(7, '70743435', 'CAM PIZARRO', 'GENGIS', 1, '2007-09-29', 7, 1, 9, 70743435),
(8, '61213486', 'AZABACHE BELLIDO', 'JORGE CARLOS ERNESTO', 1, '2007-03-10', 8, 1, 7, 61213486),
(9, '71175886', 'URQUIAGA MERINO', 'FABIANA MICAELA', 0, '2008-02-27', 7, 1, 12, 71175886),
(10, '61184063', 'VILLANUEVA DOMÍNGUEZ', 'RENZO', 1, '2007-10-31', 7, 1, 15, 61184063),
(11, '70742621', 'GONZALES VASQUEZ', 'DANIELA', 0, '2007-10-04', 7, 1, 14, 70742621),
(12, '61876657', 'RODRIGUEZ GONZALES', 'ALEJANDRO', 1, '2007-09-11', 7, 1, 11, 61876657),
(13, '71146067', 'POÑO MONROE', 'FABIÁN', 1, '2007-12-28', 7, 1, 10, 71146067),
(14, '72052749', 'ORTIZ AGUIRRE', 'ALEXA', 0, '2008-07-14', 6, 1, 8, 72052749);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_curso`
--

CREATE TABLE `alumno_curso` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `curso_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumno_curso`
--

INSERT INTO `alumno_curso` (`id`, `curso_id`, `alumno_id`) VALUES
(1, 35, 7),
(2, 35, 11),
(3, 35, 13),
(4, 35, 12),
(5, 35, 9),
(6, 35, 10),
(13, 4, 7),
(14, 4, 11),
(15, 4, 13),
(16, 4, 12),
(17, 4, 9),
(18, 4, 10),
(19, 36, 8),
(26, 25, 7),
(27, 25, 11),
(28, 25, 13),
(29, 25, 12),
(30, 25, 9),
(31, 25, 10),
(32, 26, 7),
(33, 26, 11),
(34, 26, 13),
(35, 26, 12),
(36, 26, 9),
(37, 26, 10),
(38, 20, 7),
(39, 20, 11),
(40, 20, 13),
(41, 20, 12),
(42, 20, 9),
(43, 20, 10),
(44, 27, 8),
(45, 28, 8),
(46, 21, 8),
(47, 14, 7),
(48, 14, 11),
(49, 14, 13),
(50, 14, 12),
(51, 14, 9),
(52, 14, 10),
(53, 15, 8),
(54, 41, 7),
(55, 41, 11),
(56, 41, 13),
(57, 41, 12),
(58, 41, 9),
(59, 41, 10),
(60, 42, 8),
(63, 5, 8),
(64, 9, 7),
(65, 9, 11),
(66, 9, 13),
(67, 9, 12),
(68, 9, 9),
(69, 9, 10),
(70, 10, 8),
(77, 53, 14),
(78, 51, 14),
(79, 52, 14),
(80, 50, 14),
(81, 54, 14),
(82, 49, 14),
(83, 55, 14),
(84, 48, 14);

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

--
-- Volcado de datos para la tabla `apoderado`
--

INSERT INTO `apoderado` (`apod_id`, `apod_dni`, `apod_ape`, `apod_nom`, `apod_sexo`, `apod_email`, `apod_tel`) VALUES
(7, '10799867', 'BELLIDO CALLE', 'BIELKA LIZBETH', 0, 'bielkabellido37@gmail.com', '986957620'),
(8, '44903705', 'ORTIZ CARRION', 'LUIS ALEX', 1, 'luisalexortiz25@gmail.com', '994778361'),
(9, '09646228', 'CAM URBINA', 'HECTOR GENGIS', 1, 'gengiscam17@gmail.com', '998075193'),
(10, '10799457', 'MONROE CAMAYO', 'CAROLINA MERCEDES', 0, 'carosaguita@gmail.com', '956323680'),
(11, '40530656', 'GONZALES RAMIREZ', 'ROSS LLENY', 0, 'rosslleny@hotmail.com', '958500661'),
(12, '41065830', 'MERINO EGUILUZ DE URQUIAGA', 'GABRIELA MERCEDES', 0, 'gaby.merino.ur@gmail.com', '987731044'),
(13, '25776918', 'GONZALES MONCADA', 'MARIELLA MARGARITA', 0, 'mariellagonzales69@gmail.com', '999531096'),
(14, '25757057', 'VASQUEZ ESPINOZA DE GONZALES', 'CARMEN PATRICIA', 0, 'cvasqueze@richmondelt.com', '944004056'),
(15, '41436411', 'DOMINGUEZ GARCIA', 'MARILUZ', 0, 'marita232dg@gmail.com', '997151405'),
(16, '76703306', 'CHACALIAZA MENDEZ', 'LESLIE MARIBEL', 0, 'lesliecm39@gmail.com', '948074519'),
(17, '47178755', 'LEONARDO GRADOS', 'ROSA MARIA', 0, 'rosaleonardo165@gmail.com', '967853072'),
(18, '40580540', 'CUBAS PINTO', 'CARLA MILAGROS', 0, 'carcubaspinto@gmail.com', '982057324'),
(19, '44192939', 'DEFILIPPI BACALLA', 'ALDO GIOVANNI', 1, 'defilippi.aldo@gmail.com', '987205682'),
(20, '47051515', 'LEONARDO GRADOS', 'MICAELA ROXANA', 0, 'Mikaleonardo46@gmail.com', '947096504'),
(21, '44202912', 'RODRIGUEZ DUEÑAS', 'JEAN PIERRE RICARDO', 1, 'Jeanpierrerodriguez5@gmail.com', '924705293'),
(22, '43832513', 'CONTRERAS FLORES', 'DENISSE JAHAIRA', 0, 'Denissecontreras2010@gmail.com', '960159306'),
(23, '44198903', 'VASQUEZ OLIVERA', 'CELIDA', 0, 'marthaolivera1402@gmail.com', '941953462'),
(24, '09645185', 'SALIRROSAS PEREZ', 'YANET CLAUDIA', 0, 'yanetsalirrosas437@gmail.com', '980035961'),
(25, '09642341', 'BRAITHWAITE BARRERA', 'JUANA', 0, 'jjz_121670@hotmail.com', '989895529'),
(26, '32305048', 'ZULOAGA TREJO', 'MIRTHA ALBINA', 0, 'mattcars_671@live.com', '952423267'),
(27, '25565399', 'PINEDA FLORES', 'ELIZABETH JULIA', 0, 'elipinedaflores@hotmail.com', '950936164'),
(28, '44224199', 'ALTAMIRANO CASAS', 'MANUEL ALBERTO', 1, 'Altamirano.mac@gmail.com', '913988403'),
(29, '16655470', 'FINETTI PORTUGAL', 'SARA ROSA', 0, 'sararosa_@hotmail.com', '950193415'),
(30, '25561163', 'JARA RIVASPLATA', 'EDUARDO ANGEL', 1, 'lesliegarcia998@gmail.com', '960192808'),
(31, '41259196', 'DEXTRE AYALA', 'LIZ GIOVANNA', 0, 'Lizgiodextre@gmail.com', '916915002'),
(32, '09855868', 'HUALLPA MAQUERHUA', 'MARIBEL JULIANA', 0, 'maribelhuallpa6@gmail.com', '969400134'),
(33, '47509605', 'GAVILANO BARNADAS', 'ALEXANDRA', 0, 'Alemesut@hotmail.com', '987731044'),
(34, '48362249', 'GARCIA CORDOVA', 'ANGELICA', 0, 'angegarciacordova@gmail.com', '917383953'),
(35, '40541826', 'TORRES GARCIA', 'PABLO', 1, 'pablotg198@gmail.com', '920818898'),
(36, '42466724', 'GOMEZ SEDANO', 'MAYRA MILAGROS', 0, 'mayrin5220@hotmail.com', '927590471');

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

--
-- Volcado de datos para la tabla `asignatura_docente`
--

INSERT INTO `asignatura_docente` (`id`, `trab_id`, `asig_id`) VALUES
(8, 9, 7),
(9, 10, 2),
(10, 10, 3),
(11, 11, 1),
(12, 11, 4),
(13, 12, 5),
(14, 12, 6),
(15, 13, 4),
(16, 14, 1),
(17, 14, 2),
(18, 14, 3),
(19, 14, 4),
(20, 15, 1),
(21, 15, 2),
(22, 15, 3),
(23, 15, 4);

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

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`asis_id`, `asis_idcurso`, `asis_idalumno`, `asis_fecha`, `asis_est`) VALUES
(19, 4, 7, '2020-04-27', 0),
(20, 4, 11, '2020-04-27', 0),
(21, 4, 13, '2020-04-27', 0),
(22, 4, 12, '2020-04-27', 0),
(23, 4, 9, '2020-04-27', 2),
(24, 4, 10, '2020-04-27', 0),
(25, 55, 14, '2020-04-27', 0),
(38, 9, 7, '2020-04-27', 0),
(39, 9, 11, '2020-04-27', 0),
(40, 9, 13, '2020-04-27', 0),
(41, 9, 12, '2020-04-27', 0),
(42, 9, 9, '2020-04-27', 2),
(43, 9, 10, '2020-04-27', 0),
(44, 26, 7, '2020-04-27', 0),
(45, 26, 11, '2020-04-27', 0),
(46, 26, 13, '2020-04-27', 0),
(47, 26, 12, '2020-04-27', 0),
(48, 26, 9, '2020-04-27', 2),
(49, 26, 10, '2020-04-27', 0),
(50, 48, 14, '2020-04-27', 0),
(51, 51, 14, '2020-04-27', 0),
(52, 10, 8, '2020-04-27', 0),
(53, 27, 8, '2020-04-27', 0),
(54, 14, 7, '2020-04-27', 0),
(55, 14, 11, '2020-04-27', 0),
(56, 14, 13, '2020-04-27', 0),
(57, 14, 12, '2020-04-27', 2),
(58, 14, 9, '2020-04-27', 0),
(59, 14, 10, '2020-04-27', 0),
(60, 20, 7, '2020-04-27', 0),
(61, 20, 11, '2020-04-27', 0),
(62, 20, 13, '2020-04-27', 0),
(63, 20, 12, '2020-04-27', 2),
(64, 20, 9, '2020-04-27', 0),
(65, 20, 10, '2020-04-27', 0),
(66, 15, 8, '2020-04-27', 0),
(67, 21, 8, '2020-04-27', 0),
(68, 4, 7, '2020-04-28', 0),
(69, 4, 11, '2020-04-28', 0),
(70, 4, 13, '2020-04-28', 0),
(71, 4, 12, '2020-04-28', 0),
(72, 4, 9, '2020-04-28', 0),
(73, 4, 10, '2020-04-28', 0),
(74, 55, 14, '2020-04-28', 0),
(75, 5, 8, '2020-04-28', 0),
(76, 5, 8, '2020-04-27', 0),
(77, 52, 14, '2020-04-27', 0),
(78, 52, 14, '2020-04-28', 2),
(79, 25, 7, '2020-04-27', 2),
(80, 25, 11, '2020-04-27', 0),
(81, 25, 13, '2020-04-27', 2),
(82, 25, 12, '2020-04-27', 0),
(83, 25, 9, '2020-04-27', 2),
(84, 25, 10, '2020-04-27', 0),
(85, 25, 7, '2020-04-28', 2),
(86, 25, 11, '2020-04-28', 0),
(87, 25, 13, '2020-04-28', 2),
(88, 25, 12, '2020-04-28', 0),
(89, 25, 9, '2020-04-28', 0),
(90, 25, 10, '2020-04-28', 0),
(91, 28, 8, '2020-04-27', 0),
(92, 28, 8, '2020-04-28', 0),
(93, 9, 7, '2020-04-28', 0),
(94, 9, 11, '2020-04-28', 0),
(95, 9, 13, '2020-04-28', 2),
(96, 9, 12, '2020-04-28', 0),
(97, 9, 9, '2020-04-28', 0),
(98, 9, 10, '2020-04-28', 0),
(99, 26, 7, '2020-04-28', 0),
(100, 26, 11, '2020-04-28', 0),
(101, 26, 13, '2020-04-28', 2),
(102, 26, 12, '2020-04-28', 0),
(103, 26, 9, '2020-04-28', 0),
(104, 26, 10, '2020-04-28', 0),
(105, 10, 8, '2020-04-28', 0),
(106, 27, 8, '2020-04-28', 0),
(107, 48, 14, '2020-04-28', 0),
(108, 51, 14, '2020-04-28', 0),
(109, 14, 7, '2020-04-28', 0),
(110, 14, 11, '2020-04-28', 0),
(111, 14, 13, '2020-04-28', 0),
(112, 14, 12, '2020-04-28', 2),
(113, 14, 9, '2020-04-28', 0),
(114, 14, 10, '2020-04-28', 0),
(115, 20, 7, '2020-04-28', 0),
(116, 20, 11, '2020-04-28', 0),
(117, 20, 13, '2020-04-28', 0),
(118, 20, 12, '2020-04-28', 2),
(119, 20, 9, '2020-04-28', 0),
(120, 20, 10, '2020-04-28', 0),
(121, 15, 8, '2020-04-28', 0),
(122, 21, 8, '2020-04-28', 0),
(123, 35, 7, '2020-04-29', 0),
(124, 35, 11, '2020-04-29', 0),
(125, 35, 13, '2020-04-29', 2),
(126, 35, 12, '2020-04-29', 0),
(127, 35, 9, '2020-04-29', 0),
(128, 35, 10, '2020-04-29', 0),
(129, 36, 8, '2020-04-29', 0),
(130, 20, 7, '2020-04-29', 0),
(131, 20, 11, '2020-04-29', 0),
(132, 20, 13, '2020-04-29', 0),
(133, 20, 12, '2020-04-29', 0),
(134, 20, 9, '2020-04-29', 0),
(135, 20, 10, '2020-04-29', 0),
(136, 21, 8, '2020-04-29', 0),
(137, 52, 14, '2020-04-29', 0),
(138, 25, 7, '2020-04-29', 2),
(139, 25, 11, '2020-04-29', 0),
(140, 25, 13, '2020-04-29', 2),
(141, 25, 12, '2020-04-29', 0),
(142, 25, 9, '2020-04-29', 0),
(143, 25, 10, '2020-04-29', 0),
(144, 28, 8, '2020-04-29', 0),
(145, 9, 7, '2020-04-29', 0),
(146, 9, 11, '2020-04-29', 0),
(147, 9, 13, '2020-04-29', 2),
(148, 9, 12, '2020-04-29', 0),
(149, 9, 9, '2020-04-29', 0),
(150, 9, 10, '2020-04-29', 0),
(151, 26, 7, '2020-04-29', 0),
(152, 26, 11, '2020-04-29', 0),
(153, 26, 13, '2020-04-29', 2),
(154, 26, 12, '2020-04-29', 0),
(155, 26, 9, '2020-04-29', 0),
(156, 26, 10, '2020-04-29', 0),
(157, 10, 8, '2020-04-29', 0),
(158, 27, 8, '2020-04-29', 0),
(159, 48, 14, '2020-04-29', 0),
(160, 51, 14, '2020-04-29', 0),
(161, 4, 7, '2020-04-29', 0),
(162, 4, 11, '2020-04-29', 0),
(163, 4, 13, '2020-04-29', 1),
(164, 4, 12, '2020-04-29', 0),
(165, 4, 9, '2020-04-29', 0),
(166, 4, 10, '2020-04-29', 0),
(167, 5, 8, '2020-04-29', 0),
(168, 55, 14, '2020-04-29', 0),
(169, 9, 7, '2020-04-30', 0),
(170, 9, 11, '2020-04-30', 0),
(171, 9, 13, '2020-04-30', 0),
(172, 9, 12, '2020-04-30', 0),
(173, 9, 9, '2020-04-30', 0),
(174, 9, 10, '2020-04-30', 0),
(181, 26, 7, '2020-04-30', 0),
(182, 26, 11, '2020-04-30', 0),
(183, 26, 13, '2020-04-30', 0),
(184, 26, 12, '2020-04-30', 0),
(185, 26, 9, '2020-04-30', 0),
(186, 26, 10, '2020-04-30', 0),
(187, 10, 8, '2020-04-30', 0),
(188, 27, 8, '2020-04-30', 0),
(189, 48, 14, '2020-04-30', 0),
(190, 51, 14, '2020-04-30', 0),
(192, 4, 7, '2020-04-30', 0),
(193, 4, 11, '2020-04-30', 0),
(194, 4, 13, '2020-04-30', 2),
(195, 4, 12, '2020-04-30', 0),
(196, 4, 9, '2020-04-30', 0),
(197, 4, 10, '2020-04-30', 0),
(198, 55, 14, '2020-04-30', 0),
(199, 5, 8, '2020-04-30', 0);

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

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`curs_id`, `curs_iddocen`, `curs_idasig`, `curs_grado`, `curs_año`, `curs_est`) VALUES
(4, 9, 7, 7, 2020, 1),
(5, 9, 7, 8, 2020, 1),
(6, 9, 7, 9, 2020, 1),
(7, 9, 7, 10, 2020, 1),
(8, 9, 7, 11, 2020, 1),
(9, 11, 1, 7, 2020, 1),
(10, 11, 1, 8, 2020, 1),
(11, 11, 1, 9, 2020, 1),
(12, 11, 1, 10, 2020, 1),
(13, 11, 1, 11, 2020, 1),
(14, 10, 2, 7, 2020, 1),
(15, 10, 2, 8, 2020, 1),
(16, 10, 2, 9, 2020, 1),
(17, 10, 2, 10, 2020, 1),
(18, 10, 2, 11, 2020, 1),
(20, 10, 3, 7, 2020, 1),
(21, 10, 3, 8, 2020, 1),
(22, 10, 3, 9, 2020, 1),
(23, 10, 3, 10, 2020, 1),
(24, 10, 3, 11, 2020, 1),
(25, 13, 4, 7, 2020, 1),
(26, 11, 4, 7, 2020, 1),
(27, 11, 4, 8, 2020, 1),
(28, 13, 4, 8, 2020, 1),
(29, 13, 4, 9, 2020, 1),
(30, 11, 4, 9, 2020, 1),
(31, 11, 4, 10, 2020, 1),
(32, 13, 4, 10, 2020, 1),
(33, 11, 4, 11, 2020, 1),
(34, 13, 4, 11, 2020, 1),
(35, 12, 5, 7, 2020, 1),
(36, 12, 5, 8, 2020, 1),
(37, 12, 5, 9, 2020, 1),
(38, 12, 5, 10, 2020, 1),
(40, 12, 5, 11, 2020, 1),
(41, 12, 6, 7, 2020, 1),
(42, 12, 6, 8, 2020, 1),
(44, 12, 6, 9, 2020, 1),
(46, 12, 6, 10, 2020, 1),
(47, 12, 6, 11, 2020, 1),
(48, 11, 1, 6, 2020, 1),
(49, 10, 2, 6, 2020, 1),
(50, 10, 3, 6, 2020, 1),
(51, 11, 4, 6, 2020, 1),
(52, 13, 4, 6, 2020, 1),
(53, 12, 5, 6, 2020, 1),
(54, 12, 6, 6, 2020, 1),
(55, 9, 7, 6, 2020, 1);

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
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(11) NOT NULL,
  `año` int(11) NOT NULL,
  `idalumno` int(11) NOT NULL,
  `montoanual` decimal(8,2) NOT NULL,
  `descuento` decimal(8,2) DEFAULT NULL,
  `inicial` decimal(8,2) NOT NULL,
  `marzo` decimal(8,2) DEFAULT NULL,
  `abril` decimal(8,2) DEFAULT NULL,
  `mayo` decimal(8,2) DEFAULT NULL,
  `junio` decimal(8,2) DEFAULT NULL,
  `julio` decimal(8,2) DEFAULT NULL,
  `agosto` decimal(8,2) DEFAULT NULL,
  `setiembre` decimal(8,2) DEFAULT NULL,
  `octubre` decimal(8,2) DEFAULT NULL,
  `noviembre` decimal(8,2) DEFAULT NULL,
  `diciembre` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recurso`
--

CREATE TABLE `recurso` (
  `rec_id` bigint(20) UNSIGNED NOT NULL,
  `rec_curso` int(11) NOT NULL,
  `rec_bimestre` int(11) NOT NULL,
  `rec_archivo` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rec_dni` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(2, 70327395, 1, NULL, NULL),
(14, 46843503, 2, NULL, NULL),
(15, 72748576, 3, NULL, NULL),
(16, 25705360, 3, NULL, NULL),
(17, 72567685, 3, NULL, NULL),
(18, 25501709, 3, NULL, NULL),
(19, 72395197, 3, NULL, NULL),
(20, 25565399, 3, NULL, NULL),
(21, 70743435, 4, NULL, NULL),
(22, 61213486, 4, NULL, NULL),
(23, 71175886, 4, NULL, NULL),
(24, 61184063, 4, NULL, NULL),
(25, 70742621, 4, NULL, NULL),
(26, 1878692, 3, NULL, NULL),
(27, 61876657, 4, NULL, NULL),
(28, 71146067, 4, NULL, NULL),
(29, 72052749, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `trab_id` int(10) UNSIGNED NOT NULL,
  `trab_dni` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, '75200120', 'RAMIREZ RODRIGUEZ', 'JORGE LUIS', 1, '1999-10-14', 'jorge14.jlrr@gmail.com', NULL, 1, 75200120),
(2, '70327395', 'RODRIGUEZ RICHARTE', 'JOSEPH JOQTAN', 1, '1999-03-20', 'joqtan.jr@gmail.com', NULL, 1, 70327395),
(8, '46843503', 'MIÑAN RODRIGUEZ', 'TABATTA STEPHANNIE', 0, '1991-03-10', NULL, NULL, 1, 46843503),
(9, '72748576', 'SALAZAR ESTRADA', 'ENRIQUE FRANCO', 1, '1995-05-31', 'francosalazare@gmail.com', '923236060', 1, 72748576),
(10, '25705360', 'GARCIA RIOFRIO', 'LESLIE DEL CARMEN', 0, '1971-10-10', 'lesliegarcia998@gmail.com', '960192808', 1, 25705360),
(11, '72567685', 'LICLA GUTIERREZ', 'LUIS FELIPE', 1, '1994-07-01', 'lflging@gmail.com', '938486959', 1, 72567685),
(12, '25501709', 'LA MADRID SALCEDO', 'JESUS RUPERTO', 1, '1956-03-29', 'jrlms_1229@gmail.com', '945371800', 1, 25501709),
(13, '72395197', 'FARROÑAN GONZALEZ', 'VIRGINIA YAMALY', 0, '1992-03-27', 'vyfg_fcb_e@hotmail.com', '984033146', 1, 72395197),
(14, '25565399', 'PINEDA FLORES', 'ELIZABETH JULIA', 0, '1968-08-28', 'elipinedaflores@hotmail.com', '922144772', 1, 25565399),
(15, '001878692', 'LESTON RICO', 'ALICIA', 0, '1969-01-13', 'alicialeston12@gmail.com', '992527353', 1, 1878692);

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
(1878692, '001878692', '$2y$10$/C.OKf7nFcke8SiH0gLdZOJwvOKIXSzjrE5BFixARssbASvbwr1uW', '2020-04-25 20:43:01', NULL, '2020-04-26 03:38:17', '2020-04-26 03:43:01'),
(25501709, '25501709', '$2y$10$ZkvVHuzMO62mUbcoodDntOLgbKcO5MYl08wo725HWzTMQ2HP14wpG', '2020-04-29 19:23:59', NULL, '2020-04-25 05:14:58', '2020-04-30 02:23:59'),
(25565399, '25565399', '$2y$10$7dfZfFwwARYmIKPwM8e2MOz77s2RfVnlnrHq1PSt4yxADe9V6D9kW', '2020-05-02 09:46:21', NULL, '2020-04-25 05:26:17', '2020-05-02 16:46:21'),
(25705360, '25705360', '$2y$10$1QlAzp5Ssh36vkEZ99IsVu6WObgm4oICVj/RbNG0LG6an.ii4Vmj.', '2020-04-29 19:26:12', NULL, '2020-04-25 05:08:32', '2020-04-30 02:26:12'),
(46843503, '46843503', '$2y$10$c/RCgDIiVYTZsx1DFGmNZukEhpPYQP5M7IhMWEOdP0ajArWVeJJs.', '2020-05-02 10:19:55', NULL, '2020-04-25 04:52:16', '2020-05-02 17:19:55'),
(61184063, '61184063', '$2y$10$aKNtLYKmkZl/scwTI.0sjOvcTlPQFVUn8Y4GoLLC4caf5FdONb7iu', NULL, NULL, '2020-04-26 01:28:55', '2020-04-26 01:28:55'),
(61213486, '61213486', '$2y$10$JxLFWGovON1ms80ArzBixujBzCcHPKSVd9OSt6kOUgl.2Wa6PYM2W', '2020-04-27 08:32:00', NULL, '2020-04-26 00:58:26', '2020-04-27 15:32:00'),
(61876657, '61876657', '$2y$10$so7uvVXMlyuvwCI0lQVu3uqDjk3Xz.BUfu8mRCAhhwckcO0nGrLdC', '2020-04-26 16:11:07', NULL, '2020-04-26 20:32:01', '2020-04-26 23:11:07'),
(70327395, '70327395', '$2y$10$/o1SjWUMe56Cr/IfCkmP6ekV4VUoOykbKJk0p6BEvu3h9YvAJkJT2', '2020-05-01 00:23:02', NULL, NULL, '2020-05-01 07:23:02'),
(70742621, '70742621', '$2y$10$16HgzamLqwK6nywMPiOOn.RkDqLiBJTbyN60iMstocIQepoK.tZTC', '2020-04-26 18:05:20', NULL, '2020-04-26 01:33:41', '2020-04-27 01:05:20'),
(70743435, '70743435', '$2y$10$fD7.kbVIIpUFGL.bjxLH/OewrZ/.kV6MBkxSv0E/WVc2hAPQn0BPq', '2020-05-01 00:25:14', NULL, '2020-04-26 00:41:15', '2020-05-01 07:25:14'),
(71146067, '71146067', '$2y$10$owt8lTZnBhzVC14gt4QFLuR8E6ufFi6yDOFGK7H3pOymGNMdIrd2a', NULL, NULL, '2020-04-26 20:34:09', '2020-04-26 20:34:09'),
(71175886, '71175886', '$2y$10$MzHvpToOv2YPVmvnF960aeD0X1SAH6Y4GOBOBOBdHrfimnk6L0XYG', NULL, NULL, '2020-04-26 01:04:44', '2020-04-26 01:04:44'),
(72052749, '72052749', '$2y$10$6WqSqUXQC2pIk/32W50QXe5WEWeKgSpV3g2OQHb1VveTeXSjZoVYK', '2020-05-01 00:29:29', NULL, '2020-04-26 23:21:44', '2020-05-01 07:29:29'),
(72395197, '72395197', '$2y$10$.kfLkpxd39ARw3oAERO95ey7slQfO.c/6n4LZA90.tjk0xZwSsF1K', '2020-04-29 19:37:47', NULL, '2020-04-25 05:24:40', '2020-04-30 02:37:47'),
(72567685, '72567685', '$2y$10$ZqoZUN0W7crp7Cq.VbD/e.j7Q0u7SVGy1eabMLUC6GxceOdBgdMb6', '2020-05-01 00:24:36', NULL, '2020-04-25 05:13:27', '2020-05-01 07:24:36'),
(72748576, '72748576', '$2y$10$FS9Zih7GVkeHut1aJQbnqO4.MizZDE1Pr1MwEBnlBGMROQplzt/4y', '2020-05-02 16:24:05', NULL, '2020-04-25 05:03:16', '2020-05-02 21:24:05'),
(75200120, '75200120', '$2y$10$lEDXk5MnlYFKRmmJPfWYm.x/ni32QiNz5lILHws1MpuFaNlJ1aT92', '2020-05-02 16:24:38', NULL, NULL, '2020-05-02 21:24:38');

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
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `alum_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `apoderado`
--
ALTER TABLE `apoderado`
  MODIFY `apod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `asig_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `asignatura_docente`
--
ALTER TABLE `asignatura_docente`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `asis_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `curs_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

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
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recurso`
--
ALTER TABLE `recurso`
  MODIFY `rec_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  MODIFY `trab_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75200121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
