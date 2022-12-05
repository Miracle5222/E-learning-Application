-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2022 at 07:48 PM
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
(166, 'False', '1 12 3 8 10 1', 60);

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
(160, 'What is Java?', 'lock', 17, '1.4'),
(161, 'Summary', 'lock', 17, '1.5'),
(162, 'Quiz', 'lock', 17, '1.6'),
(163, 'Introduction & Objectives', 'unlock', 18, '2.0'),
(164, 'Data', 'lock', 18, '2.1'),
(165, 'Data Storage', 'lock', 18, '2.2'),
(166, 'Arithmetic', 'lock', 18, '2.3'),
(167, 'Operator Precedence', 'lock', 18, '2.4'),
(168, 'Type Conversion and Casting', 'lock', 18, '2.5'),
(169, 'Summary', 'lock', 18, '2.6'),
(170, 'Quiz', 'lock', 18, '2.7'),
(171, 'Introduction and Objectives', 'unlock', 19, '3.0'),
(172, 'If-Else Statement', 'lock', 19, '3.1'),
(173, 'If-Else-If Statement', 'lock', 19, '3.2'),
(174, 'Switch Statement', 'lock', 19, '3.3'),
(175, 'Summary', 'lock', 19, '3.4'),
(176, 'Quiz', 'lock', 19, '3.5'),
(177, 'Introduction and Objectives', 'unlock', 20, '4.0'),
(178, 'While Loop', 'lock', 20, '4.1'),
(179, 'Do While Loop', 'lock', 20, '4.2'),
(180, 'Increment/Decrement Operators', 'lock', 20, '4.3'),
(181, 'For Loop', 'lock', 20, '4.4'),
(182, 'Summary', 'lock', 20, '4.5'),
(183, 'Quiz', 'lock', 20, '4.6'),
(184, 'Introduction and Objectives', 'unlock', 21, '5.0'),
(185, 'Methods Defined', 'lock', 21, '5.1'),
(186, 'Calling a Method', 'lock', 21, '5.2'),
(187, 'Call Stacks', 'lock', 21, '5.3'),
(188, 'Void Methods', 'lock', 21, '5.4'),
(189, 'Passing Arguments by Value', 'lock', 21, '5.5'),
(190, 'Overloading Methods', 'lock', 21, '5.6'),
(191, 'The Scope of Variables', 'lock', 21, '5.7'),
(192, 'Summary', 'lock', 21, '5.8'),
(193, 'Quiz', 'lock', 21, '5.9'),
(194, 'Introduction and Objectives', 'unlock', 22, '6.0'),
(195, 'Declaring and Creating Arrays', 'lock', 22, '6.1'),
(196, 'Using Subscript With an Array', 'lock', 22, '6.2'),
(197, 'Passing Arrays to a Methods', 'lock', 22, '6.3'),
(198, 'Returning an Array from a Method', 'lock', 22, '6.4'),
(199, 'Summary', 'lock', 22, '6.5'),
(200, 'Quiz', 'lock', 22, '6.6');

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
(128, 24, 17, 'unlock'),
(129, 24, 18, 'unlock'),
(130, 24, 19, 'unlock'),
(131, 24, 20, 'unlock'),
(132, 24, 21, 'done'),
(133, 24, 22, 'unlock');

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
(550, 24, 157, 'done', 17),
(551, 24, 158, 'done', 17),
(552, 24, 159, 'done', 17),
(553, 24, 160, 'done', 17),
(554, 24, 161, 'done', 17),
(555, 24, 162, 'done', 17),
(556, 24, 163, 'unlock', 18),
(557, 24, 164, 'unlock', 18),
(558, 24, 165, 'unlock', 18),
(559, 24, 166, 'unlock', 18),
(560, 24, 167, 'unlock', 18),
(561, 24, 168, 'unlock', 18),
(562, 24, 169, 'unlock', 18),
(563, 24, 170, 'done', 18),
(564, 24, 171, 'unlock', 19),
(565, 24, 172, 'unlock', 19),
(566, 24, 173, 'unlock', 19),
(567, 24, 174, 'unlock', 19),
(568, 24, 175, 'unlock', 19),
(569, 24, 176, 'done', 19),
(570, 24, 177, 'unlock', 20),
(571, 24, 178, 'unlock', 20),
(572, 24, 179, 'unlock', 20),
(573, 24, 180, 'unlock', 20),
(574, 24, 181, 'unlock', 20),
(575, 24, 182, 'unlock', 20),
(576, 24, 183, 'done', 20),
(577, 24, 184, 'unlock', 21),
(578, 24, 185, 'unlock', 21),
(579, 24, 186, 'unlock', 21),
(580, 24, 187, 'unlock', 21),
(581, 24, 188, 'unlock', 21),
(582, 24, 189, 'unlock', 21),
(583, 24, 190, 'unlock', 21),
(584, 24, 191, 'unlock', 21),
(585, 24, 192, 'unlock', 21),
(586, 24, 193, 'done', 21),
(587, 24, 194, 'unlock', 22),
(588, 24, 195, 'unlock', 22),
(589, 24, 196, 'unlock', 22),
(590, 24, 197, 'unlock', 22),
(591, 24, 198, 'unlock', 22),
(592, 24, 199, 'unlock', 22),
(593, 24, 200, 'done', 22);

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
(55, 'class HelloWorld {\r\n    public static void main(String[] args) {\r\n    subtract(10,5);\r\n    }\r\n    public static void subtract(int num1,int num2) {\r\n     System.out.println(num1 - num2);\r\n }\r\n}', '45', 'Medium', 24, 'Multiple Choice'),
(56, ' public static void main(String[] args) {\r\n    sum(35,16);\r\n    }\r\n    public static void sum(int x, int y) {\r\n        int result;\r\n        System.out.println(result = x + y);\r\n}', '45', 'Medium', 24, 'Multiple Choice'),
(57, 'What is the output of the following program?\r\n public static void main(String[] args) {\r\n    isEven(4);\r\n    }\r\n    public static void isEven(int num) {\r\n    if(num % 2 == 0){\r\n        System.out.println(\"Even\");\r\n    }else{\r\n         System.out.println(\"Odd\");\r\n    }\r\n}', '45', 'Easy', 24, 'Multiple Choice'),
(58, 'What is the output of the following program?\r\nclass HelloWorld {\r\n    public static void main(String[] args) {\r\n    getRemainder(14,5);\r\n    }\r\n    public static void getRemainder(int num,int num2) {\r\n         System.out.println(num % num2);\r\n    }\r\n}\r\n', '45', 'Medium', 24, 'Multiple Choice'),
(59, 'What is the result of the code below?\r\n  \r\n    int[] values = {2, 5, 5, 6, 8, 10, 4, 5};\r\n    int a = 0;\r\n    while (values[a] <= values[a+1]){\r\n        System.out.println(values[a]);\r\n        a = a + 1;\r\n    }\r\n \r\n', '45', 'Medium', 25, 'Multiple Choice'),
(60, 'What is the result of the code below?\r\n\r\n int [] values = {2, 1, 5, 3, 8, 10, 13, 5};\r\n int b = 0;\r\n while (b <= values[b]){\r\n System.out.println(values[b]);\r\n b++;\r\n }\r\n', '45', 'Medium', 25, 'Multiple Choice');

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
(21, 20, 39, 17),
(22, 21, 39, 18),
(23, 22, 39, 19),
(24, 23, 39, 20),
(25, 24, 39, 21),
(26, 25, 39, 22);

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
(33, 20, 35, 'Passed', '03:52:17', 8),
(34, 20, 38, 'Failed', '02:22:00', 4),
(35, 20, 39, 'Failed', '02:29:50', 5),
(36, 20, 39, 'Failed', '03:25:13', 1),
(37, 20, 39, 'Failed', '03:25:37', 2),
(38, 20, 39, 'Failed', '03:26:32', 7),
(39, 20, 39, 'Passed', '03:27:14', 8),
(40, 21, 39, 'Failed', '03:37:03', 1),
(41, 21, 39, 'Failed', '03:37:10', 1),
(42, 21, 39, 'Failed', '03:37:36', 1),
(43, 21, 39, 'Failed', '03:38:12', 1),
(44, 20, 39, 'Failed', '11:07:55', 4),
(45, 21, 39, 'Failed', '11:50:00', 3),
(46, 21, 39, 'Failed', '11:55:59', 3),
(47, 21, 39, 'Failed', '11:58:24', 3),
(48, 21, 39, 'Failed', '11:58:51', 4),
(49, 21, 39, 'Failed', '12:01:25', 3),
(50, 21, 39, 'Failed', '12:02:19', 4),
(51, 21, 39, 'Failed', '12:03:27', 4),
(52, 21, 39, 'Failed', '12:05:16', 5),
(53, 21, 39, 'Failed', '12:05:52', 2),
(54, 21, 39, 'Failed', '12:08:18', 2),
(55, 21, 39, 'Failed', '12:16:54', 4),
(56, 21, 39, 'Failed', '12:18:30', 1),
(57, 21, 39, 'Failed', '12:20:56', 2),
(58, 21, 39, 'Failed', '12:21:21', 2),
(59, 21, 39, 'Failed', '12:23:35', 3),
(60, 21, 39, 'Failed', '12:25:13', 5),
(61, 21, 39, 'Failed', '12:26:58', 2),
(62, 21, 39, 'Failed', '12:27:22', 4),
(63, 21, 39, 'Failed', '12:30:11', 5),
(64, 21, 39, 'Failed', '12:32:02', 3),
(65, 21, 39, 'Failed', '12:32:22', 3),
(66, 22, 39, 'Failed', '01:03:55', 2),
(67, 23, 39, 'Failed', '01:14:57', 1),
(68, 23, 39, 'Failed', '01:15:37', 0),
(69, 23, 39, 'Failed', '01:16:13', 1),
(70, 20, 39, 'Failed', '02:01:13', 2),
(71, 21, 39, 'Failed', '02:01:40', 3),
(72, 22, 39, 'Failed', '02:05:51', 3),
(73, 22, 39, 'Failed', '02:06:11', 1),
(74, 22, 39, 'Failed', '02:09:09', 2),
(75, 23, 39, 'Failed', '02:09:30', 2),
(76, 24, 39, 'Failed', '02:09:48', 0),
(77, 24, 39, 'Failed', '02:10:08', 2),
(78, 24, 39, 'Failed', '02:10:44', 3),
(79, 24, 39, 'Failed', '02:11:57', 3),
(80, 24, 39, 'Failed', '03:12:13', 1),
(81, 24, 39, 'Passed', '03:12:58', 4),
(82, 25, 39, 'Failed', '03:25:44', 0),
(83, 25, 39, 'Failed', '03:26:24', 1),
(84, 24, 39, 'Failed', '03:28:19', 2),
(85, 23, 39, 'Failed', '03:28:42', 2),
(86, 23, 39, 'Failed', '03:30:18', 0),
(87, 23, 39, 'Failed', '03:30:55', 1),
(88, 23, 39, 'Failed', '03:31:43', 1),
(89, 25, 39, 'Failed', '03:32:22', 0),
(90, 24, 39, 'Failed', '03:32:42', 2),
(91, 20, 39, 'Failed', '05:08:48', 4);

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
(4, 0x6861736b656c6c, 'global _start\r\nsection .text\r\n_start:\r\n  mov rax, 1 ; write(\r\n  mov rdi, 1 ; STDOUT_FILENO,\r\n  mov rsi, msg ; \"Hello, world!\n\",\r\n  mov rdx, msglen ; sizeof(\"Hello, world!\n\")\r\n  syscall ; );\r\n  mov rax, 60 ; exit(\r\n  mov rdi, 0 ; EXIT_SUCCESS\r\n  syscall ; );\r\nsection .rodata\r\n  msg: db \"Hello, world!\", 10\r\n  msglen: equ $ - msg', 27);

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
(39, 'k', 'k', 'k');

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
(24, 1, 39);

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
(20, '', '', 'vOEN65nm4YU', '', 157),
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
(33, 'Symbols Used In Flowcharting\r\n\r\nThe table below describes all the symbols that are used in making flowchart', '', '', '', 159),
(34, 'The sample flowchart below illustrates how to calculate the sum of numbers from 1 to N.', '', '', '', 159),
(35, 'More examples of program flowcharts (programiz.com, n.d.):\r\n1. A flowchart which calculates N! (factorial of N):', '', '', '', 159),
(36, '1. A flowchart which checks if a number is prime :', '', '', '', 159),
(37, '2. A flowchart which shows all prime numbers smaller or equal to N :', '', '', '', 159),
(38, '1. A flowchart which calculates all divisors of N :', '', '', '', 159),
(39, 'A flowchart which checks if 3 numbers can be length of sides of a triangle:', '', '', '', 159),
(40, 'Developed in 1991 and officially released in 1996, Java is a comparatively new\r\ngeneral purpose programming language. Its creator, James Gosling, was then working\r\nat Sun Microsystems with his teammates, notably Patrick Naughton and Mike Sheridan.\r\nIn 1994, Gosling realized that such a language would be ideal for use with web\r\nbrowsers and Java\'s connection to the internet began (MathBits.com, 2018). In 1995, the\r\nversion of the Netscape browser that was released was already capable of running Java\r\nprograms. ', 'Why is it called Java? One of the more famous urban legends in the computing world\r\ngoes that Java’s first name Oak had to be changed due to a previous trademark. After\r\nmany hours of trying to come up with a new name, the development team went out for\r\ncoffee and the name Java was born. (MathBits.com, 2018)', '', '', 160),
(41, 'At present, the latest versions of Java are: Java 14, released in March 2020, and\r\nJava 11, a currently supported long-term support (LTS) version, released on September\r\n25, 2018; Oracle released for the legacy Java 8 LTS the last free public update in January\r\n2019 for commercial use, while it will otherwise still support Java 8 with public updates\r\nfor personal use up to at least December 2020.', 'For purposes of this class, however, you may download resources from\r\nhttps://www.oracle.com/java/technologies/mobile-devices-downloads.html. Or, you\r\ncan use a favorite alternative of your co-majors in the higher years- Learn Java:\r\nProgramming and Tutorials. You can download it from the Play Store into your\r\nsmartphone.', '', '', 160),
(42, '', 'Two general types of programming languages:\r\n                \r\nHigh-level language - code is very similar to English so that almost all computer\r\nprogramming these days are done with them.\r\n\r\nLow-level language - code is similar to native* machine (computer) language,\r\nthat is, ones (1s) and zeroes (0s), also called binary values.', '', '', 161);

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
  MODIFY `choice_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `tbllessons`
--
ALTER TABLE `tbllessons`
  MODIFY `lesson_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `tblmodules`
--
ALTER TABLE `tblmodules`
  MODIFY `modules_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tblmyclass`
--
ALTER TABLE `tblmyclass`
  MODIFY `myclassId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `tblmylessons`
--
ALTER TABLE `tblmylessons`
  MODIFY `myLessons_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT for table `tblquestions`
--
ALTER TABLE `tblquestions`
  MODIFY `question_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tblquiz`
--
ALTER TABLE `tblquiz`
  MODIFY `quiz_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblquizzes`
--
ALTER TABLE `tblquizzes`
  MODIFY `quizzes_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `result_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tblsnippets`
--
ALTER TABLE `tblsnippets`
  MODIFY `snippets_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `student_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tblstudentlang`
--
ALTER TABLE `tblstudentlang`
  MODIFY `class_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblsublessons`
--
ALTER TABLE `tblsublessons`
  MODIFY `sublesson_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
