-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2022 at 12:11 PM
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
(48, 'True', 'java', 18),
(49, 'False', 'cobol', 18),
(50, 'False', 'fortran', 18),
(51, 'False', 'c#', 19),
(52, 'False', 'cobol', 19),
(53, 'False', 'c++', 19),
(54, 'True', 'Grace Hopper', 20),
(55, 'False', 'Albert einstein', 20),
(56, 'False', 'Charles Babage', 20),
(57, 'True', 'Charles Babbage', 21),
(58, 'False', 'Grace Hopper', 21),
(59, 'False', 'Douglas Engelbart', 21),
(60, 'False', 'Input/Output ', 22),
(61, 'True', 'Flow line', 22),
(62, 'False', 'Processing', 22),
(63, 'True', 'Terminal(Stop/Start)', 23),
(64, 'False', 'Processing', 23),
(65, 'False', 'Decision', 23),
(66, 'True', 'Input/Output', 24),
(67, 'False', 'Decision', 24),
(68, 'False', 'Predefined Process/Function', 24),
(69, 'True', 'Processing', 25),
(70, 'False', 'Flow line ', 25),
(71, 'False', 'Input/Output', 25),
(72, 'True', 'Decision', 26),
(73, 'False', 'Flow line', 26),
(74, 'False', 'Predefined Process/Function', 26),
(75, 'True', 'Predefined Process/Function', 27),
(76, 'False', 'Decision', 27),
(77, 'False', 'Processing', 27);

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
(106, 'A Quick First Look at Computer Programming', 'unlock', 17, '1.1'),
(107, 'A Partial History of Computer Programming', 'lock', 17, '1.2'),
(108, 'Flowcharts in Programming', 'lock', 17, '1.3'),
(109, 'What is Java?', 'lock', 17, '1.4'),
(110, 'Summary', 'lock', 17, '1.5'),
(111, 'Quiz', 'lock', 17, '1.6'),
(112, 'Introduction & Objectives', 'unlock', 18, '2.0'),
(113, 'Data', 'lock', 18, '2.1'),
(114, 'Data Storage', 'lock', 18, '2.2'),
(115, 'Arithmetic', 'lock', 18, '2.3'),
(116, 'Operator Precedence', 'lock', 18, '2.4'),
(117, 'Type Conversion and Casting', 'lock', 18, '2.5'),
(118, 'Summary', 'lock', 18, '2.6'),
(119, 'Quiz', 'lock', 18, '2.7'),
(120, 'Introduction and Objectives', 'unlock', 19, '3.0'),
(121, 'If-Else Statement', 'lock', 19, '3.1'),
(122, 'If-Else-If Statement', 'lock', 19, '3.2'),
(123, 'Switch Statement', 'lock', 19, '3.3'),
(124, 'Summary', 'lock', 19, '3.4'),
(125, 'Quiz', 'lock', 19, '3.5'),
(126, 'Introduction and Objectives', 'unlock', 20, '4.0'),
(127, 'While Loop', 'lock', 20, '4.1'),
(128, 'Do While Loop', 'lock', 20, '4.2'),
(129, 'Increment/Decrement Operators', 'lock', 20, '4.3'),
(130, 'For Loop', 'lock', 20, '4.4'),
(131, 'Summary', 'lock', 20, '4.5'),
(132, 'Quiz', 'lock', 20, '4.6'),
(133, 'Introduction and Objectives', 'unlock', 21, '5.0'),
(134, 'Methods Defined', 'lock', 21, '5.1'),
(135, 'Calling a Method', 'lock', 21, '5.2'),
(136, 'Call Stacks', 'lock', 21, '5.3'),
(137, 'Void Methods', 'lock', 21, '5.4'),
(138, 'Passing Arguments by Value', 'lock', 21, '5.5'),
(139, 'Overloading Methods', 'lock', 21, '5.6'),
(140, 'The Scope of Variables', 'lock', 21, '5.7'),
(141, 'Summary', 'lock', 21, '5.8'),
(142, 'Quiz', 'lock', 21, '5.9'),
(143, 'Introduction and Objectives', 'unlock', 22, '6.0'),
(144, 'Declaring and Creating Arrays', 'lock', 22, '6.1'),
(145, 'Using Subscript With an Array', 'lock', 22, '6.2'),
(146, 'Passing Arrays to a Methods', 'lock', 22, '6.3'),
(147, 'Returning an Array from a Method', 'lock', 22, '6.4'),
(148, 'Summary', 'lock', 22, '6.5'),
(149, 'Quiz', 'lock', 22, '6.6');

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
(17, 'Introduction', 1, 'unlock'),
(18, 'Data Types and Arithmetic', 1, 'lock'),
(19, 'Conditional Statement', 1, 'lock'),
(20, 'Repetition', 1, 'lock'),
(21, 'Methods', 1, 'lock'),
(22, 'Arrays', 1, 'lock');

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
(92, 20, 17, 'done'),
(93, 20, 18, 'unlock'),
(94, 20, 19, 'lock'),
(95, 20, 20, 'lock'),
(96, 20, 21, 'lock'),
(97, 20, 22, 'lock'),
(98, 21, 17, 'unlock'),
(99, 21, 18, 'lock'),
(100, 21, 19, 'lock'),
(101, 21, 20, 'lock'),
(102, 21, 21, 'lock'),
(103, 21, 22, 'lock');

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
(359, 20, 106, 'done', 17),
(360, 20, 107, 'done', 17),
(361, 20, 108, 'done', 17),
(362, 20, 109, 'done', 17),
(363, 20, 110, 'done', 17),
(364, 20, 111, 'done', 17),
(365, 20, 112, 'done', 18),
(366, 20, 113, 'done', 18),
(367, 20, 114, 'done', 18),
(368, 20, 115, 'done', 18),
(369, 20, 116, 'done', 18),
(370, 20, 117, 'done', 18),
(371, 20, 118, 'done', 18),
(372, 20, 119, 'done', 18),
(373, 20, 120, 'unlock', 19),
(374, 20, 121, 'lock', 19),
(375, 20, 122, 'lock', 19),
(376, 20, 123, 'lock', 19),
(377, 20, 124, 'lock', 19),
(378, 20, 125, 'lock', 19),
(379, 20, 126, 'lock', 20),
(380, 20, 127, 'lock', 20),
(381, 20, 128, 'lock', 20),
(382, 20, 129, 'lock', 20),
(383, 20, 130, 'lock', 20),
(384, 20, 131, 'lock', 20),
(385, 20, 132, 'lock', 20),
(386, 20, 133, 'lock', 21),
(387, 20, 134, 'lock', 21),
(388, 20, 135, 'lock', 21),
(389, 20, 136, 'lock', 21),
(390, 20, 137, 'lock', 21),
(391, 20, 138, 'lock', 21),
(392, 20, 139, 'lock', 21),
(393, 20, 140, 'lock', 21),
(394, 20, 141, 'lock', 21),
(395, 20, 142, 'lock', 21),
(396, 20, 143, 'lock', 22),
(397, 20, 144, 'lock', 22),
(398, 20, 145, 'lock', 22),
(399, 20, 146, 'lock', 22),
(400, 20, 147, 'lock', 22),
(401, 20, 148, 'lock', 22),
(402, 20, 149, 'lock', 22),
(403, 21, 106, 'unlock', 17),
(404, 21, 107, 'lock', 17),
(405, 21, 108, 'lock', 17),
(406, 21, 109, 'lock', 17),
(407, 21, 110, 'lock', 17),
(408, 21, 111, 'lock', 17),
(409, 21, 112, 'lock', 18),
(410, 21, 113, 'lock', 18),
(411, 21, 114, 'lock', 18),
(412, 21, 115, 'lock', 18),
(413, 21, 116, 'lock', 18),
(414, 21, 117, 'lock', 18),
(415, 21, 118, 'lock', 18),
(416, 21, 119, 'lock', 18),
(417, 21, 120, 'lock', 19),
(418, 21, 121, 'lock', 19),
(419, 21, 122, 'lock', 19),
(420, 21, 123, 'lock', 19),
(421, 21, 124, 'lock', 19),
(422, 21, 125, 'lock', 19),
(423, 21, 126, 'lock', 20),
(424, 21, 127, 'lock', 20),
(425, 21, 128, 'lock', 20),
(426, 21, 129, 'lock', 20),
(427, 21, 130, 'lock', 20),
(428, 21, 131, 'lock', 20),
(429, 21, 132, 'lock', 20),
(430, 21, 133, 'lock', 21),
(431, 21, 134, 'lock', 21),
(432, 21, 135, 'lock', 21),
(433, 21, 136, 'lock', 21),
(434, 21, 137, 'lock', 21),
(435, 21, 138, 'lock', 21),
(436, 21, 139, 'lock', 21),
(437, 21, 140, 'lock', 21),
(438, 21, 141, 'lock', 21),
(439, 21, 142, 'lock', 21),
(440, 21, 143, 'lock', 22),
(441, 21, 144, 'lock', 22),
(442, 21, 145, 'lock', 22),
(443, 21, 146, 'lock', 22),
(444, 21, 147, 'lock', 22),
(445, 21, 148, 'lock', 22),
(446, 21, 149, 'lock', 22);

