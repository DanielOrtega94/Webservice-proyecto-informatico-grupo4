INSERT INTO `deportes` (`id`, `nombre`) VALUES
(1, 'Futbol'),
(2, 'Baby Futbol'),
(3, 'Basquetbol');



INSERT INTO `divisiones` (`id`, `deporteid`, `nombre`) VALUES
(1, 1, 'Primera Division'),
(2, 1, 'Segunda Division'),
(3, 3, 'Serie de Honor'),
(4, 3, 'Segunda Division'),
(5, 3, 'Tercera Division'),
(6, 2, 'Champions Ingeniería 2018', NULL, NULL, NULL);


INSERT INTO `equipos` (`id`, `divisionid`, `nombre`, `carrera`, `facultad`) VALUES
(1, 2, 'Informatica', 'Ingenieria civil Informatica', 'Ingenieria'),
(2, 2, 'DIE', 'Ingenieria civil Electrica', 'Ingenieria'),
(3, 2, 'Quimica', 'Ingenieria civil Quimica', 'Ingenieria'),
(4, 2, 'FAUG', 'vacio', 'Arquitectura, Urbanizacion y Geografia'),
(5, 2, 'PMyC', 'Pedagogia en matematica y computacion', 'Educacion'),
(6, 2, 'Biomedica', 'Ingenieria civil Biomedica', 'Ingenieria'),
(7, 2, 'Farmacia', 'Farmacia', 'Farmacia y Nutricion'),
(8, 2, 'Materiales', 'Ingenieria civil Materiales', 'Ingenieria'),
(9, 2, 'Forestal', 'Ciencias Forestales y Agronomia', 'Ciencias Forestales'),
(10, 2, 'Sindicato 3', 'vacio', 'vacio'),
(11, 2, 'Enfermeria', 'Enfermeria y Obstetricia', 'Enfermeria'),
(12, 2, 'Historia', 'Pedagogia en Historia', 'Educacion'),
(13, 2, 'ICM', 'Ingenieria civil Matematica', 'Ciencias fisicas y matematicas'),
(14, 2, 'Geofisica', 'Geofisica', 'Ciencias fisicas y matematicas'),
(15, 2, 'Ballena', 'Oceaonagrafia', 'Ciencias naturales y oceanograficas'),
(16, 2, 'Auditoria', 'Auditoria', 'Ciencias economicas y administrativas'),
(17, 2, 'Ingenieria 85', 'vacio', 'Ingenieria'),
(18, 2, 'Electronica', 'Ingenieria civil Electronica', 'Ingenieria'),
(19, 1, 'DEF', 'Educacion fisica', 'Educacion'),
(20, 1, 'Interlex', 'Derecho', 'Ciencias juridicas y sociales'),
(21, 1, 'Virginio Gomez', 'vacio', 'vacio'),
(22, 1, 'Civil de Minas', 'Ingenieria civil Minas', 'Ingenieria'),
(23, 1, 'Industrial', 'Ingenieria civil Industrial', 'Ingenieria'),
(24, 1, 'Sindicato 1', 'vacio', 'vacio'),
(25, 1, 'Sociales', 'vacio', 'Ciencias sociales'),
(26, 1, 'Educacion', 'vacio', 'Educacion'),
(27, 1, 'Medicina', 'Medicina', 'Medicina'),
(28, 1, 'Derecho', 'Derecho', 'Ciencias juridicas y sociales'),
(29, 1, 'Metalurgica', 'Ingenieria civil Metalurgica', 'Ingenieria'),
(30, 1, 'Ex Alumnos', 'vacio', 'vacio'),
(31, 1, 'Comercial', 'Comercial', 'Ciencias economicas y administrativas'),
(32, 1, 'Geologia', 'Geologia', 'Ciencias quimicas'),
(33, 1, 'CFyM', 'vacio', 'Ciencias fisicas y matematicas'),
(34, 1, 'Mecanica', 'Ingenieria civil Mecanica', 'Ingenieria'),
(35, 1, 'Odontologia', 'Odontologia', 'Odontologia'),
(36, 1, 'Civil', 'Ingenieria Civil', 'Ingenieria'),

(37, 3, 'Medicina', 'Medicina', 'Medicina'),
(38, 3, 'Ingenieria Mecanica', 'Ingenieria civil Mecanica', 'Ingenieria'),
(39, 3, 'Ingenieria Civil', 'Ingenieria Civil', 'Ingenieria'),
(40, 3, 'Ingenieria Ambiental', 'Ingenieria Ambiental', 'Ambiental'),
(41, 3, 'DIE', 'vacio', 'Ingenieria'),
(42, 3, 'Senior A', 'vacio', 'vacio'),
(43, 3, 'IPVG', 'vacio', 'vacio'),
(44, 3, 'Farmacia', 'Farmacia', 'Farmacia y Nutricion'),
(45, 3, 'Ingenieria Civil Quimica', 'Ingenieria civil Quimica', 'Ingenieria'),
(46, 3, 'Lex', 'Derecho', 'Ciencias juridicas y sociales'),

(47, 4, 'Psicologia', 'Psicologia', 'Ciencias sociales'),
(48, 4, 'Ciencias Forestales', 'vacio', 'Ciencias Forestales'),
(49, 4, 'CFM', 'vacio', 'Ciencias fisicas y matematicas'),
(50, 4, 'Educacion', 'vacio', 'Educacion'),
(51, 4, 'Odontologia', 'Odontologia', 'Odontologia'),
(52, 4, 'Veterinaria', 'Veterinaria', 'Veterinaria'),
(53, 4, 'Senior B', 'vacio', 'vacio'),
(54, 4, 'Medicina B', 'Medicina', 'Medicina'),

(55, 5, 'Facultad La Ballena', 'vacio', 'Ciencias naturales y oceanograficas'),
(56, 5, 'Geologia', 'Geologia', 'Ciencias quimicas'),
(57, 5, 'Enfermeria', 'Enfermeria', 'Enfermeria'),
(58, 5, 'DEF', 'Educacion Fisica', 'Educacion'),
(59, 5, 'ICO', 'vacio', 'vacio'),
(60, 5, 'Auditoria', 'Auditoria', 'Ciencias economicas y administrativas'),
(61, 5, 'Agronomia', 'Agronomia', 'Ciencias Forestales'),
(62, 5, 'Kinesiologia B', 'Kinesiologia', 'Medicina'),
(63, 5, 'Informática', 'Ingeniería civil Informática', 'Ingeniería'),
(64, 5, 'Biología', 'Ciencias biológicas', 'La ballena'),

