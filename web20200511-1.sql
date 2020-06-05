-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: web
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agenda_medica`
--

DROP TABLE IF EXISTS `agenda_medica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agenda_medica` (
  `agend_cod_1` int NOT NULL AUTO_INCREMENT,
  `cupo` int NOT NULL,
  `agen_hora_final` time NOT NULL,
  `agenda_observ` varchar(100) NOT NULL,
  `agenda_hora_inicio` time NOT NULL,
  `dias_cod` int NOT NULL,
  `espec_cod_2` int NOT NULL,
  `medico_cod_2` int NOT NULL,
  `agent_medi_estado` varchar(5) NOT NULL,
  PRIMARY KEY (`agend_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda_medica`
--

LOCK TABLES `agenda_medica` WRITE;
/*!40000 ALTER TABLE `agenda_medica` DISABLE KEYS */;
/*!40000 ALTER TABLE `agenda_medica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ajustes`
--

DROP TABLE IF EXISTS `ajustes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ajustes` (
  `cod_ajustes` int NOT NULL AUTO_INCREMENT,
  `estado_ajuste` varchar(15) NOT NULL,
  `obs_ajustes` varchar(100) NOT NULL,
  `sucursal_cod` int NOT NULL,
  `usuario_cod_1` int NOT NULL,
  `cod_motivo` int NOT NULL,
  PRIMARY KEY (`cod_ajustes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ajustes`
--

LOCK TABLES `ajustes` WRITE;
/*!40000 ALTER TABLE `ajustes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ajustes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apertura_caja`
--

DROP TABLE IF EXISTS `apertura_caja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apertura_caja` (
  `aper_cod_1` int NOT NULL AUTO_INCREMENT,
  `aper_fecha` date NOT NULL,
  `aper_hora` time NOT NULL,
  `aper_monto` int NOT NULL,
  `cierre_fecha` date NOT NULL,
  `cierre_hora` time NOT NULL,
  `cierre_monto` int NOT NULL,
  `caja_cod` int NOT NULL,
  `usuario_cod` int NOT NULL,
  PRIMARY KEY (`aper_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apertura_caja`
--

LOCK TABLES `apertura_caja` WRITE;
/*!40000 ALTER TABLE `apertura_caja` DISABLE KEYS */;
/*!40000 ALTER TABLE `apertura_caja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area` (
  `area_cod_1` int NOT NULL AUTO_INCREMENT,
  `area_descr` varchar(40) NOT NULL,
  PRIMARY KEY (`area_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencia` (
  `asis_cod_1` int NOT NULL AUTO_INCREMENT,
  `hora_entra` datetime NOT NULL,
  `hora_salida` datetime NOT NULL,
  `medico_cod_3` int NOT NULL,
  `fun_cod_1` int NOT NULL,
  PRIMARY KEY (`asis_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banco`
--

DROP TABLE IF EXISTS `banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banco` (
  `banco_cod` int NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(60) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `telefono` varchar(25) NOT NULL,
  PRIMARY KEY (`banco_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco`
--

LOCK TABLES `banco` WRITE;
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caja`
--