-- --------------------------------------------------------

--
-- Table structure for table `tblquestions`
--

CREATE TABLE `tblquestions` (
  `question_Id` int(100) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `quiz_Id` int(100) DEFAULT NULL,
  `question_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblquestions`
--

INSERT INTO `tblquestions` (`question_Id`, `description`, `time`, `level`, `quiz_Id`, `question_type`) VALUES
(18, 'Choose one high level computer programming language', '01:00', 'Easy', 20, 'Multiple Choice'),
(19, 'Choose one low level computer programming languages', '01:21', 'Easy', 20, 'Multiple Choice'),
(20, 'Who develop the first computer language', '01:05', 'Easy', 20, 'Multiple Choice'),
(21, 'Who is the father of computing', '01:00', 'Easy', 20, 'Multiple Choice'),
(22, 'Used to indicate the flow of logic by connecting symbols.', '01:31', 'Easy', 20, 'Multiple Choice'),
(23, 'Used to represent start and end of flowchart.', '02:09', 'Medium', 20, 'Multiple Choice'),
(24, 'Used for input and output operation.', '01:00', 'Easy', 20, 'Multiple Choice'),
(25, 'Used for arithmetic operations and data manipulations', '01:05', 'Easy', 20, 'Multiple Choice'),
(26, 'Used to represent the operation in which there are two alternatives: true and false.', '01:05', 'Easy', 20, 'Multiple Choice'),
(27, 'Used to represent a group of statements performing one processing task.', '02:10', 'Easy', 20, 'Multiple Choice');

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
(20, 17, '2022-12-02');

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
(12, 20, 35, 17),
(13, 20, 36, 17);

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
(1, 15, 35, 'Failed', '00:00:00', 1),
(2, 15, 35, 'Failed', '00:00:00', 1),
(3, 15, 35, 'Failed', '05:35:48', 1),
(4, 15, 36, 'Failed', '10:39:42', 1),
(5, 15, 35, 'Failed', '10:43:40', 0),
(6, 15, 35, 'Failed', '10:43:48', 1),
(7, 15, 35, 'Failed', '10:44:19', 2),
(8, 15, 35, 'Failed', '10:45:47', 3),
(9, 15, 35, 'Passed', '10:47:26', 4),
(10, 15, 35, 'Failed', '11:26:24', 2),
(11, 15, 35, 'Passed', '12:26:23', 4),
(12, 19, 35, 'Failed', '02:09:26', 0),
(13, 19, 35, 'Failed', '02:11:01', 0),
(14, 19, 35, 'Failed', '02:11:37', 0),
(15, 19, 35, 'Failed', '02:16:11', 0),
(16, 19, 35, 'Failed', '02:17:24', 0),
(17, 19, 35, 'Failed', '02:19:40', 0),
(18, 19, 35, 'Failed', '02:21:30', 0),
(19, 19, 35, 'Failed', '02:22:27', 1),
(20, 19, 35, 'Failed', '02:23:21', 0),
(21, 19, 35, 'Failed', '02:30:53', 2),
(22, 19, 35, 'Failed', '02:31:11', 2),
(23, 19, 35, 'Failed', '02:32:24', 0),
(24, 19, 35, 'Failed', '02:46:21', 0),
(25, 19, 35, 'Failed', '02:46:44', 0),
(26, 19, 35, 'Failed', '02:47:17', 0),
(27, 19, 35, 'Failed', '02:47:28', 0),
(28, 19, 35, 'Failed', '02:48:04', 0),
(29, 19, 35, 'Failed', '02:48:21', 0),
(30, 19, 35, 'Failed', '02:51:02', 0),
(31, 19, 35, 'Failed', '02:52:45', 0),
(32, 20, 35, 'Failed', '03:51:34', 2),
(33, 20, 35, 'Passed', '03:52:17', 8);

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
(35, 'p', 'p', 'p'),
(36, 'h', 'h', 'h');

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
(20, 1, 35),
(21, 1, 36);

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
(18, ' the quick brown fox jumps over the lazy dog', ' the quick brown fox jumps over the lazy dog', 'Z429kxtEWYM', 'certificate.jpg', 106),
(19, ' the quick brown fox jumps over the lazy dog the quick brown fox jumps over the lazy dog the quick brown fox jumps over the lazy dog the quick brown fox jumps over the lazy dog the quick brown fox jumps over the lazy dog', ' the quick brown fox jumps over the lazy dog the quick brown fox jumps over the lazy dog the quick brown fox jumps over the lazy dog the quick brown fox jumps over the lazy dog', 'tBTNMo77h2Q', 'user.png', 106);

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
  MODIFY `choice_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `tbllessons`
--
ALTER TABLE `tbllessons`
  MODIFY `lesson_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `tblmodules`
--
ALTER TABLE `tblmodules`
  MODIFY `modules_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblmyclass`
--
ALTER TABLE `tblmyclass`
  MODIFY `myclassId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `tblmylessons`
--
ALTER TABLE `tblmylessons`
  MODIFY `myLessons_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;

--
-- AUTO_INCREMENT for table `tblquestions`
--
ALTER TABLE `tblquestions`
  MODIFY `question_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblquiz`
--
ALTER TABLE `tblquiz`
  MODIFY `quiz_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblquizzes`
--
ALTER TABLE `tblquizzes`
  MODIFY `quizzes_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `result_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tblsnippets`
--
ALTER TABLE `tblsnippets`
  MODIFY `snippets_Id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `student_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblstudentlang`
--
ALTER TABLE `tblstudentlang`
  MODIFY `class_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsublessons`
--
ALTER TABLE `tblsublessons`
  MODIFY `sublesson_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