(65, 6, 'Melovers', 'Ingeniería civil Química', 'Ingeniería', NULL, NULL, NULL), 
(66, 6, 'Tajo', 'Ingeniería civil Minas', 'Ingeniería', NULL, NULL, NULL), 
(67, 6, 'Volátiles', 'Ingeniería civil Metalúrgica', 'Ingeniería', NULL, NULL, NULL), 
(68, 6, 'Zorrimbos', 'Ingeniería civil Química', 'Ingeniería', NULL, NULL, NULL), 
(69, 6, 'Guerreros de Baquedano', 'Ingeniería Comercial', 'Ciencias economicas y administrativas', NULL, NULL, NULL), 
(70, 6, 'Chaneriales', 'Ingeniería civil Materiales', 'Ingeniería', NULL, NULL, NULL), 
(71, 6, 'Vodka jrs', 'Ingeniería civil Materiales', 'Ingeniería', NULL, NULL, NULL), 
(72, 6, 'Garra Mecánica', 'Ingeniería civil Mecánica', 'Ingeniería', NULL, NULL, NULL);


INSERT INTO `jugadores` (`id`, `equipoid`, `nombre`, `edad`, `ano_ingreso`) VALUES
(1, 1, 'Jeremias Torres', 23, 2013),
(2, 2, 'Juan Ignacio Burgos', 20, 2017),
(3, 1, 'Juan Carlos Contreras', 23, 2014),
(4, 1, 'Alan Cotal', 18, 2018),
(5, 1, 'Benjamin Rodriguez', 21, 2015),
(6, 2, 'Diego Pulgar', 18, 2018),
(7, 3, 'Vicente Hernandez', 23, 2014),
(8, 3, 'Gonzalo Gutierrez', 19, 2017),
(9, 4, 'Alejandro Fuentes', 24, 2012),
(10, 4, 'Anibal de la Fuente', 25, 2011),
(11, 5, 'Julio Ibarra', 30, 2008),
(12, 5, 'Rodrigo Salazar', 25, 2011),
(13, 6, 'Nicolas Herrera', 19, 2017),
(14, 6, 'Juan Marin', 19, 2017),
(15, 7, 'Jorge Carcamo', 19, 2017),
(16, 7, 'Francisco Ibañez', 22, 2014),
(17, 8, 'Manuel Astroza', 18, 2018),
(18, 8, 'Andres Elgueda', 23, 2013),
(19, 9, 'Bastian Fernandez', 21, 2015),
(20, 9, 'Luis Gatica', 23, 2014),
(21, 10, 'Luis Barril', 34, 2006),
(22, 10, 'Pedro Nuñez', 58, 2006),
(23, 11, 'Paul Concha', 25, 2012),
(24, 11, 'Rodrigo Inzunza', 21, 2015),
(25, 12, 'Pablo Marin', 22, 2015),
(26, 12, 'Nicolas Verdugo', 20, 2016),
(27, 13, 'Leonardo Uribe', 20, 2016),
(28, 13, 'Gabriel Cires', 20, 2016),
(29, 14, 'Domingos Wissi', 21, 2015),
(30, 14, 'Raul Baier', 20, 2016),
(31, 15, 'Hector Gonzalez', 20, 2016),
(32, 15, 'Juan Pablo Morgado', 20, 2016),
(33, 16, 'Angel Maldonado', 23, 2014),
(34, 16, 'Alejandro Leal', 25, 2011),
(35, 17, 'Walter Victtoriano', 23, 2013),
(36, 17, 'Valentin Betancur', 26, 2011),
(37, 18, 'Mauricio Novoa', 20, 2016),
(38, 18, 'Piero Riva', 20, 2016),
(39, 19, 'Luciano Rojas', 23, 2013),
(40, 19, 'Ignacio Riquelme', 20, 2016),
(41, 21, 'Diego Munita', 20, 2016),
(42, 21, 'Jose Inostroza', 20, 2016),
(43, 20, 'Ricardo Oñate', 20, 2016),
(44, 20, 'Carlos Parra', 20, 2016),
(45, 22, 'Omar Zambrano', 22, 2014),
(46, 22, 'Gustavo Salazar', 23, 2013),
(47, 23, 'Felipe Henriquez', 22, 2014),
(48, 23, 'Pablo Campos', 22, 2014),
(49, 24, 'Eduardo Mella', 25, 2011),
(50, 24, 'Christian Pena', 25, 2011),
(51, 25, 'Mauricio Echeverria', 24, 2012),
(52, 25, 'Abraham Pavez', 20, 2016),
(53, 26, 'Francisco Flores', 20, 2015),
(54, 27, 'Pedro Fuentes', 23, 2013),
(55, 28, 'Gabriel Sanhueza', 24, 2011),
(56, 29, 'Nicolas Bizama', 24, 2012),
(57, 30, 'Matias Cleveland', 28, 2008),
(58, 30, 'Leonardo Abarzua', 32, 2006),
(59, 31, 'Pablo Sanhueza', 20, 2016),
(60, 31, 'Erwyn Riquelme', 20, 2016),
(61, 32, 'Nelson Andreau', 25, 2011),
(62, 32, 'Emilio Vergara', 25, 2011),
(63, 33, 'Matias Cartes', 20, 2016),
(64, 33, 'Bastian Reinoso', 20, 2016),
(65, 34, 'Allan Mora', 20, 2017),
(66, 34, 'Victor Perez', 25, 2012),
(67, 35, 'Pablo Hernandez', 20, 2016),
(68, 35, 'Hernan Fuentes', 20, 2016),
(69, 36, 'Felipe Vidal', 23, 2015),
(70, 36, 'Alberto Romero', 23, 2014),
(71, 72, 'José Contreras', '22', '2014', NULL, NULL, NULL), 
(72, 72, 'Álvaro Reyes', '22', '2014', NULL, NULL, NULL), 
(73, 71, 'Andrés Elgueda', '23', '2013', NULL, NULL, NULL), 
(74, 71, 'Matías Herrera', '22', '2014', NULL, NULL, NULL), 
(75, 70, 'Joaquín Arduiz', '22', '2014', NULL, NULL, NULL), 
(76, 70, 'Diego Nova', '22', '2014', NULL, NULL, NULL), 
(77, 69, 'Gonzalo Ramírez', '21', '2015', NULL, NULL, NULL), 
(78, 69, 'Francisco Loyola', '25', '2011', NULL, NULL, NULL), 
(79, 68, 'Diego Barrientos', '23', '2013', NULL, NULL, NULL), 
(80, 68, 'Claudio Bachmann', '23', '2013', NULL, NULL, NULL), 
(81, 67, 'Franco Matamala', '21', '2015', NULL, NULL, NULL), 
(82, 67, 'Cristian Mora', '21', '2015', NULL, NULL, NULL), 
(83, 66, 'Carlos Vega', '23', '2013', NULL, NULL, NULL), 
(84, 66, 'Eduardo Perales', '22', '2014', NULL, NULL, NULL), 
(85, 65, 'Felipe Alegría', '21', '2015', NULL, NULL, NULL), 
(86, 65, 'Claudio Jerez', '21', '2015', NULL, NULL, NULL),
(87, 37, 'Alfonso Morillas', '18', '2018', NULL, NULL, NULL), 
(88, 37, 'Ángel Osorio', '19', '2017', NULL, NULL, NULL), 
(89, 37, 'Víctor Salvador', '20', '2016', NULL, NULL, NULL), 
(90, 38, 'Javier Medina', '21', '2015', NULL, NULL, NULL), 
(91, 38, 'Aitor Barrientos', '22', '2014', NULL, NULL, NULL), 
(92, 38, 'Rubén Palencia', '23', '2013', NULL, NULL, NULL), 
(93, 39, 'Santiago Villegas', '24', '2012', NULL, NULL, NULL), 
(94, 39, 'Diego Matute', '25', '2011', NULL, NULL, NULL), 
(95, 39, 'Juan Almenara', '25', '2011', NULL, NULL, NULL), 
(96, 40, 'José Guisado', '24', '2012', NULL, NULL, NULL), 
(97, 40, 'Javier Valladares', '23', '2013', NULL, NULL, NULL), 
(98, 40, 'Nicolás Abascal', '22', '2014', NULL, NULL, NULL), 
(99, 41, 'Jesús Ocampo', '21', '2015', NULL, NULL, NULL), 
(100, 41, 'Víctor Marina', '20', '2016', NULL, NULL, NULL), 
(101, 41, 'Manuel Cavero', '19', '2016', NULL, NULL, NULL), 
(102, 42, 'Agustín Aguado', '18', '2017', NULL, NULL, NULL), 
(103, 42, 'Martín Montañez', '19', '2018', NULL, NULL, NULL), 
(104, 42, 'Mario Crespi', '18', '2018', NULL, NULL, NULL),
(105, 43, 'Jose Solera', '18', '2018', NULL, NULL, NULL), 
(106, 43, 'Mario Romera', '19', '2017', NULL, NULL, NULL), 
(107, 43, 'Óscar Cabezas', '20', '2016', NULL, NULL, NULL), 
(108, 44, 'Sergio Cadenas', '21', '2015', NULL, NULL, NULL), 
(109, 44, 'Miguel Cubas', '22', '2014', NULL, NULL, NULL), 
(110, 44, 'Diego Rovira', '23', '2013', NULL, NULL, NULL), 
(111, 45, 'Alfredo Bejarano', '24', '2012', NULL, NULL, NULL), 
(112, 45, 'Gregorio Cayuela', '25', '2011', NULL, NULL, NULL), 
(113, 45, 'Ismael Pizarro', '24', '2012', NULL, NULL, NULL),
(114, 46, 'Luis Angulo', '18', '2018', NULL, NULL, NULL), 
(115, 46, 'Ángel Chaparro', '19', '2017', NULL, NULL, NULL), 
(116, 46, 'Javier Pazos', '20', '2016', NULL, NULL, NULL), 
(117, 47, 'José Garrido', '21', '2015', NULL, NULL, NULL), 
(118, 47, 'Roberto Cerezo', '22', '2014', NULL, NULL, NULL), 
(119, 47, 'Adrián Zapata', '23', '2013', NULL, NULL, NULL), 
(120, 48, 'Pedro Gascón', '24', '2012', NULL, NULL, NULL), 
(121, 48, 'José Guillamón', '25', '2011', NULL, NULL, NULL), 
(122, 48, 'Carlos Jaume', '24', '2012', NULL, NULL, NULL), 
(123, 49, 'Sergio Andrades', '23', '2013', NULL, NULL, NULL), 
(124, 49, 'Francisco Brito', '22', '2014', NULL, NULL, NULL), 
(125, 49, 'Miguel Villalón', '21', '2015', NULL, NULL, NULL), 
(126, 50, 'Ángel Diallo', '20', '2016', NULL, NULL, NULL), 
(127, 50, 'Gabriel Piñeiro', '19', '2017', NULL, NULL, NULL), 
(128, 50, 'Félix Aliaga', '18', '2018', NULL, NULL, NULL),
(129, 51, 'César Vaquero', '18', '2018', NULL, NULL, NULL), 
(130, 51, 'Daniel Fandiño', '19', '2017', NULL, NULL, NULL), 
(131, 51, 'Juan Garrigos', '20', '2016', NULL, NULL, NULL), 
(132, 52, 'José Calabuig', '21', '2015', NULL, NULL, NULL), 
(133, 52, 'Iván Liebana', '22', '2014', NULL, NULL, NULL), 
(134, 52, 'Álvaro Piñol', '23', '2013', NULL, NULL, NULL), 
(135, 53, 'David Molinero', '24', '2012', NULL, NULL, NULL), 
(136, 53, 'Pablo Montilla', '25', '2011', NULL, NULL, NULL), 
(137, 53, 'Alberto Gallo', '24', '2012', NULL, NULL, NULL), 
(138, 54, 'Francisco LLuch', '23', '2013', NULL, NULL, NULL), 
(139, 54, 'Ángel Méndez', '22', '2014', NULL, NULL, NULL), 
(140, 54, 'José Carvajal', '21', '2015', NULL, NULL, NULL), 
(141, 55, 'Carlos Toribio', '20', '2016', NULL, NULL, NULL), 
(142, 55, 'Fernando Mena', '19', '2017', NULL, NULL, NULL), 
(143, 55, 'José Aranda', '18', '2018', NULL, NULL, NULL),
(144, 56, 'Mario Cuadrado', '18', '2018', NULL, NULL, NULL), 
(145, 56, 'Alfredo Belenguer', '19', '2017', NULL, NULL, NULL), 
(146, 56, 'Rafael Calle', '20', '2016', NULL, NULL, NULL), 
(147, 57, 'David Menéndez', '21', '2015', NULL, NULL, NULL), 
(148, 57, 'Esteban Mendes', '22', '2014', NULL, NULL, NULL), 
(149, 57, 'Alberto Puga', '23', '2013', NULL, NULL, NULL), 
(150, 58, 'José Llanos', '24', '2012', NULL, NULL, NULL), 
(151, 58, 'Antonio Cuéllar', '25', '2011', NULL, NULL, NULL), 
(152, 58, 'Lorenzo Campillo', '24', '2012', NULL, NULL, NULL), 
(153, 59, 'Diego Marina', '23', '2013', NULL, NULL, NULL), 
(154, 59, 'Sergio Sampedro', '22', '2014', NULL, NULL, NULL), 
(155, 59, 'Joaquín Escolano', '21', '2015', NULL, NULL, NULL), 
(156, 60, 'David Romeo', '20', '2016', NULL, NULL, NULL), 
(157, 60, 'José Holguín', '19', '2017', NULL, NULL, NULL), 
(158, 60, 'José Carazo', '18', '2018', NULL, NULL, NULL),
(159, 61, 'Miguel Gámez', '18', '2018', NULL, NULL, NULL), 
(160, 61, 'Ángel Notario', '19', '2017', NULL, NULL, NULL), 
(161, 61, 'Fernando Valverde', '20', '2016', NULL, NULL, NULL), 
(162, 62, 'José Cabrerizo', '21', '2015', NULL, NULL, NULL), 
(163, 62, 'Ramón Bayona', '22', '2014', NULL, NULL, NULL), 
(164, 62, 'Joaquín Mellado', '23', '2013', NULL, NULL, NULL), 
(165, 63, 'Eduardo Gayá', '24', '2012', NULL, NULL, NULL), 
(166, 63, 'Javier Valenzuela', '25', '2011', NULL, NULL, NULL), 
(167, 63, 'Jaime Calzada', '24', '2012', NULL, NULL, NULL), 
(168, 64, 'Salvador Tudela', '23', '2013', NULL, NULL, NULL), 
(169, 64, 'Carlos Pombo', '22', '2014', NULL, NULL, NULL), 
(170, 64, 'Aitor Lara', '21', '2015', NULL, NULL, NULL), 
(171, 65, 'Julián Gomila', '20', '2016', NULL, NULL, NULL), 
(172, 65, 'Ramón Rangel', '19', '2017', NULL, NULL, NULL), 
(173, 65, 'Manuel Chico', '18', '2018', NULL, NULL, NULL),
(174, 66, 'Juan Viera', '18', '2018', NULL, NULL, NULL), 
(175, 66, 'Juan Galeano', '19', '2017', NULL, NULL, NULL), 
(176, 66, 'Manuel Casero', '20', '2016', NULL, NULL, NULL), 
(177, 67, 'Ramón Alcalde', '21', '2015', NULL, NULL, NULL), 
(178, 67, 'Javier Rodero', '22', '2014', NULL, NULL, NULL), 
(179, 67, 'Álvaro Almenara', '23', '2013', NULL, NULL, NULL), 
(180, 68, 'Vicente Mancebo', '24', '2012', NULL, NULL, NULL), 
(181, 68, 'Juan Páez', '25', '2011', NULL, NULL, NULL), 
(182, 68, 'Cristóbal Mayordomo', '24', '2012', NULL, NULL, NULL), 
(183, 69, 'Emilio Almazán', '23', '2013', NULL, NULL, NULL), 
(184, 69, 'Pedro Segura', '22', '2014', NULL, NULL, NULL), 
(185, 69, 'Iván Aceituno', '21', '2015', NULL, NULL, NULL), 
(186, 70, 'Víctor Llorente', '20', '2016', NULL, NULL, NULL), 
(187, 70, 'Marco Guerra', '19', '2017', NULL, NULL, NULL), 
(188, 70, 'Juan Arce', '18', '2018', NULL, NULL, NULL), 
(189, 71, 'Francisco Garrigos', '19', '2017', NULL, NULL, NULL), 
(190, 71, 'Aitor Real', '20', '2016', NULL, NULL, NULL), 
(191, 71, 'Andrés Montiel', '21', '2015', NULL, NULL, NULL),
(192, 72, 'David Raya', '18', '2018', NULL, NULL, NULL), 
(193, 72, 'Adrián Tejedor', '19', '2017', NULL, NULL, NULL), 
(194, 72, 'Raúl Zapico', '20', '2016', NULL, NULL, NULL);

