-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-03-2020 a las 01:29:37
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemabiblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `nombre`) VALUES
(9, 'Administracion Financiera'),
(10, 'Gastronomia'),
(11, 'Desarrollo De Software'),
(12, 'Marketin'),
(13, 'Seguridad '),
(14, 'Ingles'),
(15, 'Contabilidad'),
(16, 'Tesis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadolibro`
--

CREATE TABLE `estadolibro` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoprestamo`
--

CREATE TABLE `estadoprestamo` (
  `id_estado` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estadoprestamo`
--

INSERT INTO `estadoprestamo` (`id_estado`, `nombre`) VALUES
(0, 'Entregado'),
(1, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoslibro`
--

CREATE TABLE `estadoslibro` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estadoslibro`
--

INSERT INTO `estadoslibro` (`id`, `descripcion`) VALUES
(1, 'Prestado'),
(2, 'Disponible'),
(3, 'Extraviado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lectores`
--

CREATE TABLE `lectores` (
  `id_lectores` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `ci` varchar(10) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `id_tipolector` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lectores`
--

INSERT INTO `lectores` (`id_lectores`, `nombres`, `apellidos`, `ci`, `telefono`, `direccion`, `estado`, `id_tipolector`) VALUES
(18, 'Javier', 'VG', '0504361809', '09790405982', 'Pujili', 0, 1),
(25, 'javier', 'VG', '0504361803', '09790405982', 'Pujili', 0, 1),
(26, 'javier', 'VG', '0504361804', '09790405982', 'Pujili', 0, 1),
(29, 'Kevin Javier', 'VG', '0504361801', '09790405982', 'Pujili', 0, 1),
(30, 'Kevin ', 'Velasque', '0504361800', '09790405982', 'Pujilix', 0, 1),
(32, 'Kevin ', 'Velasque', '0504361805', '09790405982', 'Pujilix', 0, 2),
(33, 'Kevin ', 'Velasque', '0504361808', '09790405982', 'Pujili', 0, 1),
(34, 'willan', 'Chango', '0503842981', '0998068540', 'Mulalo', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id_libros` int(11) NOT NULL,
  `codigo_libro` varchar(20) NOT NULL,
  `isbn_libro` varchar(200) NOT NULL,
  `titulo_libro` varchar(150) NOT NULL,
  `stock_libro` varchar(10) NOT NULL,
  `autor_libro` varchar(150) NOT NULL,
  `publicacion_libro` year(4) NOT NULL,
  `editorial_libro` varchar(250) NOT NULL,
  `ediccion_libro` varchar(250) NOT NULL,
  `idioma_libro` varchar(200) NOT NULL,
  `ejemplares_libro` int(11) NOT NULL,
  `prestados_libro` int(10) NOT NULL,
  `id_facultad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_libros`, `codigo_libro`, `isbn_libro`, `titulo_libro`, `stock_libro`, `autor_libro`, `publicacion_libro`, `editorial_libro`, `ediccion_libro`, `idioma_libro`, `ejemplares_libro`, `prestados_libro`, `id_facultad`) VALUES
(4, 'ISTVL-ADFI-ECONO01', '970-10-5381', 'Economía', '1', 'Samuelson Nordhaus', 2006, 'Mc Graw Hill', '18', 'Español', 1, 0, 9),
(5, 'ISTVL-ADFI-TGADMI02', '978-970-817-087-1', 'Teoría General de la Administración', '1', 'Zavarías Torres Hernández', 2007, 'Grupo Editorial Patria', '1', 'Español', 1, 0, 9),
(6, 'ISTVL-ADFI-FADFI03', '978-970-24-0039-4', 'Fundamentos de Administración Financiera', '1', 'Eugene f. Brigham y Joel F. Houston', 2011, 'Grupo Editorial Patria', '8', 'Español', 1, 0, 9),
(7, 'ISTVL-ADFI-PLANFI04', '978-607-438-216-7', 'Planeación Financiera', '1', 'Arturo Morales Castro y José Antonio Morales Castro', 2010, 'Grupo Editorial Patria', '1', 'Español', 1, 0, 9),
(8, 'ISTVL-ADFI-FINA05', ' 978-607-438-055-2', 'Finanzas', '1', 'José Antonio Morales Castro', 2009, 'Grupo Editorial Patria', '1', 'Español', 1, 0, 9),
(9, 'ISTVL-ADFI-EFEM06', '978-607-438-203-7', 'Estrategías Financieras Empresariales', '1', 'Alberto García Nava y Ludgar Meling Paredes Hernádez', 2010, 'Grupo Editorial Patria', '1', 'Español', 1, 0, 9),
(10, 'ISTVL-ADFI-ESFICON07', '978-938-648-555-5', 'Estados Financieros Consolidados', '1', 'Ángel María Fierro Martínez', 2010, 'Ecoe Ediciones Ltda.', '2', 'Español', 1, 0, 9),
(11, 'ISTVL-ADFI-OBINT08', '978-958-643-522-7', 'Operaciones Bancarias Internacionales', '1', 'Ángel María Fierro Martínez', 2007, 'Ecoe Ediciones Ltda.', '5', 'Español', 1, 0, 9),
(12, 'ISTVL-ADFI-GEPR09', '978-958-762-165-5', 'Gestión de Proyectos', '1', 'Raquel Campo Arraz, María del Campo Domínguez', 2014, 'Ediciones de la U', '1', 'Español', 1, 0, 9),
(13, 'ISTVL-GAST-PMSG01', '978-9978-22-818-0', 'Plantas Medicinales de Salinas de Guaranda', '2', 'Monserrat Rios, Victor Yanchaliquin, otros', 2009, 'Abya-Yala', '1', 'Español', 1, 0, 10),
(14, 'ISTVL-GAST-ERC02', '978-9942-11-745-8', 'El Repertorio de la Cocina', '2', 'Louis Saulnier', 2012, 'Octupuslab', '1', 'Español', 1, 0, 10),
(15, 'ISTVL-GAST-EPA03', '978-958-8789-74-5', 'El Poder del Alimento', '2', 'Boris Chamás', 2014, 'Nomos ', '1', 'Español', 1, 0, 10),
(16, 'ISTVL-GAST-INE04', 'ISBN: 0-8213-7042-1 ISBN 13: 978-0-8213-7042-1', 'Insuficiencia Nutricional en el Ecuador', '2', 'Banco Mundial\r\n', 2007, 'Copyright', '1', 'Español', 1, 0, 10),
(17, 'ISTVL-GAST-LCP05', 'ISBN: 978-9972-62-552-7', 'La Cocina Peruana', '2', 'Lexus Editores', 2012, 'Lexus', '1', 'Español', 1, 0, 10),
(18, 'ISTVL-GAST-P06', 'ISBN: 978-1-40-75-2716-1', 'Pasta', '2', 'Christine France', 2008, 'Parragon Books', '1', 'Español', 1, 0, 10),
(19, 'ISTVL-GAST-LPC07', 'ISBN: 978-9974-696-72-3', 'La Panaderia en Casa', '2', 'Juan Mariano de Diego', 2012, 'Arquetipo Grupo Editorial', '1', 'Español', 1, 0, 10),
(20, 'ISTVL-GAST-P08', 'ISBN: 978-607-404-255-9', 'Pollo', '2', 'Chuck Williams ', 2012, 'Williamns-Sonoma', '1', 'Español', 1, 0, 10),
(21, 'ISTVL-GAST-S09', 'ISBN: 978-607-404-250-4', 'Sopas', '2', 'Chuck Williams ', 2012, 'Williamns-Sonoma', '1', 'Español', 1, 0, 10),
(22, 'ISTVL-GAST-S10', 'ISBN: 978-607-404-252-8', 'Salsas', '2', 'Chuck Williams ', 2012, 'Williamns-Sonoma', '1', 'Español', 1, 0, 10),
(23, 'ISTVL-GAST-AH11', 'ISBN: 978-607-404-243-6', 'Al Horno', '2', 'Chuck Williams ', 2012, 'Williamns-Sonoma', '1', 'Español', 1, 0, 10),
(24, 'ISTVL-GAST-PA12', 'ISBN: 978-958-45-2275-7', 'Parrillada de Aves', '2', 'Mónica Oviedo Torreblanca', 2010, 'Norma', '1', 'Español', 1, 0, 10),
(25, 'ISTVL-GAST-PM13', 'ISBN: 978-1-454-0673-2', 'Pescado y Mariscos', '2', 'Parragon', 2010, 'The Bridgewater Book Company Ltd.', '1', 'Español', 1, 0, 10),
(26, 'ISTVL-GAST-PC14', 'ISBN: 978-9962-04-085-9', 'Pastelería Creativa', '2', 'Juan Mariano de Diego', 2013, 'B.T International', '1', 'Español', 1, 0, 10),
(27, 'ISTVL-GAST-B15', 'ISBN: 978-9972-625-91-6', 'Buffet', '2', 'Lexus Editores', 2013, 'B.T International', '1', 'Español', 1, 0, 10),
(28, 'ISTVL-GAST-LMRDR16', 'ISBN: 978-9962-04-037-8', 'Las Mejores Recetas de Reposteria', '2', 'Lexus Editores', 2011, 'Grafos', '1', 'Español', 1, 0, 10),
(29, 'ISTVL-GAST-E17', 'ISBN: 978-9972-209-96-3', 'Ensaladas', '2', 'Lexus Editores', 2012, 'Egedsa', '1', 'Español', 1, 0, 10),
(30, 'ISTVL-GAST-CH18', 'ISBN: 978-9972-625-70-1', 'Chifa', '2', 'Lexus Editores', 2011, 'B.T International', '', 'Español', 1, 0, 10),
(31, 'ISTVL-GAST-CM19', 'ISBN: 978-9962-04-054-5', 'Cocina Mediterranea', '2', 'Lexus Editores', 2012, 'B.T International', '', 'Español', 1, 0, 10),
(38, 'ISTVL-GAST-DT20', ' 13-978-987-608-048-4', 'Decoración de Tortas y Sowerirs', '2', 'Lexus Editores', 2013, 'Egedsa', '1', 'Español', 1, 0, 10),
(39, 'ISTVL-GAST-TFV21', 'ISBN: 978-9972-209-83-3', 'Tallado de Frutas y Verduras', '2', 'Lexus Editores', 2010, 'B.T International', '1', 'Español', 1, 0, 10),
(40, 'ISTVL-GAST-PMDT22', 'ISBN: 978-9972-209-75-8', 'Pastillaje lo Mejor en Decoración de Tortas', '2', 'Lexus Editores', 2014, 'B.T International', '1', 'Español', 1, 0, 10),
(41, 'ISTVL-GAST-LCPL23', 'ISBN: -13:9780-71148-63719', 'La Cuchara de Plata', '2', 'Michelle Lo', 2007, 'Phaidon', '1', 'Español', 1, 0, 10),
(42, 'ISTVL-GAST-TPWP24', 'ISBN: 978-9974-8220-3-0', 'Todo a la Parrilla Work y Plancha', '2', 'Jorge Oyenard', 2009, 'EME', '1', 'Español', 1, 0, 10),
(43, 'ISTVL-GAST-PL25', 'ISBN: 978-9974-82-02-6-5', 'Parrilla Laight y Vegetariana', '2', 'Jorge Oyenard', 2009, 'EME', '1', 'Español', 1, 0, 10),
(44, 'ISTVL-GAST-AP26', 'ISBN: 978-958-45-2274-0', 'Acompañamiento a la Parrilla', '2', 'Mónica Oviedo Torreblanca', 2010, 'Norma', '1', 'Español', 1, 0, 10),
(45, 'ISTVL-GAST-CRP27', 'ISBN: 978-958-45-2279-5', 'Comidas Rapidas a la Parrilla', '2', 'Mónica Oviedo Torreblanca', 2010, 'Norma', '1', 'Español', 1, 0, 10),
(46, 'ISTVL-GAST-V28', 'ISBN: 978-607-7965-33-0', 'Verduras', '2', 'Marlena Spieler', 2011, 'Cordillera', '1', 'Español', 1, 0, 10),
(47, 'ISTVL-GAST-EEQ29', 'ISBN: 978-974-709-52-2', 'Entradas y Ensaladas Queso', '2', 'Camila Selves', 2012, 'EME', '1', 'Español', 1, 0, 10),
(48, 'ISTVL-GAST-RC30', 'ISBN; 978-612-300-206-0', 'Roscas y Croissants', '2', 'Fabiana Artagaveytia', 2013, 'EME', '1', 'Español', 1, 0, 10),
(49, 'ISTVL-GAST-EFV31', 'ISBN: 978-9972-209-83-3\r\n', 'Escultura en Frutas y Verduras\r\n', '2', 'Lexus Editores\r\n', 2009, 'Grafos\r\n', '1', 'Español\r\n', 1, 0, 10),
(50, 'ISTVL-GAST-EFL32', 'ISBN: 978-9974-709-51-5\r\n', 'Ensaladas Frescas y Light\r\n', '2', 'Camila Selves\r\n', 2012, 'EME\r\n', '1', 'Español', 1, 0, 10),
(51, 'ISTVL-GAST-GC33', 'ISBN: 978-612-300-203-9\r\n', 'Grisines y crocantes\r\n', '2', 'Fabiana Artagaveytia\r\n', 2013, 'EME\r\n', '1', 'Español', 1, 0, 10),
(52, 'ISTVL-GAST-AIF34', 'Ref.851-54\r\n', 'Atlas ilustrado de las frutas\r\n', '2', 'Ana Doblado\r\n', 0000, 'Susaeta\r\n', '', 'Español', 1, 0, 10),
(53, 'ISTVL-SOFT-PROLE01', 'ISBN: 978-9972-2951-4-0\r\n', 'Programación con Lenguaje\r\n', '3', 'Rubén luna villavicencio\r\n', 2007, 'Servilibros\r\n', '1', 'Español', 1, 0, 11),
(54, 'ISTVL-SOFT-ENCIAUDED', 'ISBN: 84-494-0341-5\r\n', 'Enciclopedia Audiovisual-Educativa 1\r\n', '3', 'Grupo edutorial oceano uno\r\n', 2001, 'Oceano uno\r\n', '1', 'Español', 1, 0, 11),
(55, 'ISTVL-SOFT-ENCIAUDED', 'ISBN: 84-494-0342-1\r\n', 'Enciclopedia Audiovisual-Educativa 2\r\n', '3', 'Grupo edutorial oceano uno\r\n', 2001, 'Oceano uno\r\n', '2', 'Español', 1, 0, 11),
(56, 'ISTVL-SOFT-ENCINFO04', 'ISBN: 84-8055-198-4\r\n', 'Enciclopedia de Informatica y Computación\r\n', '3', 'Cettico\r\n', 1997, 'Cultural s.a.\r\n', '1', 'Español', 1, 0, 11),
(57, 'ISTVL-SOFT-DESASUS05', 'ISBN: 978-607-15-05-56-9\r\n', 'Desarrollo Sustentable\r\n', '3', 'Reynold díaz coutiño\r\n', 2011, 'Mc. Graw hill\r\n', '2', 'Español', 1, 0, 11),
(58, 'ISTVL-SOFT-MATBALD40', 'ISBN: 978-956-311-209-2\r\n', 'Matemática Facil con Baldor 4 Algebra\r\n', '3', 'S/N', 2012, 'S/N', '4', 'S/N', 1, 0, 11),
(59, 'ISTVL-SOFT-MATFBALD5', 'ISBN: 978-956-311-210-8\r\n', 'Matemática Facil con Baldor 5 Algebra\r\n', '3', 'S/N', 2012, 'S/N', '', 'Español', 1, 0, 11),
(60, 'ISTVL-SOFT-MATFBALD2', 'ISBN: 978-956-311-213-9\r\n', 'Matemática Facil con Baldor 2 Aritmética\r\n', '3', 'S/N', 2012, 'S/N', '', 'S/N', 1, 0, 11),
(61, 'ISTVL-SOFT-SMPRO10', 'ISBN:9978-54-043-1\r\n', 'Seri Matemática Progresiva\r\n', '3', 'Nelson londoño. Hernando bedoya\r\n', 1997, 'Norma', '2', 'Español', 1, 0, 11),
(62, 'ISTVL-SOFT-MATFBALD6', 'ISBN: 978-956-311-711-5\r\n', 'Matemática Facil con Baldor 6 Algebra\r\n', '3', 'S/N', 2012, 'S/N', '', 'S/N', 1, 0, 11),
(63, 'ISTVL-SOFT-MATFBALD3', 'ISBN: 978-956-311-208-5', 'Matemática Facil con Baldor 3 Algebra', '3', 'S/N', 2012, 'S/N', '', 'S/N', 1, 0, 11),
(64, 'ISTVL-SOFT-VISB13', 'ISBN: 978-612-304-098-7', 'Visual Basic 2012', '3', 'Lic. Manuel a. Torres remon', 2013, 'Macro', '1', 'Español', 1, 0, 11),
(65, 'ISTVL-SOFT-LENPRO14', 'ISBN: 978-612-4034-49-7', 'Lenguaje de Programación Java', '3', 'Eric gustavo coronel castillo', 2010, 'Macro', '1', 'Español', 1, 0, 11),
(66, 'ISTVL-SOFT-PHP15', 'ISBN: 978-612-4034-96-1', 'PHP Profesional', '3', 'Eric gustavo coronel castillo', 2010, 'Macro', '1', 'Español', 1, 0, 11),
(67, 'ISTVL-SOFT-SQLS16', 'ISBN: 978-612-304-084-0', 'SQL Server 2012', '3', 'Lic. Manuel a. Torres remon', 2012, 'Macro', '1', 'Español', 1, 0, 11),
(68, 'ISTVL-SOFT-DESAAPLI1', 'ISBN: 978-612-304-101-4', 'Desarrollo de Aplicación Java', '3', 'Lic. Manuel a. Torres remon', 2013, 'Macro', '1', 'Español', 1, 0, 11),
(69, 'ISTVL-SOFT-HACRA18', 'ISBN: 978-612-304-114-4', 'Hacking & Cracking', '3', 'Hegel broy de la cruz paisig', 2013, 'Macro', '1', 'Español', 1, 0, 11),
(70, 'ISTVL-SOFT-DESAAPLI1', 'ISBN: 978-612-304-106-9', 'Desarrollo de Aplicaciones Móviles Android', '3', 'Jorge nolasco valenzuela', 2013, 'Macro', '1', 'Español', 1, 0, 11),
(71, 'ISTVL-SOFT-AUCAD20', 'ISBN: 978-612-304-189-2', 'Auto Cad 2014', '3', 'Oscar carranza zabala', 2013, 'Macro', '1', 'Español', 1, 0, 11),
(72, 'ISTVL-SOFT-REIP21', 'ISBN: 978-612-304-105-2', 'Retoque y Edite Imágenes con Photoshop CS6', '3', 'Empresa edit. Macro eirl', 2013, 'Macro', '1', 'Español', 1, 0, 11),
(73, 'ISTVL-SOFT-FUDIF22', 'ISBN: 978-612-304-086-4', 'Fundamentos de Diseño Web Flash CS6', '3', 'Empresa edit. Macro eirl', 2012, 'Macro', '1', 'Español', 1, 0, 11),
(74, 'ISTVL-SOFT-CTEX23', 'ISBN: 978-612-304-128-1', 'Reconoce y Trabaja con Excel 2013', '3', 'Empresa edit. Macro eirl', 2013, 'Macro', '1', 'Español', 1, 0, 11),
(75, 'ISTVL-SOFT-CCNA24', 'ISBN: 978-612-4034-36-7', 'CCNA Exploration', '3', 'Empresa edit. Macro eirl', 2009, 'Macro', '1', 'Español', 1, 0, 11),
(85, 'ISTVL-GAST-DT20', 'ISBN: 13-978-987-608-048-4', 'Decoración de Tortas y Sowerirs', '2', 'Lexus Editores', 2013, 'Egedsa', '1', 'Español', 1, 0, 10),
(86, 'ISTVL-SOFT-DISEAP25', 'ISBN: 978-612-304-124-3', 'Los Dispositivos Electr¢nicos y sus Aplicaciones', '3', 'Ing. Juan f. Tisza c.', 2013, 'Macro', '1', 'Espa¤ol', 1, 0, 11),
(87, 'ISTVL-SOFT-WINDU26', 'ISBN: 978-84-329-0077-8', 'Windows para Dummies 8', '3', 'Andy rathbone', 2013, 'Planeta colombiana s.a.', '1', 'Espa¤ol', 1, 0, 11),
(88, 'ISTVL-SOFT-ALEM27', 'ISBN: 9978-80-134-0', 'Algebra Elemental Moderna Vol.1', '3', 'M.o. gonzalez /j.d. mancill', 2002, 'Libresa', '1', 'Espa¤ol', 1, 0, 11),
(89, 'ISTVL-SOFT-ALEM28', 'ISBN: 9978-80-136-7', 'Algebra Elemental Moderna Vol.2', '3', 'M.o. gonzalez /j.d. mancill', 2001, 'Libresa', '2', 'Espa¤ol', 1, 0, 11),
(90, 'ISTVL-SOFT-COMPWI29', 'ISBN: 978-84-9899-452-0', 'Computer & Web Internet', '3', 'Dizain, maria soler sola', 2010, 'Sol90', '1', 'Espa¤ol', 1, 0, 11),
(91, 'ISTVL-SOFT-COMPWW30', 'ISBN: 978-84-9899-444-5', 'Computer & Web Word', '3', 'Dizain, maria soler sola', 2010, 'Sol90', '1', 'Espa¤ol', 1, 0, 11),
(92, 'ISTVL-SOFT-COMPW7APP', 'ISBN: 978-84-9899-442-1', 'Computer & Web Windows 7 Aplicaciones para todos.', '3', 'Dizain, maria soler sola', 2010, 'Sol90', '1', 'Espa¤ol', 1, 0, 11),
(93, 'ISTVL-SOFT-COMPW7OPB', 'ISBN: 978-84-9899-451-3', 'Computer & Web Windows 7 Operaciones Basicas', '3', 'Dizain, maria soler sola', 2010, 'Sol90', '1', 'Espa¤ol', 1, 0, 11),
(94, 'ISTVL-MARK-ITGA 01', 'ISBN: 978-607-15-0980-2', 'Introducci¢n a la Teor¡a General de la Administraci¢n', '4', 'Idalberto Chiavento', 2014, 'Mc Graw Hill', '8', 'Espa¤ol', 1, 0, 12),
(95, 'ISTVL-MARK-NM 02', 'ISBN: 978-958-42-9171-9 ISBN: 958-42-4171-0', 'Neuro Marketing', '4', 'Nestor Braidot', 2014, 'Gesti¢n 2000', '1', 'Espa¤ol', 1, 0, 12),
(96, 'ISTVL-MARK-IMP 03', 'ISBN: 9972-32-108-8', 'Imagen y Marketing Personal', '4', 'Ra£l Carrizales N.', 2005, 'Palomino', '1', 'Espa¤ol', 1, 0, 12),
(97, 'ISTVL-MARK-GTH 04', 'ISBN: 978-970-10-7340-7', 'Gesti¢n de Talento Humano', '4', 'Idalberto Chiavento', 2009, 'Mc Graw Hill', '3', 'Espa¤ol', 1, 0, 12),
(98, 'ISTVL-MARK-NRMV 05', 'ISBN: 978-958-45-4084-3', 'Las Nuevas Reglas del Marketing Verde', '4', 'Jacquelyn Ottman', 2013, 'Norma', '1', 'Espa¤ol', 1, 0, 12),
(99, 'ISTVL-MARK-AA 06', 'ISBN: 978-607-32-1833-7', 'Auditoria Administrativa', '4', 'Enrique Benjam¡n Franklin', 2013, 'Pearson', '1', 'Espa¤ol', 1, 0, 12),
(100, 'ISTVL-MARK-IENE 07', 'ISBN: 978-607-438-329-4', 'Ingenier¡a Econ¢mica Nuevo Enfoque', '4', 'Victor Manuel Alvarado V.', 2011, 'Grupo Editorial Patria', '1', 'Espa¤ol', 1, 0, 12),
(101, 'ISTVL-GAST-LMRDR16', ' 978-9962-04-037-8', 'Las Mejores Recetas de Reposteria', '2', 'Lexus Editores', 2011, 'Grafos', '1', 'Español', 1, 0, 10),
(102, 'ISTVL-MARK-GPET 20', '9978-345-26-4\r\n', 'Guia Practica para la Elaboración de Tesis\r\n', '4', 'Msc. Campo Elías Aguilar P.\r\n', 2008, 'Propad\r\n', '1', 'Español', 1, 0, 12),
(103, 'ISTVL-MARK-SPANM 21', '978-9972-239-229\r\n', 'Su Primer año en el Network Marketing\r\n', '4', 'Mark Yarnell y Rene Reíd Yarnell\r\n', 2001, 'Time & Money Network Editions\r\n', '1', 'Español', 1, 0, 12),
(104, 'ISYVL-MARK-DPGEEML 2', '978-9942-01-935-6\r\n', 'Diseño de Proyectos de Gestión Educativa con Enfoque Marco Lógico\r\n', '4', 'Patricio Baquero y Freddy Rdríguez\r\n', 2009, '', '', 'Español', 1, 0, 12),
(105, 'ISYVL-MARK-NLV', 'ISBN: 978-970-817-070-3\r\n', 'El Nuevo Lenguaje de las Ventas\r\n', '4', 'Terri L. Sjodin\r\n', 2012, 'Grupo Editorial Patria, S.A. DE C.V.\r\n', '1', 'Español', 1, 0, 12),
(106, 'ISTVL-SHT-AHFHG 01 ', '40-279-9\r\n', 'Anatomia Humana Fisiologia  e Higiene Generalidades\r\n', '5', 'Marco Chiriboga Villaquirán\r\n', 2008, 'Editora Panorama\r\n', '4', 'Español', 1, 0, 13),
(107, 'ISTVL-SHT-DDMI 02', '84-8174-255-4\r\n', 'Diagnostico Diferencial en Medicina Interna\r\n', '5', 'Francisco Javier Laso Guzmán\r\n', 1997, 'Harcourt Brace\r\n', '9', 'Epañol', 1, 0, 13),
(108, 'ISTVL-SHT-TPR 03', '9978-40-440-6\r\n', 'Teoría y Problemas Resueltos\r\n', '5', 'Profesores del curso propedéutico de la Escuela Politécnica Nacional\r\n', 2002, 'PrepoFis\r\n', '3', 'Español', 1, 0, 13),
(109, 'ISTVL-SHT-Q2 04', '958-04-0156-1\r\n', 'Quimica 2\r\n', '5', 'Severiano Herrera, Aura Barreto, Ignacio Torres, Esperanza de Clavijo\r\n', 1958, 'Norma\r\n', '1', 'Español', 1, 0, 13),
(110, 'ISTVL-SHT-SHIGR 05', '978-958-682-836-9\r\n', 'Seguridad e Higiene Industrial Gestion de Riesgos\r\n', '5', 'Mario Mancera, María Mancera, Mario Ramón y Juan Mancera\r\n', 2013, 'Alfaomega\r\n', '2', 'Español', 1, 0, 13),
(111, 'ISTVL-SHT-TPRA 06', '978-84-7360-978-9\r\n', 'Técnicas de Prevención de Riesgos Laborables\r\n', '5', 'José María Cortéz Díaz\r\n', 2012, 'Tébar\r\n', '10', 'Español', 1, 0, 13),
(112, 'ISTVL-SHT-SIAS 07', '978-607-442-940-4\r\n', 'Seguridad Industrial y Administración de la Salud\r\n', '5', 'C. Ray Asfahl y David W. Rieske\r\n', 2010, 'Pearson\r\n', '6', 'Español', 1, 0, 13),
(113, 'ISTVL-SHT-FSD 08', '978-607-707-317-8\r\n', 'Fundamentos Sustentabilidad Diseño\r\n', '5', 'James R.Mihelcic - Julie Beth Zimmerman\r\n', 2012, 'Alfaomega\r\n', '1', 'Español', 1, 0, 13),
(114, 'ISTVL-SHT-ACH 09', '84-994-3196-8\r\n', 'Atlas del Cuerpo Humano\r\n', '5', 'Grupo Océano\r\n', 2012, 'Océano\r\n', '1', 'Español', 1, 0, 13),
(125, 'ISTVL-MARK-DME 19', '9978-43-164-0\r\n', 'Desarrollo de la Mentalidad Empresarial\r\n', '4', 'Ing. Roberto Páez N.\r\n', 2006, 'Propad\r\n', '1\r\n', 'Español', 1, 0, 12),
(130, 'ISTVL-SHT-AHDTF 10', 'ISBN: 84-311-0403-1', 'Anatomia Humana Descriptiva Topografica y Funcional', '5', 'H. Rouviere - A. Delmas', 1987, 'Masson', '9', 'España', 1, 0, 13),
(131, 'ISTVL-SHT-SO 11', '978-988-762-001-6', 'Salud Ocupacional', '5', 'Francisco Álvarez - Enriqueta Faizal ', 2012, 'Ediciones de la U', '1', 'Colombia', 1, 0, 13),
(132, 'ISTVL-SHT-SST 12', '978-958-648-866-2', 'Seguridad Salud en el Trabajo', '5', 'Fernando Henao Robledo', 2013, 'Ecoe Ediciones', '3', 'Colombia', 1, 0, 13),
(133, 'ISTVL-SHT-RTBRSM 13', '978-9942-02-725-2', 'Reciclaje y Tratamiento Biologico de los Residuos', '5', 'Luis F. Díaz - Carmen Elena de Janon', 2010, 'Earthgreen', '1', 'Ecuador', 1, 0, 13),
(134, 'ISTVL-SHT-CAA 14', '978-89-7360-480-2', 'Cuestionario de Autoevaluación y Aprendizaje', '5', 'José María Cortés Díaz', 2012, 'Tébar', '4', 'España', 1, 0, 13),
(135, 'ISTVL-SHT-SO 15', '978-958-648-575-3', 'Seguridad Ocupacional', '5', 'Raúl Felipe Trujillo Mejía', 2009, 'Ecoe Ediciones', '5', 'Colombia', 1, 0, 13),
(136, 'ISTVL-SHT-PD  16', '978-9942-02-781-8', 'Pie Diabético', '5', 'Juan Francisco Belancázar Freire', 2010, 'Artegráfico', '1', 'Ecuador', 1, 0, 13),
(137, 'ISTVL-SHT-DM 17', '978-84-7101-886-1', 'Diccionario Medico', '5', 'Harper Collins', 2013, 'Marbán', '1', 'España', 1, 0, 13),
(138, 'ISTVL-SHT-MLC 18', '84-89969-01-9', 'Montañismo la Libertad de las Cimas', '5', 'NN', 2001, 'Desnivel', '3', 'NN', 1, 0, 13),
(139, 'ISTVL-SHT-MPIAIL 19', '978-84-92735-17-4', 'Manual Practico para la Investigación de Accidentes e Incidentes Laborables', '5', 'Luis María Azcuénaga Lizana', 2009, 'Fundación Confemetal', '3', 'España', 1, 0, 13),
(140, 'ISTVL-SHT-GPIDPRA 20', '978-84-92735-59-4', 'Guia para la Implantación de un Sistema de Prevención de Riesgos Laborales', '5', 'Luis María Azcuénaga Lizana', 2010, 'Fundación Confemetal', '4', 'España', 1, 0, 13),
(141, 'ISTVL-SHT-DEG 21', ' 978-9998-385-30-2', 'Diccionario de Especialidades Gastroenterológicas', '5', 'PLM', 2012, 'La Unión', '1', 'Ecuador', 1, 0, 13),
(142, 'ISTVL-SHT-FA 22', '978-84-7101-551-8', 'Fracturas en el Adulto', '5', 'Robert W. Bucholz - James D. Heckman', 2007, 'Rockwood and Green\'s', '5', 'España', 1, 0, 13),
(143, 'ISTVL-SHT-LIVSMA 23', '978-958-762-187-7', 'Logistica Inversa y Verde Sostenibilidad y Medio Ambiente', '5', 'Miguel Rojas - Julie Pérez - Luis Jiménez', 2014, 'Ediciones de la U', '1', 'Colombia', 1, 0, 13),
(144, 'ISTVL- SHT-EEPT24', '978-84-283-3267-5', 'Evaluación Ergonómica de Puestos de Trabajo', '5', 'Sabina Asensio-Cuesta , M. José Bastante-Cesa, José Antonio Diego-Más', 2012, 'Ediciones Paraninfo', '1', 'España', 1, 0, 13),
(145, 'ISTVL-ENG-SHARC01', '978-1-59966-165-0', 'Short articles for reading comprehesion', '6', 'Ken methold', 2008, 'Compass publishing', '1', 'Usa', 1, 0, 14),
(146, 'ISTVL-ENG-NPFCTB02', '978-960-443-736-8', 'New Plus', '6', 'E. Moutssou- s. Parker', 0000, 'Mmpublications', '1', 'Usa', 1, 0, 14),
(147, 'ISTVL-ENG-ROSR03', '978-89-5997-350-7', 'Readig Saurce 1', '6', 'The core contents team', 2009, 'Build and grow', '1', 'Korea', 1, 0, 14),
(148, 'ISTVL-ENG-ROSR04', '978-89-5997-351-4', 'Readig Saurce', '6', 'The core contents team', 2009, 'Build and grow', '1', 'Korea', 1, 0, 14),
(149, 'ISTVL-ENG-ROSR05', '978-89-5997-352-1', 'Readig Saurce', '6', 'The core contents team', 2009, 'Build and grow', '1', 'Korea', 1, 0, 14),
(150, 'ISTVL-ENG-VGBS06', ' 0-590-05502-7', 'Eating the Alphabet', '6', 'Lois ehlert', 1989, 'Scholastic', '1', 'Usa', 1, 0, 14),
(151, 'ISTVL-ENG-SSDLPS07', '978-0-545-04180-5', 'Don´t Let the Pigeon Stay un Late', '6', 'Mo willems', 2007, 'Scholastic', '1', 'Usa', 1, 0, 14),
(152, 'ISTVL.ENG-SSGDI08', ' 978-0-454-01977-4', 'Grumpy Bird', '6', 'Jeremy tankard', 2007, 'Scholastic', '1', 'Usa', 1, 0, 14),
(153, 'ISTVL-ENG-SSMBAI09', '978-0-545-05597-0', 'Maybe A bear ate it!', '6', 'Robie h. Harris ', 2008, 'Orchard books', '1', 'Usa', 1, 0, 14),
(154, 'ISTVL-ENG-SSCHLL10', ' O- 439-42644-8', 'Chiken Little', '6', 'Laura rader', 1998, 'Scholastic', '1', 'Usa', 1, 0, 14),
(155, 'ISTVL-ENG-SSGCD11', '0-439-53947-1', 'Giarafes Cant Dance', '6', 'Purple enterprises', 1999, 'Scholastic', '1', 'Usa', 1, 0, 14),
(156, 'ISTVL-ENG-VP25', 'ISBN: 0521-75375-9', 'Vocabulary in Practice 3', '6', 'Glennis pye', 2003, 'Cambridge', '1', 'England', 1, 0, 14),
(157, 'ISTVL-ENG-TPOTO26', 'ISBN: 78-1-5-9066-325-8', 'The Plantom of the Opera', '6', 'Gaston leroux', 2009, 'Compass publishing', '1', 'Usa', 1, 0, 14),
(158, 'ISTVL-ENG-NN27', 'ISBN: 978-59966--337-1', 'Nicholas Nickeby', '6', 'Charles dickens', 2009, 'Compass publishing', '1', 'Usa', 1, 0, 14),
(159, 'ISTVL-ENG-TRCH28', 'ISBN: 978-1-59966-211-4', 'The Railway Children ', '6', 'Edith nesbit', 2009, 'Compass publishing', '1', 'Usa', 1, 0, 14),
(160, 'ISTVL-ENG-GP29', 'ISBN: 978-0-521-66566-3', 'Grammar in Practice 2', '6', 'Roger gower', 2002, 'Cambridge', '1', 'England', 1, 0, 14),
(161, 'ISTVL.ENG-E30', 'ISBN: 978-960-478-037-2', 'Excalibur ', '6', 'H.q. mitchell', 2006, 'Mmpublications', '1', 'Usa', 1, 0, 14),
(162, 'ISTVL-ENG-E31', 'ISBN: 978-960-443-038-3', 'Excalibur ', '6', 'H.q. mitchell', 2006, 'Mmpublications', '1', 'Usa', 1, 0, 14),
(163, 'ISTVL-ENG-E32', 'ISBN: 960-443-038-6', 'Excalibur ', '6', 'H.q. mitchell', 2006, 'Mmpublications', '1', 'Usa', 1, 0, 14),
(164, 'ISTVL-ENG-TMR33', 'ISBN: 978-960-379-717-3', 'The Magic Ring', '6', 'Moustsou and s. Parker', 2004, 'Mmpublications', '1', 'Usa', 1, 0, 14),
(165, 'ISTVL-ENG-TWOO34', 'ISBN: 978-960-478-163-8', 'The Wizard of Oz', '6', 'L. Frank baum', 2004, 'Mmpublications', '1', 'Usa', 1, 0, 14),
(166, 'ISTVL-ENG-TLOTM35', 'ISBN: 978-960-379-735-7', 'The Last of the monicans ', '6', 'J.f. cooper', 2002, 'Mmpublications', '1', 'N/N', 1, 0, 14),
(167, 'ISTVL-ENG-AOGG36', 'ISBN: 978-1-59-66-220-6', 'Anne of green Gables', '6', 'Lucy maud', 2009, 'Compass publishing', '1', 'Usa', 1, 0, 14),
(168, 'ISTVL-ENG-GIP37', 'ISBN: 978-0--52154042-1', 'Grammar in Practice 4', '6', 'Roger gower', 2005, 'Cambridge', '1', 'England', 1, 0, 14),
(170, 'ISTVL-ENG-FOCLB19', 'ISBN: 0-07398-9145-6', 'Focus on Science lebel B', '6', 'Harcourt achieve', 2004, 'Harcourt achiave', '1', 'Usa', 1, 0, 14),
(171, 'ISTVL- ENG- SWL20', 'ISB: 0-590-4300-49-1', 'Swinmy Leo Lion', '6', 'Leo lionni', 1989, 'Scholastic', '1', 'Usa', 0, 0, 9),
(172, 'ISTVL-ENG-BED21', 'ISBN: 978-1-4058-5259-3', 'Business English Dictionary', '6', 'Longman', 2000, 'Oxford', '1', 'England', 1, 0, 14),
(173, 'ISTVL-ENG-VGBS12', 'ISBN: 0-590-45\'30-1', 'Growing Vegetables Soup', '6', 'Lois ehlert', 1987, 'Scholastic', '1', 'Usa', 1, 0, 14),
(174, 'ISTVL-ENG-FMAFRTRP13', 'ISBN: 078-0-19-481358-7', 'Family and Friends', '6', 'Oxford', 0000, 'American english', '1', 'England', 1, 0, 14),
(175, 'ISTVL-ENG-FMAFRTRP14', 'ISBN: 978-0-19-481332-7', 'Family and Friends ', '6', 'Oxford', 0000, 'American english', '1', 'England', 1, 0, 14),
(176, 'ISTVL-ENG-LGR3X15', 'ISBN: 978-0-19-464220-0', 'Lets go 3', '6', 'Oxford', 0000, 'Oxford', '3', 'England', 1, 0, 14),
(177, 'ISTVL-ENG-LGR1X16', 'ISBN: 978-0-19-464200-2', 'Lets go 1', '6', 'Oxford', 0000, 'Oxford', '3', 'England', 1, 0, 14),
(178, 'ISTVL-ENG-LGR1X17', 'ISBN: 0978-019-464267-5', 'Lets go Begin', '6', 'Oxford', 0000, 'Oxford', '3', 'England', 1, 0, 14),
(179, 'ISTVL-ENG-HOWU18', 'ISBN: 13-978-0-739-949-8', 'History of our Word people, places,', '6', 'Hendry billings', 2004, 'Steck vaughn', '2', 'Usa', 1, 0, 14),
(183, 'ISTVL-ENG-SSTATE51', 'ISBN:0-03-043609-5', 'The Americas', '6', 'Christoper l. Salter', 2007, 'Holt social studies', '1', 'Ingles', 1, 0, 14),
(184, 'ISTVL-ENG-HTA52', 'ISBN:978-0-547-48482-2', 'The Americas', '6', 'Christoper l. Salter', 2012, 'Holt social studies', '1', 'Ingles', 1, 0, 14),
(185, 'ISTVL-ENG-GRS53', 'ISBN:978-0-19-436565-9', 'Grammar Sense', '6', 'Susan kesner bland', 2004, 'Susan kesner bland', 'Grammar Sense', 'Ingles', 1, 0, 14),
(186, 'ISTVL-ENG-GRSW54', 'ISBN:978-0-19-436618-2', 'Grammar Sense', '6', 'Tay lesley', 2004, 'Oxford', '1', 'Ingles', 1, 0, 14),
(187, 'ISTVL-ENG-HAFLA55', 'ISBN:0-7398-9218-5', 'Homes and families', '6', 'Harcourt achieve', 2005, 'Ateck vaughn', '1', 'Ingles', 1, 0, 14),
(188, 'ISTVL-ENG-SSIYMALL56', 'ISBN:0-590-44725-4', 'Is you mama a llama ', '6', 'Deborah guarina', 1989, 'Scholastic', '1', 'Ingles', 1, 0, 14),
(189, 'ISTVL-ENG-RDPK57', 'ISBN:978-89-5997-630-0', 'Reading Reak 1', '6', 'Ruben mitchell', 2011, 'Build and grow', '1', 'Ingles', 1, 0, 14),
(190, 'ISTVL-ENG-RDPK58', 'ISBN:978-89-5997-631-7', 'Reading Reak 2', '6', 'Angela lee', 2011, 'Build and grow', '1', 'Ingles', 1, 0, 14),
(191, 'ISTVL-ENG-RDPK59', 'ISBN:978-89-5997-630-4', 'Reading Reak 3', '6', 'Hallie wells', 2011, 'Build and grow', '1', 'Ingles', 1, 0, 14),
(192, 'ISTVL-ENG-TRTTHOS60', 'ISBN: 978-84-668-1593-2', 'The road through the hills and other stories', '6', 'Rod smith', 2012, 'Richmond', '1', 'Ingles', 1, 0, 14),
(193, 'ISTVL-ENG-TAOTS61', 'ISBN:978-84-668-1603-8', 'The adventures of tom sawyer', '6', 'Mark twain', 2012, 'Richmond', '1', 'Ingles', 1, 0, 14),
(194, 'ISTVL-ENG-TBFY62', 'ISBN: 978-668-1589-5', 'The boy from yesterday', '6', 'John davage', 2012, 'Richmond', '1', 'Ingles', 1, 0, 14),
(1573, 'ISTVL-ENG-FSF22', 'ISBN: 978-0-547-37260-0', 'Florida Science Fashion', '6', 'Houghton mifflin', 2012, 'Harcourt achiave', '1', 'Usa', 1, 0, 14),
(1574, 'ISTVL-ENG-VP23', 'ISBN: 13978-0-521-601-26-9', 'Vocabulary in Practice 6 ', '6', 'Liz driscoll', 2005, 'Cambridge', '1', 'England', 1, 0, 14),
(1585, 'ISTVL-ENG-VP24', 'ISBN: 13978-0-521-601-25-2', 'Vocabulary in Practice 5', '6', 'Liz driscoll', 2005, 'Cambridge', '1', 'England', 1, 0, 14),
(1587, 'ISTVL-ENG-CGCH38', ' 960-379-732-4', 'Capitan Grants Children ', '6', 'Roger gower', 2005, 'Mmpublications\r\n', '1', 'USA', 1, 0, 14),
(1588, 'ISTVL-ENG-TMU39', '960-7955-59-5', 'The mix UP ', '6', 'H.q. mitchell', 1998, 'Mmpublications', '1', 'USA', 1, 0, 14),
(1589, 'ISTVL-ENG-DC40', ' 078-960-573-140-3', 'David Copperfield', '6', 'H.q. mitchell', 2014, 'Mmpublications', '1', 'USA', 1, 0, 14),
(1590, 'ISTVL-ENG-TCI41', '978-960-509-096-8', 'The Coral Island', '6', 'H.q. mitchell', 2012, 'Mmpublications', '1', 'USA', 1, 0, 14),
(1591, 'ISTVL-ENG-TCI42', '978-960-509-097-5', 'The Coral Island', '6', 'H.q. mitchell', 2012, 'Mmpublications', '1', 'USA', 1, 0, 14),
(1592, 'ISTVL-ENG-LINY43', 'ISBN: 978-960-443-658-3', 'Lisa in new York ', '6', 'H.q. mitchell', 2009, 'Mmpublications', '1', '', 1, 0, 14),
(1593, 'ISTVL-ENG-TT-44', '978-960-443-482-4', 'The Tempest ', '6', 'H.q. mitchell', 2008, 'Mmpublications', '1', 'USA', 1, 0, 14),
(1594, 'ISTVL-ENG-TT-45', '978-960-443-483-1', 'The Tempest ', '6', 'H.q. mitchell', 2009, 'Mmpublications', '1', 'USA', 1, 0, 14),
(1595, 'ISTVL-ENG TPOTO46', ' 978-960-478-021-1', 'The Plantom of the Opera', '6', 'Gaston leroux', 2005, 'Mmpublications', '1', 'USA', 1, 0, 14),
(1596, 'ISTVL-ENG-TMITIM47', '978-960-478-041-9', 'The Man in the Iron Mask', '6', 'Alexandre dumas', 2005, 'Mmpublications', '1', 'USA', 1, 0, 14),
(1597, 'ISTVL-ENG-OPRCTHS48', '978-1-61352-736-8', 'On Point', '6', 'Peggy anderson', 2015, 'Compass publishing', '1', 'USA', 1, 0, 14),
(1598, 'ISTVL-ENG-OPRCTHS49', '978-1-61352-737-5', 'On Point', '6', 'Peggy anderson', 2015, 'Compass publishing', '1', 'USA', 1, 0, 14),
(1599, 'ISTVL-ENG-OPRCTHS50', 'ISBN:978-1-61352-738-2', 'On Point', '6', 'Peggy anderson', 2015, 'Compass publishing', '1', 'USA', 1, 0, 14),
(1600, 'ISTVL-ADFI-ECONO0o', 's', 'a', '1', 's', 2001, 'a', 'q', 'xs', 1, 0, 13),
(1602, 'kevinAA', 'sssss', 'sSs', 's', 's', 0000, 's', 'sssssss', 's', 1, 0, 13),
(1603, 'ISTVL-CONT-APGINIIF ', 'ISBN: 978-9942-13-776-0', 'Análisis Práctico y Guia de Implementación de NIIF', '7', 'Jorge E. Zapata L.', 2014, 'Ediciones Abya - Yala', '4', 'Españos ', 1, 0, 15),
(1604, 'ISTVL- SHT-MHI 26', 'ISBN: 84-7100-224-8', 'Manual de Higiene Industrial', '8', 'D. Jose Angel Fernando Pablo', 1991, 'Mapfre S.A.', '1', 'Español', 1, 0, 16),
(1606, 'ISTVL- SHT-MST 27', 'ISBN: 84-7100-987-0', 'Manual de Seguridad en el Trabjajo', '8', 'D. Jose Angel Fernando Pablo', 0000, 'Mapfre S.A.', '2', 'Español', 1, 0, 16),
(1607, 'ISTVL- SHT-QG 28', 'ISBN: 968-451-882-X', 'Quimica General', '8', 'Guillermo Garzón G.', 1986, 'Editolaser S. en C', '2', 'Español', 1, 0, 16),
(1608, 'ISTVL- SHT-MELSST 29', 'ISBN: 978-612-46884-1-6', 'Manual del Entrenador Lúdico en Seguridad y Salud en el Trabajo', '8', 'Pablo Pinto Ariza - Iván Lopez Enriquez - Juan Jose Torres Bucio - Joaquin Ruiz Bosch', 2017, 'APDR', '1', 'Español', 1, 0, 16),
(1609, 'ISTVL- SHT-IAOE 30', 'ISBN: 0-07-037214-4', 'Introducción a la Administración y Organización de Empresas', '8', 'Joel J. Lerner', 1990, 'Editolaser S. en C', '2', 'Español', 1, 0, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id` int(11) NOT NULL,
  `id_libro` int(11) NOT NULL,
  `id_lector` int(11) NOT NULL,
  `fechaprestamo` varchar(100) NOT NULL,
  `fechadevolucion` varchar(100) NOT NULL,
  `estado_prestamo` int(4) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('kZjRMgl2YqeA0_hIewU-8_VsDyViOEz1', 1583502919, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{\"succes\":[\"Libro Guardado Correctamente\",\"Libro Guardado Correctamente\",\"Libro Guardado Correctamente\",\"Libro Guardado Correctamente\",\"Libro Guardado Correctamente\"]},\"passport\":{\"user\":22}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipolector`
--

CREATE TABLE `tipolector` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipolector`
--

INSERT INTO `tipolector` (`id`, `nombre`) VALUES
(1, 'Estudiante'),
(2, 'Docente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `id` int(11) NOT NULL,
  `denominacion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id`, `denominacion`) VALUES
(1, 'Administrador'),
(2, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `ci` varchar(10) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass_usuario` varchar(150) NOT NULL,
  `idtipousuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombres`, `apellidos`, `ci`, `telefono`, `email`, `pass_usuario`, `idtipousuario`) VALUES
(22, 'Kevin Javier', 'vg', '0504361808', '0919049582', 'kjaviervelasque@hotmail.com', '$2a$10$jVMRNRl8b0lhM/LFvB1Bv.fMaO8vy0gjegjg3mZ3xFEQBV5N02UUq', 1),
(23, 'Kevin ', 'Velasque', '0504361809', '09790405982', 'kjaviervelasque16@gmail.com', '$2a$10$DvG.StSO1cNT5SAjs/WepOfJdVE07l3LpllnMOZ0qF1xj7NvuScyW', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estadolibro`
--
ALTER TABLE `estadolibro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estadoprestamo`
--
ALTER TABLE `estadoprestamo`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `estadoslibro`
--
ALTER TABLE `estadoslibro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lectores`
--
ALTER TABLE `lectores`
  ADD PRIMARY KEY (`id_lectores`),
  ADD UNIQUE KEY `dni` (`ci`),
  ADD KEY `id_tipolector` (`id_tipolector`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_libros`),
  ADD UNIQUE KEY `isbn_libro` (`isbn_libro`),
  ADD KEY `id_facultad` (`id_facultad`),
  ADD KEY `prestados_libro` (`prestados_libro`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_libro` (`id_libro`),
  ADD KEY `id_lector` (`id_lector`),
  ADD KEY `estado_prestamo` (`estado_prestamo`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indices de la tabla `tipolector`
--
ALTER TABLE `tipolector`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `idtipousuario` (`idtipousuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `estadolibro`
--
ALTER TABLE `estadolibro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estadoslibro`
--
ALTER TABLE `estadoslibro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `lectores`
--
ALTER TABLE `lectores`
  MODIFY `id_lectores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id_libros` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1610;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipolector`
--
ALTER TABLE `tipolector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lectores`
--
ALTER TABLE `lectores`
  ADD CONSTRAINT `lectores_ibfk_1` FOREIGN KEY (`id_tipolector`) REFERENCES `tipolector` (`id`);

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_5` FOREIGN KEY (`id_facultad`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos1` FOREIGN KEY (`estado_prestamo`) REFERENCES `estadoprestamo` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`id_lector`) REFERENCES `lectores` (`id_lectores`),
  ADD CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libros`),
  ADD CONSTRAINT `prestamos_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`idtipousuario`) REFERENCES `tipousuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
