-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2024 at 08:53 AM
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
-- Database: `signease`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(17, 'Unknown'),
(23, 'Affirmations'),
(24, 'Alphabets'),
(25, 'Expressing Emotions'),
(26, 'Instructions Advisory'),
(27, 'Requests'),
(28, 'Salutations');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(34, 'Cool', '1718294894cool.gif', '2024-06-13 16:08:14', 23, 13, 0),
(35, 'Super', '1718294907super.gif', '2024-06-13 16:08:27', 23, 13, 0),
(36, 'Yes', '1718294919yes.gif', '2024-06-13 16:08:39', 23, 13, 0),
(37, 'keep calm and stay home', '1718294958keep calm and stay home.gif', '2024-06-13 16:09:18', 26, 13, 0),
(38, 'NO', '1718294998no.gif', '2024-06-13 16:09:29', 26, 13, 0),
(39, 'Understand', '1718294985understand.gif', '2024-06-13 16:09:45', 26, 13, 0),
(40, 'Applause', '1718295098applause.gif', '2024-06-13 16:11:38', 25, 14, 0),
(41, 'Happy', '1718295111happy.gif', '2024-06-13 16:11:51', 25, 14, 0),
(42, 'I Love You', '1718295153i-love-you.gif', '2024-06-13 16:12:33', 25, 14, 0),
(43, 'Sorry', '1718295166sorry.gif', '2024-06-13 16:12:46', 25, 14, 0),
(44, 'Thank You', '1718295184thank-you.gif', '2024-06-13 16:13:04', 25, 14, 0),
(45, 'Wonderful', '1718295198wonderful.gif', '2024-06-13 16:13:18', 25, 14, 0),
(46, 'Please', '1718295258please.gif', '2024-06-13 16:14:18', 27, 16, 0),
(47, 'How Are You', '1718295278how-are-you.gif', '2024-06-13 16:14:38', 28, 16, 0),
(48, 'Nice To Meet You', '1718295298nice-to-meet-you.gif', '2024-06-13 16:14:58', 28, 16, 0),
(51, 'Z', '1718295381z.gif', '2024-06-13 16:16:21', 24, 17, 0),
(52, 'Y', '1718295394Y.gif', '2024-06-13 16:16:34', 24, 17, 0),
(53, 'X', '1718295407X.gif', '2024-06-13 16:16:47', 24, 17, 0),
(54, 'W', '1718295420W.gif', '2024-06-13 16:17:00', 24, 17, 0),
(55, 'V', '1718295433V.gif', '2024-06-13 16:17:13', 24, 17, 0),
(56, 'U', '1718295446U.gif', '2024-06-13 16:17:26', 24, 17, 0),
(57, 'T', '1718295459T.gif', '2024-06-13 16:17:39', 24, 17, 0),
(58, 'S', '1718295474S.gif', '2024-06-13 16:17:54', 24, 17, 0),
(59, 'R', '1718295490R.gif', '2024-06-13 16:18:10', 24, 17, 0),
(60, 'Q', '1718295504Q.gif', '2024-06-13 16:18:24', 24, 17, 0),
(61, 'P', '1718295522P.gif', '2024-06-13 16:18:42', 24, 17, 0),
(62, 'O', '1718295539O.gif', '2024-06-13 16:18:59', 24, 17, 0),
(63, 'N', '1718295553N.gif', '2024-06-13 16:19:13', 24, 17, 0),
(64, 'M', '1718295570M.gif', '2024-06-13 16:19:30', 24, 17, 0),
(65, 'L', '1718295611L.gif', '2024-06-13 16:20:11', 24, 15, 0),
(66, 'K', '1718295623K.gif', '2024-06-13 16:20:23', 24, 15, 0),
(67, 'J', '1718295641J.gif', '2024-06-13 16:20:41', 24, 15, 0),
(68, 'I', '1718295659I.gif', '2024-06-13 16:20:59', 24, 15, 0),
(69, 'H', '1718295672H.gif', '2024-06-13 16:21:12', 24, 15, 0),
(70, 'G', '1718295683G.gif', '2024-06-13 16:21:23', 24, 15, 0),
(71, 'F', '1718295697F.gif', '2024-06-13 16:21:37', 24, 15, 0),
(72, 'E', '1718295721E.gif', '2024-06-13 16:22:01', 24, 15, 0),
(73, 'D', '1718295736D.gif', '2024-06-13 16:22:16', 24, 15, 0),
(74, 'C', '1718295754C.gif', '2024-06-13 16:22:34', 24, 15, 0),
(75, 'B', '1718295769B.gif', '2024-06-13 16:22:49', 24, 15, 0),
(76, 'A', '1718295781A.gif', '2024-06-13 16:23:01', 24, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(13, 'Nagur Meeravali', 'Shaik', 'nagur', 'nagurmeeravali_shaik@srmap.edu.in', '$2y$10$igcFYYD80xzDwda2CotQZeW/t2CBlTuEyAsumdLYxx3qV9BveorQ6', '1718293099gif3.gif', 1),
(14, 'Mansoor Muzahid', 'Shaik', '@mujji', 'mansoormuzahid_shaik@srmap.edu.in', '$2y$10$gCpyj0dP31rAvkjSqYgege0ph5zr2jaBcOFl814ERg0od1eGUX2rC', '1718294496Guy.jpeg', 1),
(15, 'Nishanth', 'P.Y', '@nishanth', 'nishanthbhuvaneswar_py@srmap.edu.in', '$2y$10$zcLBGFZEcBQ1XG6bCKnmeO0qMJ9s7B7nKTgnZ/Cch2tSXcnNRuiVO', '1718294551user.jpeg', 1),
(16, 'Geetesh', 'K', '@geetesh', 'geetesh_kotturu@srmap.edu.in', '$2y$10$TYGkNJPAnq5k9VaV0xybyecZk/VYBDh0IvwvQrYjV7ZQqU0cOv0hO', '1718294586Geetesh.jpeg', 1),
(17, 'Ram Gopal', 'M', '@ram', 'ramgopal_mukhamatam@srmap.edu.in', '$2y$10$7f1ZiAr6VromUfsWYcl3HOBsXcFbDn8yEkCKETuaTCkV9n2CeY7RK', '1718294625Ram.jpeg', 1),
(18, 'user', '1', '@user1', 'user1@gmail.com', '$2y$10$xJDJg3EChTiJiQaSslK8AOsQyoHnsXaB.qQNnQ8v4izClMIg9C8Ji', '1718294673user 1.jpeg', 0),
(19, 'user', '2', '@user2', 'user2@gmail.com', '$2y$10$WSV5yrKgEv3xJ.MrBblyK.GBAe03o62sgM08Pcf1WDjQ2EO.UWwmq', '1718294754user 2.jpeg', 0),
(20, 'user', '3', '@user3', 'user3@gmail.com', '$2y$10$TP76H8yU0iu/W4hd5kwgRevL37.5Q/oc3YJglKnSZ2l/n9.SNXZRG', '1718294789user 3.jpeg', 0),
(21, 'user', '4', '@user4', 'user4@gmail.com', '$2y$10$d4UeM8lFbIoMo9Ppn32uCO83/m9lQmW06S4wvbsaBkOKgnG6lxUNW', '1718294835user 4.jpeg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
