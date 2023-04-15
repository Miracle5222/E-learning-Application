-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2023 at 02:59 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `programminglang`
--

CREATE TABLE `programminglang` (
  `programming_Id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `programminglang`
--

INSERT INTO `programminglang` (`programming_Id`, `name`) VALUES
(1, 'Java');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `admin_id` int(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`admin_id`, `username`, `password`, `email`) VALUES
(1, 'Admin', 'test', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tblchoices`
--

CREATE TABLE `tblchoices` (
  `choice_Id` int(100) NOT NULL,
  `isCorrect` varchar(100) DEFAULT NULL,
  `ch_description` varchar(400) DEFAULT NULL,
  `question_Id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblchoices`
--

INSERT INTO `tblchoices` (`choice_Id`, `isCorrect`, `ch_description`, `question_Id`) VALUES
(176, 'False', 'When you control a computers every move', 65),
(177, 'True', 'When you give instructions for a computer to follow', 65),
(178, 'False', ' When you speak a foreign language to a computer', 65),
(179, 'False', 'To make it easier for humans to understand machine code', 66),
(180, 'True', ' To translate human commands into machine code', 66),
(181, 'False', 'To make it easier for computers to understand human commands', 66),
(182, 'False', 'Low level languages', 67),
(183, 'True', 'High level languages', 67),
(184, 'False', 'Both are equally programmer-friendly', 67),
(185, 'False', 'A low level programming language', 68),
(186, 'True', 'An object-oriented programming language', 68),
(187, 'False', 'A programming language used for numerical computing', 68),
(188, 'False', 'Only for desktop computing', 69),
(189, 'False', 'Only for mobile computing', 69),
(190, 'True', 'For desktop and mobile computing, games, and numerical computing', 69),
(191, 'False', 'Only web developers', 70),
(192, 'False', ' Only data scientists', 70),
(193, 'True', 'A variety of people, including app developers and game developers', 70),
(194, 'False', 'Easy and difficult', 71),
(195, 'True', 'Low-level and high-level', 71),
(196, 'False', 'Slow and fast', 71),
(197, 'False', 'High-level languages are more difficult to understand than low-level languages.', 72),
(198, 'True', 'Low-level languages are closer to machine code and are less programmer-friendly than high-level languages.', 72),
(199, 'False', 'High-level languages are not commonly used.', 72);

-- --------------------------------------------------------

--
-- Table structure for table `tbllessons`
--

CREATE TABLE `tbllessons` (
  `lesson_Id` int(100) NOT NULL,
  `lesson_name` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `modules_Id` int(100) DEFAULT NULL,
  `lessons` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbllessons`
--

INSERT INTO `tbllessons` (`lesson_Id`, `lesson_name`, `status`, `modules_Id`, `lessons`) VALUES
(162, 'Quiz', 'lock', 17, '1.7');

-- --------------------------------------------------------

--
-- Table structure for table `tblmodules`
--

CREATE TABLE `tblmodules` (
  `modules_Id` int(100) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `programming_Id` int(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmodules`
--

INSERT INTO `tblmodules` (`modules_Id`, `module_name`, `programming_Id`, `status`) VALUES
(17, 'Introduction', 1, 'unlock');

-- --------------------------------------------------------

--
-- Table structure for table `tblmyclass`
--

CREATE TABLE `tblmyclass` (
  `myclassId` int(100) NOT NULL,
  `class_Id` int(100) DEFAULT NULL,
  `modules_Id` int(100) DEFAULT NULL,
  `module_status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmyclass`
--

INSERT INTO `tblmyclass` (`myclassId`, `class_Id`, `modules_Id`, `module_status`) VALUES
(206, 37, 17, 'done'),
(212, 38, 17, 'unlock'),
(218, 39, 17, 'unlock'),
(224, 40, 17, 'unlock'),
(230, 41, 17, 'done'),
(236, 42, 17, 'done');

-- --------------------------------------------------------

--
-- Table structure for table `tblmylessons`
--

CREATE TABLE `tblmylessons` (
  `myLessons_Id` int(100) NOT NULL,
  `class_Id` int(100) DEFAULT NULL,
  `lesson_Id` int(100) DEFAULT NULL,
  `lesson_status` varchar(100) DEFAULT NULL,
  `modules_Id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmylessons`
--

INSERT INTO `tblmylessons` (`myLessons_Id`, `class_Id`, `lesson_Id`, `lesson_status`, `modules_Id`) VALUES
(1144, 37, 162, 'done', 17),
(1189, 38, 162, 'lock', 17),
(1234, 39, 162, 'lock', 17),
(1279, 40, 162, 'lock', 17),
(1323, 41, 162, 'done', 17),
(1365, 42, 162, 'done', 17);

-- --------------------------------------------------------

--
-- Table structure for table `tblquestions`
--

CREATE TABLE `tblquestions` (
  `question_Id` int(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `quiz_Id` int(100) DEFAULT NULL,
  `question_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblquestions`
--

INSERT INTO `tblquestions` (`question_Id`, `description`, `time`, `level`, `quiz_Id`, `question_type`) VALUES
(65, 'What is programming?', '20', 'Easy', 26, 'Multiple Choice'),
(66, 'What is the purpose of programming languages?', '25', 'Easy', 26, 'Multiple Choice'),
(67, 'Which type of programming language is more programmer-friendly?', '23', 'Easy', 26, 'Multiple Choice'),
(68, 'What is Java?', '21', 'Easy', 26, 'Multiple Choice'),
(69, 'What is Java used for?', '25', 'Easy', 26, 'Multiple Choice'),
(70, 'Who uses Java?', '20', 'Easy', 26, 'Multiple Choice'),
(71, 'What are the two types of programming languages?', '23', 'Easy', 26, 'Multiple Choice'),
(72, 'What is the difference between low-level and high-level programming languages', '22', 'Easy', 26, 'Multiple Choice');

-- --------------------------------------------------------

--
-- Table structure for table `tblquiz`
--

CREATE TABLE `tblquiz` (
  `quiz_Id` int(100) NOT NULL,
  `modules_Id` int(100) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblquiz`
--

INSERT INTO `tblquiz` (`quiz_Id`, `modules_Id`, `date`) VALUES
(26, 17, '2023-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `tblquizzes`
--

CREATE TABLE `tblquizzes` (
  `quizzes_Id` int(100) NOT NULL,
  `quiz_Id` int(100) DEFAULT NULL,
  `student_Id` int(100) DEFAULT NULL,
  `modules_Id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblquizzes`
--

INSERT INTO `tblquizzes` (`quizzes_Id`, `quiz_Id`, `student_Id`, `modules_Id`) VALUES
(129, 26, 52, 17),
(130, 26, 53, 17),
(131, 26, 54, 17),
(132, 26, 55, 17),
(133, 26, 56, 17),
(134, 26, 57, 17);

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `result_Id` int(100) NOT NULL,
  `quiz_Id` int(100) DEFAULT NULL,
  `student_Id` int(100) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `endedAt` time DEFAULT NULL,
  `score` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`result_Id`, `quiz_Id`, `student_Id`, `remarks`, `endedAt`, `score`) VALUES
(112, 20, 40, 'Failed', '02:07:08', 2),
(113, 20, 40, 'Passed', '02:08:07', 8),
(114, 20, 40, 'Failed', '02:08:29', 5),
(115, 20, 40, 'Failed', '02:09:39', 3),
(116, 20, 40, 'Failed', '02:09:59', 5),
(117, 20, 40, 'Failed', '03:19:00', 3),
(118, 21, 40, 'Failed', '04:02:45', 4),
(119, 20, 40, 'Failed', '08:06:23', 6),
(120, 20, 40, 'Failed', '08:06:46', 3),
(121, 20, 41, 'Passed', '08:25:40', 9),
(122, 21, 41, 'Passed', '08:32:37', 8),
(123, 21, 41, 'Passed', '08:35:16', 8),
(124, 21, 40, 'Passed', '08:40:14', 8),
(125, 20, 40, 'Passed', '08:44:53', 9),
(126, 21, 40, 'Passed', '08:47:33', 10),
(127, 22, 40, 'Passed', '08:52:55', 6),
(128, 20, 40, 'Failed', '08:54:15', 4),
(129, 20, 40, 'Passed', '08:55:33', 9),
(130, 21, 40, 'Passed', '08:59:18', 8),
(131, 21, 40, 'Passed', '09:01:35', 8),
(132, 22, 40, 'Passed', '09:04:28', 6),
(133, 20, 40, 'Passed', '09:08:52', 9),
(134, 21, 40, 'Passed', '09:11:36', 8),
(135, 20, 44, 'Passed', '09:20:13', 9),
(136, 21, 44, 'Passed', '09:23:31', 8),
(137, 20, 44, 'Failed', '09:27:45', 3),
(138, 20, 45, 'Passed', '09:35:39', 9),
(139, 21, 45, 'Passed', '09:39:00', 8),
(140, 22, 45, 'Passed', '09:41:00', 6),
(141, 21, 45, 'Failed', '09:48:48', 4),
(142, 21, 45, 'Passed', '09:49:49', 8),
(143, 21, 45, 'Failed', '09:51:23', 7),
(144, 21, 45, 'Failed', '09:56:20', 2),
(145, 22, 45, 'Passed', '09:59:19', 6),
(146, 22, 45, 'Failed', '09:59:56', 1),
(147, 22, 45, 'Passed', '10:01:27', 6),
(148, 23, 45, 'Failed', '10:06:39', 2),
(149, 23, 45, 'Passed', '10:07:08', 7),
(150, 24, 45, 'Passed', '10:18:16', 5),
(151, 25, 45, 'Failed', '10:20:54', 1),
(152, 25, 45, 'Passed', '10:21:18', 6),
(153, 20, 45, 'Passed', '10:59:42', 9),
(154, 21, 45, 'Passed', '11:01:28', 8),
(155, 21, 45, 'Failed', '11:06:16', 5),
(156, 20, 46, 'Passed', '11:35:20', 9),
(157, 21, 46, 'Failed', '11:38:40', 6),
(158, 21, 46, 'Passed', '11:39:33', 12),
(159, 22, 46, 'Passed', '11:42:02', 10),
(160, 23, 46, 'Passed', '12:21:13', 8),
(161, 24, 46, 'Passed', '12:23:36', 8),
(162, 25, 46, 'Passed', '12:24:42', 6),
(163, 20, 47, 'Passed', '12:51:38', 13),
(164, 21, 47, 'Failed', '12:54:02', 7),
(165, 21, 47, 'Passed', '12:55:22', 8),
(166, 21, 47, 'Failed', '12:58:00', 6),
(167, 20, 51, 'Passed', '04:31:35', 9),
(168, 20, 52, 'Failed', '05:31:09', 3),
(169, 20, 52, 'Failed', '05:31:40', 5),
(170, 20, 52, 'Passed', '11:07:39', 9),
(171, 21, 52, 'Passed', '11:09:09', 8),
(172, 22, 52, 'Passed', '11:10:11', 6),
(173, 23, 52, 'Failed', '11:10:41', 3),
(174, 20, 52, 'Failed', '12:01:48', 3),
(175, 20, 52, 'Failed', '12:59:01', 4),
(176, 20, 56, 'Passed', '12:24:29', 9),
(177, 26, 57, 'Passed', '07:07:18', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tblsnippets`
--

CREATE TABLE `tblsnippets` (
  `snippets_Id` int(100) NOT NULL,
  `languageName` varbinary(100) DEFAULT NULL,
  `snippets` longtext DEFAULT NULL,
  `sublesson_Id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `student_Id` int(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`student_Id`, `username`, `email`, `password`) VALUES
(52, 'gh', 'gh', 'gh'),
(53, 'fl', 'fl', 'fl'),
(54, 'ma', 'ma', 'ma'),
(55, 'km', 'km', 'km'),
(56, 'l', 'l', 'l'),
(57, 'k', 'k', 'k');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudentlang`
--

CREATE TABLE `tblstudentlang` (
  `class_Id` int(100) NOT NULL,
  `programming_Id` int(100) DEFAULT NULL,
  `student_Id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblstudentlang`
--

INSERT INTO `tblstudentlang` (`class_Id`, `programming_Id`, `student_Id`) VALUES
(37, 1, 52),
(38, 1, 53),
(39, 1, 54),
(40, 1, 55),
(41, 1, 56),
(42, 1, 57);

-- --------------------------------------------------------

--
-- Table structure for table `tblsublessons`
--

CREATE TABLE `tblsublessons` (
  `sublesson_Id` int(100) NOT NULL,
  `header` longtext DEFAULT NULL,
  `paragraph` longtext DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `lesson_Id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsublessons`
--

INSERT INTO `tblsublessons` (`sublesson_Id`, `header`, `paragraph`, `video`, `images`, `lesson_Id`) VALUES
(44, '', '', '', '', 162);

-- --------------------------------------------------------

--
-- Table structure for table `tblsummary`
--

CREATE TABLE `tblsummary` (
  `summary_Id` int(100) NOT NULL,
  `list` varchar(100) DEFAULT NULL,
  `lesson_Id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `programminglang`
--
ALTER TABLE `programminglang`
  ADD PRIMARY KEY (`programming_Id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tblchoices`
--
ALTER TABLE `tblchoices`
  ADD PRIMARY KEY (`choice_Id`),
  ADD KEY `FK_tblchoices` (`question_Id`);

--
-- Indexes for table `tbllessons`
--
ALTER TABLE `tbllessons`
  ADD PRIMARY KEY (`lesson_Id`),
  ADD KEY `FK_tbllessons` (`modules_Id`);

--
-- Indexes for table `tblmodules`
--
ALTER TABLE `tblmodules`
  ADD PRIMARY KEY (`modules_Id`),
  ADD KEY `FK_tblmodules` (`programming_Id`);

--
-- Indexes for table `tblmyclass`
--
ALTER TABLE `tblmyclass`
  ADD PRIMARY KEY (`myclassId`),
  ADD KEY `FK_tblmyclass` (`class_Id`),
  ADD KEY `FK_tblmyclass_module` (`modules_Id`);

--
-- Indexes for table `tblmylessons`
--
ALTER TABLE `tblmylessons`
  ADD PRIMARY KEY (`myLessons_Id`),
  ADD KEY `FK_tblmylessons` (`class_Id`),
  ADD KEY `FK_tblmylessons_my` (`lesson_Id`),
  ADD KEY `FK_tblmylessons_module` (`modules_Id`);

--
-- Indexes for table `tblquestions`
--
ALTER TABLE `tblquestions`
  ADD PRIMARY KEY (`question_Id`),
  ADD KEY `FK_tblquestions` (`quiz_Id`);

--
-- Indexes for table `tblquiz`
--
ALTER TABLE `tblquiz`
  ADD PRIMARY KEY (`quiz_Id`),
  ADD KEY `FK_tblquiz` (`modules_Id`);

--
-- Indexes for table `tblquizzes`
--
ALTER TABLE `tblquizzes`
  ADD PRIMARY KEY (`quizzes_Id`),
  ADD KEY `FK_tblquizzes` (`student_Id`),
  ADD KEY `FK_tblquizzes_module` (`modules_Id`),
  ADD KEY `FK_tblquizzes_quizzes` (`quiz_Id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`result_Id`);

--
-- Indexes for table `tblsnippets`
--
ALTER TABLE `tblsnippets`
  ADD PRIMARY KEY (`snippets_Id`),
  ADD KEY `FK_tblsnippets` (`sublesson_Id`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`student_Id`);

--
-- Indexes for table `tblstudentlang`
--
ALTER TABLE `tblstudentlang`
  ADD PRIMARY KEY (`class_Id`),
  ADD KEY `FK_tblstudentlang` (`programming_Id`),
  ADD KEY `FK_tblstudentlang_student` (`student_Id`);

--
-- Indexes for table `tblsublessons`
--
ALTER TABLE `tblsublessons`
  ADD PRIMARY KEY (`sublesson_Id`),
  ADD KEY `FK_tblsublessons` (`lesson_Id`);

--
-- Indexes for table `tblsummary`
--
ALTER TABLE `tblsummary`
  ADD PRIMARY KEY (`summary_Id`),
  ADD KEY `FK_tblsummary` (`lesson_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `programminglang`
--
ALTER TABLE `programminglang`
  MODIFY `programming_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `admin_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblchoices`
--
ALTER TABLE `tblchoices`
  MODIFY `choice_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `tbllessons`
--
ALTER TABLE `tbllessons`
  MODIFY `lesson_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `tblmodules`
--
ALTER TABLE `tblmodules`
  MODIFY `modules_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tblmyclass`
--
ALTER TABLE `tblmyclass`
  MODIFY `myclassId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `tblmylessons`
--
ALTER TABLE `tblmylessons`
  MODIFY `myLessons_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1378;

--
-- AUTO_INCREMENT for table `tblquestions`
--
ALTER TABLE `tblquestions`
  MODIFY `question_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tblquiz`
--
ALTER TABLE `tblquiz`
  MODIFY `quiz_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblquizzes`
--
ALTER TABLE `tblquizzes`
  MODIFY `quizzes_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `result_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `tblsnippets`
--
ALTER TABLE `tblsnippets`
  MODIFY `snippets_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `student_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tblstudentlang`
--
ALTER TABLE `tblstudentlang`
  MODIFY `class_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tblsublessons`
--
ALTER TABLE `tblsublessons`
  MODIFY `sublesson_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `tblsummary`
--
ALTER TABLE `tblsummary`
  MODIFY `summary_Id` int(100) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblchoices`
--
ALTER TABLE `tblchoices`
  ADD CONSTRAINT `FK_tblchoices` FOREIGN KEY (`question_Id`) REFERENCES `tblquestions` (`question_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbllessons`
--
ALTER TABLE `tbllessons`
  ADD CONSTRAINT `FK_tbllessons` FOREIGN KEY (`modules_Id`) REFERENCES `tblmodules` (`modules_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblmodules`
--
ALTER TABLE `tblmodules`
  ADD CONSTRAINT `FK_tblmodules` FOREIGN KEY (`programming_Id`) REFERENCES `programminglang` (`programming_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblmyclass`
--
ALTER TABLE `tblmyclass`
  ADD CONSTRAINT `FK_tblmyclass` FOREIGN KEY (`class_Id`) REFERENCES `tblstudentlang` (`class_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tblmyclass_module` FOREIGN KEY (`modules_Id`) REFERENCES `tblmodules` (`modules_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblmylessons`
--
ALTER TABLE `tblmylessons`
  ADD CONSTRAINT `FK_tblmylessons` FOREIGN KEY (`class_Id`) REFERENCES `tblstudentlang` (`class_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tblmylessons_module` FOREIGN KEY (`modules_Id`) REFERENCES `tblmodules` (`modules_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tblmylessons_my` FOREIGN KEY (`lesson_Id`) REFERENCES `tbllessons` (`lesson_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblquestions`
--
ALTER TABLE `tblquestions`
  ADD CONSTRAINT `FK_tblquestions` FOREIGN KEY (`quiz_Id`) REFERENCES `tblquiz` (`quiz_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblquiz`
--
ALTER TABLE `tblquiz`
  ADD CONSTRAINT `FK_tblquiz` FOREIGN KEY (`modules_Id`) REFERENCES `tblmodules` (`modules_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblquizzes`
--
ALTER TABLE `tblquizzes`
  ADD CONSTRAINT `FK_tblquizzes` FOREIGN KEY (`student_Id`) REFERENCES `tblstudent` (`student_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tblquizzes_module` FOREIGN KEY (`modules_Id`) REFERENCES `tblmodules` (`modules_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tblquizzes_quizzes` FOREIGN KEY (`quiz_Id`) REFERENCES `tblquiz` (`quiz_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblsnippets`
--
ALTER TABLE `tblsnippets`
  ADD CONSTRAINT `FK_tblsnippets` FOREIGN KEY (`sublesson_Id`) REFERENCES `tblsublessons` (`sublesson_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblstudentlang`
--
ALTER TABLE `tblstudentlang`
  ADD CONSTRAINT `FK_tblstudentlang` FOREIGN KEY (`programming_Id`) REFERENCES `programminglang` (`programming_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tblstudentlang_student` FOREIGN KEY (`student_Id`) REFERENCES `tblstudent` (`student_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblsublessons`
--
ALTER TABLE `tblsublessons`
  ADD CONSTRAINT `FK_tblsublessons` FOREIGN KEY (`lesson_Id`) REFERENCES `tbllessons` (`lesson_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblsummary`
--
ALTER TABLE `tblsummary`
  ADD CONSTRAINT `FK_tblsummary` FOREIGN KEY (`lesson_Id`) REFERENCES `tbllessons` (`lesson_Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
