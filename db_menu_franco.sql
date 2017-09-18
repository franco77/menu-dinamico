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

-- ------------------------------------------------------
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
