-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 18-09-2017 a las 03:38:20
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_admin_franco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ajustes`
--

CREATE TABLE `tb_ajustes` (
  `id_ajuste` int(11) NOT NULL,
  `nombre_aj` varchar(30) NOT NULL,
  `email_aj` varchar(70) NOT NULL,
  `color_aj` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_ajustes`
--

INSERT INTO `tb_ajustes` (`id_ajuste`, `nombre_aj`, `email_aj`, `color_aj`) VALUES
(1, 'CITRUX CA', 'juanfranco571@example.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_spanish_ci NOT NULL DEFAULT '#',
  `tipo_menu` int(1) NOT NULL,
  `estado_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_menu`
--

INSERT INTO `tb_menu` (`id`, `nombre`, `url`, `tipo_menu`, `estado_menu`) VALUES
(1, 'Hogar / Oficina', '#', 1, 1),
(2, 'Empleos', '#', 0, 1),
(3, 'Electr&oacute;nica', '#', 1, 1),
(4, 'Indumentaria', '#', 0, 1),
(5, 'Automotores', '#', 1, 1),
(6, 'Inmobiliaria', '#', 1, 0),
(7, 'M&uacute;sica', '#', 1, 0),
(8, 'Servicios', '#', 1, 1),
(9, 'Mascotas', '#', 0, 0),
(10, 'Otros', '#', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_nivel`
--

CREATE TABLE `tb_nivel` (
  `id_nivel` int(11) NOT NULL,
  `usuario_nivel` varchar(20) NOT NULL,
  `descripcion_nivel` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_nivel`
--

INSERT INTO `tb_nivel` (`id_nivel`, `usuario_nivel`, `descripcion_nivel`) VALUES
(1, 'Administrador', 'todos los niveles y privilegios para este usuario'),
(2, 'Usuario', 'Privilegios limitados para este usuario'),
(3, 'Editor', 'Usuario con altas restricciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_submenu`
--

CREATE TABLE `tb_submenu` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `menu_id` int(11) NOT NULL,
  `url` varchar(200) COLLATE utf8_spanish_ci NOT NULL DEFAULT '#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_submenu`
--

INSERT INTO `tb_submenu` (`id`, `nombre`, `menu_id`, `url`) VALUES
(1, 'Limpieza', 1, '#'),
(2, 'Decoraci&oacute;n', 1, '#'),
(3, 'Muebles', 1, '#'),
(4, 'Ba&ntilde;o', 1, '#'),
(5, 'Cocina', 1, '#'),
(6, 'Sala de estar', 1, '#'),
(7, 'Dormitorio', 1, '#'),
(8, 'Seguridad', 1, '#'),
(9, 'Jard&iacute;n y exteriores', 1, '#'),
(10, 'Pisos, paredes y aberturas', 1, '#'),
(11, 'Audio / Video', 3, '#'),
(12, 'Computaci&oacute;n', 3, '#'),
(13, 'Electrodom&eacute;sticos', 3, '#'),
(14, 'Autom&oacute;viles', 5, '#'),
(15, 'Camionetas', 5, '#'),
(16, 'Bicicletas', 5, '#'),
(17, 'Motos y cuatriciclos', 5, '#'),
(18, 'Departamentos', 6, '#'),
(19, 'Casas', 6, '#'),
(20, 'Fondos de comercio', 6, '#'),
(21, 'Instrumentos musicales', 7, '#'),
(22, 'Microfon&iacute;a', 7, '#'),
(23, 'Sonido e Iluminaci&oacute;n', 7, '#'),
(24, 'Instrumentos de cuerda', 7, '#'),
(25, 'Instrumentos de percusi&oacute;n', 7, '#'),
(26, 'Teclados / pianos', 7, '#'),
(27, 'Cursos y clases', 8, '#'),
(28, 'Ciudad personal', 8, '#'),
(29, 'Arte, m&uacute;sica y cine', 8, '#'),
(30, 'Delivery', 8, '#'),
(31, 'Construcci&oacute;n / mantenimiento', 8, '#'),
(32, 'Veh&iacute;culos', 8, '#'),
(33, 'Profesionales', 8, '#'),
(34, 'Servicio t&eacute;cnico', 8, '#'),
(35, 'Servicio para mascotas', 8, '#'),
(36, 'Transporte', 8, '#'),
(37, 'Viajes / turismo', 8, '#');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(350) NOT NULL,
  `nombre` varchar(70) NOT NULL,
  `apellido` varchar(70) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `perfil` text NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id`, `usuario`, `email`, `password`, `nombre`, `apellido`, `avatar`, `telefono`, `perfil`, `id_tipo`, `estado`) VALUES
(1, 'Superadmin', 'juanfranco561@gmail.com', 'e76babd84b222e0b6bb64c1022f5fae75bc7fc3d', 'Juan D.', 'Franco', '1505440960_1483212794_sam_3895.jpg', '3186519077', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel enim et augue sagittis aliquam. Sed faucibus eleifend odio, ut aliquam dolor vehicula sed. Praesent accumsan, lorem vitae tempus viverra, neque lacus viverra sem, quis congue lectus dolor non massa. Proin quis iaculis neque. Etiam eu sem tortor. Nullam sit amet elit elementum, condimentum metus vel, ultrices sapien. Duis in pellentesque arcu. \r\nSed sit amet dolor facilisis, mollis lacus in, molestie sapien. In tincidunt accumsan ornare. Sed malesuada sapien et venenatis ullamcorper. Maecenas laoreet est in enim egestas facilisis. Nullam nisi leo, varius pharetra accumsan eu, vehicula in sem. Integer quam purus, faucibus eu ullamcorper ac, dapibus id eros. Sed non dapibus tellus. Duis in dolor mi. Pellentesque congue quam sem, et placerat sapien eleifend ut. Aenean gravida auctor ex. Sed vitae gravida ligula. Donec gravida aliquam nisl, ut ornare elit placerat non. Nam mattis metus a orci gravida placerat. ', 1, 'Activo'),
(9, 'Admin1', 'juan@gmail.com', 'e76babd84b222e0b6bb64c1022f5fae75bc7fc3d', 'Donaldo', 'Franco', '', '4564564564564', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi suscipit magna erat, gravida porta metus consectetur in. In enim ligula, sodales in sem eget, volutpat egestas metus. Nulla facilisi. Nam faucibus massa nec libero tincidunt pulvinar. In libero lorem, bibendum semper semper sed, venenatis ut leo. Mauris semper nisi in mauris gravida, a pulvinar dolor volutpat. Suspendisse interdum vel velit quis dapibus. ', 1, 'Activo'),
(10, 'Donaldo', 'franko-15@hotmail.com', 'e76babd84b222e0b6bb64c1022f5fae75bc7fc3d', 'reterterterter', 'Franco', '', '04160771488', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi suscipit magna erat, gravida porta metus consectetur in. In enim ligula, sodales in sem eget, volutpat egestas metus. Nulla facilisi. Nam faucibus massa nec libero tincidunt pulvinar. In libero lorem, bibendum semper semper sed, venenatis ut leo. Mauris semper nisi in mauris gravida, a pulvinar dolor volutpat. Suspendisse interdum vel velit quis dapibus. ', 1, 'Inactivo'),
(11, 'ADMINISTRADOR', 'juanfranco560@gmail.com', 'e76babd84b222e0b6bb64c1022f5fae75bc7fc3d', 'Juan Fernando', 'Franco', '', '015897422', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi suscipit magna erat, gravida porta metus consectetur in. In enim ligula, sodales in sem eget, volutpat egestas metus. Nulla facilisi. Nam faucibus massa nec libero tincidunt pulvinar. In libero lorem, bibendum semper semper sed, venenatis ut leo. Mauris semper nisi in mauris gravida, a pulvinar dolor volutpat. Suspendisse interdum vel velit quis dapibus. ', 1, 'Activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_ajustes`
--
ALTER TABLE `tb_ajustes`
  ADD PRIMARY KEY (`id_ajuste`);

--
-- Indices de la tabla `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_submenu`
--
ALTER TABLE `tb_submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_ajustes`
--
ALTER TABLE `tb_ajustes`
  MODIFY `id_ajuste` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `tb_submenu`
--
ALTER TABLE `tb_submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
