-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 06:29 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `otas_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive_list`
--

CREATE TABLE `archive_list` (
  `id` int(30) NOT NULL,
  `archive_code` varchar(100) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `year` year(4) NOT NULL,
  `title` text NOT NULL,
  `abstract` text NOT NULL,
  `members` text NOT NULL,
  `banner_path` text NOT NULL,
  `document_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `student_id` int(30) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archive_list`
--

INSERT INTO `archive_list` (`id`, `archive_code`, `curriculum_id`, `year`, `title`, `abstract`, `members`, `banner_path`, `document_path`, `status`, `student_id`, `date_created`, `date_updated`) VALUES
(1, '2021120001', 1, 2021, 'Sample Project 101', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas blandit at ipsum vitae malesuada. Fusce vitae bibendum diam. Praesent non eros purus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et semper velit, pharetra efficitur eros. Aenean vel dignissim eros, sit amet pellentesque dolor. Quisque tincidunt ultricies velit sit amet fringilla. Nunc id lobortis diam, nec finibus neque. Curabitur faucibus feugiat placerat. Nunc at auctor nisi. Nunc maximus cursus mi a lacinia. Fusce eget maximus metus. Duis a tincidunt turpis. Integer dictum suscipit fringilla. Nam a eros arcu.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;b&gt;Project Manager&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;-John D Smith&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Members:&nbsp;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;-James Miller&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;-Mike Williams&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;-George Wilson&lt;/b&gt;&lt;/p&gt;', 'uploads/banners/archive-1.png?v=1639208103', 'uploads/pdf/archive-1.pdf?v=1639208103', 0, 1, '2021-12-11 14:57:22', '2023-12-06 01:18:42'),
(2, '2021120002', 1, 2020, 'Sample 102', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;In hac habitasse platea dictumst. Curabitur commodo nunc ac diam laoreet tempor. Donec sollicitudin lorem ullamcorper pretium ultrices. In varius risus in erat bibendum commodo. Ut volutpat est a mi volutpat molestie. In blandit, leo ut gravida vulputate, metus enim rutrum nunc, id mollis felis libero eu enim. Aenean placerat quis sapien sit amet blandit. Sed nec lorem efficitur, congue lorem vitae, egestas justo. Cras pulvinar, sapien vitae maximus porta, nibh libero porta risus, lobortis porta ante sapien eu massa.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Aliquam laoreet condimentum felis eu tristique. Sed a massa nulla. Donec aliquet id ante vel porta. Vestibulum maximus dictum aliquam. Sed molestie lobortis ultrices. Nunc commodo dui nunc, a tincidunt lacus molestie eget. Nullam metus enim, accumsan ac iaculis et, sollicitudin vitae erat. Praesent molestie imperdiet libero, vel congue velit fringilla quis. Suspendisse sollicitudin aliquet enim nec elementum. Morbi nec aliquet mauris. Donec eleifend metus ex.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;In sollicitudin elementum ante, ut elementum tortor porttitor sit amet. Vestibulum vehicula scelerisque porta. Maecenas vestibulum purus orci, in imperdiet velit congue fermentum. Nulla aliquam ante ut erat sagittis, et porta arcu condimentum. Praesent scelerisque nunc vel felis malesuada venenatis. Donec blandit mauris eros, eget placerat nunc convallis a. Etiam ac elementum arcu. In varius fringilla massa, at volutpat nisi blandit vel. In hac habitasse platea dictumst. Nunc blandit venenatis felis, a mattis nunc. Vestibulum a tempus mi. In interdum semper laoreet. Ut vitae urna arcu. Suspendisse ac arcu quam.&lt;/p&gt;', '&lt;ul&gt;&lt;li&gt;Sample 101&lt;/li&gt;&lt;li&gt;Sample 102&lt;/li&gt;&lt;li&gt;Sample 103&lt;/li&gt;&lt;li&gt;Sample 104&lt;br&gt;&lt;/li&gt;&lt;/ul&gt;', 'uploads/banners/archive-3.png?v=1639212829', 'uploads/pdf/archive-3.pdf?v=1639212829', 0, 1, '2021-12-11 16:53:48', '2023-12-06 01:18:49'),
(3, '2021120003', 1, 2020, 'Online Point of Sale System for XYZ Corp.', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Curabitur a lorem vitae arcu tincidunt suscipit. Vivamus posuere sodales diam, iaculis tempus sem rhoncus ac. Aenean elementum dolor sed augue gravida, vel ultrices mi sollicitudin. Sed semper sapien non tellus gravida imperdiet. Ut condimentum libero elementum ligula congue, rhoncus euismod orci ultricies. Suspendisse potenti. Vivamus rhoncus iaculis justo, non ultricies odio iaculis malesuada. Vivamus vitae odio nec est consectetur elementum. Nam et tellus pellentesque, efficitur nibh nec, sodales nulla. Phasellus vel nunc orci. Vestibulum vitae libero felis.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Fusce tellus odio, pellentesque id justo at, euismod eleifend nulla. Sed at dui non dolor porta tempus vel at justo. Curabitur condimentum, ipsum eu vehicula eleifend, lectus libero rhoncus risus, mollis porta nulla tortor vitae felis. Cras molestie lectus diam, fermentum posuere tellus facilisis ac. Nulla eu ante venenatis orci egestas tempor. Sed sed ante nisl. Nulla vitae risus quam. Donec eu neque eget urna pellentesque maximus. Mauris et lacus elit. Vivamus ligula leo, rutrum vitae semper id, gravida in dui. Maecenas augue arcu, egestas non dolor ut, fermentum rutrum sem. Duis a augue et mauris efficitur finibus nec nec neque. Nulla pulvinar, lorem sed efficitur pulvinar, nunc ex pellentesque eros, ac volutpat mauris felis sed nunc. Phasellus porta quam a nulla bibendum, a volutpat nisi tincidunt. Fusce sed semper ante, ullamcorper varius eros. In feugiat est sit amet mi accumsan, vel tempus eros pulvinar.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Aenean rhoncus massa vel convallis suscipit. Etiam pharetra, tortor vitae ornare tincidunt, ipsum purus blandit elit, a interdum libero felis id lectus. Curabitur eleifend pulvinar eros non mollis. Phasellus porttitor sollicitudin metus quis congue. Maecenas sollicitudin fermentum ullamcorper. Aenean blandit vehicula diam, a porta nisl auctor sed. Phasellus dignissim tristique mi et faucibus.&lt;/p&gt;', '&lt;p&gt;&lt;b&gt;Project Manager&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Claire Blake&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;QA&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Samantha Lou&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Programmers&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;James Dein&lt;/li&gt;&lt;li&gt;Michael Bennet&lt;/li&gt;&lt;li&gt;Jenny Cooper&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Researchers&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Ana Mae Clayton&lt;/li&gt;&lt;li&gt;Cynthia Anthony&lt;/li&gt;&lt;/ul&gt;', 'uploads/banners/archive-3.png?v=1639377036', 'uploads/pdf/archive-3.pdf?v=1639377036', 0, 3, '2021-12-13 14:30:35', '2023-12-06 01:18:55'),
(4, '2023120001', 1, 2022, 'PageRank Algorithm as a Search Engine Instrument for Disinformation Detection', '&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align:justify;text-indent:.5in;line-height:150%&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:150%;font-family:&amp;quot;Arial&amp;quot;,sans-serif&quot;&gt;Fake\r\nnews is not a new issue, but it poses a greater challenge now. According to\r\nBenjamin (2018), the flow of information has risen dramatically, with\r\ninformation now spreading globally within seconds through the Internet. As disinformation\r\nhas spread quickly, it has a big effect on how people think and act as well as\r\non society as a whole. Most people use search engines as their main source of\r\ninformation. Because of this, it is important to come up with a way to find and\r\npromote reliable information sources while reducing the amount of\r\ndisinformation.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align:justify;text-indent:.5in;line-height:150%&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:150%;font-family:&amp;quot;Arial&amp;quot;,sans-serif&quot;&gt;Google\'s\r\nPageRank algorithm is a well-known search engine ranking tool. The algorithm\r\nanalyzes the significance of web sites based on the quantity and quality of\r\nlinks going to them, with the goal being to promote trustworthy information\r\nsources while reducing disinformation. Yet, the efficiency of the PageRank\r\nalgorithm in detecting and reducing disinformation remains undetermined. &lt;span class=&quot;MsoHyperlink&quot;&gt;&lt;span style=&quot;color: windowtext;&quot;&gt;As search engines have become the primary tool for\r\naccessing information&lt;/span&gt;&lt;/span&gt;, this study will look at PageRank\'s ability\r\nto spot false information.&amp;nbsp;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;Dexter Alolod&lt;/p&gt;&lt;p&gt;Arabella Morgado&lt;/p&gt;', '', 'uploads/pdf/archive-4.pdf?v=1701797222', 1, 4, '2023-12-06 01:27:02', '2023-12-06 01:28:50'),
(5, '2023120002', 1, 2023, 'Customer Shopping Trends Dataset', '&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align:justify;line-height:150%&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:150%;font-family:&amp;quot;Arial&amp;quot;,sans-serif&quot;&gt;Customer\r\nShopping Trends Dataset is a comprehensive synthetic dataset created for\r\neducational purposes in the field of data analysis and machine learning. The\r\ndataset, containing 3900 instances, encapsulates a wide array of customer\r\nattributes, including age, gender, purchase history, preferred payment methods,\r\nshopping frequency, and more. The objective is to glean insights into consumer\r\nbehavior and purchasing patterns, which are crucial for businesses to customize\r\ntheir product offerings, marketing strategies, and overall customer experience.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align:justify;line-height:150%&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:150%;font-family:&amp;quot;Arial&amp;quot;,sans-serif&quot;&gt;The\r\nresearch involves testing and loading the Customer Shopping Trends Dataset into\r\nfive different classification techniques: BayesNet, Simple Logistic, Random\r\nForest, Decision Table, and KStar. These methods were selected for their\r\nability to handle diverse data features and provide insights from various\r\nanalytical perspectives. The dataset\'s comprehensive nature, with features like\r\npurchase amount, feedback ratings, type of items purchased, and interaction\r\nwith promotional offers, makes it an ideal candidate for such an extensive\r\nanalysis.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align:justify;line-height:150%&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:150%;font-family:&amp;quot;Arial&amp;quot;,sans-serif&quot;&gt;By\r\napplying these classification techniques, the study aims to uncover patterns\r\nand trends within the data, thereby enabling businesses to make data-driven\r\ndecisions. This analysis is expected to contribute to the optimization of\r\nproduct offerings and enhancement of customer satisfaction by aligning business\r\nstrategies with customer needs and preferences. The findings of this study are\r\nanticipated to provide valuable insights for beginners in data analysis and\r\nmachine learning, offering a practical demonstration of how these techniques\r\ncan be applied to real-world datasets.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;Dexter Alolod&lt;/p&gt;', '', 'uploads/pdf/archive-5.pdf?v=1701797294', 1, 4, '2023-12-06 01:28:14', '2023-12-06 01:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_list`
--

CREATE TABLE `curriculum_list` (
  `id` int(30) NOT NULL,
  `department_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `curriculum_list`
--

INSERT INTO `curriculum_list` (`id`, `department_id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(1, 5, 'BSCS', 'Bachelor of Science in Computer Science', 1, '2021-12-07 10:10:20', '2023-12-01 13:55:22'),
(3, 2, 'BEEd', 'Bachelor of Elementary Education', 1, '2021-12-07 10:12:50', NULL),
(4, 2, 'BSEd', 'Bachelor of Secondary Education', 1, '2021-12-07 10:13:10', NULL),
(6, 6, 'BSFi', 'Bachelor of Science in Fisheries', 1, '2021-12-07 10:14:26', '2023-12-01 13:55:00'),
(7, 6, 'BS -Marine Biology', 'Bachelor of Science in Marine Biology', 1, '2021-12-07 10:15:28', '2023-12-01 13:54:16'),
(10, 4, 'BSBA - FM', 'Bachelor of Science in Business Administration Major in Financial Management', 1, '2023-12-01 13:56:35', NULL),
(11, 4, 'BSBA - BE', 'Bachelor of Science in Business Administration Major in Business Economics', 1, '2023-12-01 13:57:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(2, 'College of Teacher Education', 'Implement Teacher Education Programs for the elementary and secondary levels and endeavor to achieve quality and excellence, relevance and responsiveness, equity and access, and efficiency and effectiveness in instruction, research, extension, and production.', 1, '2021-12-07 09:28:33', '2023-12-01 13:52:46'),
(3, 'College of Arts and Sciences', 'Develop and implement programs in Liberal Arts and Sciences to achieve academic excellence and competencies geared towards the total development of the learners in their specialized fields.', 1, '2021-12-07 09:34:11', NULL),
(4, 'College of Business Management ', 'College of Business Management and Accountancy', 1, '2021-12-07 09:34:55', '2023-12-01 13:52:09'),
(5, 'College of Information Technology Education', 'Develop creative innovators with the confidence and courage to seize and transform opportunities for the benefit of the society.', 1, '2021-12-07 09:35:19', '2023-12-01 13:52:36'),
(6, 'College of Fisheries Agriculture Aqua Marine', 'To develop scientific and technical knowledge anchored on sustainable fisheries productivity and promote linkages and networking in the implementation of fisheries programs and projects.', 1, '2021-12-07 09:37:04', '2023-12-01 13:53:27');

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `lastname` text NOT NULL,
  `department_id` int(30) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `firstname`, `middlename`, `lastname`, `department_id`, `curriculum_id`, `email`, `password`, `gender`, `status`, `avatar`, `date_created`, `date_updated`) VALUES
(1, 'John', 'D', 'Smith', 5, 1, 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 'Male', 1, 'uploads/student-1.png?v=1639202693', '2021-12-11 12:50:03', '2021-12-11 14:04:53'),
(3, 'Claire', 'C', 'Blake', 5, 1, 'cblake@sample.com', '4744ddea876b11dcb1d169fadf494418', 'Female', 1, 'uploads/student-3.png?v=1639377518', '2021-12-13 10:42:51', '2021-12-13 14:38:38'),
(4, 'Dexter', 'Letejio', 'Alolod', 5, 1, 'letijio02@gmail.com', '202cb962ac59075b964b07152d234b70', 'Male', 1, '', '2023-12-06 01:24:05', '2023-12-06 01:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Nemsu Lianga Dissertation Record Archive System'),
(6, 'short_name', 'Nemsu Lianga - DRAS'),
(11, 'logo', 'uploads/nemsu-logo.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover3.jpg'),
(15, 'content', 'Array'),
(16, 'email', 'nemsulianga@gmail.com'),
(17, 'contact', ''),
(18, 'from_time', '11:00'),
(19, 'to_time', '21:30'),
(20, 'address', 'Purok - 5 Poblacion Lianga Surigao del Sur');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/student-1.png?v=1639202560', NULL, 1, 1, '2021-01-20 14:02:37', '2021-12-11 14:02:40'),
(2, 'Claire', NULL, 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', 'uploads/avatar-2.png?v=1639377482', NULL, 2, 1, '2021-12-13 14:38:02', '2021-12-13 14:38:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curriculum_id` (`curriculum_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`(191)) USING HASH,
  ADD KEY `department_id` (`department_id`),
  ADD KEY `curriculum_id` (`curriculum_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `archive_list`
--
ALTER TABLE `archive_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD CONSTRAINT `archive_list_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_list` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD CONSTRAINT `curriculum_list_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_list`
--
ALTER TABLE `student_list`
  ADD CONSTRAINT `student_list_ibfk_1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_list_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
