-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2022 at 09:52 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traveldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `additem`
--

CREATE TABLE `additem` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `additem`
--

INSERT INTO `additem` (`id`, `name`, `type`, `price`) VALUES
('1', 'duba', 'lanch', '25'),
('2', 'firfir', 'brakfast', '25'),
('11', 'shiro', 'lanch', '35'),
('12', 'tegabino', 'lanch', '35'),
('15', 'dinch', 'lanch', '34');

-- --------------------------------------------------------

--
-- Table structure for table `adminreg`
--

CREATE TABLE `adminreg` (
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminreg`
--

INSERT INTO `adminreg` (`name`, `address`, `email`, `password`) VALUES
('desalegn', 'dmu', 'desalegn@gmail.com', '1234'),
('yitayh', 'dmu', 'y@gmail.com', '1234'),
('asresa', 'dmu', 'asresa@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `feedback` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`email`, `password`, `feedback`) VALUES
('jfjapjpfowjpgojqeprojpofksP\"OJFap\'werjpiotjpioeajsdpiofjiwerjtpijeri', '0', '0'),
('yonag@gmail.com', '123', 'tiru new anite doma'),
('ggg@gmail.com', '1234', 'nlgjsjgjmv.mlgskkldfkjkjvksdfjgstr'),
('yonaelgeyehu@gmail.com', '1222', 'iagpodfkpodpoxckvzkldtguioaerhfnsdjvusdfsejhuochfsebjksduiczifsdui'),
('yyy@gmail.com', '11234567', ''),
('yyy@gmail.com', '11234567', ''),
('yyy@gmail.com', '11234567', 'ere eref'),
('yyy@gmail.com', '123', 'ere tew'),
('yyy@gmail.com', '11234567', ''),
('asresa@gmail.com', '123456', 'it is so no nice food'),
('asresa@gmail.com', '1234', 'hdwsjfdjsjfj');

-- --------------------------------------------------------

--
-- Table structure for table `kitchen`
--

CREATE TABLE `kitchen` (
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `conpassword` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kitchen`
--

INSERT INTO `kitchen` (`name`, `address`, `email`, `password`, `conpassword`) VALUES
('ada', 'bebe', 'ada@gmail.com', '7654321', '7654321'),
('mekdes', 'bbb', 'mek@gmail.com', '8765432', '8765432'),
('abay', 'amnuel', 'abayswe09@gmail.com', '123456', '123456'),
('asresa', 'dmu', 'asresa@gmail.com', '123456', '123456'),
('xscd', 'sdasd', 'ad@gmail.com', '1233', '33232'),
('asresa', 'dmu', 'asresa@gmail.com', '1234', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` varchar(100) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `phone_no` varchar(100) NOT NULL,
  `food_type` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `set_id` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `p_name`, `phone_no`, `food_type`, `price`, `set_id`) VALUES
('yonael', '100', '0948144150', 'mibela', '12345', '1'),
('24', 'isyo', '0948144150', 'mibela', '3456', '34'),
('yyyy', 'hhhh', '09464646', 'mibela', '3455', '5'),
('1', 'duba', '0948718775', 'brakfast', '34', '11'),
('11', 'asresa', '07633454', 'lanch', '35', '2');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `conpassword` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `address`, `email`, `password`, `conpassword`) VALUES
('hxcbhs', 'xc', 'sfds@gmail.com', '1234', '123'),
('asresa', 'dmu', 'asresa@gmial.com', '1234', '1234'),
('asresa', 'dmu', 'asresa@gmail.com', '123456', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additem`
--
ALTER TABLE `additem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminreg`
--
ALTER TABLE `adminreg`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
