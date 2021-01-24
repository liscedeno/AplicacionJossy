-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-04-2020 a las 07:46:24
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jossy-pedidos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('ffh33nirkkhl5phsmrnjrv8qh1msqokf', '::1', 1581490375, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538313439303337353b),
('3t9cqthcedjv8qo5fu3nhigqhppoeu77', '::1', 1582082894, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323038323839343b),
('fem83thn0hcemepf90ps8h0qpoosjg1d', '::1', 1582086753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323038363735333b),
('2kivngdh7e737fu7jvt8es70a5p9vvb8', '::1', 1582086777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323038363735333b),
('9d9t75dmj4b3j26vub66jbpe7deb67c3', '::1', 1583098449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333039383434393b),
('tld8v6coudrh38nn74ho6ji9nm6po5jf', '::1', 1583098895, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333039383839353b),
('gtoubmvfa82vqo5o03tn0ignk846opp0', '::1', 1583098974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333039383839353b),
('9qs5ii5io85dct77jmkaepaamsfucgtc', '::1', 1583172414, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333137323431343b),
('br7ej2ofjfe21c2q6k1unbuk5s3tkep4', '::1', 1583303010, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333330333031303b),
('dqj7t3kug6l3fb6a7mq6jnj7g9s784ek', '::1', 1583303692, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333330333639323b),
('gbqqs1euar9r2lr7e97qd4e8rj6p7h3b', '::1', 1583305085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333330353038353b),
('ls7dr1bd5a8ihq3n93rormde52uml0hn', '::1', 1583305205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333330353038353b),
('fiunp8sh5hfscaq32j9dhd4slhu4pedu', '::1', 1583347862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333334373638353b),
('6jc2lcj0ogngp4qmfchqmdkmbco718gc', '::1', 1583348419, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333334383431393b),
('mib16h02iassqrkmi35snjoldic0n6j0', '::1', 1583348419, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333334383431393b),
('1jkr26297lrgljtcskvnp5ccl5qu4i0s', '::1', 1583362031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333336323033313b),
('dlpmc3vjk1nnoak4q2fp3g6dilnst560', '::1', 1583362031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333336323033313b),
('jp27gkfooct35oui087dur9os69v5mlm', '::1', 1583392588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333339323538353b),
('adv1l8l8ek6me53kaq37q4g8t4ch1fh1', '::1', 1583452484, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333435323438343b),
('da001iqenikh6g1fbnq5gkrl5jvmi4mj', '::1', 1583452484, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333435323438343b),
('2fpst0sr4n8bl5ab3fvhmfvq5ij0cb7p', '::1', 1583454123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333435343132333b),
('ctduqlls5nnicfvcdpr7g6t2nq016c8l', '::1', 1583454147, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333435343132333b),
('og3ntand5d6261dvuie9i511k2kb9s92', '::1', 1583638479, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333633383437393b),
('f160q10p0kgl0kesqfkb2fm62ir8i9p8', '::1', 1583892304, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333839323330343b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cargo`
--

CREATE TABLE `tbl_cargo` (
  `Id_cargo` smallint(6) NOT NULL,
  `descripcion_cargo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_cargo`
--

INSERT INTO `tbl_cargo` (`Id_cargo`, `descripcion_cargo`) VALUES
(1, 'Admin'),
(2, 'Vendedor'),
(3, 'Chofer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_circuitos`
--

CREATE TABLE `tbl_circuitos` (
  `Id_circuitos` smallint(6) NOT NULL,
  `codigo_circuito` varchar(20) NOT NULL DEFAULT '',
  `nombre_circuito` varchar(100) NOT NULL DEFAULT '',
  `Id_distritos` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_circuitos`
--

INSERT INTO `tbl_circuitos` (`Id_circuitos`, `codigo_circuito`, `nombre_circuito`, `Id_distritos`) VALUES
(1, 'D01C01', 'Guasmo', 1),
(2, 'D01C02', 'Union de Bananeros', 1),
(3, 'D01C03', 'Floresta', 1),
(4, 'D01C04', '7 Lagos', 1),
(5, 'D01C05', 'Centenario', 1),
(6, 'D01C06', 'Puna', 1),
(7, 'D02C01', 'Esteros', 1),
(8, 'D02C02', 'Malvinas 1', 1),
(9, 'D02C03', 'Malvinas 2', 1),
(10, 'D02C04', 'Trinitaria 1', 1),
(11, 'D02C05', 'Trinitaria 2', 1),
(12, 'D03C01', 'Chile', 1),
(13, 'D03C02', 'Victoria', 1),
(14, 'D03C03', '9 de Octubre', 1),
(15, 'D03C04', 'Garay', 1),
(16, 'D03C05', 'Venezuela', 1),
(17, 'D03C06', 'Antepara', 1),
(18, 'D03C07', 'Cristo del Consuelo', 1),
(19, 'D03C0', 'Nueva Prosperina', 1),
(20, 'D03C8', 'Los Mangos', 1),
(21, 'D03C12', 'Jose de antepara', 1),
(22, 'D23C45', 'Abel Gilbert', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clientes`
--

CREATE TABLE `tbl_clientes` (
  `Id_clientes` smallint(6) NOT NULL,
  `ci_clientes` varchar(11) NOT NULL DEFAULT '',
  `nombre_clientes` varchar(50) NOT NULL DEFAULT '',
  `apellido_clientes` varchar(50) NOT NULL DEFAULT '',
  `direccion_clientes` varchar(150) NOT NULL DEFAULT '',
  `celular_clientes` varchar(40) NOT NULL DEFAULT '',
  `telefono_clientes` varchar(20) NOT NULL DEFAULT '',
  `correo_clientes` varchar(50) NOT NULL DEFAULT '',
  `actividadlocal_clientes` varchar(150) NOT NULL DEFAULT '',
  `ruc_clientes` varchar(15) NOT NULL DEFAULT '',
  `tiempolocal_clientes` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detallepedidos`
--

CREATE TABLE `tbl_detallepedidos` (
  `Id_detallep` smallint(6) NOT NULL,
  `cantidad_detallepedidos` int(11) NOT NULL DEFAULT '0',
  `precio_detallepedidos` decimal(18,2) NOT NULL DEFAULT '0.00',
  `descuento_detallpedidos` decimal(18,2) NOT NULL DEFAULT '0.00',
  `subtotal_detallepedidos` decimal(18,2) NOT NULL DEFAULT '0.00',
  `fecha_detallepedidos` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_distritos`
--

CREATE TABLE `tbl_distritos` (
  `Id_distritos` smallint(6) NOT NULL,
  `numero_distrito` varchar(10) DEFAULT NULL,
  `nombre_distrito` varchar(50) DEFAULT NULL,
  `Id_zonas` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_distritos`
--

INSERT INTO `tbl_distritos` (`Id_distritos`, `numero_distrito`, `nombre_distrito`, `Id_zonas`) VALUES
(1, '01', 'Guayaquil', 21),
(2, '02', 'Samborondon', 27),
(3, '51', 'Duran', 2),
(4, '234', 'Guaranda', 17),
(5, '02D03C07', 'Balsapamba', 17),
(6, '443er', 'Loja', 21),
(7, '03Dc3', 'Balsas', 2),
(8, '56d45c45', 'Sangolqui', 29),
(9, '564f', 'Las lajas', 21),
(10, '56y56c56', 'Limonal', 1),
(11, '08D02', 'Eloy Alfaro', 1),
(12, '5021211', 'Pasaje de Las nieves', 23),
(13, '121212121P', 'Babahoyo', 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_empleados`
--

CREATE TABLE `tbl_empleados` (
  `Id_empleados` smallint(6) NOT NULL,
  `ci_empleados` varchar(11) NOT NULL DEFAULT '',
  `nombre_empleados` varchar(100) NOT NULL DEFAULT '',
  `apellido_empleados` varchar(100) NOT NULL DEFAULT '',
  `direccion_empleados` varchar(100) NOT NULL DEFAULT '',
  `telefono_empleados` varchar(50) NOT NULL DEFAULT '',
  `correo_empleados` varchar(50) NOT NULL,
  `usuario_empleados` varchar(20) NOT NULL DEFAULT '',
  `clave_empleados` varchar(20) NOT NULL DEFAULT '',
  `cargo_empleados` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_empleados`
--

INSERT INTO `tbl_empleados` (`Id_empleados`, `ci_empleados`, `nombre_empleados`, `apellido_empleados`, `direccion_empleados`, `telefono_empleados`, `correo_empleados`, `usuario_empleados`, `clave_empleados`, `cargo_empleados`) VALUES
(3, '0923468979', 'Lissette', 'Cedeno', 'Guasmo', '0959565043', 'samiylislis@gmail.com', 'liscedeno', '123cedeno', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estado`
--

CREATE TABLE `tbl_estado` (
  `Id_estado` smallint(6) NOT NULL,
  `nombre_estados` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_estado`
--

INSERT INTO `tbl_estado` (`Id_estado`, `nombre_estados`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estado_pedido`
--

CREATE TABLE `tbl_estado_pedido` (
  `Id_estadopedido` smallint(6) NOT NULL,
  `nombre_estadopedido` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_inventario_term`
--

CREATE TABLE `tbl_inventario_term` (
  `Id_produc_term` smallint(6) NOT NULL,
  `desc_inve_term` varchar(50) NOT NULL DEFAULT '',
  `tipo_inve_term` varchar(25) NOT NULL DEFAULT '',
  `precio_kg_inv_term` decimal(18,2) NOT NULL DEFAULT '0.00',
  `fech_inve_term` int(11) NOT NULL DEFAULT '0',
  `peso_disp_inve_term` decimal(10,0) DEFAULT NULL,
  `peso_rese_inve_term` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pedidos`
--

CREATE TABLE `tbl_pedidos` (
  `Id_pedidos` smallint(6) NOT NULL,
  `latitud_pedidos` decimal(50,0) DEFAULT NULL,
  `longitug_pedidos` decimal(50,0) NOT NULL,
  `fecha_pedidos` datetime DEFAULT NULL,
  `total_pedidos` decimal(18,2) DEFAULT NULL,
  `Id_empleados` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_rutas`
--

CREATE TABLE `tbl_rutas` (
  `Id_rutas` smallint(6) NOT NULL,
  `fecha_rutas` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Id_empleados` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuariologin`
--

CREATE TABLE `tbl_usuariologin` (
  `Id_usuariologin` smallint(6) NOT NULL,
  `fecha_usuariologin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `empleados_login` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_usuariologin`
--

INSERT INTO `tbl_usuariologin` (`Id_usuariologin`, `fecha_usuariologin`, `empleados_login`) VALUES
(24, '2020-04-25 07:42:34', '0'),
(25, '2020-04-25 07:43:07', '0'),
(26, '2020-04-25 07:43:52', 'VCEDENO'),
(27, '2020-04-25 07:45:09', 'LISCEDENO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_zonas`
--

CREATE TABLE `tbl_zonas` (
  `Id_zonas` smallint(6) NOT NULL,
  `numero_zonas` varchar(5) NOT NULL DEFAULT '',
  `nombre_zonas` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_zonas`
--

INSERT INTO `tbl_zonas` (`Id_zonas`, `numero_zonas`, `nombre_zonas`) VALUES
(1, '001', 'Esmeraldas'),
(2, '001', 'Imbabura'),
(3, '001', 'Carchi'),
(4, '001', 'Sucumbios'),
(6, '002', 'Pichincha'),
(7, '002', 'Napo'),
(8, '002', 'Orellana'),
(9, '003', 'Cotopaxi'),
(10, '003', 'Tungurahua'),
(11, '003', 'Chimborazo'),
(12, '003', 'Pastaza'),
(13, '004', 'Manabi'),
(14, '004', 'Santo Domingo de los Tsachilas'),
(15, '005', 'Santa Elena'),
(16, '005', 'Guayas'),
(17, '005', 'Bolivar'),
(18, '005', 'Los Rios'),
(19, '005', 'Galapagos'),
(20, '006', 'CaÃ±ar'),
(21, '006', 'Azuay'),
(22, '006', 'Morona Santiago'),
(23, '007', 'El Oro'),
(24, '007', 'Loja'),
(25, '007', 'Zamora Chinchipe'),
(26, '008', 'Guayaquil'),
(27, '008', 'Samborondon'),
(28, '008', 'Duran'),
(29, '009', 'Distrito Metropolitano de Quito'),
(30, '009', '1ero de mayo'),
(31, '010', 'Pedro Carbo'),
(32, '011', 'el triunfo'),
(33, '24', 'Babahoyo'),
(34, '68767', 'Campo'),
(36, '0039', 'Los Rios2'),
(37, '68761', 'Los Rios3'),
(38, '11111', 'Los Rios4');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_cargo`
--
ALTER TABLE `tbl_cargo`
  ADD PRIMARY KEY (`Id_cargo`);

--
-- Indices de la tabla `tbl_circuitos`
--
ALTER TABLE `tbl_circuitos`
  ADD PRIMARY KEY (`Id_circuitos`),
  ADD KEY `Id_distritos` (`Id_distritos`) USING BTREE;

--
-- Indices de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD PRIMARY KEY (`Id_clientes`);

--
-- Indices de la tabla `tbl_detallepedidos`
--
ALTER TABLE `tbl_detallepedidos`
  ADD PRIMARY KEY (`Id_detallep`);

--
-- Indices de la tabla `tbl_distritos`
--
ALTER TABLE `tbl_distritos`
  ADD PRIMARY KEY (`Id_distritos`),
  ADD KEY `Id_zonas` (`Id_zonas`) USING BTREE;

--
-- Indices de la tabla `tbl_empleados`
--
ALTER TABLE `tbl_empleados`
  ADD PRIMARY KEY (`Id_empleados`),
  ADD KEY `cargo_empleados` (`cargo_empleados`);

--
-- Indices de la tabla `tbl_estado`
--
ALTER TABLE `tbl_estado`
  ADD PRIMARY KEY (`Id_estado`);

--
-- Indices de la tabla `tbl_estado_pedido`
--
ALTER TABLE `tbl_estado_pedido`
  ADD PRIMARY KEY (`Id_estadopedido`);

--
-- Indices de la tabla `tbl_inventario_term`
--
ALTER TABLE `tbl_inventario_term`
  ADD PRIMARY KEY (`Id_produc_term`);

--
-- Indices de la tabla `tbl_pedidos`
--
ALTER TABLE `tbl_pedidos`
  ADD PRIMARY KEY (`Id_pedidos`),
  ADD KEY `Id_empleado` (`Id_empleados`);

--
-- Indices de la tabla `tbl_rutas`
--
ALTER TABLE `tbl_rutas`
  ADD PRIMARY KEY (`Id_rutas`),
  ADD KEY `Id_empleados` (`Id_empleados`);

--
-- Indices de la tabla `tbl_usuariologin`
--
ALTER TABLE `tbl_usuariologin`
  ADD PRIMARY KEY (`Id_usuariologin`);

--
-- Indices de la tabla `tbl_zonas`
--
ALTER TABLE `tbl_zonas`
  ADD PRIMARY KEY (`Id_zonas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_cargo`
--
ALTER TABLE `tbl_cargo`
  MODIFY `Id_cargo` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_circuitos`
--
ALTER TABLE `tbl_circuitos`
  MODIFY `Id_circuitos` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  MODIFY `Id_clientes` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_detallepedidos`
--
ALTER TABLE `tbl_detallepedidos`
  MODIFY `Id_detallep` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_distritos`
--
ALTER TABLE `tbl_distritos`
  MODIFY `Id_distritos` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tbl_empleados`
--
ALTER TABLE `tbl_empleados`
  MODIFY `Id_empleados` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_estado`
--
ALTER TABLE `tbl_estado`
  MODIFY `Id_estado` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_estado_pedido`
--
ALTER TABLE `tbl_estado_pedido`
  MODIFY `Id_estadopedido` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_inventario_term`
--
ALTER TABLE `tbl_inventario_term`
  MODIFY `Id_produc_term` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_pedidos`
--
ALTER TABLE `tbl_pedidos`
  MODIFY `Id_pedidos` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_rutas`
--
ALTER TABLE `tbl_rutas`
  MODIFY `Id_rutas` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_usuariologin`
--
ALTER TABLE `tbl_usuariologin`
  MODIFY `Id_usuariologin` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `tbl_zonas`
--
ALTER TABLE `tbl_zonas`
  MODIFY `Id_zonas` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_circuitos`
--
ALTER TABLE `tbl_circuitos`
  ADD CONSTRAINT `circuito_distrito` FOREIGN KEY (`Id_distritos`) REFERENCES `tbl_distritos` (`Id_distritos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD CONSTRAINT `Id_circuitos` FOREIGN KEY (`Id_clientes`) REFERENCES `tbl_circuitos` (`Id_circuitos`),
  ADD CONSTRAINT `Id_estado` FOREIGN KEY (`Id_clientes`) REFERENCES `tbl_estado` (`Id_estado`);

--
-- Filtros para la tabla `tbl_detallepedidos`
--
ALTER TABLE `tbl_detallepedidos`
  ADD CONSTRAINT `Id_estadopedido` FOREIGN KEY (`Id_detallep`) REFERENCES `tbl_estado_pedido` (`Id_estadopedido`),
  ADD CONSTRAINT `Id_pedidos` FOREIGN KEY (`Id_detallep`) REFERENCES `tbl_pedidos` (`Id_pedidos`),
  ADD CONSTRAINT `id_produ_inve_term` FOREIGN KEY (`Id_detallep`) REFERENCES `tbl_inventario_term` (`Id_produc_term`);

--
-- Filtros para la tabla `tbl_distritos`
--
ALTER TABLE `tbl_distritos`
  ADD CONSTRAINT `distrito_zona` FOREIGN KEY (`Id_zonas`) REFERENCES `tbl_zonas` (`Id_zonas`);

--
-- Filtros para la tabla `tbl_empleados`
--
ALTER TABLE `tbl_empleados`
  ADD CONSTRAINT `empleado-cargo` FOREIGN KEY (`cargo_empleados`) REFERENCES `tbl_cargo` (`Id_cargo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_pedidos`
--
ALTER TABLE `tbl_pedidos`
  ADD CONSTRAINT `Id_cliente` FOREIGN KEY (`Id_pedidos`) REFERENCES `tbl_clientes` (`Id_clientes`),
  ADD CONSTRAINT `Id_empleado` FOREIGN KEY (`Id_empleados`) REFERENCES `tbl_empleados` (`Id_empleados`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_rutas`
--
ALTER TABLE `tbl_rutas`
  ADD CONSTRAINT `Id_circuito` FOREIGN KEY (`Id_rutas`) REFERENCES `tbl_circuitos` (`Id_circuitos`),
  ADD CONSTRAINT `Id_clientes` FOREIGN KEY (`Id_rutas`) REFERENCES `tbl_clientes` (`Id_clientes`),
  ADD CONSTRAINT `Id_empleados` FOREIGN KEY (`Id_empleados`) REFERENCES `tbl_empleados` (`Id_empleados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_detallepedidos` FOREIGN KEY (`Id_rutas`) REFERENCES `tbl_detallepedidos` (`Id_detallep`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
