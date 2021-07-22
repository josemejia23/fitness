-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2021 a las 00:00:17
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
  `discapacidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `cedula`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `estatura`, `peso`, `enfermedades`, `sangre`, `civil`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`, `edad`, `dias_deporte`, `covid`, `dosis`, `cirugias`, `discapacidad`) VALUES
(65, 'joseL', '', 0, '', '', '', NULL, 0, 0, 0, '', '', 'jose', '$2a$07$asxx54ahjppf45sd87a5auPCBVOq6AORNOPkYmHXY.pDNBGlGoNkW', 'Administrador', '', 1, '2021-07-22 13:41:22', '2021-07-22 18:41:22', 0, 0, '', 0, '', 0),
(67, 'JOSE', 'MEJIA', 1723849004, 'jose@hotmail.es', '', '', '2021-07-01', 12, 12, 1, '12', '12', 'josem', '$2a$07$asxx54ahjppf45sd87a5auHGX8JBNMr7JYJre0brJ5mJX83/X8dci', 'Especial', '', 1, '2021-07-22 13:40:11', '2021-07-22 18:40:11', 0, 12, 'Sí', 12, 'Sí', 12),
(68, 'JAIME', 'JAIME', 234544, 'jaime@hotmail.es', '', '', '2021-07-08', 186, 65, 1, 'A', 'soltero', 'jaime', '$2a$07$asxx54ahjppf45sd87a5au5Pfyd2BZd2CanJlE05sLYsk0uEn34K2', 'Especial', '', 1, '2021-07-22 13:41:32', '2021-07-22 18:41:32', 0, 4, 'Sí', 4, 'Sí', 30);

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
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
