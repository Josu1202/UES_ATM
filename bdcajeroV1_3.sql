-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2025 at 07:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdcajero`
--

-- --------------------------------------------------------

--
-- Table structure for table `cuentas`
--

CREATE TABLE `cuentas` (
  `id_cuenta` int(11) NOT NULL,
  `numero_cuenta` char(10) DEFAULT NULL,
  `tipo` enum('corriente','ahorro') DEFAULT NULL,
  `banco` varchar(100) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cuentas`
--

INSERT INTO `cuentas` (`id_cuenta`, `numero_cuenta`, `tipo`, `banco`, `id_usuario`, `saldo`) VALUES
(1, '1551660229', 'ahorro', 'Banco Unión', 1, 402.00),
(2, '1544455826', 'ahorro', 'Banco Móvil', 2, 1230.00),
(3, '1294272058', 'corriente', 'Banco Móvil', 3, 97.00),
(4, '1603443364', 'ahorro', 'Banco Central', 4, 1049.00),
(5, '1652691491', 'corriente', 'Banco Móvil', 5, 100.00),
(6, '1716532514', 'corriente', 'Banco Móvil', 6, 148.00),
(7, '1397853553', 'ahorro', 'Banco Exprés', 7, 257.00),
(8, '1980555472', 'corriente', 'Banco Unión', 8, 645.00),
(9, '1833328139', 'ahorro', 'Banco Móvil', 9, 345.00),
(10, '1986406836', 'corriente', 'Banco Exprés', 10, 979.00),
(11, '1962396613', 'corriente', 'Banco Exprés', 11, 622.00),
(12, '1187686358', 'corriente', 'Banco Exprés', 12, 134.00),
(13, '1938406330', 'ahorro', 'Banco Central', 13, 586.00),
(14, '1738957188', 'ahorro', 'Banco Exprés', 14, 560.00),
(15, '1981545078', 'ahorro', 'Banco Móvil', 15, 404.00),
(16, '1505683747', 'ahorro', 'Banco Móvil', 16, 988.00),
(17, '1485263567', 'ahorro', 'Banco Central', 17, 984.00),
(18, '1341041408', 'ahorro', 'Banco Móvil', 18, 928.00),
(19, '1031334682', 'ahorro', 'Banco Unión', 19, 722.00),
(20, '1540262424', 'corriente', 'Banco Unión', 20, 386.00),
(21, '1528800273', 'corriente', 'Banco Unión', 21, 324.00),
(22, '1123292117', 'ahorro', 'Banco Central', 22, 262.00),
(23, '1974380191', 'ahorro', 'Banco del Pueblo', 23, 264.00),
(24, '1442640002', 'corriente', 'Banco Exprés', 24, 294.00),
(25, '1740670706', 'ahorro', 'Banco Móvil', 25, 231.00),
(26, '1767313259', 'ahorro', 'Banco Móvil', 26, 735.00),
(27, '1038805270', 'corriente', 'Banco del Pueblo', 27, 669.00),
(28, '1118919304', 'ahorro', 'Banco Exprés', 28, 166.00),
(29, '1162012939', 'ahorro', 'Banco Central', 29, 959.00),
(30, '1804960570', 'corriente', 'Banco Móvil', 30, 576.00),
(31, '1994061489', 'ahorro', 'Banco del Pueblo', 31, 224.00),
(32, '1319703030', 'corriente', 'Banco Unión', 32, 615.00),
(33, '1783687286', 'corriente', 'Banco Central', 33, 300.00),
(34, '1180041900', 'ahorro', 'Banco Unión', 34, 347.00),
(35, '1344926467', 'ahorro', 'Banco Móvil', 35, 954.00),
(36, '1179658606', 'corriente', 'Banco Unión', 36, 712.00),
(37, '1887640664', 'ahorro', 'Banco del Pueblo', 37, 295.00),
(38, '1716930837', 'corriente', 'Banco Móvil', 38, 839.00),
(39, '1336237061', 'ahorro', 'Banco Central', 39, 787.00),
(40, '1887761864', 'corriente', 'Banco Central', 40, 897.00),
(41, '1262983127', 'ahorro', 'Banco Exprés', 41, 534.00),
(42, '1435857528', 'ahorro', 'Banco Unión', 42, 354.00),
(43, '1333356446', 'corriente', 'Banco Exprés', 43, 831.00),
(44, '1658494619', 'ahorro', 'Banco Unión', 44, 256.00),
(45, '1026464535', 'corriente', 'Banco Móvil', 45, 320.00),
(46, '1822235311', 'ahorro', 'Banco Central', 46, 242.00),
(47, '1712794710', 'corriente', 'Banco Exprés', 47, 304.00),
(48, '1846473794', 'corriente', 'Banco del Pueblo', 48, 822.00),
(49, '1882238331', 'corriente', 'Banco Móvil', 49, 989.00),
(50, '1163758496', 'corriente', 'Banco Móvil', 50, 604.00),
(51, '1703476175', 'ahorro', 'Banco Exprés', 53, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `pagos_servicios`
--

CREATE TABLE `pagos_servicios` (
  `id_pago` int(11) NOT NULL,
  `tipo_servicio` enum('agua','luz','telefono') DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL CHECK (`monto` <= 50.00),
  `fecha_pago` datetime DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pagos_servicios`
--

INSERT INTO `pagos_servicios` (`id_pago`, `tipo_servicio`, `monto`, `fecha_pago`, `id_usuario`) VALUES
(1, 'luz', 2.00, '2025-05-29 06:32:03', 1),
(2, 'luz', 45.00, '2025-05-29 06:32:03', 2),
(3, 'luz', 41.00, '2025-05-29 06:32:03', 3),
(4, 'luz', 21.00, '2025-05-29 06:32:03', 4),
(5, 'telefono', 11.00, '2025-05-29 06:32:03', 5),
(6, 'telefono', 4.00, '2025-05-29 06:32:03', 6),
(7, 'luz', 23.00, '2025-05-29 06:32:03', 7),
(8, 'luz', 33.00, '2025-05-29 06:32:03', 8),
(9, 'luz', 47.00, '2025-05-29 06:32:03', 9),
(10, 'agua', 12.00, '2025-05-29 06:32:03', 10),
(11, 'luz', 40.00, '2025-05-29 06:32:03', 11),
(12, 'luz', 13.00, '2025-05-29 06:32:03', 12),
(13, 'luz', 29.00, '2025-05-29 06:32:03', 13),
(14, 'luz', 10.00, '2025-05-29 06:32:03', 14),
(15, 'telefono', 13.00, '2025-05-29 06:32:03', 15),
(16, 'agua', 34.00, '2025-05-29 06:32:03', 16),
(17, 'telefono', 25.00, '2025-05-29 06:32:03', 17),
(18, 'telefono', 31.00, '2025-05-29 06:32:03', 18),
(19, 'telefono', 49.00, '2025-05-29 06:32:03', 19),
(20, 'luz', 4.00, '2025-05-29 06:32:03', 20),
(21, 'luz', 24.00, '2025-05-29 06:32:03', 21),
(22, 'luz', 11.00, '2025-05-29 06:32:03', 22),
(23, 'agua', 34.00, '2025-05-29 06:32:03', 23),
(24, 'luz', 47.00, '2025-05-29 06:32:03', 24),
(25, 'telefono', 44.00, '2025-05-29 06:32:03', 25),
(26, 'agua', 42.00, '2025-05-29 06:32:03', 26),
(27, 'luz', 24.00, '2025-05-29 06:32:03', 27),
(28, 'agua', 43.00, '2025-05-29 06:32:03', 28),
(29, 'agua', 40.00, '2025-05-29 06:32:03', 29),
(30, 'luz', 47.00, '2025-05-29 06:32:03', 30),
(31, 'telefono', 50.00, '2025-05-29 06:32:03', 31),
(32, 'luz', 50.00, '2025-05-29 06:32:03', 32),
(33, 'agua', 36.00, '2025-05-29 06:32:03', 33),
(34, 'luz', 1.00, '2025-05-29 06:32:04', 34),
(35, 'agua', 34.00, '2025-05-29 06:32:04', 35),
(36, 'telefono', 45.00, '2025-05-29 06:32:04', 36),
(37, 'agua', 47.00, '2025-05-29 06:32:04', 37),
(38, 'agua', 48.00, '2025-05-29 06:32:04', 38),
(39, 'luz', 10.00, '2025-05-29 06:32:04', 39),
(40, 'agua', 46.00, '2025-05-29 06:32:04', 40),
(41, 'telefono', 41.00, '2025-05-29 06:32:04', 41),
(42, 'agua', 35.00, '2025-05-29 06:32:04', 42),
(43, 'luz', 35.00, '2025-05-29 06:32:04', 43),
(44, 'luz', 8.00, '2025-05-29 06:32:04', 44),
(45, 'luz', 50.00, '2025-05-29 06:32:04', 45),
(46, 'agua', 30.00, '2025-05-29 06:32:04', 46),
(47, 'telefono', 3.00, '2025-05-29 06:32:04', 47),
(48, 'luz', 10.00, '2025-05-29 06:32:04', 48),
(49, 'agua', 31.00, '2025-05-29 06:32:04', 49),
(50, 'luz', 7.00, '2025-05-29 06:32:04', 50);

-- --------------------------------------------------------

--
-- Table structure for table `prestamos`
--

CREATE TABLE `prestamos` (
  `id_prestamo` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `monto_total` decimal(10,2) DEFAULT NULL,
  `saldo_pendiente` decimal(10,2) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prestamos`
--

INSERT INTO `prestamos` (`id_prestamo`, `id_usuario`, `monto_total`, `saldo_pendiente`, `fecha_inicio`) VALUES
(1, 3, 849.00, 849.00, '2024-07-29'),
(3, 6, 672.00, 672.00, '2025-03-29'),
(4, 8, 888.00, 788.00, '2025-03-29'),
(5, 8, 400.00, 400.00, '2024-09-29'),
(6, 8, 395.00, 395.00, '2024-09-29'),
(7, 10, 278.00, 278.00, '2025-03-29'),
(8, 11, 399.00, 399.00, '2024-10-29'),
(9, 11, 667.00, 667.00, '2024-11-29'),
(10, 11, 252.00, 252.00, '2024-11-29'),
(11, 12, 672.00, 672.00, '2024-06-29'),
(12, 12, 868.00, 868.00, '2024-11-29'),
(13, 20, 582.00, 582.00, '2024-07-29'),
(14, 21, 535.00, 535.00, '2025-02-28'),
(15, 21, 973.00, 973.00, '2024-10-29'),
(16, 24, 551.00, 551.00, '2025-04-29'),
(17, 24, 759.00, 759.00, '2024-11-29'),
(18, 24, 579.00, 579.00, '2024-07-29'),
(19, 27, 834.00, 834.00, '2024-07-29'),
(20, 27, 499.00, 499.00, '2025-04-29'),
(21, 27, 441.00, 441.00, '2024-09-29'),
(22, 30, 821.00, 821.00, '2025-02-28'),
(23, 30, 429.00, 429.00, '2025-02-28'),
(24, 30, 921.00, 921.00, '2025-03-29'),
(25, 32, 860.00, 860.00, '2024-07-29'),
(26, 33, 298.00, 298.00, '2024-12-29'),
(27, 36, 481.00, 481.00, '2025-03-29'),
(28, 36, 477.00, 477.00, '2024-11-29'),
(29, 36, 776.00, 776.00, '2025-03-29'),
(30, 38, 506.00, 506.00, '2025-04-29'),
(31, 38, 313.00, 313.00, '2024-08-29'),
(32, 40, 449.00, 449.00, '2024-10-29'),
(33, 40, 589.00, 589.00, '2024-10-29'),
(34, 43, 728.00, 728.00, '2024-08-29'),
(35, 43, 837.00, 837.00, '2025-03-29'),
(36, 45, 829.00, 829.00, '2024-12-29'),
(37, 47, 336.00, 336.00, '2025-01-29'),
(38, 47, 536.00, 536.00, '2024-06-29'),
(39, 47, 288.00, 288.00, '2024-09-29'),
(40, 48, 381.00, 381.00, '2024-09-29'),
(41, 48, 950.00, 950.00, '2025-02-28'),
(42, 48, 333.00, 333.00, '2024-06-29'),
(43, 49, 653.00, 653.00, '2024-07-29'),
(44, 49, 720.00, 720.00, '2024-06-29'),
(45, 50, 785.00, 785.00, '2024-08-29');

-- --------------------------------------------------------

--
-- Table structure for table `remesas`
--

CREATE TABLE `remesas` (
  `id_remesa` int(11) NOT NULL,
  `codigo` char(8) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `estado` enum('generada','retirada') DEFAULT NULL,
  `fecha_envio` datetime DEFAULT NULL,
  `id_remitente` int(11) DEFAULT NULL,
  `id_receptor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `remesas`
--

INSERT INTO `remesas` (`id_remesa`, `codigo`, `monto`, `estado`, `fecha_envio`, `id_remitente`, `id_receptor`) VALUES
(1, '90055271', 294.00, 'retirada', '2025-04-30 06:32:04', 1, 2),
(2, '90262812', 80.00, 'generada', '2025-05-14 06:32:04', 2, 3),
(3, '43485956', 207.00, 'retirada', '2025-05-25 06:32:04', 3, 4),
(4, '93915723', 227.00, 'generada', '2025-05-21 06:32:04', 4, 5),
(5, '90040957', 298.00, 'generada', '2025-05-01 06:32:04', 5, 6),
(6, '53205721', 65.00, 'generada', '2025-05-11 06:32:04', 6, 7),
(7, '24097826', 195.00, 'generada', '2025-05-23 06:32:04', 7, 8),
(8, '26681817', 214.00, 'generada', '2025-05-22 06:32:04', 8, 9),
(9, '12225895', 253.00, 'generada', '2025-05-21 06:32:04', 9, 10),
(10, '70169402', 93.00, 'generada', '2025-05-21 06:32:04', 10, 11),
(11, '33099229', 255.00, 'generada', '2025-05-20 06:32:04', 11, 12),
(12, '81153497', 294.00, 'generada', '2025-05-17 06:32:04', 12, 13),
(13, '79136467', 118.00, 'generada', '2025-05-07 06:32:04', 13, 14),
(14, '95079234', 68.00, 'generada', '2025-05-05 06:32:04', 14, 15),
(15, '38705289', 229.00, 'generada', '2025-05-27 06:32:04', 15, 16),
(16, '39095540', 225.00, 'generada', '2025-05-02 06:32:04', 16, 17),
(17, '23523638', 111.00, 'generada', '2025-05-24 06:32:04', 17, 18),
(18, '51243774', 173.00, 'generada', '2025-05-22 06:32:04', 18, 19),
(19, '13028396', 176.00, 'generada', '2025-05-13 06:32:05', 19, 20),
(20, '31993114', 69.00, 'generada', '2025-05-08 06:32:05', 20, 21),
(21, '26585353', 262.00, 'generada', '2025-05-10 06:32:05', 21, 22),
(22, '59596672', 122.00, 'generada', '2025-05-26 06:32:05', 22, 23),
(23, '77179611', 50.00, 'generada', '2025-05-15 06:32:05', 23, 24),
(24, '51603209', 152.00, 'generada', '2025-05-14 06:32:05', 24, 25),
(25, '37587526', 290.00, 'generada', '2025-05-26 06:32:05', 25, 26),
(26, '89182967', 20.00, 'retirada', '2025-05-29 18:11:36', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transacciones`
--

CREATE TABLE `transacciones` (
  `id_transaccion` int(11) NOT NULL,
  `id_cuenta` int(11) DEFAULT NULL,
  `tipo_transaccion` enum('retiro','deposito','transferencia_interna','transferencia_externa','pago_servicio','pago_prestamo','remesa_envio','remesa_retiro') DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transacciones`
--

INSERT INTO `transacciones` (`id_transaccion`, `id_cuenta`, `tipo_transaccion`, `monto`, `fecha`) VALUES
(1, 1, 'deposito', 532.00, '2025-05-29 06:32:03'),
(2, 2, 'deposito', 936.00, '2025-05-29 06:32:03'),
(3, 3, 'deposito', 247.00, '2025-05-29 06:32:03'),
(4, 4, 'deposito', 842.00, '2025-05-29 06:32:03'),
(5, 5, 'deposito', 739.00, '2025-05-29 06:32:03'),
(6, 6, 'deposito', 148.00, '2025-05-29 06:32:03'),
(7, 7, 'deposito', 257.00, '2025-05-29 06:32:03'),
(8, 8, 'deposito', 745.00, '2025-05-29 06:32:03'),
(9, 9, 'deposito', 345.00, '2025-05-29 06:32:03'),
(10, 10, 'deposito', 979.00, '2025-05-29 06:32:03'),
(11, 11, 'deposito', 622.00, '2025-05-29 06:32:03'),
(12, 12, 'deposito', 134.00, '2025-05-29 06:32:03'),
(13, 13, 'deposito', 586.00, '2025-05-29 06:32:03'),
(14, 14, 'deposito', 560.00, '2025-05-29 06:32:03'),
(15, 15, 'deposito', 404.00, '2025-05-29 06:32:03'),
(16, 16, 'deposito', 988.00, '2025-05-29 06:32:03'),
(17, 17, 'deposito', 984.00, '2025-05-29 06:32:03'),
(18, 18, 'deposito', 928.00, '2025-05-29 06:32:03'),
(19, 19, 'deposito', 722.00, '2025-05-29 06:32:03'),
(20, 20, 'deposito', 386.00, '2025-05-29 06:32:03'),
(21, 21, 'deposito', 324.00, '2025-05-29 06:32:03'),
(22, 22, 'deposito', 262.00, '2025-05-29 06:32:03'),
(23, 23, 'deposito', 264.00, '2025-05-29 06:32:03'),
(24, 24, 'deposito', 294.00, '2025-05-29 06:32:03'),
(25, 25, 'deposito', 231.00, '2025-05-29 06:32:03'),
(26, 26, 'deposito', 735.00, '2025-05-29 06:32:03'),
(27, 27, 'deposito', 669.00, '2025-05-29 06:32:03'),
(28, 28, 'deposito', 166.00, '2025-05-29 06:32:03'),
(29, 29, 'deposito', 959.00, '2025-05-29 06:32:03'),
(30, 30, 'deposito', 576.00, '2025-05-29 06:32:03'),
(31, 31, 'deposito', 224.00, '2025-05-29 06:32:03'),
(32, 32, 'deposito', 615.00, '2025-05-29 06:32:03'),
(33, 33, 'deposito', 300.00, '2025-05-29 06:32:03'),
(34, 34, 'deposito', 347.00, '2025-05-29 06:32:04'),
(35, 35, 'deposito', 954.00, '2025-05-29 06:32:04'),
(36, 36, 'deposito', 712.00, '2025-05-29 06:32:04'),
(37, 37, 'deposito', 295.00, '2025-05-29 06:32:04'),
(38, 38, 'deposito', 839.00, '2025-05-29 06:32:04'),
(39, 39, 'deposito', 787.00, '2025-05-29 06:32:04'),
(40, 40, 'deposito', 897.00, '2025-05-29 06:32:04'),
(41, 41, 'deposito', 534.00, '2025-05-29 06:32:04'),
(42, 42, 'deposito', 354.00, '2025-05-29 06:32:04'),
(43, 43, 'deposito', 831.00, '2025-05-29 06:32:04'),
(44, 44, 'deposito', 256.00, '2025-05-29 06:32:04'),
(45, 45, 'deposito', 320.00, '2025-05-29 06:32:04'),
(46, 46, 'deposito', 242.00, '2025-05-29 06:32:04'),
(47, 47, 'deposito', 304.00, '2025-05-29 06:32:04'),
(48, 48, 'deposito', 822.00, '2025-05-29 06:32:04'),
(49, 49, 'deposito', 989.00, '2025-05-29 06:32:04'),
(50, 50, 'deposito', 604.00, '2025-05-29 06:32:04'),
(51, 3, 'retiro', 150.00, '2025-05-29 06:58:27'),
(52, 1, 'retiro', 100.00, '2025-05-29 18:01:49'),
(53, 1, 'deposito', 50.00, '2025-05-29 18:02:16'),
(54, 5, 'remesa_envio', 20.00, '2025-05-29 18:11:36'),
(55, 1, 'remesa_retiro', 20.00, '2025-05-29 18:12:49'),
(56, 5, 'pago_prestamo', 619.00, '2025-05-29 18:16:55'),
(57, 8, 'pago_prestamo', 100.00, '2025-05-29 18:33:31'),
(58, 1, 'retiro', 50.00, '2025-05-29 21:26:13'),
(59, 1, 'deposito', 50.00, '2025-05-29 21:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `tipo_usuario` enum('banco','cliente') DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `cantidad_prestamos` int(11) DEFAULT 0,
  `correo` varchar(100) NOT NULL DEFAULT '',
  `Activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `tipo_usuario`, `usuario`, `password_hash`, `cantidad_prestamos`, `correo`, `Activo`) VALUES
(1, 'Usuario 1', 'cliente', 'usuario1', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', 0, 'Uuusuuario1@gmail.com', 1),
(2, 'Usuario 2', 'cliente', 'usuario2', '1cd4f57251bdb116d210372aaeb28645baf4ca4f338b5868cbc92396575c0579', 0, 'usuario2@gmail.com', 1),
(3, 'Usuario 3', 'cliente', 'usuario3', '338d9ecfd128499d5e8fcf06e7db734126d0497d8c16b1fae4a5e56fabb0e1fe', 1, 'usuario3@gmail.com', 1),
(4, 'Usuario 4', 'cliente', 'usuario4', 'e9f8a8c6499c33f81db1f11ebb4a72a1d916d8e123e91505f5701f691d6f734c', 0, 'usuario4@gmail.com', 1),
(5, 'Usuario 5', 'cliente', 'usuario5', '163d5ecc735d3e555756e25a893332ebb853c413bda3c00fbe46b488456c4e7d', 1, 'usuario5@gmail.com', 1),
(6, 'Usuario 6', 'cliente', 'usuario6', '639c1115ab55d139a527f7bb3c1a9570bb60cf96f5c13bdaa41a7264a74e748f', 1, 'usuario6@gmail.com', 1),
(7, 'Usuario 7', 'cliente', 'usuario7', 'e56b47d2847f2d682a0d4bd5fc57d9e5fc8c013f30ae4a69f6471127168e351c', 0, 'usuario7@gmail.com', 1),
(8, 'Usuario 8', 'cliente', 'usuario8', 'e8c5e943ad4fd9d115c2baacd110acddee7f66ec24aa177efa6780f5641ce277', 3, 'usuario8@gmail.com', 1),
(9, 'Usuario 9', 'cliente', 'usuario9', 'ab9828ca390581b72629069049793ba3c99bb8e5e9e7b97a55c71957e04df9a3', 0, 'usuario9@gmail.com', 1),
(10, 'Usuario 10', 'cliente', 'usuario10', 'abe8457f1960b99074883742b01a3e0eabcb6a4c821d51e00988a578d1a222aa', 1, 'usuario10@gmail.com', 1),
(11, 'Usuario 11', 'cliente', 'usuario11', '48bf87f367ea4ac0265036b28b2e03f6b3d749960a68db0bc65589aef91b0f40', 3, 'usuario11@gmail.com', 1),
(12, 'Usuario 12', 'cliente', 'usuario12', '43bcfd67415041651733e9f16b4126ed6b8b30b0c9e77acb9da38a542ff0eaad', 2, 'usuario12@gmail.com', 1),
(13, 'Usuario 13', 'cliente', 'usuario13', '3958de59a1ae60b4330e99d6a5b791897717cdd2347260d0f71df22d60b01062', 0, 'usuario13@gmail.com', 1),
(14, 'Usuario 14', 'cliente', 'usuario14', '2a437e50df2424d78e03ace334e1a2811e167bea539ef964c67687e94188f655', 0, 'usuario14@gmail.com', 1),
(15, 'Usuario 15', 'cliente', 'usuario15', '820acd0d5a5893bc204cb145d38ad2c11c1beaf18d1dd4cd2ca26614bbfb82fd', 0, 'usuario15@gmail.com', 1),
(16, 'Usuario 16', 'cliente', 'usuario16', '4091f2c5c45d0cb95c6b43919f9f07f62f7f6c6fb46ca207264b2aee4ee6e4f9', 0, 'usuario16@gmail.com', 1),
(17, 'Usuario 17', 'cliente', 'usuario17', 'f9cd07ab404784867227e958c5ce8986361e5896dd6adf7d1d96c5f329c80bb5', 0, 'usuario17@gmail.com', 1),
(18, 'Usuario 18', 'cliente', 'usuario18', '920a46c32b7493a13695db8b8fba08737779f9f9c5c5482c42429ac0b0845cd4', 0, 'usuario18@gmail.com', 1),
(19, 'Usuario 19', 'cliente', 'usuario19', '4d939723aee58df1d4cc07dc421ca4128d8c69edfcb8f236d1eb961bc440a81d', 0, 'usuario19@gmail.com', 1),
(20, 'Usuario 20', 'cliente', 'usuario20', '55635dfb6830783b5a0d2b4b79ffaa7c079e4f391352bc200251bb98ecf1173b', 1, 'usuario20@gmail.com', 1),
(21, 'Usuario 21', 'cliente', 'usuario21', 'f8a5da214f3f6c281e008924914e7decf9a13637737204589eed04379dc600a8', 2, 'usuario21@gmail.com', 1),
(22, 'Usuario 22', 'cliente', 'usuario22', '67aa578ed1fd0fa4198a7f1cc37b1ab20331cb472f7eb766f687f870a53a0670', 0, 'usuario22@gmail.com', 1),
(23, 'Usuario 23', 'cliente', 'usuario23', 'e951dc1e107df8295870c5b570ed43e0cd5387e728b519d0d2e10a192ae3c6e1', 0, 'usuario23@gmail.com', 1),
(24, 'Usuario 24', 'cliente', 'usuario24', 'ed946f65d2c785d90e827c5ffd879ce3b49c68d4c88013074176a7e73bc58bcf', 3, 'usuario24@gmail.com', 1),
(25, 'Usuario 25', 'cliente', 'usuario25', 'bc063d436befa40f527e200c6a8e6331d8d372755d59f606831230821aae2ef6', 0, 'usuario25@gmail.com', 1),
(26, 'Usuario 26', 'cliente', 'usuario26', 'c1a11296c22d7fadc6c0dc914b2d6b0e87357cefe5a8d01fb6713e840290b2f2', 0, 'usuario26@gmail.com', 1),
(27, 'Usuario 27', 'cliente', 'usuario27', '40d2273d85cf40f02a8c58897bef007ef95fe86e40191f80a608e35e015f8b88', 3, 'usuario27@gmail.com', 1),
(28, 'Usuario 28', 'cliente', 'usuario28', '303b8bfc5f6c228d0e8665523fa929cfd2f0ac72274cdd22815feb842c33bc1a', 0, 'usuario28@gmail.com', 1),
(29, 'Usuario 29', 'cliente', 'usuario29', 'fb6a65a234fbbd604fff0aa54a3604ff44cfa683de13046d86a6fa2c7757067e', 0, 'usuario29@gmail.com', 1),
(30, 'Usuario 30', 'cliente', 'usuario30', '8352dd9eb8b64669e0a8347fd37ae6e5cd67c817f2b4b1eec4475d466ab59eb7', 3, 'usuario30@gmail.com', 1),
(31, 'Usuario 31', 'cliente', 'usuario31', 'da4621a707cf748779a270d5edafd1a80743d5dd62ba77a7c254090d13ec32fc', 0, 'usuario31@gmail.com', 1),
(32, 'Usuario 32', 'cliente', 'usuario32', 'b0cc7072ef8aa1665efaea655d17d1c841048a5b4e6df3545db3d794b52d746f', 1, 'usuario32@gmail.com', 1),
(33, 'Usuario 33', 'cliente', 'usuario33', '7bf3c227f531b4cd730604d5b5317698aff98d84c250406dbc621c2fc29dd8ec', 1, 'usuario33@gmail.com', 1),
(34, 'Usuario 34', 'cliente', 'usuario34', 'ac99164821bdc97550cd5d0148199855aac84cebe5e4b62b265e81859bdb27c3', 0, 'usuario34@gmail.com', 1),
(35, 'Usuario 35', 'cliente', 'usuario35', '8861a3ae97ede98c3bee152161a40b497095a5b0e1f5785efdd46fcc4a984b86', 0, 'usuario35@gmail.com', 1),
(36, 'Usuario 36', 'cliente', 'usuario36', '4fffe8816a92b62f8e81b6a74a44bd1e3def5d4b2b7975823c217e55ea5367a8', 3, 'usuario36@gmail.com', 1),
(37, 'Usuario 37', 'cliente', 'usuario37', 'fddc599a3afe6c68b8098f7ef3db02335f7e398e3c0bd34b663f04f424886aeb', 0, 'usuario37@gmail.com', 1),
(38, 'Usuario 38', 'cliente', 'usuario38', 'aa8672337805ff6728862ef935eaf8ffc9a5fe247ca3313fbfab013adea63762', 2, 'usuario38@gmail.com', 1),
(39, 'Usuario 39', 'cliente', 'usuario39', '44175460886bd8890f2d92276318c9906ee2b23b54d53f6c50ef275132266081', 0, 'usuario39@gmail.com', 1),
(40, 'Usuario 40', 'cliente', 'usuario40', 'd03fb55d3457b6b7189e984af4e33d87151401005225d8ab259ddebaa0781d52', 2, 'usuario40@gmail.com', 1),
(41, 'Usuario 41', 'cliente', 'usuario41', 'd9cf8835e2a75f03b59e0371aacb3cdf2b71e0a471dc478742987f366cabeccc', 0, 'usuario41@gmail.com', 1),
(42, 'Usuario 42', 'cliente', 'usuario42', '3fc7cd951ee863cf92fc9a7d06560206dd100dc7686341778e3f5579d8af1298', 0, 'usuario42@gmail.com', 1),
(43, 'Usuario 43', 'cliente', 'usuario43', '817fbc1c4386fe2dcc2993b009d5f76fa9acd8a0f4aa601e513b632392c4d428', 2, 'usuario43@gmail.com', 1),
(44, 'Usuario 44', 'cliente', 'usuario44', '37ce8e1e093e24e2f774ce27b4f87050b960e347f0de10b57d99e658200d2dc6', 0, 'usuario44@gmail.com', 1),
(45, 'Usuario 45', 'cliente', 'usuario45', '88e1a9ff81d0254e653d47b7451b4598df238bf22ffd6e8eaec6e673e222b942', 1, 'usuario45@gmail.com', 1),
(46, 'Usuario 46', 'cliente', 'usuario46', '4edd2dea18c70c3637b512c63220db3e2938ac248d0e5bcb499f5ec273c1f4a7', 0, 'usuario46@gmail.com', 1),
(47, 'Usuario 47', 'cliente', 'usuario47', 'f6920d2ecbf720691362f699e0aa14eecffd23c76545147719dcc3a9a5734050', 3, 'usuario47@gmail.com', 1),
(48, 'Usuario 48', 'cliente', 'usuario48', '3fbb234dbb549c092f611d008e1b507ce570ffad776d5851f4d47bd8760faefc', 3, 'usuario48@gmail.com', 1),
(49, 'Usuario 49', 'cliente', 'usuario49', 'e52522a505f68250e81747aa5386c5c60196c1680f1c89762ab1ab0fbaae39b8', 2, 'usuario49@gmail.com', 1),
(50, 'Usuario 50', 'cliente', 'usuario50', '0868ef228ecfbd822d2dc5b2f8a70b32d12585757db50839c4e898b60990b7e5', 1, 'usuario50@gmail.com', 1),
(51, 'Erick Espinoza', 'banco', 'Jkosu00', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', 0, 'josueaparicio211@gmail.com', 1),
(52, 'Josue Gonzalez', 'banco', 'Josu1202', '9a20ae78840d1a444686d7ef12f62082888b1f764151438badc3f5e0122f1429', 0, 'josuegonza5678@gmail.com', 1),
(53, 'Emilio', 'cliente', 'emilio123', '52a6eb687cd22e80d3342eac6fcc7f2e19209e8f83eb9b82e81c6f3e6f30743b', 0, 'emilio123@gmail.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`id_cuenta`),
  ADD UNIQUE KEY `numero_cuenta` (`numero_cuenta`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `pagos_servicios`
--
ALTER TABLE `pagos_servicios`
  ADD PRIMARY KEY (`id_pago`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id_prestamo`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `remesas`
--
ALTER TABLE `remesas`
  ADD PRIMARY KEY (`id_remesa`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD KEY `id_remitente` (`id_remitente`),
  ADD KEY `id_receptor` (`id_receptor`);

--
-- Indexes for table `transacciones`
--
ALTER TABLE `transacciones`
  ADD PRIMARY KEY (`id_transaccion`),
  ADD KEY `id_cuenta` (`id_cuenta`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cuentas`
--
ALTER TABLE `cuentas`
  MODIFY `id_cuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `pagos_servicios`
--
ALTER TABLE `pagos_servicios`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id_prestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `remesas`
--
ALTER TABLE `remesas`
  MODIFY `id_remesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `transacciones`
--
ALTER TABLE `transacciones`
  MODIFY `id_transaccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cuentas`
--
ALTER TABLE `cuentas`
  ADD CONSTRAINT `cuentas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Constraints for table `pagos_servicios`
--
ALTER TABLE `pagos_servicios`
  ADD CONSTRAINT `pagos_servicios_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Constraints for table `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Constraints for table `remesas`
--
ALTER TABLE `remesas`
  ADD CONSTRAINT `remesas_ibfk_1` FOREIGN KEY (`id_remitente`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `remesas_ibfk_2` FOREIGN KEY (`id_receptor`) REFERENCES `usuarios` (`id_usuario`);

--
-- Constraints for table `transacciones`
--
ALTER TABLE `transacciones`
  ADD CONSTRAINT `transacciones_ibfk_1` FOREIGN KEY (`id_cuenta`) REFERENCES `cuentas` (`id_cuenta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