INSERT INTO `lugares` (`id`, `nombre`, `ubicacion`, `capacidad`) VALUES
(1, 'Cancha sintetica Universidad de Concepcion', NULL, '50000 espectadores'),
(2, 'Cancha de Hockey', 'A un costado del edificio Virginio Gomez', '20000 espectadores'),
(3, 'Casa del Deporte', 'Entrada estacionamiento Roosevelt', '100 espectadores');

INSERT INTO `partidos` (`id`, `equipo_1`, `equipo_2`, `divisionid`, `lugarid`, `ganador`, `fecha`, `hora`, 'deleted_at', 'created_at', 'updated_at', 'empate', 'm_local', 'm_visita') VALUES
(1, 23, 20, 1, 1, 20, '2018-08-27', '10:30 hrs', NULL, NULL, NULL, 0, 0, 1),
(2, 13, 5, 2, 1, 5, '2018-08-27', '12:00 hrs', NULL, NULL, NULL, 0, 0, 2),
(3, 26, 33, 1, 1, 26, '2018-08-27', '13:30 hrs', NULL, NULL, NULL, 0, 7, 0),
(4, 3, 18, 2, 1, 3, '2018-08-27', '15:00 hrs', NULL, NULL, NULL, 0, 4, 0),
(5, 28, 21, 1, 1, 21, '2018-08-28', '14:00 hrs', NULL, NULL, NULL, 0, 1, 3),
(6, 12, 17, 2, 1, 12, '2018-08-28', '15:30 hrs', NULL, NULL, NULL, 0, 5, 2),
(7, 22, 29, 1, 1, 22, '2018-08-29', '12:00 hrs', NULL, NULL, NULL, 0, 5, 0),
(8, 1, 6, 2, 1, 6, '2018-08-29', '13:30 hrs', NULL, NULL, NULL, 0, 0, 3),
(9, 8, 2, 2, 1, 8, '2018-08-29', '15:00 hrs', NULL, NULL, NULL, 0, 2, 0),
(10, 20, 33, 1, 1, NULL, '2018-08-30', '10:30 hrs', NULL, NULL, NULL, 1, 1, 1),
(11, 32, 23, 1, 1, 23, '2018-08-30', '12:00 hrs', NULL, NULL, NULL, 0, 3, 6),
(12, 25, 24, 1, 1, 24, '2018-08-30', '13:30 hrs', NULL, NULL, NULL, 0, 0, 2),
(13, 3, 16, 2, 1, 3, '2018-08-30', '15:00 hrs', NULL, NULL, NULL, 0, 4, 1),
(14, 2, 14, 2, 1, 2, '2018-08-31', '10:30 hrs', NULL, NULL, NULL, 0, 3, 0),
(15, 34, 31, 1, 1, 31, '2018-08-31', '12:00 hrs', NULL, NULL, NULL, 0, 2, 1),
(16, 10, 17, 2, 1, 10, '2018-08-31', '13:30 hrs', NULL, NULL, NULL, 0, 3, 1),
(17, 35, 19, 1, 1, 19, '2018-08-31', '19:00 hrs', NULL, NULL, NULL, 0, 0, 7),
(18, 27, 36, 1, 1, 27, '2018-08-31', '20:30 hrs', NULL, NULL, NULL, 0, 2, 1),
(19, 11, 7, 2, 1, 11, '2018-09-01', '15:00 hrs', NULL, NULL, NULL, 0, 3, 0),
(20, 4, 13, 2, 1, 4, '2018-09-01', '16:30 hrs', NULL, NULL, NULL, 0, 7, 1),
(21, 9, 15, 2, 1, 9, '2018-09-01', '18:00 hrs', NULL, NULL, NULL, 0, 7, 1),
(22, 30, 32, 1, 1, 30, '2018-09-01', '19:30 hrs', NULL, NULL, NULL, 0, 8, 0),
(23, 11, 12, 2, 1, 11, '2018-09-03', '10:30 hrs', NULL, NULL, NULL, 0, 3, 0),
(24, 25, 33, 1, 1, 25, '2018-09-03', '12:00 hrs', NULL, NULL, NULL, 0, 6, 0),
(25, 10, 9, 2, 1, 10, '2018-09-03', '13:30 hrs', NULL, NULL, NULL, 0, 3, 1),
(26, 3, 13, 2, 1, 3, '2018-09-03', '15:00 hrs', NULL, NULL, NULL, 0, 6, 1),
(27, 16, 14, 2, 1, 16, '2018-09-04', '10:30 hrs', NULL, NULL, NULL, 0, 4, 0),
(28, 26, 22, 1, 1, 26, '2018-09-04', '14:00 hrs', NULL, NULL, NULL, 0, 1, 0),
(29, 20, 36, 1, 1, 20, '2018-09-04', '15:30 hrs', NULL, NULL, NULL, 0, 2, 0),
(30, 15, 8, 2, 1, NULL, '2018-09-05', '12:00 hrs', NULL, NULL, NULL, 1, 1, 1),
(31, 19, 24, 1, 1, 19, '2018-09-05', '13:30 hrs', NULL, NULL, NULL, 0, 1, 0),
(32, 23, 31, 1, 1, 23, '2018-09-05', '15:00 hrs', NULL, NULL, NULL, 0, 4, 0),
(33, 5, 1, 2, 1, 5, '2018-09-06', '10:30 hrs', NULL, NULL, NULL, 0, 2, 1),
(34, 16, 17, 2, 1, NULL, '2018-09-06', '12:00 hrs', NULL, NULL, NULL, 1, 2, 2),
(35, 4, 18, 2, 1, 4, '2018-09-06', '13:30 hrs', NULL, NULL, NULL, 0, 2, 0),
(36, 21, 29, 1, 1, 21, '2018-09-06', '15:00 hrs', NULL, NULL, NULL, 0, 4, 2),
(37, 2, 13, 2, 1, 2, '2018-09-07', '10:30 hrs', NULL, NULL, NULL, 0, 2, 1),
(38, 7, 14, 2, 1, 7, '2018-09-07', '19:00 hrs', NULL, NULL, NULL, 0, 0, 1),
(39, 30, 28, 1, 1, 30, '2018-09-07', '20:30 hrs', NULL, NULL, NULL, 0, 2, 0),
(40, 4, 6, 2, 1, 4, '2018-09-08', '15:00 hrs', NULL, NULL, NULL, 0, 2, 1),
(41, 19, 34, 1, 1, 19, '2018-09-08', '16:30 hrs', NULL, NULL, NULL, 0, 2, 0),
(42, 20, 32, 1, 1, 20, '2018-09-08', '18:00 hrs', NULL, NULL, NULL, 0, 3, 0),
(43, 27, 35, 1, 1, 27, '2018-09-08', '19:30 hrs', NULL, NULL, NULL, 0, 1, 0),
(44, 9, 11, 2, 1, 11, '2018-09-10', '10:30 hrs', NULL, NULL, NULL, 0, 0, 2),
(45, 25, 32, 1, 1, 25, '2018-09-10', '12:00 hrs', NULL, NULL, NULL, 0, 12, 2),
(46, 24, 31, 1, 1, 24, '2018-09-10', '13:30 hrs', NULL, NULL, NULL, 0, 2, 0),
(47, 8, 16, 2, 1, 8, '2018-09-10', '15:00 hrs', NULL, NULL, NULL, 0, 4, 1),
(48, 19, 28, 1, 1, 19, '2018-09-11', '10:30 hrs', NULL, NULL, NULL, 0, 5, 0),
(49, 6, 15, 2, 1, 6, '2018-09-11', '14:00 hrs', NULL, NULL, NULL, 0, 7, 1),
(50, 21, 36, 1, 1, 21, '2018-09-11', '15:30 hrs', NULL, NULL, NULL, 0, 7, 0),
(51, 6, 3, 2, 1, 6, '2018-09-12', '12:00 hrs', NULL, NULL, NULL, 0, 2, 1),
(52, 23, 29, 1, 1, 23, '2018-09-12', '13:30 hrs', NULL, NULL, NULL, 0, 1, 0),
(53, 22, 31, 1, 1, 22, '2018-09-12', '15:00 hrs', NULL, NULL, NULL, 0, 4, 2),
(54, 19, 33, 1, 1, 19, '2018-09-13', '10:30 hrs', NULL, NULL, NULL, 0, 2, 1),
(55, 1, 7, 2, 1, 7, '2018-09-13', '12:00 hrs', NULL, NULL, NULL, 0, 2, 1),
(56, 10, 12, 2, 1, NULL, '2018-09-13', '13:30 hrs', NULL, NULL, NULL, 1, 1, 1),
(57, 14, 18, 2, 1, 14, '2018-09-13', '15:00 hrs', NULL, NULL, NULL, 0, 3, 1),
(58, 22, 23, 1, 1, 22, '2018-09-24', '10:30 hrs', NULL, NULL, NULL, 0, 2, 1),
(59, 29, 19, 1, 1, NULL, '2018-09-24', '12:00 hrs', NULL, NULL, NULL, 1, 1, 1),
(60, 24, 33, 1, 1, 24, '2018-09-24', '13:30 hrs', NULL, NULL, NULL, 0, 3, 1),
(61, 3, 11, 2, 1, 3, '2018-09-24', '15:00 hrs', NULL, NULL, NULL, 0, 6, 1),
(62, 26, 34, 1, 1, 26, '2018-09-25', '10:30 hrs', NULL, NULL, NULL, 0, 4, 1),
(63, 28, 31, 1, 1, 28, '2018-09-25', '14:00 hrs', NULL, NULL, NULL, 0, 4, 1),
(64, 32, 36, 1, 1, 32, '2018-09-25', '15:30 hrs', NULL, NULL, NULL, 0, 1, 0),
(65, 5, 18, 2, 1, 5, '2018-09-26', '12:00 hrs', NULL, NULL, NULL, 0, 7, 0),
(66, 13, 15, 2, 1, 13, '2018-09-26', '13:30 hrs', NULL, NULL, NULL, 0, 1, 0),
(67, 2, 12, 2, 1, 2, '2018-09-26', '15:00 hrs', NULL, NULL, NULL, 0, 3, 1),
(68, 7, 16, 2, 1, 7, '2018-09-27', '10:30 hrs', NULL, NULL, NULL, 0, 3, 0),
(69, 20, 28, 1, 1, 20, '2018-09-27', '12:00 hrs', NULL, NULL, NULL, 0, 2, 1),
(70, 4, 10, 2, 1, 4, '2018-09-27', '13:30 hrs', NULL, NULL, NULL, 0, 2, 0),
(71, 29, 36, 1, 1, 29, '2018-09-27', '15:00 hrs', NULL, NULL, NULL, 0, 7, 0),
(72, 14, 13, 2, 1, 13, '2018-09-28', '10:30 hrs', NULL, NULL, NULL, 0, 1, 2),
(73, 9, 12, 2, 1, 9, '2018-09-28', '12:00 hrs', NULL, NULL, NULL, 0, 5, 0),
(74, 24, 34, 1, 1, 24, '2018-09-28', '13:30 hrs', NULL, NULL, NULL, 0, 2, 0),
(75, 8, 1, 2, 1, 8, '2018-09-28', '19:00 hrs', NULL, NULL, NULL, 0, 3, 0),
(76, 27, 25, 1, 1, 27, '2018-09-28', '20:30 hrs', NULL, NULL, NULL, 0, 2, 1),
(77, 30, 35, 1, 1, 30, '2018-09-29', '15:00 hrs', NULL, NULL, NULL, 0, 7, 1),
(78, 17, 7, 2, 1, NULL, '2018-09-29', '16:30 hrs', NULL, NULL, NULL, 1, 2, 2),
(79, 6, 16, 2, 1, 6, '2018-09-29', '18:00 hrs', NULL, NULL, NULL, 0, 4, 0),
(80, 21, 33, 1, 1, 21, '2018-09-29', '19:30 hrs', NULL, NULL, NULL, 0, 7, 0),
(81, 22, 20, 1, 1, 20, '2018-10-01', '10:30 hrs', NULL, NULL, NULL, 0, 0, 2),
(82, 16, 5, 2, 1, NULL, '2018-10-01', '12:00 hrs', NULL, NULL, NULL, 1, 3, 3),
(83, 26, 31, 1, 1, 26, '2018-10-01', '13:30 hrs', NULL, NULL, NULL, 0, 3, 0),
(84, 18, 12, 2, 1, 12, '2018-10-01', '15:00 hrs', NULL, NULL, NULL, 0, 1, 3),
(85, 34, 28, 1, 1, NULL, '2018-10-02', '10:30 hrs', NULL, NULL, NULL, 1, 2, 2),
(86, 6, 9, 2, 1, 6, '2018-10-02', '14:00 hrs', NULL, NULL, NULL, 0, 3, 1),
(87, 21, 23, 1, 1, 21, '2018-10-02', '15:30 hrs', NULL, NULL, NULL, 0, 1, 0),
(88, 25, 29, 1, 1, 25, '2018-10-03', '12:00 hrs', NULL, NULL, NULL, 0, 7, 1),
(89, 7, 8, 2, 1, NULL, '2018-10-03', '13:30 hrs', NULL, NULL, NULL, 1, 0, 0),
(90, 2, 17, 2, 1, 2, '2018-10-03', '15:00 hrs', NULL, NULL, NULL, 0, 2, 1),
(91, 5, 6, 2, 1, NULL, '2018-10-04', '10:30 hrs', NULL, NULL, NULL, 1, 3, 3),
(92, 33, 28, 1, 1, 33, '2018-10-04', '12:00 hrs', NULL, NULL, NULL, 0, 3, 2),
(93, 4, 12, 2, 1, 4, '2018-10-04', '13:30 hrs', NULL, NULL, NULL, 0, 2, 0),
(94, 15, 2, 2, 1, 2, '2018-10-05', '10:30 hrs', NULL, NULL, NULL, 0, 1, 4),
(95, 1, 17, 2, 1, 1, '2018-10-05', '12:00 hrs', NULL, NULL, NULL, 0, 1, 0),
(96, 25, 34, 1, 1, 25, '2018-10-05', '13:30 hrs', NULL, NULL, NULL, 0, 3, 1),
(97, 4, 7, 2, 1, 4, '2018-10-06', '15:00 hrs', NULL, NULL, NULL, 0, 2, 0),
(98, 30, 24, 1, 1, 30, '2018-10-06', '16:30 hrs', NULL, NULL, NULL, 0, 7, 1),
(99, 27, 32, 1, 1, 27, '2018-10-06', '18:00 hrs', NULL, NULL, NULL, 0, 2, 0),
(100, 35, 36, 1, 1, 35, '2018-10-06', '19:30 hrs', NULL, NULL, NULL, 0, 1, 0),
(101, 17, 5, 2, 1, 17, '2018-10-25', '10:30 hrs', NULL, NULL, NULL, 0, 5, 2),
(102, 33, 34, 1, 1, NULL, '2018-10-25', '12:00 hrs', NULL, NULL, NULL, 1, 0, 0),
(103, 10, 18, 2, 1, 10, '2018-10-25', '13:30 hrs', NULL, NULL, NULL, 0, 2, 1),
(104, 26, 28, 1, 1, 26, '2018-10-25', '15:00 hrs', NULL, NULL, NULL, 0, 3, 1),
(105, 13, 12, 2, 1, 13, '2018-10-26', '10:30 hrs', NULL, NULL, NULL, 0, 3, 0),
(106, 8, 14, 2, 1, 8, '2018-10-26', '12:00 hrs', NULL, NULL, NULL, 0, 3, 1),
(107, 1, 16, 2, 1, 16, '2018-10-26', '13:30 hrs', NULL, NULL, NULL, 0, 0, 1),
(108, 11, 6, 2, 1, 6, '2018-10-26', '19:00 hrs', NULL, NULL, NULL, 0, 2, 5),
(109, 27, 29, 1, 1, 27, '2018-10-26', '20:30 hrs', NULL, NULL, NULL, 0, 3, 1),
(110, 4, 9, 2, 1, NULL, '2018-10-27', '15:00 hrs', NULL, NULL, NULL, 1, 1, 1),
(111, 27, 28, 1, 1, NULL, '2018-10-27', '16:30 hrs', NULL, NULL, NULL, 1, 2, 2),
(112, 35, 21, 1, 1, NULL, '2018-10-27', '18:00 hrs', NULL, NULL, NULL, 1, 3, 3),
(113, 30, 31, 1, 1, NULL, '2018-10-27', '19:30 hrs', NULL, NULL, NULL, 1, 1, 1)
(114, 65, 66, 6, 2, 65, '2018-04-16', '14:00', NULL, NULL, NULL, '0'), 
(115, 67, 68, 6, 2, 68, '2018-04-16', '14:45', NULL, NULL, NULL, '0'),
(116, 37, 38, 3, 3, 37, '2018-05-05', '13:00', NULL, NULL, NULL, '0', 72, 52), 
(117, 39, 40, 3, 3, 39, '2018-05-05', '14:00', NULL, NULL, NULL, '0', 50, 35), 
(118, 41, 42, 3, 3, 41, '2018-05-05', '15:00', NULL, NULL, NULL, '0', 54, 47), 
(119, 43, 44, 3, 3, 44, '2018-05-06', '12:00', NULL, NULL, NULL, '0', 55, 58), 
(120, 45, 46, 3, 3, 45, '2018-05-06', '13:00', NULL, NULL, NULL, '0', 51, 50), 
(121, 47, 48, 4, 3, 47, '2018-05-06', '14:00', NULL, NULL, NULL, '0', 55, 40), 
(122, 49, 50, 4, 3, 50, '2018-05-06', '15:00', NULL, NULL, NULL, '0', 50, 60), 
(123, 51, 52, 4, 3, 51, '2018-05-07', '12:00', NULL, NULL, NULL, '0', 50, 45), 
(124, 53, 54, 4, 3, 53, '2018-05-07', '13:00', NULL, NULL, NULL, '0', 51, 50),
(125, 55, 56, 5, 3, 56, '2018-05-07', '14:00', NULL, NULL, NULL, '0', 53, 55), 
(126, 57, 58, 5, 3, 57, '2018-05-07', '15:00', NULL, NULL, NULL, '0', 60, 30), 
(127, 59, 60, 5, 3, 60, '2018-05-08', '12:00', NULL, NULL, NULL, '0', 57, 45), 
(128, 61, 62, 5, 3, 61, '2018-05-08', '13:00', NULL, NULL, NULL, '0', 70, 55), 
(129, 63, 64, 5, 3, 64, '2018-05-08', '14:00', NULL, NULL, NULL, '0', 45, 52),
(130, 69, 70, 6, 2, 69, '2018-04-17', '14:00', NULL, NULL, NULL, '0', 2, 1),
(131, 71, 72, 6, 2, 72, '2018-04-17', '14:45', NULL, NULL, NULL, '0', 0, 6);


