-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 05:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'varun', 'varun'),
(1, 'varun', 'varun'),
(1, 'varun', 'varun'),
(2, 'balkrishna', '1234'),
(2, 'balkrishna', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin@123'),
(1, 'balkrishna', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `product_id`, `quantity`) VALUES
(35, 3, 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(25) NOT NULL DEFAULT 'active',
  `total_amount` int(11) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order_date`, `status`, `total_amount`, `shipping_address`) VALUES
(1, 1, '0000-00-00 00:00:00', 'active', 300, 'xdseqesdtgfghhjjkjhuhg jhvuyftrses jhgygfftf'),
(2, 1, '2024-03-04 19:28:30', 'active', 620, 'nbvgfdtf hgghg hggfgg hgggghb '),
(3, 1, '2024-03-04 19:30:18', 'canceled', 500, 'xdseqesdtgfghhjjkjhuhg jhvuyftrses jhgygfftf'),
(4, 1, '2024-03-04 22:13:41', 'active', 250, 'xdseqesdtgfghhjjkjhuhg jhvuyftrses jhgygfftf'),
(5, 1, '2024-03-09 02:53:39', 'active', 100, 'xdseqesdtgfghhjjkjhuhg jhvuyftrses jhgygfftf'),
(9, 5, '2024-03-11 12:38:54', 'active', 200, 'Ramabai nagar, water tank road'),
(10, 5, '2024-03-12 19:28:47', 'canceled', 340, 'Ramabai nagar, water tank road'),
(11, 5, '2024-03-30 13:38:15', 'active', 250, 'Ramabai nagar, water tank road'),
(12, 7, '2024-04-14 20:54:33', 'active', 745, 'room 1 , swami samerth chawl , kumbarkhanpada sarvar nagar dombivli west');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 19, 3, 50),
(2, 1, 20, 1, 150),
(3, 2, 22, 3, 140),
(4, 2, 21, 2, 100),
(5, 3, 21, 2, 100),
(6, 3, 20, 2, 150),
(7, 4, 20, 1, 150),
(8, 4, 21, 1, 100),
(9, 5, 21, 1, 100),
(19, 9, 21, 2, 100),
(20, 10, 22, 1, 140),
(21, 10, 31, 1, 200),
(22, 11, 19, 2, 50),
(23, 11, 30, 1, 150),
(24, 12, 31, 1, 200),
(25, 12, 23, 1, 545);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `payment_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `order_id`, `payment_method`, `amount`, `payment_date`) VALUES
(1, 1, 'cod', 300, '0000-00-00 00:00:00'),
(2, 2, 'Cash on delivery', 620, '2024-03-04 19:28:32'),
(3, 3, 'Cash on delivery', 500, '2024-03-04 19:30:18'),
(4, 4, 'Credit card', 250, '2024-03-04 22:13:45'),
(5, 5, 'UPI', 100, '2024-03-09 02:53:39'),
(9, 9, 'Cash on delivery', 200, '2024-03-11 12:38:54'),
(10, 10, 'Cash on delivery', 340, '2024-03-12 19:28:47'),
(11, 11, 'Cash on delivery', 250, '2024-03-30 13:38:15'),
(12, 12, 'Cash on delivery', 745, '2024-04-14 20:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `description`, `price`, `image`, `category`) VALUES
(19, 'cloth bag ', 'this is a carry bag', 50, 'uploaded/carrybag.jpg', 'Fashion'),
(20, 'pot', 'this is a pot ', 150, 'uploaded/pot1.jpg', 'Fashion'),
(21, 'sample', 'this is  a sample entry ', 100, 'uploaded/sample.jpeg', 'Fashion'),
(22, 'pot2', 'this is sample pot', 140, 'uploaded/pot2.jpg', 'Home'),
(23, 'eco friendly', 'this is ample product', 545, 'uploaded/carrybag.jpg', 'Home'),
(29, 'eco friendly shoes ', 'this is  sample description of the project ', 500, 'uploaded/shoe.jpg', 'Fashion'),
(30, 'Face cream', 'this is sample text ', 150, 'uploaded/faceCREam.jpg', 'Beauty and wellness'),
(31, 'perfume', 'this will contain desccription of the product', 200, 'uploaded/plasticfreepakagingperfume.jpg', 'Beauty and wellness'),
(33, 'chocolate', 'kmkfnkfnskfnskfnsnsns', 50, '../uploaded/chocolate.jpg', 'Home');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `full_name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `full_name`, `address`, `phone_number`) VALUES
(1, 'varun', 'varunsuhaspawarvsp32@gmail.com', 'Varun@123', 'varun suhas pawar', 'xdseqesdtgfghhjjkjhuhg jhvuyftrses jhgygfftf', '9876543210'),
(3, 'balkrishna', NULL, '1234', '', '', ''),
(5, 'Gedeon', 'cwc@gmail', 'Balu@123', 'Balkrishna', 'Ramabai nagar, water tank road', '9987676937'),
(6, 'payal', 'payal@gmail.com', 'Payal@1234', 'payal vishal nikam', 'room 1 , swami samerth chawl , kumbarkhanpada sarvar nagar dombivli west', '4'),
(7, 'palak', 'payal@gmail.com', 'Payal@1234', 'payal vishal nikam', 'room 1 , swami samerth chawl , kumbarkhanpada sarvar nagar dombivli west', '4548889645');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
