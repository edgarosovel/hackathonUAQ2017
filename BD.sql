CREATE TABLE Colonia (
id_colonia int AUTO_INCREMENT PRIMARY KEY,
cp int NOT NULL,
colonia varchar(150)
);

CREATE TABLE Usuario (
id_usuario int AUTO_INCREMENT PRIMARY KEY,
correo varchar(250) NOT NULL,
nombre varchar(150) NOT NULL,
pass varchar(130) NOT NULL,
id_colonia int NOT NULL,
CONSTRAINT FOREIGN KEY (id_colonia) REFERENCES Colonia(id_colonia),
no_integrantes int DEFAULT 1,
UNIQUE (correo)
);

CREATE TABLE Registro_mensual (
id_registro int AUTO_INCREMENT PRIMARY KEY,
id_usuario int NOT NULL,
CONSTRAINT FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
pago double(7,2),
metros_cubicos double(7,2) NOT NULL,
fecha_registro date NOT NULL
);

CREATE TABLE Datos_sensor(
id_datos int AUTO_INCREMENT PRIMARY KEY,
fecha date,
id_usuario int,
CONSTRAINT FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
litros double(7,2)
);

INSERT INTO Colonia VALUES
(1,76000, 'Centro'),
(2,76005, 'Rinconada Morelos'),
(3,76005, 'Mariano Escobedo'),
(4,76005, 'Vicente Guerrero'),
(5,76005, 'Rincón de San Andrés'),
(6,76010, 'Niños Héroes'),
(7,76010, 'Las Campanas'),
(8,76017, 'Centro Universitario (U.A.Q.)'),
(9,76020, 'La Cruz'),
(10,76020, 'El Cortijo'),
(11,76020, 'San Javier'),
(12,76020, 'Diligencias'),
(13,76020, 'Jardines de Querétaro'),
(14,76020, 'Pathé'),
(15,76020, 'Bosques del Acueducto'),
(16,76020, 'Calesa'),
(17,76024, 'Calesa 2a Sección'),
(18,76024, 'Conjunto Seminario'),
(19,76024, 'El Oasis'),
(20,76024, 'Karina'),
(21,76024, 'Del Río'),
(22,76024, 'La Peñita'),
(23,76024, 'Villa Los Arcos'),
(24,76024, 'El Cortijo'),
(25,76024, 'El Cortijo II'),
(26,76025, 'La Pastora'),
(27,76026, 'Goyeneche'),
(28,76026, 'La Cruz'),
(29,76027, 'Arboledas del Río'),
(30,76027, 'San José Inn'),
(31,76028, 'Universidad'),
(32,76030, 'Casa Blanca'),
(33,76030, 'Las Fuentes'),
(34,76030, 'Cimatario'),
(35,76030, 'Estrella'),
(36,76030, 'San Ángel'),
(37,76030, 'El Carrizal'),
(38,76030, 'Las Misiones'),
(39,76030, 'Moderna'),
(40,76030, 'Villas del Refugio'),
(41,76030, 'El Prado'),
(42,76036, 'Rinconada Fray Juan'),
(43,76037, 'Mariano de las Casas'),
(44,76040, 'Villas del Sur'),
(45,76040, 'Observatorio'),
(46,76040, 'Las Palmas'),
(47,76040, 'Mercurio'),
(48,76040, 'Andalucía Sección Cordova'),
(49,76040, 'Panamericano'),
(50,76040, 'Valle Alameda'),
(51,76040, 'Aragón'),
(52,76040, 'Alameda'),
(53,76046, 'San Joaquín'),
(54,76046, 'Villas del Sol'),
(55,76046, 'El Laurel'),
(56,76046, 'Panorámico'),
(57,76047, 'El Marqués'),
(58,76047, 'Quintas del Marqués'),
(59,76048, 'Arquitos'),
(60,76049, 'Loma Bonita'),
(61,76050, 'Carretas'),
(62,76057, 'Hidalgo'),
(63,76058, 'San Francisquito'),
(64,76059, 'Plaza de las Américas'),
(65,76060, 'Cumbres del Mirador'),
(66,76060, 'Vista Dorada'),
(67,76060, 'Milenio 3a. Sección'),
(68,76060, 'Loma Dorada'),
(69,76063, 'Pedregal de Vista Hermosa'),
(70,76063, 'Villas del Oriente'),
(71,76063, 'Vista Hermosa'),
(72,76063, 'Cuesta Bonita'),
(73,76067, 'La Laguna'),
(74,76069, 'El Limonar'),
(75,76069, 'San José de los Perales'),
(76,76069, 'Hércules'),
(77,76069, 'Bugambilias'),
(78,76069, 'La Estación 2a. Sección'),
(79,76069, 'El Bosque'),
(80,76069, 'La Estación'),
(81,76069, 'Nuevo Morelos'),
(82,76069, '8 de Diciembre'),
(83,76069, '2 de Abril'),
(84,76069, 'Tejas'),
(85,76069, 'Jardines de Hércules'),
(86,76069, 'La Cuesta'),
(87,76070, 'Conjunto Terranova'),
(88,76070, 'Corregidora (Burocrata)'),
(89,76070, 'Prados del Mirador'),
(90,76070, 'El Retiro'),
(91,76070, 'Loma Linda'),
(92,76070, 'Vista'),
(93,76074, 'Vista Alegre 2a Secc'),
(94,76074, 'La Alhambra'),
(95,76074, 'Vista Alegre 3a Sección'),
(96,76074, 'Vista Alegre'),
(97,76074, 'Palomar del Duque'),
(98,76078, 'Villas Valle Alameda'),
(99,76079, 'Balaustradas'),
(100,76079, 'Quinta Balaustradas'),
(101,76080, 'Presidentes'),
(102,76080, 'Lomas de Casa Blanca'),
(103,76080, 'Papanoa'),
(104,76085, 'Lázaro Cárdenas III'),
(105,76085, 'Azteca'),
(106,76085, 'Lomas del Valle'),
(107,76085, 'Bosques del Cimatario'),
(108,76085, 'El Marqués Queretano'),
(109,76085, 'Lomas del Cimatario'),
(110,76085, 'Fraternidad de Santiago'),
(111,76085, 'Arte Mexicano'),
(112,76085, 'Universo 2000'),
(113,76085, 'Colinas del Sur'),
(114,76085, 'Vistas del Cimatario'),
(115,76085, 'Rincón del Cimatario'),
(116,76085, 'La Unión'),
(117,76085, 'Altos del Cimatario'),
(118,76086, 'Reforma Agraria 2a Secc'),
(119,76086, 'Reforma Agraria 3a Secc'),
(120,76086, 'Reforma Agraria 1a Sección'),
(121,76086, 'Reforma Agraria 4a Secc'),
(122,76086, 'Reforma Agraria 5a Secc'),
(123,76087, 'Bosques del Cimatario 2a. Sección'),
(124,76087, 'Linderos del Cimatario'),
(125,76087, 'Comerciantes'),
(126,76087, 'Zapata Vive'),
(127,76087, 'San Andrés'),
(128,76087, 'Villas del Rincón'),
(129,76087, 'Constelación'),
(130,76087, 'Campestre Italiana'),
(131,76087, 'Villas del Cimatario'),
(132,76087, 'Jardines del Cimatario'),
(133,76087, 'Bosques de las Lomas'),
(134,76087, 'Pedregal del Cimatario'),
(135,76087, 'Misión Cimatario'),
(136,76087, 'Monte Blanco I'),
(137,76087, 'Vista Azul'),
(138,76087, 'Cuitlahuac'),
(139,76087, 'Lázaro Cárdenas'),
(140,76087, 'Bosques de Querétaro'),
(141,76087, 'Unidad Roma'),
(142,76087, 'Praderas del Sol'),
(143,76087, 'Prados de Querétaro'),
(144,76087, 'Raquel Trejo Ortiz'),
(145,76087, 'Monte Blanco III'),
(146,76087, 'Prados del Cimatario'),
(147,76087, 'Monte Blanco II'),
(148,76087, 'Lomas de Pasteur'),
(149,76087, 'Huertas del Cimatario'),
(150,76087, 'Bellavista'),
(151,76087, 'Manantiales del Cimatario'),
(152,76090, 'Colinas del Cimatario'),
(153,76090, 'Centro Sur'),
(154,76093, 'Claustros del Marques'),
(155,76093, 'Claustros de Santiago'),
(156,76093, 'Claustros de las Misiones'),
(157,76093, 'Ángeles'),
(158,76093, 'Claustros del Sur'),
(159,76093, 'Claustros de la Corregidora 2'),
(160,76093, 'Claustros de la Corregidora I'),
(161,76093, 'Claustros de la Catedral'),
(162,76099, 'Plazas del Sol 1a Sección'),
(163,76099, 'Plazas del Sol 2a Sección'),
(164,76099, 'Plazas del Sol 3a Sección'),
(165,76100, 'Santa Rosa'),
(166,76100, 'Gobernantes'),
(167,76100, 'Murano'),
(168,76100, 'Jurica'),
(169,76100, 'Hacienda Santa Rosa'),
(170,76100, 'Rinconada Jurica'),
(171,76100, 'Dolce Terra'),
(172,76100, 'La Castellana'),
(173,76100, 'Valle Garden'),
(174,76100, 'Vive'),
(175,76100, 'Jurica'),
(176,76100, 'El Destino'),
(177,76100, 'Jurica Pinar'),
(178,76100, 'Las Campanas'),
(179,76100, 'Bleu Casas Platina'),
(180,76100, 'Atenas'),
(181,76100, 'Valle de Juriquilla'),
(182,76100, 'Privada de los Portones'),
(183,76110, 'Josefa Ortiz de Domínguez III'),
(184,76110, 'Lomas de Satélite'),
(185,76110, 'Satélite Sección Condominios'),
(186,76110, 'Josefa Ortiz de Domínguez II'),
(187,76110, 'Satélite Sección Andadores'),
(188,76110, 'Ampliación Satélite'),
(189,76110, 'Satélite'),
(190,76110, 'Cosmos (Satelite)'),
(191,76113, 'La Luna'),
(192,76113, 'Valle de San Pedro 2a Sección'),
(193,76113, 'Tonatiú'),
(194,76113, 'Tonatiuh 2a. Sección'),
(195,76113, 'Valle de San Pedro'),
(196,76113, 'Tonatiuh 3a Sección'),
(197,76113, 'Rinconada del Sol'),
(198,76113, 'El Sol Residencial'),
(199,76113, 'Bosques del Sol'),
(200,76113, 'Tonatiuh 4a Sección'),
(201,76113, 'Plan Santa María'),
(202,76113, 'Los Framboyanes'),
(203,76113, 'Santa Isabel'),
(204,76113, 'Alborada'),
(205,76113, 'El Arcángel'),
(206,76113, 'Rancho San Pedro'),
(207,76113, 'El Sol'),
(208,76114, 'Don Manuel'),
(209,76114, 'Sendero'),
(210,76114, 'El Rocio II'),
(211,76114, 'Los Sauces'),
(212,76114, 'Los Castaños'),
(213,76114, 'La Huerta'),
(214,76114, 'El Rocio'),
(215,76114, 'Puerta del Sol II'),
(216,76114, 'Lomas del Carmen'),
(217,76115, 'El Garambullo'),
(218,76115, 'Parque Santiago'),
(219,76116, 'Bugambilias Residencial'),
(220,76116, 'La Peña'),
(221,76116, 'Geo Plazas'),
(222,76116, 'Patria Nueva'),
(223,76116, 'Casa Blanca'),
(224,76116, 'Prados del Rincón 2a. Sección'),
(225,76116, 'Ciudad del Sol Sección Valle de Santiago'),
(226,76116, 'Querena'),
(227,76116, 'Rocio Sanz'),
(228,76116, '25 de Diciembre'),
(229,76116, 'Tenochtitlán II'),
(230,76116, 'Lomas de San Ángel'),
(231,76116, 'Ex-Hacienda Santana'),
(232,76116, 'Villas de Guadalupe'),
(233,76116, 'Claustros de la Loma'),
(234,76116, 'Puerta Navarra'),
(235,76116, 'Colinas del Poniente'),
(236,76116, 'Sierra Colorada'),
(237,76116, 'Tenochtitlán'),
(238,76116, 'Josefa Ortiz de Domínguez IV'),
(239,76116, 'Misión de Carrillo'),
(240,76116, 'La Floresta'),
(241,76116, 'Benito Juárez'),
(242,76116, 'Cerrito Colorado'),
(243,76116, 'Real de la Loma'),
(244,76116, 'Rinconada de las Fuentes'),
(245,76116, 'Cerrito Colorado 2a Secc'),
(246,76116, 'La Loma'),
(247,76116, 'Las Azucenas'),
(248,76116, 'Ampliación Patria Nueva'),
(249,76116, 'Geo Villas'),
(250,76116, 'Loma Real'),
(251,76116, 'Jardines de Azucenas'),
(252,76116, 'Víctor Iturbe'),
(253,76116, 'Chula Vista II'),
(254,76116, 'Misión de Carrillo II'),
(255,76116, 'Eucaliptos'),
(256,76116, 'Teotihuacan'),
(257,76116, 'Vistas del Valle'),
(258,76116, 'Condominio La Cordillera'),
(259,76116, 'Puerta del Sol'),
(260,76116, 'Los Encinos'),
(261,76116, 'Chula Vista I'),
(262,76116, 'Che Guevara (Axayacatl)'),
(263,76116, 'Loma IX'),
(264,76116, 'Ciudad del Sol'),
(265,76116, 'Las Camelinas'),
(266,76117, 'La Esmeralda'),
(267,76117, 'Comevi'),
(268,76117, 'Rubén Jaramillo'),
(269,76117, 'Fundadores'),
(270,76117, 'Insurgentes'),
(271,76117, 'San Marcos I'),
(272,76117, 'Fernando de Tapia'),
(273,76117, 'Pedregal de Buenos Aires'),
(274,76117, 'San Pedro Mártir'),
(275,76117, 'Colinas de Santa Cruz 1a Sección'),
(276,76117, 'Misión Fundadores'),
(277,76117, 'Centenario'),
(278,76117, 'San Marcos'),
(279,76117, 'Prados del Rincón'),
(280,76117, 'Jardines del Sol'),
(281,76117, 'Laderas de San Pedro'),
(282,76117, 'Desarrollo Familiar'),
(283,76117, 'Colinas de Santa Cruz 2a Sección'),
(284,76117, 'Francisco Javier Mina'),
(285,76118, '15 de Mayo'),
(286,76118, 'Luis Donaldo Colosio'),
(287,76118, 'El Tepeyac'),
(288,76118, 'Lomas del Pedregal 2a. Sección'),
(289,76118, 'Rosendo Salazar'),
(290,76118, 'Francisco Villa II'),
(291,76118, 'Cerrito Colorado V'),
(292,76118, 'Cerrito Colorado VII'),
(293,76118, 'Miguel Hidalgo'),
(294,76118, '10 de Abril'),
(295,76118, 'Prados de Loma Bonita'),
(296,76118, 'Hacienda Mompaní'),
(297,76118, 'Monte Vesubio'),
(298,76118, 'Cerrito Colorado VI'),
(299,76118, 'Revolución'),
(300,76118, 'Real del Marques Residencial'),
(301,76118, 'Loma Bonita'),
(302,76118, 'Independencia'),
(303,76118, 'Libertadores'),
(304,76118, 'Jardines de Jurica'),
(305,76118, 'Francisco Villa I'),
(306,76118, 'Cerrito Colorado III'),
(307,76118, 'El Romerillal'),
(308,76118, 'Paraíso'),
(309,76118, 'Leyes de Reforma'),
(310,76118, '5 de Febrero'),
(311,76118, 'Rinconada del Cerrito'),
(312,76118, 'Loma Bonita 2a. Sección'),
(313,76118, 'Morelos'),
(314,76118, 'Paseos de San Miguel'),
(315,76118, 'Cerrito Colorado IV'),
(316,76118, 'Eduardo Loarca Castillo'),
(317,76118, 'Villas de San Miguel'),
(318,76118, 'San Miguel'),
(319,76120, 'Benito Juárez'),
(320,76120, 'Santiago'),
(321,76121, 'Las Américas'),
(322,76121, 'San Pablo IV (INFONAVIT)'),
(323,76121, 'Puesta del Sol'),
(324,76121, 'Conquistadores'),
(325,76121, 'Felipe Ángeles'),
(326,76121, 'Tlanese'),
(327,76121, 'San Pablo III (INFONAVIT)'),
(328,76121, 'Las Américas San Pablo'),
(329,76121, 'Movimiento Obrero'),
(330,76121, 'Altos de San Pablo'),
(331,76121, 'La Esperanza'),
(332,76121, 'Nueva Esperanza'),
(333,76125, 'La Condesa'),
(334,76125, 'Punta San Carlos'),
(335,76125, 'Lomas de San Pablo'),
(336,76125, 'Jardines de Alborada'),
(337,76125, 'Desarrollo San Pablo'),
(338,76125, 'San Pablo I FOVISSSTE'),
(339,76125, 'Proyección 2000'),
(340,76125, 'Terrazas de San Pablo'),
(341,76125, 'Bellavista'),
(342,76125, 'San Pablo II FOVISSSTE'),
(343,76125, 'Rivera y Tamayo'),
(344,76125, 'San Pablo II'),
(345,76125, 'Desarrollo San Pablo I'),
(346,76125, 'Los Robles'),
(347,76125, 'Cipreses'),
(348,76125, 'Sergio Villaseñor'),
(349,76125, 'Valle de San Pablo'),
(350,76125, 'San Pablo'),
(351,76125, 'José María Bustamante'),
(352,76125, 'Nuevo Horizonte'),
(353,76125, 'Latinoamericana'),
(354,76125, 'San Pablo I'),
(355,76125, 'Desarrollo San Pablo II'),
(356,76125, 'Balcones de San Pablo'),
(357,76125, 'Misión Bucareli Sur'),
(358,76125, 'Margaritas'),
(359,76125, 'Desarrollo San Ángel'),
(360,76127, 'Arco de Piedra'),
(361,76127, 'El Salitre'),
(362,76127, 'Parque Industrial Jurica'),
(363,76127, 'Lomas del Salitre'),
(364,76127, 'Raquet Club'),
(365,76127, 'Cuitláhuac'),
(366,76127, 'Palmas'),
(367,76130, 'Industrial'),
(368,76130, 'Obrera'),
(369,76134, 'Plutarco Elías Calles'),
(370,76134, 'Solidaridad 90'),
(371,76134, 'Ex-Hacienda El Tintero'),
(372,76134, 'Santa Mónica'),
(373,76134, 'El Arco'),
(374,76134, 'El Mirador'),
(375,76134, 'Ampolletas'),
(376,76134, 'El Tintero'),
(377,76134, 'El Tintero'),
(378,76134, 'San Sebastián'),
(379,76134, 'Nuevo Carrillo'),
(380,76134, 'Rancho Bellavista'),
(381,76135, 'San Antonio de la Punta'),
(382,76135, '5 de Febrero'),
(383,76136, 'José María Arteaga'),
(384,76136, 'Zona Militar'),
(385,76137, 'Santa María Magdalena'),
(386,76137, 'El Chamizal'),
(387,76137, 'Ferrocarriles Sección Rinconada Santa Anita'),
(388,76137, 'La Sierrita'),
(389,76137, 'Valle Real de San Ángel'),
(390,76137, 'Santo Niño'),
(391,76137, 'Las Flores'),
(392,76137, 'Fuentes Residencial'),
(393,76137, 'La Aurora'),
(394,76137, 'San Antonio del Maurel'),
(395,76137, 'Del Valle'),
(396,76137, 'Rinconada Santa Anita'),
(397,76137, 'Jardines del Valle'),
(398,76137, 'San José 2a Sección'),
(399,76138, 'Santa Mónica 1a Sección'),
(400,76138, 'Santa Mónica 2a Secc'),
(401,76138, 'Las Teresas'),
(402,76138, 'El Higo'),
(403,76138, 'Felipe Carrillo Puerto'),
(404,76138, 'Valle del Mezquital'),
(405,76138, 'El Tintero'),
(406,76138, 'Villas de Santa Mónica'),
(407,76138, 'Luis Donaldo Colosio'),
(408,76138, 'El Progreso'),
(409,76138, 'Rinconada Zimapán'),
(410,76139, 'Los Tabachines'),
(411,76139, 'Los Laureles'),
(412,76139, 'Las Josefinas'),
(413,76139, 'San José'),
(414,76139, 'San Diego'),
(415,76139, 'Carrillo'),
(416,76139, 'La Higuera'),
(417,76139, 'Manuel Jurado'),
(418,76140, 'Viveros Residencial'),
(419,76140, 'Cedros Tilipanes'),
(420,76140, 'Vista 2000'),
(421,76140, 'Las Plazas'),
(422,76140, 'Colinas del Parque'),
(423,76140, 'Parque Querétaro 2000'),
(424,76140, 'Balcones Coloniales'),
(425,76140, 'Villas del Parque'),
(426,76140, 'Cedros Alcatraces'),
(427,76140, 'Arboledas'),
(428,76140, 'Altos del Marqués 1 y 2 Etapa'),
(429,76140, 'Arboledas del Parque'),
(430,76140, 'Privada Arboledas'),
(431,76140, 'San Pedrito Peñuelas'),
(432,76144, 'Anexo Ejido Bolaños'),
(433,76144, 'Bolaños'),
(434,76144, 'Puerta del Cielo'),
(435,76144, 'Balcones del Acueducto'),
(436,76144, 'Rancho San Antonio'),
(437,76144, 'El Pedregal de Querétaro'),
(438,76146, 'Residencial el Refugio'),
(439,76146, 'La Purísima'),
(440,76146, 'Villas Palmira'),
(441,76146, 'La Cima'),
(442,76146, 'Lomas del Campanario II'),
(443,76146, 'Miradores'),
(444,76146, 'Lomas del Marqués'),
(445,76146, 'La Vista Residencial'),
(446,76146, 'Bolaños'),
(447,76146, 'El Campanario'),
(448,76146, 'Lomas del Campanario III'),
(449,76147, 'Rancho Menchaca (Ex-Hacienda Menchaca)'),
(450,76147, 'Cinco Halcones'),
(451,76147, 'Santa Fe'),
(452,76147, 'Libertadores de América'),
(453,76147, 'Jardines de San José'),
(454,76147, 'Rancho Quemado'),
(455,76147, 'La Ladera (Menchaca III)'),
(456,76147, 'Enrique Burgos (La Rinconada)'),
(457,76147, 'Los Huertos'),
(458,76147, 'Ignacio Pérez'),
(459,76147, 'Real de España'),
(460,76147, 'La Tinaja'),
(461,76147, 'Epigmenio González (El Oasis)'),
(462,76147, 'Colinas de Menchaca 2a Sección'),
(463,76147, 'Rinconada de las Joyas'),
(464,76147, 'Valles de San José'),
(465,76147, 'San José el Alto'),
(466,76147, 'Independencia'),
(467,76147, 'San Felipe'),
(468,76147, 'Jardines de San José 1a. y 2a. Sección'),
(469,76147, 'Generación 2000'),
(470,76147, 'Las Fuentes'),
(471,76147, 'Victoria Popular'),
(472,76147, 'Mujeres Independientes'),
(473,76147, 'Nueva Creación'),
(474,76147, 'Renacimiento'),
(475,76147, 'El Arcángel (La Guayina)'),
(476,76147, 'San Ángel'),
(477,76147, 'Oasis'),
(478,76147, 'Fray Junípero Serra'),
(479,76147, 'Privalia Ambienta'),
(480,76147, 'Villas de San José'),
(481,76147, 'Palmas de San José'),
(482,76147, 'Jardines de San José 3a. Sección'),
(483,76147, 'Lomas de San José'),
(484,76147, 'Constituyentes'),
(485,76147, 'Ejido Menchaca (Los Pinos)'),
(486,76147, 'Menchaca III'),
(487,76147, 'Menchaca II'),
(488,76147, 'Colinas de Menchaca'),
(489,76147, 'Buenos Aires'),
(490,76147, 'Ignacio Zaragoza'),
(491,76147, 'Rancho Menchaca'),
(492,76147, '12 de Diciembre'),
(493,76147, 'Lomas de Menchaca'),
(494,76147, 'Antorchista'),
(495,76147, 'Menchaca I'),
(496,76147, 'Cuauhtémoc'),
(497,76147, 'Diana Laura Rojas'),
(498,76147, 'Los Arroyitos'),
(499,76147, 'Vistana'),
(500,76147, 'Lic. Alfredo Estrada Romero'),
(501,76147, 'Monarca'),
(502,76147, 'Nuevo Menchaca'),
(503,76147, 'La Ladera'),
(504,76148, 'Lomas de San Pedrito'),
(505,76148, 'San Pedrito Ecológico'),
(506,76148, 'Ricardo Flores Magón'),
(507,76148, 'Villas Fontana'),
(508,76148, 'Bosques de Buenavista'),
(509,76148, 'Nueva Esperanza'),
(510,76148, 'Colinas de San Pablo'),
(511,76148, 'Nuevo San Pedrito'),
(512,76148, 'Valle de San Pedrito Peñuelas'),
(513,76148, 'La Ladera'),
(514,76148, 'Rincones del Parque'),
(515,76148, 'Los Sabinos'),
(516,76148, 'San Pedrito Peñuelas II'),
(517,76148, 'San Pedrito Peñuelas IV'),
(518,76148, 'Conjunto Belén'),
(519,76148, 'Eurípides'),
(520,76148, 'Anexo a la Ecólogia'),
(521,76148, 'Peñuelas'),
(522,76148, 'Misión Bucareli Norte'),
(523,76148, 'Lomas de San Pedrito (Sección Portales)'),
(524,76148, 'Villas de Santiago'),
(525,76148, 'San Pedrito los Arcos'),
(526,76148, 'El Parque'),
(527,76148, 'Los Ciruelos'),
(528,76148, 'Paseos de la Cuesta'),
(529,76148, 'San Pedrito Peñuelas I'),
(530,76148, 'Paseos del Pedregal'),
(531,76148, 'El Vergel'),
(532,76148, 'Los Padilla'),
(533,76148, 'Ampliación Amalia Solórzano'),
(534,76148, 'Alameda'),
(535,76148, 'El Jardín'),
(536,76148, 'San Pedrito Peñuelas III'),
(537,76148, 'Reforma Agraria Radical'),
(538,76148, 'Jardines de Santiago'),
(539,76148, 'Bosques de la Hacienda'),
(540,76148, 'Amalia Solórzano'),
(541,76148, 'Libertad'),
(542,76148, 'Cuesta Azul'),
(543,76148, 'La Rueca'),
(544,76148, 'Bosques de Iturbide'),
(545,76148, 'Puerta de Belén'),
(546,76148, 'Unidad Nacional'),
(547,76148, 'Jardines de Villas de Santiago'),
(548,76149, 'Misión de Concá'),
(549,76149, 'Misión San Jerónimo'),
(550,76150, 'Los Fresnos'),
(551,76150, 'Molinos de la Era'),
(552,76150, 'Felipe Ángeles'),
(553,76150, 'Los Alcanfores'),
(554,76150, 'Villas Tecnológico'),
(555,76150, 'Bugambilias'),
(556,76150, 'La Era'),
(557,76150, 'San Roque'),
(558,76150, 'San Roque'),
(559,76150, 'La Popular'),
(560,76150, 'Parque Industrial la Montaña'),
(561,76150, 'Sauces'),
(562,76150, 'Rinconada San José'),
(563,76150, 'Rinconada los Pirules'),
(564,76150, 'Asalias'),
(565,76150, 'Géminis'),
(566,76150, 'Los Alcanfores Sección Sur'),
(567,76150, 'Constituyentes FOVISSSTE'),
(568,76150, 'Los Molinos'),
(569,76150, 'La Estación F.F.C.C.'),
(570,76150, 'La Florida'),
(571,76150, 'La Piedad'),
(572,76150, 'San Pablo Tecnológico'),
(573,76150, 'Los Vitrales'),
(574,76150, 'Tecnológico 2000'),
(575,76150, 'San José de la Montaña'),
(576,76150, 'El Fenix'),
(577,76154, 'El Retablo'),
(578,76155, 'Viveros de Querétaro'),
(579,76156, 'Los Eucaliptos'),
(580,76156, 'Los Alcanfores Sección Norte'),
(581,76156, 'San Gregorio'),
(582,76156, 'Constituyentes de 1824'),
(583,76157, 'Santa Catarina'),
(584,76158, 'Departamental Parques'),
(585,76158, 'Prados del Tecnológico'),
(586,76158, 'Las Peñas'),
(587,76158, 'El Porvenir'),
(588,76158, 'Tecnológico'),
(589,76158, 'Victoria'),
(590,76158, 'Real del Parque'),
(591,76158, 'Los Faroles'),
(592,76158, 'Las Peñitas'),
(593,76158, 'España'),
(594,76158, 'Conjunto Parques'),
(595,76159, 'Balcón Campestre'),
(596,76159, 'Conjunto Querétaro'),
(597,76159, 'Fresnos Condominio 2'),
(598,76159, 'Fresnos Condominio 3'),
(599,76159, 'Rinconada San Joaquín'),
(600,76159, 'Los Girasoles'),
(601,76159, 'Fresnos Condominio 4'),
(602,76159, 'San Pablo'),
(603,76159, 'La Cima'),
(604,76159, 'Real Jurica'),
(605,76159, '5 de Febrero'),
(606,76159, 'Real de San Pablo'),
(607,76160, 'Las Hadas'),
(608,76160, 'Álamos 1a Sección'),
(609,76160, 'Álamos 2a Sección'),
(610,76160, 'Álamos 3a Sección'),
(611,76160, 'El Cerrito'),
(612,76160, 'El Tepetate'),
(613,76160, 'Romy'),
(614,76160, 'Rinconada de los Alamos'),
(615,76160, 'Las Brujas'),
(616,76160, 'Privada Bugambilias'),
(617,76160, 'Montecarlo'),
(618,76160, 'Residencial Parque del Álamo'),
(619,76164, 'Nacozari'),
(620,76164, 'Las Rosas'),
(621,76164, 'Primavera'),
(622,76165, 'San Sebastián'),
(623,76165, 'Guadalupe Victoria (SAHOP)'),
(624,76165, 'Los Cedros'),
(625,76165, 'Los Claustros'),
(626,76165, 'Margaritas'),
(627,76166, 'La Trinidad'),
(628,76168, 'Lomas de Lindavista'),
(629,76168, 'Las Gemas'),
(630,76168, 'Lindavista'),
(631,76168, 'Residencial Bosques'),
(632,76168, 'Jacarandas'),
(633,76168, 'Las Palomas'),
(634,76168, 'Quinta La Laborcilla'),
(635,76168, 'Claustros del Parque'),
(636,76168, 'Mega Plaza'),
(637,76169, 'Plaza del Parque'),
(638,76169, 'Plaza Boulevares'),
(639,76169, 'Privada la Laborcilla'),
(640,76170, 'La Capilla'),
(641,76170, 'Colibrí'),
(642,76170, 'Eucaliptos III'),
(643,76170, 'Eucaliptos I'),
(644,76170, 'Eucaliptos II'),
(645,76170, 'La Reja'),
(646,76175, 'Los Virreyes'),
(647,76176, 'Prados de La Capilla'),
(648,76177, 'Ejido Modelo'),
(649,76177, 'Demetrio Vallejo'),
(650,76177, 'Modelo'),
(651,76177, 'Villa Jardín'),
(652,76177, 'Provincia Santa Elena'),
(653,76177, 'Rinconada La Capilla'),
(654,76177, 'Residencial Parque La Gloria'),
(655,76177, 'La Toscana'),
(656,76177, 'Hacienda Galindo'),
(657,76177, 'Frida Kahlo'),
(658,76177, 'Carolina'),
(659,76177, 'Villa San Antonio'),
(660,76177, 'Galindas Residencial'),
(661,76177, 'Residencial Gema'),
(662,76177, 'La Carambada'),
(663,76177, 'Residencial Frondoso'),
(664,76178, 'Los Ángeles I'),
(665,76178, 'Villa las Arboledas'),
(666,76178, 'El Rosario'),
(667,76178, 'Ensueño'),
(668,76178, 'La Sandia'),
(669,76179, 'Quinta Alicia'),
(670,76179, 'Santiago'),
(671,76179, 'C.E.A.'),
(672,76179, 'El Sillar'),
(673,76179, 'Residencial Italia'),
(674,76180, 'El Jacal'),
(675,76180, 'Jardines de la Hacienda'),
(676,76180, 'Orquídeas'),
(677,76180, 'Anáhuac'),
(678,76180, 'La Granja'),
(679,76180, 'Las Plazas'),
(680,76180, 'Magisterial'),
(681,76180, 'La Joya'),
(682,76185, 'Mansiones del Valle'),
(683,76185, 'Hacienda San Miguel'),
(684,76185, 'Claustros del Campestre'),
(685,76186, 'Las Torres'),
(686,76190, 'Lomas de Querétaro'),
(687,76190, 'Rincón de San Antonio'),
(688,76190, 'Club Campestre'),
(689,76190, 'Del Valle'),
(690,76190, 'Los Pilares'),
(691,76197, 'Fidel Velázquez Sánchez'),
(692,76199, 'Prados del Campestre'),
(693,76210, 'La Gotera'),
(694,76210, 'Jofrito'),
(695,76210, 'La Estacada'),
(696,76210, 'La Ciénega'),
(697,76211, 'Ojo de Agua'),
(698,76212, 'El Raspiño'),
(699,76212, 'La Luz'),
(700,76212, 'La Cantera'),
(701,76212, 'El Rincón de Ojo de Agua'),
(702,76212, 'Guadalupe (La Lagrima)'),
(703,76213, 'La Palma'),
(704,76213, 'Palo Alto'),
(705,76213, 'Jofrito'),
(706,76213, 'La Versolilla'),
(707,76214, 'La Estancia Palo Dulce'),
(708,76214, 'El Zapote'),
(709,76215, 'Parque Industrial Querétaro'),
(710,76215, 'El Camino'),
(711,76215, 'San Antonio de Trojes'),
(712,76215, 'Jofre'),
(713,76216, 'Presa de Becerra'),
(714,76217, 'El Cerrito'),
(715,76217, 'El Rosario'),
(716,76217, 'Cañada de la Monja'),
(717,76218, 'Loma del Chino'),
(718,76219, 'La Monja'),
(719,76220, 'Lindavista'),
(720,76220, 'Valle Dorado'),
(721,76220, 'Benito Juárez'),
(722,76220, 'San Francisco'),
(723,76220, 'Arboledas'),
(724,76220, 'Colinas de Santa Rosa'),
(725,76220, 'Continental'),
(726,76220, 'Las Rosas'),
(727,76220, 'Santa Lucia'),
(728,76220, 'La Cruz'),
(729,76220, 'La Loma'),
(730,76220, 'Lomas del Pedregal'),
(731,76220, 'Los Arquitos'),
(732,76220, 'Las Lajitas'),
(733,76220, 'Los Ángeles'),
(734,76220, 'Corregidora'),
(735,76220, 'Puerto de Aguirre'),
(736,76220, 'San Miguelito'),
(737,76220, 'Santa Rosa de Jauregui'),
(738,76220, 'Francisco Villa'),
(739,76220, 'Las Flores'),
(740,76220, 'Montenegro'),
(741,76220, 'Emiliano Zapata'),
(742,76220, 'El Pedregal'),
(743,76220, 'Parque Industrial Polígono Empresarial'),
(744,76221, 'Charape de la Joya'),
(745,76221, 'La Barreta'),
(746,76221, 'La Carbonera'),
(747,76221, 'La Joya'),
(748,76221, 'Cerro de la Cruz'),
(749,76223, 'Santa Rosa (Los Pilares)'),
(750,76223, 'Santa Catarina (Asociación de Colonos)'),
(751,76223, 'Pintillo'),
(752,76223, 'Santa Catarina'),
(753,76223, 'Pinto'),
(754,76223, 'Corea'),
(755,76223, 'Los Venados'),
(756,76223, 'San Isidro Buenavista'),
(757,76223, 'Zona Este de Montenegro'),
(758,76223, 'Monte Negro'),
(759,76223, 'Hacienda Santa Rosa'),
(760,76224, 'Presita de San Antonio'),
(761,76224, 'El Cerrito'),
(762,76224, 'El Paraíso'),
(763,76224, 'Zona Periferica San Miguelito'),
(764,76224, 'El Madroño'),
(765,76224, 'Los Jiménez'),
(766,76224, 'Cerro Colorado (El Colorado)'),
(767,76224, 'Casa Blanca'),
(768,76224, 'Estancia de la Rochera'),
(769,76224, 'La Puerta de Santiaguillo'),
(770,76224, 'Pie de Gallo'),
(771,76224, 'El Herrero'),
(772,76224, 'San Isidro Viejo'),
(773,76224, 'Llano de La Rochera'),
(774,76225, 'Buenavista'),
(775,76225, 'Campo Real'),
(776,76225, 'La Guadalupana'),
(777,76225, 'El Salvador'),
(778,76226, 'San Isidro'),
(779,76226, 'Campestre Ecológico la Rica'),
(780,76226, 'Cuadrilla Juriquilla'),
(781,76226, 'Real de Juriquilla Prados'),
(782,76226, 'Loma Juriquilla'),
(783,76226, 'Rincón del Lago'),
(784,76226, 'Jurica Misiones'),
(785,76226, 'Lomas de Juriquilla'),
(786,76226, 'Acequia Blanca'),
(787,76226, 'San José Buenavista'),
(788,76226, 'Campestre Juriquilla'),
(789,76226, 'Juriquilla'),
(790,76226, 'Villas del Mesón'),
(791,76226, 'Real de Juriquilla'),
(792,76227, 'Quintín Lozada'),
(793,76227, 'Los Muertos'),
(794,76227, 'El Patol'),
(795,76227, 'San José de la Tinaja'),
(796,76227, 'La Purísima'),
(797,76227, 'Cerro Prieto'),
(798,76227, 'El Transito'),
(799,76228, 'San Isidro El Alto'),
(800,76228, 'La Tinaja de La Estancia'),
(801,76229, 'El Pie'),
(802,76229, 'El Bordo'),
(803,76229, 'El Nabo'),
(804,76229, 'San Francisco de la Palma'),
(805,76229, 'Tlacote el Bajo'),
(806,76229, 'El Puertecito'),
(807,76229, 'Tlacote El Alto'),
(808,76229, 'La Mesita de Abajo'),
(809,76229, 'Santa María del Zapote'),
(810,76229, 'Mompaní'),
(811,76230, 'Balcones de Juriquilla'),
(812,76230, 'La Cañada Juriquilla'),
(813,76230, 'Mayoral 1 y 2'),
(814,76230, 'Paraíso Diamante'),
(815,76230, 'Los Naranjos'),
(816,76230, 'Caletto'),
(817,76230, 'Altavista Juriquilla'),
(818,76230, 'Nuevo Paraíso'),
(819,76230, 'Jurica La Solana'),
(820,76230, 'Jurica Acueducto'),
(821,76230, 'Juriquilla Santa Fe'),
(822,76230, 'Punta Juriquilla'),
(823,76230, 'Colinas de Juriquilla'),
(824,76230, 'Jurica Tolimán'),
(825,76230, 'Juriquilla Privada'),
(826,76230, 'Paseo del Piropo'),
(827,76230, 'Nuevo Juriquilla'),
(828,76230, 'Independencia'),
(829,76230, 'San Francisco Juriquilla'),
(830,76230, 'Cumbres del Lago'),
(831,76230, 'La Solana'),
(832,76230, 'Rancho Largo'),
(833,76230, 'Azteca'),
(834,76233, 'La Nopalera'),
(835,76233, 'Potrero Tetillas'),
(836,76233, 'Los Guardados'),
(837,76233, 'Las Mariposas'),
(838,76234, 'Mesita de Mompani'),
(839,76234, 'Santo Niño de Praga'),
(840,76235, 'Campestre Huertas la Joya'),
(841,76235, 'Viñedos'),
(842,76235, 'Fracción Ejido el Retablo'),
(843,76235, 'Sonterra'),
(844,76235, 'Sección Oeste de Santa María'),
(845,76235, 'El Rincón'),
(846,76237, 'San Pedrito el Alto'),
(847,76237, 'Altozano el Nuevo Querétaro'),
(848,76237, 'CERESO del Estado'),
(849,76238, 'Nuevo Horizonte'),
(850,76238, 'Prados de Miranda'),
(851,76238, 'Santa Juanita'),
(852,76238, 'Las Águilas')
;