INSERT INTO `arbitros` (`id`, `nombre`, `carrera`, `fecha_ingreso`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Nicolas Pavez', 'Ingenieria civil Industrial', '2018-09-10', NULL, NULL, NULL),
(2, 'Franco Roca', 'Ingenieria civil Metalurgica', '2018-09-02', NULL, NULL, NULL),
(3, 'Diego Pino', 'Educacion Fisica', '2018-09-02', NULL, NULL, NULL);


INSERT INTO `arbitrajes` (`partidoid`, `arbitroid`, `tipo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Juez Central', NULL, NULL, NULL);

INSERT INTO `campeonatos` (`id`, `divisionid`, `ano`, `nombre`, `semestre`, `campeon`, `fecha_inicio`, `fecha_termino`, `reglamento`) VALUES
(1, 1, 2018, 'Torneo de Verano', 'Segundo Semestre', NULL, '2018-08-27', '2018-12-15', NULL),
(2, 2, 2018, 'Torneo de Verano Segunda Division', 'Segundo Semestre', NULL, '2018-08-27', '2018-12-15', NULL),
(3, 3, 2018, 'Torneo Primera Division Basquetbol', 'Todo el año', NULL, '2018-03-15', '2018-12-03', NULL, NULL, NULL, NULL), 
(4, 4, 2018, 'Torneo Segunda Division Basquetbol', 'Todo el año', NULL, '2018-03-12', '2018-12-09', NULL, NULL, NULL, NULL), 
(5, 5, 2018, 'Torneo Tercera Division Basquetbol', 'Todo el año', NULL, '2018-03-12', '2018-12-16', NULL, NULL, NULL, NULL),
(6, 6, 2018, 'Champions de Ingeniería', 'Primer Semestre', NULL, '2018-03-15', '2018-06-10', NULL, NULL, NULL, NULL);



INSERT INTO `sanciones` (`id`, `jugadorid`, `tiempo`, `comentario`) VALUES
(1, 36, 25, 'Por golpear al arbitro'),
(2, 63, 2, 'Golpea bruscamente a jugador rival', NULL, NULL, NULL), 
(3, 65, 4, 'Juego brusco grave', NULL, NULL, NULL), 
(4, 22, 5, 'Conducta antideportiva', NULL, NULL, NULL), 
(5, 23, 3, 'Por evitar con la mano que la pelota ingrese al arco', NULL, NULL, NULL), 
(6, 13, 1, 'Doble amarilla', NULL, NULL, NULL),
(7, 184, 2, 'Juego brusco', NULL, NULL, NULL), 
(8, 167, 3, 'Desaprueba al árbitro con groserías', NULL, NULL, NULL);

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `password`, `admin`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Daniel Ortega', 'chilotesensual@llamame.cl', 'elcostillaresmio', NULL, NULL, NULL, NULL),
(2, 'Julio Zapata', NULL, '12345678', NULL, NULL, NULL, NULL),
(3, 'Julio Zapata', NULL, '12345678', NULL, NULL, NULL, NULL),
(4, 'fzf Zapata', NULL, 'fexrer42', NULL, NULL, NULL, NULL),
(5, 'asdfasdfasdf Zapata', NULL, 'pass', NULL, NULL, NULL, NULL);

INSERT INTO `partido_jugadors` (`partidoid`, `jugadorid`, `puntos`, `triples`, `amarilla`, `roja`, `faltas_b`) VALUES
(101, 11, 1, 0, 1, 0, 0, NULL, NULL, NULL),
(101, 12, 1, 0, 0, 0, 0, NULL, NULL, NULL), 
(101, 35, 3, 0, 1, 0, 0, NULL, NULL, NULL),
(101, 36, 2, 0, 1, 1, 0, NULL, NULL, NULL),
(102, 63, 0, 0, 0, 1, 0, NULL, NULL, NULL), 
(102, 65, 0, 0, 1, 1, 0, NULL, NULL, NULL),
(103, 22, 2, 0, 1, 1, 0, NULL, NULL, NULL), 
(103, 37, 1, 0, 0, 0, 0, NULL, NULL, NULL), 
(104, 53, 3, 0, 1, 0, 0, NULL, NULL, NULL), 
(104, 55, 1, 0, 0, 0, 0, NULL, NULL, NULL), 
(105, 28, 2, 0, 0, 0, 0, NULL, NULL, NULL), 
(105, 27, 1, 0, 1, 0, 0, NULL, NULL, NULL), 
(106, 18, 2, 0, 0, 0, 0, NULL, NULL, NULL), 
(106, 17, 1, 0, 1, 0, 0, NULL, NULL, NULL), 
(106, 29, 1, 0, 0, 0, 0, NULL, NULL, NULL), 
(107, 33, 1, 0, 1, 0, 0, NULL, NULL, NULL), 
(108, 23, 2, 0, 0, 1, 0, NULL, NULL, NULL), 
(108, 13, 3, 0, 0, 1, 0, NULL, NULL, NULL), 
(108, 14, 2, 0, 0, 0, 0, NULL, NULL, NULL), 
(109, 54, 2, 0, 1, 0, 0, NULL, NULL, NULL),
(131, 192, 3, 0, 0, 0, 0, NULL, NULL, NULL), 
(131, 193, 2, 0, 1, 0, 0, NULL, NULL, NULL), 
(131, 194, 1, 0, 0, 0, 0, NULL, NULL, NULL), 
(131, 190, 0, 0, 1, 0, 0, NULL, NULL, NULL),
(130, 183, 2, 0, 0, 0, 0, NULL, NULL, NULL), 
(130, 186, 1, 0, 0, 0, 0, NULL, NULL, NULL),
(129, 165, 24, 3, 0, 0, 2, NULL, NULL, NULL), 
(129, 166, 21, 3, 0, 0, 3, NULL, NULL, NULL), 
(129, 168, 30, 5, 0, 0, 4, NULL, NULL, NULL), 
(129, 169, 20, 0, 0, 0, 0, NULL, NULL, NULL), 
(129, 170, 2, 0, 0, 0, 2, NULL, NULL, NULL);

INSERT INTO `noticias` (`id`, `deporteid`, `texto`, `deleted_at`, `created_at`, `updated_at`, `titulo`) VALUES 
(1, 1, 'Informática se prepara para enfrentar a su próximo rival, necesitan los 3 puntos para poder seguir subiendo en la tabla.', NULL, NULL, NULL, 'Informática ya tiene rival.'), 
(2, 2, 'El equipo comandado por su gran figura busca la clasificación a la siguiente ronda del campeonato.', NULL, NULL, NULL, 'Volátiles en busca de la clasificación'), 
(3, 3, 'El equipo azul de la tercera división del campeonato va por el paso a la final ante su similar de Biología.', NULL, NULL, NULL, 'Informática por la final');


