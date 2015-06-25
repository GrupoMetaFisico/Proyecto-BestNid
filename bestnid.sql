-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2015 a las 21:59:35
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bestnid`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'Ropa y Accesorios'),
(2, 'Animales'),
(3, 'Antiguedades'),
(4, 'Alimentos'),
(5, 'Otros'),
(6, 'Tecnologia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE IF NOT EXISTS `comentario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contenido` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `respuesta` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`id`, `contenido`, `respuesta`, `id_producto`, `id_usuario`) VALUES
(1, 'Hola que buenos guantes!', '', 1, 1),
(7, 'QUIERO ESTA LLAMA YA!', '', 2, 1),
(9, 'No lo encontraba por ningun lado ', '', 6, 1),
(10, 'Excelente Celular!\r\nSaludos', '', 6, 1),
(11, 'Como que no incluye frascos?', 'No, vienen en bolsitas de plastico', 5, 1),
(12, 'Hola lo quiero!', 'Podes darle a "Comprar" si es que lo queres!', 5, 1),
(13, 'Que bueno!', '', 5, 1),
(14, 'Es un espejo? Es un cuadro nada mas eso! ', '', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `estado` smallint(6) NOT NULL,
  `fecha_ini` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `titulo`, `foto`, `descripcion`, `estado`, `fecha_ini`, `fecha_fin`, `id_categoria`, `id_usuario`) VALUES
(1, 'Guantes de Acero', 'fotos/1.jpg', 'Guante de malla de acero inox. tejido, anticorte, marca *manulatex* de industria francesa\r\n', 2, '2015-05-20', '2015-06-20', 1, 1),
(2, 'Llama', 'fotos/2.jpg', 'Llama adulta oriunda de Tilcara. Es mansita\r\n', 1, '2015-05-13', '2015-06-13', 2, 1),
(3, 'Espejo', 'fotos/20150623124958.jpg', 'Marco sin espejo. Medidas: 0.8m x 1.2m', 0, '2015-05-27', '2015-06-27', 3, 1),
(4, 'Kriptonita', 'fotos/20150623125704.jpg', '200 gramos de Kriptonita Pura', 0, '2015-05-25', '2015-06-25', 5, 1),
(5, 'Aceite y Vinagre', 'fotos/6.jpg', '200ml de aceite y 300ml de vinagre. No incluye fascos', 2, '2015-05-16', '2015-06-16', 4, 1),
(6, 'Nexus 4', 'fotos/5.jpg', 'El LG Nexus 4 desarrollado junto con Google. Posee un procesador quad-core Snapdragon S4 Pro a 1.5GHz, pantalla WXGA True HD IPS Plus de 4.7 pulgadas, 2GB de RAM, camara trasera de 8 megapixels, camara frontal de 1.3 megapixels y bateria de 2100mAh. Ademas, posee soporte NFC, y carga inalambrica, aunque no es LTE sino que esta limitado a HSPA+.', 0, '2015-05-28', '2015-06-28', 6, 1),
(7, 'Hamburguesa', 'fotos/20150623035755.jpg', 'Una rica y deliciosa Hamburguesa con la mejor carne Argentina', 0, '2015-06-22', '2015-07-22', 4, 1),
(8, 'Zapatillas Nike Air Futurun 2 ', 'fotos/20150623041930.jpg', 'Zapatillas Nike Perfectas para ir a correr un dia de mucho frio', 0, '2015-06-22', '2015-07-17', 1, 4),
(9, 'Boxer Atigrado', 'fotos/20150623093829.jpg', 'Perros fieles si los hay los boxers, este cachorro tiene 4 meses.', 0, '2015-06-23', '2015-07-23', 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `apellido` varchar(45) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `user` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `pass` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tarjeta_credito` int(11) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `documento`, `user`, `pass`, `email`, `tarjeta_credito`, `admin`) VALUES
(1, 'Nicolas', 'Banegas', 38706949, 'banegasn', '1144', 'nicobanegas.sc@gmail.com', 123456789, 0),
(3, 'Fermin', 'Minetto', 1234, 'minettof', '1144', 'd@g', 1234, 1),
(4, 'Leandro', 'Mariperisena', 1234, 'mariperisenal', '1144', '24@sds', 1234, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE IF NOT EXISTS `venta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `monto` double NOT NULL,
  `motivo` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
  /*FULLTEXT KEY `motivo` (`motivo`)*/
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
