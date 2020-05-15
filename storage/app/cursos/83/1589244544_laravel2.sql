-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-05-2020 a las 00:50:52
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
-- Base de datos: `laravel2`
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
(14, '72052749', 'ORTIZ AGUIRRE', 'ALEXA', 0, '2008-07-14', 6, 1, 8, 72052749),
(15, '77959950', 'BARRERA DIAZ', 'GAEL', 1, '2013-01-20', 2, 1, 37, 77959950),
(16, '78468782', 'CASTRO CHACALIAZA', 'THYAGO', 1, '2014-09-21', 1, 1, 16, 78468782),
(17, '78148343', 'RODRÍGUEZ LEONARDO', 'MARÍA CELESTE', 0, '2013-07-14', 1, 1, 17, 78148343),
(18, '76703306', 'CASTRO CHACALIAZA', 'THAYZ', 0, '2012-05-30', 2, 1, 16, 76703306),
(19, '81225823', 'SALAZAR CUBAS', 'BELEN', 0, '2011-05-13', 3, 1, 18, 81225823),
(20, '77109917', 'DEFILIPPI NEYRA', 'IVY', 0, '2011-05-22', 3, 1, 19, 77109917),
(21, '61917834', 'TAMANI LEONARDO', 'MAO', 1, '2009-12-16', 4, 1, 20, 61917834),
(22, '77522755', 'PIMINCHUMO DEXTRE', 'JOAQUÍN', 1, '2012-01-12', 3, 1, 31, 77522755),
(23, '77751151', 'CHIPANA HUALLPA', 'LETIZIA', 0, '2012-06-29', 2, 1, 32, 77751151),
(24, '63160124', 'MERINO GAVILANO', 'MESUT', 1, '2012-02-05', 3, 1, 33, 63160124),
(25, '63304628', 'BERRU GARCÍA', 'FRAND', 1, '2012-05-24', 2, 1, 34, 63304628),
(26, '77622455', 'RODRÍGUEZ GALINDO', 'ANGEL', 1, '2012-04-10', 2, 1, 21, 77622455),
(27, '77308389', 'TARAZONA HEREDIA', 'MARILYN', 0, '2011-09-12', 3, 1, 42, 77308389),
(28, '77307624', 'VINCES GÓMEZ', 'RICGEL', 0, '2011-09-12', 3, 1, 36, 77307624),
(29, '62922064', 'TORRES LÓPEZ', 'JUAN PABLO', 1, '2011-08-18', 3, 1, 35, 62922064),
(30, '70488782', 'AS RANDA FINETTI', 'JULIANA', 0, '2006-07-10', 8, 1, 29, 70488782),
(31, '76277258', 'SALGUERO EGUSQUIZA', 'JOSEPHLYN', 0, '2006-04-28', 9, 1, 41, 76277258),
(32, '60796642', 'JARA GARCÍA', 'ANGELLA', 0, '2006-09-02', 8, 1, 30, 60796642),
(33, '70592790', 'RAIME LEVITA', 'SAMUEL', 1, '2006-11-21', 8, 1, 39, 70592790),
(34, '75876911', 'TEJADA BAZAN', 'CELESTE', 0, '2006-01-26', 9, 1, 40, 75876911),
(35, '72372581', 'MARRUFO LAZO', 'JOSÉ ANDREE', 1, '2005-01-08', 10, 1, 38, 72372581),
(36, '77225584', 'FUNEGRA GONZALES', 'ROBERTO', 1, '2005-10-27', 9, 1, 13, 77225584),
(37, '75032578', 'RODRÍGUEZ GALINDO', 'CARITO', 0, '2010-11-03', 4, 1, 21, 75032578),
(38, '74275103', 'VALVERDE CONTRERAS', 'FÁTIMA', 0, '2010-06-20', 4, 1, 22, 74275103),
(39, '61887368', 'ACHICAHUALA VÁSQUEZ', 'MAYCOL', 1, '2009-09-15', 5, 1, 23, 61887368),
(40, '71169722', 'ALVARADO SALIRROSAS', 'RICARDO MARTÍN', 1, '2008-05-23', 6, 1, 24, 71169722),
(41, '72998023', 'CAMPOS HERRERA', 'SANDRO', 1, '2009-02-01', 5, 1, 25, 72998023),
(42, '74516988', 'CHIPANA ZULOAGA', 'ANDRE MATEO', 1, '2010-07-06', 4, 1, 26, 74516988),
(43, '61997881', 'DÍAZ PINEDA', 'ENRIQUE', 1, '2009-04-22', 5, 1, 27, 61997881),
(44, '74681279', 'ALTAMIRANO RAVINES', 'DYLAN', 1, '2010-09-28', 4, 1, 28, 74681279),
(45, '74107428', 'TARAZONA CHARCAPE', 'GAEL', 1, '2010-03-10', 5, 1, 42, 74107428),
(46, '73108006', 'ARANDA FINETTI', 'NICOLÁS', 1, '2004-07-21', 9, 1, 29, 73108006),
(47, '77738642', 'LEONARDO ORTIZ', 'ZOE', 0, '2012-07-26', 2, 1, 43, 77738642),
(48, '77093796', 'CHIPANA TTITO', 'MAYTE', 0, '2004-12-15', 10, 1, 44, 77093796),
(49, '72738868', 'VILLANUEVA DOMINGUEZ', 'DIEGO', 1, '2004-05-15', 11, 1, 15, 72738868),
(50, '75455178', 'PURCA GERONIMO', 'SEBASTIAN', 1, '2005-01-10', 10, 1, 45, 75455178),
(51, '72903133', 'TORRES PUPPO', 'VALERIA', 0, '2004-07-21', 11, 1, 46, 72903133),
(52, '73010468', 'ARAICO GUERRERO', 'WALTER JUNIOR', 1, '2003-03-08', 11, 1, 47, 73010468),
(53, '71367888', 'SAMAN CASTRO', 'JHOSHIAN', 1, '2008-05-17', 5, 1, 48, 71367888),
(54, '76608869', 'CAM PIZARRO', 'KAMILA', 0, '2004-04-17', 11, 1, 9, 76608869),
(55, '74877020', 'GUERRA FERNANDEZ', 'ROSA', 0, '2003-05-24', 11, 1, 49, 74877020),
(56, '79647016', 'VALLE LEVITA', 'ROANA LISSET', 0, '2006-06-07', 8, 1, 50, 79647016);

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
(84, 48, 14),
(85, 68, 44),
(86, 68, 42),
(87, 68, 37),
(89, 68, 38),
(90, 70, 39),
(91, 70, 41),
(92, 70, 43),
(93, 70, 45),
(94, 71, 40),
(95, 52, 40),
(96, 37, 46),
(97, 37, 36),
(98, 37, 31),
(99, 37, 34),
(100, 38, 35),
(101, 29, 46),
(102, 29, 36),
(103, 29, 31),
(104, 29, 34),
(105, 30, 46),
(106, 30, 36),
(107, 30, 31),
(108, 30, 34),
(109, 31, 35),
(110, 32, 35),
(111, 59, 16),
(113, 59, 17),
(114, 60, 15),
(115, 63, 15),
(116, 67, 25),
(117, 67, 18),
(118, 67, 23),
(119, 67, 26),
(120, 22, 46),
(121, 22, 36),
(122, 22, 31),
(123, 22, 34),
(124, 62, 15),
(125, 58, 16),
(127, 58, 17),
(128, 66, 25),
(129, 66, 18),
(130, 66, 23),
(131, 66, 26),
(132, 57, 16),
(134, 57, 17),
(135, 16, 46),
(136, 16, 36),
(137, 16, 31),
(138, 16, 34),
(139, 61, 15),
(140, 65, 25),
(141, 65, 18),
(142, 65, 23),
(143, 65, 26),
(144, 44, 46),
(145, 44, 36),
(146, 44, 31),
(147, 44, 34),
(148, 6, 46),
(149, 6, 36),
(150, 6, 31),
(151, 6, 34),
(152, 7, 35),
(153, 23, 35),
(154, 17, 35),
(155, 46, 35),
(156, 11, 46),
(157, 11, 36),
(158, 11, 31),
(159, 11, 34),
(160, 12, 35),
(161, 69, 39),
(162, 69, 41),
(163, 69, 43),
(164, 69, 53),
(165, 69, 45),
(166, 72, 44),
(167, 72, 42),
(168, 72, 37),
(169, 72, 38),
(170, 76, 21),
(171, 75, 21),
(172, 74, 21),
(173, 74, 21),
(174, 77, 21),
(175, 40, 52),
(176, 40, 54),
(177, 40, 55),
(178, 40, 51),
(179, 40, 49),
(180, 38, 48),
(181, 38, 50),
(182, 27, 30),
(183, 27, 32),
(184, 27, 33),
(185, 36, 30),
(186, 36, 32),
(187, 36, 33),
(188, 53, 40),
(189, 28, 30),
(190, 28, 32),
(191, 28, 33),
(192, 31, 48),
(193, 31, 50),
(194, 32, 48),
(195, 32, 50),
(196, 33, 52),
(197, 33, 54),
(198, 33, 55),
(199, 33, 51),
(200, 33, 49),
(201, 34, 52),
(202, 34, 54),
(203, 34, 55),
(204, 34, 51),
(205, 34, 49),
(206, 51, 40),
(207, 73, 39),
(208, 73, 41),
(209, 73, 43),
(210, 73, 53),
(211, 73, 45),
(212, 21, 30),
(213, 21, 32),
(214, 21, 33),
(215, 23, 48),
(216, 23, 50),
(217, 24, 52),
(218, 24, 54),
(219, 24, 55),
(220, 24, 51),
(221, 24, 49),
(222, 50, 40),
(223, 17, 48),
(224, 17, 50),
(225, 18, 52),
(226, 18, 54),
(227, 18, 55),
(228, 18, 51),
(229, 18, 49),
(230, 15, 30),
(231, 15, 32),
(232, 15, 33),
(233, 46, 48),
(234, 46, 50),
(235, 49, 40),
(236, 42, 30),
(237, 42, 32),
(238, 42, 33),
(239, 47, 52),
(240, 47, 54),
(241, 47, 55),
(242, 47, 51),
(243, 47, 49),
(244, 5, 30),
(245, 5, 32),
(246, 5, 33),
(247, 54, 40),
(248, 7, 48),
(249, 7, 50),
(250, 8, 52),
(251, 8, 54),
(252, 8, 55),
(253, 8, 51),
(254, 8, 49),
(255, 55, 40),
(256, 10, 30),
(257, 10, 32),
(258, 10, 33),
(259, 12, 48),
(260, 12, 50),
(261, 13, 52),
(262, 13, 54),
(263, 13, 55),
(264, 13, 51),
(265, 13, 49),
(266, 48, 40),
(267, 56, 16),
(269, 56, 17),
(270, 64, 25),
(271, 64, 18),
(272, 64, 23),
(273, 64, 26),
(274, 71, 14),
(275, 78, 16),
(277, 78, 17),
(278, 79, 15),
(279, 79, 25),
(280, 79, 18),
(281, 79, 23),
(282, 79, 26),
(283, 80, 20),
(284, 80, 24),
(285, 80, 22),
(286, 80, 19),
(287, 80, 27),
(288, 80, 29),
(289, 80, 28),
(290, 82, 39),
(291, 82, 41),
(292, 82, 43),
(293, 82, 53),
(294, 82, 45),
(295, 81, 44),
(296, 81, 42),
(297, 81, 37),
(298, 81, 21),
(299, 81, 38),
(300, 83, 15),
(301, 60, 47),
(302, 62, 47),
(303, 61, 47),
(304, 83, 47),
(305, 79, 47),
(306, 87, 20),
(307, 87, 24),
(308, 87, 22),
(309, 87, 19),
(310, 87, 27),
(311, 87, 29),
(312, 87, 28),
(313, 86, 20),
(314, 86, 24),
(315, 86, 22),
(316, 86, 19),
(317, 86, 27),
(318, 86, 29),
(319, 86, 28),
(320, 85, 20),
(321, 85, 24),
(322, 85, 22),
(323, 85, 19),
(324, 85, 27),
(325, 85, 29),
(326, 85, 28),
(327, 91, 39),
(328, 91, 41),
(329, 91, 43),
(330, 91, 53),
(331, 91, 45),
(332, 89, 39),
(333, 89, 41),
(334, 89, 43),
(335, 89, 53),
(336, 89, 45),
(337, 88, 39),
(338, 88, 41),
(339, 88, 43),
(340, 88, 53),
(341, 88, 45),
(342, 90, 39),
(343, 90, 41),
(344, 90, 43),
(345, 90, 53),
(346, 90, 45),
(347, 92, 16),
(348, 92, 17),
(349, 93, 15),
(350, 93, 25),
(351, 93, 18),
(352, 93, 23),
(353, 93, 47),
(354, 93, 26),
(355, 94, 20),
(356, 94, 24),
(357, 94, 22),
(358, 94, 19),
(359, 94, 27),
(360, 94, 29),
(361, 94, 28),
(362, 94, 20),
(363, 94, 24),
(364, 94, 22),
(365, 94, 19),
(366, 94, 27),
(367, 94, 29),
(368, 94, 28),
(369, 95, 44),
(370, 95, 42),
(371, 95, 37),
(372, 95, 21),
(373, 95, 38),
(374, 96, 16),
(375, 96, 17),
(376, 97, 15),
(377, 97, 25),
(378, 97, 18),
(379, 97, 23),
(380, 97, 47),
(381, 97, 26),
(382, 98, 20),
(383, 98, 24),
(384, 98, 22),
(385, 98, 19),
(386, 98, 27),
(387, 98, 29),
(388, 98, 28),
(389, 99, 44),
(390, 99, 42),
(391, 99, 37),
(392, 99, 21),
(393, 99, 38),
(394, 36, 56),
(395, 28, 56),
(396, 21, 56),
(397, 15, 56),
(398, 42, 56),
(399, 10, 56),
(400, 5, 56),
(401, 67, 15),
(402, 67, 47),
(403, 66, 15),
(404, 66, 47),
(405, 65, 15),
(406, 65, 47),
(407, 64, 15),
(408, 64, 47),
(409, 84, 20),
(410, 84, 24),
(411, 84, 22),
(412, 84, 19),
(413, 84, 27),
(414, 84, 29),
(415, 84, 28),
(416, 102, 20),
(417, 102, 24),
(418, 102, 22),
(419, 102, 19),
(420, 102, 27),
(421, 102, 29),
(422, 102, 28),
(423, 72, 21),
(424, 101, 44),
(425, 101, 42),
(426, 101, 37),
(427, 101, 21),
(428, 101, 38),
(429, 100, 44),
(430, 100, 42),
(431, 100, 37),
(432, 100, 21),
(433, 100, 38),
(434, 68, 21);

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
(26, '32305048', 'ZULOAGA TREJO', 'MIRTHA ALBINA', 0, 'mattcars_6710@live.com', '952423267'),
(27, '25565399', 'PINEDA FLORES', 'ELIZABETH JULIA', 0, 'elipinedaflores@hotmail.com', '950936164'),
(28, '44224199', 'ALTAMIRANO CASAS', 'MANUEL ALBERTO', 1, 'Altamirano.mac@gmail.com', '913988403'),
(29, '16655470', 'FINETTI PORTUGAL', 'SARA ROSA', 0, 'sararosa_@hotmail.com', '950193415'),
(30, '25561163', 'JARA RIVASPLATA', 'EDUARDO ANGEL', 1, 'lesliegarcia998@gmail.com', '960192808'),
(31, '41259196', 'DEXTRE AYALA', 'LIZ GIOVANNA', 0, 'Lizgiodextre@gmail.com', '916915002'),
(32, '09855868', 'HUALLPA MAQUERHUA', 'MARIBEL JULIANA', 0, 'maribelhuallpa6@gmail.com', '969400134'),
(33, '47509605', 'GAVILANO BARNADAS', 'ALEXANDRA', 0, 'Alemesut@hotmail.com', '987731044'),
(34, '48362249', 'GARCIA CORDOVA', 'ANGELICA', 0, 'angegarciacordova@gmail.com', '917383953'),
(35, '40541826', 'TORRES GARCIA', 'PABLO', 1, 'pablotg198@gmail.com', '920818898'),
(36, '42466724', 'GOMEZ SEDANO', 'MAYRA MILAGROS', 0, 'mayrin5220@hotmail.com', '927590471'),
(37, '47135946', 'DIAZ ROJAS', 'JOHANNA MILAGROS', 0, 'thigaeli03@gmail.com', '917519354'),
(38, '09648709', 'LAZO ARAGONEZ', 'CECILIA VICTORIA', 0, 'jmarrufo@beagle.com.pe', '992653535'),
(39, '07533281', 'RAIME QUISPE', 'CARLOS', 1, 'alexandraraime@gmail.com', '931078150'),
(40, '09863114', 'BAZAN PEREZ', 'ROSA NORMA', 0, 'tati.182631@gmail.com', '917017008'),
(41, '08732029', 'EGUSQUIZA CRUZ', 'PETRONILA HAYDEE', 0, 'hegusquizac@gmail.com', '960678030'),
(42, '45610798', 'HEREDIA CIEZA', 'LILIAN VANESSA', 0, 'marcoivantarazonamartel@gmail.com', '920839980'),
(43, '41107473', 'ORTIZ ROMAINA', 'LOURDES GICELLA', 0, 'Ortizlourdes986@gmail.com', '938720635'),
(44, '10325570', 'TTITO SEGOVIA DE CHIPANA', 'LUCY', 0, 'lucyttitosegovia03@gmail.com', '993468680'),
(45, '09273477', 'PURCA ROJAS', 'WALTER BERNARDO', 1, 'purcarojaswalterbernardo@gmail.com', '951315788'),
(46, '40757168', 'PUPPO OCHOA', 'ELIZABETH DENIS', 0, 'elizabethpuppo@gmail.com', '943907307'),
(47, '09644601', 'GUERRERO GUZMAN', 'MAGALY MIRTHA', 0, 'magi1727@hotmail.com', '997178787'),
(48, '09851693', 'SAMAN FLORES', 'JOSE LUIS', 1, 'Joseuis0985163@gmail.com', '941549948'),
(49, '10386604', 'FERNANDEZ MESIA', 'MARIA BELMIRA', 0, 'yaoix6067@gmail.com', '912046481'),
(50, '25575567', 'VALLE CONTRERAS', 'CARLOS ENRIQUE', 1, 'carlosenriquevalkecontreras@gmail', '956887104');

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
(23, 15, 4),
(24, 13, 1);

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
(28, 13, 4, 8, 2020, 1),
(29, 13, 4, 9, 2020, 1),
(32, 13, 4, 10, 2020, 1),
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
(52, 13, 4, 6, 2020, 1),
(53, 12, 5, 6, 2020, 1),
(54, 12, 6, 6, 2020, 1),
(55, 9, 7, 6, 2020, 1),
(56, 15, 1, 1, 2020, 1),
(57, 15, 2, 1, 2020, 1),
(58, 15, 3, 1, 2020, 1),
(59, 15, 4, 1, 2020, 1),
(64, 14, 1, 2, 2020, 1),
(65, 14, 2, 2, 2020, 1),
(66, 14, 3, 2, 2020, 1),
(67, 14, 4, 2, 2020, 1),
(68, 13, 1, 4, 2020, 1),
(69, 13, 1, 5, 2020, 1),
(72, 13, 4, 4, 2020, 1),
(73, 13, 4, 5, 2020, 1),
(78, 9, 7, 1, 2020, 1),
(79, 9, 7, 2, 2020, 1),
(80, 9, 7, 3, 2020, 1),
(81, 9, 7, 4, 2020, 1),
(82, 9, 7, 5, 2020, 1),
(84, 14, 1, 3, 2020, 1),
(85, 14, 2, 3, 2020, 1),
(86, 14, 3, 3, 2020, 1),
(87, 14, 4, 3, 2020, 1),
(88, 10, 2, 5, 2020, 1),
(89, 10, 3, 5, 2020, 1),
(90, 12, 6, 5, 2020, 1),
(91, 12, 5, 5, 2020, 1),
(92, 12, 5, 1, 2020, 1),
(93, 12, 5, 2, 2020, 1),
(95, 12, 5, 4, 2020, 1),
(96, 12, 6, 1, 2020, 1),
(97, 12, 6, 2, 2020, 1),
(98, 12, 6, 3, 2020, 1),
(99, 12, 6, 4, 2020, 1),
(100, 10, 2, 4, 2020, 1),
(101, 10, 3, 4, 2020, 1),
(102, 12, 5, 3, 2020, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `año`, `idalumno`, `montoanual`, `descuento`, `inicial`, `marzo`, `abril`, `mayo`, `junio`, `julio`, `agosto`, `setiembre`, `octubre`, `noviembre`, `diciembre`) VALUES
(1, 2020, 39, '4900.00', '1600.00', '2000.00', '-130.00', '-130.00', '-130.00', '-130.00', '-130.00', '-130.00', '-130.00', '-130.00', '-130.00', '-130.00'),
(2, 2020, 44, '4900.00', '1750.00', '2000.00', '-115.00', '-115.00', '-115.00', '-115.00', '-115.00', '-115.00', '-115.00', '-115.00', '-115.00', '-115.00'),
(3, 2020, 40, '4900.00', '1900.00', '0.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00'),
(4, 2020, 46, '4900.00', '1500.00', '0.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00'),
(5, 2020, 30, '4900.00', '1500.00', '0.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00'),
(6, 2020, 8, '4900.00', '1500.00', '2000.00', '-140.00', '-140.00', '-140.00', '-140.00', '-140.00', '-140.00', '-140.00', '-140.00', '-140.00', '-140.00'),
(7, 2020, 15, '4900.00', '1700.00', '700.00', '-250.00', '-250.00', '-250.00', '-250.00', '-250.00', '-250.00', '-250.00', '-250.00', '-250.00', '-250.00'),
(9, 2020, 7, '4900.00', '1700.00', '0.00', '-320.00', '-320.00', '-320.00', '-320.00', '-320.00', '-320.00', '-320.00', '-320.00', '-320.00', '-320.00'),
(10, 2020, 41, '4900.00', '1500.00', '400.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00'),
(11, 2020, 16, '4900.00', '1500.00', '0.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00'),
(12, 2020, 18, '4900.00', '1500.00', '0.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00'),
(13, 2020, 23, '4900.00', '1500.00', '1880.00', '-152.00', '-152.00', '-152.00', '-152.00', '-152.00', '-152.00', '-152.00', '-152.00', '-152.00', '-152.00'),
(14, 2020, 52, '4900.00', '1700.00', '0.00', '-320.00', '-320.00', '-320.00', '-320.00', '-320.00', '-320.00', '-320.00', '-320.00', '-320.00', '-320.00'),
(15, 2020, 54, '4900.00', '1700.00', '0.00', '-320.00', '-320.00', '-320.00', '-320.00', '-320.00', '-320.00', '-320.00', '-320.00', '-320.00', '-320.00'),
(16, 2020, 48, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(17, 2020, 20, '4900.00', '1500.00', '1400.00', '-200.00', '-200.00', '-200.00', '-200.00', '-200.00', '-200.00', '-200.00', '-200.00', '-200.00', '-200.00'),
(18, 2020, 36, '4900.00', '1900.00', '0.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00'),
(19, 2020, 11, '4900.00', '1900.00', '0.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00', '-300.00'),
(20, 2020, 47, '4900.00', '1500.00', '0.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00'),
(21, 2020, 14, '4900.00', '1500.00', '300.00', '-310.00', '-310.00', '-310.00', '-310.00', '-310.00', '-310.00', '-310.00', '-310.00', '-310.00', '-310.00'),
(22, 2020, 26, '4900.00', '2900.00', '0.00', '-200.00', '-200.00', '-200.00', '-200.00', '-200.00', '-200.00', '-200.00', '-200.00', '-200.00', '-200.00'),
(23, 2020, 37, '4900.00', '2900.00', '0.00', '-200.00', '-200.00', '-200.00', '-200.00', '-200.00', '-200.00', '-200.00', '-200.00', '-200.00', '-200.00'),
(24, 2020, 17, '4900.00', '1500.00', '0.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00'),
(25, 2020, 34, '4900.00', '1500.00', '2000.00', '-140.00', '-140.00', '-140.00', '-140.00', '-140.00', '-140.00', '-140.00', '-140.00', '-140.00', '-140.00'),
(26, 2020, 29, '4910.00', '2400.00', '0.00', '-251.00', '-251.00', '-251.00', '-251.00', '-251.00', '-251.00', '-251.00', '-251.00', '-251.00', '-251.00'),
(27, 2020, 51, '4900.00', '1500.00', '0.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00', '-340.00'),
(28, 2020, 38, '4900.00', '1500.00', '900.00', '-250.00', '-250.00', '-250.00', '-250.00', '-250.00', '-250.00', '-250.00', '-250.00', '-250.00', '-250.00'),
(29, 2020, 10, '4910.00', '1500.00', '750.00', '-266.00', '-266.00', '-266.00', '-266.00', '-266.00', '-266.00', '-266.00', '-266.00', '-266.00', '-266.00'),
(30, 2020, 49, '4910.00', '1500.00', '750.00', '-266.00', '-266.00', '-266.00', '-266.00', '-266.00', '-266.00', '-266.00', '-266.00', '-266.00', '-266.00'),
(31, 2020, 28, '4900.00', '1500.00', '2000.00', '-140.00', '-140.00', '-140.00', '-140.00', '-140.00', '-140.00', '-140.00', '-140.00', '-140.00', '-140.00');

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
-- Estructura de tabla para la tabla `recvideo`
--

CREATE TABLE `recvideo` (
  `vid_id` int(11) NOT NULL,
  `vid_curso` int(11) NOT NULL,
  `vid_titulo` varchar(100) NOT NULL,
  `vid_link` text NOT NULL,
  `vid_usuario` int(11) NOT NULL,
  `vid_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(29, 72052749, 4, NULL, NULL),
(30, 77959950, 4, NULL, NULL),
(31, 78468782, 4, NULL, NULL),
(32, 78148343, 4, NULL, NULL),
(33, 76703306, 4, NULL, NULL),
(34, 81225823, 4, NULL, NULL),
(35, 77109917, 4, NULL, NULL),
(36, 61917834, 4, NULL, NULL),
(37, 77522755, 4, NULL, NULL),
(38, 77751151, 4, NULL, NULL),
(39, 63160124, 4, NULL, NULL),
(40, 63304628, 4, NULL, NULL),
(41, 77622455, 4, NULL, NULL),
(42, 77308389, 4, NULL, NULL),
(43, 77307624, 4, NULL, NULL),
(44, 62922064, 4, NULL, NULL),
(45, 70488782, 4, NULL, NULL),
(46, 76277258, 4, NULL, NULL),
(47, 60796642, 4, NULL, NULL),
(48, 70592790, 4, NULL, NULL),
(49, 75876911, 4, NULL, NULL),
(50, 72372581, 4, NULL, NULL),
(51, 77225584, 4, NULL, NULL),
(52, 75032578, 4, NULL, NULL),
(53, 74275103, 4, NULL, NULL),
(54, 61887368, 4, NULL, NULL),
(55, 71169722, 4, NULL, NULL),
(56, 72998023, 4, NULL, NULL),
(57, 74516988, 4, NULL, NULL),
(58, 61997881, 4, NULL, NULL),
(59, 74681279, 4, NULL, NULL),
(60, 74107428, 4, NULL, NULL),
(61, 73108006, 4, NULL, NULL),
(62, 77738642, 4, NULL, NULL),
(63, 77093796, 4, NULL, NULL),
(64, 72738868, 4, NULL, NULL),
(65, 75455178, 4, NULL, NULL),
(66, 72903133, 4, NULL, NULL),
(67, 73010468, 4, NULL, NULL),
(68, 71367888, 4, NULL, NULL),
(69, 76608869, 4, NULL, NULL),
(70, 74877020, 4, NULL, NULL),
(71, 9082655, 1, NULL, NULL),
(72, 79647016, 4, NULL, NULL),
(73, 9038787, 1, NULL, NULL);

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
(15, '001878692', 'LESTON RICO', 'ALICIA', 0, '1969-01-13', 'alicialeston12@gmail.com', '992527353', 1, 1878692),
(16, '09082655', 'MENDOZA MEJIA', 'FLORENCIO JAIRO', 1, '1960-07-16', 'fjmm2003@hotmail.com', '942027023', 1, 9082655),
(17, '09038787', 'CASTRO BACA', 'ARMANDO CONSTANTINO', 1, '1942-04-27', 'atino27@gmail.com', '986152090', 1, 9038787);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwrd` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `usuario`, `password`, `pwrd`, `last_login`, `remember_token`, `created_at`, `updated_at`) VALUES
(1878692, '001878692', '$2y$10$/C.OKf7nFcke8SiH0gLdZOJwvOKIXSzjrE5BFixARssbASvbwr1uW', NULL, '2020-05-06 11:30:50', NULL, '2020-04-26 03:38:17', '2020-05-06 18:30:50'),
(9038787, '09038787', '$2y$10$pYK8pzgPsKGNFvU/O.3OO.BfZdL992BplPMI18TlZdNe5N58GHWkS', NULL, NULL, NULL, '2020-05-08 21:40:15', '2020-05-08 21:40:15'),
(9082655, '09082655', '$2y$10$355ddjwktZfokKgxPfxpmuODUXAgpZCthSYAYxTocK36tMpb46ajS', NULL, '2020-05-06 01:33:40', NULL, '2020-05-06 08:33:29', '2020-05-06 08:33:40'),
(25501709, '25501709', '$2y$10$ZkvVHuzMO62mUbcoodDntOLgbKcO5MYl08wo725HWzTMQ2HP14wpG', NULL, '2020-05-09 23:25:09', NULL, '2020-04-25 05:14:58', '2020-05-10 04:25:09'),
(25565399, '25565399', '$2y$10$7dfZfFwwARYmIKPwM8e2MOz77s2RfVnlnrHq1PSt4yxADe9V6D9kW', NULL, '2020-05-06 16:57:42', NULL, '2020-04-25 05:26:17', '2020-05-06 23:57:42'),
(25705360, '25705360', '$2y$10$1QlAzp5Ssh36vkEZ99IsVu6WObgm4oICVj/RbNG0LG6an.ii4Vmj.', NULL, '2020-05-04 21:08:36', NULL, '2020-04-25 05:08:32', '2020-05-05 04:08:36'),
(46843503, '46843503', '$2y$10$c/RCgDIiVYTZsx1DFGmNZukEhpPYQP5M7IhMWEOdP0ajArWVeJJs.', NULL, '2020-05-11 07:07:54', NULL, '2020-04-25 04:52:16', '2020-05-11 14:07:54'),
(60796642, '60796642', '$2y$10$3oZsLnT.Oq9UTCpSE0OLLOuziH5d195RjsvMFxznkplfMoPd24T.u', NULL, '2020-05-07 20:01:16', NULL, '2020-05-03 16:59:50', '2020-05-08 03:01:16'),
(61184063, '61184063', '$2y$10$aKNtLYKmkZl/scwTI.0sjOvcTlPQFVUn8Y4GoLLC4caf5FdONb7iu', NULL, '2020-05-09 23:25:56', NULL, '2020-04-26 01:28:55', '2020-05-10 04:25:56'),
(61213486, '61213486', '$2y$10$JxLFWGovON1ms80ArzBixujBzCcHPKSVd9OSt6kOUgl.2Wa6PYM2W', NULL, '2020-04-27 08:32:00', NULL, '2020-04-26 00:58:26', '2020-04-27 15:32:00'),
(61876657, '61876657', '$2y$10$so7uvVXMlyuvwCI0lQVu3uqDjk3Xz.BUfu8mRCAhhwckcO0nGrLdC', NULL, '2020-04-26 16:11:07', NULL, '2020-04-26 20:32:01', '2020-04-26 23:11:07'),
(61887368, '61887368', '$2y$10$OdJUGmSYt8od3XiH7elkR.MYbUbADflQi8ipLp2w8DmWAbGW6sQJG', NULL, '2020-05-09 16:44:38', NULL, '2020-05-04 23:56:10', '2020-05-09 23:44:38'),
(61917834, '61917834', '$2y$10$TgsAmelIzrauvlWtSw/tR.kzvuw1YjDLxo.byW9lVHBMaBzrPLtDm', NULL, '2020-05-10 02:23:50', NULL, '2020-05-03 01:29:18', '2020-05-10 09:23:50'),
(61997881, '61997881', '$2y$10$4hL5w6rm0h5mmPt0RFBD5.W5dIWJfgJs/xR0efC8YXDOWazX77U5G', NULL, NULL, NULL, '2020-05-05 00:04:48', '2020-05-05 00:04:48'),
(62922064, '62922064', '$2y$10$iSbIs9NF04US5qDH1pkn7e5uOXQwuF4p8pbGDwNJuKpfVcH.ngAKe', NULL, NULL, NULL, '2020-05-03 16:23:21', '2020-05-03 16:23:21'),
(63160124, '63160124', '$2y$10$8dXYv63Gizzk0Rv4lKGNHO1jre0lrZY748iJVhwA..3./P3ptyxT6', NULL, '2020-05-06 12:16:18', NULL, '2020-05-03 01:39:34', '2020-05-06 19:16:18'),
(63304628, '63304628', '$2y$10$bR1BTGVVJ1oV1h2MBuSDRuF0mP9kIhA77JRfiQWSJP9wwsorHKvNC', NULL, NULL, NULL, '2020-05-03 16:08:19', '2020-05-03 16:08:19'),
(70327395, '70327395', '$2y$10$toFMBIewXVB9bM3r/rCtc./dE0AZy5aARIARjs/g07nGwcTsCApza', NULL, '2020-05-11 17:43:19', NULL, NULL, '2020-05-12 00:43:19'),
(70488782, '70488782', '$2y$10$R6r0xa3V8UpfUHB8mWNV2eH7S9bn0IDh5iA.mHXFF1r1E6QiMHxJi', NULL, NULL, NULL, '2020-05-03 16:24:41', '2020-05-03 16:24:41'),
(70592790, '70592790', '$2y$10$C/kEVHm524JwbkliGRixAuAhEWlYRFhL99BjqcUOFdPryhiG/R/n2', NULL, NULL, NULL, '2020-05-03 17:01:13', '2020-05-03 17:01:13'),
(70742621, '70742621', '$2y$10$16HgzamLqwK6nywMPiOOn.RkDqLiBJTbyN60iMstocIQepoK.tZTC', NULL, '2020-05-02 21:16:20', NULL, '2020-04-26 01:33:41', '2020-05-03 04:16:20'),
(70743435, '70743435', '$2y$10$fD7.kbVIIpUFGL.bjxLH/OewrZ/.kV6MBkxSv0E/WVc2hAPQn0BPq', NULL, '2020-05-01 00:25:14', NULL, '2020-04-26 00:41:15', '2020-05-01 07:25:14'),
(71146067, '71146067', '$2y$10$owt8lTZnBhzVC14gt4QFLuR8E6ufFi6yDOFGK7H3pOymGNMdIrd2a', NULL, NULL, NULL, '2020-04-26 20:34:09', '2020-04-26 20:34:09'),
(71169722, '71169722', '$2y$10$A0QPgOKtO6nl/D5Czxvn0ON7gzY1gZjReVDRegABF2BUYWZSl3T32', NULL, NULL, NULL, '2020-05-04 23:58:29', '2020-05-04 23:58:29'),
(71175886, '71175886', '$2y$10$MzHvpToOv2YPVmvnF960aeD0X1SAH6Y4GOBOBOBdHrfimnk6L0XYG', NULL, NULL, NULL, '2020-04-26 01:04:44', '2020-04-26 01:04:44'),
(71367888, '71367888', '$2y$10$jZ/HvqvVUzbfhCwW3cTed.Fd3g3/4l8mUVA2DaQLHIdb.xTcvcWgy', NULL, NULL, NULL, '2020-05-05 03:09:13', '2020-05-05 03:09:13'),
(72052749, '72052749', '$2y$10$6WqSqUXQC2pIk/32W50QXe5WEWeKgSpV3g2OQHb1VveTeXSjZoVYK', NULL, '2020-05-01 00:29:29', NULL, '2020-04-26 23:21:44', '2020-05-01 07:29:29'),
(72372581, '72372581', '$2y$10$lj4w.sRZSWWOv1c.Vmjcd.bW6RqPEIGRj74/Havr9KnSCCm5tKYzC', NULL, NULL, NULL, '2020-05-03 17:03:39', '2020-05-03 17:03:39'),
(72395197, '72395197', '$2y$10$.kfLkpxd39ARw3oAERO95ey7slQfO.c/6n4LZA90.tjk0xZwSsF1K', NULL, '2020-05-10 05:52:05', NULL, '2020-04-25 05:24:40', '2020-05-10 12:52:05'),
(72567685, '72567685', '$2y$10$ZqoZUN0W7crp7Cq.VbD/e.j7Q0u7SVGy1eabMLUC6GxceOdBgdMb6', NULL, '2020-05-07 16:14:31', NULL, '2020-04-25 05:13:27', '2020-05-07 23:14:31'),
(72738868, '72738868', '$2y$10$fST3.P9j5KWRMcNQBcBRruefZoA.5d1Rs6F469vN/KIHal/z0X8Lq', NULL, NULL, NULL, '2020-05-05 02:53:43', '2020-05-05 02:53:43'),
(72748576, '72748576', '$2y$10$FS9Zih7GVkeHut1aJQbnqO4.MizZDE1Pr1MwEBnlBGMROQplzt/4y', NULL, '2020-05-06 08:33:44', NULL, '2020-04-25 05:03:16', '2020-05-06 15:33:44'),
(72903133, '72903133', '$2y$10$oo/Pofh9U6mVtdW.TSDTROIaqDsdlXeH2xSsoK72nNlUtmFTCeIwu', NULL, NULL, NULL, '2020-05-05 02:56:42', '2020-05-05 02:56:42'),
(72998023, '72998023', '$2y$10$CqnS.6AQjSTP4RpxzSZueeSOoVdnYOzrpQqU620/4kCCpdc.RggvG', NULL, NULL, NULL, '2020-05-05 00:01:25', '2020-05-05 00:01:25'),
(73010468, '73010468', '$2y$10$R5V71ior4AI9Pnvz.0wPc.kzfofOUhvfgbdfeqWvPTG5/1fYbs5W6', NULL, NULL, NULL, '2020-05-05 03:03:33', '2020-05-05 03:03:33'),
(73108006, '73108006', '$2y$10$Y5h0KhpHjjyc5UF00sITJ.eOa01xqcSp8I9cSP7v6aL.E8inPCWaW', NULL, NULL, NULL, '2020-05-05 01:20:22', '2020-05-05 01:20:22'),
(74107428, '74107428', '$2y$10$4P2RiBIOfY8HA5K6zZu1r.PIJidr6YCxUHrXZHwHTitAn7AU2uxwe', NULL, '2020-05-06 13:01:48', NULL, '2020-05-05 00:07:58', '2020-05-06 20:01:48'),
(74275103, '74275103', '$2y$10$jVRLVL7mVh.xOftKim56SO4bInEzLqPKKHl8lox9lm6Xd7NRGz46S', NULL, '2020-05-06 12:32:21', NULL, '2020-05-04 23:54:55', '2020-05-06 19:32:21'),
(74516988, '74516988', '$2y$10$qMyJD68DXz6Wakae6PbyL.qTdIqqhA4ZKfL9wQNvRpaXbX2dvIj9K', NULL, '2020-05-06 20:03:55', NULL, '2020-05-05 00:02:45', '2020-05-07 03:03:55'),
(74681279, '74681279', '$2y$10$dct99wdCeLVM0bf1q8CrN.auy73LTKEMq4NmBYqz4tpl8tI8.85mm', NULL, '2020-05-10 11:46:28', NULL, '2020-05-05 00:06:09', '2020-05-10 18:46:28'),
(74877020, '74877020', '$2y$10$XKlNrO4KuTEkGHqZYxHOuetsRau3dsOU53CfpxwbMh8aqiNI0HyqC', NULL, NULL, NULL, '2020-05-05 15:31:13', '2020-05-05 15:31:13'),
(75032578, '75032578', '$2y$10$2tttlIQE/38iHY3ApOEHm.c9vi3CPG7yaqyfAMlqtMngjAEpXDxm.', NULL, NULL, NULL, '2020-05-04 23:53:09', '2020-05-04 23:53:09'),
(75200120, '75200120', '$2y$10$lEDXk5MnlYFKRmmJPfWYm.x/ni32QiNz5lILHws1MpuFaNlJ1aT92', NULL, '2020-05-11 17:41:21', NULL, NULL, '2020-05-12 00:41:21'),
(75455178, '75455178', '$2y$10$9nF/ROqzH5WP8pZAI8KBzuE17m/16yWZYrQmDCN0n/83hX1lUv/HW', NULL, NULL, NULL, '2020-05-05 02:55:18', '2020-05-05 02:55:18'),
(75876911, '75876911', '$2y$10$JLBtuHonUBWeyV5pVDTVYOyevCn6Ml9U2cutVYHL4loA7m33O.8Qy', NULL, NULL, NULL, '2020-05-03 17:02:26', '2020-05-03 17:02:26'),
(76277258, '76277258', '$2y$10$WGsUOKCwLpT1nRwrGyzJmemv670v2X3eTF1BJWE60z20o5C2ep0bq', NULL, NULL, NULL, '2020-05-03 16:58:49', '2020-05-03 16:58:49'),
(76608869, '76608869', '$2y$10$ZVgJ8L5d40AL1ZlSBvtnHOkNetqiDPzYTOd2PvMS1zPL8ZHoqbKJe', NULL, NULL, NULL, '2020-05-05 03:26:39', '2020-05-05 03:26:39'),
(76703306, '76703306', '$2y$10$0HK0U72Ja/MA4CiBtgeIZ.xGjfiA4NzmugALysTMGrTCk6cA4T4Qm', NULL, NULL, NULL, '2020-05-03 01:23:03', '2020-05-03 01:23:03'),
(77093796, '77093796', '$2y$10$JP6eD5NB0sbAOtVq7VGU0uVS8u6nr9ifaGNyP15ichqUPI6K15Z6W', NULL, NULL, NULL, '2020-05-05 02:52:07', '2020-05-05 02:52:07'),
(77109917, '77109917', '$2y$10$HJ.Rs05rGhAn9Irl6rlAqe6sD9D.DJTZfbBwqIBd1YfimcepJDbpG', NULL, NULL, NULL, '2020-05-03 01:26:29', '2020-05-03 01:26:29'),
(77225584, '77225584', '$2y$10$Z/p6RcUwj5Aqzh68gPy.I..HUPeaprGxTuunmzybSoIkdlg9En0.m', NULL, NULL, NULL, '2020-05-03 17:04:37', '2020-05-03 17:04:37'),
(77307624, '77307624', '$2y$10$Ug9gCPldouXwBcXoED704.Lh7.NvKKynK9i8FAEaQK0.lYBudVzIC', NULL, NULL, NULL, '2020-05-03 16:19:42', '2020-05-03 16:19:42'),
(77308389, '77308389', '$2y$10$Uu6O96I3FUw7KJS7loy0MenSluBYxw0.0R0eXBvTCb9I0DN73NJnS', NULL, NULL, NULL, '2020-05-03 16:17:59', '2020-05-03 16:17:59'),
(77522755, '77522755', '$2y$10$hEpVIEJb0JVnzzkjbplo..MkM8XHEQZehg.LitjlPzX8IZlJJPs4m', NULL, NULL, NULL, '2020-05-03 01:31:58', '2020-05-03 01:31:58'),
(77622455, '77622455', '$2y$10$8OOYUGwgjW2efw20RErCcetnUL1aYSrCmgVquickhPmhwiGO.BY4u', NULL, NULL, NULL, '2020-05-03 16:09:55', '2020-05-03 16:09:55'),
(77738642, '77738642', '$2y$10$T7mxe7trHCMvsUt2qRmQ.eeqkAO07teKHdmLGhb31e0z7OZOWxE2S', NULL, '2020-05-06 12:10:56', NULL, '2020-05-05 01:27:06', '2020-05-06 19:10:56'),
(77751151, '77751151', '$2y$10$KMlSC4DVW4Y3XkNkxeFbM.sBjhlxuC9CWsKl6sZOqE7LkUEttG7wK', NULL, NULL, NULL, '2020-05-03 01:37:13', '2020-05-03 01:37:13'),
(77959950, '77959950', '$2y$10$VOvb9NTalfjjPnPZwkvY1urbp5pzbiYOZY4sTFpQh0E2U/4kGY8.C', NULL, NULL, NULL, '2020-05-03 01:13:51', '2020-05-03 01:13:51'),
(78148343, '78148343', '$2y$10$gnEY7MBs4QymPJJIdCGQW.imcwF37AuxEv./2adZxaz8PWgZwOR9.', NULL, NULL, NULL, '2020-05-03 01:19:49', '2020-05-03 01:19:49'),
(78468782, '78468782', '$2y$10$J.KWPTVOgBY6c1fQJwUYXuDS65bVnsT1/ecwb/NaKY5iS7RFIg9k.', NULL, NULL, NULL, '2020-05-03 01:18:05', '2020-05-03 01:18:05'),
(79647016, '79647016', '$2y$10$Z6wALAoL65z/gNiMN3C.PuyHiz64ZUh5f6g7sVFWeQMybZVkI1aGu', NULL, NULL, NULL, '2020-05-06 18:53:52', '2020-05-06 18:53:52'),
(81225823, '81225823', '$2y$10$LrzYdP2LEzJWOiMIDVHnnuvKbO9vVegwEJC/gwI/rjhSdRgFcRwhO', NULL, NULL, NULL, '2020-05-03 01:24:13', '2020-05-03 01:24:13');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `video`
--

INSERT INTO `video` (`id`, `titulo`, `link`, `idalumno`, `idsecre`, `fecha`) VALUES
(1, 'FELIZ DIA MAMITA ALARQUINA NIVEL IV', 'https://www.youtube.com/embed/6euFtweR_I8', 61887368, 72395197, '2020-05-10 15:57:18'),
(2, 'FELIZ DIA MAMITA ALARQUINA NIVEL IV', 'https://www.youtube.com/embed/6euFtweR_I8', 74275103, 72395197, '2020-05-10 15:57:39'),
(3, 'FELIZ DIA MAMITA ALARQUINA NIVEL IV', 'https://www.youtube.com/embed/6euFtweR_I8', 74107428, 72395197, '2020-05-10 15:57:44'),
(4, 'FELIZ DIA MAMITA ALARQUINA NIVEL IV', 'https://www.youtube.com/embed/6euFtweR_I8', 72998023, 72395197, '2020-05-10 15:58:16'),
(5, 'FELIZ DIA MAMITA ALARQUINA NIVEL IV', 'https://www.youtube.com/embed/6euFtweR_I8', 75032578, 72395197, '2020-05-10 15:58:18'),
(6, 'FELIZ DIA MAMITA ALARQUINA NIVEL IV', 'https://www.youtube.com/embed/6euFtweR_I8', 74681279, 72395197, '2020-05-10 15:58:21'),
(7, 'FELIZ DIA MAMITA ALARQUINA NIVEL IV', 'https://www.youtube.com/embed/6euFtweR_I8', 71367888, 72395197, '2020-05-10 15:58:25'),
(8, 'FELIZ DIA MAMITA ALARQUINA NIVEL IV', 'https://www.youtube.com/embed/6euFtweR_I8', 74516988, 72395197, '2020-05-10 15:58:27'),
(9, 'FELIZ DIA MAMITA ALARQUINA NIVEL IV', 'https://www.youtube.com/embed/6euFtweR_I8', 71169722, 72395197, '2020-05-10 15:58:30'),
(10, 'Feliz día mamá', 'https://www.youtube.com/embed/1uEfuMLeJHs', 60796642, 46843503, '2020-05-11 20:17:44'),
(11, 'Feliz día mamá', 'https://www.youtube.com/embed/1uEfuMLeJHs', 76277258, 46843503, '2020-05-11 20:17:50'),
(12, 'Feliz día mamá', 'https://www.youtube.com/embed/1uEfuMLeJHs', 75876911, 46843503, '2020-05-11 20:17:53'),
(13, 'Feliz día mamá', 'https://www.youtube.com/embed/1uEfuMLeJHs', 70488782, 46843503, '2020-05-11 20:17:56'),
(14, 'Feliz día mamá', 'https://www.youtube.com/embed/1uEfuMLeJHs', 70742621, 46843503, '2020-05-11 20:17:58'),
(15, 'Feliz día mamá', 'https://www.youtube.com/embed/1uEfuMLeJHs', 72372581, 46843503, '2020-05-11 20:18:01'),
(16, 'Feliz día mamá', 'https://www.youtube.com/embed/1uEfuMLeJHs', 79647016, 46843503, '2020-05-11 20:18:03'),
(17, 'Feliz día mamá', 'https://www.youtube.com/embed/1uEfuMLeJHs', 70592790, 46843503, '2020-05-11 20:18:05'),
(18, 'Feliz día mamá', 'https://www.youtube.com/embed/1uEfuMLeJHs', 73108006, 46843503, '2020-05-11 20:18:08');

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
-- Indices de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  ADD PRIMARY KEY (`enc_id`);

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
-- Indices de la tabla `recvideo`
--
ALTER TABLE `recvideo`
  ADD PRIMARY KEY (`vid_id`);

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
-- Indices de la tabla `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `alum_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT de la tabla `apoderado`
--
ALTER TABLE `apoderado`
  MODIFY `apod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `asig_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `asignatura_docente`
--
ALTER TABLE `asignatura_docente`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `asis_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `curs_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  MODIFY `enc_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `recurso`
--
ALTER TABLE `recurso`
  MODIFY `rec_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recvideo`
--
ALTER TABLE `recvideo`
  MODIFY `vid_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  MODIFY `trab_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81225824;

--
-- AUTO_INCREMENT de la tabla `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
