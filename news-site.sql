-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2023 at 05:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(41, 'Sports', 2),
(40, 'Entertainment', 1),
(36, 'music', 2),
(37, 'video', 1),
(38, 'news', 1),
(39, 'Business', 1),
(42, 'Politics', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(49, 'test1', '                just test 1                ', '42', '21 Nov, 2023', 32, 'desktop-wallpaper-oppo-newsroom-oppo-logo.jpg'),
(50, 'test2', 'test222reger', '37', '21 Nov, 2023', 32, 'mi-xiaomi-logo-mi-xiaomi-icon-free-free-vector.jpg'),
(51, 'test3', 'fdhdbndf', '38', '21 Nov, 2023', 32, 'realme.jpg'),
(52, 'jhdgs', '                                                gvesdrbghesfr                                                ', '36', '21 Nov, 2023', 32, 'png-clipart-whatsapp-logo-whatsapp-cdr-text.png'),
(54, 'bagnan krishna puja', 'Thing to practice is surrender, seeing vishwaroopa of the lord. Lord\'s work in all the creation. All this is verily divine, which is, all this is Brahman. Arjuna was correct in questioning why act for gains. Krishna had only this option, says the consequence of gain inevitable even though practice in mind Nishkama Karma, giving up the fruits of action, but your gonna gain, that gain is like even Brahmaloka is temporary.\r\n\r\nYou don\'t do the Karna, seeing the gift of Angraj came from Duryodhana. Stay with Krishna, but thank Duryodhana may be, as if he the Lord used as a channel, but acknowledge all comes from Lord Krishna.\r\n\r\nAll the above attract karma consequence.\r\n\r\nToday practice not for the above benefits, not because a material gain comes later, like people practice sense control for the hope of heaven after death. Lord Krishna says heaven here or up there. But temporary.\r\n\r\nVery hard but, practice with Lord Krishna, in the new role, of divinise, purify, to the oneness, merger.\r\n\r\nBest is as comrade of the Lord. Arjuna a comrade of Lord Krishna. Not God as Father and you to prove something to father due from punya. Can be God as Father, you as son, that obeys, carries instructions, but with God, as if remain with family.', '40', '22 Nov, 2023', 32, 'WhatsApp Image 2023-08-26 at 12.01_edited.jpg'),
(55, ' With first AIFF-FIFA Academy, Wenger wants to maximize Indian football\'s potential', 'Arsene Wenger, in his time as coach, has seen the development of many a young talent into a footballing star. Now, as FIFA\'s chief of Global Football Development, he is working towards laying the foundation for a similar development in Indian football.\r\n\r\nThe first concrete step was the launch of the first-ever AIFF-FIFA Talent Academy in Bhubaneswar on Tuesday, which is aimed at maximizing the potential of Indian football by focussing on quality education - for the players and coaches - at an early stage at home. Wenger is leading the team from FIFA, eight of whom will stay back to guide the grassroots development in India.', '41', '22 Nov, 2023', 32, 'i.jpeg'),
(56, ' Prime Minister Narendra Modi to hold virtual G20 Leaders\' Summit today', 'Leaders of all G20 members, including the Chair of the African Union, as well as nine guest countries and heads of 11 international organisations, have been invited.\r\n\r\nOn September 10 at the closing ceremony of the G20 Summit, Prime Minister Modi announced that India would be hosting a virtual G20 Leaders\' Summit prior to the conclusion of India\'s G20 Presidency on November 22.', '42', '22 Nov, 2023', 32, 'Narendra-Modi-images-3.jpg'),
(57, 'RESTAURANTS McDonald’s increases its minority stake in China business with Carlyle deal', 'The fast-food giant sold off control of its restaurants in mainland China, Hong Kong and Macao in 2017 for $2.1 billion. It was part of McDonald’s broader strategy to own fewer restaurants, leaving it to franchisees with knowledge of local markets to run their own locations.\r\n\r\nAt that time, Citic, a state-owned investment firm, took the majority stake, while private equity giant Carlyle bought a 28% stake. McDonald’s held on to 20% of the business.\r\n\r\nFinancial terms of the deal announced Monday were not disclosed. The deal is expected to close in the first quarter of 2024, assuming regulators approve it. Citic still retains its 52% stake in the business.\r\n\r\n“We believe there is no better time to simplify our structure, given the tremendous opportunity to capture increased demand and further benefit from our fastest growing market’s long-term potential,” McDonald’s CEO Chris Kempczinski said in a statement.', '39', '22 Nov, 2023', 32, '107336451-1700489720710-gettyimages-1394914815-vcg111380207520.jpg'),
(59, 'gjhfj', 'liutgoipg', '41', '23 Nov, 2023', 40, '.lgh.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(33, 'rupashree', ' mandal', 'rupashree123', 'a28f05f5f45fe2d8a900736c8935fe44', 1),
(32, 'arunava', 'manna', 'arunava123', '6d071901727aec1ba6d8e2497ef5b709', 1),
(34, 'ram', 'kumar', 'ramkumar01', '73b197105b5366d300bcab1aba35fb9b', 0),
(35, 'sunil', 'roy', 'sunil', '18cb5657ca8c78f9552b1c1c184d07f4', 0),
(36, 'sudip', 'mandal', 'sudip54', '8a15f1e163a53f99c3e2c75b1641f379', 0),
(37, 'apurba', 'manna', 'apurba10', '17f360c957550b0e2452b37aed53a95d', 1),
(38, 'test', 'test', 'test123', 'e10adc3949ba59abbe56e057f20f883e', 1),
(40, 'aru', 'manna', 'aru123', 'e10adc3949ba59abbe56e057f20f883e', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
