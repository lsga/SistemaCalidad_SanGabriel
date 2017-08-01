-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-08-2017 a las 15:01:09
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_calidad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ambito`
--

CREATE TABLE `ambito` (
  `ID_AMBITO` int(11) NOT NULL,
  `NOMBREAMBITO` longtext,
  `PonderacionAmbito` decimal(2,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ambito`
--

INSERT INTO `ambito` (`ID_AMBITO`, `NOMBREAMBITO`, `PonderacionAmbito`) VALUES
(1, '1. Ambito Pedagogico Curricular ', '0.40'),
(2, '2. Ambito Organizacion, Estructura y Recursos', '0.25'),
(3, '3. Ambito Clima Escolar', '0.25'),
(4, '4. Ambito Familia y Comunidad Local', '0.10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE `encuesta` (
  `id_encuesta` int(11) NOT NULL,
  `nombre_encuesta` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `encuesta`
--

INSERT INTO `encuesta` (`id_encuesta`, `nombre_encuesta`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 'periodo1', '2017-07-11 14:38:00', '2017-07-20 15:30:00'),
(2, 'periodo2', '2017-07-14 09:31:00', '2017-07-14 15:30:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicadores`
--

CREATE TABLE `indicadores` (
  `id_indicador` int(11) NOT NULL,
  `indicador_decripcion` varchar(50) NOT NULL,
  `id_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `indicadores`
--

INSERT INTO `indicadores` (`id_indicador`, `indicador_decripcion`, `id_item`) VALUES
(1, '1.1.1', 1),
(2, '1.1.2', 1),
(3, '1.1.3', 1),
(4, '1.1.4', 1),
(5, '1.1.5 ', 1),
(6, '1.1.6', 1),
(7, '1.2.1', 2),
(8, '1.2.2', 2),
(9, '1.2.3', 2),
(10, '1.2.4', 2),
(11, '1.2.5', 2),
(12, '1.2.6', 2),
(13, '1.3.1', 3),
(14, '1.3.2', 3),
(15, '1.3.3', 3),
(16, '1.3.4', 3),
(17, '1.3.5', 3),
(18, '1.3.6', 3),
(19, '1.4.1', 4),
(20, '1.4.2', 4),
(21, '1.4.3', 4),
(22, '1.4.4', 4),
(23, '2.1.1', 5),
(24, '2.1.2', 5),
(25, '2.1.3', 5),
(26, '2.1.4', 5),
(27, '2.2.1', 6),
(28, '2.2.2', 6),
(29, '2.2.3', 6),
(30, '2.2.4', 6),
(31, '2.2.5', 6),
(32, '2.2.6', 6),
(33, '2.2.7', 6),
(34, '2.3.1', 7),
(35, '2.3.2', 7),
(36, '2.3.3', 7),
(37, '2.3.4', 7),
(38, '2.3.5', 7),
(39, '2.3.6', 7),
(40, '2.4.1', 8),
(41, '2.4.2', 8),
(42, '2.4.3', 8),
(43, '2.5.1', 9),
(44, '2.5.2', 9),
(45, '2.5.3', 9),
(46, '2.5.4', 9),
(47, '3.1.1', 10),
(48, '3.1.2', 10),
(49, '3.1.3', 10),
(50, '3.1.4', 10),
(51, '3.1.5', 10),
(52, '3.1.6', 10),
(53, '3.2.1', 11),
(54, '3.2.2', 11),
(55, '3.2.3', 11),
(56, '3.2.4', 11),
(57, '3.3.1', 12),
(58, '3.3.2', 12),
(59, '3.3.3', 12),
(60, '3.3.4', 12),
(61, '3.4.1', 13),
(62, '3.4.2', 13),
(63, '3.4.3', 13),
(64, '3.4.4', 13),
(65, '3.4.5', 13),
(66, '3.4.6', 13),
(67, '4.1.1', 14),
(68, '4.1.2', 14),
(69, '4.1.3', 14),
(70, '4.1.4', 14),
(71, '4.2.1', 15),
(72, '4.2.2', 15),
(73, '4.2.3', 15),
(74, '4.2.4', 15),
(75, '4.2.5', 15),
(76, '4.3.1', 16),
(77, '4.3.2', 16),
(78, '4.3.3', 16),
(79, '4.3.4', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE `item` (
  `ID_ITEM` int(11) NOT NULL,
  `ID_AMBITO` int(11) DEFAULT NULL,
  `NOMBREITEM` longtext,
  `PonderacionItem` decimal(2,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `item`
--

INSERT INTO `item` (`ID_ITEM`, `ID_AMBITO`, `NOMBREITEM`, `PonderacionItem`) VALUES
(1, 1, '1.1 Disenio y Planificacion de la ensenianza', '0.10'),
(2, 1, '1.2 Realizacion y Apoyo de la ensenianza', '0.25'),
(3, 1, '1.3 Acompaniamiento a estudiantes', '0.25'),
(4, 1, '1.4 Logros de aprendizaje ', '0.40'),
(5, 2, '2.1 Direccion Estrategica Institucional', '0.15'),
(6, 2, '2.2 Estructura, Roles y Coordinacion', '0.30'),
(7, 2, '2.3 Gestion de Personas', '0.30'),
(8, 2, '2.4 Infraestructura y Equipamiento ', '0.10'),
(9, 2, '2.5 Gestion Financiera', '0.15'),
(10, 3, '3.1 Comunicacion e interaccion escolar', '0.35'),
(11, 3, '3.2 Participacion de Educadores y Estudiantes', '0.20'),
(12, 3, '3.3 Motivacion, Compromiso e Identidad', '0.25'),
(13, 3, '3.4 Altas Expectativas y Reconocimiento', '0.20'),
(14, 4, '4.1 Participacion Implicacion de las Familias', '0.30'),
(15, 4, '4.2 Apoyo Fortalecimiento Rol Educador', '0.30'),
(16, 4, '4.3 Vinculos con la comunidad ', '0.40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `ID_PREGUNTA` int(11) NOT NULL,
  `ID_INDICADOR` int(11) DEFAULT NULL,
  `NOMBREPREGUNTA` longtext CHARACTER SET utf8,
  `COMENTARIO` text,
  `EVIDENCIA` text,
  `DESCRIPCIONEVIDENCIA` text,
  `OBSERVACION` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`ID_PREGUNTA`, `ID_INDICADOR`, `NOMBREPREGUNTA`, `COMENTARIO`, `EVIDENCIA`, `DESCRIPCIONEVIDENCIA`, `OBSERVACION`) VALUES
(1, 1, 'El proyecto curricular explicita los aprendizajes y/o desempe?os que los estudiantes deben lograr en cada grado escolar y area del curriculum que aseguran la formacion integral ', ' ', 'files/evidencia_1.pdf', 'Curriculo Nacional', 'Dentro del curriculo nacional no se establece una '),
(2, 2, 'El proyecto curricular del centro describe los medios pedagogicos a traves de los cuales se pretende alcanzar los aprendizajes integrales segun las metas definidas', ' ', 'files/evidencia_2.pdf', 'CurrÃ­culo Nacional PEI Planificaciones Anual, Bloque, Aula', 'Los medios pedagogicos se encuentran implicitas de'),
(3, 3, 'El dise?o del proyecto curricular del centro considera las necesidades y caracteristicas especificas del contexto ', ' ', 'files/evidencia_3.pdf', 'Curriculo nacional. Planificaciones anual, bloque y de aula. PEI Proyecto de ReligiÃ³n', 'La institucion no cuenta con su propio proyecto y '),
(4, 4, 'El proyecto curricular del centro incluye un sistema de evaluacion coherente con los aprendizajes propuestos para todas las secciones, niveles o grados escolares y para todas las areas que refiere su proyecto curricular', ' ', 'files/evidencia_4.pdf', 'Documento sobre la evaluaciÃ³n. Plan anual, bloque, aula. Curriculo del ministerio.', 'La institucion no cuenta con un proyecto curricula'),
(5, 5, 'Las actividades curriculares son planificadas considerando los planteamientos institucionales del centro en coherencia con el Paradigma Ignaciano (PPI)', ' ', 'files/evidencia_5.pdf', 'Planificaciones de bloque y aula.', 'Dentro de la institucion se planifica utilizando e'),
(6, 6, 'Los educadores analizan en sus respectivos equipos la dinamica y efectos de la practica pedagogica, teniendo como referencia, los resultados de los estudiantes en las diferentes experiencias formativas (academicas, pastorales y otras) en coherencia con los rasgos propios de un centro educativo asociado a la Compania de Jesus', ' ', 'files/evidencia_6.pdf', 'EvaluaciÃ³n de centros de aprendizaje. Matriz de logros. Acta de juntas de curso. BitÃ¡cora del docente. EvaluaciÃ³n multidisciplinario. PlanificaciÃ³n talleres de refuerzo y recuperaciÃ³n.', 'Se realizan esta accion de analizar en equipos la '),
(7, 7, 'Las clases y las diversas actividades de ense?anza (tanto academicas, como pastorales u otras) se desarrollan en coherencia con las planificaciones', ' ', 'files/evidencia_7.pdf', 'Observaciones de clase. Leccionario. Planificacion anual, bloque, aula. Cuaderno del estudiante.', 'No existe evidencia de este trabajo en todas las a'),
(8, 8, 'Los educadores demuestran dominio de los conocimientos que ense?an y de su didactica', ' ', 'files/evidencia_8.pdf', 'Encuesta a ex alumnos y a alumnos de 3ero de bachillerato. Evaluacion a los docentes al final del aÃ±o. Observaciones de clase. Material de profesores. Publicaciones de profesores.', 'No existe una evidencia directa que demuestre el d'),
(9, 9, 'Los educadores asumen la diversidad de sus estudiantes, utilizando recursos y estrategias diferenciadas', ' ', 'files/evidencia_9.pdf', 'Informes de necesidades en DECE. Planes de mejora. Carpetas de acompaÃ±amiento. Informes de juntas de curso. Actas de reunion de curso. Acta junta de curso.', 'No existe evidencia de que todos los docentes de l'),
(10, 10, 'Los educadores utilizan recursos didacticos diferenciados y diversos que favorecen el aprendizaje integral de todos los estudiantes', ' ', 'files/evidencia_10.pdf', 'Plan de aula. Material didactico. Planificacion de multidisciplinario. Plataforma de Santillana, tecnologicos, blogs, Edmodo, etc. Recursos de pastoral. PlanificaciÃ³n de DECE.', 'Muchos de los recursos utilizados se enfocan en el'),
(11, 11, 'Los educadores realizan sus clases aplicando estrategias didacticas coherentes con el Paradigma Pedagogico Ignaciano ', ' ', 'files/evidencia_11.pdf', 'Observaciones de clase. Cuadernos de los estudiantes. Planificaciones de aula.', 'No existe evidencia de que todos los docentes apli'),
(12, 12, 'Los educadores son acompaniados y retroalimentados en su practica pedagogica, en funcion del logro de los aprendizajes que se declaran en el Proyecto Curricular del Centro', ' ', 'files/evidencia_12.pdf', 'Observaciones de clase.', 'La mayoria de los educadores son acompaÃ±ados y re'),
(13, 13, 'Los estudiantes reciben acompaniamiento personal en lo academico y espiritual en su proceso formativo, conforme a su edad y caracteristicas individuales', ' ', 'files/evidencia_13.pdf', 'Formato de ficha de acompaÃ±amiento. Planes de mejora. Fichas de reuniones con estudiantes, padres. Leccionarios. Pedido IntervenciÃ³n SicologÃ­a.', 'Se realiza un acompaÃ±amiento grupal a todos los e'),
(14, 14, 'Los estudiantes que mas lo requieren, son especialmente apoyados en su aprendizaje integral', ' ', 'files/evidencia_14.pdf', 'Plan de mejora. Carpeta de los estudiantes. Pedido IntervenciÃ³n Plan de tutoria individual. Entrevista con padres de familia. Actas de reunion de curso. Fichas de acompaÃ±amiento espiritual. Informes.', 'No se puede asegurar que son todos los estudiantes'),
(15, 15, 'El centro desarrolla estrategias pedagogicas pertinentes a la diversidad y heterogeneidad de sus estudiantes, de manera de que todos alcancen los aprendizajes esperados', ' ', 'files/evidencia_15.pdf', 'No existe evidencia.', 'No existen estrategias pedagogicas institucionales'),
(16, 16, 'Los estudiantes valoran positivamente la calidad del acompaniamiento que reciben', ' ', 'files/evidencia_16.pdf', 'Encuesta estudiantes.', 'La encuesta realizada es sacada de una muestra mÃ­'),
(17, 17, 'Las familias valoran positivamente la calidad del acompaniamiento que reciben los estudiantes', ' ', 'files/evidencia_17.pdf', 'Encuesta a padres.', 'La encuesta utilizada se ha hecho con un muestreo '),
(18, 18, 'El centro cuenta con estrategias de orientacion y equipo de asesoramiento educativo, sicologico, sicopedagogico y espiritual', ' ', 'files/evidencia_18.pdf', 'Acta de remision. Plan de asistencia. Plan de Pastoral y DECE.', 'La institucion cuenta con los departamentos que se'),
(19, 19, 'Los aprendizajes obtenidos facilitan a los estudiantes a tener un buen desempanio en el siguiente nivel educativo (una vez que dejen el centro escolar)', ' ', 'files/evidencia_19.pdf', 'Encuesta ex alumnos. Informe rendimiento de universidades.', 'Se tiene informacion sobre el porcentaje de estudi'),
(20, 20, 'Los resultados del centro educativo se reconocen dentro de los mas altos, comparandolos con centros de similares caracteristicas', ' ', NULL, 'ENES Ser Bachiller. Reconocimientos honorificos.', 'Los estudiantes han obtenido buenos resultados en '),
(21, 21, 'El centro redise?a sus propios procesos pedagogicos y pastorales, considerando informacion referenta a la participacion y valoracion de los estudiantes en las actividades de aprendizaje (academicas y pastorales), como tambein en el analisis de los factores asociados que puedan estar influyendo en los resultados de los aprendizajes', ' ', NULL, 'No existe evidencia', 'Existen algunas instancias en las que la opinion d'),
(22, 22, 'La informacion referida a los resultados de los aprendizajes de los estudiantes es compartida y dada a conocer a los propios estudiantes y sus familias', ' ', 'files/evidencia_22.pdf', 'Libretas. Sistema del academium. Cuadernos de los estudiantes.', 'Se entregan todos los resultados a los padres de f'),
(23, 23, 'La planificacion institucional en el corto y mediano plazo, da cuenta de acciones estrategicas que se deprenden de la mision y vision que inspira a los centros asociados a la Compania de Jesus', ' ', NULL, 'No se tiene la planificaciÃ³n a corto y mediano plazo con el PEI institucional, pero el mismo ha sido actualizado de acuerdo a las necesidades del Ministerio de EducaciÃ³n y las Obras de la CompaÃ±Ã­a.', ''),
(24, 24, 'La mision y la panificacion estrategica son actualizadas periodicamente', ' ', NULL, 'El PEI No se actualiza periÃ³dicamente como polÃ­tica institucional, sino porque el ministerio lo exige, es por eso que se ha designado esa rÃºbrica.', ''),
(25, 25, 'Las decisiones del centro se toman considerando la mision y la planificacion estrategica', ' ', NULL, 'No existe evidencia', 'Es probable que las decisiones sean tomadas en fun'),
(26, 26, 'Se asignan los recursos necesarios para la ejecucion de las acciones de la planificacion estrategica', ' ', NULL, 'Los presupuestos por Ã¡rea no son evidencia. No nos estamos basando en el PEI para la asignaciÃ³n de recursos, razÃ³n por la cual se ha dado dicha rÃºbrica.', ''),
(27, 27, 'El Equipo Directivo tiene explicitada su estructura interna contemplando roles, funciones y responsabilidades', ' ', NULL, 'Existen ciertos cargos que no estÃ¡n especificados. Algunas Ã¡reas realizan el levantamiento de funciones, no todas. Es por eso que se dio dicha rÃºbrica, ya que no estÃ¡n 100% explicitadas las funciones con todos los trabajadores.', 'Algunas Ã¡reas del Colegio tienen realizado el lev'),
(28, 28, 'Todos los equipos del centro (educadores, administrativos y de servicio) tienen explicitada una estructura interna que contempla roles, funciones y responsabilidades', ' ', NULL, 'Se han elegido las evidencias de acuerdo a lo que la instituciÃ³n tiene en su organizaciÃ³n y de acuerdo a lo estipulado por cada director de Ã¡rea en cuanto a levantamiento de funciones.', 'Se ha dado esa rÃºbrica ya que no todas las Ã¡reas'),
(29, 29, 'El Equipo Directivo tiene planes de trabajo y cuenta con espacios de coordinacion', ' ', NULL, 'Acta de reuniÃ³n del Consejo de GestiÃ³n CSG', 'No todas las planificaciones de trabajo o espacios'),
(30, 30, 'Todos los equipos del centro (educadores, administrativos y de servicio) cuentan con planes de trabajo y espacios de coordinacion', ' ', NULL, 'Plan anual de Extracurriculares Plan de aula Extracurriculares Acta de ReuniÃ³n de PlanificaciÃ³n', 'Las diferentes Ã¡reas sÃ­ cuentan con espacios de '),
(31, 31, 'La gestion de cada uno de los integrantes del Equipo Directivo, es evaluada periodicamente', ' ', NULL, 'No existe evidencia', 'No hay un formato de evaluaciÃ³n por coordinador d'),
(32, 32, 'La gestion de los equipos de trabajo como de sus responsables, es evaluada periodicamente', ' ', NULL, 'No existe evidencia', 'No hay un formato de evaluaciÃ³n por coordinador d'),
(33, 33, 'Se cuenta con un area o rol que vela por la actualizacion anual del organigrama, funciones, las descripciones de perfiles y competencias del cargo', ' ', NULL, 'Organigrama Institucional Funciones de un cargo.', 'El organigrama no es actualizado anualmente. Se cu'),
(34, 34, 'El procedimiento de seleccion de personas de acuerdo a un perfil de competencias es conocido por quienes trabajan en el centro', ' ', NULL, 'No existe evidencia clara para todas las Ã¡reas.', 'Los perfiles no estÃ¡n realizados en cuanto a comp'),
(35, 35, 'la evaluacion del desempenio de las personas se realiza en forma periodica, a partir de un perfil de competencias', ' ', NULL, 'Cronograma de Fechas para aplicar auto evaluaciÃ³n Formato de auto evaluaciÃ³n docente', 'Las evaluaciones del personal se ha aplicado Ãºnic'),
(36, 36, 'Los resultados de las evaluaciones son utilizados para gestionar la mejora del desempenio de las personas', ' ', NULL, 'Cronograma de Evaluaciones Formato de Auto EvaluaciÃ³n Docente Resultado de Evaluaciones por parte de Estudiantes a docente', ''),
(37, 37, 'La formacion continua de las personas se desarrolla de forma sistematica, contribuyendo al fortalecimiento y desarrollo de sus competencias e impactando positivamente en sus desempe?os', ' ', NULL, 'Plan de realizaciÃ³n de curso de Cardoner 1', 'No existe un plan de formaciÃ³n acadÃ©mica continu'),
(38, 38, 'La formacion continua de las personas otroga oportunidades de crecimiento personal y espiritual, que refuerzan el sentido e identidad propios a un centro educativo asociado a la Compania de Jesus', ' ', NULL, ' ', 'El personal del Colegio ha recibido talleres de Ca'),
(39, 39, 'El sistema de incentivos mejora el desempenio de las personas', ' ', NULL, 'No existe evidencia', 'No contamos con sistema de incentivos al desempeÃ±'),
(40, 40, 'La organizacion y desarrollo de la infraestructura y equipamiento institucional, prioriza las necesidades en coherencia con la propuesta de formacion integral, que se espera de un centro asociado a la Compania de Jesus', ' ', NULL, 'Agenda de Espacios de Uso MÃºltiple del Colegio Lista de Requerimientos tanto de personal interno como de personas externas. Correo de Requerimiento para equipar espacios', 'Todos los espacios del Colegio han sido equipados '),
(41, 41, 'La infraestructura y equipamiento se encuentran adaptados a las diversas necesidades pedagogicas de sus estudiantes', ' ', NULL, 'Inventario y Levantamientos de necesidades de todos los departamentos', 'Como es de conocimiento, no se puede lograr satisf'),
(42, 42, 'Los diferentes usuarios muestran satisfaccion respecto a la infraestructura y organizacion de los espacios en el centro', ' ', NULL, 'No existe evidencia que permita calificar los niveles de satisfacciÃ³n.', 'La evidencia serÃ­a una encuesta de satisfacciÃ³n,'),
(43, 43, 'El centro organiza su presupuesto anual en coherencia con los planteamientos estrategicos y las necesidades de formacion integral, que se espera de un centro asociado a la Compania de Jesus ', ' ', '', 'Presupuesto Anual', 'El presupuesto anual se basa parcialmente con los '),
(44, 44, 'Los miembros de la comunidad educativa aportan iniformacion y conocen -de acuerdo a sus niveles de responsabilidad- los criterios que organizan tanto el presupuesto del centro como su ejecucion', ' ', NULL, 'Presupuesto de Pastoral Correo de peticiÃ³n y entrega', 'Los miembros de la comunidad, en medida de sus res'),
(45, 45, 'El centro educativo alcanza resultados financieros que les permiten solventar sus gastos y asegurar su sustentabilidad a mediano y largo plazo', ' ', NULL, 'Informe de proyecciÃ³n y auditorÃ­a financiera de la PWC Presupuesto Anual', 'El presupuesto anual permite tener solvencia finan'),
(46, 46, 'La gestion financiera del centro y los presupuestos, incluyen recursos y mecanismos de discriminacion positiva y compensatoria para asegurar la permanencia de estudiantes de distintas condiciones socioeconomicas en el centro educativo', ' ', NULL, 'Listado de Alumnos Becados', 'El colegio consta de estudiantes de diferentes con'),
(47, 47, 'Los estudiantes sienten que entre ellos hay respeto y confianza', ' ', NULL, 'Encuesta realizada por la DirecciÃ³n de Desarrollo Institucional DDI a docentes, estudiantes y PPFF. Pregunta 1, pÃ¡gina 1.', 'La evidencia nos dice que si existe respeto y conf'),
(48, 48, 'Los estudiantes sienten confianza y respeto mutuo con sus educadores', ' ', NULL, 'En la Ãºltima pregunta de la encuesta realizada a los estudiantes encontramos la respuesta. Pregunta 1 de la hoja 3.', 'La confianza es mÃ¡s manifiesta en los cursos de b'),
(49, 49, 'Los educadores sienten que entre ellos hay respeto y confianza', ' ', NULL, 'Encuesta y anÃ¡lisis realizado por la DDI a los educadores del Centro. Pregunta 3 de la Hoja 1.', 'El resultado dice que la mayorÃ­a de educadores si'),
(50, 50, 'Los educadores sienten confianza y respeto mutuo con sus estudiantes', ' ', NULL, 'La evidencia muestra el resultado de la encuesta realizada por la DDI. Pregunta 1 de la hoja 3.', 'Este indicador lo hemos calificado en base al crit'),
(51, 51, 'Los estudiantes valoran el centro como un espacio en donde se sienten seguros', ' ', NULL, 'A pesar que la mayorÃ­a opina que es un sitio seguro, no se tiene resultados de bÃ¡sica elemental e inicial. Pregunta bajo el cuadro en la hoja 4.', 'SegÃºn la encuesta realizada por la DirecciÃ³n de '),
(52, 52, 'Las estrategias del centro para la resolucion de conflictos resultan efectivas', ' ', NULL, 'Existe un proceso de resoluciÃ³n de conflictos pero solo entre pares.', 'El Colegio tiene un proceso de resoluciÃ³n de conf'),
(53, 53, 'Los estudiantes cuentan con espacios de participacion acorde a sus intereses', ' ', NULL, 'Encuesta realizada por la DirecciÃ³n de Desarrollo Institucional. Pregunta 1 de la hoja 5.', 'Las preguntas de la encuesta fueron puntuales y la'),
(54, 54, 'Los educadores participan activamente en las diversas actividades referidas al desarrollo y el fortalecimiento profesional', ' ', NULL, 'Se solicitÃ³ informaciÃ³n de capacitaciones a Talento Humano pero no hay evidencias.', 'Talento Humano envÃ­a detalle de capacitaciones pe'),
(55, 55, 'Las necesidades o requerimientos de los educadores son atendidas por los directivos del centro de manera sistematica y formal', ' ', NULL, 'Requerimientos tÃ©cnicos atendidos y con respuesta.', 'Se atienden los requerimientos pero de manera info'),
(56, 56, 'Las necesidades o requerimientos de los estudiantes son atendidas por los directivos del centro', ' ', NULL, 'FotografÃ­as, presentaciones entre otras que evidencian la atenciÃ³n de los directivos.', 'La atenciÃ³n a las necesidades o requerimientos de'),
(57, 57, 'Los educadores se sienten motivados con la tarea desarrollada', ' ', NULL, 'Resultados y anÃ¡lisis de la encuesta realizada por la DDI a los docentes. Pregunta 1 de la hoja 1.', 'La DDI realizÃ³ esta encuesta con los requerimient'),
(58, 58, 'Las familias se sienten comprometidas con la propuesta educativa del centro', ' ', NULL, 'Registros de asistencia de Padres de Familia a entrega de reportes acadÃ©micos y Trabajo Social.', 'Los registros de asistencia de los padres de Famil'),
(59, 59, 'Los estudiantes declaran identificarse con la mision del centro y sus valores', ' ', NULL, 'Resultados de la encuesta aplicada a estudiantes por el DDI. Pregunta bajo el cuadro en la hoja 7.', 'Los estudiantes afirman en su mayorÃ­a sentirse id'),
(60, 60, 'Los estudiantes estan contentos de pertenecer al centro y se reconocen como parte de su comunidad educativa', ' ', NULL, 'Actividades propias de los estudiantes que los identifican y les dan pertenencia.', 'Se ha tomado en cuenta las actividades que se real'),
(61, 61, 'Los educadores retroalimentan sistematicamente los esfuerzos y avances realizados por los estudiantes, durante el proceso de aprender', ' ', NULL, 'Proyectos de Asistencia PedagÃ³gica y RecuperaciÃ³n de estudiantes con problemas de rendimiento.', 'DirecciÃ³n AcadÃ©mica tiene planes y proyectos de '),
(62, 62, 'Los estudiantes se sienten valorados por sus educadores en sus capacidades para aprender', ' ', NULL, 'Encuesta realizada a los estudiantes por el DDI del Centro. Pregunta bajo el cuadro en la hoja 10.', 'En esta encuesta la mayorÃ­a de estudiantes se sie'),
(63, 63, 'Los educadores se sienten valorados profesionalmente por sus colegas', ' ', NULL, 'Encuesta realizada y analizada por el DDI del Centro. Pregunta 2 hoja 1.', 'En la encuesta responde que el 86% se sienten valo'),
(64, 64, 'Los educadores se sienten valorados profesionalmente por sus directivos', ' ', NULL, 'Encuesta realizada e interpretada por la DDI del Centro. Pregunta 4 de la hoja 1.', 'Se analizaron las capacitaciones que realiza Talen'),
(65, 65, 'Los educadores se sienten valorados por los estudiantes', ' ', NULL, 'Encuesta realizada y analizada por la DDI del Centro. Pregunta 1 pÃ¡gina 2.', 'La ComisiÃ³n resalta que es un tema que hay que se'),
(66, 66, 'Las familias tienen altas expectativas respecto a las capacidades de los estudiantes para aprender', ' ', NULL, 'Resultados encuesta a estudiantes realizada por la DDI del Centro. Hojas 8 y 9.', 'Los estudiantes en las respuestas de esta encuesta'),
(67, 67, 'Las familias y el centro colaboran conjunta y sistematicamente para acompaniar el aprendizaje integral de cada estudiante', ' ', NULL, '1.CITAS A PADRES DE FAMILIA 2.DINAPEN CHARLA A ppff lu 31 mar 1 abril 2014 3.EstadÃ­sticos encuesta PPFF 4.HOJA DE ACOMPAÃ‘AMIENTO PSICOLÃ“GICO 5.PROYECTO ACOMPAÃ‘AMIENTO 6.PROYECTO FAS COLEGIO SAN GABRIEL 7.REGISTRO DE ENTREVISTAS 8.Resultados de la encuesta a PPFF 9.asistencia de PPFF al FAS', 'falta registro de asistencia de FAS a reuniones'),
(68, 68, 'Las opiniones y demandas de las familias, referidas a logros y dificultades de aprendizaje de sus hijos e hijas son atendidas por los educadores', ' ', NULL, '-Resultados de la encuesta a PPFF 1.EstadÃ­sticos encuesta PPFF 2.CITAS A PADRES DE FAMILIA 3.HOJA DE ACOMPAÃ‘AMIENTO PSICOLÃ“GICO 4.REGISTRO DE ENTREVISTAS', '-Formularios de dirigentes-DCE(reposan en departam'),
(69, 69, 'Las familias se sienten satisfechas con la implicacion que tienen en los espacios de participacion que les son propios', ' ', NULL, '1.dinapen ppff lu 31 mar 1 abril 2014 2.eventos deportivos del colegio 3.FIRMAS ASISTENCIA ENCUENTRO DE CRECIMIENTO FAMILIAR CSG 4.INFORME ENCUENTRO FAMILIAS TBG 5.PARTICIPACION PADRES DE FAMILIA EN CAMPEONATO DEPORTIVO 6.PresentaciÃ³n extracurriculares 7.PROYECTO ACOMPAÃ‘AMIENTO 8.USO DE ESPACIOS 9.Resultados de la encuesta a PPFF 10.EstadÃ­sticos encuesta PPFF 11.CITAS A PADRES DE FAMILIA 12.HOJA DE ACOMPAÃ‘AMIENTO PSICOLÃ“GICO', 'Se ha colocado nueva informaciÃ³n.'),
(70, 70, 'Las familias participan en las diversas actividades que promueve el centro, tanto pedagogicas, pastorales como sociales', ' ', NULL, '1.eventos deportivos del colegio 2.FIRMAS ASISTENCIA ENCUENTRO DE CRECIMIENTO FAMILIAR CSG 3.INFORME ENCUENTRO FAMILIAS TBG. 4.PARTICIPACION PADRES DE FAMILIA EN CAMPEONATO DEPORTIVO 5.PARTICIPACION PADRES DE FAMILIA EN CAMPEONATO DEPORTIVO LISTAS 6.PresentaciÃ³n extracurriculares 7.PROYECTO ACOMPAÃ‘AMIENTO ..[1] 8.USO DE ESPACIOS 9.Talleres a padres de familia-listas 10.Feria de universidades 11.PLANIFICACIÃ“N DE TALLERES Y ESCUELA PARA PADRES 12. ENCUESTA 13. Asistencia de todos los ppff por parte del DCE', 'Se ha colocado nueva informaciÃ³n. -asistencia a p'),
(71, 71, 'El centro integra la realidad y caracteristicas economicas, sociales y culturales de las familias en su estrategia de trabajo con las familias', ' ', NULL, '-Becas DCE. -Encuesta -DocumentaciÃ³n de manual de tesorerÃ­a.', 'Se ha colocado nueva informaciÃ³n.'),
(72, 72, 'Las familias perciben que los educadores valoran su rol educador', ' ', NULL, '1.Encuesta a ppff 2.RESULTADOS DE ENCUESTA', 'Se ha colocado nueva informaciÃ³n.'),
(73, 73, 'Las familias reciben sistematicamente capacitacion y apoyo para orientar y estimular el aprendizaje de sus hijos e hijas y su desarrollo en las diversas dimensiones de la formacion integral', ' ', NULL, '1.Familia y pastoral. 2.Familia y acciÃ³n social. 3.Familia y AcompaÃ±amiento a estudiantes y Padres de Familia. 4.Encuesta a PPFF 5. CapacitaciÃ³n a estudiantes. 6.Resultados de la encuesta a PPFF 7.SEMINARIO DE VOCACIÃ“N PROFESIONAL UDLA 8.REGISTRO DE ENTREVISTAS 9.HOJA DE ACOMPAÃ‘AMIENTO PSICOLÃ“GICO 10.CITAS A PADRES DE FAMILIA 11.PLANIFICACIÃ“N DE TALLERES Y ESCUELA PARA PADRES 12.Talleres a padres de familia-listas 13.Feria de universidades 14.CertificaciÃ³n de capacitaciÃ³n a estudiantes 15.Historial psicolÃ³gico acumulativo 16.Convocatorias a padres de familia por parte del departamento de consejerÃ­a estudiantil', 'Se ha colocado nueva informaciÃ³n.'),
(74, 74, 'El centro apoya a las familias en la implementacion de diversas estrategias que estimulan el aprendizaje integral de sus hijos e hijas de acuerdo a su propuesta curricular', ' ', NULL, '1.Familia y pastoral. 2.Familia y acciÃ³n social. 3.Familia y AcompaÃ±amiento a estudiantes y Padres de Familia. 4.Encuesta a PPFF 5. CapacitaciÃ³n a estudiantes. 6.Resultados de la encuesta a PPFF 7.SEMINARIO DE VOCACIÃ“N PROFESIONAL UDLA 8.REGISTRO DE ENTREVISTAS 9.HOJA DE ACOMPAÃ‘AMIENTO PSICOLÃ“GICO 10.CITAS A PADRES DE FAMILIA 11.PLANIFICACIÃ“N DE TALLERES Y ESCUELA PARA PADRES 12.Talleres a padres de familia-listas 13.Feria de universidades 14.CertificaciÃ³n de capacitaciÃ³n a estudiantes 15.Historial psicolÃ³gico acumulativo 16.Convocatorias a padres de familia por parte del departamento de consejerÃ­a estudiantil 17. Multidisciplinarios y solicitudes de permisos a eventos.', 'Se ha colocado nueva informaciÃ³n.'),
(75, 75, 'Las familias sienten que son apoyadas sistematicamente a traves de las actividades ofrecidas por el centro, para orientar y estimular el aprendizaje integral de sus hijos e hijas', ' ', NULL, '1.Familia y pastoral. 2.Familia y acciÃ³n social. 3.Familia y AcompaÃ±amiento a estudiantes y Padres de Familia. 4.Encuesta a PPFF 5. CapacitaciÃ³n a estudiantes. 6.Resultados de la encuesta a PPFF 7.SEMINARIO DE VOCACIÃ“N PROFESIONAL UDLA 8.REGISTRO DE ENTREVISTAS 9.HOJA DE ACOMPAÃ‘AMIENTO PSICOLÃ“GICO 10.CITAS A PADRES DE FAMILIA 11.PLANIFICACIÃ“N DE TALLERES Y ESCUELA PARA PADRES 12.Talleres a padres de familia-listas 13.Feria de universidades 14.CertificaciÃ³n de capacitaciÃ³n a estudiantes 15.Historial psicolÃ³gico acumulativo 16.Convocatorias a padres de familia por parte del departamento de consejerÃ­a estudiantil 17.Proyecto Multidisciplinario Primero Bachillerato.', 'Se ha colocado nueva informaciÃ³n.'),
(76, 76, 'El centro utiliza sistematicamente los recursos de las organizaciones y servicios locales para enriquecer su propuesta educativa', ' ', NULL, '1.Dinapen y ppff 2.Uso de espacios locales como el Parque de la mujer para evacuaciÃ³n de estudiantes. 3. InvitaciÃ³n de eventos deportivos en locaciones locales por parte de organizaciones locales. 4.Convenio con el colegio Rumipamba 5.Permisos para los eventos de sexto curso.', 'Se ha colocado nueva informaciÃ³n.'),
(77, 77, 'El centro promueve experiencias de aprendizaje en servicio para sus estudiantes, en el espacio comunitario local', ' ', NULL, 'Se evidencia el uso de proyectos de aprendizaje y colaboraciÃ³n social. 1.Planes de evacuaciÃ³n y uso del parque de la mujer como sitio de alberge en caso de emergencia. 2.ParticipaciÃ³n estudiantil en eventos deportivos externos. 3.Proyecto FAS CSG 4.Feria de universidades. 5.Informe de feria de universidades. 6.InvitaciÃ³n a YACHAY 7.Proyecto Bolsa de valores del Ecuador. 8.Proyecto de Naciones Unidas.', 'Se ha colocado nueva informaciÃ³n.'),
(78, 78, 'Se promueve acciones y programas de apoyo y accion social en distintas organizaciones y entidades de la comunidad local, regional y/o nacional', ' ', NULL, '1.DescriciÃ³n del Proyecto FormaciÃ³n en acciÃ³n social del Colegio San gabriel. 2.Proyecto de acciÃ³n social en Pedernales-ManabÃ­ 3. Misiones y acciones de chicos y colaboracion social. 4. MULTIDICIPLINARIOS DE PRIMERO, documentos habilitantes de multidisciplinario y permisos.', 'Se esta buscando: DIRIGENCIAS(LOS DEMAS MULTIDISCI'),
(79, 79, 'El centro facilita el uso de sus recursos a diversas organizaciones y entidades de la comunidad local, para el desarrollo de actividades alineadas con su propuesta educativa', ' ', NULL, 'PRESTACION DE ESPACIOS DEL COLEGIO A LA COMUNIDAD 1.Uso de espacios para Fe y AlegrÃ­a 2.Uso de Teatro-Piscina-Polideportivo 3.Clubs extracurriculares 4.Campamentos con colegios de la Red 5.Convenio con Telconet 6.Encuentros con colegios de la Red', 'Se han colocado la mayoria de la evidencia generad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `ID_RESPUESTA` int(11) NOT NULL,
  `ID_PREGUNTA` int(11) DEFAULT NULL,
  `DESCRIPCIONRESPUESTA` text,
  `PONDERACION_RESPUESTA` int(11) NOT NULL,
  `id_indicador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`ID_RESPUESTA`, `ID_PREGUNTA`, `DESCRIPCIONRESPUESTA`, `PONDERACION_RESPUESTA`, `id_indicador`) VALUES
(1, 1, 'El proyecto curricular del centro no esta explicitado, o si existe no explicita los aprendizajes en ninguna area o grado escolar.', 0, 1),
(2, 1, 'El proyecto curricular explicita los aprendizajes solamente en las areas academicas (asignaturas) en todos o algunos grados escolares.', 4, 1),
(3, 1, 'El proyecto curricular explicita parcialmente los aprendizajes que se espera lograr en los estudiantes, ya sea porque refiere a algunos grados escolares, o bien porque refiere solo a algunas areas que dan cuenta de la informacion integral.', 8, 1),
(4, 1, 'El proyecto curricular explicita los aprendizajes y/o desempenos que los estudiantes deben lograr en cada grado escolar y en cada una de las areas del curriculum que aseguran la formacion integral', 12, 1),
(5, 2, 'El proyecto curricular del centro no describe los medios pedagogicos a traves de los cuales se pretende alcanzar los aprendizajes en las diferentes dimensiones de la persona (cognitiva, emocional, social, corporal y espiritual) segun las metas definidas o no hay evidencias de ello\r\n', 0, 2),
(6, 2, 'El proyecto curricular del centro describe parcialmente los medios pedagogicos a traves de los cuales se pretende alcanzar los aprendizajes en diferentes dimensiones de la persona (cognitiva, emocional, social, corporal y espiritual) segun las metas definidas', 6, 2),
(8, 2, 'El proyecto curricular del centro describe los medios pedagogicos a traves de los cuales se pretende alcanzar los aprendizajes en diferentes dimensiones de la persona (cognitiva, emocional, social, corporal y espiritual) segun las metas definidas', 12, 2),
(9, 3, 'El disenio del proyecto curricular del centro no considera las necesidades y caracteristicas especificas del contexto o no hay evidencias de ello', 0, 3),
(10, 3, 'El disenio del proyecto curricular del centro considera parcialmente las necesidades y caracteristicas especificas del contexto', 6, 3),
(11, 3, 'El disenio del proyecto curricular del centro considera las necesidades y caracteristicas especificas del contexto', 12, 3),
(12, 4, 'El proyecto curricular del centro no incluye un sistema de evaluacion coherente con los aprendizajes propuestos o no hay evidencia de ello', 0, 4),
(13, 4, 'El proyecto curricular del centro incluye un sistema de ecaluacion que solo refiere a apredizajes de algunas de las areas academicas', 4, 4),
(14, 4, 'El proyecto curricular del centro incluye parcialmente un sistema de evaluacion coherente con los aprendizajes propuestos ya sea porque no refiere a todas las areas del curriculum o bien porque en su cobertura no considera todas las secciones, niveles o grados escolares', 8, 4),
(15, 4, 'El proyecto curricular del centro incluye un sistema de evaluacion coherente con los aprendizajes propuestos para todas las secciones, niveles o grados escolares y para todas las areas que refiere su proyecto curricular', 12, 4),
(16, 5, 'Las actividades curriculares no son planificadas considerando los planteamientos institucionales del centro en coherencia con el PPI', 0, 5),
(17, 5, 'Las actividades curriculares son planificadas considerando parcialmente los planteamientos institucionales del centro en coherencia con el PPI', 6, 5),
(20, 5, 'Las actividades curriculares son planificadas considerando los planteamientos institucionales del centro en coherencia con el PPI', 12, 5),
(21, 6, 'Los educadores no analizan en sus respectivos equipos la dinamica y efectos de la practica pedagogica, teniendo como referencia los resultados de los estudiantes en las diferentes experiencias formativas (academicas, pastorales y otras) o no hay evidencia de ello', 0, 6),
(22, 6, 'Algunos educadores analizan en sus respectivos equipos la dinamica y efectos de la practica pedagogica teniendo como referencia los resultados de los estudiantes en las diferentes experiencias formativas (academicas, pastorales y otras) en coherencia con los rasgos propios de un centro educativo asociado a la Compania de Jesus', 4, 6),
(23, 6, 'La mayoria de los educadores analizan en sus respectivos equipos la dinamica y efectos de la practica pedagogica teniendo como referencia los resultados de los estudiantes en las diferentes experiencias formativas (academicas, pastoral y otras) y en coherencia con los rasgos propios de un centro educativo asociado a la Compania de Jesus', 8, 6),
(24, 6, 'Todos los educadores analizan en sus respectivos equipos la dinamica y efectos de la practica pedagogica teniendo como referencia los resultados de los estudiantes en las diferentes experiencias formativas (academicas, pastoral y otras) y en coherencia con los rasgos propios de un centro educativo asociado a la Compania de Jesus', 12, 6),
(25, 7, 'Las clases y las diversas actividades de ensenianza no se desarrollan en coherencia con las planificaciones o no hay evidencia de ello', 0, 7),
(26, 7, 'Las clases y las diversas actividades de ensenianza se desarrollan parcialmente en coherencia con las planificaciones', 6, 7),
(27, 7, 'Las clases y las diversas actividades de ensenianza se desarrollan en coherencia con las planificaciones', 12, 7),
(28, 8, 'Los educadores no demuestran dominio de los conocimientos que ensenian ni de su didactica o no hay evidencia de ello', 0, 8),
(29, 8, 'Algunos educadores demuestran dominio de los conocimientos que ensenian y de su didactica', 4, 8),
(30, 8, 'La mayoria de los educadores demuestra dominio de los conocimientos que ensenian y de su didactica', 8, 8),
(31, 8, 'Todos los educadores demiestran dominio de los conocimeintos que ensenian y de su didactica', 12, 8),
(32, 9, 'Los educadores no asumen la diversidad de sus estudiantes, utilizando recursos y estrategias diferenciadas o no hay evidencia de ello', 0, 9),
(33, 9, 'Algunos educadores asumen la diversidad de sus estudiantes, utilizando recursos y estrategias diferenciadas ', 4, 9),
(34, 9, 'La mayoria de los educadores asume la diversidad de sus estudiantes, utilizando recursos y estrategias diferenciadas', 8, 9),
(35, 9, 'Todos los educadores asumen la diversidad de sus estudiantes, utilizando recursos y estrategias diferenciadas', 12, 9),
(36, 10, 'Los educadores no utilizan recursos didacticos que favorecen el aprendizaje integral de todos los estudiantes', 0, 10),
(37, 10, 'Algunos educadores utilizan recursos didacticos que favorecen el aprendizaje integral de todos los estudiantes', 4, 10),
(38, 10, 'La mayoria de los educadores utilizan recursos didacticos que facorecen el aprendizaje integral de todos los estudiantes', 8, 10),
(39, 10, 'Todos los educadores utilizan recursos didacticos diferenciados y diversos que favorecen el aprendizaje integral de todos los estudiantes', 12, 10),
(40, 11, 'Los educadores no aplican estrategias didacticas coherentes con el Paradigma Pedagogico Ignaciano', 0, 11),
(41, 11, 'Algunos educadores aplican estrategias didacticas coherentes con el Paradigma Pedagogico Ignaciano', 4, 11),
(42, 11, 'La mayoria de los educadores aplican estrategias didacticas coherentes con el Paradigma Pedagogico Ignaciano', 8, 11),
(43, 11, 'Todos los educadores aplican estrategias didacticas coherentes con el Paradigma Pedagogico Ignaciano', 12, 11),
(44, 12, 'Los educadores no son companiados y retroalimentados en su practica pedagogica, en funcion del logro de los aprendizajes buscados o no hay evidencia de ello', 0, 12),
(45, 12, 'Algunos educadores son acompaniados y retroalimentados en su practica pedagogica, en funcion del logro de los aprendizajes que se declaran en el Proyecto Curricular del Centro', 4, 12),
(46, 12, 'La mayoria de los educadores son acompaniados y retroalimentados en su practica pedagogica, en funcion del logro de los aprendizajes que se declaran en el Proyecto Curricular del Centro', 8, 12),
(47, 12, 'Todos los educadores son acompaniados y retroalimentados en su practica pedagogica, en funcion del logro del los aprendizajes que se declaran en el Proyecto Curricular del Centro', 12, 12),
(48, 13, 'Los estudiantes no reciben acompaniamiento personal en su proceso formativo o no hay evidencia de ello', 0, 13),
(49, 13, 'Algunos estudiantes reciben acompaniamiento personal y espiritual en su proceso formativo, conforme a su edad y caracteristicas individuales', 4, 13),
(50, 13, 'La mayoria de los estudiantes reciben acompaniamiento personal y espiritual en su proceso formativo, conforme a su edad y caracteristicas individuales', 8, 13),
(51, 13, 'Todos los estudiantes reciben acompaniamiento personal y espiritual en su proceso formativo, conforme a su edad y caracteristicas individuales', 12, 13),
(52, 14, 'Los estudiantes que mas lo requieren, no son apoyados en su aprendizaje integral o no hay evidencia de ello', 0, 14),
(53, 14, 'Algunos de los estudiantes que mas lo requieren, son apoyados en su aprendizaje integral', 4, 14),
(54, 14, 'La mayoria de los estudiantes que mas lo requieren, son apoyados en su aprendizaje integral', 8, 14),
(55, 14, 'Todos los estudiantes que mas lo requieren, son apoyados en su aprendizaje integral', 12, 14),
(56, 15, 'El centro no desarrolla estrategias pedagogicas pertinentes a la diversidad y heterogeneidad de sus estudiantes, de manera que todos alcancen los aprendizajes esperados o no existe evidencia de ello', 0, 15),
(57, 15, 'El centro desarrolla estrategias pedagogicas orientadas a la diversidad y heterogeneidad de sus estudiantes', 6, 15),
(58, 15, 'El centro desarrolla estrategias pedagogicas pertinentes a la diversidad y heterogeneidad de sus estudiantes, de manera que todos alcancen los aprendizajes esperados', 12, 15),
(59, 16, 'Los estudiantes no valoran positivamente la calidad del acompaniamiento que reciben o no hay evidencia de ello', 0, 16),
(60, 16, 'Algunos de los estudiantes valoran positivamente la calidad del acompaniamiento que reciben', 4, 16),
(61, 16, 'La mayoria de los estudiantes valoran positivamente la calidad del acompaniamiento que reciben', 8, 16),
(62, 16, 'Todos los estudiantes valoran positivamente la calidad del acompaniamiento que reciben', 12, 16),
(63, 17, 'Las familias no valoran positivamente la calidad del acompaniamiento que reciben los estudiantes o no hay evidencia de ello', 0, 17),
(64, 17, 'Algunas familias valoran positivamente la calidad del acompaniamiento que reciben los estudiantes', 4, 17),
(65, 17, 'La mayoria de las familias valoran positivamente la calidad del acompaniamiento que reciben los estudiantes', 8, 17),
(66, 17, 'Todas familias valoran positivamente la calidad del acompaniamiento que reciben los estudiantes', 12, 17),
(67, 18, 'No existe en el centro equipos de asesoramiento educativo, sicologico, sicopedagogico y espiritual', 0, 18),
(68, 18, 'El centro cuenta con estrategias de orientacion pero no cuenta con equipo de asesoramiento educativo, sicologico, sicopedagogico y espiritual', 6, 18),
(69, 18, 'El centro cuenta con estrategias de orientacion y equipo de asesoramiento educativo, sicologico, sicopedagogico y espiritual', 12, 18),
(70, 19, 'Los aprendizajes obtenidos no facilitan a los estudiantes a un buen desempenio en el siguiente nivel educativo o no hay evidencia de ello', 0, 19),
(71, 19, 'Los aprendizajes obtenidos facilitan a algunos estudiantes a tener un buen desempenio en el siguiente nivel educativo', 4, 19),
(72, 19, 'Los aprendizajes obtenidos facilitan a la mayoria de los estudiantes a tener un buen desempenio en el siguiente nivel educativo', 8, 19),
(73, 19, 'Los aprendizajes obtenidos facilitan a todos los estudiantes a tener un buen desempenio en el siguiente nivel educativo', 12, 19),
(74, 20, 'Los resultados del centro educativo no se reconocen dentro de los mas altos, comparandolos con centros de similares caracteristicas diferenciadas o no hay evidencia de ello', 0, 20),
(75, 20, 'Algunos de los resultados del centro educativo se reconocen dentro de los mas altos, comparandolos con centros de similares caracteristicas', 4, 20),
(76, 20, 'La mayoria de los resultados del centro educativo se reconocen dentro de los mas altos, comparandolos con centros de similares caracteristicaas', 8, 20),
(77, 20, 'Todos los resultados del centro educativo se reconocen dentro de los mas altos, comparandolos con centros de similares caracteristicas', 12, 20),
(78, 21, 'El centro redisenia sus procesos pedagogicos y pastorales, sin considerar la valoracion y participacion de os estudiantes o los factores asociados a los resultados de los aprendizajes o no hay evidencia de ello', 0, 21),
(79, 21, 'El centro redisenia sus procesos pedagogicos y pastorales, considerando parcialmente la valoracion y particiapacion de los estudiantes y los factores asociados a los resultados de los aprendizajes', 6, 21),
(80, 21, 'El centro redisenia sus procesos pedagogicos y pastorales, considerando la valoracion y participacion de los estudiantes y los factores asociados a los resultados de los aprendizajes', 12, 21),
(81, 22, 'La informacion referida a los resultados de los aprendizajes de los estudiantes no es compartida ni dada a conocer a los propios estudiantes y sus familias o no hay evidencia de ello', 0, 22),
(82, 22, 'La informacion referida a los resultados de los apredizajes de los estudiantes es compartida y dada a conocer ocasionalmente a los propios estudiantes y sus familias', 6, 22),
(83, 22, 'La informacion referida a los resultados de los aprendizajes de los estudiantes es compartida y dada a conocer sistematicamente a los propios estudiantes y sus familias', 12, 22),
(84, 23, 'No existe planificacion institucional explicitada en el centro', 0, 23),
(85, 23, 'La planificacion insitucional en el corto y mediano plazo, no da cuenta de la mision y vision de un centro asociado a la Compania de Jesus, ni se desagrega en acciones estrategicas', 4, 23),
(86, 23, 'La planificacion institucional si bien da cuenta de los lineamientos propios de un centro asociado a la Compania de Jesus, no se desagrega en acciones estrategicas de corto y mediano plazo', 8, 23),
(87, 23, 'La planificacion institucional en el corto y mediano plazo, da cuenta de acciones estrategicas que se desprenden de la mision y vision que inspira a los centros asociados a la Compania de Jesus', 12, 23),
(88, 24, 'La mision y la planificacion estrategica no son actualizadas periodicamente o no hay evidencias', 0, 24),
(89, 24, 'La mision se actualiza periodicamente, no asi la planificacion estrategica, o bien la planificacion estrategica se actualiza periodicamente, no asi la mision', 6, 24),
(90, 24, 'La mision y la planificacion estrategica son actualizadas periodicamente', 12, 24),
(91, 25, 'Las desiciones del centro no se toman considerando la mision ni la planificacion estrategica o no hay evidencias', 0, 25),
(92, 25, 'Las desiciones del centro se toman considerando la mision, pero no asi la planificacion estrategica, o bien las decisiones del centro se toman considerando la planificacion estrategica, pero no asi la mision', 6, 25),
(93, 25, 'Las decisiones del centro se toman considerando la mision y la planificacion estrategica', 12, 25),
(94, 26, 'No se asignan los recursos necesarios para la ejecucion de las acciones de la planificacion estrategica o no hay evidencias', 0, 26),
(95, 26, 'Se asignan los recursos necesarios para la ejecucion de algunas de las acciones de la planificacion estrategica', 6, 26),
(96, 26, 'Se asignan los recursos necesarios para la ejecucion de las acciones de la planificacion estrategica', 12, 26),
(97, 27, 'El equipo Directivo no tiene roles, funciones y responsabilidades definidos en su estructura interna o no hay evidencias', 0, 27),
(98, 27, 'El equipo Directivo tiene roles, funciones y responsabilidades sin embargo no estan o estan solo parcialmente definidas', 6, 27),
(99, 27, 'El equipo Directivo tiene explicitada su estructura interna contemplando roles, funciones y responsabilidades', 12, 27),
(100, 28, 'Los equipos no tienen roles, funiones y responsabilidades definidas y sistematizadas en su estructura interna, o no hay evidencias', 0, 28),
(101, 28, 'Los equipos tienen roles, funciones y responsabilidades aunque no estan definidos ni sistematizados en su estructura interna', 6, 28),
(102, 28, 'Los equipos tienen roles, funciones y responsabilidades definidas y sistematizadas en su estructura interna', 12, 28),
(103, 29, 'El equipo Directivo no tiene planes de trabajo ni espacios de coordinacion o no hay evidencias', 0, 29),
(104, 29, 'El Equipo Directivo no tiene planes de trabajo pero cuenta con espacios de coordinacion o bien el Equipo Directivo tiene planes de trabajo y no cuenta con espacios de coordinacion ', 6, 29),
(105, 29, 'El Equipo Directivo tiene planes de trabajo y cuenta con espacios de coordinacion', 12, 29),
(106, 30, 'Los equipos no tienen planes de trabajo y no tienen espacios de coordinacion o no hay evidencias', 0, 30),
(107, 30, 'Los equipos no tienen planes de trabajo y cuentan con espacios de coordinacion, o bien, los equipos tienen planes de trabajo y no cuentan con espacios de coordinacion', 6, 30),
(108, 30, 'Los equipos tienen planes de trabajo y cuentan con espacios de coordinacion', 12, 30),
(109, 31, 'La gestion de cada uno de los integrantes del Equipo Directivo no es evaluada periodicamente o no hay evidencias', 0, 31),
(110, 31, 'Solamente la gestion de algunos integrantes del Equipo Directivo es evaluada periodicamente', 6, 31),
(111, 31, 'La gestion de cada uno de los integrantes del Equipo Directivo es evaluada periodicamente', 12, 31),
(112, 32, 'La gestion de los equipos de trabajo como de sus responsables no es evaluada periodicamente o no hay evidencias', 0, 32),
(113, 32, 'La gestion de los equipos de trabajo es evaluada periodicamente y no la de sus responsables', 6, 32),
(114, 32, 'La gestion de los equipos de trabajo como de sus representates es evaluada periodicamente', 12, 32),
(115, 33, 'No se cuenta con un area o rol que vela por la actualizacion anual del organigrama, las funciones, las descripciones de perfiles y competencias del cargo', 0, 33),
(116, 33, 'Se cuenta con un area o rol que vela por la actualizacion del organigrama, las funciones, las descripciones de perfiles y competencias del cargo, pero no anualmente', 6, 33),
(117, 33, 'Se cuenta con un area o rol que vela por la actualizacion anual del organigrama, las funciones, las descripciones de perfiles y competencias del cargo', 12, 33),
(118, 34, 'Las personas no son seleccionadas en referencia a un perfil de competencias', 0, 34),
(119, 34, 'Las personas son seleccionadas en referencia a un perfil de competencias aunque no a traves de un procedimiento conocido por quienes trabajan en el centro', 6, 34),
(120, 34, 'Las personas son seleccionadas en referencia a un perfil de competencias a traves de un procedimiento conocido por quienes trabajan en el centro', 12, 34),
(121, 35, 'No se evalua el desempenio de las personas', 0, 35),
(122, 35, 'La evaluacion del desempenio de las personas se realiza en forma periodica sin un perfil de competencias asociado. O bien, existiendo una evaluacion asociada a un perfil de desempenio, esta no se lleva a cabo de manera periodica', 6, 35),
(123, 35, 'La evaluacion del desempenio de las personas se realiza en forma periodica, a partir de un perfil de competencias', 12, 35),
(124, 36, 'No hay resultados de las evaluaciones', 0, 36),
(125, 36, 'Hay resultados de evaluaciones pero no existe un plan de mejora para el desempenio de las personas', 6, 36),
(126, 36, 'Los resultados de las evaluaciones son utilizados para gestionar la mejora del desempenio de las personas', 12, 36),
(127, 37, 'No existen procesos de formacion continua de las personas', 0, 37),
(128, 37, 'Los procesos de formacion no son llevados a cabo de manera sistematica o bien no reportan el logro de las competencias propias del desempenio esperado', 4, 37),
(129, 37, 'Existen procesos de formacion continua y sistematicos, pero estos no contribuyen o no existen evidencia cierta que colaboren con el fortalecimiento y desarrollo de sus competencias', 8, 37),
(130, 37, 'La formacion continua de las personas se desarrolla de manera sistematica contribuyendo al fortalecimiento y desarrollo de sus competencias impactando positivamente en sus desempenios', 12, 37),
(131, 38, 'No existen procesos de formacion continua de las personas', 0, 38),
(132, 38, 'La formacion continua de las personas si bien otorga oportunidades de crecimiento personal y espiritual, se encuentra reducida solo a un estamento o grupo de personas o bien, no explicita en aquellos asuntos que refuerzan el sentido e identidad que son propios a un centro educativo asociado a la Compania de Jesus', 6, 38),
(133, 38, 'La formacion continua de las personas otorga oportunidades de crecimiento personal y espiritual, que refuerzan el sentido e identidad que son propios a un centro educativo asociado a la Compania de Jesus', 12, 38),
(134, 39, 'El centro no cuenta con un sistema de incentivos', 0, 39),
(135, 39, 'El centro cuenta con un sistema de incentivos pero no impacta en el desempenio de las personas', 6, 39),
(136, 39, 'El sistema de incentivos mejora el desempenio de las personas', 12, 39),
(137, 40, 'No hay organizacion ni desarrollo de la infraestructura y el equipamiento institucional', 0, 40),
(138, 40, 'Hay organizacion y desarrollo de la infraestructura y el equipamiento pero no prioriza las necesidades en coherencia con la propuesta de formacion integral, que se espera de un centro asociado a la Compania de Jesus', 6, 40),
(139, 40, 'La organizacion y desarrollo de la infraestructura y el equipamiento institucional, prioriza las necesidades en coherencia con la propuesta de formacion integral, que se espera de un centro asociado a la Compania de Jesus', 12, 40),
(140, 41, 'La infraestructura y/o equipamiento no se encuentran adaptadas a las diversas necesidades pedagogicas de sus estudiantes ', 0, 41),
(141, 41, 'La infraestructura y equipamiento se encuentran parcialmente adaptadas a las diversas necesidades pedagogicas de sus estudiantes', 6, 41),
(142, 41, 'La infraestructura y equipamiento se encuentran adaptadas a las diversas necesidades pedagogicas de sus estudiantes', 12, 41),
(143, 42, 'Los diferentes usuarios no muestran satisfaccion respecto a la infraestructura ni a la organizacion de los espacios en el centro', 0, 42),
(144, 42, 'Algunos usuarios muestran satisfaccion respecto a la infraestructura y a la organizacion de los espacios en el centro', 4, 42),
(145, 42, 'La mayoria de los diferentes usuarios muestran satisfaccion respecto a la infraestructura y a la organizacion de los espacios en el centro', 8, 42),
(146, 42, 'Todos los diferentes usuarios muestran satisfaccion respecto a la infraestructura y a la organizacion de los espacios en el centro', 12, 42),
(147, 43, 'El centro no dispone de un presupuesto anual o bien no es coherente con los planteamientos estrategicos y/o las necesidades de formacion integral, que se espera de un centro asociado a la Compania de Jesus', 0, 43),
(148, 43, 'El centro organiza su presupuesto anual parcialmente en coherenecia con los planteamientos estrategicos y las necesidades de formacion integral, que se espera de un centro asociado a la Compania de Jesus', 6, 43),
(149, 43, 'El centro organiza su presupuesto anual en coherencia con los planteamientos estrategicos y las necesidades de formacion integral, que se espera de un centro asociado a la Compania de Jesus', 12, 43),
(150, 44, 'Los miembros de la comunidad educativa no aportan informacion y/o no conocen -de acuerdo a sus niveles de responsabilidad- los criterios que organizan tanto el presupuesto del centro como su ejecucion', 0, 44),
(151, 44, 'Los miembros de la comunidad educativa aportan informacion -de acuerdo a sus niveles de responsabilidad- para los criterios que organizan tanto el presupuesto del centro como su ejecucion o bien los miembros de la comunidad conocen -de acuerdo a sus niveles de responsabilidad- los criterios que organizan tanto el presupuesto del centro como su ejecucion', 6, 44),
(152, 44, 'Los miembros de la comunidad educativa aportan informacion y conocen -de acuerdo a sus niveles de responsabilidad- los criterios que organizan tanto el presupuesto del centro como su ejecucion', 12, 44),
(153, 45, 'En el centro no se registran evidencias de los resultados financieros', 0, 45),
(154, 45, 'Los gastos del centro son solventados adecuadamente por los resultados financieros', 4, 45),
(155, 45, 'La sustentabilidad a mediano plazo del centro esta garantizada por los resultados financieros alcanzados', 8, 45),
(156, 45, 'La sustentabilidad a largo plazo del centro, esta garantizada por los resultados financieros alcanzados', 12, 45),
(157, 46, 'No existe evidencia de mecanismos de discriminacion positiva y compensatoria para la integracion de estudiantes de diferentes condiciones socioeconomicas', 0, 46),
(158, 46, 'El centro educativo en el marco de sus presupuestos, tiene definida la asignacion de recursos y los mecanismos para asegurar la permanencia de estudiantes de distintas condiciones socioeconomicas', 4, 46),
(159, 46, 'Los mecanismos para asegurar la permanencia de estudiantes de distintas condiciones socioeconomicas son conocidas por los interesados', 8, 46),
(160, 46, 'Al centro se integran y permanecen estudiantes de diferentes condiciones socioeconomicas', 12, 46),
(161, 47, 'Los estudiantes no sienten que entre ellos haya respeto y confianza o no hay evidencia de ello', 0, 47),
(162, 47, 'Algunos estudiantes sienten que entre ellos hay respeto y confianza', 4, 47),
(163, 47, 'La mayoria de los estudiantes sienten que entre ellos hay respeto y confianza', 8, 47),
(164, 47, 'Todos los estudiantes sienten que entre ellos hay respeto y confianza', 12, 47),
(165, 48, 'Los estudiantes no sienten que haya confianza y respeto mutuo con sus educadores o no hay evidencias de ello', 0, 48),
(166, 48, 'Algunos estudiantes sienten que hay confianza y respeto mutuo con sus educadores', 4, 48),
(167, 48, 'La mayoria de los estudiantees sienten que hay confianza y respeto mutuo con sus educadores', 8, 48),
(168, 48, 'Todos los estudiantes sienten que hay confianza y respeto mutuo con sus educadores', 12, 48),
(169, 49, 'Los educadores no sienten que entre ellos haya respeto y confianza o no hay evidencias de ello', 0, 49),
(170, 49, 'Algunos educadores sienten que entre ellos hay respeto y confianza', 4, 49),
(171, 49, 'La mayoria de los educadores sienten que entre ellos hay respeto y confianza', 8, 49),
(172, 49, 'Todos educadores sienten que entre ellos hay respeto y confianza', 12, 49),
(173, 50, 'Los educadores no sienten que haya confianza y respeto mutuo con sus estudiantes o no hay evidencias de ello', 0, 50),
(174, 50, 'Algunos educadores sienten que hay confianza y respeto mutuo con sus estudiantes', 4, 50),
(175, 50, 'La mayoria de los educadores sienten que hay confianza y respeto mutuo con sus estudiantes', 8, 50),
(176, 50, 'Todos los educadores sienten que hay confianza y respeto mutuo con sus estudiantes', 12, 50),
(177, 51, 'Los estudiantes no valoran el centro como un espacio en donde se sienten seguros o no hay evidencia de ello', 0, 51),
(178, 51, 'Algunos estudiantes valoran el centro como un espacio en donde se sienten seguros', 6, 51),
(179, 51, 'La mayoria o todos los estudiantes valoran el centro como un espacio en donde se sienten seguros', 12, 51),
(180, 52, 'El centro no tiene diseniadas estrategias para la resolucion de conflictos o bien no tiene evidencias respecto a su efectividad', 0, 52),
(181, 52, 'El centro tiene diseniadas estrategias para la resolucion de conflictos, pero no existe evidencias de la efectividad de estas estrategias', 6, 52),
(182, 52, 'Las estrategias del centro para la resolucion de conflictos resultan efectivas', 12, 52),
(183, 53, 'Los estudiantes no cuentan con espacios de participacion o no hay evidencias de ello', 0, 53),
(184, 53, 'Los espacios de participacion que tienen los estudiantes, no son acordes a los intereses de los estudiantes', 6, 53),
(185, 53, 'Los estudiantes cuentan con espacios de participacion acorde a sus intereses', 12, 53),
(186, 54, 'Los educadores no participan activamente en las diversas actividades referidas al desarrollo y el fortalecimiento profesional', 0, 54),
(187, 54, 'Algunos educadores participan activamente en las diversas actividades referidas al desarrollo y el fortalecimiento profesional', 4, 54),
(188, 54, 'La mayoria de los educadores participan activamente en las diversas actividades referidas al desarrollo y el fortalecimiento profesional', 8, 54),
(189, 54, 'Todos los educadores participan activamente en las diversas actividades referidas al desarrollo y el fortalecimiento profesional', 12, 54),
(190, 55, 'Los directivos no dan respuesta a las necesidades o requerimientos de los educadores o no hay evidencia de ello', 0, 55),
(191, 55, 'Los directivos dan respuesta a las necesidades o requerimientos de los educadores de manera informal o asistematicamente ', 6, 55),
(192, 55, 'Las necesidades o requerimientos de los educadores son atendidas por los directivos del centro de manera sistematica y formal', 12, 55),
(193, 56, 'Los directivos no dan respuesta a las necesidades o requerimientos de los estudiantes o no hay evidencias de ello', 0, 56),
(194, 56, 'Los directivos dan respuesta a las necesidades o requerimientos de los estudiantes de manera informal o asistematicamente', 6, 56),
(195, 56, 'Las necesidades o requerimientos de los estudiantes son atendidas por los directivos del centro de manera sistematica y formal', 12, 56),
(196, 57, 'Los educadores no se sienten motivados con la tarea desarrollada o no hay evidencias de ello', 0, 57),
(197, 57, 'Algunos educadores se sienten motivados con la tarea desarrollada', 4, 57),
(198, 57, 'La mayoria de los educadores se sienten motivados con la tarea desarrollada', 8, 57),
(199, 57, 'Todos los educadores se sienten motivados con la tarea desarrollada', 12, 57),
(200, 58, 'Las familias no se sienten comprometidas con la propuesta educativa del centro o no hay evidencias de ello', 0, 58),
(201, 58, 'Algunas familias se sienten comprometidas con la propuesta educativa del centro', 4, 58),
(202, 58, 'La mayoria de las familias se sienten comprometidas con la propuesta educativa del centro', 8, 58),
(203, 58, 'Todas las familias se sienten comprometidas con la propuesta educativa del centro', 12, 58),
(204, 59, 'Los estudiantes no declaran estar identificados con la mision del centro y sus valores. O bien no hay evidencias de ello', 0, 59),
(205, 59, 'Algunos estudiantes declaran estar identificados con la mision del centro y sus valores', 4, 59),
(206, 59, 'La mayoria de los estudiantes declaran estar identificados con la mision del centro y sus valores', 8, 59),
(207, 59, 'Todos los estudiantes declaran estar identificados con la mision del centro y sus valores', 12, 59),
(208, 60, 'Los estudiantes no estan contentos de pertenecer al centro y no se reconocen como parte de su comunidad o no hay evidencias de ello', 0, 60),
(209, 60, 'Algunos estudiantes estan contentos de pertenecer al centro y se reconocen como parte de su comunidad', 4, 60),
(210, 60, 'La mayoria de los estudiantes estan contentos de pertenecer al centro y se reconocen como parte de su comunidad educativa', 8, 60),
(211, 60, 'Todos los estudiantes estan contentos de pertenecer al centro y se reconocen como parte de su comunidad educativa', 12, 60),
(212, 61, 'Los educadores no retroalimentan el aprendizaje o no existe evidencia de ello', 0, 61),
(213, 61, 'Algunos educadores retroalimentan el aprendizaje o bien esto no se hace de manera sistematica o habitual', 4, 61),
(214, 61, 'La mayoria de los educadores retroalimentan sistematicamente los esfuerzos y avances realizados por los estudiantes, durante el proceso de aprender', 8, 61),
(215, 61, 'Todos los educadores retroalimentan sistematicamente los esfuerzos y avances realizados por los estudiantes, durante el proceso de aprender', 12, 61),
(216, 62, 'Los estudiantes no se sienten valorados por sus educadores en sus capacidades para aprender', 0, 62),
(217, 62, 'Algunos estudiantes se sienten valorados por sus educadores en sus capacidades de aprender', 4, 62),
(218, 62, 'La mayoria de los estudiantes se sienten valorados por sus educadores en sus capacidades para aprender', 8, 62),
(219, 62, 'Todos los estudiantes se sienten valorados por sus educadores en sus capacidades para aprender', 12, 62),
(220, 63, 'Los educadores no se sienten valorados profesionalmente por sus colegas o no hay evidencia de ello', 0, 63),
(221, 63, 'Algunos de los educadores se sienten valorados profesionalmente por sus colegas', 4, 63),
(222, 63, 'La mayoria de los educadores se sienten valorados profesionalmente por sus colegas', 8, 63),
(223, 63, 'Los educadores se sienten valorados profesionalmente por sus colegas', 12, 63),
(224, 64, 'Los educadores no se sienten valorados profesionalmente por sus directivos', 0, 64),
(225, 64, 'La mayoria de los educadores no se sienten valorados profesionalmente por sus directivos', 6, 64),
(226, 64, 'Los educadores se sienten valorados profesionalmente por sus directivos', 12, 64),
(227, 65, 'Los educadores no se sienten valorados por los estudiantes', 0, 65),
(228, 65, 'La mayoria de los educadores se sienten valorados por los estudiantes', 6, 65),
(229, 65, 'Los educadores se sienten valorados por los estudiantes', 12, 65),
(230, 66, 'Las familias no tienen altas expectativas respecto a las capacidades de los estudiantes para aprender o no hay evidencias de ello', 0, 66),
(231, 66, 'Algunas familias tienen altas expectativas respecto a las capacidades de los estudiantes para aprender', 4, 66),
(232, 66, 'La mayoria de las familias tienen altas expectativas respecto a las capacidades de los estudiantes para aprender', 8, 66),
(233, 66, 'Todas las familias tienen altas expectativas respecto a las capacidades de los estudiantes para aprender', 12, 66),
(234, 67, 'Las familias y el centro no colaboran conjunta y sistematicamente para acompaniar el aprendizaje integral de cada estudiante o no hay evidencias de ello', 0, 67),
(235, 67, 'Las familias y el centro colaboran conjunta y sistemanticamente para acompaniar el aprendizaje integral aunque no de todos los estudiantes', 6, 67),
(236, 67, 'Las familias y el centro colaboran conjunta y sistematicamente para acompaniar el aprendizaje integral de cada estudiante', 12, 67),
(237, 68, 'Los educadores no atienden las opiniones y demandas de las familias de sus estudiantes o no hay evidencia de ello', 0, 68),
(238, 68, 'Los educadores atienden las opiniones y demandas de algunas de las familias de sus estudiantes', 4, 68),
(239, 68, 'Los educadores atienden las opiniones y demandas de la mayoria de las familias de sus estudiantes', 8, 68),
(240, 68, 'Los educadores atienden las opiniones y demandas de todas las familias de sus estudiantes', 12, 68),
(241, 69, 'Las familias se sienten insatisfechas con la implicacion que tienen en los espacios de participacion que les son propios o no hay evidencia de ello', 0, 69),
(242, 69, 'Algunas familias se sienten satisfechas con la implicacion que tienen en los espacios de participacion que les son propios ', 4, 69),
(243, 69, 'La mayoria de las familias se sienten satisfechas con la implicacion que tienen en los espacios de participacion que les son propios', 8, 69),
(244, 69, 'Todas las familias se sienten satisfechas con la implicacion que tienen en los espacios de participacion que les son propios', 12, 69),
(245, 70, 'Las familias no participan en las actividades que promueve el centro o no hay evidencia de ello', 0, 70),
(246, 70, 'La participacion familiar es parcial ya que solo algunas familias participan en las diversas actividades que promueve el centro o bien porque se limita solo a un tipo de actividades (pedagogica, pastoral o social)', 6, 70),
(247, 70, 'Todas las familias participan en las diversas actividades que promueve el centro, tanto pedagogicas, pastorales como sociales', 12, 70),
(248, 71, 'El centro no integra la realidad y caracteristicas economicas, sociales y culturales de las familias en su estrategia de trabajo con las familias o no hay evidencias de ello', 0, 71),
(249, 71, 'El centro integra parcialmente la realidad y caracteristicas economicas, sociales y culturales de las familias en su estrategia de trabajo con las familias en su proyecto educativo', 6, 71),
(250, 71, 'El centro integra totalmente la realidad y caracteristicas economicas, sociales y culturales de las familias en su estrategia de trabajo con las familias', 12, 71),
(251, 72, 'Las familias no perciben que los educadores valoran su rol educador o no hay evidencias de ello', 0, 72),
(252, 72, 'Algunas familias perciben que los educadores valoran su rol educador', 4, 72),
(253, 72, 'La mayoria de las familias perciben que los educadores valoran su rol educador', 8, 72),
(254, 72, 'Todas las familias perciben que los educadores valoran su rol educador', 12, 72),
(255, 73, 'Las familias no reciben sistematicamente capacitacion y apoyo para orientar y estimular el aprendizaje de sus hijos(as) o no hay evidencias de ello', 0, 73),
(256, 73, 'La capacitacion y apoyo que reciben las familias es parcial, ya que solo algunas familias reciben sistematicamente capacitacion y apoyo para orientar y estimular el aprendizaje de sus hijos o bien porque estas se limitan a una sola area de formacion', 6, 73),
(257, 73, 'Todas las familias reciben sistematicamente capacitacion y apoyo para orientar y estimular el aprendizaje de sus hijos e hijas y su desarrollo en las diversas dimensiones de la formacion integral', 12, 73),
(258, 74, 'El centro no apoya a las familias en la implementacion de diversas estrategias que estimulan el aprendizaje integral de sus hijos(as) de acuerdo a su propuesta curricular o no hay evidencias de ello', 0, 74),
(259, 74, 'El centro apoya a algunas familias en la implementacion de diversas estrategias que estimulan el aprendizaje integral de sus hijos(as) de acuerdo a su propuesta curricular', 4, 74),
(260, 74, 'El centro apoya a la mayoria de las familias en la implementacion de diversas estrategias que estimulan el aprendizaje integral de sus hijos e hijas de acuerdo a su propuesta curricular', 8, 74),
(261, 74, 'El centro apoya a todas las familias en la implementacion de diversas estrategias que estimulan el aprendizaje integral de sus hijos e hijas de acuerdo a su propuesta curricular', 12, 74),
(262, 75, 'Las familias no sienten que son apoyadas sistematicamente a traves de las actividades ofrecidas por el centro, para orientar y estimular el aprendizaje integral de sus hijos e hijas o no hay evidencias de ello', 0, 75),
(263, 75, 'Algunas familias sienten que son apoyadas sistematicamente a traves de las actividades ofrecidas por el centro, para orientar y estimular el aprendizaje integral de sus hijos e hijas', 4, 75),
(264, 75, 'La mayoria de las familias sienten que son apoyadas sistematicamente a traves de las actividades ofrecidas por el centro, para orientar y estimular el aprendizaje integral de sus hijos e hijas', 8, 75),
(265, 75, 'Todas las familias sienten que son apoyadas sistematicamente a traves de las actividades ofrecidas por el centro, para orientar y estimular el aprendizaje integral de sus hijos e hijas', 12, 75),
(266, 76, 'El centro no utiliza los recursos de las organizaciones y servicios locales para enriquecer su propuesta educativa o no hay evidencias de ello', 0, 76),
(267, 76, 'El centro utiliza ocasionalmente los recursos de las organizaciones y servicios locales para enriquecer su propuesta educativa en su proyecto educativo', 6, 76),
(268, 76, 'El centro utiliza sistematicamente los recursos de las organizaciones y servicios locales para enriquecer su propuesta educativa', 12, 76),
(269, 77, 'El centro no promueve experiencias de aprendizaje en servicio para sus estudiantes, en el espacio comunitario local o no hay evidencias de ello', 0, 77),
(270, 77, 'El centro promueve ocasionalmente experiencias de aprendizaje en servicio para sus estudiantes, en el espacio comunitario local', 6, 77),
(271, 77, 'El centro promueve sistematicamente experiencias de aprendizaje en servicio para sus estudiantes, en el espacio comunitario local', 12, 77),
(272, 78, 'El centro no promueve acciones y programas de apoyo y accion social en distintas organizaciones y entidades de la comunidad local o no hay evidencias de elo', 0, 78),
(273, 78, 'El centro promueve ocasionalmente acciones y programas de apoyo y accion social en distintas organizaciones y entidades de la comunidad local, regional y/o nacional en su proyecto educativo', 6, 78),
(274, 78, 'El centro promueve sistematicamente acciones y programas de apoyo y accion social en distintas organizaciones y entidades de la comunidad local, regional y/o nacional', 12, 78),
(275, 79, 'El centro no facilita el uso de sus recursos a diversas organizaciones y entidades de la comunidad local, para el desarrollo de actividades alineadas con su propuesta educativa o no hay evidencias de ello', 0, 79),
(276, 79, 'El centro facilita ocasionalmente el uso de sus recursos a diversas organizaciones y entidades de la comunidad local, para el desarrollo de actividades alineadas con su propuesta educativa', 6, 79),
(277, 79, 'El centro facilita sistematicamente el uso de sus recursos a diversas organizaciones y entidades de la comunidad loca, para el desarrollo de actividades alineadas con su propuesta educativa', 12, 79);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta_pregunta`
--

CREATE TABLE `respuesta_pregunta` (
  `id_respuesta_pregunta` int(11) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `id_respuesta` int(11) NOT NULL,
  `eliminado` bit(1) DEFAULT b'0',
  `id_encuesta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `respuesta_pregunta`
--

INSERT INTO `respuesta_pregunta` (`id_respuesta_pregunta`, `id_pregunta`, `id_respuesta`, `eliminado`, `id_encuesta`) VALUES
(130, 1, 2, b'0', 1),
(131, 2, 5, b'0', 1),
(132, 3, 9, b'0', 1),
(133, 4, 14, b'0', 1),
(134, 5, 20, b'0', 1),
(135, 6, 22, b'0', 1),
(136, 7, 26, b'0', 1),
(137, 8, 29, b'0', 1),
(138, 9, 33, b'0', 1),
(139, 10, 37, b'0', 1),
(140, 11, 42, b'0', 1),
(141, 12, 45, b'0', 1),
(142, 13, 49, b'0', 1),
(143, 14, 54, b'0', 1),
(144, 15, 56, b'0', 1),
(145, 16, 61, b'0', 1),
(146, 17, 65, b'0', 1),
(147, 18, 69, b'0', 1),
(148, 19, 70, b'0', 1),
(149, 20, 77, b'0', 1),
(150, 21, 78, b'0', 1),
(151, 22, 83, b'0', 1),
(152, 23, 86, b'0', 1),
(153, 24, 89, b'0', 1),
(154, 25, 91, b'0', 1),
(155, 26, 95, b'0', 1),
(156, 27, 98, b'0', 1),
(157, 28, 101, b'0', 1),
(158, 29, 104, b'0', 1),
(159, 30, 107, b'0', 1),
(160, 31, 109, b'0', 1),
(161, 32, 112, b'0', 1),
(162, 33, 116, b'0', 1),
(163, 34, 118, b'0', 1),
(164, 35, 122, b'0', 1),
(165, 36, 125, b'0', 1),
(166, 37, 128, b'0', 1),
(167, 38, 132, b'0', 1),
(168, 39, 134, b'0', 1),
(169, 40, 138, b'0', 1),
(170, 41, 141, b'0', 1),
(171, 42, 144, b'0', 1),
(172, 43, 148, b'0', 1),
(173, 44, 151, b'0', 1),
(174, 45, 155, b'0', 1),
(175, 46, 160, b'0', 1),
(176, 47, 163, b'0', 1),
(177, 48, 167, b'0', 1),
(178, 49, 171, b'0', 1),
(179, 50, 174, b'0', 1),
(180, 51, 178, b'0', 1),
(181, 52, 180, b'0', 1),
(182, 53, 185, b'0', 1),
(183, 54, 186, b'0', 1),
(184, 55, 191, b'0', 1),
(185, 56, 194, b'0', 1),
(186, 57, 198, b'0', 1),
(187, 58, 201, b'0', 1),
(188, 59, 205, b'0', 1),
(189, 60, 210, b'0', 1),
(190, 61, 214, b'0', 1),
(191, 62, 218, b'0', 1),
(192, 63, 220, b'0', 1),
(193, 64, 226, b'0', 1),
(194, 65, 228, b'0', 1),
(195, 66, 232, b'0', 1),
(196, 67, 235, b'0', 1),
(197, 68, 238, b'0', 1),
(198, 69, 243, b'0', 1),
(199, 70, 246, b'0', 1),
(200, 71, 248, b'0', 1),
(201, 72, 253, b'0', 1),
(202, 73, 256, b'0', 1),
(203, 74, 259, b'0', 1),
(204, 75, 264, b'0', 1),
(205, 76, 267, b'0', 1),
(206, 77, 271, b'0', 1),
(207, 78, 274, b'0', 1),
(208, 79, 277, b'0', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `ID_ROL` int(11) NOT NULL,
  `NOMBREROL` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`ID_ROL`, `NOMBREROL`) VALUES
(1, 'Administrador'),
(2, 'Facilitador/Coordinador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_USUARIO` int(11) NOT NULL,
  `ID_ROL` int(11) DEFAULT NULL,
  `NOMBRESUSUARIO` longtext,
  `APELLIDOSUSUARIO` longtext,
  `CEDULA` char(10) DEFAULT NULL,
  `USER` longtext,
  `PASSWORD` longtext,
  `EMAIL` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_USUARIO`, `ID_ROL`, `NOMBRESUSUARIO`, `APELLIDOSUSUARIO`, `CEDULA`, `USER`, `PASSWORD`, `EMAIL`) VALUES
(1, 1, 'Esteban', 'Ruiz', '1719927624', 'eruiz', '12345', 'esteban.ruiz@csgabriel.edu.ec'),
(2, 2, 'Sebastian', 'Guerra', '1719452365', 'sguerra', '$sebas%$', 'sguerra@csgabriel.edu.ec'),
(3, 1, 'Vinicio', 'Rodriguez', NULL, 'vrodriguez', 'vrodriguez', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ambito`
--
ALTER TABLE `ambito`
  ADD PRIMARY KEY (`ID_AMBITO`);

--
-- Indices de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  ADD PRIMARY KEY (`id_encuesta`);

--
-- Indices de la tabla `indicadores`
--
ALTER TABLE `indicadores`
  ADD PRIMARY KEY (`id_indicador`),
  ADD KEY `fk_item` (`id_item`);

--
-- Indices de la tabla `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ID_ITEM`),
  ADD KEY `FK_TIENE` (`ID_AMBITO`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`ID_PREGUNTA`),
  ADD KEY `fk_indicador_preg` (`ID_INDICADOR`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`ID_RESPUESTA`),
  ADD KEY `FK_TIENE1` (`ID_PREGUNTA`),
  ADD KEY `fk_indicador` (`id_indicador`);

--
-- Indices de la tabla `respuesta_pregunta`
--
ALTER TABLE `respuesta_pregunta`
  ADD PRIMARY KEY (`id_respuesta_pregunta`),
  ADD UNIQUE KEY `indice_columnas` (`id_pregunta`,`id_respuesta`),
  ADD KEY `fk_respuesta` (`id_respuesta`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`ID_ROL`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_USUARIO`),
  ADD KEY `FK_PERTENECE` (`ID_ROL`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ambito`
--
ALTER TABLE `ambito`
  MODIFY `ID_AMBITO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  MODIFY `id_encuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `indicadores`
--
ALTER TABLE `indicadores`
  MODIFY `id_indicador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT de la tabla `item`
--
ALTER TABLE `item`
  MODIFY `ID_ITEM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `ID_PREGUNTA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `ID_RESPUESTA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;
--
-- AUTO_INCREMENT de la tabla `respuesta_pregunta`
--
ALTER TABLE `respuesta_pregunta`
  MODIFY `id_respuesta_pregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `indicadores`
--
ALTER TABLE `indicadores`
  ADD CONSTRAINT `fk_item` FOREIGN KEY (`id_item`) REFERENCES `item` (`ID_ITEM`);

--
-- Filtros para la tabla `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK_TIENE` FOREIGN KEY (`ID_AMBITO`) REFERENCES `ambito` (`ID_AMBITO`);

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `fk_indicador_preg` FOREIGN KEY (`ID_INDICADOR`) REFERENCES `indicadores` (`id_indicador`);

--
-- Filtros para la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD CONSTRAINT `FK_TIENE1` FOREIGN KEY (`ID_PREGUNTA`) REFERENCES `pregunta` (`ID_PREGUNTA`),
  ADD CONSTRAINT `fk_indicador` FOREIGN KEY (`id_indicador`) REFERENCES `indicadores` (`id_indicador`);

--
-- Filtros para la tabla `respuesta_pregunta`
--
ALTER TABLE `respuesta_pregunta`
  ADD CONSTRAINT `fk_pregunta` FOREIGN KEY (`id_pregunta`) REFERENCES `pregunta` (`ID_PREGUNTA`),
  ADD CONSTRAINT `fk_respuesta` FOREIGN KEY (`id_respuesta`) REFERENCES `respuesta` (`ID_RESPUESTA`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_PERTENECE` FOREIGN KEY (`ID_ROL`) REFERENCES `rol` (`ID_ROL`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
