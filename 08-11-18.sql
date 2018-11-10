
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arbitrajes`
--

CREATE TABLE `arbitrajes` (
  `partidoid` int(10) UNSIGNED NOT NULL,
  `arbitroid` int(10) UNSIGNED NOT NULL,
  `tipo` varchar(80) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `arbitrajes`
--

INSERT INTO `arbitrajes` (`partidoid`, `arbitroid`, `tipo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Juez Central', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arbitros`
--

CREATE TABLE `arbitros` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `carrera` varchar(45) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `arbitros`
--

INSERT INTO `arbitros` (`id`, `nombre`, `carrera`, `fecha_ingreso`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Nicolas Pavez', 'Ingenieria civil Industrial', '2018-09-10', NULL, NULL, NULL),
(2, 'Franco Roca', 'Ingenieria civil Metalurgica', '2018-09-02', NULL, NULL, NULL),
(3, 'Diego Pino', 'Educacion Fisica', '2018-09-02', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campeonatos`
--

CREATE TABLE `campeonatos` (
  `id` int(10) UNSIGNED NOT NULL,
  `divisionid` int(10) UNSIGNED DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `nombre` varchar(120) DEFAULT NULL,
  `semestre` varchar(45) DEFAULT NULL,
  `campeon` int(10) UNSIGNED DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_termino` date DEFAULT NULL,
  `reglamento` varchar(120) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `campeonatos`
--

INSERT INTO `campeonatos` (`id`, `divisionid`, `ano`, `nombre`, `semestre`, `campeon`, `fecha_inicio`, `fecha_termino`, `reglamento`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2018, 'Torneo de Verano Primera División', 'Segundo Semestre', NULL, '2018-08-27', '2018-12-15', 'https://docs.google.com/document/d/1t6yNt7IhNUpkJduYNKolzZUBU7Y0r9gWDIc2qH68g70/edit?usp=sharing', NULL, NULL, NULL),
(2, 2, 2018, 'Torneo de Verano Segunda Division', 'Segundo Semestre', NULL, '2018-08-27', '2018-12-15', 'https://docs.google.com/document/d/1t6yNt7IhNUpkJduYNKolzZUBU7Y0r9gWDIc2qH68g70/edit?usp=sharing', NULL, NULL, NULL),
(3, 3, 2018, 'Torneo Primera Division Basquetbol', 'Todo el año', NULL, '2018-03-15', '2018-12-03', 'https://docs.google.com/document/d/1ool2hwphHAuNmVcviUsJAhEc8gkRZk-VJkAD1WLhImQ/edit?usp=sharing', NULL, NULL, NULL),
(4, 4, 2018, 'Torneo Segunda Division Basquetbol', 'Todo el año', NULL, '2018-03-12', '2018-12-09', 'https://docs.google.com/document/d/1ool2hwphHAuNmVcviUsJAhEc8gkRZk-VJkAD1WLhImQ/edit?usp=sharing', NULL, NULL, NULL),
(5, 5, 2018, 'Torneo Tercera Division Basquetbol', 'Todo el año', NULL, '2018-03-12', '2018-12-16', 'https://docs.google.com/document/d/1ool2hwphHAuNmVcviUsJAhEc8gkRZk-VJkAD1WLhImQ/edit?usp=sharing', NULL, NULL, NULL),
(6, 6, 2018, 'Champions de Ingeniería', 'Primer Semestre', NULL, '2018-03-15', '2018-06-10', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(23, 4, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 2),
(25, 4, 'carrera', 'text', 'Carrera', 0, 1, 1, 1, 1, 1, NULL, 3),
(26, 4, 'fecha_ingreso', 'date', 'Fecha Ingreso', 0, 1, 1, 1, 1, 1, NULL, 4),
(27, 4, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(30, 5, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(31, 5, 'divisionid', 'text', 'Divisionid', 0, 1, 1, 1, 1, 1, NULL, 2),
(32, 5, 'ano', 'text', 'Ano', 0, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 5),
(34, 5, 'semestre', 'text', 'Semestre', 0, 1, 1, 1, 1, 1, NULL, 6),
(35, 5, 'campeon', 'text', 'Campeon', 0, 1, 1, 1, 1, 1, NULL, 3),
(36, 5, 'fecha_inicio', 'date', 'Fecha Inicio', 0, 1, 1, 1, 1, 1, NULL, 7),
(37, 5, 'fecha_termino', 'date', 'Fecha Termino', 0, 1, 1, 1, 1, 1, NULL, 8),
(38, 5, 'reglamento', 'text', 'Reglamento', 0, 1, 1, 1, 1, 1, NULL, 9),
(39, 5, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 10),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 1, 0, NULL, 11),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 12),
(42, 6, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(44, 6, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 1, 0, NULL, 3),
(45, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 1, 0, NULL, 4),
(46, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(47, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(48, 7, 'deporteid', 'text', 'Deporteid', 0, 0, 1, 0, 0, 0, NULL, 2),
(49, 7, 'nombre', 'text', 'Division', 0, 1, 1, 1, 1, 1, NULL, 4),
(50, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 5),
(51, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 6),
(52, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(53, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(54, 8, 'divisionid', 'text', 'Divisionid', 0, 1, 1, 1, 1, 1, NULL, 2),
(55, 8, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 3),
(56, 8, 'carrera', 'text', 'Carrera', 0, 1, 1, 1, 1, 1, NULL, 4),
(57, 8, 'facultad', 'text', 'Facultad', 0, 1, 1, 1, 1, 1, NULL, 5),
(58, 8, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 6),
(59, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 7),
(60, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(61, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(62, 10, 'equipoid', 'text', 'Equipoid', 1, 0, 0, 0, 0, 0, NULL, 2),
(63, 10, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 3),
(64, 10, 'edad', 'number', 'Edad', 0, 1, 1, 1, 1, 1, NULL, 4),
(65, 10, 'ano_ingreso', 'text', 'Año Ingreso', 0, 1, 1, 1, 1, 1, NULL, 5),
(66, 10, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 6),
(67, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 7),
(68, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(69, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(70, 12, 'noticiaid', 'text', 'Noticiaid', 1, 0, 0, 0, 0, 0, NULL, 2),
(71, 12, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, NULL, 3),
(72, 12, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 4),
(73, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 5),
(74, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(75, 13, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(76, 13, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 2),
(77, 13, 'ubicacion', 'coordinates', 'Ubicacion', 0, 1, 1, 1, 1, 1, NULL, 3),
(78, 13, 'capacidad', 'number', 'Capacidad', 0, 1, 1, 1, 1, 1, NULL, 4),
(79, 13, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 5),
(80, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 6),
(81, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(88, 15, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(89, 15, 'equipo_1', 'text', 'Equipo 1', 0, 0, 0, 0, 0, 0, NULL, 2),
(90, 15, 'equipo_2', 'text', 'Equipo 2', 0, 0, 0, 0, 0, 0, NULL, 3),
(91, 15, 'divisionid', 'text', 'Divisionid', 0, 0, 0, 0, 0, 0, NULL, 4),
(92, 15, 'lugarid', 'text', 'Lugarid', 0, 0, 0, 0, 0, 0, NULL, 5),
(93, 15, 'ganador', 'text', 'Ganador', 0, 0, 0, 0, 0, 0, NULL, 6),
(94, 15, 'fecha', 'date', 'Fecha', 0, 1, 1, 1, 1, 1, NULL, 7),
(95, 15, 'hora', 'text', 'Hora', 0, 1, 1, 1, 1, 1, NULL, 8),
(96, 15, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 9),
(97, 15, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 10),
(98, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(99, 15, 'empate', 'number', 'Empate', 0, 1, 1, 1, 1, 1, NULL, 12),
(100, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(101, 16, 'jugadorid', 'text', 'Jugadorid', 1, 0, 0, 0, 0, 0, NULL, 2),
(102, 16, 'tiempo', 'time', 'Tiempo', 0, 1, 1, 1, 1, 1, NULL, 3),
(103, 16, 'comentario', 'text', 'Comentario', 0, 1, 1, 1, 1, 1, NULL, 4),
(104, 16, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 5),
(105, 16, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 6),
(106, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(107, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(108, 17, 'usuarioid', 'text', 'Usuarioid', 0, 0, 0, 0, 0, 0, NULL, 2),
(109, 17, 'equipoid', 'text', 'Equipoid', 0, 0, 0, 0, 0, 0, NULL, 3),
(110, 17, 'fecha', 'date', 'Fecha', 0, 1, 1, 1, 1, 1, NULL, 4),
(111, 17, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 5),
(112, 17, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 6),
(113, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(114, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(115, 19, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, NULL, 2),
(116, 19, 'correo', 'text', 'Correo', 0, 1, 1, 1, 1, 1, NULL, 3),
(117, 19, 'password', 'password', 'Password', 0, 1, 1, 1, 1, 1, NULL, 4),
(118, 19, 'admin', 'text', 'Admin', 0, 0, 0, 0, 0, 0, NULL, 5),
(119, 19, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 6),
(120, 19, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 7),
(121, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(123, 5, 'campeonato_belongsto_divisione_relationship', 'relationship', 'Division', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Divisione\",\"table\":\"divisiones\",\"type\":\"belongsTo\",\"column\":\"divisionid\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"arbitrajes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(125, 6, 'deporte', 'text', 'Deporte', 0, 1, 1, 1, 1, 1, NULL, 2),
(126, 7, 'divisione_belongsto_deporte_relationship', 'relationship', 'Deporte', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Divisione\",\"table\":\"deportes\",\"type\":\"belongsTo\",\"column\":\"deporteid\",\"key\":\"id\",\"label\":\"deporte\",\"pivot_table\":\"arbitrajes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(128, 5, 'campeonato_belongsto_equipo_relationship_1', 'relationship', 'Campeon', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Campeonato\",\"table\":\"equipos\",\"type\":\"belongsTo\",\"column\":\"campeon\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"arbitrajes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(129, 8, 'equipo_belongsto_divisione_relationship', 'relationship', 'Division', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Divisione\",\"table\":\"divisiones\",\"type\":\"belongsTo\",\"column\":\"divisionid\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"arbitrajes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(130, 10, 'jugadore_belongsto_equipo_relationship', 'relationship', 'Equipo', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Equipo\",\"table\":\"equipos\",\"type\":\"belongsTo\",\"column\":\"equipoid\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"arbitrajes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(131, 16, 'sancione_belongsto_jugadore_relationship', 'relationship', 'Jugador', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Jugadore\",\"table\":\"jugadores\",\"type\":\"belongsTo\",\"column\":\"jugadorid\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"arbitrajes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(132, 17, 'subscripcione_belongsto_usuario_relationship', 'relationship', 'Usuario', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Usuario\",\"table\":\"usuarios\",\"type\":\"belongsTo\",\"column\":\"usuarioid\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"arbitrajes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(133, 17, 'subscripcione_belongsto_equipo_relationship', 'relationship', 'Equipo', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Equipo\",\"table\":\"equipos\",\"type\":\"belongsTo\",\"column\":\"equipoid\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"arbitrajes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(134, 12, 'imagene_belongsto_noticia_relationship', 'relationship', 'noticias', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Noticia\",\"table\":\"noticias\",\"type\":\"belongsTo\",\"column\":\"noticiaid\",\"key\":\"id\",\"label\":\"titulo\",\"pivot_table\":\"arbitrajes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(149, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(150, 25, 'deporteid', 'text', 'Deporteid', 0, 0, 0, 0, 0, 0, NULL, 2),
(151, 25, 'texto', 'text', 'Texto', 0, 1, 1, 1, 1, 1, NULL, 3),
(152, 25, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 4),
(153, 25, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 5),
(154, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(155, 25, 'titulo', 'text', 'Titulo', 0, 1, 1, 1, 1, 1, NULL, 7),
(156, 25, 'noticia_belongsto_deporte_relationship', 'relationship', 'Deporte', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Deporte\",\"table\":\"deportes\",\"type\":\"belongsTo\",\"column\":\"deporteid\",\"key\":\"id\",\"label\":\"deporte\",\"pivot_table\":\"arbitrajes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(157, 15, 'partido_belongsto_divisione_relationship', 'relationship', 'Division', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Divisione\",\"table\":\"divisiones\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"arbitrajes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(158, 15, 'partido_belongsto_equipo_relationship', 'relationship', 'Equipo 1', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Equipo\",\"table\":\"equipos\",\"type\":\"belongsTo\",\"column\":\"equipo_1\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"arbitrajes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(159, 15, 'partido_belongsto_equipo_relationship_1', 'relationship', 'Equipo 2', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Equipo\",\"table\":\"equipos\",\"type\":\"belongsTo\",\"column\":\"equipo_2\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"arbitrajes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(160, 15, 'partido_belongsto_lugare_relationship', 'relationship', 'Lugar', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Lugare\",\"table\":\"lugares\",\"type\":\"belongsTo\",\"column\":\"lugarid\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"arbitrajes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(161, 15, 'partido_belongsto_equipo_relationship_2', 'relationship', 'Ganador', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Equipo\",\"table\":\"equipos\",\"type\":\"belongsTo\",\"column\":\"ganador\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"arbitrajes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 17),
(182, 31, 'partidoid', 'text', 'Partidoid', 1, 1, 1, 1, 1, 1, NULL, 1),
(183, 31, 'jugadorid', 'text', 'Jugadorid', 1, 1, 1, 1, 1, 1, NULL, 2),
(184, 31, 'puntos', 'text', 'Puntos', 0, 1, 1, 1, 1, 1, NULL, 3),
(185, 31, 'triples', 'text', 'Triples', 0, 1, 1, 1, 1, 1, NULL, 4),
(186, 31, 'amarilla', 'text', 'Amarilla', 0, 1, 1, 1, 1, 1, NULL, 5),
(187, 31, 'roja', 'text', 'Roja', 0, 1, 1, 1, 1, 1, NULL, 6),
(188, 31, 'faltas_b', 'text', 'Faltas B', 0, 1, 1, 1, 1, 1, NULL, 7),
(189, 31, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, NULL, 8),
(190, 31, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 9),
(191, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 10),
(192, 31, 'partido_jugador_belongsto_partido_relationship', 'relationship', 'Partido', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Partido\",\"table\":\"partidos\",\"type\":\"belongsTo\",\"column\":\"partidoid\",\"key\":\"id\",\"label\":\"fecha\",\"pivot_table\":\"arbitrajes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(193, 31, 'partido_jugador_belongsto_jugadore_relationship', 'relationship', 'Jugador', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\jugadore\",\"table\":\"jugadores\",\"type\":\"belongsTo\",\"column\":\"jugadorid\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"arbitrajes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(194, 33, 'partidoid', 'text', 'Partidoid', 1, 0, 0, 0, 0, 0, NULL, 1),
(195, 33, 'arbitroid', 'text', 'Arbitroid', 1, 0, 0, 0, 0, 0, NULL, 2),
(196, 33, 'tipo', 'text', 'Tipo', 0, 1, 1, 1, 1, 1, NULL, 3),
(197, 33, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 4),
(198, 33, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 5),
(199, 33, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(200, 33, 'arbitraje_belongsto_partido_relationship', 'relationship', 'partidos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Partido\",\"table\":\"partidos\",\"type\":\"belongsTo\",\"column\":\"partidoid\",\"key\":\"id\",\"label\":\"fecha\",\"pivot_table\":\"arbitrajes\",\"pivot\":\"0\",\"taggable\":null}', 7),
(201, 33, 'arbitraje_belongsto_arbitro_relationship', 'relationship', 'arbitros', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Arbitro\",\"table\":\"arbitros\",\"type\":\"belongsTo\",\"column\":\"arbitroid\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"arbitrajes\",\"pivot\":\"0\",\"taggable\":null}', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-10-19 01:19:50', '2018-10-19 01:19:50'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-10-19 01:19:51', '2018-10-19 01:19:51'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-10-19 01:19:51', '2018-10-19 01:19:51'),
(4, 'arbitros', 'arbitros', 'Arbitro', 'Arbitros', NULL, 'App\\Arbitro', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-20 20:17:29', '2018-10-20 22:27:08'),
(5, 'campeonatos', 'campeonatos', 'Campeonato', 'Campeonatos', NULL, 'App\\Campeonato', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-20 20:21:18', '2018-10-20 20:21:18'),
(6, 'deportes', 'deportes', 'Deporte', 'Deportes', NULL, 'App\\Deporte', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-20 20:21:45', '2018-10-20 20:21:45'),
(7, 'divisiones', 'divisiones', 'Divisione', 'Divisiones', NULL, 'App\\Divisione', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-20 20:22:05', '2018-10-20 20:22:05'),
(8, 'equipos', 'equipos', 'Equipo', 'Equipos', NULL, 'App\\Equipo', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"nombre\",\"order_display_column\":\"nombre\"}', '2018-10-20 20:26:06', '2018-10-20 20:26:06'),
(10, 'jugadores', 'jugadores', 'Jugadore', 'Jugadores', NULL, 'App\\Jugadore', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-20 20:26:16', '2018-10-20 20:26:16'),
(12, 'imagenes', 'imagenes', 'Imagene', 'Imagenes', NULL, 'App\\Imagene', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-20 20:26:59', '2018-10-20 20:26:59'),
(13, 'lugares', 'lugares', 'Lugare', 'Lugares', NULL, 'App\\Lugare', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"nombre\",\"order_display_column\":null}', '2018-10-20 20:34:41', '2018-10-20 20:34:41'),
(15, 'partidos', 'partidos', 'Partido', 'Partidos', NULL, 'App\\Partido', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-20 20:35:52', '2018-10-20 20:35:52'),
(16, 'sanciones', 'sanciones', 'Sancione', 'Sanciones', NULL, 'App\\Sancione', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-20 20:36:14', '2018-10-20 20:36:14'),
(17, 'subscripciones', 'subscripciones', 'Subscripcione', 'Subscripciones', NULL, 'App\\Subscripcione', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-20 20:36:32', '2018-10-20 20:36:32'),
(19, 'usuarios', 'usuarios', 'Usuario', 'Usuarios', NULL, 'App\\Usuario', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-20 21:23:29', '2018-10-20 21:23:29'),
(25, 'noticias', 'noticias', 'Noticia', 'Noticias', NULL, 'App\\Noticia', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-21 05:30:46', '2018-10-21 05:30:46'),
(31, 'partido_jugadors', 'partido-jugadors', 'Partido Jugador', 'Partido Jugadors', NULL, 'App\\PartidoJugador', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-21 05:45:41', '2018-10-21 05:45:41'),
(33, 'arbitrajes', 'arbitrajes', 'Arbitraje', 'Arbitrajes', NULL, 'App\\Arbitraje', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-21 05:51:22', '2018-10-21 05:51:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportes`
--

CREATE TABLE `deportes` (
  `id` int(10) UNSIGNED NOT NULL,
  `deporte` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `deportes`
--

INSERT INTO `deportes` (`id`, `deporte`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Futbol', NULL, NULL, NULL),
(2, 'Baby Futbol', NULL, NULL, NULL),
(3, 'Basquetbol', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `divisiones`
--

CREATE TABLE `divisiones` (
  `id` int(10) UNSIGNED NOT NULL,
  `deporteid` int(10) UNSIGNED DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `divisiones`
--

INSERT INTO `divisiones` (`id`, `deporteid`, `nombre`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Primera Division', NULL, NULL, NULL),
(2, 1, 'Segunda Division', NULL, NULL, NULL),
(3, 3, 'Serie de Honor', NULL, NULL, NULL),
(4, 3, 'Segunda Division', NULL, NULL, NULL),
(5, 3, 'Tercera Division', NULL, NULL, NULL),
(6, 2, 'Champions Ingeniería 2018', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(10) UNSIGNED NOT NULL,
  `divisionid` int(10) UNSIGNED DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `carrera` varchar(120) DEFAULT NULL,
  `facultad` varchar(120) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `divisionid`, `nombre`, `carrera`, `facultad`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'Informatica', 'Ingenieria civil Informatica', 'Ingenieria', NULL, NULL, NULL),
(2, 2, 'DIE', 'Ingenieria civil Electrica', 'Ingenieria', NULL, NULL, NULL),
(3, 2, 'Quimica', 'Ingenieria civil Quimica', 'Ingenieria', NULL, NULL, NULL),
(4, 2, 'FAUG', 'vacio', 'Arquitectura, Urbanizacion y Geografia', NULL, NULL, NULL),
(5, 2, 'PMyC', 'Pedagogia en matematica y computacion', 'Educacion', NULL, NULL, NULL),
(6, 2, 'Biomedica', 'Ingenieria civil Biomedica', 'Ingenieria', NULL, NULL, NULL),
(7, 2, 'Farmacia', 'Farmacia', 'Farmacia y Nutricion', NULL, NULL, NULL),
(8, 2, 'Materiales', 'Ingenieria civil Materiales', 'Ingenieria', NULL, NULL, NULL),
(9, 2, 'Forestal', 'Ciencias Forestales y Agronomia', 'Ciencias Forestales', NULL, NULL, NULL),
(10, 2, 'Sindicato 3', 'vacio', 'vacio', NULL, NULL, NULL),
(11, 2, 'Enfermeria', 'Enfermeria y Obstetricia', 'Enfermeria', NULL, NULL, NULL),
(12, 2, 'Historia', 'Pedagogia en Historia', 'Educacion', NULL, NULL, NULL),
(13, 2, 'ICM', 'Ingenieria civil Matematica', 'Ciencias fisicas y matematicas', NULL, NULL, NULL),
(14, 2, 'Geofisica', 'Geofisica', 'Ciencias fisicas y matematicas', NULL, NULL, NULL),
(15, 2, 'Ballena', 'Oceaonagrafia', 'Ciencias naturales y oceanograficas', NULL, NULL, NULL),
(16, 2, 'Auditoria', 'Auditoria', 'Ciencias economicas y administrativas', NULL, NULL, NULL),
(17, 2, 'Ingenieria 85', 'vacio', 'Ingenieria', NULL, NULL, NULL),
(18, 2, 'Electronica', 'Ingenieria civil Electronica', 'Ingenieria', NULL, NULL, NULL),
(19, 1, 'DEF', 'Educacion fisica', 'Educacion', NULL, NULL, NULL),
(20, 1, 'Interlex', 'Derecho', 'Ciencias juridicas y sociales', NULL, NULL, NULL),
(21, 1, 'Virginio Gomez', 'vacio', 'vacio', NULL, NULL, NULL),
(22, 1, 'Civil de Minas', 'Ingenieria civil Minas', 'Ingenieria', NULL, NULL, NULL),
(23, 1, 'Industrial', 'Ingenieria civil Industrial', 'Ingenieria', NULL, NULL, NULL),
(24, 1, 'Sindicato 1', 'vacio', 'vacio', NULL, NULL, NULL),
(25, 1, 'Sociales', 'vacio', 'Ciencias sociales', NULL, NULL, NULL),
(26, 1, 'Educacion', 'vacio', 'Educacion', NULL, NULL, NULL),
(27, 1, 'Medicina', 'Medicina', 'Medicina', NULL, NULL, NULL),
(28, 1, 'Derecho', 'Derecho', 'Ciencias juridicas y sociales', NULL, NULL, NULL),
(29, 1, 'Metalurgica', 'Ingenieria civil Metalurgica', 'Ingenieria', NULL, NULL, NULL),
(30, 1, 'Ex Alumnos', 'vacio', 'vacio', NULL, NULL, NULL),
(31, 1, 'Comercial', 'Comercial', 'Ciencias economicas y administrativas', NULL, NULL, NULL),
(32, 1, 'Geologia', 'Geologia', 'Ciencias quimicas', NULL, NULL, NULL),
(33, 1, 'CFyM', 'vacio', 'Ciencias fisicas y matematicas', NULL, NULL, NULL),
(34, 1, 'Mecanica', 'Ingenieria civil Mecanica', 'Ingenieria', NULL, NULL, NULL),
(35, 1, 'Odontologia', 'Odontologia', 'Odontologia', NULL, NULL, NULL),
(36, 1, 'Civil', 'Ingenieria Civil', 'Ingenieria', NULL, NULL, NULL),
(37, 3, 'Medicina', 'Medicina', 'Medicina', NULL, NULL, NULL),
(38, 3, 'Ingenieria Mecanica', 'Ingenieria civil Mecanica', 'Ingenieria', NULL, NULL, NULL),
(39, 3, 'Ingenieria Civil', 'Ingenieria Civil', 'Ingenieria', NULL, NULL, NULL),
(40, 3, 'Ingenieria Ambiental', 'Ingenieria Ambiental', 'Ambiental', NULL, NULL, NULL),
(41, 3, 'DIE', 'vacio', 'Ingenieria', NULL, NULL, NULL),
(42, 3, 'Senior A', 'vacio', 'vacio', NULL, NULL, NULL),
(43, 3, 'IPVG', 'vacio', 'vacio', NULL, NULL, NULL),
(44, 3, 'Farmacia', 'Farmacia', 'Farmacia y Nutricion', NULL, NULL, NULL),
(45, 3, 'Ingenieria Civil Quimica', 'Ingenieria civil Quimica', 'Ingenieria', NULL, NULL, NULL),
(46, 3, 'Lex', 'Derecho', 'Ciencias juridicas y sociales', NULL, NULL, NULL),
(47, 4, 'Psicologia', 'Psicologia', 'Ciencias sociales', NULL, NULL, NULL),
(48, 4, 'Ciencias Forestales', 'vacio', 'Ciencias Forestales', NULL, NULL, NULL),
(49, 4, 'CFM', 'vacio', 'Ciencias fisicas y matematicas', NULL, NULL, NULL),
(50, 4, 'Educacion', 'vacio', 'Educacion', NULL, NULL, NULL),
(51, 4, 'Odontologia', 'Odontologia', 'Odontologia', NULL, NULL, NULL),
(52, 4, 'Veterinaria', 'Veterinaria', 'Veterinaria', NULL, NULL, NULL),
(53, 4, 'Senior B', 'vacio', 'vacio', NULL, NULL, NULL),
(54, 4, 'Medicina B', 'Medicina', 'Medicina', NULL, NULL, NULL),
(55, 5, 'Facultad La Ballena', 'vacio', 'Ciencias naturales y oceanograficas', NULL, NULL, NULL),
(56, 5, 'Geologia', 'Geologia', 'Ciencias quimicas', NULL, NULL, NULL),
(57, 5, 'Enfermeria', 'Enfermeria', 'Enfermeria', NULL, NULL, NULL),
(58, 5, 'DEF', 'Educacion Fisica', 'Educacion', NULL, NULL, NULL),
(59, 5, 'ICO', 'vacio', 'vacio', NULL, NULL, NULL),
(60, 5, 'Auditoria', 'Auditoria', 'Ciencias economicas y administrativas', NULL, NULL, NULL),
(61, 5, 'Agronomia', 'Agronomia', 'Ciencias Forestales', NULL, NULL, NULL),
(62, 5, 'Kinesiologia B', 'Kinesiologia', 'Medicina', NULL, NULL, NULL),
(63, 5, 'Informática', 'Ingeniería civil Informática', 'Ingeniería', NULL, NULL, NULL),
(64, 5, 'Biología', 'Ciencias biológicas', 'Ingeniería', NULL, NULL, NULL),
(65, 6, 'Melovers', 'Ingeniería civil Química', 'Ingeniería', NULL, NULL, NULL),
(66, 6, 'Tajo', 'Ingeniería civil Minas', 'Ingeniería', NULL, NULL, NULL),
(67, 6, 'Volátiles', 'Ingeniería civil Metalúrgica', 'Ingeniería', NULL, NULL, NULL),
(68, 6, 'Zorrimbos', 'Ingeniería civil Química', 'Ingeniería', NULL, NULL, NULL),
(69, 6, 'Guerreros de Baquedano', 'Ingeniería Comercial', 'Ciencias economicas y administrativas', NULL, NULL, NULL),
(70, 6, 'Chaneriales', 'Ingeniería civil Materiales', 'Ingeniería', NULL, NULL, NULL),
(71, 6, 'Vodka jrs', 'Ingeniería civil Materiales', 'Ingeniería', NULL, NULL, NULL),
(72, 6, 'Garra Mecánica', 'Ingeniería civil Mecánica', 'Ingeniería', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id` int(11) NOT NULL,
  `noticiaid` int(10) UNSIGNED NOT NULL,
  `url` varchar(150) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `id` int(10) UNSIGNED NOT NULL,
  `equipoid` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(160) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `ano_ingreso` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id`, `equipoid`, `nombre`, `edad`, `ano_ingreso`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Jeremias Torres', 23, 2013, NULL, NULL, NULL),
(2, 2, 'Juan Ignacio Burgos', 20, 2017, NULL, NULL, NULL),
(3, 1, 'Abelardo Norambuena', 23, 2014, NULL, NULL, NULL),
(4, 1, 'Alan Cotal', 18, 2018, NULL, NULL, NULL),
(5, 1, 'Benjamin Rodriguez', 21, 2015, NULL, NULL, NULL),
(6, 2, 'Diego Pulgar', 18, 2018, NULL, NULL, NULL),
(7, 3, 'Vicente Hernandez', 23, 2014, NULL, NULL, NULL),
(8, 3, 'Gonzalo Gutierrez', 19, 2017, NULL, NULL, NULL),
(9, 4, 'Alejandro Fuentes', 24, 2012, NULL, NULL, NULL),
(10, 4, 'Anibal de la Fuente', 25, 2011, NULL, NULL, NULL),
(11, 5, 'Julio Ibarra', 30, 2008, NULL, NULL, NULL),
(12, 5, 'Rodrigo Salazar', 25, 2011, NULL, NULL, NULL),
(13, 6, 'Nicolas Herrera', 19, 2017, NULL, NULL, NULL),
(14, 6, 'Juan Marin', 19, 2017, NULL, NULL, NULL),
(15, 7, 'Jorge Carcamo', 19, 2017, NULL, NULL, NULL),
(16, 7, 'Francisco Ibañez', 22, 2014, NULL, NULL, NULL),
(17, 8, 'Manuel Astroza', 18, 2018, NULL, NULL, NULL),
(18, 8, 'Andres Elgueda', 23, 2013, NULL, NULL, NULL),
(19, 9, 'Bastian Fernandez', 21, 2015, NULL, NULL, NULL),
(20, 9, 'Luis Gatica', 23, 2014, NULL, NULL, NULL),
(21, 10, 'Luis Barril', 34, 2006, NULL, NULL, NULL),
(22, 10, 'Pedro Nuñez', 58, 2006, NULL, NULL, NULL),
(23, 11, 'Paul Concha', 25, 2012, NULL, NULL, NULL),
(24, 11, 'Rodrigo Inzunza', 21, 2015, NULL, NULL, NULL),
(25, 12, 'Pablo Marin', 22, 2015, NULL, NULL, NULL),
(26, 12, 'Nicolas Verdugo', 20, 2016, NULL, NULL, NULL),
(27, 13, 'Leonardo Uribe', 20, 2016, NULL, NULL, NULL),
(28, 13, 'Gabriel Cires', 20, 2016, NULL, NULL, NULL),
(29, 14, 'Domingos Wissi', 21, 2015, NULL, NULL, NULL),
(30, 14, 'Raul Baier', 20, 2016, NULL, NULL, NULL),
(31, 15, 'Hector Gonzalez', 20, 2016, NULL, NULL, NULL),
(32, 15, 'Juan Pablo Morgado', 20, 2016, NULL, NULL, NULL),
(33, 16, 'Angel Maldonado', 23, 2014, NULL, NULL, NULL),
(34, 16, 'Alejandro Leal', 25, 2011, NULL, NULL, NULL),
(35, 17, 'Walter Victtoriano', 23, 2013, NULL, NULL, NULL),
(36, 17, 'Valentin Betancur', 26, 2011, NULL, NULL, NULL),
(37, 18, 'Mauricio Novoa', 20, 2016, NULL, NULL, NULL),
(38, 18, 'Piero Riva', 20, 2016, NULL, NULL, NULL),
(39, 19, 'Luciano Rojas', 23, 2013, NULL, NULL, NULL),
(40, 19, 'Ignacio Riquelme', 20, 2016, NULL, NULL, NULL),
(41, 21, 'Diego Munita', 20, 2016, NULL, NULL, NULL),
(42, 21, 'Jose Inostroza', 20, 2016, NULL, NULL, NULL),
(43, 20, 'Ricardo Oñate', 20, 2016, NULL, NULL, NULL),
(44, 20, 'Carlos Parra', 20, 2016, NULL, NULL, NULL),
(45, 22, 'Omar Zambrano', 22, 2014, NULL, NULL, NULL),
(46, 22, 'Gustavo Salazar', 23, 2013, NULL, NULL, NULL),
(47, 23, 'Felipe Henriquez', 22, 2014, NULL, NULL, NULL),
(48, 23, 'Pablo Campos', 22, 2014, NULL, NULL, NULL),
(49, 24, 'Eduardo Mella', 25, 2011, NULL, NULL, NULL),
(50, 24, 'Christian Pena', 25, 2011, NULL, NULL, NULL),
(51, 25, 'Mauricio Echeverria', 24, 2012, NULL, NULL, NULL),
(52, 25, 'Abraham Pavez', 20, 2016, NULL, NULL, NULL),
(53, 26, 'Francisco Flores', 20, 2015, NULL, NULL, NULL),
(54, 27, 'Pedro Fuentes', 23, 2013, NULL, NULL, NULL),
(55, 28, 'Gabriel Sanhueza', 24, 2011, NULL, NULL, NULL),
(56, 29, 'Nicolas Bizama', 24, 2012, NULL, NULL, NULL),
(57, 30, 'Matias Cleveland', 28, 2008, NULL, NULL, NULL),
(58, 30, 'Leonardo Abarzua', 32, 2006, NULL, NULL, NULL),
(59, 31, 'Pablo Sanhueza', 20, 2016, NULL, NULL, NULL),
(60, 31, 'Erwyn Riquelme', 20, 2016, NULL, NULL, NULL),
(61, 32, 'Nelson Andreau', 25, 2011, NULL, NULL, NULL),
(62, 32, 'Emilio Vergara', 25, 2011, NULL, NULL, NULL),
(63, 33, 'Matias Cartes', 20, 2016, NULL, NULL, NULL),
(64, 33, 'Bastian Reinoso', 20, 2016, NULL, NULL, NULL),
(65, 34, 'Allan Mora', 20, 2017, NULL, NULL, NULL),
(66, 34, 'Victor Perez', 25, 2012, NULL, NULL, NULL),
(67, 35, 'Pablo Hernandez', 20, 2016, NULL, NULL, NULL),
(68, 35, 'Hernan Fuentes', 20, 2016, NULL, NULL, NULL),
(69, 36, 'Felipe Vidal', 23, 2015, NULL, NULL, NULL),
(70, 36, 'Alberto Romero', 23, 2014, NULL, NULL, NULL),
(71, 72, 'José Contreras', 22, 2014, NULL, NULL, NULL),
(72, 72, 'Álvaro Reyes', 22, 2014, NULL, NULL, NULL),
(73, 71, 'Andrés Elgueda', 23, 2013, NULL, NULL, NULL),
(74, 71, 'Matías Herrera', 22, 2014, NULL, NULL, NULL),
(75, 70, 'Joaquín Arduiz', 22, 2014, NULL, NULL, NULL),
(76, 70, 'Diego Nova', 22, 2014, NULL, NULL, NULL),
(77, 69, 'Gonzalo Ramírez', 21, 2015, NULL, NULL, NULL),
(78, 69, 'Francisco Loyola', 25, 2011, NULL, NULL, NULL),
(79, 68, 'Diego Barrientos', 23, 2013, NULL, NULL, NULL),
(80, 68, 'Claudio Bachmann', 23, 2013, NULL, NULL, NULL),
(81, 67, 'Franco Matamala', 21, 2015, NULL, NULL, NULL),
(82, 67, 'Cristian Mora', 21, 2015, NULL, NULL, NULL),
(83, 66, 'Carlos Vega', 23, 2013, NULL, NULL, NULL),
(84, 66, 'Eduardo Perales', 22, 2014, NULL, NULL, NULL),
(85, 65, 'Felipe Alegría', 21, 2015, NULL, NULL, NULL),
(86, 65, 'Claudio Jerez', 21, 2015, NULL, NULL, NULL),
(87, 37, 'Alfonso Morillas', 18, 2018, NULL, NULL, NULL),
(88, 37, 'Ángel Osorio', 19, 2017, NULL, NULL, NULL),
(89, 37, 'Víctor Salvador', 20, 2016, NULL, NULL, NULL),
(90, 38, 'Javier Medina', 21, 2015, NULL, NULL, NULL),
(91, 38, 'Aitor Barrientos', 22, 2014, NULL, NULL, NULL),
(92, 38, 'Rubén Palencia', 23, 2013, NULL, NULL, NULL),
(93, 39, 'Santiago Villegas', 24, 2012, NULL, NULL, NULL),
(94, 39, 'Diego Matute', 25, 2011, NULL, NULL, NULL),
(95, 39, 'Juan Almenara', 25, 2011, NULL, NULL, NULL),
(96, 40, 'José Guisado', 24, 2012, NULL, NULL, NULL),
(97, 40, 'Javier Valladares', 23, 2013, NULL, NULL, NULL),
(98, 40, 'Nicolás Abascal', 22, 2014, NULL, NULL, NULL),
(99, 41, 'Jesús Ocampo', 21, 2015, NULL, NULL, NULL),
(100, 41, 'Víctor Marina', 20, 2016, NULL, NULL, NULL),
(101, 41, 'Manuel Cavero', 19, 2016, NULL, NULL, NULL),
(102, 42, 'Agustín Aguado', 18, 2017, NULL, NULL, NULL),
(103, 42, 'Martín Montañez', 19, 2018, NULL, NULL, NULL),
(104, 42, 'Mario Crespi', 18, 2018, NULL, NULL, NULL),
(105, 43, 'Jose Solera', 18, 2018, NULL, NULL, NULL),
(106, 43, 'Mario Romera', 19, 2017, NULL, NULL, NULL),
(107, 43, 'Óscar Cabezas', 20, 2016, NULL, NULL, NULL),
(108, 44, 'Sergio Cadenas', 21, 2015, NULL, NULL, NULL),
(109, 44, 'Miguel Cubas', 22, 2014, NULL, NULL, NULL),
(110, 44, 'Diego Rovira', 23, 2013, NULL, NULL, NULL),
(111, 45, 'Alfredo Bejarano', 24, 2012, NULL, NULL, NULL),
(112, 45, 'Gregorio Cayuela', 25, 2011, NULL, NULL, NULL),
(113, 45, 'Ismael Pizarro', 24, 2012, NULL, NULL, NULL),
(114, 46, 'Luis Angulo', 18, 2018, NULL, NULL, NULL),
(115, 46, 'Ángel Chaparro', 19, 2017, NULL, NULL, NULL),
(116, 46, 'Javier Pazos', 20, 2016, NULL, NULL, NULL),
(117, 47, 'José Garrido', 21, 2015, NULL, NULL, NULL),
(118, 47, 'Roberto Cerezo', 22, 2014, NULL, NULL, NULL),
(119, 47, 'Adrián Zapata', 23, 2013, NULL, NULL, NULL),
(120, 48, 'Pedro Gascón', 24, 2012, NULL, NULL, NULL),
(121, 48, 'José Guillamón', 25, 2011, NULL, NULL, NULL),
(122, 48, 'Carlos Jaume', 24, 2012, NULL, NULL, NULL),
(123, 49, 'Sergio Andrades', 23, 2013, NULL, NULL, NULL),
(124, 49, 'Francisco Brito', 22, 2014, NULL, NULL, NULL),
(125, 49, 'Miguel Villalón', 21, 2015, NULL, NULL, NULL),
(126, 50, 'Ángel Diallo', 20, 2016, NULL, NULL, NULL),
(127, 50, 'Gabriel Piñeiro', 19, 2017, NULL, NULL, NULL),
(128, 50, 'Félix Aliaga', 18, 2018, NULL, NULL, NULL),
(129, 51, 'César Vaquero', 18, 2018, NULL, NULL, NULL),
(130, 51, 'Daniel Fandiño', 19, 2017, NULL, NULL, NULL),
(131, 51, 'Juan Garrigos', 20, 2016, NULL, NULL, NULL),
(132, 52, 'José Calabuig', 21, 2015, NULL, NULL, NULL),
(133, 52, 'Iván Liebana', 22, 2014, NULL, NULL, NULL),
(134, 52, 'Álvaro Piñol', 23, 2013, NULL, NULL, NULL),
(135, 53, 'David Molinero', 24, 2012, NULL, NULL, NULL),
(136, 53, 'Pablo Montilla', 25, 2011, NULL, NULL, NULL),
(137, 53, 'Alberto Gallo', 24, 2012, NULL, NULL, NULL),
(138, 54, 'Francisco LLuch', 23, 2013, NULL, NULL, NULL),
(139, 54, 'Ángel Méndez', 22, 2014, NULL, NULL, NULL),
(140, 54, 'José Carvajal', 21, 2015, NULL, NULL, NULL),
(141, 55, 'Carlos Toribio', 20, 2016, NULL, NULL, NULL),
(142, 55, 'Fernando Mena', 19, 2017, NULL, NULL, NULL),
(143, 55, 'José Aranda', 18, 2018, NULL, NULL, NULL),
(144, 56, 'Mario Cuadrado', 18, 2018, NULL, NULL, NULL),
(145, 56, 'Alfredo Belenguer', 19, 2017, NULL, NULL, NULL),
(146, 56, 'Rafael Calle', 20, 2016, NULL, NULL, NULL),
(147, 57, 'David Menéndez', 21, 2015, NULL, NULL, NULL),
(148, 57, 'Esteban Mendes', 22, 2014, NULL, NULL, NULL),
(149, 57, 'Alberto Puga', 23, 2013, NULL, NULL, NULL),
(150, 58, 'José Llanos', 24, 2012, NULL, NULL, NULL),
(151, 58, 'Antonio Cuéllar', 25, 2011, NULL, NULL, NULL),
(152, 58, 'Lorenzo Campillo', 24, 2012, NULL, NULL, NULL),
(153, 59, 'Diego Marina', 23, 2013, NULL, NULL, NULL),
(154, 59, 'Sergio Sampedro', 22, 2014, NULL, NULL, NULL),
(155, 59, 'Joaquín Escolano', 21, 2015, NULL, NULL, NULL),
(156, 60, 'David Romeo', 20, 2016, NULL, NULL, NULL),
(157, 60, 'José Holguín', 19, 2017, NULL, NULL, NULL),
(158, 60, 'José Carazo', 18, 2018, NULL, NULL, NULL),
(159, 61, 'Miguel Gámez', 18, 2018, NULL, NULL, NULL),
(160, 61, 'Ángel Notario', 19, 2017, NULL, NULL, NULL),
(161, 61, 'Fernando Valverde', 20, 2016, NULL, NULL, NULL),
(162, 62, 'José Cabrerizo', 21, 2015, NULL, NULL, NULL),
(163, 62, 'Ramón Bayona', 22, 2014, NULL, NULL, NULL),
(164, 62, 'Joaquín Mellado', 23, 2013, NULL, NULL, NULL),
(165, 63, 'Eduardo Gayá', 24, 2012, NULL, NULL, NULL),
(166, 63, 'Javier Valenzuela', 25, 2011, NULL, NULL, NULL),
(167, 63, 'Jaime Calzada', 24, 2012, NULL, NULL, NULL),
(168, 64, 'Salvador Tudela', 23, 2013, NULL, NULL, NULL),
(169, 64, 'Carlos Pombo', 22, 2014, NULL, NULL, NULL),
(170, 64, 'Aitor Lara', 21, 2015, NULL, NULL, NULL),
(171, 65, 'Julián Gomila', 20, 2016, NULL, NULL, NULL),
(172, 65, 'Ramón Rangel', 19, 2017, NULL, NULL, NULL),
(173, 65, 'Manuel Chico', 18, 2018, NULL, NULL, NULL),
(174, 66, 'Juan Viera', 18, 2018, NULL, NULL, NULL),
(175, 66, 'Juan Galeano', 19, 2017, NULL, NULL, NULL),
(176, 66, 'Manuel Casero', 20, 2016, NULL, NULL, NULL),
(177, 67, 'Ramón Alcalde', 21, 2015, NULL, NULL, NULL),
(178, 67, 'Javier Rodero', 22, 2014, NULL, NULL, NULL),
(179, 67, 'Álvaro Almenara', 23, 2013, NULL, NULL, NULL),
(180, 68, 'Vicente Mancebo', 24, 2012, NULL, NULL, NULL),
(181, 68, 'Juan Páez', 25, 2011, NULL, NULL, NULL),
(182, 68, 'Cristóbal Mayordomo', 24, 2012, NULL, NULL, NULL),
(183, 69, 'Emilio Almazán', 23, 2013, NULL, NULL, NULL),
(184, 69, 'Pedro Segura', 22, 2014, NULL, NULL, NULL),
(185, 69, 'Iván Aceituno', 21, 2015, NULL, NULL, NULL),
(186, 70, 'Víctor Llorente', 20, 2016, NULL, NULL, NULL),
(187, 70, 'Marco Guerra', 19, 2017, NULL, NULL, NULL),
(188, 70, 'Juan Arce', 18, 2018, NULL, NULL, NULL),
(189, 71, 'Francisco Garrigos', 19, 2017, NULL, NULL, NULL),
(190, 71, 'Aitor Real', 20, 2016, NULL, NULL, NULL),
(191, 71, 'Andrés Montiel', 21, 2015, NULL, NULL, NULL),
(192, 72, 'David Raya', 18, 2018, NULL, NULL, NULL),
(193, 72, 'Adrián Tejedor', 19, 2017, NULL, NULL, NULL),
(194, 72, 'Raúl Zapico', 20, 2016, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares`
--

CREATE TABLE `lugares` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(120) DEFAULT NULL,
  `ubicacion` varchar(120) DEFAULT NULL,
  `capacidad` varchar(45) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lugares`
--

INSERT INTO `lugares` (`id`, `nombre`, `ubicacion`, `capacidad`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Cancha sintetica Universidad de Concepcion', NULL, '50000 espectadores', NULL, NULL, NULL),
(2, 'Cancha de Hockey', 'A un costado del edificio Virginio Gomez', '20000 espectadores', NULL, NULL, NULL),
(3, 'Casa del Deporte', 'Entrada estacionamiento Roosevelt', '100 espectadores', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-10-19 01:19:56', '2018-10-19 01:19:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 2, '2018-10-19 01:19:57', '2018-10-21 06:04:59', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-10-19 01:19:57', '2018-10-21 06:04:59', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 4, '2018-10-19 01:19:57', '2018-10-21 06:04:59', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2018-10-19 01:19:58', '2018-10-21 06:04:59', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2018-10-19 01:19:58', '2018-10-21 06:04:59', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-10-19 01:19:58', '2018-10-21 05:48:49', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-10-19 01:19:58', '2018-10-21 05:48:49', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-10-19 01:19:59', '2018-10-21 05:48:49', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-10-19 01:19:59', '2018-10-21 05:48:49', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 7, '2018-10-19 01:20:00', '2018-10-21 06:05:00', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-10-19 01:20:06', '2018-10-21 05:48:50', 'voyager.hooks', NULL),
(12, 1, 'Arbitros', '', '_self', NULL, NULL, 26, 1, '2018-10-20 20:17:31', '2018-10-21 05:49:37', 'voyager.arbitros.index', NULL),
(13, 1, 'Campeonatos', '', '_self', NULL, NULL, 26, 2, '2018-10-20 20:21:22', '2018-10-21 05:49:38', 'voyager.campeonatos.index', NULL),
(14, 1, 'Deportes', '', '_self', NULL, NULL, 26, 3, '2018-10-20 20:21:49', '2018-10-21 05:49:38', 'voyager.deportes.index', NULL),
(15, 1, 'Divisiones', '', '_self', NULL, NULL, 26, 4, '2018-10-20 20:22:08', '2018-10-21 05:49:38', 'voyager.divisiones.index', NULL),
(16, 1, 'Equipos', '', '_self', NULL, NULL, 26, 5, '2018-10-20 20:26:08', '2018-10-21 05:49:38', 'voyager.equipos.index', NULL),
(17, 1, 'Jugadores', '', '_self', NULL, NULL, 26, 6, '2018-10-20 20:26:20', '2018-10-21 05:49:38', 'voyager.jugadores.index', NULL),
(18, 1, 'Imagenes', '', '_self', NULL, NULL, 26, 7, '2018-10-20 20:27:00', '2018-10-21 05:49:38', 'voyager.imagenes.index', NULL),
(19, 1, 'Lugares', '', '_self', NULL, NULL, 26, 8, '2018-10-20 20:34:44', '2018-10-21 05:49:38', 'voyager.lugares.index', NULL),
(20, 1, 'Noticias', '', '_self', NULL, NULL, 26, 9, '2018-10-20 20:35:27', '2018-10-21 05:49:38', 'voyager.noticias.index', NULL),
(21, 1, 'Partidos', '', '_self', NULL, NULL, 26, 10, '2018-10-20 20:35:55', '2018-10-21 05:49:39', 'voyager.partidos.index', NULL),
(22, 1, 'Sanciones', '', '_self', NULL, NULL, 26, 11, '2018-10-20 20:36:16', '2018-10-21 05:49:39', 'voyager.sanciones.index', NULL),
(23, 1, 'Subscripciones', '', '_self', NULL, NULL, 26, 12, '2018-10-20 20:36:34', '2018-10-21 05:49:39', 'voyager.subscripciones.index', NULL),
(24, 1, 'Usuarios', '', '_self', NULL, NULL, 26, 14, '2018-10-20 21:23:31', '2018-10-21 05:49:39', 'voyager.usuarios.index', NULL),
(25, 1, 'Partido Jugadors', '', '_self', NULL, NULL, 26, 13, '2018-10-21 05:43:20', '2018-10-21 05:49:39', 'voyager.partido-jugadors.index', NULL),
(26, 1, 'Paginas', '', '_self', 'voyager-home', '#000000', NULL, 1, '2018-10-21 05:48:35', '2018-10-21 06:04:58', NULL, ''),
(27, 1, 'Arbitrajes', '', '_self', NULL, NULL, 26, 15, '2018-10-21 05:51:25', '2018-10-21 05:55:07', 'voyager.arbitrajes.index', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(10) UNSIGNED NOT NULL,
  `deporteid` int(10) UNSIGNED DEFAULT NULL,
  `texto` varchar(2000) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `titulo` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `deporteid`, `texto`, `deleted_at`, `created_at`, `updated_at`, `titulo`) VALUES
(1, 1, 'Informática se prepara para enfrentar a su próximo rival, necesitan los 3 puntos para poder seguir subiendo en la tabla.', NULL, NULL, NULL, 'Informática ya tiene rival.'),
(2, 2, 'El equipo comandado por su gran figura busca la clasificación a la siguiente ronda del campeonato.', NULL, NULL, NULL, 'Volátiles en busca de la clasificación'),
(3, 3, 'El equipo azul de la tercera división del campeonato va por el paso a la final ante su similar de Biología.', NULL, NULL, NULL, 'Informática por la final');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE `partidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `equipo_1` int(10) UNSIGNED DEFAULT NULL,
  `equipo_2` int(10) UNSIGNED DEFAULT NULL,
  `divisionid` int(10) UNSIGNED DEFAULT NULL,
  `lugarid` int(10) UNSIGNED DEFAULT NULL,
  `ganador` int(10) UNSIGNED DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` varchar(45) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `empate` int(11) DEFAULT '0',
  `m_local` int(11) DEFAULT NULL,
  `m_visita` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `partidos`
--

INSERT INTO `partidos` (`id`, `equipo_1`, `equipo_2`, `divisionid`, `lugarid`, `ganador`, `fecha`, `hora`, `deleted_at`, `created_at`, `updated_at`, `empate`, `m_local`, `m_visita`) VALUES
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
(114, 65, 66, 6, 2, 65, '2018-04-16', '14:00', NULL, NULL, NULL, 0, 2, 0), 
(115, 67, 68, 6, 2, 68, '2018-04-16', '14:45', NULL, NULL, NULL, 0, 0, 1),
(116, 37, 38, 3, 3, 37, '2018-05-05', '13:00', NULL, NULL, NULL, 0, 72, 52), 
(117, 39, 40, 3, 3, 39, '2018-05-05', '14:00', NULL, NULL, NULL, 0, 50, 35), 
(118, 41, 42, 3, 3, 41, '2018-05-05', '15:00', NULL, NULL, NULL, 0, 54, 47), 
(119, 43, 44, 3, 3, 44, '2018-05-06', '12:00', NULL, NULL, NULL, 0, 55, 58), 
(120, 45, 46, 3, 3, 45, '2018-05-06', '13:00', NULL, NULL, NULL, 0, 51, 50), 
(121, 47, 48, 4, 3, 47, '2018-05-06', '14:00', NULL, NULL, NULL, 0, 55, 40), 
(122, 49, 50, 4, 3, 50, '2018-05-06', '15:00', NULL, NULL, NULL, 0, 50, 60), 
(123, 51, 52, 4, 3, 51, '2018-05-07', '12:00', NULL, NULL, NULL, 0, 50, 45), 
(124, 53, 54, 4, 3, 53, '2018-05-07', '13:00', NULL, NULL, NULL, 0, 51, 50),
(125, 55, 56, 5, 3, 56, '2018-05-07', '14:00', NULL, NULL, NULL, 0, 53, 55), 
(126, 57, 58, 5, 3, 57, '2018-05-07', '15:00', NULL, NULL, NULL, 0, 60, 30), 
(127, 59, 60, 5, 3, 60, '2018-05-08', '12:00', NULL, NULL, NULL, 0, 57, 45), 
(128, 61, 62, 5, 3, 61, '2018-05-08', '13:00', NULL, NULL, NULL, 0, 70, 55), 
(129, 63, 64, 5, 3, 64, '2018-05-08', '14:00', NULL, NULL, NULL, 0, 45, 52),
(130, 69, 70, 6, 2, 69, '2018-04-17', '14:00', NULL, NULL, NULL, 0, 2, 1),
(131, 71, 72, 6, 2, 72, '2018-04-17', '14:45', NULL, NULL, NULL, 0, 0, 6);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partido_jugadors`
--

CREATE TABLE `partido_jugadors` (
  `partidoid` int(10) UNSIGNED NOT NULL,
  `jugadorid` int(10) UNSIGNED NOT NULL,
  `puntos` int(11) DEFAULT '0',
  `triples` int(11) DEFAULT '0',
  `amarilla` tinyint(4) DEFAULT '0',
  `roja` tinyint(4) DEFAULT '0',
  `faltas_b` int(11) DEFAULT '0' COMMENT 'faltas basquetball',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `partido_jugadors`
--

INSERT INTO `partido_jugadors` (`partidoid`, `jugadorid`, `puntos`, `triples`, `amarilla`, `roja`, `faltas_b`, `deleted_at`, `created_at`, `updated_at`) VALUES
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
(105, 27, 1, 0, 1, 0, 0, NULL, NULL, NULL),
(105, 28, 2, 0, 0, 0, 0, NULL, NULL, NULL),
(106, 17, 1, 0, 1, 0, 0, NULL, NULL, NULL),
(106, 18, 2, 0, 0, 0, 0, NULL, NULL, NULL),
(106, 29, 1, 0, 0, 0, 0, NULL, NULL, NULL),
(107, 33, 1, 0, 1, 0, 0, NULL, NULL, NULL),
(108, 13, 3, 0, 0, 1, 0, NULL, NULL, NULL),
(108, 14, 2, 0, 0, 0, 0, NULL, NULL, NULL),
(108, 23, 2, 0, 0, 1, 0, NULL, NULL, NULL),
(109, 54, 2, 0, 1, 0, 0, NULL, NULL, NULL),
(129, 165, 24, 3, 0, 0, 2, NULL, NULL, NULL),
(129, 166, 21, 3, 0, 0, 3, NULL, NULL, NULL),
(129, 168, 30, 5, 0, 0, 4, NULL, NULL, NULL),
(129, 169, 20, 0, 0, 0, 0, NULL, NULL, NULL),
(129, 170, 2, 0, 0, 0, 2, NULL, NULL, NULL),
(130, 183, 2, 0, 0, 0, 0, NULL, NULL, NULL),
(130, 186, 1, 0, 0, 0, 0, NULL, NULL, NULL),
(131, 190, 0, 0, 1, 0, 0, NULL, NULL, NULL),
(131, 192, 3, 0, 0, 0, 0, NULL, NULL, NULL),
(131, 193, 2, 0, 1, 0, 0, NULL, NULL, NULL),
(131, 194, 1, 0, 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-10-19 01:20:00', '2018-10-19 01:20:00'),
(2, 'browse_bread', NULL, '2018-10-19 01:20:00', '2018-10-19 01:20:00'),
(3, 'browse_database', NULL, '2018-10-19 01:20:00', '2018-10-19 01:20:00'),
(4, 'browse_media', NULL, '2018-10-19 01:20:00', '2018-10-19 01:20:00'),
(5, 'browse_compass', NULL, '2018-10-19 01:20:00', '2018-10-19 01:20:00'),
(6, 'browse_menus', 'menus', '2018-10-19 01:20:01', '2018-10-19 01:20:01'),
(7, 'read_menus', 'menus', '2018-10-19 01:20:01', '2018-10-19 01:20:01'),
(8, 'edit_menus', 'menus', '2018-10-19 01:20:01', '2018-10-19 01:20:01'),
(9, 'add_menus', 'menus', '2018-10-19 01:20:01', '2018-10-19 01:20:01'),
(10, 'delete_menus', 'menus', '2018-10-19 01:20:01', '2018-10-19 01:20:01'),
(11, 'browse_roles', 'roles', '2018-10-19 01:20:01', '2018-10-19 01:20:01'),
(12, 'read_roles', 'roles', '2018-10-19 01:20:01', '2018-10-19 01:20:01'),
(13, 'edit_roles', 'roles', '2018-10-19 01:20:01', '2018-10-19 01:20:01'),
(14, 'add_roles', 'roles', '2018-10-19 01:20:02', '2018-10-19 01:20:02'),
(15, 'delete_roles', 'roles', '2018-10-19 01:20:02', '2018-10-19 01:20:02'),
(16, 'browse_users', 'users', '2018-10-19 01:20:02', '2018-10-19 01:20:02'),
(17, 'read_users', 'users', '2018-10-19 01:20:02', '2018-10-19 01:20:02'),
(18, 'edit_users', 'users', '2018-10-19 01:20:02', '2018-10-19 01:20:02'),
(19, 'add_users', 'users', '2018-10-19 01:20:03', '2018-10-19 01:20:03'),
(20, 'delete_users', 'users', '2018-10-19 01:20:03', '2018-10-19 01:20:03'),
(21, 'browse_settings', 'settings', '2018-10-19 01:20:03', '2018-10-19 01:20:03'),
(22, 'read_settings', 'settings', '2018-10-19 01:20:03', '2018-10-19 01:20:03'),
(23, 'edit_settings', 'settings', '2018-10-19 01:20:03', '2018-10-19 01:20:03'),
(24, 'add_settings', 'settings', '2018-10-19 01:20:03', '2018-10-19 01:20:03'),
(25, 'delete_settings', 'settings', '2018-10-19 01:20:03', '2018-10-19 01:20:03'),
(26, 'browse_hooks', NULL, '2018-10-19 01:20:06', '2018-10-19 01:20:06'),
(27, 'browse_arbitros', 'arbitros', '2018-10-20 20:17:30', '2018-10-20 20:17:30'),
(28, 'read_arbitros', 'arbitros', '2018-10-20 20:17:30', '2018-10-20 20:17:30'),
(29, 'edit_arbitros', 'arbitros', '2018-10-20 20:17:30', '2018-10-20 20:17:30'),
(30, 'add_arbitros', 'arbitros', '2018-10-20 20:17:31', '2018-10-20 20:17:31'),
(31, 'delete_arbitros', 'arbitros', '2018-10-20 20:17:31', '2018-10-20 20:17:31'),
(32, 'browse_campeonatos', 'campeonatos', '2018-10-20 20:21:21', '2018-10-20 20:21:21'),
(33, 'read_campeonatos', 'campeonatos', '2018-10-20 20:21:21', '2018-10-20 20:21:21'),
(34, 'edit_campeonatos', 'campeonatos', '2018-10-20 20:21:21', '2018-10-20 20:21:21'),
(35, 'add_campeonatos', 'campeonatos', '2018-10-20 20:21:21', '2018-10-20 20:21:21'),
(36, 'delete_campeonatos', 'campeonatos', '2018-10-20 20:21:21', '2018-10-20 20:21:21'),
(37, 'browse_deportes', 'deportes', '2018-10-20 20:21:47', '2018-10-20 20:21:47'),
(38, 'read_deportes', 'deportes', '2018-10-20 20:21:47', '2018-10-20 20:21:47'),
(39, 'edit_deportes', 'deportes', '2018-10-20 20:21:47', '2018-10-20 20:21:47'),
(40, 'add_deportes', 'deportes', '2018-10-20 20:21:48', '2018-10-20 20:21:48'),
(41, 'delete_deportes', 'deportes', '2018-10-20 20:21:48', '2018-10-20 20:21:48'),
(42, 'browse_divisiones', 'divisiones', '2018-10-20 20:22:07', '2018-10-20 20:22:07'),
(43, 'read_divisiones', 'divisiones', '2018-10-20 20:22:07', '2018-10-20 20:22:07'),
(44, 'edit_divisiones', 'divisiones', '2018-10-20 20:22:07', '2018-10-20 20:22:07'),
(45, 'add_divisiones', 'divisiones', '2018-10-20 20:22:07', '2018-10-20 20:22:07'),
(46, 'delete_divisiones', 'divisiones', '2018-10-20 20:22:07', '2018-10-20 20:22:07'),
(47, 'browse_equipos', 'equipos', '2018-10-20 20:26:07', '2018-10-20 20:26:07'),
(48, 'read_equipos', 'equipos', '2018-10-20 20:26:07', '2018-10-20 20:26:07'),
(49, 'edit_equipos', 'equipos', '2018-10-20 20:26:07', '2018-10-20 20:26:07'),
(50, 'add_equipos', 'equipos', '2018-10-20 20:26:08', '2018-10-20 20:26:08'),
(51, 'delete_equipos', 'equipos', '2018-10-20 20:26:08', '2018-10-20 20:26:08'),
(52, 'browse_jugadores', 'jugadores', '2018-10-20 20:26:19', '2018-10-20 20:26:19'),
(53, 'read_jugadores', 'jugadores', '2018-10-20 20:26:19', '2018-10-20 20:26:19'),
(54, 'edit_jugadores', 'jugadores', '2018-10-20 20:26:19', '2018-10-20 20:26:19'),
(55, 'add_jugadores', 'jugadores', '2018-10-20 20:26:19', '2018-10-20 20:26:19'),
(56, 'delete_jugadores', 'jugadores', '2018-10-20 20:26:20', '2018-10-20 20:26:20'),
(57, 'browse_imagenes', 'imagenes', '2018-10-20 20:27:00', '2018-10-20 20:27:00'),
(58, 'read_imagenes', 'imagenes', '2018-10-20 20:27:00', '2018-10-20 20:27:00'),
(59, 'edit_imagenes', 'imagenes', '2018-10-20 20:27:00', '2018-10-20 20:27:00'),
(60, 'add_imagenes', 'imagenes', '2018-10-20 20:27:00', '2018-10-20 20:27:00'),
(61, 'delete_imagenes', 'imagenes', '2018-10-20 20:27:00', '2018-10-20 20:27:00'),
(62, 'browse_lugares', 'lugares', '2018-10-20 20:34:43', '2018-10-20 20:34:43'),
(63, 'read_lugares', 'lugares', '2018-10-20 20:34:43', '2018-10-20 20:34:43'),
(64, 'edit_lugares', 'lugares', '2018-10-20 20:34:44', '2018-10-20 20:34:44'),
(65, 'add_lugares', 'lugares', '2018-10-20 20:34:44', '2018-10-20 20:34:44'),
(66, 'delete_lugares', 'lugares', '2018-10-20 20:34:44', '2018-10-20 20:34:44'),
(72, 'browse_partidos', 'partidos', '2018-10-20 20:35:55', '2018-10-20 20:35:55'),
(73, 'read_partidos', 'partidos', '2018-10-20 20:35:55', '2018-10-20 20:35:55'),
(74, 'edit_partidos', 'partidos', '2018-10-20 20:35:55', '2018-10-20 20:35:55'),
(75, 'add_partidos', 'partidos', '2018-10-20 20:35:55', '2018-10-20 20:35:55'),
(76, 'delete_partidos', 'partidos', '2018-10-20 20:35:55', '2018-10-20 20:35:55'),
(77, 'browse_sanciones', 'sanciones', '2018-10-20 20:36:15', '2018-10-20 20:36:15'),
(78, 'read_sanciones', 'sanciones', '2018-10-20 20:36:15', '2018-10-20 20:36:15'),
(79, 'edit_sanciones', 'sanciones', '2018-10-20 20:36:15', '2018-10-20 20:36:15'),
(80, 'add_sanciones', 'sanciones', '2018-10-20 20:36:15', '2018-10-20 20:36:15'),
(81, 'delete_sanciones', 'sanciones', '2018-10-20 20:36:15', '2018-10-20 20:36:15'),
(82, 'browse_subscripciones', 'subscripciones', '2018-10-20 20:36:33', '2018-10-20 20:36:33'),
(83, 'read_subscripciones', 'subscripciones', '2018-10-20 20:36:33', '2018-10-20 20:36:33'),
(84, 'edit_subscripciones', 'subscripciones', '2018-10-20 20:36:33', '2018-10-20 20:36:33'),
(85, 'add_subscripciones', 'subscripciones', '2018-10-20 20:36:33', '2018-10-20 20:36:33'),
(86, 'delete_subscripciones', 'subscripciones', '2018-10-20 20:36:33', '2018-10-20 20:36:33'),
(87, 'browse_usuarios', 'usuarios', '2018-10-20 21:23:31', '2018-10-20 21:23:31'),
(88, 'read_usuarios', 'usuarios', '2018-10-20 21:23:31', '2018-10-20 21:23:31'),
(89, 'edit_usuarios', 'usuarios', '2018-10-20 21:23:31', '2018-10-20 21:23:31'),
(90, 'add_usuarios', 'usuarios', '2018-10-20 21:23:31', '2018-10-20 21:23:31'),
(91, 'delete_usuarios', 'usuarios', '2018-10-20 21:23:31', '2018-10-20 21:23:31'),
(92, 'browse_noticias', 'noticias', '2018-10-21 05:26:37', '2018-10-21 05:26:37'),
(93, 'read_noticias', 'noticias', '2018-10-21 05:26:37', '2018-10-21 05:26:37'),
(94, 'edit_noticias', 'noticias', '2018-10-21 05:26:37', '2018-10-21 05:26:37'),
(95, 'add_noticias', 'noticias', '2018-10-21 05:26:37', '2018-10-21 05:26:37'),
(96, 'delete_noticias', 'noticias', '2018-10-21 05:26:37', '2018-10-21 05:26:37'),
(97, 'browse_partido_jugadors', 'partido_jugadors', '2018-10-21 05:43:19', '2018-10-21 05:43:19'),
(98, 'read_partido_jugadors', 'partido_jugadors', '2018-10-21 05:43:19', '2018-10-21 05:43:19'),
(99, 'edit_partido_jugadors', 'partido_jugadors', '2018-10-21 05:43:19', '2018-10-21 05:43:19'),
(100, 'add_partido_jugadors', 'partido_jugadors', '2018-10-21 05:43:19', '2018-10-21 05:43:19'),
(101, 'delete_partido_jugadors', 'partido_jugadors', '2018-10-21 05:43:19', '2018-10-21 05:43:19'),
(102, 'browse_arbitrajes', 'arbitrajes', '2018-10-21 05:51:24', '2018-10-21 05:51:24'),
(103, 'read_arbitrajes', 'arbitrajes', '2018-10-21 05:51:24', '2018-10-21 05:51:24'),
(104, 'edit_arbitrajes', 'arbitrajes', '2018-10-21 05:51:24', '2018-10-21 05:51:24'),
(105, 'add_arbitrajes', 'arbitrajes', '2018-10-21 05:51:24', '2018-10-21 05:51:24'),
(106, 'delete_arbitrajes', 'arbitrajes', '2018-10-21 05:51:24', '2018-10-21 05:51:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-10-19 01:20:00', '2018-10-19 01:20:00'),
(2, 'user', 'Normal User', '2018-10-19 01:20:00', '2018-10-19 01:20:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sanciones`
--

CREATE TABLE `sanciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `jugadorid` int(10) UNSIGNED NOT NULL,
  `tiempo` int(45) DEFAULT NULL,
  `comentario` varchar(200) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sanciones`
--

INSERT INTO `sanciones` (`id`, `jugadorid`, `tiempo`, `comentario`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 36, 25, 'Por golpear al arbitro', NULL, NULL, NULL),
(2, 63, 2, 'Golpea bruscamente a jugador rival', NULL, NULL, NULL),
(3, 65, 4, 'Juego brusco grave', NULL, NULL, NULL),
(4, 22, 5, 'Conducta antideportiva', NULL, NULL, NULL),
(5, 23, 3, 'Por evitar con la mano que la pelota ingrese al arco', NULL, NULL, NULL),
(6, 13, 1, 'Doble amarilla', NULL, NULL, NULL),
(7, 184, 2, 'Juego brusco', NULL, NULL, NULL),
(8, 167, 3, 'Desaprueba al árbitro con groserías', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Deportes Udec', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Pagina comunidad deportiva udec', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\October2018\\ZI2LT7Qt6dwCFilGtowD.jpg', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\October2018\\1spKjIIDPJyU6LwOnMWq.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Deportes Udec', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Adminitracion Comunidad Deportiva Udec', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\October2018\\z8rOLlVntX9OCa8Fh6mV.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\October2018\\CzBDzLOMpZxTMxHQDs43.jpg', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscripciones`
--

CREATE TABLE `subscripciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuarioid` int(10) UNSIGNED DEFAULT NULL,
  `equipoid` int(10) UNSIGNED DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'your@email.com', 'users\\October2018\\8EpBB80Br8eHcGM3NFXw.png', NULL, '$2y$10$0zdIJSRZbZt5kmWX5rb4leVjIuoWJ55X8qXVNFcBGWIgLz2sS608K', NULL, '{\"locale\":\"es\"}', '2018-10-19 01:21:53', '2018-10-20 02:42:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `correo` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `admin` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `password`, `admin`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Julio Zapata', NULL, '12345678', NULL, NULL, NULL, NULL),


--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arbitrajes`
--
ALTER TABLE `arbitrajes`
  ADD PRIMARY KEY (`arbitroid`,`partidoid`),
  ADD KEY `partidoid_idx` (`partidoid`);

--
-- Indices de la tabla `arbitros`
--
ALTER TABLE `arbitros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `campeonatos`
--
ALTER TABLE `campeonatos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ligaid_UNIQUE` (`id`),
  ADD KEY `campeon_idx` (`campeon`),
  ADD KEY `divisionid_idx` (`divisionid`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `deportes`
--
ALTER TABLE `deportes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `deporteid_UNIQUE` (`id`);

--
-- Indices de la tabla `divisiones`
--
ALTER TABLE `divisiones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deporteid_idx` (`deporteid`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `equipoid_UNIQUE` (`id`),
  ADD KEY `divisionid_idx` (`divisionid`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noticiaid_idx` (`noticiaid`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id`,`equipoid`),
  ADD UNIQUE KEY `jugadorid_UNIQUE` (`id`),
  ADD KEY `equipoid_idx` (`equipoid`);

--
-- Indices de la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lugarid_UNIQUE` (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deporteid_idx` (`deporteid`);

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `partidoid_UNIQUE` (`id`),
  ADD KEY `lugar_idx` (`lugarid`),
  ADD KEY `ganador_idx` (`ganador`),
  ADD KEY `divisionid_idx` (`divisionid`),
  ADD KEY `equipo1_idx` (`equipo_1`),
  ADD KEY `equipo2_idx` (`equipo_2`);

--
-- Indices de la tabla `partido_jugadors`
--
ALTER TABLE `partido_jugadors`
  ADD PRIMARY KEY (`partidoid`,`jugadorid`),
  ADD KEY `jugadorid_idx` (`jugadorid`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `sanciones`
--
ALTER TABLE `sanciones`
  ADD PRIMARY KEY (`id`,`jugadorid`),
  ADD KEY `jugadorid_idx` (`jugadorid`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `subscripciones`
--
ALTER TABLE `subscripciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarioid_idx` (`usuarioid`),
  ADD KEY `equipoid_idx` (`equipoid`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `arbitros`
--
ALTER TABLE `arbitros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `campeonatos`
--
ALTER TABLE `campeonatos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `deportes`
--
ALTER TABLE `deportes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `divisiones`
--
ALTER TABLE `divisiones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT de la tabla `lugares`
--
ALTER TABLE `lugares`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `partidos`
--
ALTER TABLE `partidos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;
--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `sanciones`
--
ALTER TABLE `sanciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `subscripciones`
--
ALTER TABLE `subscripciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `arbitrajes`
--
ALTER TABLE `arbitrajes`
  ADD CONSTRAINT `arbitroid` FOREIGN KEY (`arbitroid`) REFERENCES `arbitros` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `partidoid` FOREIGN KEY (`partidoid`) REFERENCES `partidos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `campeonatos`
--
ALTER TABLE `campeonatos`
  ADD CONSTRAINT `campeon` FOREIGN KEY (`campeon`) REFERENCES `equipos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `divisionid2` FOREIGN KEY (`divisionid`) REFERENCES `divisiones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `divisiones`
--
ALTER TABLE `divisiones`
  ADD CONSTRAINT `deporteid` FOREIGN KEY (`deporteid`) REFERENCES `deportes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `divisionid` FOREIGN KEY (`divisionid`) REFERENCES `divisiones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `noticiaid` FOREIGN KEY (`noticiaid`) REFERENCES `noticias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `equipoid` FOREIGN KEY (`equipoid`) REFERENCES `equipos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `deporteid1` FOREIGN KEY (`deporteid`) REFERENCES `deportes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD CONSTRAINT `divisionid1` FOREIGN KEY (`divisionid`) REFERENCES `divisiones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `equipo1` FOREIGN KEY (`equipo_1`) REFERENCES `equipos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `equipo2` FOREIGN KEY (`equipo_2`) REFERENCES `equipos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ganador` FOREIGN KEY (`ganador`) REFERENCES `equipos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `lugarid` FOREIGN KEY (`lugarid`) REFERENCES `lugares` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `partido_jugadors`
--
ALTER TABLE `partido_jugadors`
  ADD CONSTRAINT `jugadorid1` FOREIGN KEY (`jugadorid`) REFERENCES `jugadores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `partidoid0` FOREIGN KEY (`partidoid`) REFERENCES `partidos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sanciones`
--
ALTER TABLE `sanciones`
  ADD CONSTRAINT `jugadorid0` FOREIGN KEY (`jugadorid`) REFERENCES `jugadores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `subscripciones`
--
ALTER TABLE `subscripciones`
  ADD CONSTRAINT `equipoid3` FOREIGN KEY (`equipoid`) REFERENCES `equipos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuarioid1` FOREIGN KEY (`usuarioid`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
