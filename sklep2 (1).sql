-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Sie 2015, 00:33
-- Wersja serwera: 5.6.24
-- Wersja PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `sklep2`
--
CREATE DATABASE IF NOT EXISTS `sklep2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sklep2`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `surname` text NOT NULL,
  `login` text NOT NULL,
  `password` text NOT NULL,
  `zip_code` text NOT NULL,
  `street` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_category`
--

DROP TABLE IF EXISTS `shop_category`;
CREATE TABLE IF NOT EXISTS `shop_category` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `shop_category`
--

INSERT INTO `shop_category` (`id`, `name`, `description`) VALUES
(1, 101, 'marynarka'),
(13, 201, 'półbuty'),
(31, 301, 'okulary');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_order`
--

DROP TABLE IF EXISTS `shop_order`;
CREATE TABLE IF NOT EXISTS `shop_order` (
  `id` int(11) NOT NULL,
  `order_n` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ispayed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_order_data`
--

DROP TABLE IF EXISTS `shop_order_data`;
CREATE TABLE IF NOT EXISTS `shop_order_data` (
  `order_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `last_name` text NOT NULL,
  `zip_code` text NOT NULL,
  `street` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `full_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_product`
--

DROP TABLE IF EXISTS `shop_product`;
CREATE TABLE IF NOT EXISTS `shop_product` (
  `id` int(11) NOT NULL,
  `code` varchar(3) NOT NULL,
  `name` text NOT NULL,
  `price` double NOT NULL,
  `real_price` double NOT NULL,
  `producer` varchar(100) NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `additional_note` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `shop_product`
--

INSERT INTO `shop_product` (`id`, `code`, `name`, `price`, `real_price`, `producer`, `add_date`, `additional_note`) VALUES
(1, '101', 'Marynarka Rippo 101-001 ', 211, 211, 'Rippo', '2015-07-15 12:01:48', 'Rozmiar L  Szara'),
(2, '101', 'Marynarka Rippo 101-001 ', 211, 211, 'Rippo', '2015-07-15 12:01:48', 'rozmiar XL Szara'),
(3, '101', 'Marynarka Rippo 101-001 ', 211, 211, 'Rippo', '2015-07-15 12:32:46', 'Rozmiar M Szara'),
(4, '101', 'Marynarka Rippo 101-001 ', 211, 211, 'Rippo', '2015-07-15 12:33:46', 'Rozmiar S Szara'),
(5, '101', 'Marynarka Rippo 101-001 ', 211, 211, 'Rippo', '2015-07-15 12:35:45', 'Rozmiar S Czarna'),
(6, '101', 'Marynarka Rippo 101-001 ', 211, 211, 'Rippo', '2015-07-15 12:36:22', 'Rozmiar M Czarna'),
(7, '101', 'Marynarka Rippo 101-001 ', 211, 211, 'Rippo', '2015-07-15 12:36:35', 'Rozmiar L Czarna'),
(8, '101', 'Marynarka Rippo 101-001 ', 211, 211, 'Rippo', '2015-07-15 12:36:49', 'Rozmiar XL Czarna'),
(9, '101', 'Marynarka Rippo 101-001 ', 211, 211, 'Rippo', '2015-07-15 12:37:37', 'Rozmiar M Czerwona'),
(10, '101', 'Marynarka Rippo 101-001 ', 211, 211, 'Rippo', '2015-07-15 12:37:48', 'Rozmiar S Czerwona'),
(11, '101', 'Marynarka Rippo 101-001 ', 211, 211, 'Rippo', '2015-07-15 12:37:56', 'Rozmiar L Czerwona'),
(12, '101', 'Marynarka Rippo 101-001 ', 211, 211, 'Rippo', '2015-07-15 12:38:18', 'Rozmiar XL Czerwona'),
(13, '201', 'Półbuty Conteyner 201-0001 ', 120, 120, 'Conteyner', '2015-07-15 12:46:53', 'Rozmiar 45 Brązowe '),
(14, '201', 'Półbuty Conteyner 201-0001 ', 120, 120, 'Conteyner', '2015-07-15 12:47:05', 'Rozmiar 44 Brązowe '),
(15, '201', 'Półbuty Conteyner 201-0001 ', 120, 120, 'Conteyner', '2015-07-15 12:49:20', 'Rozmiar 43 Brązowe '),
(16, '201', 'Półbuty Conteyner 201-0001 ', 120, 120, 'Conteyner', '2015-07-15 12:49:36', 'Rozmiar 42 Brązowe '),
(17, '201', 'Półbuty Conteyner 201-0001 ', 120, 120, 'Conteyner', '2015-07-15 12:49:47', 'Rozmiar 41 Brązowe '),
(18, '201', 'Półbuty Conteyner 201-0001 ', 120, 120, 'Conteyner', '2015-07-15 12:50:04', 'Rozmiar 40 Brązowe '),
(19, '201', 'Półbuty Conteyner 201-0001 ', 120, 120, 'Conteyner', '2015-07-15 12:51:42', 'Rozmiar 42 Granatowe'),
(20, '201', 'Półbuty Conteyner 201-0001 ', 120, 120, 'Conteyner', '2015-07-15 12:51:42', 'Rozmiar 41 Granatowe'),
(21, '201', 'Półbuty Conteyner 201-0001 ', 120, 120, 'Conteyner', '2015-07-15 12:51:42', 'Rozmiar 40 Granatowe'),
(22, '201', 'Półbuty Conteyner 201-0001 ', 120, 120, 'Conteyner', '2015-07-15 12:51:42', 'Rozmiar 43 Granatowe'),
(23, '201', 'Półbuty Conteyner 201-0001 ', 120, 120, 'Conteyner', '2015-07-15 12:51:42', 'Rozmiar 44 Granatowe'),
(24, '201', 'Półbuty Conteyner 201-0001 ', 120, 120, 'Conteyner', '2015-07-15 12:52:50', 'Rozmiar 45 Granatowe'),
(25, '201', 'Półbuty Conteyner 201-0001 ', 120, 120, 'Conteyner', '2015-07-15 12:54:04', 'Rozmiar 42 Czarne'),
(26, '201', 'Półbuty Conteyner 201-0001 ', 120, 120, 'Conteyner', '2015-07-15 12:54:04', 'Rozmiar 41 Czarne'),
(27, '201', 'Półbuty Conteyner 201-0001 ', 120, 120, 'Conteyner', '2015-07-15 12:54:04', 'Rozmiar 40 Czarne'),
(28, '201', 'Półbuty Conteyner 201-0001 ', 120, 120, 'Conteyner', '2015-07-15 12:54:04', 'Rozmiar 43 Czarne'),
(29, '201', 'Półbuty Conteyner 201-0001 ', 120, 120, 'Conteyner', '2015-07-15 12:54:04', 'Rozmiar 44 Czarne'),
(30, '301', 'Ray-Ban 301-01-001 ', 420, 420, 'Ray-Ban', '2015-07-15 13:07:52', 'kolor 710'),
(31, '301', 'Ray-Ban 301-01-001 ', 420, 420, 'Ray-Ban', '2015-07-15 13:08:04', 'kolor 722'),
(32, '102', 'Spodnie Rippo 102-001', 199, 199, 'Rippo', '2015-08-23 12:40:16', 'Roymiar S Czarne'),
(33, '102', 'Spodnie Rippo 102-001', 199, 199, 'Rippo', '2015-08-23 12:41:53', 'Roymiar M Czarne'),
(34, '102', 'Spodnie Rippo 102-001', 199, 199, 'Rippo', '2015-08-23 12:41:53', 'Roymiar XL Czarne'),
(35, '102', 'Spodnie Rippo 102-001', 199, 199, 'Rippo', '2015-08-23 12:41:53', 'Roymiar M Szare'),
(36, '102', 'Spodnie Rippo 102-001', 199, 199, 'Rippo', '2015-08-23 12:41:53', 'Roymiar XL Szare'),
(37, '302', 'Pasek Ronno 302-01-001', 99, 99, 'Ronno', '2015-08-23 12:45:22', 'Czarny'),
(38, '302', 'Pasek Ronno 302-01-001', 99, 99, 'Ronno', '2015-08-23 12:45:40', 'Brązowy'),
(39, '103', 'Kurtka Venaza', 499, 499, 'Venaza', '2015-08-23 12:51:06', 'Rozmiar M Szara'),
(40, '103', 'Kurtka Venaza', 499, 499, 'Venaza', '2015-08-23 12:51:51', 'Rozmiar XL Szara'),
(41, '103', 'Kurtka Venaza', 499, 499, 'Venaza', '2015-08-23 12:51:51', 'Rozmiar L Szara');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_product_category`
--

DROP TABLE IF EXISTS `shop_product_category`;
CREATE TABLE IF NOT EXISTS `shop_product_category` (
  `id_category` int(11) NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `shop_product_category`
--

INSERT INTO `shop_product_category` (`id_category`, `id_product`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(13, 13),
(13, 14),
(13, 15),
(13, 16),
(13, 17),
(13, 18),
(13, 19),
(13, 20),
(13, 21),
(13, 22),
(13, 23),
(13, 24),
(13, 25),
(13, 26),
(13, 27),
(13, 28),
(13, 29),
(31, 30),
(31, 31);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_product_size`
--

DROP TABLE IF EXISTS `shop_product_size`;
CREATE TABLE IF NOT EXISTS `shop_product_size` (
  `id_size` int(11) NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `shop_product_size`
--

INSERT INTO `shop_product_size` (`id_size`, `id_product`) VALUES
(1, 4),
(1, 5),
(1, 10),
(2, 3),
(2, 6),
(2, 9),
(3, 1),
(3, 7),
(3, 11),
(4, 2),
(4, 8),
(4, 12);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_prooduct_warehouse`
--

DROP TABLE IF EXISTS `shop_prooduct_warehouse`;
CREATE TABLE IF NOT EXISTS `shop_prooduct_warehouse` (
  `id_product` int(11) NOT NULL,
  `id_warehouse` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_size`
--

DROP TABLE IF EXISTS `shop_size`;
CREATE TABLE IF NOT EXISTS `shop_size` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `shop_size`
--

INSERT INTO `shop_size` (`id`, `name`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'XL'),
(5, 'XXL'),
(6, '39'),
(7, '40'),
(8, '41'),
(9, '42'),
(10, '43'),
(11, '44'),
(12, '45'),
(13, '46'),
(14, '47');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_warehouse`
--

DROP TABLE IF EXISTS `shop_warehouse`;
CREATE TABLE IF NOT EXISTS `shop_warehouse` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_order`
--
ALTER TABLE `shop_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_order_data`
--
ALTER TABLE `shop_order_data`
  ADD KEY `product_id` (`product_id`), ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_product_category`
--
ALTER TABLE `shop_product_category`
  ADD KEY `id_category` (`id_category`,`id_product`), ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `shop_product_size`
--
ALTER TABLE `shop_product_size`
  ADD PRIMARY KEY (`id_product`), ADD KEY `id_size` (`id_size`), ADD KEY `id_product` (`id_product`), ADD KEY `id_product_2` (`id_product`);

--
-- Indexes for table `shop_prooduct_warehouse`
--
ALTER TABLE `shop_prooduct_warehouse`
  ADD KEY `id_product` (`id_product`), ADD KEY `id_warehouse` (`id_warehouse`);

--
-- Indexes for table `shop_size`
--
ALTER TABLE `shop_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_warehouse`
--
ALTER TABLE `shop_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT dla tabeli `shop_order`
--
ALTER TABLE `shop_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT dla tabeli `shop_size`
--
ALTER TABLE `shop_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT dla tabeli `shop_warehouse`
--
ALTER TABLE `shop_warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `shop_order_data`
--
ALTER TABLE `shop_order_data`
ADD CONSTRAINT `id_order` FOREIGN KEY (`order_id`) REFERENCES `shop_order` (`id`),
ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`);

--
-- Ograniczenia dla tabeli `shop_product_category`
--
ALTER TABLE `shop_product_category`
ADD CONSTRAINT `id_category` FOREIGN KEY (`id_category`) REFERENCES `shop_category` (`id`),
ADD CONSTRAINT `id_product` FOREIGN KEY (`id_product`) REFERENCES `shop_product` (`id`);

--
-- Ograniczenia dla tabeli `shop_product_size`
--
ALTER TABLE `shop_product_size`
ADD CONSTRAINT `id_product2` FOREIGN KEY (`id_product`) REFERENCES `shop_product` (`id`),
ADD CONSTRAINT `id_size` FOREIGN KEY (`id_size`) REFERENCES `shop_size` (`id`);

--
-- Ograniczenia dla tabeli `shop_prooduct_warehouse`
--
ALTER TABLE `shop_prooduct_warehouse`
ADD CONSTRAINT `id_product3` FOREIGN KEY (`id_product`) REFERENCES `shop_product` (`id`),
ADD CONSTRAINT `id_warehouse` FOREIGN KEY (`id_warehouse`) REFERENCES `shop_warehouse` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
