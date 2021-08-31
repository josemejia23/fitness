-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-08-2021 a las 19:29:51
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fitness`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(12, 'Aeróbicos', '2021-07-22 16:55:28'),
(13, 'Abdominales', '2021-07-22 16:55:35'),
(14, 'Fuerza ', '2021-07-22 16:55:43'),
(15, 'Flexibilidad', '2021-07-22 16:55:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `contrasena` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `cedula` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `estatura` float NOT NULL,
  `peso` float NOT NULL,
  `enfermedades` float NOT NULL,
  `sangre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `civil` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `dias_deporte` int(11) NOT NULL,
  `covid` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `dosis` int(11) NOT NULL,
  `cirugias` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `discapacidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`usuario`, `contrasena`, `id`, `nombre`, `apellido`, `cedula`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `estatura`, `peso`, `enfermedades`, `sangre`, `civil`, `dias_deporte`, `covid`, `dosis`, `cirugias`, `discapacidad`) VALUES
('12', '12', 17, 'JOSE', 'MEJIA', 1723849004, 'jose@hotmail.es', '', '', '2021-07-09', 12, 12, 1, '12', '12', 12, 'Sí', 12, 'Sí', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion`
--

CREATE TABLE `cotizacion` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `envio` float NOT NULL,
  `impuesto` float NOT NULL,
  `descuento` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cotizacion`
--

INSERT INTO `cotizacion` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `envio`, `impuesto`, `descuento`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(51, 10001, 13, 63, '[{\"id\":\"94\",\"descripcion\":\"Pigmento traslúcido de 30 mililitros color verde\",\"codigo\":\"ECP TV  30ML\",\"cantidad\":\"1\",\"stock\":\"95\",\"precio\":\"8.03571\",\"total\":\"8.04\"},{\"id\":\"93\",\"descripcion\":\"Pigmento traslúcido de 10 mililitros color verde\",\"codigo\":\"ECP TV  10ML\",\"cantidad\":\"1\",\"stock\":\"99\",\"precio\":\"3.125\",\"total\":\"3.125\"}]', 12, 0.229334, 0.23165, 22.9333, 23.1627, 'Efectivo', '2021-06-07 16:05:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_frontdesk_users`
--

CREATE TABLE `tbl_frontdesk_users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_holidays`
--

