-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-01-2021 a las 20:23:02
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carrito`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `imagen` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `imagen`) VALUES
(1, 'Mujeres', 'Ropar para dama', 'women.jpg'),
(2, 'Hombres', 'Ropa para hombre', 'men.jpg'),
(3, 'Niños', 'Ropa para niños', 'children.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colores`
--

CREATE TABLE `colores` (
  `id` int(11) NOT NULL,
  `color` varchar(50) NOT NULL,
  `codigo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `colores`
--

INSERT INTO `colores` (`id`, `color`, `codigo`) VALUES
(1, 'red', '#f00'),
(2, 'blue', '#00F');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cupones`
--

CREATE TABLE `cupones` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `valor` varchar(50) NOT NULL,
  `fecha_vencimiento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cupones`
--

INSERT INTO `cupones` (`id`, `codigo`, `status`, `tipo`, `valor`, `fecha_vencimiento`) VALUES
(1, '95536', 'utilizado', 'moneda', '50', '2021-01-30'),
(2, '34822', 'activo', 'moneda', '200', '2021-01-30'),
(3, '14876', 'activo', 'porcentaje', '50', '2021-01-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `id_envio` int(11) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`id_envio`, `pais`, `company`, `direccion`, `estado`, `cp`, `id_venta`) VALUES
(1, '3', 'ninguna', 'cordoba', 'veracruz, mexico', '9898', 2),
(2, '2', 'Universidad Autónoma de Nicaragua', 'cordoba', 'veracruz, mexico', '9898', 3),
(3, '10', 'Universidad Autónoma de Nicaragua', 'cordoba', 'veracruz, mexico', '9898', 4),
(4, '11', 'Universidad Autónoma de Nicaragua', 'cordoba', 'veracruz, mexico', '9898', 5),
(5, '5', 'Universidad Autónoma de Nicaragua', 'cordoba', 'veracruz, mexico', '9898', 6),
(6, '10', 'Universidad Autónoma de Nicaragua', 'cordoba', 'veracruz, mexico', '9898', 7),
(7, '1', '', '', '', '', 8),
(8, '1', '', '', '', '', 9),
(9, '1', '', '', '', '', 10),
(10, '1', '', '', '', '', 11),
(11, '1', '', '', '', '', 12),
(12, '1', '', '', '', '', 13),
(13, '1', '', '', '', '', 14),
(14, '1', '', '', '', '', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` double NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `inventario` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `talla` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `imagen`, `inventario`, `id_categoria`, `talla`, `color`) VALUES
(154, 'Frappucino', 'Delicioso frapuccino doble crema con chocolate', 150, '1610477078.jpg', 14, 2, 'mediana', 'brown'),
(155, 'Café clásico', 'Café con desayuno, nutritivo y rico. ', 25, '1610477198.png', 25, 2, 'mediano', 'brown'),
(156, 'Frappe Unicorn', 'Frappe de unicornio con sabores especiales.', 100, '1610477312.png', 144, 3, 'grande', 'blue'),
(157, 'Three pack Frapp', '3 Frappuccinos especiales de chocolate', 149, '1610477434.png', 10, 2, 'grande', 'brown'),
(158, 'Capuccino clásico', 'Capuccino clásico con canela.', 49, '1610477604.jpg', 21, 1, 'mediano', 'brown'),
(159, 'Cappuccino con extra crema', 'Capuccino con crema de coco extra ligera', 59, '1610477654.jpg', 20, 2, 'mediano', 'brown'),
(160, '3 pack Frapp', 'Frappuccinos tripes ', 189, '1610477773.png', 78, 1, 'grande', 'brown'),
(161, 'Sandwich', '3 Sandwich clásicos', 69, '1610477851.png', 123, 2, 'mediana', 'brown'),
(162, 'Macchiato Caramel', 'Frappucino de caramelo ', 78, '1610477965.png', 50, 3, 'pequeño', 'brown'),
(163, 'Espresso Banana Sesame', 'Espresso banana sesame con extra canela', 59, '1610478029.jpg', 44, 3, 'mediano', 'brown'),
(164, 'Peanut butter pancakes', 'Pancakes con mantequilla deliciosos', 99, '1610478171.png', 62, 1, 'mediana', 'brown'),
(165, 'Pepermint Mocha', 'Frappucino mocha ', 69, '1610478258.jpg', 52, 1, 'mediano', 'brown');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_venta`
--

CREATE TABLE `productos_venta` (
  `id` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `precio` double NOT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_venta`
--

INSERT INTO `productos_venta` (`id`, `id_venta`, `id_producto`, `cantidad`, `precio`, `subtotal`) VALUES
(1, 1, 1, 2, 60, 120),
(2, 2, 1, 2, 60, 120),
(3, 3, 2, 3, 20, 60),
(4, 4, 152, 1, 238, 238),
(5, 5, 150, 1, 210, 210),
(6, 6, 146, 1, 552, 552),
(7, 7, 150, 1, 210, 210),
(8, 8, 150, 1, 210, 210),
(9, 9, 150, 1, 210, 210),
(10, 9, 133, 1, 37, 37),
(11, 10, 133, 1, 37, 37),
(12, 11, 133, 1, 37, 37),
(13, 12, 156, 1, 100, 100),
(14, 12, 154, 1, 150, 150),
(15, 13, 163, 1, 59, 59),
(16, 14, 164, 1, 99, 99),
(17, 15, 158, 2, 49, 98);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `img_perfil` varchar(300) NOT NULL,
  `nivel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `telefono`, `email`, `password`, `img_perfil`, `nivel`) VALUES
(1, 'Carlos  Ponce', '2711779869', 'cept@live.com.mx', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'default.jpg', 'admin'),
(4, 'R. Janett', '2711779869', 'cemmanuel298@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'default.jpg', 'cliente'),
(5, 'yaxipal smith', '2121212', 'sahib41260@go4mail.net', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'default.jpg', 'cliente'),
(6, 'carlos Ponce', '2711779869', 'sahib41260@go4mail.net', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', 'default.jpg', 'cliente'),
(7, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'default.jpg', 'cliente'),
(8, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'default.jpg', 'cliente'),
(9, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'default.jpg', 'cliente'),
(10, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'default.jpg', 'cliente'),
(11, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'default.jpg', 'cliente'),
(12, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'default.jpg', 'cliente'),
(13, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'default.jpg', 'cliente'),
(14, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'default.jpg', 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `total` double NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL,
  `id_pago` int(11) NOT NULL,
  `id_cupon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `id_usuario`, `total`, `fecha`, `status`, `id_pago`, `id_cupon`) VALUES
(2, 1, 120, '2021-01-10 10:01:18', 'preparacion', 0, 0),
(3, 2, 60, '2021-01-10 11:01:11', 'preparacion', 0, 0),
(4, 3, 238, '2021-01-10 16:01:50', 'preparacion', 0, 0),
(5, 4, 210, '2021-01-11 18:01:09', 'preparacion', 0, 0),
(6, 5, 552, '2021-01-12 08:01:26', '', 0, 0),
(7, 6, 210, '2021-01-12 08:01:18', '', 0, 0),
(8, 7, 210, '2021-01-12 12:01:08', '', 0, 0),
(9, 8, 247, '2021-01-12 10:01:21', '', 0, 0),
(10, 9, 37, '2021-01-12 10:01:29', '', 0, 0),
(11, 10, 37, '2021-01-12 10:01:54', '', 0, 0),
(12, 11, 250, '2021-01-12 14:01:42', '', 0, 0),
(13, 12, 59, '2021-01-12 14:01:07', '', 0, 0),
(14, 13, 99, '2021-01-12 14:01:06', '', 0, 0),
(15, 14, 98, '2021-01-12 14:01:45', '', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `colores`
--
ALTER TABLE `colores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cupones`
--
ALTER TABLE `cupones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `envios`
--
ALTER TABLE `envios`
  ADD PRIMARY KEY (`id_envio`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_venta`
--
ALTER TABLE `productos_venta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
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
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `colores`
--
ALTER TABLE `colores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cupones`
--
ALTER TABLE `cupones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `envios`
--
ALTER TABLE `envios`
  MODIFY `id_envio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT de la tabla `productos_venta`
--
ALTER TABLE `productos_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
