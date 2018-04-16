-- MySQL dump 10.13  Distrib 5.7.19, for macos10.12 (x86_64)
--
-- Host: localhost    Database: munisanborja
-- ------------------------------------------------------
-- Server version	5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `munisanborja`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `munisanborja` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `munisanborja`;

--
-- Table structure for table `DetalleInformeTecnico`
--

DROP TABLE IF EXISTS `DetalleInformeTecnico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DetalleInformeTecnico` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(300) DEFAULT NULL,
  `valor` double DEFAULT '0',
  `conclusion` varchar(45) DEFAULT NULL,
  `InformeTecnico_codigo` int(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_DetalleInformeTecnico_informetecnico1_idx` (`InformeTecnico_codigo`),
  CONSTRAINT `fk_DetalleInformeTecnico_informetecnico1` FOREIGN KEY (`InformeTecnico_codigo`) REFERENCES `informetecnico` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DetalleInformeTecnico`
--

LOCK TABLES `DetalleInformeTecnico` WRITE;
/*!40000 ALTER TABLE `DetalleInformeTecnico` DISABLE KEYS */;
/*!40000 ALTER TABLE `DetalleInformeTecnico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Requerimiento`
--

DROP TABLE IF EXISTS `Requerimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Requerimiento` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `identificador` varchar(7) DEFAULT NULL,
  `nombre` varchar(500) DEFAULT NULL,
  `objetivo` varchar(500) DEFAULT NULL,
  `problema` text,
  `fuenteFinanciamiento` varchar(500) DEFAULT NULL,
  `programaInversion` tinyint(4) DEFAULT NULL,
  `analisisSostenibilidad` longtext,
  `unidadEjecutoraRecomendada` varchar(500) DEFAULT NULL,
  `costoOperacion` double DEFAULT NULL,
  `costoMantenimiento` double DEFAULT NULL,
  `fechaCreacion` date DEFAULT NULL,
  `fechaActualizacion` date DEFAULT NULL,
  `fechaAprobacion` date DEFAULT NULL,
  `fechaRechazo` date DEFAULT NULL,
  `elaboradoPor` varchar(100) DEFAULT NULL,
  `aprobadoPor` varchar(100) DEFAULT NULL,
  `revisadoPor` varchar(100) DEFAULT NULL,
  `EstadoTramite_codigo` int(11) NOT NULL,
  `UnidadFormuladora_codigo` int(11) NOT NULL,
  `MontoInversionTotal_codigo` int(11) NOT NULL,
  `CostoBeneficio_codigo` int(11) NOT NULL,
  `CostoEfectividad_codigo` int(11) NOT NULL,
  `Ubicacion_codigo` int(11) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `RequerimientoEvaluado_codigo` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_Requerimiento_EstadoTramite1_idx` (`EstadoTramite_codigo`),
  KEY `fk_Requerimiento_UnidadFormuladora1_idx` (`UnidadFormuladora_codigo`),
  KEY `fk_Requerimiento_MontoInversionTotal1_idx` (`MontoInversionTotal_codigo`),
  KEY `fk_Requerimiento_CostoBeneficio1_idx` (`CostoBeneficio_codigo`),
  KEY `fk_Requerimiento_CostoEfectividad1_idx` (`CostoEfectividad_codigo`),
  KEY `fk_Requerimiento_Ubicacion1_idx` (`Ubicacion_codigo`),
  KEY `fk_Requerimiento_RequerimientoEvaluado1_idx` (`RequerimientoEvaluado_codigo`),
  CONSTRAINT `fk_Requerimiento_CostoBeneficio1` FOREIGN KEY (`CostoBeneficio_codigo`) REFERENCES `costobeneficio` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Requerimiento_CostoEfectividad1` FOREIGN KEY (`CostoEfectividad_codigo`) REFERENCES `costoefectividad` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Requerimiento_EstadoTramite1` FOREIGN KEY (`EstadoTramite_codigo`) REFERENCES `estadotramite` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Requerimiento_MontoInversionTotal1` FOREIGN KEY (`MontoInversionTotal_codigo`) REFERENCES `montoinversiontotal` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Requerimiento_RequerimientoEvaluado1` FOREIGN KEY (`RequerimientoEvaluado_codigo`) REFERENCES `RequerimientoEvaluado` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Requerimiento_Ubicacion1` FOREIGN KEY (`Ubicacion_codigo`) REFERENCES `ubicacion` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Requerimiento_UnidadFormuladora1` FOREIGN KEY (`UnidadFormuladora_codigo`) REFERENCES `unidadformuladora` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Requerimiento`
--

LOCK TABLES `Requerimiento` WRITE;
/*!40000 ALTER TABLE `Requerimiento` DISABLE KEYS */;
INSERT INTO `Requerimiento` VALUES (1,'R00001','CONSTRUCCION E IMPLEMENTACION DE LABORATORIOS DE LA FACULTAD DE MEDICINA HUMANA EN LA CIUDAD UNIVERSITARIA','Elevar el nivel de la formacion profesional universitaria de los estudiantes de la Facultad de Medicina Humana de la UNA-Puno','Bajo nivel en la formacion profesional universitaria de los estudiantes de la Facultad de Medicina Humana de la UNA-Puno','RECURSOS ORDINARIOS',0,'Los costos de operacion y mantenimiento del proyecto seran financiados con recursos ordinarios y recursos directamente reacudados.','',5822959,111329,'2018-03-20',NULL,NULL,NULL,'ERODRICH','','',2,1,1,1,1,1,'',NULL),(2,'R00002','INSTALACION Y REHABILITACION DEL SISTEMA DE AGUA POTABLE Y ALCANTARILLADO DEL SECTOR NOR ESTE PERIFERICO DE LA CIUDAD DE HUARAL, PROVINCIA DE HUARAL - LIMA','EFICIENTE PRESTACIÓN DE LOS SERVICIOS DE AGUA POTBLE EN EL SECTOR NOR ESTE PERIFERICO DE LA CIUDAD DE HUARAL','LA EMPRESA ENCARGADA DE LA ADMINISTRACIÓN, OPERACIÓN Y MANTENIMIENTO DEL SERVICIO DE AGUA POTABLE Y ALCANTARILLADO EN LA LOCALIDAD DE HUARAL ES LA EMPRESA MUNICIPAL DE AGUA POTABLE Y ALCANTARILLADO DE HUARAL (EMAPA HUARAL S.A.), QUE MEDIANTE RESOLUCIÓN DE SUPERINTENDENCIA N 001-96-PRES/VMI/SUNASS, DETERMINANDOSE COMO AMBITO DE RESPONSABILIDAD LA CIUDAD DE HUARAL. EL SECTOR NOR ESTE PERIFERICO SE ABASTECE DE AGUA POTBLE MEDIANTE LOS POZOS 1 Y 4. EL AREA POSEE TRES ZONAS: ALTA, MEDIA Y BAJA LAS CUALES POSEEN UNA CONTINUIDAD PROMEDIO DEL SERVICIO DE 15.83, 16.83 Y 24 HORAS RESPECTIVAMENTE, SEGÚN LAS ENCUESTAS REALIZADAS SE OBSERVA QUE EL 64.8% DE LAS VIVIENDAS DISPONEN DE AGUA POTABLE ENTRE 0 Y 12 HORAS AL DIA, 4.1% DISPONE DE AGUA POTABLE ENTRE 12 Y 18 HORAS AL DIA Y 29.7% LAS 24 HORAS DEL DIA. EN LA ZONA EXISTEN DOS LINEAS DE REDES DE AGUA, EL CUAL TIENE UN CAUDAL MAXIMO DIARIO QUE PUEDE TRANSPORTAR LA LINEA DE 6´´ DE ABASTO DE CEMENTO Y LA DE 150 MM DE PVC (RENOVADA) QUE INGRESAN A LA RED DE LA ZONA DEL PROYECTO ES DE 38.86 (CADA LINEA CON CAPACIDAD DE DE 19.42 LT/SG.), ESTAS LINEAS DE DISTRIBUCIÓN TIENEN CAPACIDAD PARA TRANSPORTAR LOS CAUDALES REQUERIDOS POR LA POBLACIÓN, ESTAS REDES EN UN ALTO PORCENTAJE SE ENCUENTRAN DETERIORADAS, POR QUE YA CUMPLIERÓN SU TIEMPO DE VIDA ÚTIL. EL PRINCIPAL PROBLEMA DE ESTE SISTEMA DE DISTRIBUCIÓN RADICA EN LA ANTIGÜEDAD Y MATERIAL DE ALGUNAS TUBERÍAS Y LA AUSENCIA DE UN CATASTRO TÉCNICO DEL SISTEMA. PROBLEMA CENTRAL: ´´DEFICIENTE PRESTACIÓN DE LOS SERVICIOS DE AGUA POTABLE Y ALCANTARILLADO EN EL SECTOR NOR ESTE PERIFERICO DE LA CIUDAD DE HUARAL´´','CANON Y SOBRECANON, REGALIAS, RENTA DE ADUANAS Y P',0,'LA ISNTITUCIÓN ENCARGADA DE LA ETAPA DE OPERACIÓN Y MANTENIMIENTO DEL PROYECTO ES EMAPA HUARAL S.A., LA CUAL ES LA EMPRESA DE SERVICIO DE AGUA POTABLE Y ALCANTARILLADO DE LA CIUDAD DE HUARAL, TIENE OBJETO LA PRESTACIÓN DE LOS SERVICIOS DE SANEAMIENTO. A LA RECEPCIÓN DE LAS OBRAS A EJECUTARCE EN EL MARCO DEL PRESENTE PROYECTO, ESTAS SERAN ADMINISTRADAS POR ESTA ENTIDAD, QUEDANDO BAJO EL ÁMBITO DE SU RESPONSABILIDAD LA OPERACIÓN Y MANTENIMIENTO DE LAS MISMAS, CUENTA PARA ELLO CON LA CAPACIDAD TÉCNICA Y LOGÍSTICA NECESARIA, ASÍ COMO LA CAPACIDAD INSTALADA NECESARIA.','',5159295,45394,'2018-03-11',NULL,'2018-04-01',NULL,'ERODRICH','ERODRICH','',2,2,2,2,2,2,'',NULL),(3,'R00003','CREACION DE ALAMEDA LAS ARTES EN LA AV. AYABACA ENTRE LAS AV. JJ ELIAS Y AV. TUPAC AMARU EN LA CIUDAD DE ICA - PROVINCIA DE ICA, DEPARTAMENTO DE ICA','ADECUADAS PARA EL DESARROLLO DE ACTIVIDADES RECREATIVAS Y SANO ESPARCIMIENTO URBANO EN LA AV. AYABACA ENTRE LA A. J.J. ELÍAS Y AV. TÚPAC AMARU','INADECUADAS CONDICIONES PARA EL DESARROLLO DE ACTIVIDADES RECREATIVAS Y SANO ESPARCIMIENTO URBANO EN LA AV. AYABACA ENTRE LA A. J.J. ELÍAS Y AV. TÚPAC AMARU','CANON Y SOBRECANON, REGALIAS, RENTA DE ADUANAS Y P',0,'El GORE ICA ,cuenta con capacidad tecnico administrativa de gestion institucional para la preveer los recursos en la etapa de inversion. Mientras que la Municipalidad Provincial de Ica, asumira los costos de operacion y mantenimiento .','',7380562,79584,'2018-02-20',NULL,NULL,NULL,'ERODRICH','','',2,3,3,3,3,3,'',NULL),(4,'R00004','CONSTRUCCION DEL TERMINAL TERRESTRE NACIONAL, INTERNACIONAL E INTERPROVINCIAL PARA LA CIUDAD DE PIURA','','El problema a resolver es el deficiente Sistema de Transporte Nacional, Internacional e Interprovincial en la Ciudad de Piura, causado por la inadecuada infraestructura vial existente y ausente, llámense vías urbanas en buen estado e infraestructura de embarque y desembarque de pasajeros adecuada y ubicacion, entre otras causas.','RECURSOS PROPIOS (SECTOR FONAFE)',0,'La institución encargada de la ejecución del proyecto en la fase de inversión es la Municipalidad Provincial de Piura que cuenta con probada experiencia y con profesionales técnicamente calificado para llevar a cabo el proyecto. Concretamente, la ejecución del proyecto estará a cargo de la División de Obras de la Dirección de Infraestructura de la Dirección General de Desarrollo urbano y Transporte de la comuna. Los costos de operación y mantenimiento serán asumido por el mismo proyecto ya que se espera obtener ingreso anuales por el alquiler y/ o venta de locales comerciales y agencias.','',31817876,1398638,'2018-01-15',NULL,NULL,NULL,'ERODRICH','','',2,4,4,4,4,4,'',NULL),(5,'R00005','MEJORAMIENTO DEL SERVICIO CULTURAL EN LA INFRAESTRUCTURA URBANO MONUMENTAL DEL TEATRO MUNICIPAL DE TRUJILLO, DISTRITO DE TRUJILLO, PROVINCIA DE TRUJILLO - LA LIBERTAD','ADECUADAS CONDICIONES PARA BRINDAR LOS SERVICIOS CULTURALES Y ARTISTICOS DEL TEATRO MUNICIPAL DE TRUJILLO.','INADECUADAS CONDICIONES PARA BRINDAR LOS SERVICIOS CULTURALES Y ARTISTICOS DEL TEATRO MUNICIPAL DE TRUJILLO.','FONDO DE COMPENSACION MUNICIPAL',0,'La sostenibilidad del proyecto está garantizada debido al compromiso de la Municipalidad Provincial de Trujillo, encargada de financiar y ejecutar los trabajos durante la etapa de pre inversion, inversion y post inversión.','',4484557,27000,'2018-03-09',NULL,NULL,NULL,'ERODRICH','','',2,5,5,5,5,5,'',NULL),(6,'R00006','MEJORAMIENTO DE LA COMPETITIVIDAD DE LA CADENA PRODUCTIVA DE PAPAS NATIVAS EN LA LOCALIDAD DE CHIPTA, DISTRITO DE SAN MARCOS - HUARI - ANCASH','INCREMENTO DEL NIVEL COMPETITIVO DE LA ACTIVIDAD AGRÍCOLA DEL CULTIVO DE PAPA NATIVA EN LA LOCALIDAD DE CHIPTA, DISTRITO DE SAN MARCOS, PROVINCIA DE HUARI, ANCASH','BAJO NIVEL COMPETITIVO DE LA ACTIVIDAD AGRÍCOLA DEL CULTIVO DE PAPA NATIVA EN LA LOCALIDAD DE CHIPTA, DISTRITO DE SAN MARCOS - HUARI – ANCASH.','',0,'','',652431.81,NULL,'2018-02-10',NULL,NULL,NULL,'ERODRICH','','',2,6,6,6,6,6,'',NULL),(7,'R00007','INSTALACION DEL PALACIO MUNICIPAL DE LAREDO, DISTRITO DE LAREDO - TRUJILLO - LA LIBERTAD','ADECUADAS CONDICIONES PARA LA ADMINISTRACION Y GESTION DE SERVICIOS DE LA MUNICIPALIDAD DISTRITAL DE LAREDO','INADECUADAS CONDICIONES PARA LA ADMINISTRACION Y GESTION DE SERVICIOS DE LA MUNICIPALIDAD DISTRITAL DE LAREDO','DONACIONES Y TRANSFERENCIAS',0,'EL ANÁLISIS DE SOSTENIBILIDAD TIENE COMO OBJETIVO DETERMINAR LA CAPACIDAD DEL PROYECTO ALTERNATIVO ELEGIDO PARA CUBRIR SUS COSTOS DE INVERSIÓN Y LOS COSTOS DE OPERACIÓN Y MANTENIMIENTO QUE SE GENERAN A LO LARGO DE SU HORIZONTE DE EVALUACIÓN. PARA ELLO SE DEBERÁ RETOMAR SU FLUJO DE COSTOS A PRECIOS DE MERCADO, ELABORADO ANTERIORMENTE, E IDENTIFICAR TODAS LAS FUENTES DE INGRESOS QUE PERMITIRÁN CUBRIR DICHOS COSTOS AÑO TRAS AÑO, ASÍ COMO LOS MONTOS ATRIBUIBLES A CADA UNA DE ELLAS. EL ANÁLISIS DE SOSTENIBILIDAD DEL PROYECTO SE HA REALIZADO CON LOS SIGUIENTES PUNTOS DE VISTA: VIABILIDAD TÉCNICA: EL ESTUDIO CUMPLE CON LOS REQUERIMIENTOS TÉCNICOS DE DISEÑO PARA ESTE TIPO DE PROYECTOS DE INFRAESTRUCTURA, ASEGURANDO EL ADECUADO DESARROLLO DEL MISMO. SE HA ELABORADO EN BASE A LAS NORMAS ESTABLECIDAS EN EL REGLAMENTO NACIONAL DE EDIFICACIONES. INSTITUCIONAL: LA SOSTENIBILIDAD DE ESTE PROYECTO ESTÁ DADA PRINCIPALMENTE POR EL COMPROMISO DE LA MUNICIPALIDAD DISTRITAL DE LAREDO, PARA FINANCIAR LA FASE DE PRE-INVERSIÓN Y POST INVERSIÓN DEL PROYECTO ASÍ COMO SE COMPLEMENTARÁ CON LA GESTIÓN PARA SU FINANCIAMIENTO. ADEMÁS EL GOBIERNO LOCAL HA DEMOSTRADO SU COMPROMISO Y VOCACIÓN DE SERVICIO A LA POBLACIÓN DEL DISTRITO. ECONÓMICA: LA MUNICIPALIDAD DISTRITAL DE LAREDO CUENTA CON RECURSOS FINANCIEROS Y EQUIPAMIENTO ADECUADO PARA LAS ACTIVIDADES DE MANTENIMIENTO Y CUENTA CON CAPACIDAD DE GESTIÓN PARA ASUMIR LOS GASTOS DE OPERACIÓN Y MANTENIMIENTO DEL PRESENTE PROYECTO. ASÍ MISMO LA MUNICIPALIDAD DISTRITAL DE LAREDO TIENE CAPACIDAD PARA GESTIONAR ANTE OTRAS INSTITUCIONES PÚBLICAS PRINCIPALMENTE EL FINANCIAMIENTO PARA LA ETAPA DE INVERSIÓN, EN CASO DE SER NECESARIO. AMBIENTAL: EL PROYECTO A EJECUTAR PRESENTARÁ IMPACTOS AMBIENTALES MÍNIMOS, PRINCIPALMENTE DURANTE LA ETAPA DE EJECUCIÓN, LOS CUALES SERÁN AMORTIGUADOS CON PLANES DE MITIGACIÓN AMBIENTAL. SOCIAL: SE TIENE EL COMPROMISO DE LA POBLACIÓN Y DE TODOS LOS DEMÁS ACTORES INVOLUCRADOS E IDENTIFICADOS, EN DAR LAS FACILIDADES NECESARIAS PARA CUMPLIR CON LAS METAS ESTABLECIDAS Y EN EL CUIDADO PARA LA CONSERVACIÓN DE LA INFRAESTRUCTURA PRINCIPALMENTE DE ESTA IMPORTANTE OBRA PARA LA POBLACIÓN.','',2275612,1209840,'2018-01-27',NULL,NULL,NULL,'ERODRICH','','',2,7,7,7,7,7,'',NULL),(8,'R00008','INSTALACIÓN DEL DESAGUE SECTOR 07 A.H. NUEVA ESPERANZA','Disminución de los casos de enfermedades diarreicas y parasitarias en el Sector 07 del A.H. Nueva Esperanza del distrito de Piura','Frecuentes casos de enfermedades diarreicas y parasitarias en el Sector 07 del A.H. Nueva Esperanza del distrito de Piura','FONDO DE COMPENSACION MUNICIPAL',0,'La Municipalidad Provincial de Piura, a través de la Oficina de Infraestructura, es la institución encargada de la ejecución del Proyecto, entidad que cuenta con la experiencia suficiente en la elaboración de expedientes técnicos y ejecución de obras para lo cual se dispone de las condiciones técnicas necesarias','',910887,100,'2018-03-01',NULL,NULL,NULL,'ERODRICH','','',2,8,8,8,8,8,'',NULL),(9,'R00009','MEJORAMIENTO Y AMPLIACION DEL SISTEMA SANEAMIENTO BASICO EN LOS SECTORES CHACCOPALLA, CRUZ CCASA, PULPERA, SOCLLOPAMPA PITACAYO, SOCLLOPAMPA, TAMANA, TOTORANI Y HAPUPAMPA DE LA COMUNIDAD CAMPESINA HUANCANE, DISTRITO DE LIVITACA - CHUMBIVILCAS - CUSCO','DISMINUCIÓN DE LA INCIDENCIA DE ENFERMEDADES DIARREICAS AGUDAS, PARASITARIAS Y DE LA PIEL ESPECIALMENTE EN LA POBLACIÓN ETAREA MENOR A 5 AÑOS DE LOS SECTORES CHACCOPALLA, CRUZ CCASA, PULPERA, SOCLLOPAMPA PITACAYO, SOCLLOPAMPA, TAMANA, TOTORANI Y HAPUPAMPA.','INCREMENTO DE LA INCIDENCIA DE ENFERMEDADES DIARREICAS AGUDAS, PARASITARIAS Y DE LA PIEL ESPECIALMENTE EN LA POBLACIÓN ETAREA MENOR A 5 AÑOS DE LOS SECTORES CHACCOPALLA, CRUZ CCASA, PULPERA, SOCLLOPAMPA PITACAYO, SOCLLOPAMPA, TAMANA, TOTORANI Y HAPUPAMPA.','',0,'','',1149188.2,100,'2018-02-18',NULL,NULL,NULL,'ERODRICH','','',2,9,9,9,9,9,'',NULL),(10,'R00010','MEJORAMIENTO DE PISTAS, VEREDAS Y SARDINELES EN EL BARRIO LOS MENDOZA Y CAMINO REAL, DISTRITO DE PACHACÚTEC -ICA - ICA','ADECUADAS CONDICIONES TRANSITABILIDAD VEHICULAR Y PEATONAL EN LAS CALLES DEL BARRIO LOS MENDOZA Y DE CAMINO REAL','EN EL DISTRITO DE PACHACÚTEC, EL PRINCIPAL PROBLEMA ES LA ACCESIBILIDAD, COMO CONSECUENCIA LAS RESTRICCIONES EN EL TRANSPORTE DE PASAJEROS Y DE CARGA, DIARIAMENTE LOS ESTUDIANTES, LAS AMAS DE CASA Y DEMÁS POBLACIÓN TIENEN QUE REALIZAR LARGAS CAMINATAS POR LAS CALLES POLVORIENTAS Y EN MAL ESTADO HACIA SUS CENTROS DE ESTUDIOS, CENTROS DE ABASTECIMIENTO, A SUS CENTROS DE TRABAJO, ADEMÁS DE OCASIONAR DETERIORO AL PATRIMONIO PÚBLICO Y PRIVADO PROVENIENTE DEL POLVO, TAMBIEN PRODUCE QUE SE REGISTREN ENFERMEDADES DE PIEL E INFECCIONES OCULARES. POR LO QUE LA MUNICIPALIDAD DE PACHACUTEC HA DISPUESTO EN FORMA URGENTE LA ELABORACIÓN DEL PRESENTE PROYECTO DE INVERSIÓN PÚBLICA PARA DAR SOLUCIÓN A LOS PROBLEMAS INDICADOS.','',0,'','',1026982.28,100,'2017-12-24',NULL,NULL,NULL,'ERODRICH','','',2,10,10,10,10,10,'',NULL);
/*!40000 ALTER TABLE `Requerimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RequerimientoEvaluado`
--

DROP TABLE IF EXISTS `RequerimientoEvaluado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RequerimientoEvaluado` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `impuestoRenta` double DEFAULT '0',
  `cManoObraCalificada` double DEFAULT '0',
  `cManoObraNoCalificada` double DEFAULT '0',
  `factorManoObraCalificada` double DEFAULT '0',
  `factorManoObraNoCalificada` double DEFAULT '0',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RequerimientoEvaluado`
--

LOCK TABLES `RequerimientoEvaluado` WRITE;
/*!40000 ALTER TABLE `RequerimientoEvaluado` DISABLE KEYS */;
/*!40000 ALTER TABLE `RequerimientoEvaluado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costobeneficio`
--

DROP TABLE IF EXISTS `costobeneficio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `costobeneficio` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `valorActualNeto` double DEFAULT NULL,
  `tasaInternaRetorno` double DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costobeneficio`
--

LOCK TABLES `costobeneficio` WRITE;
/*!40000 ALTER TABLE `costobeneficio` DISABLE KEYS */;
INSERT INTO `costobeneficio` VALUES (1,0,0),(2,856856,16.24),(3,0,0),(4,13281738,22.62),(5,0,0),(6,142977,0),(7,0,0),(8,0,0),(9,74825,0),(10,0,0);
/*!40000 ALTER TABLE `costobeneficio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costoefectividad`
--

DROP TABLE IF EXISTS `costoefectividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `costoefectividad` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ratio` double DEFAULT NULL,
  `unidadMedida` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costoefectividad`
--

LOCK TABLES `costoefectividad` WRITE;
/*!40000 ALTER TABLE `costoefectividad` DISABLE KEYS */;
INSERT INTO `costoefectividad` VALUES (1,3511,'alumno atendido'),(2,0,''),(3,51.41,'poblacion beneficiada'),(4,0,''),(5,30.95,'asistentes'),(6,0,''),(7,380.44,'habitante beneficiado'),(8,584,'promedio de poblacion beneficiada'),(9,1566.76,''),(10,711.42,'');
/*!40000 ALTER TABLE `costoefectividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadotramite`
--

DROP TABLE IF EXISTS `estadotramite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadotramite` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadotramite`
--

LOCK TABLES `estadotramite` WRITE;
/*!40000 ALTER TABLE `estadotramite` DISABLE KEYS */;
INSERT INTO `estadotramite` VALUES (1,'Aprobado','aprobado'),(2,'Pendiente','pendiente'),(3,'Rechazado','rechazado'),(4,'Pendiente Aprobacion','pendiente de aprobacion');
/*!40000 ALTER TABLE `estadotramite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadoviabilidad`
--

DROP TABLE IF EXISTS `estadoviabilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadoviabilidad` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadoviabilidad`
--

LOCK TABLES `estadoviabilidad` WRITE;
/*!40000 ALTER TABLE `estadoviabilidad` DISABLE KEYS */;
INSERT INTO `estadoviabilidad` VALUES (1,'Pendiente','Tramite aun pendiente'),(2,'Viable','Proyecto viable'),(3,'No Viable','Proyecto no viable');
/*!40000 ALTER TABLE `estadoviabilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuentefinanciamiento`
--

DROP TABLE IF EXISTS `fuentefinanciamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuentefinanciamiento` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(300) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuentefinanciamiento`
--

LOCK TABLES `fuentefinanciamiento` WRITE;
/*!40000 ALTER TABLE `fuentefinanciamiento` DISABLE KEYS */;
INSERT INTO `fuentefinanciamiento` VALUES (1,'RECURSOS ORDINARIOS',NULL),(2,'CANON Y SOBRECANON, REGALIAS, RENTA DE ADUANAS Y P',NULL),(3,'RECURSOS PROPIOS',NULL),(4,'FONDO DE COMPENSACION MUNICIPAL',NULL),(5,'DONACIONES Y TRANSFERENCIAS',NULL);
/*!40000 ALTER TABLE `fuentefinanciamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informetecnico`
--

DROP TABLE IF EXISTS `informetecnico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informetecnico` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `fechaCreacion` date DEFAULT NULL,
  `fechaAprobacion` date DEFAULT NULL,
  `fechaActualizacion` date DEFAULT NULL,
  `elaboradoPor` varchar(45) DEFAULT NULL,
  `revisadoPor` varchar(45) DEFAULT NULL,
  `aprobadoPor` varchar(45) DEFAULT NULL,
  `ProyectoPreInversion_codigo` int(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_informetecnico_proyectopreinversion1_idx` (`ProyectoPreInversion_codigo`),
  CONSTRAINT `fk_informetecnico_proyectopreinversion1` FOREIGN KEY (`ProyectoPreInversion_codigo`) REFERENCES `proyectopreinversion` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informetecnico`
--

LOCK TABLES `informetecnico` WRITE;
/*!40000 ALTER TABLE `informetecnico` DISABLE KEYS */;
/*!40000 ALTER TABLE `informetecnico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `montoinversiontotal`
--

DROP TABLE IF EXISTS `montoinversiontotal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `montoinversiontotal` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `precioMercado` double DEFAULT NULL,
  `precioSocial` double DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `montoinversiontotal`
--

LOCK TABLES `montoinversiontotal` WRITE;
/*!40000 ALTER TABLE `montoinversiontotal` DISABLE KEYS */;
INSERT INTO `montoinversiontotal` VALUES (1,5822959,4893243),(2,5159295,4041092),(3,7380562,6156521),(4,31817876,25136122),(5,4484557,3716146),(6,652432,486681),(7,2275612,1908873),(8,910887,769122),(9,1149188,828061),(10,1026982,874493);
/*!40000 ALTER TABLE `montoinversiontotal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectopreinversion`
--

DROP TABLE IF EXISTS `proyectopreinversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyectopreinversion` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `identificador` varchar(6) NOT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `fechaDeclaracionViabilidad` date DEFAULT NULL,
  `MontoComprometido` double DEFAULT '0',
  `MontoDevengado` double DEFAULT '0',
  `MontoEjecutado` double DEFAULT '0',
  `EstadoTramite_codigo` int(11) NOT NULL,
  `Requerimiento_codigo` int(11) NOT NULL,
  `EstadoViabilidad_codigo` int(11) NOT NULL,
  `Rubro_codigo` int(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_ProyectoPreInversion_Requerimiento1_idx` (`Requerimiento_codigo`),
  KEY `fk_ProyectoPreInversion_EstadoTramite1_idx` (`EstadoTramite_codigo`),
  KEY `fk_ProyectoPreInversion_EstadoViabilidad1_idx` (`EstadoViabilidad_codigo`),
  KEY `fk_ProyectoPreInversion_Rubro1_idx` (`Rubro_codigo`),
  CONSTRAINT `fk_ProyectoPreInversion_EstadoTramite1` FOREIGN KEY (`EstadoTramite_codigo`) REFERENCES `estadotramite` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProyectoPreInversion_EstadoViabilidad1` FOREIGN KEY (`EstadoViabilidad_codigo`) REFERENCES `estadoviabilidad` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProyectoPreInversion_Requerimiento1` FOREIGN KEY (`Requerimiento_codigo`) REFERENCES `Requerimiento` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProyectoPreInversion_Rubro1` FOREIGN KEY (`Rubro_codigo`) REFERENCES `rubro` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectopreinversion`
--

LOCK TABLES `proyectopreinversion` WRITE;
/*!40000 ALTER TABLE `proyectopreinversion` DISABLE KEYS */;
INSERT INTO `proyectopreinversion` VALUES (1,'P00001','2018-03-01','2019-03-31','2018-03-01',6048000,1500000,800000,2,1,1,3),(2,'P00002','2018-04-01','2019-01-31',NULL,NULL,NULL,NULL,2,2,1,4);
/*!40000 ALTER TABLE `proyectopreinversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubro`
--

DROP TABLE IF EXISTS `rubro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rubro` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `presupuestoAsignado` double DEFAULT NULL,
  `totalComprometido` double DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubro`
--

LOCK TABLES `rubro` WRITE;
/*!40000 ALTER TABLE `rubro` DISABLE KEYS */;
INSERT INTO `rubro` VALUES (1,'Cultura',5000000,NULL),(2,'Educacion',4000000000,NULL),(3,'Transporte',32055000000,NULL),(4,'Seguridad',25000000000,NULL),(5,'Servicios',320000000,NULL);
/*!40000 ALTER TABLE `rubro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubicacion`
--

DROP TABLE IF EXISTS `ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubicacion` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `departamento` varchar(100) NOT NULL,
  `provincia` varchar(100) NOT NULL,
  `localidad` varchar(100) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicacion`
--

LOCK TABLES `ubicacion` WRITE;
/*!40000 ALTER TABLE `ubicacion` DISABLE KEYS */;
INSERT INTO `ubicacion` VALUES (1,'puno','puno','Ciudad Universitaria de la UNA-Puno'),(2,'lima','huaral','huaral'),(3,'ica','ica','cc.pp. Urbano'),(4,'piura','piura','piura'),(5,'la libertad','trujillo','trujillo'),(6,'ancash','huari','chipta'),(7,'la libertad','trujillo','laredo'),(8,'piura','piura','piura'),(9,'cusco','chumbivilcas','livitaca'),(10,'ica','ica','BARRIO LOS MENDOZA Y CAMINO REAL');
/*!40000 ALTER TABLE `ubicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubicacionvalida`
--

DROP TABLE IF EXISTS `ubicacionvalida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubicacionvalida` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicacionvalida`
--

LOCK TABLES `ubicacionvalida` WRITE;
/*!40000 ALTER TABLE `ubicacionvalida` DISABLE KEYS */;
INSERT INTO `ubicacionvalida` VALUES (1,'ica'),(2,'lima'),(3,'piura'),(4,'cusco');
/*!40000 ALTER TABLE `ubicacionvalida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidadejecutoravalida`
--

DROP TABLE IF EXISTS `unidadejecutoravalida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidadejecutoravalida` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidadejecutoravalida`
--

LOCK TABLES `unidadejecutoravalida` WRITE;
/*!40000 ALTER TABLE `unidadejecutoravalida` DISABLE KEYS */;
INSERT INTO `unidadejecutoravalida` VALUES (1,'GERENCIA MUNICIPAL'),(2,'PROYECTOS DE INVERSION'),(3,'GERENCIA TERRITORIAL Y DE TRANSPORTES'),(4,'OFICINA DE PROGRAMACIÓN E INVERSIONES');
/*!40000 ALTER TABLE `unidadejecutoravalida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidadformuladora`
--

DROP TABLE IF EXISTS `unidadformuladora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidadformuladora` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidadformuladora`
--

LOCK TABLES `unidadformuladora` WRITE;
/*!40000 ALTER TABLE `unidadformuladora` DISABLE KEYS */;
INSERT INTO `unidadformuladora` VALUES (1,'UNIVERSIDAD NACIONAL DEL ALTIPLANO',''),(2,'SUB GERENCIA DE ESTUDIOS Y PLANEAMIENTO TERRITORIAL',''),(3,'GERENCIA REGIONAL DE INFRAESTRUCTURA',''),(4,'GERENCIA TERRITORIAL Y DE TRANSPORTES',''),(5,'SUB GERENCIA DE PROYECTOS',''),(6,'UNIDAD FORMULADORA DE LA GERENCIA DE DESARROLLO ECONOMICO Y AMBIENTAL',''),(7,'GERENCIA MUNICIPAL',''),(8,'GERENCIA TERRITORIAL Y DE TRANSPORTES',''),(9,'PROYECTOS DE INVERSION',''),(10,'OFICINA DE PROGRAMACIÓN E INVERSIONES','');
/*!40000 ALTER TABLE `unidadformuladora` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-06  0:02:41