DROP TABLE IF EXISTS `caja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caja` (
  `caja_cod_1` int NOT NULL AUTO_INCREMENT,
  `caja_desc` varchar(25) NOT NULL,
  `caja_estad` varchar(5) NOT NULL,
  `ultima_factur` int NOT NULL,
  PRIMARY KEY (`caja_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caja`
--

LOCK TABLES `caja` WRITE;
/*!40000 ALTER TABLE `caja` DISABLE KEYS */;
/*!40000 ALTER TABLE `caja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `cargo_cod_1` int NOT NULL AUTO_INCREMENT,
  `cargo_des` varchar(40) NOT NULL,
  PRIMARY KEY (`cargo_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cobro_tarjet`
--

DROP TABLE IF EXISTS `cobro_tarjet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cobro_tarjet` (
  `tarjeta_cod_2` int NOT NULL,
  `nro_tarje` int NOT NULL,
  `nro_aut` int NOT NULL,
  `impor_tarjeta` int NOT NULL,
  PRIMARY KEY (`tarjeta_cod_2`,`nro_tarje`,`nro_aut`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cobro_tarjet`
--

LOCK TABLES `cobro_tarjet` WRITE;
/*!40000 ALTER TABLE `cobro_tarjet` DISABLE KEYS */;
/*!40000 ALTER TABLE `cobro_tarjet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cod_com`
--

DROP TABLE IF EXISTS `cod_com`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cod_com` (
  `cod_com` int NOT NULL AUTO_INCREMENT,
  `num_fact_com` int NOT NULL,
  `estado_com` varchar(15) NOT NULL,
  `fecha_com` date NOT NULL,
  `tipo_pago_cod` int NOT NULL,
  `usuario_cod_1` int NOT NULL,
  `cod_prov` int NOT NULL,
  `sucursal_cod` int NOT NULL,
  PRIMARY KEY (`cod_com`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cod_com`
--

LOCK TABLES `cod_com` WRITE;
/*!40000 ALTER TABLE `cod_com` DISABLE KEYS */;
/*!40000 ALTER TABLE `cod_com` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta` (
  `cons_cod_1` int NOT NULL AUTO_INCREMENT,
  `cons_descrip` varchar(250) NOT NULL,
  `talla` decimal(10,0) NOT NULL,
  `peso` decimal(10,0) NOT NULL,
  `temperatura` decimal(10,0) NOT NULL,
  `medico_cod` int NOT NULL,
  `pac_cod_1` int NOT NULL,
  `fecha_consulta` date NOT NULL,
  PRIMARY KEY (`cons_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas_pagar`
--

DROP TABLE IF EXISTS `cuentas_pagar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas_pagar` (
  `cuentas_pagar_cod` int NOT NULL AUTO_INCREMENT,
  `importe_pagar` int NOT NULL,
  `fecha_venc` date NOT NULL,
  `estado` varchar(15) NOT NULL,
  `cod_com` int NOT NULL,
  `usuario_cod_1` int NOT NULL,
  `nro_cuotas` int NOT NULL,
  `compras_cod_com` int NOT NULL,
  PRIMARY KEY (`cuentas_pagar_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_pagar`
--

LOCK TABLES `cuentas_pagar` WRITE;
/*!40000 ALTER TABLE `cuentas_pagar` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuentas_pagar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposito`
--

DROP TABLE IF EXISTS `deposito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposito` (
  `deposito_cod` int NOT NULL,
  `desp_descri` varchar(45) NOT NULL,
  PRIMARY KEY (`deposito_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposito`
--

LOCK TABLES `deposito` WRITE;
/*!40000 ALTER TABLE `deposito` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `det_fact`
--

DROP TABLE IF EXISTS `det_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `det_fact` (
  `factura_cod_2` int NOT NULL,
  `servicios_cod_1` int NOT NULL,
  `det_fact_cant` int NOT NULL,
  `det_fact_precio` int NOT NULL,
  `det_fact_exe` int NOT NULL,
  `det_fact_grav5` int NOT NULL,
  `det_fact_grav10` int NOT NULL,
  PRIMARY KEY (`factura_cod_2`,`servicios_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `det_fact`
--

LOCK TABLES `det_fact` WRITE;
/*!40000 ALTER TABLE `det_fact` DISABLE KEYS */;
/*!40000 ALTER TABLE `det_fact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dias`
--

DROP TABLE IF EXISTS `dias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dias` (
  `dias_cod_1` int NOT NULL AUTO_INCREMENT,
  `dias_descrip` varchar(15) NOT NULL,
  PRIMARY KEY (`dias_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dias`
--

LOCK TABLES `dias` WRITE;
/*!40000 ALTER TABLE `dias` DISABLE KEYS */;
/*!40000 ALTER TABLE `dias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidades` (
  `espec_cod_1` int NOT NULL AUTO_INCREMENT,
  `espec_descrip` varchar(40) NOT NULL,
  PRIMARY KEY (`espec_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades`
--

LOCK TABLES `especialidades` WRITE;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `especialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `factura_cod_` int NOT NULL AUTO_INCREMENT,
  `fact_nro` int NOT NULL,
  `fact_fecha` date NOT NULL,
  `fact_estado` varchar(5) NOT NULL,
  `fact_iva5` int NOT NULL,
  `fact_iva10` int NOT NULL,
  `pac_cod` int NOT NULL,
  `aper_cod_2` int NOT NULL,
  `fun_cod_2` int NOT NULL,
  `tipo_fac_cod` int NOT NULL,
  `sucursal_cod` int NOT NULL,
  PRIMARY KEY (`factura_cod_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `fun_cod_1` int NOT NULL AUTO_INCREMENT,
  `fun_nombre` varchar(40) NOT NULL,
  `fun_apellido` varchar(40) NOT NULL,
  `func_telef` varchar(20) NOT NULL,
  `cargo_cod` int NOT NULL,
  `area_cod` int NOT NULL,
  PRIMARY KEY (`fun_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iva_compra`
--

DROP TABLE IF EXISTS `iva_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iva_compra` (
  `cod_iva_com` int NOT NULL AUTO_INCREMENT,
  `iva_compras` varchar(10) NOT NULL,
  `cod_com` int NOT NULL,
  PRIMARY KEY (`cod_iva_com`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iva_compra`
--

LOCK TABLES `iva_compra` WRITE;
/*!40000 ALTER TABLE `iva_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `iva_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iva_venta`
--

DROP TABLE IF EXISTS `iva_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iva_venta` (
  `iva_venta_cod` int NOT NULL AUTO_INCREMENT,
  `iva_venta` int NOT NULL,
  `factura_cod_` int NOT NULL,
  PRIMARY KEY (`iva_venta_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iva_venta`
--

LOCK TABLES `iva_venta` WRITE;
/*!40000 ALTER TABLE `iva_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `iva_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro_compras`
--

DROP TABLE IF EXISTS `libro_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro_compras` (
  `libro_com_det` int NOT NULL AUTO_INCREMENT,
  `cod_com` int NOT NULL,
  `cod_prov` int NOT NULL,
  `tipo_nota_cod` int NOT NULL,
  PRIMARY KEY (`libro_com_det`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro_compras`
--

LOCK TABLES `libro_compras` WRITE;
/*!40000 ALTER TABLE `libro_compras` DISABLE KEYS */;
/*!40000 ALTER TABLE `libro_compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca_tarje`
--

DROP TABLE IF EXISTS `marca_tarje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca_tarje` (
  `marca_tarje_cod_1` int NOT NULL AUTO_INCREMENT,
  `marca_tarje_descrip` varchar(50) NOT NULL,
  PRIMARY KEY (`marca_tarje_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca_tarje`
--

LOCK TABLES `marca_tarje` WRITE;
/*!40000 ALTER TABLE `marca_tarje` DISABLE KEYS */;
/*!40000 ALTER TABLE `marca_tarje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico` (
  `medico_cod_1` int NOT NULL AUTO_INCREMENT,
  `medic_nombre` varchar(30) NOT NULL,
  `medic_apellido` varchar(40) NOT NULL,
  `medic_direcc` varchar(55) NOT NULL,
  `medic_telef` varchar(25) NOT NULL,
  `medic_ci` varchar(20) NOT NULL,
  PRIMARY KEY (`medico_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico_especialidad`
--

DROP TABLE IF EXISTS `medico_especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico_especialidad` (
  `espec_cod_1` int NOT NULL,
  `medico_cod_1` int NOT NULL,
  PRIMARY KEY (`espec_cod_1`,`medico_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico_especialidad`
--

LOCK TABLES `medico_especialidad` WRITE;
/*!40000 ALTER TABLE `medico_especialidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `medico_especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mercaderia`
--

DROP TABLE IF EXISTS `mercaderia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mercaderia` (
  `mercaderia_cod` int NOT NULL,
  `merca_descr` varchar(50) NOT NULL,
  `merc_preciov` int NOT NULL,
  `precioc` int NOT NULL,
  `cod_prov` int NOT NULL,
  PRIMARY KEY (`mercaderia_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mercaderia`
--

LOCK TABLES `mercaderia` WRITE;
/*!40000 ALTER TABLE `mercaderia` DISABLE KEYS */;
/*!40000 ALTER TABLE `mercaderia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2019_08_19_000000_create_failed_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motivo_ajuste`
--

DROP TABLE IF EXISTS `motivo_ajuste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `motivo_ajuste` (
  `cod_motivo` int NOT NULL AUTO_INCREMENT,
  `motivo_descr` varchar(100) NOT NULL,
  PRIMARY KEY (`cod_motivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motivo_ajuste`
--

LOCK TABLES `motivo_ajuste` WRITE;
/*!40000 ALTER TABLE `motivo_ajuste` DISABLE KEYS */;
/*!40000 ALTER TABLE `motivo_ajuste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_cred_deb_pago`
--

DROP TABLE IF EXISTS `nota_cred_deb_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nota_cred_deb_pago` (
  `nota_cred_deb_pag_cod` int NOT NULL AUTO_INCREMENT,
  `pago_cod` int NOT NULL,
  `concepto_pago` varchar(100) NOT NULL,
  `fecha_pag` date NOT NULL,
  `estado_pago` varchar(15) NOT NULL,
  PRIMARY KEY (`nota_cred_deb_pag_cod`,`pago_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_cred_deb_pago`
--

LOCK TABLES `nota_cred_deb_pago` WRITE;
/*!40000 ALTER TABLE `nota_cred_deb_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota_cred_deb_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_cred_deb_prod`
--

DROP TABLE IF EXISTS `nota_cred_deb_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nota_cred_deb_prod` (
  `cod_nota_cred_prod` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `condicion` varchar(20) NOT NULL,
  `estado_nota_cred` varchar(15) NOT NULL,
  `usuario_cod_1` int NOT NULL,
  `sucursal_cod` int NOT NULL,
  `tipo_nota_cod` int NOT NULL,
  `factura_cod_` int NOT NULL,
  PRIMARY KEY (`cod_nota_cred_prod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_cred_deb_prod`
--

LOCK TABLES `nota_cred_deb_prod` WRITE;
/*!40000 ALTER TABLE `nota_cred_deb_prod` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota_cred_deb_prod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_compras`
--

DROP TABLE IF EXISTS `orden_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden_compras` (
  `orden_cod` int NOT NULL AUTO_INCREMENT,
  `fechaorden` date NOT NULL,
  `estado_orden` varchar(45) NOT NULL,
  `cod_prov` int NOT NULL,
  `cod_pedido` int NOT NULL,
  `usuario_cod_1` int NOT NULL,
  `sucursal_cod` int NOT NULL,
  PRIMARY KEY (`orden_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_compras`
--

LOCK TABLES `orden_compras` WRITE;
/*!40000 ALTER TABLE `orden_compras` DISABLE KEYS */;
/*!40000 ALTER TABLE `orden_compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes`
--

DROP TABLE IF EXISTS `ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenes` (
  `ordenes_cod_1` int NOT NULL AUTO_INCREMENT,
  `ordenes_descrip` varchar(100) NOT NULL,
  `fecha_orden` date NOT NULL,
  `estado_orden` varchar(15) NOT NULL,
  `usuario_cod_1` int NOT NULL,
  `espec_cod_1` int NOT NULL,
  `medico_cod_1` int NOT NULL,
  `pac_cod_1` int NOT NULL,
  PRIMARY KEY (`ordenes_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `pac_cod` int NOT NULL AUTO_INCREMENT,
  `pac_ci` int NOT NULL,
  `pac_apellido` varchar(30) NOT NULL,
  `pac_nombre` varchar(30) NOT NULL,
  `pac_fech_nac` date NOT NULL,
  `pac_direccion` varchar(60) NOT NULL,
  `pac_telef` varchar(20) NOT NULL,
  `pac_ocupacion` varchar(40) NOT NULL,
  PRIMARY KEY (`pac_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago` (
  `pago_cod` int NOT NULL AUTO_INCREMENT,
  `cod_nota_cred_prod` int NOT NULL,
  `fech_pago` date NOT NULL,
  `fecha` date NOT NULL,
  `estado_pago` varchar(15) NOT NULL,
  `importe_pago` int NOT NULL,
  `sucursal_cod` int NOT NULL,
  `aper_cod_1` int NOT NULL,
  `usuario_cod_1` int NOT NULL,
  `caja_cod_1` int NOT NULL,
  PRIMARY KEY (`pago_cod`,`cod_nota_cred_prod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_cheque`
--

DROP TABLE IF EXISTS `pago_cheque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago_cheque` (
  `pago_cheq_cod_1` int NOT NULL,
  `pago_cod` int NOT NULL,
  `cod_nota_cred_prod` int NOT NULL,
  `monto_cheque` int NOT NULL,
  `fecha_emision` date NOT NULL,
  `fecha_ven` date NOT NULL,
  `nro_cheque` int NOT NULL,
  `titular_cod` int NOT NULL,
  `banco_cod` int NOT NULL,
  PRIMARY KEY (`pago_cheq_cod_1`,`pago_cod`,`cod_nota_cred_prod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_cheque`
--

LOCK TABLES `pago_cheque` WRITE;
/*!40000 ALTER TABLE `pago_cheque` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago_cheque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `cod_pedido` int NOT NULL,
  `ped_fecha` date NOT NULL,
  `ped_estado` varchar(15) NOT NULL,
  `usuario_cod_1` int NOT NULL,
  `sucursal_cod` int NOT NULL,
  PRIMARY KEY (`cod_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presupuesto`
--

DROP TABLE IF EXISTS `presupuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presupuesto` (
  `presu_cod` int NOT NULL AUTO_INCREMENT,
  `fecha_presu` date NOT NULL,
  `usuario_cod_1` int NOT NULL,
  `tipo_pres_cod` int NOT NULL,
  `pac_cod_1` int NOT NULL,
  PRIMARY KEY (`presu_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presupuesto`
--

LOCK TABLES `presupuesto` WRITE;
/*!40000 ALTER TABLE `presupuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `presupuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `cod_prov` int NOT NULL,
  `prov_descr` varchar(45) NOT NULL,
  `prov_ruc` varchar(45) NOT NULL,
  `prov_direcc` varchar(60) NOT NULL,
  `prov_telefono` varchar(25) NOT NULL,
  PRIMARY KEY (`cod_prov`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recauda_a_depos`
--

DROP TABLE IF EXISTS `recauda_a_depos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recauda_a_depos` (
  `recaud_a_depo_cod` int NOT NULL AUTO_INCREMENT,
  `recau_des_fecha` date NOT NULL,
  `recaud_des_montoefec` int NOT NULL,
  `aper_cod_1` int NOT NULL,
  PRIMARY KEY (`recaud_a_depo_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recauda_a_depos`
--

LOCK TABLES `recauda_a_depos` WRITE;
/*!40000 ALTER TABLE `recauda_a_depos` DISABLE KEYS */;
/*!40000 ALTER TABLE `recauda_a_depos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receta`
--

DROP TABLE IF EXISTS `receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receta` (
  `receta_cod_1` int NOT NULL AUTO_INCREMENT,
  `fecha_rece` date NOT NULL,
  `fecha_rece_ven` date NOT NULL,
  `receta_descr` varchar(150) NOT NULL,
  `receta_observa` varchar(200) NOT NULL,
  `pac_cod` int NOT NULL,
  `medico_cod_1` int NOT NULL,
  `usuario_cod_1` int NOT NULL,
  PRIMARY KEY (`receta_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta`
--

LOCK TABLES `receta` WRITE;
/*!40000 ALTER TABLE `receta` DISABLE KEYS */;
/*!40000 ALTER TABLE `receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios` (
  `servicios_cod_1` int NOT NULL AUTO_INCREMENT,
  `servi_precio` int NOT NULL,
  `servi_descripcion` varchar(50) NOT NULL,
  `tipo_imp_cod` int NOT NULL,
  PRIMARY KEY (`servicios_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `mercaderia_cod` int NOT NULL,
  `deposito_cod` int NOT NULL,
  `sucursal_cod` int NOT NULL,
  `stock_cantidad` varchar(20) NOT NULL,
  PRIMARY KEY (`mercaderia_cod`,`deposito_cod`,`sucursal_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursal` (
  `sucursal_cod` int NOT NULL,
  `sucu_descr` varchar(45) NOT NULL,
  PRIMARY KEY (`sucursal_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjet_emisor`
--

DROP TABLE IF EXISTS `tarjet_emisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarjet_emisor` (
  `tarjet_emisor_cod_1` int NOT NULL AUTO_INCREMENT,
  `tarjet_emisor_descrip` varchar(50) NOT NULL,
  PRIMARY KEY (`tarjet_emisor_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjet_emisor`
--

LOCK TABLES `tarjet_emisor` WRITE;
/*!40000 ALTER TABLE `tarjet_emisor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarjet_emisor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjeta`
--

DROP TABLE IF EXISTS `tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarjeta` (
  `tarjeta_cod_1` int NOT NULL AUTO_INCREMENT,
  `tipo_tarj_cod` int NOT NULL,
  `marca_tarje_cod` int NOT NULL,
  `tarjet_emisor_cod` int NOT NULL,
  PRIMARY KEY (`tarjeta_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjeta`
--

LOCK TABLES `tarjeta` WRITE;
/*!40000 ALTER TABLE `tarjeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_factura`
--

DROP TABLE IF EXISTS `tipo_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_factura` (
  `tipo_fac_cod` int NOT NULL AUTO_INCREMENT,
  `tipo_fact_descr` varchar(25) NOT NULL,
  PRIMARY KEY (`tipo_fac_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_factura`
--

LOCK TABLES `tipo_factura` WRITE;
/*!40000 ALTER TABLE `tipo_factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_impuesto`
--

DROP TABLE IF EXISTS `tipo_impuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_impuesto` (
  `tipo_imp_cod` int NOT NULL AUTO_INCREMENT,
  `tipo_imp_descrip` varchar(50) NOT NULL,
  `porcentaje` int NOT NULL,
  `fecha_ajuste` date NOT NULL,
  PRIMARY KEY (`tipo_imp_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_impuesto`
--

LOCK TABLES `tipo_impuesto` WRITE;
/*!40000 ALTER TABLE `tipo_impuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_impuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_nota`
--

DROP TABLE IF EXISTS `tipo_nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_nota` (
  `tipo_nota_cod` int NOT NULL AUTO_INCREMENT,
  `tipo_nota_descr` varchar(50) NOT NULL,
  PRIMARY KEY (`tipo_nota_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_nota`
--

LOCK TABLES `tipo_nota` WRITE;
/*!40000 ALTER TABLE `tipo_nota` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_pago`
--

DROP TABLE IF EXISTS `tipo_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_pago` (
  `tipo_pago_cod` int NOT NULL AUTO_INCREMENT,
  `tipo_pago_desc` varchar(20) NOT NULL,
  PRIMARY KEY (`tipo_pago_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_pago`
--

LOCK TABLES `tipo_pago` WRITE;
/*!40000 ALTER TABLE `tipo_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_presu`
--

DROP TABLE IF EXISTS `tipo_presu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_presu` (
  `tipo_pres_cod` int NOT NULL AUTO_INCREMENT,
  `tipo_pres_descr` varchar(45) NOT NULL,
  `monto_presu` varchar(50) NOT NULL,
  PRIMARY KEY (`tipo_pres_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_presu`
--

LOCK TABLES `tipo_presu` WRITE;
/*!40000 ALTER TABLE `tipo_presu` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_presu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_tarje`
--

DROP TABLE IF EXISTS `tipo_tarje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_tarje` (
  `tipo_tarj_cod_1` int NOT NULL AUTO_INCREMENT,
  `tipo_tarj_descr` varchar(45) NOT NULL,
  PRIMARY KEY (`tipo_tarj_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_tarje`
--

LOCK TABLES `tipo_tarje` WRITE;
/*!40000 ALTER TABLE `tipo_tarje` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_tarje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_tratamiento`
--

DROP TABLE IF EXISTS `tipo_tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_tratamiento` (
  `tipo_tra_cod` int NOT NULL AUTO_INCREMENT,
  `descr_tipo_trata` varchar(50) NOT NULL,
  PRIMARY KEY (`tipo_tra_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_tratamiento`
--

LOCK TABLES `tipo_tratamiento` WRITE;
/*!40000 ALTER TABLE `tipo_tratamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_usuario` (
  `tipo_usu_cod` int NOT NULL AUTO_INCREMENT,
  `tipo_usu_descr` varchar(25) NOT NULL,
  PRIMARY KEY (`tipo_usu_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuario`
--

LOCK TABLES `tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_vacuna`
--

DROP TABLE IF EXISTS `tipo_vacuna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_vacuna` (
  `vacuna_cod` int NOT NULL AUTO_INCREMENT,
  `vac_descrip` varchar(500) NOT NULL,
  PRIMARY KEY (`vacuna_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_vacuna`
--

LOCK TABLES `tipo_vacuna` WRITE;
/*!40000 ALTER TABLE `tipo_vacuna` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_vacuna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titular`
--

DROP TABLE IF EXISTS `titular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `titular` (
  `titular_cod` int NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(100) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `telefono` varchar(25) NOT NULL,
  PRIMARY KEY (`titular_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titular`
--

LOCK TABLES `titular` WRITE;
/*!40000 ALTER TABLE `titular` DISABLE KEYS */;
/*!40000 ALTER TABLE `titular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tratamiento`
--

DROP TABLE IF EXISTS `tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tratamiento` (
  `trata_cod` int NOT NULL AUTO_INCREMENT,
  `obser_tratamiento` varchar(120) NOT NULL,
  `tipo_tra_cod` int NOT NULL,
  `pac_cod` int NOT NULL,
  `usuario_cod_1` int NOT NULL,
  `medico_cod_1` int NOT NULL,
  PRIMARY KEY (`trata_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamiento`
--

LOCK TABLES `tratamiento` WRITE;
/*!40000 ALTER TABLE `tratamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno`
--

DROP TABLE IF EXISTS `turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turno` (
  `turno_cod` int NOT NULL AUTO_INCREMENT,
  `turno_estado` varchar(8) NOT NULL,
  `turno_fecha` date NOT NULL,
  `turno_max` int NOT NULL,
  `turno_min` int NOT NULL,
  `turno_hora` datetime NOT NULL,
  `fun_cod` int NOT NULL,
  `agend_cod` int NOT NULL,
  `servicios_cod_1` int NOT NULL,
  PRIMARY KEY (`turno_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno`
--

LOCK TABLES `turno` WRITE;
/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno_detalle`
--

DROP TABLE IF EXISTS `turno_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turno_detalle` (
  `turno_cod` int NOT NULL,
  `pac_cod_1` int NOT NULL,
  `horapaciente` time NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`turno_cod`,`pac_cod_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno_detalle`
--

LOCK TABLES `turno_detalle` WRITE;
/*!40000 ALTER TABLE `turno_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `turno_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Sergio','sergojavier23@gmail.com',NULL,'$2y$10$s7WrcK.KwBbmJuAKdqcH1.TXCva1EogkcMaajR5AnAj9EDApvsMuq',NULL,'2020-05-06 23:57:08','2020-05-06 23:57:08'),(2,'admin','sergojavier23@hotmail.com',NULL,'$2y$10$4KbB/RhbxAtD6vOgnN.uJO4/Yt1bkjPvXXJveQkSacIGyBmU5mY12',NULL,'2020-05-07 01:27:12','2020-05-07 01:27:12'),(3,'juan','samarilla@conacyt.gov.py',NULL,'$2y$10$L2qhbd/80Ka60ASqW4ujzOkkekVc0qGpUcJVt961Q8ONumdi5OgHe',NULL,'2020-05-07 15:11:06','2020-05-07 15:11:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `usuario_cod_1` int NOT NULL AUTO_INCREMENT,
  `usu_contrs` varchar(10) NOT NULL,
  `usu_estado` varchar(8) NOT NULL,
  `usu_nick` varchar(10) NOT NULL,
  `usu_hora` datetime NOT NULL,
  `tipo_usu_cod` int NOT NULL,
  PRIMARY KEY (`usuario_cod_1`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'123','activo','sergio','0000-00-00 00:00:00',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacunacion`
--

DROP TABLE IF EXISTS `vacunacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacunacion` (
  `vac_cod` int NOT NULL AUTO_INCREMENT,
  `vacuna_cod` int NOT NULL,
  `pac_cod` int NOT NULL,
  `usuario_cod_1` int NOT NULL,
  `fecha_vacu` date NOT NULL,
  PRIMARY KEY (`vac_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacunacion`
--

LOCK TABLES `vacunacion` WRITE;
/*!40000 ALTER TABLE `vacunacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `vacunacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'web'
--

--
-- Dumping routines for database 'web'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-11 22:13:16
