-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 31, 2021 at 02:12 AM
-- Server version: 10.2.26-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hts_jfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'salad'),
(2, 'soup'),
(3, 'fried'),
(6, 'Burger'),
(7, 'Drink'),
(8, 'ice-cream'),
(9, 'snack'),
(10, 'coffee');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `photo`, `category_id`, `description`) VALUES
(1, 'miso1', 2000, 'image/item/miso.jpg', 2, '                                                            This is Japan soup                                                      '),
(2, 'miso1', 2000, 'image/item/miso1.jpg', 2, 'This is Japan Soup'),
(3, 'miso2', 2000, 'image/item/miso2.jpg', 2, 'This is Japan Soup'),
(4, 'harusame salad', 3000, 'image/item/salad.jpg', 1, 'This is japan salad'),
(5, 'harusame salad1', 3000, 'image/item/salad1.jpeg', 1, 'This is Japan salad'),
(6, 'seaweedsalad1', 4000, 'image/item/salad2.jpg', 1, '                    This is Japan salad                  '),
(8, 'Chicken Burger', 3000, 'image/item/Crispy-Chicken-Burger-6.jpg', 6, 'This is make with chicken'),
(9, 'Chicken Burger small', 2500, 'image/item/chicken-burger-feature.jpg', 6, 'This is for child'),
(10, 'Spicy Burger', 3000, 'image/item/Buffalo-Chicken-Burger3-WIDE.jpg', 6, 'So hot'),
(11, 'Spicy Burger', 3000, 'image/item/tmg-article_default_mobile.jpg', 6, 'So hot'),
(12, 'Ice Cream with waffer', 2000, 'image/item/Ice_Cream_dessert_02.jpg', 8, 'This is best'),
(13, 'Ice cream with matches', 4000, 'image/item/Ice-Cream-Cone-Cupcakes-Recipe-1-of-1-6.jpg', 8, 'so nice'),
(14, 'Roll ice cream', 5000, 'image/item/photo7.jpg', 8, 'very good');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `voucherno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_date` date NOT NULL,
  `noti` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `voucherno`, `order_date`, `noti`, `status`) VALUES
(1, '050109', '2019-12-21', '   dd', 'order'),
(2, '054309', '2019-12-21', '            \n          ', 'order'),
(3, '054322', '2019-12-21', '            \n          ', 'order'),
(4, '054351', '2019-12-21', '            \n          ', 'order'),
(5, '054408', '2019-12-21', '            \n          ', 'order'),
(6, '054441', '2019-12-21', '            \n          ', 'order'),
(7, '055419', '2019-12-21', '            \n          ', 'order'),
(8, '055811', '2019-12-21', '            \n          ', 'order'),
(9, '060107', '2019-12-21', '            \n          ', 'order'),
(10, '060546', '2019-12-21', '            \n          ', 'order'),
(11, '060614', '2019-12-21', '            \n          ', 'order'),
(12, '060644', '2019-12-21', '            \n          ', 'order'),
(13, '060848', '2019-12-21', '            \n          ', 'order'),
(14, '060916', '2019-11-06', '            \n          ', 'order'),
(15, '090545', '2019-11-04', '            \n          ', 'order'),
(16, '103651', '2020-07-13', '            \n          ', 'order');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `voucherno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_date` date NOT NULL,
  `item_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `voucherno`, `order_date`, `item_id`, `price`, `photo`, `qty`, `user_id`) VALUES
(2, '054309', '2019-12-21', '4', 3000, 'image/item/salad.jpg', '1', '1'),
(3, '054309', '2019-12-21', '5', 3000, 'image/item/salad1.jpeg', '1', '1'),
(4, '054322', '2019-12-21', '5', 3000, 'image/item/salad1.jpeg', '2', '1'),
(5, '054351', '2019-12-21', '4', 3000, 'image/item/salad.jpg', '2', '1'),
(6, '054408', '2019-12-21', '4', 3000, 'image/item/salad.jpg', '2', '1'),
(7, '054441', '2019-12-21', '4', 3000, 'image/item/salad.jpg', '2', '1'),
(8, '055811', '2019-12-21', '1', 2000, 'image/item/miso.jpg', '1', '1'),
(9, '060107', '2019-12-21', '2', 2000, 'image/item/miso1.jpg', '1', '1'),
(10, '060546', '2019-12-21', '3', 2000, 'image/item/miso2.jpg', '1', '4'),
(11, '060614', '2019-12-21', '5', 3000, 'image/item/salad1.jpeg', '1', '4'),
(12, '060644', '2019-12-21', '1', 2000, 'image/item/miso.jpg', '1', '4'),
(13, '060848', '2019-12-21', '2', 2000, 'image/item/miso1.jpg', '1', '4'),
(14, '060916', '2019-12-21', '2', 2000, 'image/item/miso1.jpg', '1', '4'),
(15, '090545', '2020-01-03', '1', 2000, 'image/item/miso.jpg', '1', '8'),
(16, '090545', '2020-01-03', '2', 2000, 'image/item/miso1.jpg', '1', '8'),
(17, '103651', '2020-07-13', '1', 2000, 'image/item/miso.jpg', '3', '10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `profile` text COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `profile`, `role`) VALUES
(1, 'adminaa', 'admin@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '1111', '                admin@gmail.com              ', 'image/user/avatar.jpg', 'admin'),
(4, 'aung', 'nyi@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '123', '                                                yangon                                          ', 'image/user/avatar.jpg', 'customer'),
(5, 'ye', 'ye@gmail.com', '123', '123', 'ye@gmail.com', 'image/user/avatar.jpg', 'customer'),
(7, 'nyi', 'nyi1@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '12346', '                      yangon\r\n                    ', 'image/user/avatar.jpg', 'customer'),
(8, 'Zanye', 'frnds4146@gmail.com', 'a2c50135042059917111773be9b5881d96e7b20e', '09035367742', '                      \r\n                    ', 'image/user/avatar.jpg', 'customer'),
(9, 'aungaung', 'ad@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '1233', ' ygn', 'image/user/7.jpg', 'customer'),
(10, 'aungaung', 'aungaung12@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '123456789', 'YANGON\r\n                    ', 'image/user/avatar.jpg', 'customer'),
(11, 'admin', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', '                      \r\n                    ', 'image/user/avatar.jpg', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