CREATE TABLE `tbl_holidays` (
  `id` int(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_holidays`
--

INSERT INTO `tbl_holidays` (`id`, `date`, `reason`, `bdate`) VALUES
(5, '2021-07-28', 'vacaciones', '2021-07-28 14:10:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reservations`
--

CREATE TABLE `tbl_reservations` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `ucount` int(10) NOT NULL,
  `rdate` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `comments` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_reservations`
--

INSERT INTO `tbl_reservations` (`id`, `uid`, `ucount`, `rdate`, `status`, `comments`, `bdate`) VALUES
(621, 114, 0, '2021-08-09 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(622, 114, 0, '2021-08-09 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 6 km\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(623, 114, 0, '2021-08-09 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(624, 114, 0, '2021-08-10 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(625, 114, 0, '2021-08-10 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 15x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 3 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x8\r\n						', ''),
(626, 114, 0, '2021-08-10 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(627, 114, 0, '2021-08-11 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(628, 114, 0, '2021-08-11 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						\r\n						Carrera 1200m (Después de terminar las 6 estaciones)\r\n						', ''),
(629, 114, 0, '2021-08-11 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(630, 114, 0, '2021-08-12 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(631, 114, 0, '2021-08-12 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 1000  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(632, 114, 0, '2021-08-12 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(633, 114, 0, '2021-08-13 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(634, 114, 0, '2021-08-13 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(635, 114, 0, '2021-08-13 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(636, 114, 0, '2021-08-14 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(637, 114, 0, '2021-08-14 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						6X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(638, 114, 0, '2021-08-14 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(639, 115, 0, '2021-08-09 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(640, 115, 0, '2021-08-09 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 5 km\r\n						Flex. codo (04x20/30´´r)\r\n						Abdominales  (4x20/30´´r)\r\n						', ''),
(641, 115, 0, '2021-08-09 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(642, 115, 0, '2021-08-10 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(643, 115, 0, '2021-08-10 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 13x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 2 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x6\r\n						', ''),
(644, 115, 0, '2021-08-10 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(645, 115, 0, '2021-08-11 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(646, 115, 0, '2021-08-11 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						Carrera 800m (Después de terminar las 6 estaciones)\r\n						', ''),
(647, 115, 0, '2021-08-11 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(648, 115, 0, '2021-08-12 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(649, 115, 0, '2021-08-12 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 800  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(650, 115, 0, '2021-08-12 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(651, 115, 0, '2021-08-13 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(652, 115, 0, '2021-08-13 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(653, 115, 0, '2021-08-13 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						14 Ejercicios (Individual)\r\n						', ''),
(654, 115, 0, '2021-08-14 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(655, 115, 0, '2021-08-14 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						4X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(656, 115, 0, '2021-08-14 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(657, 116, 0, '2021-08-09 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(658, 116, 0, '2021-08-09 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 5 km\r\n						Flex. codo (04x20/30´´r)\r\n						Abdominales  (4x20/30´´r)\r\n						', ''),
(659, 116, 0, '2021-08-09 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(660, 116, 0, '2021-08-10 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(661, 116, 0, '2021-08-10 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 13x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 2 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x6\r\n						', ''),
(662, 116, 0, '2021-08-10 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(663, 116, 0, '2021-08-11 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(664, 116, 0, '2021-08-11 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						Carrera 800m (Después de terminar las 6 estaciones)\r\n						', ''),
(665, 116, 0, '2021-08-11 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(666, 116, 0, '2021-08-12 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(667, 116, 0, '2021-08-12 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 800  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(668, 116, 0, '2021-08-12 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(669, 116, 0, '2021-08-13 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(670, 116, 0, '2021-08-13 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(671, 116, 0, '2021-08-13 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						14 Ejercicios (Individual)\r\n						', ''),
(672, 116, 0, '2021-08-14 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(673, 116, 0, '2021-08-14 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						4X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(674, 116, 0, '2021-08-14 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(675, 117, 0, '2021-08-09 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(676, 117, 0, '2021-08-09 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 4 km\r\n						Flex. codo (04x15/30´´r)\r\n						Abdominales  (4x15/30´´r)\r\n						', ''),
(677, 117, 0, '2021-08-09 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(678, 117, 0, '2021-08-10 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(679, 117, 0, '2021-08-10 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 10x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 2 km al 60%\r\n						Burpees (03x8/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x5\r\n						', ''),
(680, 117, 0, '2021-08-10 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(681, 117, 0, '2021-08-11 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(682, 117, 0, '2021-08-11 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						Carrera 600m (Después de terminar las 6 estaciones)\r\n						', ''),
(683, 117, 0, '2021-08-11 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(684, 117, 0, '2021-08-12 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(685, 117, 0, '2021-08-12 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 600  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(686, 117, 0, '2021-08-12 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(687, 117, 0, '2021-08-13 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(688, 117, 0, '2021-08-13 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(689, 117, 0, '2021-08-13 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						14 Ejercicios (Individual)\r\n						', ''),
(690, 117, 0, '2021-08-14 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(691, 117, 0, '2021-08-14 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						3X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(692, 117, 0, '2021-08-14 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(693, 118, 0, '2021-08-09 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(694, 118, 0, '2021-08-09 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 6 km\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(695, 118, 0, '2021-08-09 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(696, 118, 0, '2021-08-10 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(697, 118, 0, '2021-08-10 07:00', 'PENDING', 'Caminata o trote suave\r\n						', ''),
(698, 118, 0, '2021-08-10 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(699, 118, 0, '2021-08-11 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(700, 118, 0, '2021-08-11 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						\r\n						Carrera 1200m (Después de terminar las 6 estaciones)\r\n						', ''),
(701, 118, 0, '2021-08-11 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(702, 118, 0, '2021-08-12 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(703, 118, 0, '2021-08-12 07:00', 'PENDING', 'Caminata o trote suave\r\n						', ''),
(704, 118, 0, '2021-08-12 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(705, 118, 0, '2021-08-13 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(706, 118, 0, '2021-08-13 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(707, 118, 0, '2021-08-13 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(708, 118, 0, '2021-08-14 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(709, 118, 0, '2021-08-14 07:00', 'PENDING', 'Caminata o trote suave\r\n						', ''),
(710, 118, 0, '2021-08-14 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(711, 119, 0, '2021-08-09 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(712, 119, 0, '2021-08-09 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 6 km\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(713, 119, 0, '2021-08-09 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(714, 119, 0, '2021-08-10 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(715, 119, 0, '2021-08-10 07:00', 'PENDING', 'Caminata o trote suave\r\n						', ''),
(716, 119, 0, '2021-08-10 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(717, 119, 0, '2021-08-11 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(718, 119, 0, '2021-08-11 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						\r\n						Carrera 1200m (Después de terminar las 6 estaciones)\r\n						', ''),
(719, 119, 0, '2021-08-11 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(720, 119, 0, '2021-08-12 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(721, 119, 0, '2021-08-12 07:00', 'PENDING', 'Caminata o trote suave\r\n						', ''),
(722, 119, 0, '2021-08-12 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(723, 119, 0, '2021-08-13 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(724, 119, 0, '2021-08-13 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(725, 119, 0, '2021-08-13 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(726, 119, 0, '2021-08-14 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(727, 119, 0, '2021-08-14 07:00', 'PENDING', 'Caminata o trote suave\r\n						', ''),
(728, 119, 0, '2021-08-14 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(729, 120, 0, '2021-08-09 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(730, 120, 0, '2021-08-09 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 5 km\r\n						Flex. codo (04x20/30´´r)\r\n						Abdominales  (4x20/30´´r)\r\n						', ''),
(731, 120, 0, '2021-08-09 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(732, 120, 0, '2021-08-10 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(733, 120, 0, '2021-08-10 07:00', 'PENDING', 'Caminata o trote suave\r\n						', ''),
(734, 120, 0, '2021-08-10 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(735, 120, 0, '2021-08-11 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(736, 120, 0, '2021-08-11 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						Carrera 800m (Después de terminar las 6 estaciones)\r\n						', ''),
(737, 120, 0, '2021-08-11 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(738, 120, 0, '2021-08-12 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(739, 120, 0, '2021-08-12 07:00', 'PENDING', 'Caminata o trote suave\r\n						', ''),
(740, 120, 0, '2021-08-12 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(741, 120, 0, '2021-08-13 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(742, 120, 0, '2021-08-13 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(743, 120, 0, '2021-08-13 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						14 Ejercicios (Individual)\r\n						', ''),
(744, 120, 0, '2021-08-14 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(745, 120, 0, '2021-08-14 07:00', 'PENDING', 'Caminata o trote suave\r\n						', ''),
(746, 120, 0, '2021-08-14 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(747, 121, 0, '2021-08-09 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(748, 121, 0, '2021-08-09 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 4 km\r\n						Flex. codo (04x15/30´´r)\r\n						Abdominales  (4x15/30´´r)\r\n						', ''),
(749, 121, 0, '2021-08-09 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(750, 121, 0, '2021-08-10 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(751, 121, 0, '2021-08-10 07:00', 'PENDING', 'Caminata o trote suave\r\n						', ''),
(752, 121, 0, '2021-08-10 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(753, 121, 0, '2021-08-11 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(754, 121, 0, '2021-08-11 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						Carrera 600m (Después de terminar las 6 estaciones)\r\n						', ''),
(755, 121, 0, '2021-08-11 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(756, 121, 0, '2021-08-12 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(757, 121, 0, '2021-08-12 07:00', 'PENDING', 'Caminata o trote suave\r\n						', ''),
(758, 121, 0, '2021-08-12 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(759, 121, 0, '2021-08-13 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(760, 121, 0, '2021-08-13 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(761, 121, 0, '2021-08-13 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						14 Ejercicios (Individual)\r\n						', ''),
(762, 121, 0, '2021-08-14 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(763, 121, 0, '2021-08-14 07:00', 'PENDING', 'Caminata o trote suave\r\n						', ''),
(764, 121, 0, '2021-08-14 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(765, 122, 0, '2021-08-09 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(766, 122, 0, '2021-08-09 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 6 km\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(767, 122, 0, '2021-08-09 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(768, 122, 0, '2021-08-10 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(769, 122, 0, '2021-08-10 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 15x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 3 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x8\r\n						', ''),
(770, 122, 0, '2021-08-10 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(771, 122, 0, '2021-08-11 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(772, 122, 0, '2021-08-11 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						\r\n						Carrera 1200m (Después de terminar las 6 estaciones)\r\n						', ''),
(773, 122, 0, '2021-08-11 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(774, 122, 0, '2021-08-12 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(775, 122, 0, '2021-08-12 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 1000  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(776, 122, 0, '2021-08-12 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(777, 122, 0, '2021-08-13 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(778, 122, 0, '2021-08-13 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(779, 122, 0, '2021-08-13 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(780, 122, 0, '2021-08-14 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(781, 122, 0, '2021-08-14 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						6X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(782, 122, 0, '2021-08-14 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(783, 123, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(784, 123, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote suave 4 km\r\n						Flex. codo (04x15)\r\n						Abdominales  (4x15)\r\n						', ''),
(785, 123, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(786, 123, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(787, 123, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Caminata 5 km \r\n						Abdominales (4x15)\r\n						Barras 3x4\r\n\r\n						', ''),
(788, 123, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n					\r\n						', ''),
(789, 123, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(790, 123, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 2X(30´´ CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						\r\n						', ''),
(791, 123, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(792, 123, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(793, 123, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote suave 4 km\r\n						Flex. codo (04x25)\r\n						Abdominales  (4x25)\r\n\r\n						', ''),
(794, 123, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(795, 123, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(796, 123, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(797, 123, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(798, 123, 0, '2021-09-05 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(799, 123, 0, '2021-09-05 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Natacion libre\r\n\r\n						', ''),
(800, 123, 0, '2021-09-05 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(801, 124, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(802, 124, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote suave 4 km\r\n						Flex. codo (04x15)\r\n						Abdominales  (4x15)\r\n						Ejercicios respiratorios\r\n\r\n						', ''),
(803, 124, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(804, 124, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(805, 124, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Caminata 5 km \r\n						Abdominales (4x15)\r\n						Barras 3x4\r\n						Ejercicios respiratorios\r\n\r\n\r\n						', ''),
(806, 124, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n					\r\n						', ''),
(807, 124, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(808, 124, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 2X(30´´ CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						Ejercicios respiratorios\r\n\r\n						', ''),
(809, 124, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(810, 124, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(811, 124, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote suave 4 km\r\n						Flex. codo (04x25)\r\n						Abdominales  (4x25)\r\n						Ejercicios respiratorios\r\n\r\n						', ''),
(812, 124, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(813, 124, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(814, 124, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(815, 124, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(816, 124, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(817, 124, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Natacion libre\r\n						Ejercicios respiratorios\r\n						', ''),
(818, 124, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(819, 125, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(820, 125, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote suave 4 km\r\n						Flex. codo (04x15)\r\n						Abdominales  (4x15)\r\n						Ejercicios respiratorios\r\n\r\n						', ''),
(821, 125, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(822, 125, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(823, 125, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Caminata 5 km \r\n						Abdominales (4x15)\r\n						Barras 3x4\r\n						Ejercicios respiratorios\r\n\r\n\r\n						', ''),
(824, 125, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n					\r\n						', ''),
(825, 125, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(826, 125, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 2X(30´´ CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						Ejercicios respiratorios\r\n\r\n						', ''),
(827, 125, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(828, 125, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(829, 125, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote suave 4 km\r\n						Flex. codo (04x25)\r\n						Abdominales  (4x25)\r\n						Ejercicios respiratorios\r\n\r\n						', ''),
(830, 125, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(831, 125, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(832, 125, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(833, 125, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(834, 125, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(835, 125, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Natacion libre\r\n						Ejercicios respiratorios\r\n						', ''),
(836, 125, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(837, 126, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(838, 126, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 6 km\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(839, 126, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(840, 126, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(841, 126, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 15x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 3 km al 60%\r\n\r\n						Abdominales (4x25/45´´r)\r\n\r\n						', ''),
(842, 126, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n					\r\n						', ''),
(843, 126, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(844, 126, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Abdominales\r\n						EST.2 – Calambre chino\r\n						EST.3 – Sentadillas \r\n						EST.4 – Saltos \r\n						Carrera 1200m (Después de terminar las 4 estaciones)\r\n\r\n						', ''),
(845, 126, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(846, 126, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(847, 126, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 1000  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Abdominales  (4x25/30´´r)\r\n\r\n						', ''),
(848, 126, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(849, 126, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(850, 126, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(851, 126, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(852, 126, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(853, 126, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Abdominales\r\n						EST.2 – Calambre chino\r\n						EST.3 – Sentadillas \r\n						EST.4 – Saltos \r\n						Carrera 1200m (Después de terminar las 4 estaciones)\r\n\r\n						', ''),
(854, 126, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(855, 127, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(856, 127, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 6 km\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(857, 127, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(858, 127, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(859, 127, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 15x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 3 km al 60%\r\n\r\n						Abdominales (4x25/45´´r)\r\n\r\n						', ''),
(860, 127, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n					\r\n						', ''),
(861, 127, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(862, 127, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Abdominales\r\n						EST.2 – Calambre chino\r\n						EST.3 – Sentadillas \r\n						EST.4 – Saltos \r\n						Carrera 1200m (Después de terminar las 4 estaciones)\r\n\r\n						', ''),
(863, 127, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(864, 127, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(865, 127, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 1000  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Abdominales  (4x25/30´´r)\r\n\r\n						', ''),
(866, 127, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(867, 127, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(868, 127, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(869, 127, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(870, 127, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(871, 127, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Abdominales\r\n						EST.2 – Calambre chino\r\n						EST.3 – Sentadillas \r\n						EST.4 – Saltos \r\n						Carrera 1200m (Después de terminar las 4 estaciones)\r\n\r\n						', ''),
(872, 127, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(873, 128, 0, '2021-08-09 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(874, 128, 0, '2021-08-09 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 5 km\r\n						Flex. codo (04x20/30´´r)\r\n						Abdominales  (4x20/30´´r)\r\n						', ''),
(875, 128, 0, '2021-08-09 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(876, 128, 0, '2021-08-10 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(877, 128, 0, '2021-08-10 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 13x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 2 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x6\r\n						', ''),
(878, 128, 0, '2021-08-10 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(879, 128, 0, '2021-08-11 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(880, 128, 0, '2021-08-11 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						Carrera 800m (Después de terminar las 6 estaciones)\r\n						', ''),
(881, 128, 0, '2021-08-11 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(882, 128, 0, '2021-08-12 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(883, 128, 0, '2021-08-12 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 800  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(884, 128, 0, '2021-08-12 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(885, 128, 0, '2021-08-13 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(886, 128, 0, '2021-08-13 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(887, 128, 0, '2021-08-13 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						14 Ejercicios (Individual)\r\n						', ''),
(888, 128, 0, '2021-08-14 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(889, 128, 0, '2021-08-14 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						4X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(890, 128, 0, '2021-08-14 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(891, 129, 0, '2021-08-09 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(892, 129, 0, '2021-08-09 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 6 km\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(893, 129, 0, '2021-08-09 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(894, 129, 0, '2021-08-10 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(895, 129, 0, '2021-08-10 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 15x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 3 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x8\r\n						', ''),
(896, 129, 0, '2021-08-10 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(897, 129, 0, '2021-08-11 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(898, 129, 0, '2021-08-11 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						\r\n						Carrera 1200m (Después de terminar las 6 estaciones)\r\n						', ''),
(899, 129, 0, '2021-08-11 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(900, 129, 0, '2021-08-12 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(901, 129, 0, '2021-08-12 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 1000  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(902, 129, 0, '2021-08-12 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(903, 129, 0, '2021-08-13 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(904, 129, 0, '2021-08-13 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(905, 129, 0, '2021-08-13 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(906, 129, 0, '2021-08-14 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(907, 129, 0, '2021-08-14 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						6X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(908, 129, 0, '2021-08-14 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(909, 130, 0, '2021-08-09 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(910, 130, 0, '2021-08-09 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 6 km\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(911, 130, 0, '2021-08-09 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(912, 130, 0, '2021-08-10 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(913, 130, 0, '2021-08-10 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 15x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 3 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x8\r\n						', ''),
(914, 130, 0, '2021-08-10 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(915, 130, 0, '2021-08-11 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(916, 130, 0, '2021-08-11 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						\r\n						Carrera 1200m (Después de terminar las 6 estaciones)\r\n						', ''),
(917, 130, 0, '2021-08-11 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(918, 130, 0, '2021-08-12 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(919, 130, 0, '2021-08-12 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 1000  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(920, 130, 0, '2021-08-12 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(921, 130, 0, '2021-08-13 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(922, 130, 0, '2021-08-13 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(923, 130, 0, '2021-08-13 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(924, 130, 0, '2021-08-14 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', '');
INSERT INTO `tbl_reservations` (`id`, `uid`, `ucount`, `rdate`, `status`, `comments`, `bdate`) VALUES
(925, 130, 0, '2021-08-14 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						6X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(926, 130, 0, '2021-08-14 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(927, 131, 0, '2021-09-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(928, 131, 0, '2021-09-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 5 km\r\n						Flex. codo (04x20/30´´r)\r\n						Abdominales  (4x20/30´´r)\r\n						', ''),
(929, 131, 0, '2021-09-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(930, 131, 0, '2021-09-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(931, 131, 0, '2021-09-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 13x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 2 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x6\r\n						', ''),
(932, 131, 0, '2021-09-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(933, 131, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(934, 131, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						Carrera 800m (Después de terminar las 6 estaciones)\r\n						', ''),
(935, 131, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(936, 131, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(937, 131, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 800  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(938, 131, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(939, 131, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(940, 131, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(941, 131, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						14 Ejercicios (Individual)\r\n						', ''),
(942, 131, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(943, 131, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						4X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(944, 131, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(945, 132, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(946, 132, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 6 km\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(947, 132, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(948, 132, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(949, 132, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 15x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 3 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x8\r\n						', ''),
(950, 132, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(951, 132, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(952, 132, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						\r\n						Carrera 1200m (Después de terminar las 6 estaciones)\r\n						', ''),
(953, 132, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(954, 132, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(955, 132, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 1000  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(956, 132, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(957, 132, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(958, 132, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(959, 132, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(960, 132, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(961, 132, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						6X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(962, 132, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(963, 133, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(964, 133, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 4 km\r\n						Flex. codo (04x15/30´´r)\r\n						Abdominales  (4x15/30´´r)\r\n						', ''),
(965, 133, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(966, 133, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(967, 133, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 10x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 2 km al 60%\r\n						Burpees (03x8/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x5\r\n						', ''),
(968, 133, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(969, 133, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(970, 133, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						Carrera 600m (Después de terminar las 6 estaciones)\r\n						', ''),
(971, 133, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(972, 133, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(973, 133, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 600  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(974, 133, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(975, 133, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(976, 133, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(977, 133, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						14 Ejercicios (Individual)\r\n						', ''),
(978, 133, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(979, 133, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						3X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(980, 133, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(981, 134, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(982, 134, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 5 km\r\n						Flex. codo (04x20/30´´r)\r\n						Abdominales  (4x20/30´´r)\r\n						', ''),
(983, 134, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(984, 134, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(985, 134, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 13x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 2 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x6\r\n						', ''),
(986, 134, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(987, 134, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(988, 134, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						Carrera 800m (Después de terminar las 6 estaciones)\r\n						', ''),
(989, 134, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(990, 134, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(991, 134, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 800  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(992, 134, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(993, 134, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(994, 134, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(995, 134, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						14 Ejercicios (Individual)\r\n						', ''),
(996, 134, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(997, 134, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						4X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(998, 134, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(999, 135, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(1000, 135, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 6 km\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1001, 135, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(1002, 135, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(1003, 135, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 15x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 3 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x8\r\n						', ''),
(1004, 135, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(1005, 135, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1006, 135, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						\r\n						Carrera 1200m (Después de terminar las 6 estaciones)\r\n						', ''),
(1007, 135, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(1008, 135, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1009, 135, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 1000  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1010, 135, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(1011, 135, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1012, 135, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(1013, 135, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(1014, 135, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1015, 135, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						6X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(1016, 135, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(1017, 136, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(1018, 136, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 6 km\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1019, 136, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(1020, 136, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(1021, 136, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 15x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 3 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x8\r\n						', ''),
(1022, 136, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(1023, 136, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1024, 136, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						\r\n						Carrera 1200m (Después de terminar las 6 estaciones)\r\n						', ''),
(1025, 136, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(1026, 136, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1027, 136, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 1000  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1028, 136, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(1029, 136, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1030, 136, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(1031, 136, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(1032, 136, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1033, 136, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						6X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(1034, 136, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(1035, 137, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(1036, 137, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 6 km\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1037, 137, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(1038, 137, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(1039, 137, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 15x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 3 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x8\r\n						', ''),
(1040, 137, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(1041, 137, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1042, 137, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						\r\n						Carrera 1200m (Después de terminar las 6 estaciones)\r\n						', ''),
(1043, 137, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(1044, 137, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1045, 137, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 1000  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1046, 137, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(1047, 137, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1048, 137, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(1049, 137, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(1050, 137, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1051, 137, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						6X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(1052, 137, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(1053, 138, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(1054, 138, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 6 km\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1055, 138, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(1056, 138, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(1057, 138, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 15x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 3 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x8\r\n						', ''),
(1058, 138, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(1059, 138, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1060, 138, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						\r\n						Carrera 1200m (Después de terminar las 6 estaciones)\r\n						', ''),
(1061, 138, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(1062, 138, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1063, 138, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 1000  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1064, 138, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(1065, 138, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1066, 138, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(1067, 138, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(1068, 138, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1069, 138, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						6X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(1070, 138, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(1071, 139, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(1072, 139, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 5 km\r\n						Flex. codo (04x20/30´´r)\r\n						Abdominales  (4x20/30´´r)\r\n						', ''),
(1073, 139, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(1074, 139, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1075, 139, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 13x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 2 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x6\r\n						', ''),
(1076, 139, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(1077, 139, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1078, 139, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						Carrera 800m (Después de terminar las 6 estaciones)\r\n						', ''),
(1079, 139, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(1080, 139, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1081, 139, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 800  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1082, 139, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(1083, 139, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1084, 139, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(1085, 139, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						14 Ejercicios (Individual)\r\n						', ''),
(1086, 139, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1087, 139, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						4X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(1088, 139, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(1089, 140, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(1090, 140, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 5 km\r\n						Flex. codo (04x20/30´´r)\r\n						Abdominales  (4x20/30´´r)\r\n						', ''),
(1091, 140, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(1092, 140, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1093, 140, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 13x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 2 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x6\r\n						', ''),
(1094, 140, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(1095, 140, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1096, 140, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						Carrera 800m (Después de terminar las 6 estaciones)\r\n						', ''),
(1097, 140, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(1098, 140, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1099, 140, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 800  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1100, 140, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(1101, 140, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1102, 140, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(1103, 140, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						14 Ejercicios (Individual)\r\n						', ''),
(1104, 140, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1105, 140, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						4X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(1106, 140, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(1107, 141, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(1108, 141, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 6 km\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1109, 141, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(1110, 141, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(1111, 141, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 15x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 3 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x8\r\n						', ''),
(1112, 141, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(1113, 141, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1114, 141, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						\r\n						Carrera 1200m (Después de terminar las 6 estaciones)\r\n						', ''),
(1115, 141, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(1116, 141, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1117, 141, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 1000  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1118, 141, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(1119, 141, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1120, 141, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(1121, 141, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(1122, 141, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1123, 141, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						6X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(1124, 141, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(1125, 142, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(1126, 142, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 6 km\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1127, 142, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(1128, 142, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(1129, 142, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 15x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 3 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x8\r\n						', ''),
(1130, 142, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(1131, 142, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1132, 142, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						\r\n						Carrera 1200m (Después de terminar las 6 estaciones)\r\n						', ''),
(1133, 142, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(1134, 142, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1135, 142, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 1000  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1136, 142, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(1137, 142, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1138, 142, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(1139, 142, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(1140, 142, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1141, 142, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						6X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(1142, 142, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(1143, 143, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(1144, 143, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 5 km\r\n						Flex. codo (04x20/30´´r)\r\n						Abdominales  (4x20/30´´r)\r\n						', ''),
(1145, 143, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(1146, 143, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1147, 143, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 13x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 2 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x6\r\n						', ''),
(1148, 143, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(1149, 143, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1150, 143, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						Carrera 800m (Después de terminar las 6 estaciones)\r\n						', ''),
(1151, 143, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(1152, 143, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1153, 143, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 800  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1154, 143, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(1155, 143, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1156, 143, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(1157, 143, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						14 Ejercicios (Individual)\r\n						', ''),
(1158, 143, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1159, 143, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						4X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(1160, 143, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(1161, 144, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(1162, 144, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 6 km\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1163, 144, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(1164, 144, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(1165, 144, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 15x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 3 km al 60%\r\n\r\n						Abdominales (4x25/45´´r)\r\n\r\n						', ''),
(1166, 144, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n					\r\n						', ''),
(1167, 144, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1168, 144, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Abdominales\r\n						EST.2 – Calambre chino\r\n						EST.3 – Sentadillas \r\n						EST.4 – Saltos \r\n						Carrera 1200m (Después de terminar las 4 estaciones)\r\n\r\n						', ''),
(1169, 144, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(1170, 144, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1171, 144, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 1000  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Abdominales  (4x25/30´´r)\r\n\r\n						', ''),
(1172, 144, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(1173, 144, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1174, 144, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(1175, 144, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(1176, 144, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1177, 144, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Abdominales\r\n						EST.2 – Calambre chino\r\n						EST.3 – Sentadillas \r\n						EST.4 – Saltos \r\n						Carrera 1200m (Después de terminar las 4 estaciones)\r\n\r\n						', ''),
(1178, 144, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(1179, 145, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(1180, 145, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 5 km\r\n						Flex. codo (04x20/30´´r)\r\n						Abdominales  (4x20/30´´r)\r\n						', ''),
(1181, 145, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(1182, 145, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1183, 145, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 13x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 2 km al 60%\r\n						Burpees (03x10/40`r)\r\n						Abdominales (4x25/45´´r)\r\n						Barras 3x6\r\n						', ''),
(1184, 145, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n						\r\n						', ''),
(1185, 145, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1186, 145, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Flex. Codo Diamante\r\n						EST.2 – Plancha\r\n						EST.3 – Flexión codo (Topando el Hombro)\r\n						EST.4 – Sentadillas \r\n						EST. 5 – Mointain Climber\r\n						EST. 6 - Burpees\r\n						Carrera 800m (Después de terminar las 6 estaciones)\r\n						', ''),
(1187, 145, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(1188, 145, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1189, 145, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 800  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Flex. codo (04x25/30´´r)\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1190, 145, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(1191, 145, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1192, 145, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(1193, 145, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						14 Ejercicios (Individual)\r\n						', ''),
(1194, 145, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1195, 145, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						CIRCUITO CROSSFIT\r\n						TABATA\r\n						4X(8X1´/30´´r)/3´R\r\n						EJER. 1 Burpees\r\n						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)\r\n						EJER. 3 Chase de Rabit\r\n						EJER. 4 Plancha (Moviendo cadera de izq. A der.)\r\n						EJER. 5 Step topando codo contario\r\n						EJER. 6 Mountain Climbers\r\n						EJER. 7 Sentadilla con salto\r\n						EJERC. Salto a la grada\r\n						', ''),
(1196, 145, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(1197, 146, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(1198, 146, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 6 km\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1199, 146, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', '');
INSERT INTO `tbl_reservations` (`id`, `uid`, `ucount`, `rdate`, `status`, `comments`, `bdate`) VALUES
(1200, 146, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(1201, 146, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 15x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 3 km al 60%\r\n\r\n						Abdominales (4x25/45´´r)\r\n\r\n						', ''),
(1202, 146, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n					\r\n						', ''),
(1203, 146, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1204, 146, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Abdominales\r\n						EST.2 – Calambre chino\r\n						EST.3 – Sentadillas \r\n						EST.4 – Saltos \r\n						Carrera 1200m (Después de terminar las 4 estaciones)\r\n\r\n						', ''),
(1205, 146, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(1206, 146, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1207, 146, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 1000  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Abdominales  (4x25/30´´r)\r\n\r\n						', ''),
(1208, 146, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(1209, 146, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1210, 146, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(1211, 146, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(1212, 146, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1213, 146, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Abdominales\r\n						EST.2 – Calambre chino\r\n						EST.3 – Sentadillas \r\n						EST.4 – Saltos \r\n						Carrera 1200m (Después de terminar las 4 estaciones)\r\n\r\n						', ''),
(1214, 146, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(1215, 147, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(1216, 147, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 6 km\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1217, 147, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(1218, 147, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(1219, 147, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 15x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 3 km al 60%\r\n\r\n						Abdominales (4x25/45´´r)\r\n\r\n						', ''),
(1220, 147, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n					\r\n						', ''),
(1221, 147, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1222, 147, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Abdominales\r\n						EST.2 – Calambre chino\r\n						EST.3 – Sentadillas \r\n						EST.4 – Saltos \r\n						Carrera 1200m (Después de terminar las 4 estaciones)\r\n\r\n						', ''),
(1223, 147, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(1224, 147, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1225, 147, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 1000  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Abdominales  (4x25/30´´r)\r\n\r\n						', ''),
(1226, 147, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(1227, 147, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1228, 147, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(1229, 147, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(1230, 147, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1231, 147, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Abdominales\r\n						EST.2 – Calambre chino\r\n						EST.3 – Sentadillas \r\n						EST.4 – Saltos \r\n						Carrera 1200m (Después de terminar las 4 estaciones)\r\n\r\n						', ''),
(1232, 147, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', ''),
(1233, 148, 0, '2021-08-30 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n									Calentamiento activo (Ejercicios dirigidos)\r\n									', ''),
(1234, 148, 0, '2021-08-30 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Trote continuo 6 km\r\n						Abdominales  (4x25/30´´r)\r\n						', ''),
(1235, 148, 0, '2021-08-30 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						\r\n						', ''),
(1236, 148, 0, '2021-08-31 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						\r\n						\r\n						', ''),
(1237, 148, 0, '2021-08-31 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Fartlek 15x (1’ al 85% + 1’ al 85%)\r\n						Trote regenerativo 3 km al 60%\r\n\r\n						Abdominales (4x25/45´´r)\r\n\r\n						', ''),
(1238, 148, 0, '2021-08-31 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						11 Ejercicios (Individual)\r\n					\r\n						', ''),
(1239, 148, 0, '2021-09-01 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1240, 148, 0, '2021-09-01 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Abdominales\r\n						EST.2 – Calambre chino\r\n						EST.3 – Sentadillas \r\n						EST.4 – Saltos \r\n						Carrera 1200m (Después de terminar las 4 estaciones)\r\n\r\n						', ''),
(1241, 148, 0, '2021-09-01 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						12 Ejercicios (Individual)\r\n						', ''),
(1242, 148, 0, '2021-09-02 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1243, 148, 0, '2021-09-02 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						2x(4 x 1000  al 85-90% /1’ r)4´R\r\n						Trote regenerativo 800 m al 60%\r\n						Abdominales  (4x25/30´´r)\r\n\r\n						', ''),
(1244, 148, 0, '2021-09-02 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						13 Ejercicios (Individual\r\n						', ''),
(1245, 148, 0, '2021-09-03 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1246, 148, 0, '2021-09-03 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						DEPORTES\r\n						Ecuavoley\r\n						Fútbol\r\n						Baloncesto\r\n						Gimnasio						\r\n						', ''),
(1247, 148, 0, '2021-09-03 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						10 Ejercicios (Individual)\r\n						', ''),
(1248, 148, 0, '2021-09-04 06:45', 'PENDING', 'CALENTAMIENTO (10’)\r\n						Calentamiento activo (Ejercicios dirigidos)\r\n						', ''),
(1249, 148, 0, '2021-09-04 07:00', 'PENDING', 'PARTE ESPECÍFICA (40’)\r\n						Circuito Fuerza 4X(1´CADA ESTACIÓN)\r\n						EST.1 – Abdominales\r\n						EST.2 – Calambre chino\r\n						EST.3 – Sentadillas \r\n						EST.4 – Saltos \r\n						Carrera 1200m (Después de terminar las 4 estaciones)\r\n\r\n						', ''),
(1250, 148, 0, '2021-09-04 07:30', 'PENDING', 'ESTIRAMIENTO (10’)\r\n						15 Ejercicios (Individual)\r\n						', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `pwd`, `address`, `phone`, `email`, `type`, `status`, `bdate`) VALUES
(87, 'jude', '12345', 'Himamaylan City', '09272777334', 'jude@yahoo.com', 'admin', 'active', '1996-02-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `cedula` int(11) NOT NULL,
  `email` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `estatura` float NOT NULL,
  `peso` float NOT NULL,
  `enfermedades` float NOT NULL,
  `sangre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `civil` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `edad` int(11) NOT NULL,
  `dias_deporte` int(11) NOT NULL,
  `covid` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `dosis` int(11) NOT NULL,
  `cirugias` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `discapacidad` int(11) NOT NULL,
  `padecido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `localDiscapacidad` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `cedula`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `estatura`, `peso`, `enfermedades`, `sangre`, `civil`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`, `edad`, `dias_deporte`, `covid`, `dosis`, `cirugias`, `discapacidad`, `padecido`, `localDiscapacidad`) VALUES
(85, 'jose', 'jose', 1723849004, 'jose@hotmail.es', '', '', '2021-08-05', 160, 96, 2, 'O-', 'soltero', 'jose', '$2a$07$asxx54ahjppf45sd87a5auPCBVOq6AORNOPkYmHXY.pDNBGlGoNkW', 'Administrador', '', 1, '2021-08-30 18:00:53', '2021-08-30 23:00:53', 0, 3, 'Sí', 3, 'Sí', 3, '', ''),
(114, 'Juan', 'Erazo', 1723849004, 'juan@hotmail.com', '', '', '2021-08-06', 160, 55, 2, 'O-', 'soltero', 'juan', '$2a$07$asxx54ahjppf45sd87a5auwRi.z6UsW7kVIpm0CUEuCpmsvT2sG6O', 'Administrador', '', 1, '2021-08-09 10:13:00', '2021-08-09 15:13:00', 0, 3, 'Sí', 1, 'Sí', 0, '', ''),
(115, 'Roberto', 'Espín', 1723849004, 'roberto@hotmail.com', '', '', '2021-08-04', 180, 85, 0, 'O-', 'casado', 'roberto', '$2a$07$asxx54ahjppf45sd87a5auE1d7MxLrOjXpuoSo/vadPpjSOsHR2um', 'Administrador', '', 1, '2021-08-31 07:58:06', '2021-08-31 12:58:06', 0, 3, 'Sí', 0, 'Sí', 0, '', ''),
(117, 'Jaime', 'Aguilera', 1723849004, 'jaime@hotmail.es', '', '', '2021-08-05', 180, 100, 0, 'O-', 'soltero', 'jaime', '$2a$07$asxx54ahjppf45sd87a5au5Pfyd2BZd2CanJlE05sLYsk0uEn34K2', 'Administrador', '', 1, '2021-08-09 10:22:12', '2021-08-09 15:22:12', 0, 3, 'Sí', 3, 'Sí', 0, '', ''),
(118, 'Marcos', 'Perez', 1723849004, 'marcos@hotmail.com', '', '', '2021-08-06', 180, 65, 0, 'O-', 'soltero', 'marcos', '$2a$07$asxx54ahjppf45sd87a5auX4IT54pizeSIwloS4gnka8p4eQ81Xuy', 'Administrador', '', 1, '2021-08-09 10:24:52', '2021-08-09 15:24:52', 0, 3, 'Sí', 3, 'Sí', 0, '', ''),
(120, 'Luis', 'Muñoz', 1723849004, 'luis@hotmail.com', '', '', '2021-07-31', 165, 70, 0, 'O-', 'soltero', 'luis', '$2a$07$asxx54ahjppf45sd87a5auagG2T8.Z.c/GFCukN.EcCmBGPOmjB/.', 'Administrador', '', 1, '2021-08-09 10:27:50', '2021-08-09 15:27:50', 0, 2, 'Sí', 1, 'Sí', 0, '', ''),
(121, 'Diana', 'Cevallos', 1723849004, 'diana@hotmail.com', '', '', '2021-07-29', 165, 82, 0, 'O-', 'soltero', 'diana', '$2a$07$asxx54ahjppf45sd87a5auEguoqX2JePv/2zDeAKXyhud8GFyD/SW', 'Administrador', '', 1, '2021-08-09 10:29:49', '2021-08-09 15:29:49', 0, 2, 'Sí', 0, 'Sí', 0, '', ''),
(122, 'JEFFERSON ANDRES', 'RUEDA ROSALES', 1723849004, 'jeff784@hotmail.com', '', '', '2001-02-28', 165, 65, 0, 'O-', 'soltero', 'jefferson', '$2a$07$asxx54ahjppf45sd87a5auDaefq.lB1KQRVMLAzEkXeeiv4RjlaWS', 'Administrador', '', 1, '2021-08-31 08:11:40', '2021-08-31 13:11:40', 0, 3, 'Sí', 1, 'No', 0, '', ''),
(123, 'DAVID ALEJANDRO', 'MORALES FLORES', 1723849004, 'david45@hotmail.com', '', '', '2003-12-31', 170, 75, 0, 'O-', 'soltero', 'david', '$2a$07$asxx54ahjppf45sd87a5auY00k1u8xuSPBVWyPyNbI1/Yjo0Ydzra', 'Administrador', '', 1, '2021-08-31 08:04:56', '2021-08-31 13:04:56', 0, 3, 'Sí', 0, 'No', 0, '', ''),
(124, 'JEFFERSON STALIN', 'ORTIZ BENITEZ', 1723849004, 'jeff87@hotmail.com', '', '', '1997-02-28', 171, 68, 0, 'O-', 'soltero', 'jefferson1', '$2a$07$asxx54ahjppf45sd87a5auDaefq.lB1KQRVMLAzEkXeeiv4RjlaWS', 'Administrador', '', 1, '2021-08-31 08:12:32', '2021-08-31 13:12:32', 0, 2, 'Sí', 2, 'No', 0, '', ''),
(125, 'PABLO PATRICIO', 'ROMERO CEDEÑO', 1723849004, 'pabloR@gmail.com', '', '', '1999-07-31', 178, 70, 0, 'O-', 'soltero', 'pablo', '$2a$07$asxx54ahjppf45sd87a5auI89owGrS7usVcyl/sik60F2C6XWteDO', 'Administrador', '', 1, '2021-08-31 08:20:31', '2021-08-31 13:20:31', 0, 5, 'Sí', 5, 'No', 0, '', ''),
(126, 'EDWIN RAMIRO', 'SANCHEZ GUEVARA', 2147483647, 'edwinr@hotmail.com', '', '', '1999-06-30', 180, 78, 0, 'O-', 'soltero', 'edwin', '$2a$07$asxx54ahjppf45sd87a5aukRtIA0W3ctMh.G.eioU54T/S7CfgYYm', 'Administrador', '', 1, '2021-08-31 08:29:02', '2021-08-31 13:29:02', 0, 0, 'Sí', 1, 'Sí', 23, '', ''),
(127, 'CARLOS EDUARDO', 'TRUJILLO CADENA', 1723849123, 'carlosE@gmail.com', '', '', '1999-07-01', 190, 85, 0, 'O-', 'soltero', 'carlos', '$2a$07$asxx54ahjppf45sd87a5auXaW5n/KLY/bEvEkjrWiw6hTlwjyTGja', 'Administrador', '', 1, '2021-08-31 08:31:27', '2021-08-31 13:31:27', 0, 6, 'Sí', 6, 'Sí', 98, '', ''),
(128, 'CARLOS ALFREDO', 'TAPIA PEREZ', 2147483647, 'carlosT@hotmail.com', '', '', '1998-06-30', 158, 70, 0, 'O-', 'soltero', 'carlos1', '$2a$07$asxx54ahjppf45sd87a5au.KIq8mga1WEmEW/T7PaKuGBEgwLso7i', 'Administrador', '', 1, '2021-08-31 08:34:12', '2021-08-31 13:34:12', 0, 6, 'Sí', 0, 'Sí', 0, '', ''),
(129, 'OSCAR DANILO', 'PAREDES LEIVA', 1723849435, 'oscar@hotmail.com', '', '', '2021-08-18', 178, 69, 0, 'O-', 'soltero', 'oscar', '$2a$07$asxx54ahjppf45sd87a5au/bu4Ick41GRhbhIEPg0Nvajd22gNWwy', 'Administrador', '', 1, '0000-00-00 00:00:00', '2021-08-31 13:35:30', 0, 7, 'Sí', 7, 'Sí', 0, '', ''),
(130, 'ANDRES MIGUEL', 'ORTIZ CARREÑO ', 172384621, 'andres@hotmail.com', '', '', '2021-08-13', 158, 59, 0, 'O-', 'soltero', 'andres', '$2a$07$asxx54ahjppf45sd87a5auG6wzcvHQX0OYqZGMhIPic7EbdRk/KIC', 'Administrador', '', 1, '2021-08-31 08:36:25', '2021-08-31 13:36:25', 0, 5, 'Sí', 5, 'Sí', 0, '', ''),
(131, 'DAVID ISRAEL', 'RAMOS NOROÑA', 2147483647, 'david@hotmail.com', '', '', '2021-08-05', 169, 75, 0, 'O-', 'soltero', 'david1', '$2a$07$asxx54ahjppf45sd87a5auY00k1u8xuSPBVWyPyNbI1/Yjo0Ydzra', 'Administrador', '', 1, '2021-08-31 08:43:17', '2021-08-31 13:43:17', 0, 6, 'Sí', 7, 'Sí', 0, '', ''),
(132, 'JHON DARIO', 'ARCOS POMA ', 1723849004, 'jhond@hotmail.com', '', '', '2021-08-04', 158, 58, 0, 'O-', 'soltero', 'jhon', '$2a$07$asxx54ahjppf45sd87a5auH4.rwLkDzx3fQI53ttT1EXQN5b7reMm', 'Administrador', '', 1, '2021-08-31 08:55:16', '2021-08-31 13:55:16', 0, 1, 'Sí', 1, 'Sí', 0, '', ''),
(133, 'CRISTIAN GERMANICO', 'MORALES CHACON', 1725143555, 'cristian567@gmail.co', '', '', '2021-08-12', 168, 89, 0, 'O-', 'soltero', 'cristian', '$2a$07$asxx54ahjppf45sd87a5auEgOStNMyQ.le2Z3B2dpfQ1N9BFWiy0u', 'Administrador', '', 1, '0000-00-00 00:00:00', '2021-08-31 13:56:42', 0, 2, 'Sí', 1, 'Sí', 0, '', ''),
(134, 'ANDRES FELIPE', 'CAZORLA LOZADA', 1723849004, 'andresF@gmail.com', '', '', '2021-08-11', 186, 98, 0, 'O-', 'soltero', 'andresF', '$2a$07$asxx54ahjppf45sd87a5auFFctFJF7ET7iMjj9Vd4n5gNV7xVMz7W', 'Administrador', '', 1, '2021-08-31 08:57:54', '2021-08-31 13:57:54', 0, 0, 'Sí', 0, 'Sí', 0, '', ''),
(135, 'ANDREA ELIZABETH', 'OLALLA MENDOZA', 2147483647, 'andreaE@gmail.com', '', '', '2021-08-12', 155, 45, 0, 'O-', 'soltero', 'andrea', '$2a$07$asxx54ahjppf45sd87a5auRQGFR1OJ2ywP2iu529U0PDHXfoX0buy', 'Administrador', '', 1, '2021-08-31 08:59:29', '2021-08-31 13:59:29', 0, 0, 'Sí', 0, 'Sí', 0, '', ''),
(136, 'LUIS DARIO', 'ERAS QUIROLA ', 1723849005, 'luisD@hotmail.es', '', '', '2021-08-11', 168, 58, 0, 'O-', 'soltero', 'luis', '$2a$07$asxx54ahjppf45sd87a5auagG2T8.Z.c/GFCukN.EcCmBGPOmjB/.', 'Administrador', '', 1, '0000-00-00 00:00:00', '2021-08-31 15:11:07', 0, 7, 'Sí', 4, 'Sí', 0, '', ''),
(137, 'CHRISTIAN FABRICIO', 'PARRA MARTINEZ', 1723849056, 'christianFab123@gmai', '', '', '2021-08-19', 186, 85, 0, 'O-', 'soltero', 'christian', '$2a$07$asxx54ahjppf45sd87a5au9p0DqboBusVPJb4qVv6M/j4JmCXLLSG', 'Administrador', '', 1, '0000-00-00 00:00:00', '2021-08-31 15:12:30', 0, 5, 'Sí', 0, 'Sí', 0, '', ''),
(138, 'EDGAR ALESSANDERKS', 'BURBANO ALDAZ', 1723849678, 'edgarbur4@gmail.com', '', '', '2021-08-04', 178, 50, 0, 'O-', 'soltero', 'edgar', '$2a$07$asxx54ahjppf45sd87a5au6Xqgxu4ka5S8FYfqpW2IMTKJsgOdoaW', 'Administrador', '', 1, '2021-08-31 10:13:29', '2021-08-31 15:13:29', 0, 6, 'Sí', 0, 'Sí', 0, '', ''),
(139, 'WILLIAM FERNANDO', 'GAVILANEZ JAYA ', 1723849546, 'williamF3@gmail.com', '', '', '2021-08-06', 157, 69, 0, 'O-', 'soltero', 'william', '$2a$07$asxx54ahjppf45sd87a5au78vXVPm4o4sWJnLqmtSHOODG8suvht.', 'Administrador', '', 1, '0000-00-00 00:00:00', '2021-08-31 15:14:54', 0, 6, 'Sí', 0, 'Sí', 0, '', ''),
(140, 'CHRISTIAN FERNANDO', 'CORDERO BUSTAMANTE', 1723849005, 'christianFB@gmail.co', '', '', '2021-08-12', 175, 80, 0, 'O-', 'soltero', 'christianF', '$2a$07$asxx54ahjppf45sd87a5au5xZu3qezmGuufY1ebsF1pjWQm45X3NG', 'Administrador', '', 1, '0000-00-00 00:00:00', '2021-08-31 15:16:27', 0, 0, 'Sí', 0, 'Sí', 0, '', ''),
(141, 'FRANCISCO FABIAN', 'ENDARA BENAVIDES', 2147483647, 'franciscoFa@gmail.co', '', '', '2021-08-07', 168, 59, 0, 'O-', 'soltero', 'franciscoFa', '$2a$07$asxx54ahjppf45sd87a5autWxEt.NqNuA0KijutiB84dDmaxd.eOC', 'Administrador', '', 1, '2021-08-31 10:17:37', '2021-08-31 15:17:37', 0, 0, 'Sí', 0, 'Sí', 0, '', ''),
(142, 'ROBERTO JOSE', 'ESPIN FLORES', 1723849655, 'roberto@hotmail.com', '', '', '2021-08-07', 168, 70, 0, 'O-', 'soltero', 'robertoEs', '$2a$07$asxx54ahjppf45sd87a5au9G3gNLtxBRL9sjqNRhznPGz0wgPDccG', 'Administrador', '', 1, '0000-00-00 00:00:00', '2021-08-31 15:18:38', 0, 5, 'Sí', 0, 'Sí', 0, '', ''),
(143, 'CARLOS LUIS', 'VILLA MARTINEZ', 1723849876, 'carlosvilla3@gmail.c', '', '', '2021-08-13', 184, 90, 0, 'O-', 'soltero', 'carlosL', '$2a$07$asxx54ahjppf45sd87a5auPeTbH9uJTMOaN2lJctqBLU0D1EIx5t6', 'Administrador', '', 1, '0000-00-00 00:00:00', '2021-08-31 15:19:24', 0, 0, 'Sí', 0, 'Sí', 0, '', ''),
(144, 'CARLOS LUIS', 'VILLA MARTINEZ', 172384543, 'carlosE@gmail.com', '', '', '2021-08-10', 169, 70, 0, 'O-', 'soltero', 'carlosV', '$2a$07$asxx54ahjppf45sd87a5auqUNK1zYpXQFcW0Eb4BdFtq3tS7kidcS', 'Administrador', '', 1, '2021-08-31 10:20:52', '2021-08-31 15:20:52', 0, 0, 'Sí', 0, 'Sí', 30, '', ''),
(145, 'JUAN MARCELO', 'LOPEZ ARAUJO', 1723849004, 'juan@hotmail.com', '', '', '2021-08-04', 175, 90, 0, 'O-', 'soltero', 'juanM', '$2a$07$asxx54ahjppf45sd87a5aunz6OAOo4W.fJUYdD/N61le/EHF.JPNC', 'Administrador', '', 1, '0000-00-00 00:00:00', '2021-08-31 15:21:55', 0, 0, 'Sí', 0, 'Sí', 0, '', ''),
(146, 'JUAN MARCELO', 'LOPEZ ARAUJO', 1723849004, 'juan@hotmail.com', '', '', '2021-08-03', 175, 80, 0, 'O-', 'soltero', 'juanMar', '$2a$07$asxx54ahjppf45sd87a5auymu6n.dhmGZmrtr1x8hyBeeUHsyrf06', 'Administrador', '', 1, '0000-00-00 00:00:00', '2021-08-31 15:23:46', 0, 0, 'Sí', 0, 'Sí', 30, '', ''),
(147, 'MARCO VINICIO', 'CEVALLOS CASA', 1723849004, 'marcovi@gmail.com', '', '', '2021-08-05', 169, 56, 0, 'O-', 'soltero', 'marcoVin', '$2a$07$asxx54ahjppf45sd87a5au/06ERWZulqJuHHk9VqHqTm0.kQUOuiu', 'Administrador', '', 1, '0000-00-00 00:00:00', '2021-08-31 15:24:36', 0, 0, 'Sí', 0, 'Sí', 30, '', ''),
(148, 'CARLOS MANUEL', 'ESPINOZA MEZA', 1723849478, 'carlosMaes2@gmail.co', '', '', '2021-08-19', 176, 69, 0, 'O-', 'soltero', 'carlosManuel', '$2a$07$asxx54ahjppf45sd87a5aulu2FOZWxF/EAjVbqce/Ayu/Kc0fLKQm', 'Administrador', '', 1, '2021-08-31 10:25:39', '2021-08-31 15:25:39', 0, 0, 'Sí', 0, 'Sí', 10, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `envio` float NOT NULL,
  `neto_antes_descuento` float NOT NULL,
  `impuesto` float NOT NULL,
  `descuento` float NOT NULL,
  `neto` float NOT NULL,
  `total` float(20,3) NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `envio`, `neto_antes_descuento`, `impuesto`, `descuento`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(213, 10001, 14, 63, '[{\"id\":\"106\",\"descripcion\":\"Mini horno\",\"codigo\":\"MINH\",\"cantidad\":\"10\",\"stock\":\"59\",\"precio\":\"112\",\"total\":\"1120\"},{\"id\":\"107\",\"descripcion\":\"Plancha gris\",\"codigo\":\"PLACH\",\"cantidad\":\"1\",\"stock\":\"50\",\"precio\":\"112\",\"total\":\"112\"},{\"id\":\"98\",\"descripcion\":\"Microondas\",\"codigo\":\"MIC\",\"cantidad\":\"1\",\"stock\":\"39\",\"precio\":\"84\",\"total\":\"84\"}]', 0, 1316, 0, 0, 1316, 1316.000, '', '2021-06-29 19:31:12'),
(214, 10002, 14, 63, '[{\"id\":\"110\",\"descripcion\":\"SECADORA\",\"codigo\":\"SEC\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"280\",\"total\":\"280\"}]', 0, 280, 0, 0, 280, 280.000, '', '2021-06-29 19:34:19'),
(215, 10003, 14, 63, '[{\"id\":\"106\",\"descripcion\":\"Mini horno\",\"codigo\":\"MINH\",\"cantidad\":\"1\",\"stock\":\"58\",\"precio\":\"112\",\"total\":\"112\"}]', 0, 112, 0, 0, 112, 112.000, '', '2021-06-29 19:35:10'),
(216, 10004, 14, 63, '[{\"id\":\"106\",\"descripcion\":\"Mini horno\",\"codigo\":\"MINH\",\"cantidad\":\"1\",\"stock\":\"57\",\"precio\":\"112\",\"total\":\"112\"},{\"id\":\"108\",\"descripcion\":\"MUEBELES\",\"codigo\":\"MUEB\",\"cantidad\":\"2\",\"stock\":\"38\",\"precio\":\"500\",\"total\":\"1000\"}]', 0, 1112, 0, 0, 1112, 1112.000, '', '2021-06-29 19:36:57'),
(217, 10005, 13, 63, '[{\"id\":\"108\",\"descripcion\":\"MUEBELES\",\"codigo\":\"MUEB\",\"cantidad\":\"3\",\"stock\":\"35\",\"precio\":\"500\",\"total\":\"1500\"}]', 0, 1500, 180, 0, 1500, 1680.000, '', '2021-06-29 19:38:41'),
(218, 10006, 15, 63, '[{\"id\":\"110\",\"descripcion\":\"SECADORA\",\"codigo\":\"SEC\",\"cantidad\":\"1\",\"stock\":\"48\",\"precio\":\"280\",\"total\":\"280\"},{\"id\":\"108\",\"descripcion\":\"MUEBELES\",\"codigo\":\"MUEB\",\"cantidad\":\"2\",\"stock\":\"33\",\"precio\":\"500\",\"total\":\"1000\"}]', 0, 1280, 0, 0, 1280, 1280.000, '', '2021-06-29 19:40:46'),
(219, 10007, 14, 63, '[{\"id\":\"108\",\"descripcion\":\"MUEBELES\",\"codigo\":\"MUEB\",\"cantidad\":\"3\",\"stock\":\"30\",\"precio\":\"500\",\"total\":\"1500\"}]', 0, 1500, 0, 0, 1500, 1500.000, '', '2021-06-29 19:42:24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_frontdesk_users`
--
ALTER TABLE `tbl_frontdesk_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_reservations`
--
ALTER TABLE `tbl_reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de la tabla `tbl_frontdesk_users`
--
ALTER TABLE `tbl_frontdesk_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_reservations`
--
ALTER TABLE `tbl_reservations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1251;

--
-- AUTO_INCREMENT de la tabla `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
