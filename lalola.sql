-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 11, 2017 at 05:52 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_users`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(2, 'king', 'king123', 'king@gmail.com'),
(3, 'admin', 'admin123', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `attendant`
--

CREATE TABLE `attendant` (
  `id_attendant` int(200) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Apellidos` varchar(200) NOT NULL,
  `no_telefono` varchar(200) NOT NULL,
  `ubicacion` varchar(200) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendant`
--

INSERT INTO `attendant` (`id_attendant`, `Nombre`, `Apellidos`, `no_telefono`, `ubicacion`, `usuario`, `password`) VALUES
(1, 'karis', 'kelvin', '070824555', 'msa', 'kk', '12045'),
(2, 'king', 'doshi', '0708009360', 'Nairobi', 'kd', '12345'),
(3, 'james', 'peter', '0708009360', 'voi', 'jp', '12345'),
(4, 'francis', 'mwakidoshi', '0708009360', 'nyali', 'nyali', 'nyali');

-- --------------------------------------------------------

--
-- Table structure for table `parkings`
--

CREATE TABLE `parkings` (
  `id` int(200) NOT NULL,
  `ubicacion` varchar(200) NOT NULL,
  `nplacas` varchar(200) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `matricula` varchar(200) NOT NULL,
  `espacio` int(200) NOT NULL,
  `espacios_restantes` varchar(50) NOT NULL,
  `asistente` varchar(100) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `horaentrada` varchar(50) NOT NULL
  `horasalida` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parkings`
--

INSERT INTO `parkings` (`id`, `ubicacion`, `nplacas`, `nombre`, `matricula`, `espacio`, `espacios_restantes`, `asistentes`, `fecha`, `horaentrada`, `horasalida`) VALUES
(5, 'Norte', '14xb90', 'Migue', 1508976, '151', '100', 'Ana', '2023-01-18', '12:23:35', '13:40:35');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(255) NOT NULL,
  `matricula` varchar(25) NOT NULL,
  `espacios` varchar(25) NOT NULL,
  `horaentrada` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `horasalida` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nombre` varchar(25) NOT NULL,
  `placas` varchar(25) NOT NULL,
  `ubicacion` varchar(25) NOT NULL,
  `tipovehiculo` varchar(25) NOT NULL,
  `colorauto` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `parking_id`, `espacios`, `horaentrada`, `horasalida`, `nombre`, `tiempo`, `ubicacion`, `tipovehiculo`, `colorauto`) VALUES
(7, 1, '2', '2017-06-17 18:42:38', '2017-06-17 19:42:38', 'king', 'xf78hk', 'alumnos', `ford`, `blanco`),
(8, 5, '4', '2017-06-17 19:29:58', '2017-06-17 20:29:58', 'test', '14lp68', 'maestros', `tsuru`, `gris`),
(9, 1, '1', '2017-06-18 19:14:44', '2017-06-18 20:14:44', 'king1', 'op46hy', 'alumnos', `mazda`,`rojo`),
(10, 1, '', '2017-06-19 16:04:27', '2017-06-19 18:04:27', 'king2', 'maestros', 'cobalt', `azul`),
(11, 5, '1', '2017-06-23 05:35:59', '2017-06-23 06:35:59', 'john', 'lp5hy9', 'maestros', `volkswagen`, `negro`),
(13, 5, '1', '2017-10-31 14:45:59', '2017-10-31 14:45:59', 'dan', 'juk58i', 'alumnos', 'toyota', 'rosa');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_confirm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `password_confirm`) VALUES
(1, 'john', 'john@gmail.com', 'john1234', 'john1234'),
(2, 'king', 'king@gmail.com', 'king1234', 'king1234'),
(3, 'john', 'kuku@gmail.com', '123456789', '123456789'),
(4, 'rapho', 'rapho@gmail.com', '123456789', '123456789'),
(5, 'patty', 'patty@gmail.com', 'king12345', 'king12345'),
(7, 'Dan', 'dan@gmail.com', '$2y$10$OWWnE8vrh0EKvnbBhjgVYu5oV21m36Exi9l8y7wfwZ3VRkuolmNFu', '$2y$10$LIE8WLMnBogS625KGhqqZOszGdxmtCLyIR1bNTI2hg13VMrabZaoa'),
(8, 'king', 'test@gmail.com', '$2y$10$WZUiLaha1ZLII0KE0ev55uFW3ECjX3WhVjydS37r5PqLkrscyU2k.', '$2y$10$ro2qv7h841xx9go4L9lq/uQXSkj8nQ1DT89RF/NroJ15VtHT2b3uu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendant`
--
ALTER TABLE `attendant`
  ADD PRIMARY KEY (`id_attendant`);

--
-- Indexes for table `parkings`
--
ALTER TABLE `parkings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `attendant`
--
ALTER TABLE `attendant`
  MODIFY `id_attendant` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `parkings`
--
ALTER TABLE `parkings`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
