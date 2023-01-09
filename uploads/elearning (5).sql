-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2023 at 07:25 PM
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
(77, 'False', 'Processing', 27),
(84, 'True', '0.3048', 38),
(85, 'True', '10', 39),
(86, 'True', 'x = 2, y = 5, z = 6', 30),
(87, 'False', 'x = 2,  z = 6', 30),
(88, 'False', 'x = 2, y = 5', 30),
(89, 'True', 'x + y = 7', 31),
(90, 'False', 'x + y + 2', 31),
(91, 'True', 'x = y = 8', 31),
(92, 'True', 'z / x = 3', 32),
(93, 'False', 'z / x - 1', 32),
(94, 'False', 'z / x = 0.5', 32),
(98, 'True', '2 times 2 = 4', 33),
(99, 'False', '2 minus 2 = -4', 33),
(100, 'False', '2 times 2 = 8', 33),
(101, 'True', '0.5', 34),
(102, 'False', '2.5', 34),
(103, 'False', '5.0', 34),
(104, 'True', '24.5', 35),
(105, 'False', '25', 35),
(106, 'False', '45', 35),
(110, 'True', '37.6', 37),
(111, 'False', '76', 37),
(112, 'False', '36.7', 37),
(113, 'True', 'x = 2, y = 5, z = 6', 36),
(114, 'False', 'x = 2, y = 5', 36),
(115, 'False', 'x = 2,  z = 6', 36),
(116, 'True', 'x is greater than y', 40),
(117, 'False', 'x is less than y', 40),
(118, 'False', 'x is equal to y', 40),
(119, 'True', 'Good evening.', 42),
(120, 'False', 'Good', 42),
(121, 'False', 'Good day', 42),
(122, 'True', 'Odd', 43),
(123, 'False', 'Even', 43),
(124, 'False', 'Equal', 43),
(125, 'True', 'Looking forward to the Weekend', 44),
(126, 'False', 'Today is Sunday', 44),
(127, 'False', 'Today is Saturday', 44),
(128, 'True', '78', 45),
(129, 'True', 'myNum is equal or less than yourNum', 46),
(130, 'False', 'myNum is greater than yourNum', 46),
(131, 'False', 'myNum is less than yourNum', 46),
(132, 'True', '55', 47),
(133, 'True', '30', 48),
(134, 'True', '4', 49),
(135, 'False', '5', 49),
(136, 'False', '6', 49),
(137, 'True', '27', 50),
(138, 'False', '16', 50),
(139, 'False', '33', 50),
(140, 'True', '48', 51),
(141, 'False', '99', 51),
(142, 'False', '64', 51),
(143, 'True', '5050', 52),
(144, 'True', '91', 53),
(145, 'True', 'hello Yourname', 54),
(146, 'False', 'Yourname Hello', 54),
(147, 'False', 'hello', 54),
(148, 'False', '6', 55),
(149, 'True', '5', 55),
(150, 'False', '10', 55),
(151, 'True', '51', 56),
(152, 'False', '52', 56),
(153, 'False', '15', 56),
(154, 'True', 'Even', 57),
(155, 'False', 'Odd', 57),
(156, 'False', 'Evens', 57),
(158, 'True', '4', 58),
(159, 'False', '5', 58),
(160, 'False', '3', 58),
(161, 'True', '25 5 6 8', 59),
(162, 'False', '24 5 6 7', 59),
(163, 'False', '25 5 6 ', 59),
(164, 'True', '2 15 3 8 10 13', 60),
(165, 'False', '2 15 4 8 10 14', 60),
(166, 'False', '1 12 3 8 10 1', 60),
(167, 'False', '6', 61),
(168, 'True', '5', 61),
(169, 'False', '10', 61),
(170, 'True', '48', 63),
(171, 'False', '99', 63),
(172, 'False', '57', 63),
(173, 'True', '27', 64),
(174, 'False', '25', 64),
(175, 'False', '22', 64);

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
(157, 'A Quick First Look at Computer Programming', 'unlock', 17, '1.1'),
(158, 'A Partial History of Computer Programming', 'lock', 17, '1.2'),
(159, 'Flowcharts in Programming', 'lock', 17, '1.3'),
(160, 'What is Java?', 'lock', 17, '1.5'),
(161, 'Summary', 'lock', 17, '1.6'),
(162, 'Quiz', 'lock', 17, '1.7'),
(163, 'Introduction & Objectives', 'unlock', 18, '2.0'),
(164, 'Data', 'lock', 18, '2.1'),
(165, 'Data Storage', 'lock', 18, '2.2'),
(166, 'Arithmetic', 'lock', 18, '2.3'),
(167, 'Operator Precedence', 'lock', 18, '2.4'),
(168, 'Type Conversion and Casting', 'lock', 18, '2.5'),
(169, 'Summary', 'lock', 18, '2.6'),
(170, 'Quiz', 'unlock', 18, '2.7'),
(171, 'Introduction and Objectives', 'unlock', 19, '3.0'),
(172, 'If-Else Statement', 'lock', 19, '3.1'),
(173, 'If-Else-If Statement', 'lock', 19, '3.2'),
(174, 'Switch Statement', 'lock', 19, '3.3'),
(175, 'Summary', 'lock', 19, '3.4'),
(176, 'Quiz', 'unlock', 19, '3.5'),
(177, 'Introduction and Objectives', 'unlock', 20, '4.0'),
(178, 'While Loop', 'lock', 20, '4.1'),
(179, 'Do While Loop', 'lock', 20, '4.2'),
(180, 'Increment/Decrement Operators', 'lock', 20, '4.3'),
(181, 'For Loop', 'lock', 20, '4.4'),
(182, 'Summary', 'lock', 20, '4.5'),
(183, 'Quiz', 'unlock', 20, '4.6'),
(184, 'Introduction and Objectives', 'unlock', 21, '5.0'),
(185, 'Methods Defined', 'lock', 21, '5.1'),
(186, 'Calling a Method', 'lock', 21, '5.2'),
(187, 'Call Stacks', 'lock', 21, '5.3'),
(188, 'Void Methods', 'lock', 21, '5.4'),
(189, 'Passing Arguments by Value', 'lock', 21, '5.5'),
(190, 'Overloading Methods', 'lock', 21, '5.6'),
(191, 'The Scope of Variables', 'lock', 21, '5.7'),
(192, 'Summary', 'lock', 21, '5.8'),
(193, 'Quiz', 'unlock', 21, '5.9'),
(194, 'Introduction and Objectives', 'unlock', 22, '6.0'),
(195, 'Declaring and Creating Arrays', 'lock', 22, '6.1'),
(196, 'Using Subscript With an Array', 'lock', 22, '6.2'),
(197, 'Passing Arrays to a Methods', 'lock', 22, '6.3'),
(198, 'Returning an Array from a Method', 'lock', 22, '6.4'),
(199, 'Summary', 'lock', 22, '6.5'),
(200, 'Quiz', 'lock', 22, '6.6'),
(206, 'Quiz', 'lock', 17, '1.4');

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
(206, 37, 17, 'done'),
(207, 37, 18, 'done'),
(208, 37, 19, 'done'),
(209, 37, 20, 'unlock'),
(210, 37, 21, 'lock'),
(211, 37, 22, 'lock'),
(212, 38, 17, 'unlock'),
(213, 38, 18, 'lock'),
(214, 38, 19, 'lock'),
(215, 38, 20, 'lock'),
(216, 38, 21, 'lock'),
(217, 38, 22, 'lock');

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
(1138, 37, 157, 'done', 17),
(1139, 37, 158, 'done', 17),
(1140, 37, 159, 'done', 17),
(1141, 37, 206, 'done', 17),
(1142, 37, 160, 'done', 17),
(1143, 37, 161, 'done', 17),
(1144, 37, 162, 'done', 17),
(1145, 37, 163, 'unlock', 18),
(1146, 37, 164, 'lock', 18),
(1147, 37, 165, 'lock', 18),
(1148, 37, 166, 'lock', 18),
(1149, 37, 167, 'lock', 18),
(1150, 37, 168, 'lock', 18),
(1151, 37, 169, 'lock', 18),
(1152, 37, 170, 'done', 18),
(1153, 37, 171, 'unlock', 19),
(1154, 37, 172, 'lock', 19),
(1155, 37, 173, 'lock', 19),
(1156, 37, 174, 'lock', 19),
(1157, 37, 175, 'lock', 19),
(1158, 37, 176, 'done', 19),
(1159, 37, 177, 'done', 20),
(1160, 37, 178, 'done', 20),
(1161, 37, 179, 'done', 20),
(1162, 37, 180, 'done', 20),
(1163, 37, 181, 'done', 20),
(1164, 37, 182, 'done', 20),
(1165, 37, 183, 'done', 20),
(1166, 37, 184, 'unlock', 21),
(1167, 37, 185, 'lock', 21),
(1168, 37, 186, 'lock', 21),
(1169, 37, 187, 'lock', 21),
(1170, 37, 188, 'lock', 21),
(1171, 37, 189, 'lock', 21),
(1172, 37, 190, 'lock', 21),
(1173, 37, 191, 'lock', 21),
(1174, 37, 192, 'lock', 21),
(1175, 37, 193, 'unlock', 21),
(1176, 37, 194, 'unlock', 22),
(1177, 37, 195, 'lock', 22),
(1178, 37, 196, 'lock', 22),
(1179, 37, 197, 'lock', 22),
(1180, 37, 198, 'lock', 22),
(1181, 37, 199, 'lock', 22),
(1182, 37, 200, 'lock', 22),
(1183, 38, 157, 'done', 17),
(1184, 38, 158, 'unlock', 17),
(1185, 38, 159, 'lock', 17),
(1186, 38, 206, 'lock', 17),
(1187, 38, 160, 'lock', 17),
(1188, 38, 161, 'lock', 17),
(1189, 38, 162, 'lock', 17),
(1190, 38, 163, 'unlock', 18),
(1191, 38, 164, 'lock', 18),
(1192, 38, 165, 'lock', 18),
(1193, 38, 166, 'lock', 18),
(1194, 38, 167, 'lock', 18),
(1195, 38, 168, 'lock', 18),
(1196, 38, 169, 'lock', 18),
(1197, 38, 170, 'unlock', 18),
(1198, 38, 171, 'unlock', 19),
(1199, 38, 172, 'lock', 19),
(1200, 38, 173, 'lock', 19),
(1201, 38, 174, 'lock', 19),
(1202, 38, 175, 'lock', 19),
(1203, 38, 176, 'unlock', 19),
(1204, 38, 177, 'unlock', 20),
(1205, 38, 178, 'lock', 20),
(1206, 38, 179, 'lock', 20),
(1207, 38, 180, 'lock', 20),
(1208, 38, 181, 'lock', 20),
(1209, 38, 182, 'lock', 20),
(1210, 38, 183, 'unlock', 20),
(1211, 38, 184, 'unlock', 21),
(1212, 38, 185, 'lock', 21),
(1213, 38, 186, 'lock', 21),
(1214, 38, 187, 'lock', 21),
(1215, 38, 188, 'lock', 21),
(1216, 38, 189, 'lock', 21),
(1217, 38, 190, 'lock', 21),
(1218, 38, 191, 'lock', 21),
(1219, 38, 192, 'lock', 21),
(1220, 38, 193, 'unlock', 21),
(1221, 38, 194, 'unlock', 22),
(1222, 38, 195, 'lock', 22),
(1223, 38, 196, 'lock', 22),
(1224, 38, 197, 'lock', 22),
(1225, 38, 198, 'lock', 22),
(1226, 38, 199, 'lock', 22),
(1227, 38, 200, 'lock', 22);

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
(18, 'Choose one high level computer programming language', '45', 'Easy', 20, 'Multiple Choice'),
(19, 'Choose one low level computer programming languages', '50', 'Easy', 20, 'Multiple Choice'),
(20, 'Who develop the first computer language', '40', 'Easy', 20, 'Multiple Choice'),
(21, 'Who is the father of computing', '30', 'Easy', 20, 'Multiple Choice'),
(22, 'Used to indicate the flow of logic by connecting symbols.', '50', 'Easy', 20, 'Multiple Choice'),
(23, 'Used to represent start and end of flowchart.', '55', 'Medium', 20, 'Multiple Choice'),
(24, 'Used for input and output operation.', '25', 'Easy', 20, 'Multiple Choice'),
(25, 'Used for arithmetic operations and data manipulations', '30', 'Easy', 20, 'Multiple Choice'),
(26, 'Used to represent the operation in which there are two alternatives: true and false.', '46', 'Easy', 20, 'Multiple Choice'),
(27, 'Used to represent a group of statements performing one processing task.', '38', 'Easy', 20, 'Multiple Choice'),
(30, 'Suppose X, Y, AND z are INT VARIABLES AND X = 2, Y = 5, AND z = 6. What IS the output of the following statements? System.out.println(\'x = \' + x + \', y = \' + y + \', z = \' + z);', '46', 'Medium', 21, 'Multiple Choice'),
(31, 'Suppose x, y, and z are int variables and  x = 2, y = 5, and z = 6. What is the output of the following statements? : System.out.println(\"x + y = \" + (x + y));;', '52', 'Medium', 21, 'Multiple Choice'),
(32, 'Suppose x, y, and z are int variables and x = 2, y = 5, and z = 6. What is the output of the following statements? : System.out.println(\"z / x = \" + (z / x));', '55', 'Medium', 21, 'Multiple Choice'),
(33, '	Suppose x, y, and z are int variables and x = 2, y = 5, and z = 6. What is the output of the following statements? : System.out.println(\" 2 times \" + x + \" = \" + (2 * x));', '45', 'Medium', 21, 'Multiple Choice'),
(34, 'What is the output of the following statements? Suppose a and b are int variables, c is a double variable, and a = 13, b = 5, and c = 17.5. : System.out.println(a + b - c);', '45', 'Medium', 21, 'Multiple Choice'),
(35, 'What is the output of the following statements? Suppose a and b are int variables, c is a double variable, and a = 13, b = 5, and c = 17.5. : System.out.println(15 / 2 + c);', '42', 'Medium', 21, 'Multiple Choice'),
(36, 'What is the output of the following statements? Suppose a and b are int variables, c is a double variable, and a = 13, b = 5, and c = 17.5. : System.out.println(a / (double)(b) + 2 * c);', '36', 'Medium', 21, 'Multiple Choice'),
(37, '	What is the output of the following statements? Suppose a and b are int variables, c is a double variable, and a = 13, b = 5, and c = 17.5. :  System.out.println((int)(c)% 5 + a - b);', '56', 'Medium', 21, 'Multiple Choice'),
(38, 'write a java program that convert 12 inches to meters', '55', 'Medium', 21, 'Problem Solving'),
(39, 'write a java program that add 6 and 4.', '52', 'Medium', 21, 'Problem Solving'),
(40, 'What is the output of the following prgram:\r\n\r\nint x = 20;\r\nint y = 18;\r\nif (x > y) {\r\nSystem.out.println(\"x is greater than y\");\r\n}', '52', 'Medium', 22, 'Multiple Choice'),
(42, 'What is the output of the following program: \r\n\r\nint time = 20;\r\nif (time < 18) {\r\n  System.out.println(\"Good day.\");\r\n} else {\r\n  System.out.println(\"Good evening.\");\r\n}', '42', 'Medium', 22, 'Multiple Choice'),
(43, 'What is the output of the following program:\r\n\r\nint x = 45;\r\n     \r\nif (x%2 == 0) {\r\n     System.out.println(\"Even\");\r\n}else{\r\n      System.out.println(\"Odd\");\r\n}', '42', 'Medium', 22, 'Multiple Choice'),
(44, 'What is the output of the following program:\r\nint day = 4;\r\nswitch (day) {\r\n  case 6:\r\n   System.out.println(\"Today is \r\n    Saturday\");\r\n   break;\r\n   default:\r\n   System.out.println(\"Looking forward to the Weekend\");}', '46', 'Medium', 22, 'Multiple Choice'),
(45, 'Write a java program that determine the max number of the array 34,67,78,22,34', '25', 'Hard', 22, 'Problem Solving'),
(46, 'What is the output of the following program? \r\n\r\n    int myNum = 30;\r\n    int yourNum = 30;\r\n    if(myNum <= yourNum){\r\n         System.out.println(\"myNum is equal or less than yourNum\");\r\n    }else{\r\n         System.out.println(\"myNum is greater than yourNum\");\r\n    }', '45', 'Medium', 22, 'Multiple Choice'),
(47, 'Write a java program that add all integers between  1 and 10.', '45', 'Medium', 23, 'Problem Solving'),
(48, 'Write a program that add all even numbers between 1 and 10.', '45', 'Medium', 23, 'Problem Solving'),
(49, 'What is the output of the following program?\r\n\r\nint [] x = {4,5,6,7,8,9};\r\nSystem.out.println(x[0])', '45', 'Medium', 23, 'Multiple Choice'),
(50, 'What is the output of the following program?\r\n\r\nint [] x = {4,5,6,7,8,9};\r\nint [] y = {22,56,32};\r\nSystem.out.println(x[1] + y[0]).', '45', 'Medium', 23, 'Multiple Choice'),
(51, 'What is the output of the following program?\r\n\r\nint [] x = {4,5,6,7,8,9};\r\nint [] y = {22,56,32};\r\nSystem.out.println(y[2] + y[0]  - x[2])', '45', 'Medium', 23, 'Multiple Choice'),
(52, 'Write a program that adds all integers from 1 to 100 using forloop and prints the sum', '45', 'Medium', 25, 'Problem Solving'),
(53, 'Write a program to calculate the sum of the following grades: 98,89,88,86,90,100 and prints the average  integers', '45', 'Medium', 25, 'Problem Solving'),
(54, 'What is the output of the code below?\r\n\r\nclass HelloWorld {\r\n    public static void main(String[] args) {\r\n         printNMessage(\"Yourname\");\r\n    }\r\n    public static void printNMessage(String message) {\r\n         System.out.println(\"hello \"+ message);\r\n     }\r\n}', '45', 'Medium', 24, 'Multiple Choice'),
(55, 'What is the output of the code below? \r\nclass HelloWorld {\r\n    public static void main(String[] args) {\r\n    subtract(10,5);\r\n    }\r\n    public static void subtract(int num1,int num2) {\r\n     System.out.println(num1 - num2);\r\n }\r\n}', '45', 'Medium', 24, 'Multiple Choice'),
(56, 'What is the output of the code below? \r\n public static void main(String[] args) {\r\n    sum(35,16);\r\n    }\r\n    public static void sum(int x, int y) {\r\n        int result;\r\n        System.out.println(result = x + y);\r\n}', '45', 'Medium', 24, 'Multiple Choice'),
(57, 'What is the output of the following program?\r\n public static void main(String[] args) {\r\n    isEven(4);\r\n    }\r\n    public static void isEven(int num) {\r\n    if(num % 2 == 0){\r\n        System.out.println(\"Even\");\r\n    }else{\r\n         System.out.println(\"Odd\");\r\n    }\r\n}', '45', 'Easy', 24, 'Multiple Choice'),
(58, 'What is the output of the following program?\r\nclass HelloWorld {\r\n    public static void main(String[] args) {\r\n    getRemainder(14,5);\r\n    }\r\n    public static void getRemainder(int num,int num2) {\r\n         System.out.println(num % num2);\r\n    }\r\n}\r\n', '45', 'Medium', 24, 'Multiple Choice'),
(59, 'What is the result of the code below?\r\n  \r\n    int[] values = {2, 5, 5, 6, 8, 10, 4, 5};\r\n    int a = 0;\r\n    while (values[a] <= values[a+1]){\r\n        System.out.println(values[a]);\r\n        a = a + 1;\r\n    }\r\n \r\n', '45', 'Medium', 25, 'Multiple Choice'),
(60, 'What is the result of the code below?\r\n\r\n int [] values = {2, 1, 5, 3, 8, 10, 13, 5};\r\n int b = 0;\r\n while (b <= values[b]){\r\n System.out.println(values[b]);\r\n b++;\r\n }\r\n', '45', 'Medium', 25, 'Multiple Choice'),
(61, 'class HelloWorld {\r\n    public static void main(String[] args) {\r\n    subtract(10,5);\r\n    }\r\n    public static void subtract(int num1,int num2) {\r\n     System.out.println(num1 - num2);\r\n }\r\n}', '36', 'Medium', 25, 'Multiple Choice'),
(63, 'What is the output of the following program? int [] x = {4,5,6,7,8,9}; int [] y = {22,56,32}; System.out.println(y[2] + y[0] - x[2])', '45', 'Medium', 25, 'Multiple Choice'),
(64, 'What is the output of the following program? int [] x = {4,5,6,7,8,9}; int [] y = {22,56,32}; System.out.println(x[1] + y[0]).', '55', 'Medium', 25, 'Multiple Choice');

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
(20, 17, '2022-12-02'),
(21, 18, '2022-12-04'),
(22, 19, '2022-12-04'),
(23, 20, '2022-12-04'),
(24, 21, '2022-12-04'),
(25, 22, '2022-12-04');

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
(99, 20, 52, 17),
(100, 21, 52, 18),
(101, 22, 52, 19),
(102, 23, 52, 20),
(103, 24, 52, 21),
(104, 25, 52, 22),
(105, 20, 53, 17),
(106, 21, 53, 18),
(107, 22, 53, 19),
(108, 23, 53, 20),
(109, 24, 53, 21),
(110, 25, 53, 22);

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
(175, 20, 52, 'Failed', '12:59:01', 4);

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

--
-- Dumping data for table `tblsnippets`
--

INSERT INTO `tblsnippets` (`snippets_Id`, `languageName`, `snippets`, `sublesson_Id`) VALUES
(2, 0x6a617661736372697074, 'var x; // Declare x\r\nx = 5; // Assign 5 to x\r\n\r\nelem = document.getElementById(\"demo\"); // Find an element\r\nelem.innerHTML = x;   ', 24),
(3, 0x5377696674, 'import UIKit\r\nclass ViewController: UIViewController {\r\noverride func viewDidLoad() {\r\n  super.viewDidLoad()\r\n  // Do any additional setup after loading the view,\r\ntypically from a nib.\r\n}\r\noverride func didReceiveMemoryWarning() {\r\n  super.didReceiveMemoryWarning()\r\n  // Dispose of any resources that can be recreated.\r\n}\r\n@IBAction func showMessage(sender: UIButton) {\r\n  let alertController = UIAlertController(title:\r\n\"Welcome to My First App\", message: \"Hello World\",\r\npreferredStyle: UIAlertControllerStyle.alert)\r\n\r\n  alertController.addAction(UIAlertAction(title: \"OK\",\r\nstyle: UIAlertActionStyle.default, handler: nil))\r\n  present(alertController, animated: true, completion: nil)\r\n}\r\n}', 25),
(4, 0x6861736b656c6c, 'global _start\r\nsection .text\r\n_start:\r\n  mov rax, 1 ; write(\r\n  mov rdi, 1 ; STDOUT_FILENO,\r\n  mov rsi, msg ; \"Hello, world!\n\",\r\n  mov rdx, msglen ; sizeof(\"Hello, world!\n\")\r\n  syscall ; );\r\n  mov rax, 60 ; exit(\r\n  mov rdi, 0 ; EXIT_SUCCESS\r\n  syscall ; );\r\nsection .rodata\r\n  msg: db \"Hello, world!\", 10\r\n  msglen: equ $ - msg', 27),
(5, 0x6a617661, 'class CharDemo {\r\npublic static void main(String args[]) {\r\n    char ch1, ch2;\r\n    ch1 = 88; // code for X\r\n    ch2 = \'Y\';\r\n    System.out.print(\"ch1 and ch2: \");\r\n    System.out.println(ch1 + \" \" + ch2);\r\n  }\r\n}', 59),
(6, 0x6a617661, 'class CharDemo2 {\r\npublic static void main(String args[]) {\r\n    char ch1; ch1 = \'X\';\r\n    System.out.println(\"ch1 contains \" + ch1);\r\n    ch1++; // increment ch1\r\n    System.out.println(\"ch1 is now \" + ch1);\r\n  }\r\n}', 60),
(7, 0x6a617661, 'class BoolTest {\r\npublic static void main(String args[]) {\r\n    boolean b; b = false;\r\n    System.out.println(\"b is \" + b);\r\n    b = true;\r\n    System.out.println(\"b is \" + b);\r\n    // a boolean value can control the if\r\nstatement\r\n    if(b) System.out.println(\"This is executed.\");\r\n    b = false;\r\n    if(b) System.out.println(\"This is not\r\nexecuted.\");\r\n    // outcome of a relational operator is a\r\n    boolean value\r\n    System.out.println(\"10 > 9 is \" + (10 > 9));\r\n  }\r\n}', 61),
(8, 0x6a617661, 'b is false\r\nb is true\r\nThis is executed.\r\n10 > 9 is true', 62),
(9, 0x6a617661, 'int a, b, c; // declares three ints, a, b,\r\nand c.\r\nint d = 3, e, f = 5; // declares three more ints,\r\ninitializing\r\n\r\n// d and f.\r\nbyte z = 22; // initializes z.\r\ndouble pi = 3.14159; // declares an approximation of\r\npi.\r\nchar x = \'x\'; // the variable x has the value\r\n\'x\'.', 67),
(10, 0x6a617661, '// Demonstrate block scope.\r\nclass Scope {\r\n  public static void main(String args[]) {\r\n    int x; // known to all code within main\r\n    x = 10;\r\n\r\n    if(x == 10) { // start new scope\r\n        int y = 20; // known only to this block\r\n        // x and y both known here.\r\n    System.out.println(\"x and y: \" + x + \" \" + y);\r\n        x = y * 2;\r\n    }\r\n    // y = 100; // Error! y not known here\r\n    // x is still known here.\r\n    System.out.println(\"x is \" + x);\r\n  }\r\n}', 69),
(11, 0x6a617661, '// Demonstrate the basic arithmetic operators.\r\nclass BasicMath {\r\n    public static void main(String args[]) {\r\n      // arithmetic using integers\r\n      System.out.println(\"Integer Arithmetic\");\r\n        int a = 1 + 1;\r\n        int b = a * 3;\r\n        int c = b / 4;\r\n        int d = c - a;\r\n        int e = -d;\r\n        System.out.println(\"a = \" + a);\r\n        System.out.println(\"b = \" + b);\r\n        System.out.println(\"c = \" + c);\r\n        System.out.println(\"d = \" + d);\r\n        System.out.println(\"e = \" + e);\r\n      // arithmetic using doubles\r\n      System.out.println(\"\nFloating Point Arithmetic\");\r\n        double da = 1 + 1;\r\n        double db = da * 3;\r\n        double dc = db / 4;\r\n        double dd = dc - a;\r\n        double de = -dd;\r\n        System.out.println(\"da = \" + da);\r\n        System.out.println(\"db = \" + db);\r\n        System.out.println(\"dc = \" + dc);\r\n        System.out.println(\"dd = \" + dd);\r\n        System.out.println(\"de = \" + de);\r\n    }\r\n}      ', 72),
(12, 0x6a617661, 'Integer Arithmetic\r\na = 2\r\nb = 6\r\nc = 1\r\nd = -1\r\ne = 1\r\nFloating Point Arithmetic\r\nda = 2.0\r\ndb = 6.0\r\ndc = 1.5\r\ndd = -0.5\r\nde = 0.5   ', 73),
(13, 0x6a617661, '// Demonstrate the % operator.\r\nclass Modulus {\r\n  public static void main(String args[]) {\r\n    int x = 42;\r\n    double y = 42.25;\r\n    System.out.println(\"x mod 10 = \" + x % 10);\r\n    System.out.println(\"y mod 10 = \" + y % 10);\r\n  }\r\n}\r\n\r\nWhen you run this program, you will get the following output:\r\nx mod 10 = 2\r\ny mod 10 = 2.25  ', 74),
(14, 0x6a617661, ' // Demonstrate several assignment operators.\r\nclass OpEquals {\r\n  public static void main(String args[]) {\r\n      int a = 1;\r\n      int b = 2;\r\n      int c = 3;\r\n      a += 5;\r\n      b *= 4;\r\n      c += a * b;\r\n      c %= 6;\r\n      System.out.println(\"a = \" + a);\r\n      System.out.println(\"b = \" + b);\r\n      System.out.println(\"c = \" + c);\r\n  }\r\n}\r\nThe output of this program is shown here:\r\na = 6\r\nb = 8\r\nc = 3', 77),
(15, 0x6a617661, 'class Conversion {\r\npublic static void main(String args[]) {\r\n    byte b;\r\n    int i = 257;\r\n    double d = 323.142;\r\n    System.out.println(\"\nConversion of int to byte.\");\r\n    b = (byte) i;\r\n    System.out.println(\"i and b \" + i + \" \" + b);\r\n    System.out.println(\"\nConversion of double to int.\");\r\n    15\r\n    i = (int) d;\r\n    System.out.println(\"d and i \" + d + \" \" + i);\r\n    System.out.println(\"\nConversion of double to byte.\");\r\n    b = (byte) d;\r\n    System.out.println(\"d and b \" + d + \" \" + b);\r\n    }\r\n}', 85),
(16, 0x6a617661, 'if(condition){\r\n  statements to be executed if the condition is true\r\n}else{\r\n  statements to be executed if the condition is false\r\n}', 90),
(17, 0x6a617661, 'import java.util.Scanner;\r\n\r\npublic class SampleProgram{\r\n  public static void main(String[] args){\r\n    int number;\r\n    Scanner userInput = new Scanner(System.in);\r\n\r\n    System.out.printLn(\"Enter a number:\");\r\n    number = userInput.nextInt();\r\n\r\n    if(number % 2 == 0){\r\n      System.out.printLn(\"Even number.\");\r\n    }else{\r\n      System.out.printLn(\"Odd number.\");\r\n    }\r\n  }\r\n}', 93),
(18, 0x6a617661, 'if(condition){\r\n  statements to be executed if the condition is true\r\n}else if(condition2){\r\n  statements to be executed if conditional is false but condition2 is true\r\n}else{\r\n  statements that need to be executed if the conditions above are false\r\n}', 94),
(19, 0x6a617661, 'import java.util.Scanner;\r\n\r\npublic class SampleProgram{\r\n  public static void main(String[] args){\r\n    int number;\r\n    Scanner userInput = new Scanner(System.in);\r\n\r\n    System.out.printLn(\"Enter a number:\");\r\n    number = userInput.nextInt();\r\n\r\n    if(number > 0){\r\n      System.out.printLn(\"Positive number.\");\r\n    }else if(number == 0){\r\n      System.out.printLn(\"Zero number.\");\r\n    }else{\r\n      System.out.printLn(\"Negative number.\");\r\n    }\r\n  }\r\n}', 96),
(20, 0x6a617661, 'Switch(expression){\r\n  case x:\r\n    codeblock\r\n    break;\r\n  case y:\r\n    codeblock\r\n    break;\r\n  case z:\r\n    codeblock\r\n    break;\r\n  default:\r\n    code block\r\n}', 98),
(21, 0x6a617661, 'public class SampleProgram{\r\n  public static void main(String[] args){\r\n    int date;\r\n    Scanner userInput = new Scanner(System.in);\r\n    System.out.printLn(\"Enter a Date:\");\r\n    date = userInput.nextInt();\r\n    Switch(date){\r\n      case 0:\r\n        System.out.printLn(\"Sunday\");\r\n        break;\r\n      case 1:\r\n        System.out.printLn(\"Monday\");\r\n        break;\r\n      case 2:\r\n        System.out.printLn(\"Tuesday\");\r\n        break;\r\n      case 3:\r\n        System.out.printLn(\"Wednesday\");\r\n        break;\r\n      case 4:\r\n        System.out.printLn(\"Thursday\");\r\n        break;\r\n      case 5:\r\n        System.out.printLn(\"Friday:\");\r\n        break;\r\n      case 6:\r\n        System.out.printLn(\"Saturday\");\r\n        break;\r\n      default:\r\n        System.out.printLn(\"No date found.\");\r\n    }\r\n  }\r\n}', 99),
(22, 0x6a617661, 'Code Template:\r\nwhile(<condition>)\r\n{\r\n    <statement>\r\n}', 106),
(23, 0x6a617661, 'class myLoopProgram\r\n{\r\n  public static void main(String args[])\r\n  {\r\n  int car_movement_in_km = 0;\r\n  while(car_movement_in_km < 10)\r\n  {\r\n  car_movement_in_km = car_movement_in_km + 1;\r\n  System.out.println(“The Car has travelled ” + car_movement_in_km +\r\n  “ kilometer/s”);\r\n  }\r\n  System.out.println(“The Car is now in the Garage!”);\r\n  }\r\n}', 109),
(24, 0x6a617661, 'do\r\n{\r\n<statement>\r\n}\r\nwhile(<condition>)', 110),
(25, 0x6a617661, 'class myLoopProgram {\r\npublic static void main(String args[]) {\r\n  int player_life = 10;\r\n  do\r\n    {\r\n      player_life = player_life - 1;\r\n      System.out.println(“The Player is hit! Remaining Life = ” + player_life );\r\n    }\r\n      while(player_life > 0)\r\n      System.out.println(“The Player has died, Game Over!”);\r\n    }\r\n}', 113),
(26, 0x6a617661, 'class myProgram{\r\npublic static void main(String args[]){\r\n  int x = 0;\r\n  x++;\r\n  System.out.println(“The value of x is ” + x);\r\n  x--;\r\n  System.out.println(“The value of x is ” + x);\r\n  }\r\n}', 114),
(27, 0x6a617661, 'for(<initialization condition; testing condition; increment/decrement>)\r\n{\r\n  <statement>\r\n}', 116),
(28, 0x6a617661, 'class myForLoopProgram{\r\npublic static void main(String args[]){\r\n  String myString = “Hello”;\r\n\r\n  for(int i=0; i<4; i++){\r\n    myString = myString + “cycle ” + i;\r\n    System.out.println(“Current content of myString is ” + value );\r\n  }\r\n}', 117),
(29, 0x6a617661, 'modifier returnValueType methodName(list of parameters) {\r\n// method body;\r\n}\r\n               ', 123),
(30, 0x6a617661, 'int result = sum(5, 7);\r\nSystem.out.println(“The sum of the two integers is “ + result);', 126),
(31, 0x6a617661, '// MethodSum.java: Demonstrate using the sum method.\r\npublic class MethodSum {\r\n  // Main method\r\n  public static void main(String[] args) {\r\n      int val1 = 5;\r\n      int val2 = 7;\r\n      int result = sum(val1, val2);\r\n        System.out.println(“The sum of the two integers is “ + result);\r\n    }\r\n      // Returns the sum of two integers\r\n      public static int sum(int num1, int num2) {\r\n        return num1 + num2;\r\n    }\r\n}', 127),
(32, 0x6a617661, 'public class MethodSum {\r\n// Main method\r\n  public static void main(String[] args) {\r\n    sayHello(“John”);\r\n    }\r\n    // Method that prints Hello with name\r\n  public static void sayHello(String name) {\r\n    System.out.println(“Hello “ + name);\r\n  }\r\n}', 132),
(33, 0x6a617661, 'public static void nPrintName(String name, int n) {\r\n  for(int i=0; i<n; i++) {\r\n    System.out.println(name);\r\n  }\r\n}', 133),
(34, '', 'public class TestNPrint {\r\n  // Main method\r\n  public static void main(String[] args) {\r\n      String name = “John”;\r\n      nPrintName (name, 5);\r\n    }\r\n        // Method that prints the name with a number of times\r\n  public static void nPrintName(String name, int n) {\r\n      for(int i=0; i<n; i++) {\r\n        System.out.println(name);\r\n      }\r\n  }\r\n}', 134),
(35, 0x6a617661, 'public static double sum(double num1, double num2) {\r\n    return num1 + num2;\r\n}', 136),
(36, 0x6a617661, 'public class MethodOverloading {\r\n    // Main method\r\n    public static void main(String[] args) {\r\n        System.out.println(“The sum of 3 and 4 is “ + sum(3, 4));\r\n        System.out.println(“The sum of 5.3 and 2.5 is “ + sum(5.3, 2.5));\r\n    }\r\n    // Returns the sum of two integers\r\n    public static int sum(int num1, int num2) {\r\n        return num1 + num2;\r\n    }\r\n    // Returns the sum of two floating-point numbers\r\n    public static double sum(double num1, double num2) {\r\n        return num1 + num2;\r\n    }\r\n}', 137),
(37, 0x6a617661, '  public static double sum(int num1, double num2) {\r\n    return num1 + num2;\r\n  }\r\n  public static double sum(double num1, int num2) {\r\n    return num1 + num2;\r\n}', 139),
(38, 0x6a617661, 'public class AnalyzeNumbers{\r\n  public static void main(String[] args){\r\n    int NUMBER_OF_ELEMENTS = 50;\r\n    //decare Array\r\n    double[] numbers = new double[NUMBER_OF_ELEMETS];\r\n    double sum = 0;\r\n      java.util.Scanner input = new java.util.Scanner(System.in)\r\n      for(int i = 0; i < NUMBER_OF_ELEMENTS; i++){\r\n        System.out.print(\"enter a new number: \");\r\n        numbers[i] = input.nextDouble();\r\n        sum += numbers[i];\r\n      }\r\n    //Get average\r\n    double average = sum / NUMBER_OF_ELEMENTS;\r\n    int count = 0;\r\n    for(int i = 0; i < NUMBER_OF_ELEMENTS; i++)\r\n      //above average\r\n      if(numbers[1] > average) count++;\r\n    System.out.println(\"Average is \" + average);\r\n    System.out.println(\"Number of elements above the average  \" + count);\r\n  }\r\n}', 145),
(39, 0x6a617661, 'public class sumallelements{\r\n  public static void main(String[] args){\r\n  double total=0;\r\n  double[] listofnumbers={2,4,6,8,10,12,14);\r\n\r\n  for(int x = 0; x < listofnumbers.length;x++){\r\n    total = total+listofnumbers[x];\r\n  }\r\n\r\n  System.out.print(\"The sum of all elements is \" + total);\r\n  }\r\n}', 151),
(40, 0x6a617661, 'public static void printArray(int[] arr){\r\n  for(int i = 0; i< arr.length;i++){\r\n    System.out.print(arr[i] + \" \");\r\n  }\r\n}', 155),
(41, 0x6a617661, 'modifier returnValueType methodName(list of parameters) {\r\n// method body;\r\n}', 164),
(42, 0x6a617661, '`public class MethodSum {\r\n// Main method\r\n  public static void main(String[] args) {\r\n    sayHello(“John”);\r\n    }\r\n    // Method that prints Hello with name\r\n  public static void sayHello(String name) {\r\n    System.out.println(“Hello “ + name);\r\n  }\r\n}', 168),
(43, 0x6a617661, 'public static void nPrintName(String name, int n) {\r\n  for(int i=0; i<n; i++) {\r\n    System.out.println(name);\r\n  }\r\n}', 169);

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
(53, 'fl', 'fl', 'fl');

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
(38, 1, 53);

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
(20, '     ', '     ', 'Introduction (1).mp4', '', 157),
(21, 'Programming (or coding) is writing software (computer programs or code). It\r\ninvolves describing processes and/or procedures (algorithms), that is, the steps it takes\r\nto do something.', 'In computer programming, these processes/procedures are specified into\r\ndetailed lists of instructions – what is called the source code representation of software\r\n(Haas, 2016). This code or program comes in a variety of languages. A computer\r\nprogramming language, when compared to natural languages which man uses, simply\r\nserves to “bridge the gap between something the computer can understand (binary)\r\nand something that humans can understand, and are capable of crafting programs\r\nwith”. (Foord, n.d.)\r\nThe most common classification of computer languages is that of high-level and\r\nlow level, where the levels are, of course, relative.\r\n\r\nThe most common classification of computer languages is that of high-level and\r\nlow level, where the levels are, of course, relative.', '', '', 157),
(22, '', '', 'Hdf5OmERt0g', '', 157),
(23, 'Two general types of programming languages:\r\nHigh-level language- code is very similar to English so that almost all computer\r\nprogramming these days are done with them.\r\nExamples: Ada, BASIC, C#, C++, Fortran, HTML, Hugo, Java, Javascript, Logo,\r\nModula, Perl, PHP, Python, R, RPG, Simula, Smalltalk, Swift, Visual LISP, ZetaLisp\r\n\r\nAdvantages:\r\na) easier to write, read, debug (fix errors on) and maintain\r\nb) portable – can be used on many types of computer\r\nc) produces much shorter code than low-level languages\r\n\r\nDisadvantages:\r\n  a) generally slower than low-level languages\r\n  b) less efficient in the use of computer resources than low-level languages\r\n  (Prakash, 2017)\r\n', 'Low-level language- code is similar to native* machine (computer) language,\r\nthat is, ones (1s) and zeroes (0s), also called binary values.\r\n\r\nExamples: assembly languages, such as IBM 360 assembler, PDP-10 assembler,\r\nIntel x86 assembler, Linux x86-64 assembler (*a computer has its own low-level\r\nassembler language unique to that computer)', '', '', 157),
(24, 'A. JavaScript (Jones, 2017) code; this is different from Java, programming language\r\nyou will be learning in this course:', '', '', '', 157),
(25, 'B. Swift (appcoda.com, 2017) program, the language used in Apple devices:', '', '', '', 157),
(27, 'C. Linux x86-64 assembly (Fisher, 2018) program:', '', '', '', 157),
(28, 'It took about 100 years between the time the first recorded program was\r\npublished (by English noblewoman and mathematician Ada Lovelace) and the time\r\nthe first electronic computers were built in the 1940s.\r\nIn 1840, Ada Lovelace’s friend, Charles Babbage (the Father of Computing)\r\ngave a lecture in Italy about his mechanical general-purpose computing machine (not\r\ncompleted) which he called the “Analytical Engine”. A transcript of his lecture was\r\ntranslated by Lovelace into English, to which she added her own notes.\r\n(softschools.com, n.d.)', '', '', '', 158),
(29, 'When Lovelace published her notes (three times longer, took nine months to\r\nfinish) in 1843, it contained a section which described steps to be done by the\r\nAnalytical Engine on how to calculate Bernoulli numbers, a mathematical sequence.\r\nThese steps formed the algorithm of the first published computer program. Since\r\nBabbage’s computer had memory, an arithmetic logic unit (processor), and control\r\nflow for looping, “it would have had all of the key elements of a modern computer”.\r\n(softschools.com, n.d.)\r\nFast forward to ninety-six years after Babbage’s Analytical Engine, Alan\r\nTuring presented in 1936 the concept of a “universal machine, later called the Turing\r\nmachine”, which can “compute anything that is computable” (Zimmermann, 2017).\r\nThus was born the central concept of the modern computer and the notion of\r\nprogramming (instructions on how to compute any kind of what) at the machine level.', '', '', '', 158),
(30, 'By 1941 John Atanasoff and his graduate student, Clifford Berry, designed a\r\ncomputer that can solve 29 equations simultaneously. This marked the first time a\r\ncomputer is able to store information on its main memory.\r\nIn 1953 Grace Hopper developed the first computer language, which\r\neventually became known as COBOL. The following year the FORTRAN programming\r\nlanguage, an acronym for FORmula TRANslation, was developed by a team of\r\nprogrammers at IBM led by John Backus, according to the University of Michigan. By\r\n1964 Douglas Engelbart showed a prototype of the modern computer, with a mouse\r\nand a graphical user interface (GUI). This marked the evolution of the computer from a\r\nspecialized machine for scientists and mathematicians to technology that was more\r\naccessible to the general public (Zimmermann, 2017).', '', '', '', 158),
(31, 'From 1974-1977, a number of personal computers hit the market, including\r\nScelbi & Mark-8 Altair, IBM 5100, Radio Shacks TRS-80 and the Commodore PET. The\r\nTandy computer would be credited with pioneering the idea of a mass market personal\r\ncomputer. As one of the first machines whose documentation was intended for nongeeks, it meant that for the first time, non-geeks could write programs and make a\r\ncomputer do what they wished (Zimmermann, 2017).\r\nLess than two generations (of which halfway through the Internet was born) of\r\nnon-geek programmers after that (pun intended), millions of programs (exponentially\r\nboosted by the web) have been developed, both for the benefit, and the bad fortune,\r\nof mankind.\r\nAs to whether your future programs will contribute to the benefit or otherwise\r\nof our world, is entirely up to you, dear aspiring programmer/coder/developer.', '', '', '', 158),
(32, 'A flowchart is one of most useful diagrams to show programs and processes.\r\nOut of many different classifications, the one below (programiz.com, n.d.) is among the\r\nmost useful to computing:', '4 types of flowcharts:\r\n\r\nDocument flowcharts – show controls over a document-flow through a system\r\nData flowcharts - show controls over a data flows in a system\r\nSystem flowcharts - show controls at a physical or resource level\r\nProgram flowchart - show the controls in a program within a system \r\nComputer program flowcharts are used to show control flow in a computer\r\nprogram. It is sometimes used to show an algorithm without writing the code.\r\nSometimes they are used for training purposes for beginner programmers who do not\r\nyet know about coding but can understand graphical symbols in flowcharts.', '', '', 159),
(33, 'Symbols Used In Flowcharting\r\n\r\nThe table below describes all the symbols that are used in making flowchart   ', '', '', 'symbols.png', 159),
(34, 'The sample flowchart below illustrates how to calculate the sum of numbers from 1 to N. ', ' ', '', 'f1.jpg', 159),
(35, 'More examples of program flowcharts (programiz.com, n.d.):\r\n1. A flowchart which calculates N! (factorial of N): ', ' ', '', 'f2.jpg', 159),
(36, '1. A flowchart which checks if a number is prime : ', ' ', '', 'f3.jpg', 159),
(37, '2. A flowchart which shows all prime numbers smaller or equal to N : ', ' ', '', 'f4.jpg', 159),
(38, '1. A flowchart which calculates all divisors of N : ', ' ', '', 'f5.jpg', 159),
(39, 'A flowchart which checks if 3 numbers can be length of sides of a triangle: ', ' ', '', 'f6.jpg', 159),
(40, 'Developed in 1991 and officially released in 1996, Java is a comparatively new\r\ngeneral purpose programming language. Its creator, James Gosling, was then working\r\nat Sun Microsystems with his teammates, notably Patrick Naughton and Mike Sheridan.\r\nIn 1994, Gosling realized that such a language would be ideal for use with web\r\nbrowsers and Java\'s connection to the internet began (MathBits.com, 2018). In 1995, the\r\nversion of the Netscape browser that was released was already capable of running Java\r\nprograms. ', 'Why is it called Java? One of the more famous urban legends in the computing world\r\ngoes that Java’s first name Oak had to be changed due to a previous trademark. After\r\nmany hours of trying to come up with a new name, the development team went out for\r\ncoffee and the name Java was born. (MathBits.com, 2018)', '', '', 160),
(41, 'At present, the latest versions of Java are: Java 14, released in March 2020, and\r\nJava 11, a currently supported long-term support (LTS) version, released on September\r\n25, 2018; Oracle released for the legacy Java 8 LTS the last free public update in January\r\n2019 for commercial use, while it will otherwise still support Java 8 with public updates\r\nfor personal use up to at least December 2020.', 'For purposes of this class, however, you may download resources from\r\nhttps://www.oracle.com/java/technologies/mobile-devices-downloads.html. Or, you\r\ncan use a favorite alternative of your co-majors in the higher years- Learn Java:\r\nProgramming and Tutorials. You can download it from the Play Store into your\r\nsmartphone.', '', '', 160),
(42, '', 'Two general types of programming languages:\r\n                \r\nHigh-level language - code is very similar to English so that almost all computer\r\nprogramming these days are done with them.\r\n\r\nLow-level language - code is similar to native* machine (computer) language,\r\nthat is, ones (1s) and zeroes (0s), also called binary values.', '', '', 161),
(44, '', '', '', '', 162),
(45, 'Among many other things, the underlying purpose of a program is to provide \r\na secure storage of data for processing, offer convenience in handling relevant data about a process and manipulate data in such a way beyond that is capabilities of a conventional human being. All these have one thing in common: data. programs. \r\n                ', 'Data may be of various types that a computer program can handle in boundless ways depending on the capability and creativity of the programmer.\r\nIn this module, you will learn about:\r\n\r\na) data types and their respective uses;\r\nb) variables and constants; and,\r\nc) operations concerning data as represented in Java Programming.', '', '', 163),
(46, '', '', 'qUXbJziVs_o', '', 163),
(47, 'At the end of the lesson you are expected to have:', '1. Distinguished each data and classifying it by type\r\n2. Identified variables and constants and their representation in a program\r\n3. Explained the construction of arithmetic expressions for the purpose of making calculations\r\n4. Created a program that utilized different types of data type.', '', '', 163),
(48, 'In the realm of computers, data refer to any information processed, stored, and manipulated by a computer. A sequence of one or more symbols given meaning by specific acts of interpretation. This data may be in the form of text documents, images, audio clips, software programs, or other types of data.\r\nComputer programs refer to this data as a form of resource. Particularly, in Java Programming, there are two (2) classifications of data, namely:\r\n\r\n3. Primitive Data (e.g., number, character); and\r\n4. Object Data (types created by the programmer).', '', '', '', 164),
(49, 'Primitive Data', 'Java defines eight primitive types of data: byte, short, int, long, char, float, double, and boolean. The primitive types are also commonly referred to as simple types, and both terms will be used in this book. These can be put in four groups:\r\n\r\n● Integers - This group includes byte, short, int, and long, which are for whole-valued signed numbers.\r\n● Floating-point numbers - This group includes float and double, which represent numbers with fractional precision\r\n● Characters - This group includes char, which represents symbols in a character set, like letters and numbers.\r\n● Boolean - This group includes boolean, which is a special type for representing true/false values.', '', '', 164),
(50, 'Integer', 'Java defines four integer types: byte, short, int, and long. All of these are signed, positive and negative values. Java does not support unsigned, positive-only integers. Many other computer languages support both signed and unsigned integers. However, Java’s designers felt that unsigned integers were unnecessary.\r\n\r\nThe width of an integer type should not be thought of as the amount of storage it consumes, but rather as the behavior it defines for variables and expressions of that type. The Java run-time environment is free to use whatever size it wants, as long as the types behave as you declared them. The width and ranges of these integer types vary widely, as shown in Table 2.1 below:', '', 'm2f1.jpg', 164),
(51, 'Let’s look at each type of integer.\r\n\r\nbyte', 'The smallest integer type is byte. This is a signed 8-bit type that has a range\r\nfrom –128 to 127. Variables of type byte are especially useful when you’re working\r\nwith a stream of data from a network or file. Byte variables are declared by use of the\r\nbyte keyword. For example, the following declares two byte variables called b and c:\r\nbyte b, c;', '', '', 164),
(52, 'Short', 'short is a signed 16-bit type. It has a range from –32,768 to 32,767. It is\r\nprobably the least-used Java type. Here are some examples of short variable\r\ndeclarations:\r\n\r\nshort s;\r\nshort t;', '', '', 164),
(53, 'Int', 'The most commonly used integer type is int. It is a signed 32-bit type that has a range from –2,147,483,648 to 2,147,483,647. In addition to other uses, variables of type int are commonly employed to control loops and to index arrays. An int type variable is declared as follows:\r\n\r\nint x;\r\nint y;', '', '', 164),
(54, 'long', 'long is a signed 64-bit type and is useful for those occasions where an int type is not large enough to hold the desired value. (See Table 2.1)', '', '', 164),
(55, 'Floating-Point Types', 'Floating-point numbers, also known as real numbers, are used when evaluating expressions that require fractional precision. That is, those numbers that include decimals to which, integer data types cannot handle properly. In Java Programming, there are two (2) types of floating-point types:', '', 'm2f2.jpg', 164),
(56, 'Float', 'The type float specifies a single-precision (faster to process and takes half as much space than double) value that uses 32 bits of storage. Variables of type float are useful when you need a fractional component, but don’t require a large degree of precision. A float can be declared this way:\r\n                \r\nfloat lowTemp, highTemp;', '', '', 164),
(57, 'Double', 'Double precision, as denoted by the double keyword, uses 64 bits to store a value. All transcendental math functions, such as sin( ), cos( ), and sqrt( ), return double values. When you need to maintain accuracy over many iterative calculations, or are manipulating large-valued numbers, double is the best choice.', '', '', 164),
(58, 'Characters', 'In Java, the data type used to store characters is char. Java uses Unicode to represent characters. Unicode defines a fully international character set that can represent all of the characters found in all human languages.', '', '', 164),
(59, 'Here is a program that demonstrates the char variables:\r\n// Demonstrate char data type.', 'This program displays the following output: \r\n                \r\n ch1 and ch2: X Y', '', '', 164),
(60, 'Notice that ch1 is assigned the value 88, which is the ASCII (and Unicode) value that corresponds to the letter X. As mentioned, the ASCII character set occupies the first 127 values in the Unicode character set.\r\nchar can also behave as an integer type in which you can perform arithmetic operations. Consider to following block of codes:\r\n\r\n// char variables behave like integers.', 'This will result in the following output:\r\n\r\nch1 contains X\r\nch1 is now Y\r\n\r\nIn the program, ch1 is first given the value X. Next, ch1 is incremented. This results in ch1 containing Y, the next character in the ASCII (and Unicode) sequence.', '', '', 164),
(61, 'Booleans', 'Java has a primitive type, called boolean, for logical values. It can have only\r\none of two possible values, true or false. This is the type returned by all relational\r\noperators, as in the case of a < b. boolean is also the type required by the\r\nconditional expressions that govern the control statements such as if and for.\r\n\r\nHere is a program that demonstrates the boolean type:\r\n\r\n// Demonstrate boolean values.\r\n', '', '', 164),
(62, 'The output generated by this program is shown here:', 'When a boolean value is output by println( ), \"true\" or \"false\" is displayed. Second, the\r\nvalue of a boolean variable is sufficient, by itself, to control the if statement. There is\r\nno need to write an if statement like this:', '', '', 164),
(63, 'if(b==true) …\r\n\r\nThe outcome of a relational operator, such as <, is a boolean value. This is why\r\nthe expression 10>9 displays the value \"true.\" Further, the extra set of parentheses\r\naround 10>9 is necessary because the + operator has a higher precedence than the >', 'Storing data in Java programs require the usage of Variables. They serve as the\r\nbasic unit of storage in a Java program.', '', '', 164),
(64, '', '', 'rqZ0Cp9Omp8', '', 164),
(65, 'Data Storage\r\n                \r\nStoring data in Java programs require the usage of Variables. They serve as the\r\nbasic unit of storage in a Java program.', 'Variables\r\n                \r\nA variable is defined by the combination of an identifier, a type, and an\r\noptional initializer. In addition, all variables have a scope, which defines their visibility,\r\nand a lifetime. These elements are examined next.\r\n\r\nDeclaring a Variable\r\n\r\nIn Java, all variables must be declared before they can be used. The basic form\r\nof a variable declaration is shown here:\r\n\r\ntype identifier [ = value ][, identifier [= value ] …];\r\n\r\ntype is one of Java’s atomic types, or the name of a class or interface. The\r\nidentifier is the name of the variable. You can initialize the variable by specifying an\r\nequal sign and a value. Keep in mind that the initialization expression must result in a\r\nvalue of the same (or compatible) type as that specified for the variable. To declare\r\nmore than one variable of the specified type, use a comma-separated list.', '', '', 165),
(67, 'Here are several examples of variable declarations syntax of various types. Note that\r\nsome include an initialization.\r\n                \r\nStoring data in Java programs require the usage of Variables. They serve as the\r\nbasic unit of storage in a Java program.', 'The identifiers that you choose have nothing intrinsic in their names that\r\nindicates their type. Java allows any properly formed identifier to have any declared\r\ntype.', '', '', 165),
(68, 'The Scope and Lifetime of Variables\r\n\r\nSo far, all of the variables used have been declared at the start of the main( )\r\nmethod. However, Java allows variables to be declared within any block.', 'Block\r\nBlock defines a scope in Java. As such, each time we create a new block, we\r\nalso create a new scope. A block is begun with an opening curly brace ‘{‘ and ended\r\nby a closing curly brace ‘}’. A scope determines what objects (or variables) are visible\r\nto other parts of your program. It also determines the lifetime of those objects.\r\nAs a general rule, variables declared inside a scope are not visible (that is,\r\naccessible) to code that is defined outside that scope. Thus, when you declare a\r\nvariable within a scope, you are localizing that variable and protecting it from\r\nunauthorized access and/or modification. Indeed, the scope rules provide the\r\nfoundation for encapsulation.', '', '', 165),
(69, 'Scopes can also be nested. Each time you create a block of code, you are\r\ncreating a new, nested scope. When this occurs, the outer scope encloses the inner\r\nscope. This means that objects declared in the outer scope will be visible to code\r\nwithin the inner scope. However, the reverse is not true. Objects declared within the\r\ninner scope will not be visible outside it.\r\nTo understand the effect of nested scopes, consider the following program:', '', '', '', 165),
(70, 'Variable x is declared at the start of main( )’s scope and is accessible to all\r\nsubsequent code within main( ). Within the if block, y is declared. Since a block defines\r\na scope, y is only visible to other code within its block. This is why outside of its block,\r\nthe line y = 100; is commented out. If you remove the leading comment symbol, a\r\ncompile-time error will occur, because y is not visible outside of its block. Within the if\r\nblock, x can be used because code within a block (that is, a nested scope) has access to\r\nvariables declared by an enclosing scope.', '', '', '', 165),
(71, 'Arithmetic\r\n                  \r\nArithmetic operators are used in mathematical expressions in the same way\r\nthat they are used in algebra. The following table lists the arithmetic operators:', '', '', 'm2f3.jpg', 166),
(72, 'The Basic Arithmetic Operators\r\n\r\nThe basic arithmetic operations—addition, subtraction, multiplication, and division—all behave as you would expect for all numeric types.\r\nThe operands of the arithmetic operators must be of a numeric type. You cannot use them on boolean types, but you can use them on char types, since the char type in Java is, essentially, a subset of int.\r\nThe following simple example program demonstrates the arithmetic operators. It also illustrates the difference between floating-point division and integer division.\r\n                ', '', '', '', 166),
(73, 'When you run this program, you will see the following output:', '', '', '', 166),
(74, 'The Modulus Operator\r\nThe modulus operator, %, returns the remainder of a division operation. It can be applied to floating-point types as well as integer types. The following example program demonstrates the %:', '', '', '', 166),
(75, 'Arithmetic Compound Assignment Operators\r\nJava provides special operators that can be used to combine an arithmetic operation with an assignment. As you probably know, statements like the following are quite common in programming:\r\n\r\na = a + 4;\r\n\r\nIn Java, you can rewrite this statement as shown here:\r\n\r\na += 4;\r\n\r\nThis version uses the += compound assignment operator. Both statements perform the same action: they increase the value of a by 4.\r\nHere is another example,\r\n\r\na = a % 2;\r\n\r\nwhich can be expressed as\r\n\r\na %= 2;\r\n\r\nIn this case, the %= obtains the remainder of a /2 and puts that result back into', '', '', '', 166),
(76, 'There are compound assignment operators for all of the arithmetic, binary operators. Thus, any statement of the form\r\nvar = var op expression;\r\n\r\ncan be rewritten as\r\n\r\nvar op= expression;', 'The compound assignment operators provide two benefits. First, they save you a bit of typing, because they are “shorthand” for their equivalent long forms. Second, in some cases they are more efficient than are their equivalent long forms. For these reasons, you will often see the compound assignment operators used in professionally written Java programs.', '', '', 166),
(77, 'Here is a sample program that shows several op= assignments in action:', '', '', '', 166),
(78, 'Increment and Decrement', 'The increment operator (++) increases its operand by one. The decrement operator (--) decreases its operand by one. For example, this statement:\r\nx = x + 1;\r\n\r\ncan be rewritten like this by use of the increment operator:\r\n\r\nx++;\r\n\r\nSimilarly, this statement:\r\n\r\nx = x - 1;\r\n\r\nis equivalent to\r\n\r\nx--;', '', '', 166),
(79, 'Operator Precedence\r\nTable 2.4 shows the order of precedence for \r\nJava operators, from highest to lowest. Operators in the same row are equal in precedence.\r\nIn binary operations, the order of evaluation is left to right (except for assignment, which evaluates right to left). \r\nAlthough they are technically separators, the [ ], ( ), and . can also act like operators. In that capacity, they would have the highest precedence.\r\nAlso, notice the arrow operator (->). It was added by JDK 8 and is used in lambda expressions.', '', '', 'm2f4.jpg', 167),
(80, 'Parenthesis\r\nParentheses raise the precedence of the operations that are inside them. This is often necessary to obtain the result you desire. For example, consider the following expression:\r\n\r\na >> b + 3\r\n\r\nThis expression first adds 3 to b and then shifts a right by that result. That is, this expression can be rewritten using redundant parentheses like this:\r\n\r\na >> (b + 3)', '', '', '', 167),
(81, 'However, if you want to first shift a right by b positions and then add 3 to that result, you will need to parenthesize the expression like this:\r\n(a >> b) + 3', 'In addition to altering the normal precedence of an operator, parentheses can sometimes be used to help clarify the meaning of an expression. For anyone reading your code, a complicated expression can be difficult to understand. Adding redundant but clarifying parentheses to complex expressions can help prevent confusion later. For example, which of the following expressions is easier to read?\r\n\r\na | 4 + c >> b & 7\r\n(a | (((4 + c) >> b) & 7))\r\n\r\nOne other point: parentheses (redundant or not) do not degrade the performance of your program. Therefore, adding parentheses to reduce ambiguity does not negatively affect your program.', '', '', 167),
(82, 'Type Conversion and Casting\r\nWhen one type of data is assigned to another type of variable, an automatic type conversion will take place if the following two conditions are met:\r\n\r\n• The two types are compatible.\r\n• The destination type is larger than the source type.\r\n\r\nWhen these two conditions are met, a widening conversion takes place. For example, the int type is always large enough to hold all valid byte values, so no explicit cast statement is required.\r\n', 'For widening conversions, the numeric types, including integer and floating-point types, are compatible with each other. However, there are no automatic conversions from the numeric types to char or boolean. Also, char and boolean are not compatible with each other.\r\nAs mentioned earlier, Java also performs an automatic type conversion when storing a literal integer constant into variables of type byte, short, long, or char.', '', '', 168),
(83, 'Casting Incompatible Types\r\nAlthough the automatic type conversions are helpful, they will not fulfill all needs. For example, what if you want to assign an int value to a byte variable? This conversion will not be performed automatically, because a byte is smaller than an int. This kind of conversion is sometimes called a narrowing conversion, since you are explicitly making the value narrower so that it will fit into the target type.', 'To create a conversion between two incompatible types, you must use a cast. A cast is simply an explicit type conversion. It has this general form:\r\n(target-type) value\r\nHere, target-type specifies the desired type to convert the specified value to. For example, the following fragment casts an int to a byte. If the integer’s value is larger than the range of a byte, it will be reduced modulo (the remainder of an integer division by the) byte’s range.\r\n\r\nint a;\r\nbyte b;\r\n// …\r\nb = (byte) a;', '', '', 168),
(84, 'A different type of conversion will occur when a floating-point value is assigned to an integer type: truncation. As you know, integers do not have fractional components. Thus, when a floating-point value is assigned to an integer type, the fractional component is lost. For example, if the value 1.23 is assigned to an integer, the resulting value will simply be 1. The 0.23 will have been truncated. Of course, if the size of the whole number component is too large to fit into the target integer type, then that value will be reduced modulo the target type’s range.\r\nThe following program demonstrates some type conversions that require casts:\r\n// Demonstrate casts', '', '', '', 168),
(85, '', 'This program generates the following output:\r\n\r\nConversion of int to byte.\r\n\r\ni and b 257 1\r\n\r\nConversion of double to int.\r\n\r\nd and i 323.142 323\r\n\r\nConversion of double to byte.\r\n\r\nd and b 323.142 67\r\n\r\nLet’s look at each conversion. When the value 257 is cast into a byte variable, the result is the remainder of the division of 257 by 256 (the range of a byte), which is 1 in this case. When the d is converted to an int, its fractional component is lost. When d is converted to a byte, its fractional component is lost, and the value is reduced modulo 256, which in this case is 67.', '', '', 168),
(86, '', 'In this lesson you learned about:\r\n\r\n● Data\r\n● Primitive Data\r\n● Objective Data\r\n● Data Storage\r\n● Arithmetic\r\n● Operator Precedence\r\n● Type Conversion and Casting', '', '', 169),
(87, '', '', '', '', 170),
(88, '\r\nLearning Outcomes:\r\n                \r\nAt the end of this module, student should be able to:\r\n\r\n1. Write conditional statement using the structure of \"if, else-if, and else\" statement\r\n2. Write conditional statement using the structure of switch statements.\r\n3. Create conditoinal statement, defining criteria when a program should take certain actions.\r\n4. Analyzed programs with nested conditional statement.\r\n5. Design solutions to a problem using conditional statements.', 'Introduction\r\n\r\nA conditional statement generally consist of two parts: a condition that is determinable by a boolean value of true or false\r\nand certain block of codes that need to be executed when the condition is fulfilled. Using conditional statements will change the flow of the execution and branch out based on changes made to the state of the program.This module will discuss the different ways of making conditional statements, and how they are declared and used in the program.\r\n\r\n               ', '', '', 171),
(89, '', '', 'fsTC0Mqy0EU', '', 171),
(90, 'If-Else Statement\r\n                        \r\nTo begin creating a conditional statement, enter the if keyword followed by its corresponding condition insed a parenthesis. Then, add the codes that need to be executed between the open and close curly braces if the condition is true.\r\n\r\nif there is a need to execute certain codes when the condition is false, add an else keyword and insert the codes between the open and curly braces that follow it.\r\n\r\nBelow is the general syntax of an if-else statement:', '', '', '', 172),
(91, 'Below is the equivalent flowchart of an if-else statement:', 'Figure XX.1 Flowchar of an if-else statement\r\n                \r\nThe else keyword is optional and may not necessarily be written on the program if it does not require executing certin instructions if the condition evaluated if false.\r\nHowever, if an else statement is written, it will look for the last instance of if and partners itself with it. If an else statement is written but does not\r\nhave an if keyword to partner itself into, the program will return and error and it will not run.', '', 'm3p1.jpg', 172),
(92, 'Figure XX.1 Flowchar of an if-else statement\r\n                \r\nThe else keyword is optional and may not necessarily be written on the program if it does not require executing certin instructions if the condition evaluated if false.\r\nHowever, if an else statement is written, it will look for the last instance of if and partners itself with it. If an else statement is written but does not\r\nhave an if keyword to partner itself into, the program will return and error and it will not run.', '', '', 'm3p2.jpg', 172),
(93, 'Example 3.1:\r\nWrite a program that will accept a user-entered number and determine whether it is even or odd.', '', '', '', 172),
(94, 'If-Else-IfStatement\r\n                \r\nBesides the else statement, the keyword else if can be used if the programmer wants to write another specific condition if the initial if condition is false.\r\nThe number of how many else if statements can be written is virtually unlimited, but like else, it cannot exist without and if statement to partner itself unto.\r\nElse if statementsare optional and the program can run with or witout it.\r\n\r\nif the if condition is true, it will not execute the codes written in the else if and else section.\r\nHowever, if a certain else if statement is true, it will not execute the other else if statements including the else as well.\r\n\r\nBelow is the general syntax of an if-else statement:', '', '', '', 173),
(95, '', 'Figure XX.3 Flowchart of an if-else if statement', '', 'm3p3.jpg', 173),
(96, 'Example 3.2:\r\n                \r\nWrite a program that will accept a user inputted number and determine whether it is a negative, positive or just a zero number.', '', '', '', 173),
(97, 'A switch statement is used to perform different actions based on different conditions provided. To be able to use a swtich statement, start by\r\nwriting the swtich keyword followed by an expression enclosed in a parenthesis. This expression will be evaluated once by the compiler.\r\n\r\nThen, create certain cases which will match the value of the expression. If there is a match, that associated block of code is executed. To create cases, write the case keyword follwed by the value and a colon.\r\nIn order to prevent the program to perform code blocks from other cases, especially the ones inside the default section, a break keyword must be added at the last line of every case code block. This will stop the execution and exits the switch statement. It is not neccessary to add  a break keyword in the last case of a switch expression since the statement end there.', '', '', '', 174),
(98, 'If there are no case matches, the default keyword is executed and it will perform the code blocks written in that section. It may not also necessarily be the last case in a switch block. A switch statement value, the first one is selected and performed.\r\n                \r\nBelow is the general syntax of the switch statement:', '', '', '', 174),
(99, 'Example 3.3:', '', '', '', 174),
(100, '', 'In this lesson you learned about:\r\n● Conditional Statement\r\n● if-else Statement\r\n● if-else-if Statement\r\n● Switch Statement', '', '', 175),
(101, '', '', '', '', 176),
(102, 'Learning Outcomes:\r\n                \r\nAt the end of the lesson you are expected to have;\r\n\r\n1) Applied the correct syntax and appropriate use of Java repetition control structures\r\n2) Used postfix increment and decrement operators\r\n3) Created a program that applies appropriate use of Java repetition control structures.', 'Introduction\r\nUsing Repetitions allows repeating procedures to be expressed in code using a few lines of code and controlled\r\ndynamically in program-defined conditions and rules. When creating computer programs that require repeating logic\r\nand or procedures, writing the same code redundantly to achieve a certain goal is ineffective. For these kinds of cases,\r\nRepetitions are useful to eliminate these redundancies and make written code brief by minimizing the lines of code to\r\nwrite making it readable and maintainable. This chapter tackles on how repetitions are implemented and applied in\r\nvarious cases in Java programming.', '', '', 177),
(103, 'Repetition Defined\r\nRepetition means repeating a sequence of instructions a certain number of times, or until some specific result is\r\nachieved. In programming terms this means loops of all kinds, such as repeat, for, while, until etc. In computer\r\nprogramming repetitions are implemented in the form of loop statements.', 'General Loop Structure\r\nThe following is a flowchart representation of the logic of a loop structure. A loop is structure consists of a condition\r\nand the statements to execute. The flow chart starts by checking if a given condition is satisfied, if a condition is not\r\nyet satisfied (false) the flow proceeds with performing the series of statements/code specified on the next step. After\r\nthe statements/codes have been executed, the flow returns to the checking if the given condition is satisfied. The flow\r\nrepeats n number of repetitions until the condition is satisfied pointing the flow to terminate or, proceed to the next\r\npart of the flow. For a visual representation a Flow Chart representation is presented below in figure 4.1.1.', '', '', 177),
(104, 'Repetition Defined\r\nRepetition means repeating a sequence of instructions a certain number of times, or until some specific result is\r\nachieved. In programming terms this means loops of all kinds, such as repeat, for, while, until etc. In computer\r\nprogramming repetitions are implemented in the form of loop statements.', 'General Loop Structure\r\nThe following is a flowchart representation of the logic of a loop structure. A loop is structure consists of a condition\r\nand the statements to execute. The flow chart starts by checking if a given condition is satisfied, if a condition is not\r\nyet satisfied (false) the flow proceeds with performing the series of statements/code specified on the next step. After\r\nthe statements/codes have been executed, the flow returns to the checking if the given condition is satisfied. The flow\r\nrepeats n number of repetitions until the condition is satisfied pointing the flow to terminate or, proceed to the next\r\npart of the flow. For a visual representation a Flow Chart representation is presented below in figure 4.1.1.', '', '', 177),
(105, '', 'There are three (3) types of loops in Java programming:\r\n\r\n● While Loop;\r\n● Do While Loop;\r\n● And For Loop;\r\n\r\nEach type of loop follows the loop structure given above. ', '', 'm4p1.jpg', 177),
(106, 'While Loop\r\nThe While Loop is declared using the code template given below. A condition is specified between the parentheses\r\nnext to the while keyword. This tells the computer to repeat the execution of statements written within the loop’s body\r\nwhile a specified condition is true. When the condition is at some point of the execution no longer met, the loop stops\r\nand proceeds to the next line of code.', 'The example below shows a Java program written to move an imaginary car until it has moved more than 10\r\nkilometers. The body of the code begins by declaring and initializing the variables needed in the program. A variable\r\ncar_movement_in_km using an integer data type is declared to hold the value of how far the car has travelled in\r\nkilometers. The car_movement_in_km variable is initialized with the value zero, specifying that it has not yet moved', '', '', 178),
(107, '', '', 'wtXhu-VS_sE', '', 178),
(108, 'After the declaration and initialization, a While Loop is written to repeat the statements in its body while the car has\r\nnot yet moved more than 10 kilometers. Within the body of the loop, it is written that the car moves 1 kilometer and\r\nprints how many kilometers the car has travelled. The car is moved 1 kilometer by incrementing the value of variable\r\ncar_movement_in_km every passage of the loop. The printing of how many kilometers the car has traveled is also done\r\nevery passage of the loop. After the loop has stopped a message will be printed saying that the car is now in the garage.', '', '', '', 178),
(109, 'Example:', 'Output:\r\nThe Car has travelled 1 kilometer/s\r\nThe Car has travelled 2 kilometer/s\r\nThe Car has travelled 3 kilometer/s\r\nThe Car has travelled 4 kilometer/s\r\nThe Car has travelled 5 kilometer/s\r\nThe Car has travelled 6 kilometer/s\r\nThe Car has travelled 7 kilometer/s\r\nThe Car has travelled 8 kilometer/s\r\nThe Car has travelled 9 kilometer/s\r\nThe Car has travelled 10 kilometer/s\r\nThe Car is now in the Garage!', '', '', 178),
(110, 'Do While Loop\r\n\r\nThe Do While Loop is declared using the code template given below. It is similar to the While Loop except that it\r\nexecutes the statements within its body first before checking the specified condition for repetition. A condition is\r\nspecified between the parentheses after the while keyword telling the computer to repeat the execution of statements\r\nwithin its body while a certain condition is met. When the condition is at some point of the execution no longer met,\r\nthe loop stops and proceeds to the next line of code.\r\n\r\nCode Template:', '', '', '', 179),
(111, '', '', 'A7yvQrDe4ks', '', 179),
(112, 'On example 1 given below, a Java program is written to hit an imaginary player until the player has died. The body\r\nof the code begins by declaring and initializing the variables needed in the program. A variable player_life using an\r\ninteger data type is declared to hold the value of how much remaining life the player has. The player_life variable is\r\ninitialized with the value Ten (10), specifying that the player has a full life. After the declaration and initialization, a\r\nDo While Loop is written to repeat the statements in its body while the player has a remaining life of more than Zero\r\n(0). Within the body of the loop, it is written that the player is hit and prints the remaining lives of the player. The\r\nplayer is hit by decrementing the value of variable player_life every passage of the loop. The printing of the remaining\r\nlives of the player is also done every passage of the loop. After the loop has stopped a message will be printed saying\r\nthat the player has died and the game is over.', '', '', '', 179),
(113, 'Example 1:', 'Output 1:\r\n\r\nThe Player is hit! Remaining Life = 9\r\nThe Player is hit! Remaining Life = 8\r\nThe Player is hit! Remaining Life = 7\r\nThe Player is hit! Remaining Life = 6\r\nThe Player is hit! Remaining Life = 5\r\nThe Player is hit! Remaining Life = 4\r\nThe Player is hit! Remaining Life = 3\r\nThe Player is hit! Remaining Life = 2\r\nThe Player is hit! Remaining Life = 1\r\nThe Player is hit! Remaining Life = 0\r\nThe Player has died, Game Over!', '', '', 179),
(114, 'A useful tool in implementing looping statements are increment and decrement operators. These operators\r\nserve as shorthand syntaxes to specify an increment operation or a decrement operation on an integer variable. The\r\nshorthand increment or decrement operation is indicated by the following syntax:\r\n\r\nCode Template:\r\n\r\n<variable_name><operation><operation>\r\n\r\nOn the example given below a variable named x is declared and initialized with a value of zero (0). The variable is\r\nincremented by specifying the shorthand syntax x++ and is then printed to display the value of x. After displaying the\r\nvalue of the variable x, the variable is decremented by specifying the shorthand syntax x--. The value of the variable x\r\nis then displayed to the user.', 'Output:\r\nThe value of x is 1\r\nThe value of x is 0', '', '', 180),
(115, '', '', 'cakN0XC6CcQ', '', 181),
(116, 'The “for loop” looping statement utilizes the increment/decrement operators in its condition syntax. The statement\r\nis composed of an initialization condition, testing condition and an increment or decrement operator.\r\n\r\nCode Template:', 'On the example below, a Java code is written to append text to a string variable 4 times. A variable named myString\r\nwith the datatype String is declared and initialized with the value “Hello”. A for loop control is then implemented\r\nwith an initialization condition int i=0 which indicates that the loop counter is a variable named i with a value of zero\r\n(0), a testing condition i<4 which indicated that the loop shall continue when the value of the variable i is less than four (4), and an increment operator i++ which indicates that the variable i is incremented on each cycle of the loop.\r\nOn each cycle of the loop the variable myString is appended with the word “cycle” and the corresponding value of\r\nthe loop counter i. The contents of the variables are then printed on the screen presenting the values of the variables.\r\n               ', '', '', 181),
(117, 'Example:', 'Output:\r\n\r\nCurrent content of myString is Hello\r\nCurrent content of myString is Hellocycle0\r\nCurrent content of myString is Hellocycle0cycle1\r\nCurrent content of myString is Hellocycle0cycle1cycle2\r\nCurrent content of myString is Hellocycle0cycle1cycle2cycle3', '', '', 181),
(118, '', 'In this lesson you learned about:\r\n                \r\n● For Loop\r\n● Do While Loop\r\n● Increment/Decrement Operators\r\n● Do While Loop', '', '', 182),
(119, '', '', '', '', 183),
(120, 'By the end of this module, student must be able to:\r\n\r\n1. Describe what methods are.\r\n2. Create a new Method.\r\n3. Demonstrate how static methods and fields are associated with classes rather\r\nthan objects.\r\n4. Explain how the method-call/return mechanism is supported by the methodcall stack.\r\n5. Associate argument promotion and casting.\r\n6. Explain how the visibility of declarations is limited to specific regions of\r\nprograms.\r\n7. Determine what method overloading is and how to create overloaded\r\nmethods.\r\n', '', '', '', 184),
(121, '', '', 'r0SewFmbCUI', '', 184),
(122, 'Introduction\r\n\r\nGood programmers write in a modular fashion which allows for several programmers to\r\nwork independently on separate concepts which can be assembled at a later date to\r\ncreate the entire project. The use of methods will be our first step in the direction of\r\nmodular programming.\r\nMethods are time savers; in that they allow for the repetition of sections of code without\r\nretyping the code. In addition, methods can be saved and utilized again and again in\r\nnewly developed programs.\r\nIn this module, you’ll learn about Java methods, how to define a Java method and use\r\nthem in your program with the help of examples.', '', '', '', 184),
(123, 'A Java method is a collection of statements that are grouped together to perform a task.\r\nMethods can be used to define reusable code and organize and simplify coding.\r\nIn general, a method has the following syntax: ', 'The following method calculates the sum of two integers. The sum is the method name,\r\n it has two int parameters, num1 and num2, the sum of which is then returned by the\r\nmethod.', '', '', 184),
(124, 'The following method calculates the sum of two integers. The sum is the method name,\r\nit has two int parameters, num1 and num2, the sum of which is the returned by the\r\nmethod.', '', '', 'm5p1.png', 184),
(125, 'The method header specifies the modifiers, return value type, method name, and\r\nparameters of the method. The modifier, which is optional, tells the compiler how to\r\ncall the method. The static modifier is used for all the methods in this chapter. A method\r\nmay return a value. The returnValueType is the data type of the value the method\r\nreturns. If the method doesn’t return a value, the returnValueType is the keyword void.\r\nFor example, returnValueType in the main method is void as well as\r\nSystem.out.println. The parameter list refers to the type, order, and number of the\r\nparameters of a method. The method name and the parameter list together constitute the method signature. Parameters are optional; a method may contain no parameters. The variables defined in the method header are knows as formal parameters. When a method is invoked, you pass a value to the parameter. This value is referred to as actual parameter or argument. The method body contains a collection of statements that define what the method does. A return statement using the keyword return is required for a non-void method', '', '', '', 184),
(126, 'To use a method, you have to call or invoke it. There are two ways to call a method; the\r\nchoice is based on whether the method returns a value or not.\r\nIf the method returns a value, a call to the method is usually treated as a value.', 'If the method returns void, a call to the method must be a statement.\r\n\r\nSystem.out.println(“Welcome to Java Programming!”); ', '', '', 186),
(127, 'When a program calls a method, program control is transferred to the called method. A\r\ncalled method returns control to the caller when its return statement is executed or when\r\nits method-ending closing brace is reached.\r\nBelow is an example of defining and calling the method sum.', 'Output:\r\n\r\nThe sum of the two integers is 12', '', '', 186),
(128, 'The main method is just like any other method except that it is invoked by the Java\r\ninterpreter. The main method’s header is always the same, like the one in this example,\r\nwith the modifiers public and static, return value type void, method name main, and a\r\nparameter of the String[] type. String[] indicates that the parameter is an array of String.\r\nThe statements in main method may invoke other methods that are defined in the class\r\nthat contains the main method or in other classes. The main method invokes sum(val1,\r\nval2), which is defined in the same class with the main method. When the sum method\r\nis invoked, variable val1’s value 5 is passed to num1, and variable val2’s value 2 is passed\r\nto num2 in the sum method.\r\n\r\nThe flow of control transfers to the sum method. The sum method is executed. When the\r\nreturn statement in the sum method is executed, the sum method returns the control to\r\nits caller.', '', '', '', 186),
(129, '', ' Figure 6.2. When the sum method is invoked, the flow of control transfers to it. Once the\r\n\r\nsum method is finished, it returns control back to the caller.\r\nThe variables defined in the main method are val1, val2, and result. The variables\r\ndefined in the sum method are num1 and num2. The variables num1 and num2 are defined in the method signature and are parameters of the method. There methods are\r\npassed through method invocation. ', '', 'm5p2.png', 186);
INSERT INTO `tblsublessons` (`sublesson_Id`, `header`, `paragraph`, `video`, `images`, `lesson_Id`) VALUES
(130, 'The main method is just like any other method except that it is invoked by the Java\r\ninterpreter. The main method’s header is always the same, like the one in this example,\r\nwith the modifiers public and static, return value type void, method name main, and a\r\nparameter of the String[] type. String[] indicates that the parameter is an array of String.\r\nThe statements in main method may invoke other methods that are defined in the class\r\nthat contains the main method or in other classes. The main method invokes sum(val1,\r\nval2), which is defined in the same class with the main method. When the sum method\r\nis invoked, variable val1’s value 5 is passed to num1, and variable val2’s value 2 is passed\r\nto num2 in the sum method.\r\n\r\nThe flow of control transfers to the sum method. The sum method is executed. When the\r\nreturn statement in the sum method is executed, the sum method returns the control to\r\nits caller.', 'CAUTION:\r\n\r\nA return statement is required for a non void method.\r\n\r\nNOTE:\r\n\r\nOne of the benefits of methods is for sharing and reuse . The sum method can\r\nbe invoked from any class besides MethodSum . If you create a new class Test , you can\r\ninvoke the sum method using ClassName.met hodName (i.e., MethodSum.sum', '', 'm5p3.png', 186),
(131, 'Each time a method is invoked, the system stores parameters and local variables in an\r\narea of memory, known as a stack, which stores elements in last-in first-out fashion.\r\nWhen a method calls another method, the caller’s stack space is kept intact, and new\r\nspace is created to handle the new method call. When a method finishes its work and\r\nreturns to its caller, its associated space is released. The variables defined in the main\r\nmethod are val1, val2, and result. The variables defined in the sum method are num1 and\r\nnum2. The variables num1 and num2 are defined in the method signature and are\r\nparameters of the method. Their values are passed through method invocation.', '', '', '', 187),
(132, 'This section shows how to declare a void method which does not return a value.\r\n\r\nBelow is an example of using void Method', '', '', '', 187),
(133, 'When calling a method, you need to provide arguments, which must be given in the same\r\norder as their respective parameters in the method specification. This is known as\r\nparameter order association.\r\nYou can use nPrintName(“John”, 5) to print the name “John” 5 times', 'CAUTION: The arguments must match the parameters in order, number, and compatible type,\r\nas defined in the method signature.', '', '', 187),
(134, 'Below is an example of Passing Arguments by Value', '', '', '', 187),
(135, 'When you invoke a method with a parameter, the value of the argument is passed to the\r\nparameter. This is referred to as pass by value. If the argument is a variable, the value\r\nof the variable is passed to the parameter. The variable is not affected, regardless of the\r\nchanges made to the parameter inside the method.\r\nThe arguments and parameters may have the same name; however, no change occurs\r\nbecause the parameter is a local variable in the method with its own memory space. The\r\nlocal variable is allocated when the method is invoked, and it disappears when the method\r\nis returned to its caller.', '', '', '', 187),
(136, '', 'If you need to find the sum of two floating-point numbers, the code above shows you just\r\nthat. If you call sum with int parameters, the sum method that expects int parameters will\r\nbe invoked. If you call sum with double parameters, the sum method that expects double parameters will be invoked. This is referred to as method overloading; that is, two or\r\nmore methods have the same name but different parameters lists. The Java compiler\r\ndetermines which method is used based on the method signature.', '', '', 190),
(137, 'Below is the example of Method Overloading ', ' Output:\r\n\r\nThe sum of 3 and 4 is 7\r\nThe sum of 5.3 and 2.5 is 7.8', '', '', 190),
(138, 'The program invokes two different sum methods that will have the same name: sum(3, 4)\r\nand sum(5.3, 2.5). When calling sum(3, 4), The sum method for finding the sum of two\r\nintegers is invoked. When calling sum(5.3, 2.5), the sum method for finding the sum of\r\ntwo doubles is invoked. The Java compiler finds the most specific method for a method\r\ninvocation. Since the method sum(int, int) is more specific than sum(double, double),\r\nsum(int, int) is used to invoke sum(3, 4). Overloading methods can make programs\r\nclearer and more readable. Methods that perform closely related tasks should be given\r\nthe same name. Overloaded methods must have different parameter lists. You can’t\r\noverload methods based on different modifiers or return types.', 'NOTE: \r\nSometimes there may be two or more possible matches for an invocation of a method,\r\nbut the compiler cannot determine the most specific match. This is referred to as ambiguous\r\ninvocation. Ambiguous invocation is a compilation error.', '', '', 190),
(139, '', 'Both sum(int, double) and sum(double, int) are possible candidates to match\r\nsum(1, 2). Since neither of them is more specific than the other, the invocation is\r\nambiguous.', '', '', 190),
(140, 'A local variable is defined inside a method. Scope of a variable is the part of the program\r\nwhere the variable can be referenced. The scope of a local variable starts from its\r\ndeclaration and continues to the end of the block that contains the variable. A local\r\nvariable must be declared before it can be used. A parameter is actually a local variable.\r\nThe scope of a method parameter covers the entire method.', '', '', '', 191),
(141, '', 'In this lesson you learned about:\r\n\r\n● How to Declare and create Arrays\r\n● Returning an array from a method\r\n● Multidimensional Arrays', '', '', 192),
(142, '', '', '', '', 193),
(143, 'At the end of the lesson you are expected to have;\r\n\r\nDeclared and initialize an array.\r\nUsed subscripts with an array.\r\nPerformed a search in an array.\r\nUsed arrays as argument of methods.\r\nDeclared and to manipulate multidimensional arrays.', 'Introduction \r\n\r\nOften you will to store a large number of values during the execution of a program. Suppose, for instance, that you will to read 50 numbers, compute their average, and find out how many numbers are above the average. Your program first reads the number and compute their average, then compares each number with the average to determine whether it is above the average. In order to accomplish this task, the number must all be stored in variables. You have to declare 50 variables and repeatedly write all almost identical code 50 times. Writing a program this way would be impractical. So, how do you solve this problem?\r\nJava and most other high-level languages provide a data structure called array, it is a named list of data items that all have the same type with fixed-size. In the present case, you can store all 50 numbers into an array and access them through a single array variable. The solution look like this:', '', '', 194),
(144, '', '', 'o2ARur9hs9M', '', 194),
(145, '', '', '', '', 194),
(146, 'To use an array in a program, you must declare a variable to reference the array\r\nand specify the array’s element type. The syntax for declaring an array variable;\r\n\r\nElementype[] arrayname;', 'The elementtype can be any data type, and all elements in the array will have the\r\nsame type. For example, to declare an array of integers that hold student ID\r\nnumber, you can write the following:\r\n\r\nint[] idNum;', '', '', 195),
(147, 'After an array variable was created, it is still required to reserve a memory space,\r\nunlike a declaration of a primitive data type variables that automatically reserves\r\na memory location after it is declared. For example, to reserve a 20 slots of\r\nmemory location that will hold 20 ID numbers using the previously declared\r\nidNum can be achieve by the following:\r\n\r\nidNum=new int[20];', 'Java also supports declaring and reserving memory location slot in one\r\nstatement like the following:\r\n\r\nint[] idNum=new int[20]', '', '', 195),
(148, 'The statement int[] idNum=new int[20]; reserves 20 memory location for 20 ID\r\nnumber values. You can distinguish each idnumber from the others with a\r\nsubscript. A subscript is an integer contained within square brackets that\r\nindicated one of an array’s variables, or elements.\r\n\r\nTo assign values to the elements, use the following syntax;\r\n\r\narrayname[index]=value; ', 'For example, the following code initializes the array;\r\n\r\nidNum[0]=1122;\r\nidNum[1]=2233;\r\nidNum[2]=3344;\r\nidNum[3]=4455;\r\nidNum[4]=5566;\r\nidNum[5]=6677;', '', '', 195),
(149, 'The array is pictured in the figure below', 'The first element in an array is element 0 and the last element’s subscript is one\r\nless than the array size. For example the highest allowed subscript for 100 element array is 99. ', '', 'm6p1.png', 195),
(150, 'You can also assign non default values to array elements upon creation. To\r\ninitialize an array, you use a list of values separated by commas and enclosed\r\nwithin curly braces. For example, if you want to create an array named prime and\r\nstore the first six prime numbers, you can declare prime as follows:\r\n\r\nint[] prime = {2, 3, 5, 7, 11, 13};', 'Notice the semicolon at the end of the statement. You don’t use a semicolon\r\nfollowing a method’s closing curly brace, but you do use one following the closing\r\nbrace of an array initialization list.\r\nWhen the array is populated upon creation, the size is assigned based on the\r\nnumber of values placed in the initializing list', '', '', 195),
(151, 'Using subscripts with an array\r\nWhen processing array elements, it common to use for loop due to the following\r\nreasons:\r\n\r\n● All of the elements in an array are of the same type. They are evenly\r\nprocessed in same fashion repeatedly using a loop.\r\n● The size of the array is known.', 'Here are some examples of processing arrays:', '', '', 196),
(152, '1. Summing all elements. Variable named total to store the sum. Initially\r\ntotal is 0. Add each element in the array to total using a loop like this:', '', '', 'm6p2.jpg', 196),
(153, '2. Merging two arrays. The array’s values and values2 are declared and\r\n                initialized with values then the merge array is declared with the size of the\r\n                sum of the length of the values and values2. ', ' ', '', 'm6p3.jpg', 196),
(154, '3. Find the maximum value. Initially max value is equal to 0.', '', '', 'm6p4.jpg', 196),
(155, 'Passing arrays to a method\r\nThe same as primitive type values to methods, arrays can also be passed to methods.\r\nFor example, the following method displays the elements in an int array:', 'Java uses pass-by-value to pass arguments to a method. There are important differences between passing the values of variables of primitive data type and passing arrays.\r\n● For an argument of a primitive type, the argument’s value is passed.\r\n● For an arguments of an array type, the values of the argument is a reference to an array; this reference value is passed to the method. The example below illustrates the difference.', '', '', 197),
(156, 'Output:\r\n                As shown in the example above f is invoked, the value x remains 1 while but the value of a[0] is 456. Although a and arr are independent variables, they are reference to the same array.', '', '', 'm6p5.jpg', 197),
(157, 'Returning an Array from a Method\r\n\r\nA method may return an array. For example, the method shown below returns an array that contains two values, the sum and subtraction result of the two numbers passed in the method.', '', '', 'm6p6.jpg', 197),
(158, 'The preceding section introduced how to use one-dimensional arrays to store linear collection of elements. You can use two-dimensional array to store a matrix or a table.\r\n\r\nThe syntax for declaring a two-dimensional array:\r\nelementType[][] arrayname;\r\n\r\nOr\r\n\r\nelementType arrayname[][];', 'As an example, here is how you would declare a two-dimensional array variable matrix of int values:\r\n\r\nint[][] matrix;\r\n\r\nOr\r\n\r\nint matrix[][];', '', '', 198),
(159, 'You can create a two-dimensional array of 10-by-10 int values and assign it to matrix using this syntax:\r\nmatrix=new int[10][10];\r\nThe two subscripts are used in a two-dimensional array, one for the row and the other for the column. As in one-dimensional array, the index for each subscript is of the int type ans starts from 0.', 'The statement matrix[0][1]=10;\r\n\r\nwill assign number 10 to matrix row 1 column 2;\r\n\r\nTwo-dimensional array can also be declared and initialized in one statement as show in example below.\r\n\r\nint [][] arr={{1,2,3},{4,5,6},{7,8,9}};', '', '', 198),
(160, 'The example above is equivalent to\r\nint[][] arr;\r\narr=new int[3][3];\r\narr[0][0]=1;\r\narr[0][1]=2;\r\narr[0][2]=3;\r\narr[1][0]=4;\r\narr[1][1]=5;\r\narr[1][2]=6;\r\narr[2][0]=7;\r\narr[2][1]=8;\r\narr[2][2]=9; ', ' A two-dimensional array is an array in which each element is a one-dimensional array. The length of an array x is the number of elements in the array, which can be obtained using x.length, x[0],x[1],x[2]...are arrays. Their length can be obtained using x[0].length.\r\n\r\nJava also support declaring ragged array, this type of two-dimensional array composed of elements of not the same type. For example, the statement below declare and initialize a ragged array.', '', '', 198),
(161, 'double[][] raggedarr={{1,2,3,4,5,6},\r\n{7,8,9,10},\r\n{11,12,13},\r\n{14,15}\r\n{16}};\r\nExample below shows how to process two-dimensional array.', '', '', 'm6p7.jpg', 198),
(162, '', 'In this lesson you learned about:\r\n\r\n● How to Declare and create Arrays\r\n● Returning an array from a method\r\n● Multidimentional Arrays', '', '', 199),
(163, '', '', '', '', 200),
(164, 'A Java method is a collection of statements that are grouped together to perform a task.\r\nMethods can be used to define reusable code and organize and simplify coding.\r\nIn general, a method has the following syntax:  ', 'The following method calculates the sum of two integers. The sum is the method name,\r\nit has two int parameters, num1 and num2, the sum of which is the returned by the method. ', '', '', 185),
(166, 'The following method calculates the sum of two integers. The sum is the method name,\r\nit has two int parameters, num1 and num2, the sum of which is the returned by the\r\nmethod.', '', '', 'm5p1.png', 185),
(167, 'The method header specifies the modifiers, return value type, method name, and\r\nparameters of the method. The modifier, which is optional, tells the compiler how to\r\ncall the method. The static modifier is used for all the methods in this chapter. A method\r\nmay return a value. The returnValueType is the data type of the value the method\r\nreturns. If the method doesn’t return a value, the returnValueType is the keyword void.\r\nFor example, returnValueType in the main method is void as well as\r\nSystem.out.println. The parameter list refers to the type, order, and number of the\r\nparameters of a method. The method name and the parameter list together constitute the method signature. Parameters are optional; a method may contain no parameters. The variables defined in the method header are knows as formal parameters. When a method is invoked, you pass a value to the parameter. This value is referred to as actual parameter or argument. The method body contains a collection of statements that define what the method does. A return statement using the keyword return is required for a non-void metho', '', '', '', 185),
(168, 'This section shows how to declare a void method which does not return a value.\r\n\r\nBelow is an example of using void Method', '', '', '', 188),
(169, 'When calling a method, you need to provide arguments, which must be given in the same\r\norder as their respective parameters in the method specification. This is known as\r\nparameter order association.\r\nYou can use nPrintName(“John”, 5) to print the name “John” 5 times', 'CAUTION: The arguments must match the parameters in order, number, and compatible type,\r\nas defined in the method signature.', '', '', 189),
(171, '', '', 'BLACKPINK - ‘Pink Venom’ MV.mp4', '', 157);

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
  MODIFY `choice_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `tbllessons`
--
ALTER TABLE `tbllessons`
  MODIFY `lesson_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `tblmodules`
--
ALTER TABLE `tblmodules`
  MODIFY `modules_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tblmyclass`
--
ALTER TABLE `tblmyclass`
  MODIFY `myclassId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `tblmylessons`
--
ALTER TABLE `tblmylessons`
  MODIFY `myLessons_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1228;

--
-- AUTO_INCREMENT for table `tblquestions`
--
ALTER TABLE `tblquestions`
  MODIFY `question_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tblquiz`
--
ALTER TABLE `tblquiz`
  MODIFY `quiz_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblquizzes`
--
ALTER TABLE `tblquizzes`
  MODIFY `quizzes_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `result_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `tblsnippets`
--
ALTER TABLE `tblsnippets`
  MODIFY `snippets_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `student_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tblstudentlang`
--
ALTER TABLE `tblstudentlang`
  MODIFY `class_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tblsublessons`
--
ALTER TABLE `tblsublessons`
  MODIFY `sublesson_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

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
