-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 10:24 PM
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
(200, 'False', 'It is a dynamically-typed language', 73),
(201, 'True', 'It is a compiled language', 73),
(202, 'False', 'It is a markup language', 73),
(203, 'True', 'my_variable', 74),
(204, 'False', '2myvariable', 74),
(205, 'False', 'my-variable', 74),
(206, 'False', 'int x = \"5\";', 75),
(207, 'False', ' integer x = 5;', 75),
(208, 'True', 'int x = 5;', 75),
(209, 'True', ' The value of x is: 5', 76),
(210, 'False', 'x', 76),
(211, 'False', '5', 76),
(212, 'True', ' A data type that can store text', 77),
(213, 'False', 'A data type that can store numbers', 77),
(214, 'False', 'A type of conditional statement in Java', 77),
(215, 'False', 'A type of data that cannot be changed', 78),
(216, 'True', 'A container that holds data of a specific type', 78),
(217, 'False', 'A keyword that is used to create a loop', 78),
(218, 'True', '+', 79),
(219, 'False', '-', 79),
(220, 'False', '*', 79),
(221, 'False', 'The value of z is: 2.5', 80),
(222, 'False', 'The value of z is: 2', 80),
(223, 'True', 'The value of z is: 2.0', 80),
(224, 'False', 'Hello', 81),
(225, 'False', 'world!', 81),
(226, 'True', 'Hello world!', 81),
(227, 'False', 'An error that occurs when the program is executed', 82),
(228, 'False', 'An error that occurs when the program is written', 82),
(229, 'True', ' An error that occurs when the program is compiled', 82),
(230, 'False', 'int', 83),
(231, 'False', 'boolean', 83),
(233, 'True', 'string', 83),
(234, 'False', '1', 84),
(235, 'False', '1.5', 84),
(236, 'True', '2', 84),
(237, 'False', 'double x = 3;', 85),
(238, 'False', 'double y = \"3.5\";', 85),
(239, 'True', 'double z = 3.5;', 85),
(240, 'False', '4', 86),
(241, 'False', '4.0', 86),
(242, 'True', '4.5', 86),
(243, 'True', '++', 87),
(244, 'False', '+', 87),
(245, 'False', '-', 87),
(246, 'False', '3', 88),
(247, 'False', '2.5', 88),
(248, 'True', '2', 88),
(249, 'True', 'boolean x = true;', 89),
(250, 'False', 'boolean y = \"true\";', 89),
(251, 'False', 'boolean z = 1;', 89),
(252, 'False', '16', 90),
(253, 'True', '23', 90),
(254, 'False', '13', 90),
(255, 'False', 'if', 91),
(256, 'False', 'else', 91),
(257, 'True', ' for', 91),
(258, 'False', 'To declare variables', 92),
(259, 'False', 'To loop through a block of code', 92),
(260, 'True', 'To execute different code depending on a condition', 92),
(262, 'False', 'while', 93),
(263, 'False', 'do', 93),
(264, 'True', 'if', 93),
(265, 'True', 'if (condition) {code block}', 94),
(266, 'False', 'if (condition) then {code block}', 94),
(267, 'False', ' if condition then {code block}', 94),
(268, 'False', 'None', 95),
(269, 'False', ' One', 95),
(270, 'True', 'Multiple', 95),
(271, 'True', ' \"x is less than 10\"', 96),
(272, 'False', '\"x is greater than or equal to 10\"', 96),
(273, 'False', 'Neither statement is printed', 96),
(274, 'False', 'System.input()', 97),
(275, 'True', 'Scanner.nextLine()', 97),
(276, 'False', 'Console.read()', 97),
(277, 'True', 'To read user input', 98),
(278, 'False', 'To write output to the console', 98),
(279, 'False', ' To perform arithmetic operations', 98),
(280, 'False', ' \"Enter a number:\"', 99),
(281, 'True', '\"The number is even.\"', 99),
(282, 'False', '\"The number is odd.\"', 99),
(283, 'False', '\"Enter a string:\"', 100),
(284, 'False', 'An error is thrown due to incorrect syntax', 100),
(285, 'True', '\"You entered Java.\"', 100),
(286, 'False', 'for loop', 101),
(287, 'False', 'while loop', 101),
(288, 'True', 'do-while loop', 101),
(289, 'True', 'for loop', 102),
(290, 'False', ' while loop', 102),
(291, 'False', 'do-while loop', 102),
(292, 'True', ' for (initialization; condition; update) { // code block }', 103),
(293, 'False', 'while (condition) { // code block }', 103),
(294, 'False', 'do { // code block } while (condition);', 103),
(295, 'False', 'for (initialization; condition; update) { // code block }', 104),
(296, 'True', 'while (condition) { // code block }', 104),
(297, 'False', 'do { // code block } while (condition);', 104),
(298, 'False', 'for (initialization; condition; update) { // code block }', 105),
(299, 'False', 'while (condition) { // code block }', 105),
(300, 'True', 'do { // code block } while (condition);', 105),
(301, 'True', 'The loop body is executed only if the condition is true.', 106),
(302, 'False', 'The loop body is executed only if the condition is false.', 106),
(303, 'False', 'The loop body is executed at least once.', 106),
(304, 'True', 'The loop body is executed only if the condition is true.', 107),
(305, 'False', 'The loop body is executed only if the condition is false.', 107),
(306, 'False', 'The loop body is executed at least once.', 107),
(307, 'False', 'The loop body is executed only if the condition is true.', 108),
(308, 'False', 'The loop body is executed only if the condition is true.', 108),
(309, 'True', 'The loop body is executed at least once.', 108),
(311, 'False', ' A variable', 109),
(312, 'True', 'A function', 109),
(313, 'False', 'A loop', 109),
(314, 'True', 'To perform a specific task', 110),
(315, 'False', 'To create an object', 110),
(316, 'False', 'To declare a variable', 110),
(317, 'False', 'With the \"func\" keyword', 111),
(318, 'False', ' With the \"method\" keyword', 111),
(319, 'True', 'With the \"public\" keyword', 111),
(320, 'False', 'A number', 112),
(321, 'False', ' A string', 112),
(322, 'True', 'Any data type', 112),
(323, 'False', 'The return type of the method', 113),
(324, 'True', 'The value passed into the method', 113),
(325, 'False', 'The name of the method', 113),
(326, 'False', 'To end the method', 114),
(327, 'False', 'To specify the return type of the method', 114),
(328, 'True', 'To return a value from the method', 114),
(329, 'False', 'Yes', 115),
(330, 'True', 'No', 115),
(331, 'False', 'When a method is defined in two different classes', 116),
(332, 'True', 'When a method has the same name but different parameters', 116),
(333, 'False', 'When a method is called from within another method', 116),
(334, 'True', 'To specify that the method has no return type', 117),
(335, 'False', 'To specify that the method is a constructor', 117),
(336, 'False', 'To specify that the method has no parameters', 117),
(337, 'False', 'A method that can only be called from within its own class', 118),
(338, 'True', ' A method that does not belong to an object of the class', 118),
(339, 'False', 'A method that cannot have parameters', 118),
(340, 'True', 'A collection of variables with the same data type', 119),
(341, 'False', 'A collection of variables with different data types', 119),
(342, 'False', 'A collection of methods', 119),
(343, 'False', 'int myArray;', 120),
(344, 'False', ' myArray = new int[];', 120),
(345, 'True', 'int[] myArray;', 120),
(346, 'False', 'int[] myArray = new int[];', 121),
(347, 'True', 'int[] myArray = {1, 2, 3};', 121),
(348, 'False', ' int[] myArray = (1, 2, 3);', 121),
(349, 'False', 'Using a for loop', 122),
(350, 'True', 'Using the index of the element', 122),
(351, 'False', 'Using the name of the array', 122),
(352, 'True', 'The number of elements in the array', 123),
(353, 'False', ' The index of the last element in the array', 123),
(354, 'False', 'The sum of all the elements in the array', 123),
(355, 'False', 'Using a for loop', 124),
(356, 'True', 'Using the index of the element', 124),
(357, 'False', ' Using the name of the array', 124),
(358, 'False', 'An array with multiple data types', 125),
(359, 'True', 'An array with multiple dimensions', 125),
(360, 'True', 'An array with multiple elements', 125),
(361, 'True', 'int[][] myArray;', 126),
(362, 'False', 'myArray = new int[][];', 126),
(363, 'False', 'int[][] myArray = new int[][];', 126),
(364, 'True', 'int[][] myArray = new int[][]{{1, 2}, {3, 4}};', 127),
(365, 'False', 'int[][] myArray = {1, 2, 3, 4};', 127),
(366, 'False', 'int[][] myArray = {1, {2, 3}, {4, 5, 6}};', 127),
(367, 'False', 'Using a for loop', 128),
(368, 'True', 'Using the index of the element', 128),
(369, 'False', 'Using the name of the array', 128);

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
(219, 'Video - Introduction', 'unlock', 17, '1.1'),
(220, 'Sub Lesson - What is Programming?', 'lock', 17, '1.2'),
(221, 'Video - Java', 'lock', 17, '1.3'),
(222, 'Sub Lesson - String', 'lock', 17, '1.4'),
(223, 'Video - Variables', 'lock', 17, '1.5'),
(224, 'Sub Lesson - Variables', 'lock', 17, '1.6'),
(225, 'Video - Syntax & Error 01', 'lock', 17, '1.7'),
(226, 'Video - Syntax & Error 02', 'lock', 17, '1.8'),
(227, 'Quiz', 'lock', 17, '1.9'),
(228, 'Sub Lesson - Data Types', 'unlock', 44, '2.1'),
(229, 'Video - Data Types', 'lock', 44, '2.2'),
(230, 'Video - Arithmetic Operators ', 'lock', 44, '2.3'),
(231, 'Sub Lesson - Arithmetic Operators', 'lock', 44, '2.4'),
(232, 'Quiz', 'lock', 44, '2.5'),
(235, 'Video - Conditional Statement', 'unlock', 45, '3.1'),
(236, 'Sub Lesson - Conditional Statement', 'lock', 45, '3.2'),
(237, 'Video - Java Input', 'lock', 45, '3.3'),
(238, 'Sub Lesson - Input', 'lock', 45, '3.4'),
(241, 'Quiz', 'lock', 45, '3.5'),
(242, 'Video - For Loop', 'unlock', 46, '4.1'),
(243, 'Sub Lesson - For Loop', 'lock', 46, '4.2'),
(244, 'Video - While Loop', 'lock', 46, '4.3'),
(245, 'Sub Lesson - While Loop', 'lock', 46, '4.4'),
(246, 'Sub Lesson - Do-While Loop', 'lock', 46, '4.5'),
(247, 'Quiz', 'lock', 46, '4.6'),
(248, 'Video - Method', 'unlock', 47, '5.1'),
(249, 'Sub Lesson - Defining Method', 'lock', 47, '5.2'),
(250, 'Sub Lesson - Call Stack Method', 'lock', 47, '5.3'),
(251, 'Sub Lesson - Overloading Methods', 'lock', 47, '5.4'),
(252, 'Quiz', 'lock', 47, '5.5'),
(253, 'Video - Arrays', 'unlock', 48, '6.1'),
(254, 'Sub Lesson - Declaring and Creating Arrays', 'lock', 48, '6.2'),
(255, 'Sub Lesson - Passing Arrays To A Method', 'lock', 48, '6.3'),
(256, 'Sub Lesson - Multidimensional Arrays', 'lock', 48, '6.4'),
(257, 'Quiz', 'lock', 48, '6.5');

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
(44, 'Primitive Data Types and Arithmetic', 1, 'lock'),
(45, ' Conditional Statement', 1, 'lock'),
(46, 'Repetition', 1, 'lock'),
(47, 'Methods', 1, 'lock'),
(48, 'Arrays', 1, 'lock');

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
(360, 61, 17, 'unlock'),
(361, 61, 44, 'unlock'),
(362, 61, 45, 'unlock'),
(363, 61, 46, 'unlock'),
(364, 61, 47, 'unlock'),
(365, 61, 48, 'unlock'),
(366, 62, 17, 'unlock'),
(367, 62, 44, 'unlock'),
(368, 62, 45, 'unlock'),
(369, 62, 46, 'unlock'),
(370, 62, 47, 'unlock'),
(371, 62, 48, 'unlock'),
(372, 63, 17, 'unlock'),
(373, 63, 44, 'unlock'),
(374, 63, 45, 'unlock'),
(375, 63, 46, 'unlock'),
(376, 63, 47, 'unlock'),
(377, 63, 48, 'unlock'),
(378, 64, 17, 'unlock'),
(379, 64, 44, 'done'),
(380, 64, 45, 'unlock'),
(381, 64, 46, 'unlock'),
(382, 64, 47, 'unlock'),
(383, 64, 48, 'unlock'),
(384, 65, 17, 'done'),
(385, 65, 44, 'done'),
(386, 65, 45, 'done'),
(387, 65, 46, 'done'),
(388, 65, 47, 'unlock'),
(389, 65, 48, 'lock'),
(390, 66, 17, 'done'),
(391, 66, 44, 'done'),
(392, 66, 45, 'done'),
(393, 66, 46, 'done'),
(394, 66, 47, 'unlock'),
(395, 66, 48, 'lock'),
(396, 67, 17, 'unlock'),
(397, 67, 44, 'unlock'),
(398, 67, 45, 'unlock'),
(399, 67, 46, 'unlock'),
(400, 67, 47, 'done'),
(401, 67, 48, 'unlock'),
(402, 68, 17, 'unlock'),
(403, 68, 44, 'unlock'),
(404, 68, 45, 'unlock'),
(405, 68, 46, 'unlock'),
(406, 68, 47, 'unlock'),
(407, 68, 48, 'unlock'),
(408, 69, 17, 'done'),
(409, 69, 44, 'done'),
(410, 69, 45, 'done'),
(411, 69, 46, 'done'),
(412, 69, 47, 'done'),
(413, 69, 48, 'done');

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
(1760, 61, 219, 'unlock', 17),
(1761, 61, 220, 'lock', 17),
(1762, 61, 221, 'lock', 17),
(1763, 61, 222, 'lock', 17),
(1764, 61, 223, 'lock', 17),
(1765, 61, 224, 'lock', 17),
(1766, 61, 225, 'lock', 17),
(1767, 61, 226, 'lock', 17),
(1768, 61, 227, 'lock', 17),
(1769, 61, 230, 'lock', 44),
(1770, 61, 231, 'lock', 44),
(1771, 61, 228, 'unlock', 44),
(1772, 61, 229, 'lock', 44),
(1773, 61, 235, 'unlock', 45),
(1778, 62, 219, 'unlock', 17),
(1779, 62, 220, 'lock', 17),
(1780, 62, 221, 'lock', 17),
(1781, 62, 222, 'lock', 17),
(1782, 62, 223, 'lock', 17),
(1783, 62, 224, 'lock', 17),
(1784, 62, 225, 'lock', 17),
(1785, 62, 226, 'lock', 17),
(1786, 62, 227, 'lock', 17),
(1787, 62, 228, 'done', 44),
(1788, 62, 229, 'done', 44),
(1789, 62, 230, 'done', 44),
(1790, 62, 231, 'done', 44),
(1791, 62, 235, 'done', 45),
(1796, 61, 236, 'lock', 45),
(1797, 62, 236, 'lock', 45),
(1798, 61, 221, 'lock', 17),
(1799, 61, 221, 'lock', 17),
(1800, 62, 221, 'lock', 17),
(1801, 62, 221, 'lock', 17),
(1802, 61, 238, 'lock', 45),
(1803, 62, 238, 'lock', 45),
(1804, 63, 219, 'done', 17),
(1805, 63, 220, 'done', 17),
(1806, 63, 221, 'done', 17),
(1807, 63, 222, 'unlock', 17),
(1808, 63, 223, 'lock', 17),
(1809, 63, 224, 'lock', 17),
(1810, 63, 225, 'lock', 17),
(1811, 63, 226, 'lock', 17),
(1812, 63, 227, 'lock', 17),
(1813, 63, 228, 'unlock', 44),
(1814, 63, 229, 'lock', 44),
(1815, 63, 230, 'lock', 44),
(1816, 63, 231, 'lock', 44),
(1817, 63, 235, 'lock', 45),
(1818, 63, 236, 'lock', 45),
(1819, 63, 237, 'lock', 45),
(1820, 63, 238, 'lock', 45),
(1823, 61, 232, 'lock', 44),
(1824, 62, 232, 'lock', 44),
(1825, 63, 232, 'lock', 44),
(1826, 64, 219, 'unlock', 17),
(1827, 64, 220, 'lock', 17),
(1828, 64, 221, 'lock', 17),
(1829, 64, 222, 'lock', 17),
(1830, 64, 223, 'lock', 17),
(1831, 64, 224, 'lock', 17),
(1832, 64, 225, 'lock', 17),
(1833, 64, 226, 'lock', 17),
(1834, 64, 227, 'lock', 17),
(1835, 64, 228, 'done', 44),
(1836, 64, 229, 'done', 44),
(1837, 64, 230, 'done', 44),
(1838, 64, 231, 'done', 44),
(1839, 64, 232, 'done', 44),
(1840, 64, 235, 'done', 45),
(1841, 64, 236, 'done', 45),
(1842, 64, 237, 'done', 45),
(1843, 64, 238, 'done', 45),
(1844, 61, 241, 'lock', 45),
(1845, 62, 241, 'lock', 45),
(1846, 63, 241, 'lock', 45),
(1847, 64, 241, 'lock', 45),
(1848, 61, 242, 'unlock', 46),
(1849, 62, 242, 'unlock', 46),
(1850, 63, 242, 'unlock', 46),
(1851, 64, 242, 'unlock', 46),
(1852, 61, 243, 'lock', 46),
(1853, 62, 243, 'lock', 46),
(1854, 63, 243, 'lock', 46),
(1855, 64, 243, 'lock', 46),
(1856, 61, 244, 'lock', 46),
(1857, 62, 244, 'lock', 46),
(1858, 63, 244, 'lock', 46),
(1859, 64, 244, 'lock', 46),
(1860, 61, 245, 'lock', 46),
(1861, 62, 245, 'lock', 46),
(1862, 63, 245, 'lock', 46),
(1863, 64, 245, 'lock', 46),
(1864, 61, 246, 'lock', 46),
(1865, 62, 246, 'lock', 46),
(1866, 63, 246, 'lock', 46),
(1867, 64, 246, 'lock', 46),
(1868, 61, 247, 'lock', 46),
(1869, 62, 247, 'lock', 46),
(1870, 63, 247, 'lock', 46),
(1871, 64, 247, 'lock', 46),
(1872, 65, 219, 'done', 17),
(1873, 65, 220, 'done', 17),
(1874, 65, 221, 'done', 17),
(1875, 65, 222, 'done', 17),
(1876, 65, 223, 'done', 17),
(1877, 65, 224, 'done', 17),
(1878, 65, 225, 'done', 17),
(1879, 65, 226, 'done', 17),
(1880, 65, 227, 'done', 17),
(1881, 65, 228, 'done', 44),
(1882, 65, 229, 'done', 44),
(1883, 65, 230, 'done', 44),
(1884, 65, 231, 'done', 44),
(1885, 65, 232, 'done', 44),
(1886, 65, 235, 'done', 45),
(1887, 65, 236, 'done', 45),
(1888, 65, 237, 'done', 45),
(1889, 65, 238, 'done', 45),
(1890, 65, 241, 'done', 45),
(1891, 65, 242, 'done', 46),
(1892, 65, 243, 'done', 46),
(1893, 65, 244, 'done', 46),
(1894, 65, 245, 'done', 46),
(1895, 65, 246, 'done', 46),
(1896, 65, 247, 'done', 46),
(1897, 61, 248, 'unlock', 47),
(1898, 62, 248, 'unlock', 47),
(1899, 63, 248, 'unlock', 47),
(1900, 64, 248, 'unlock', 47),
(1901, 65, 248, 'done', 47),
(1902, 61, 249, 'unlock', 47),
(1903, 62, 249, 'lock', 47),
(1904, 63, 249, 'lock', 47),
(1905, 64, 249, 'lock', 47),
(1906, 65, 249, 'lock', 47),
(1907, 61, 250, 'lock', 47),
(1908, 62, 250, 'lock', 47),
(1909, 63, 250, 'lock', 47),
(1910, 64, 250, 'lock', 47),
(1911, 65, 250, 'lock', 47),
(1912, 61, 251, 'lock', 47),
(1913, 62, 251, 'lock', 47),
(1914, 63, 251, 'lock', 47),
(1915, 64, 251, 'lock', 47),
(1916, 65, 251, 'lock', 47),
(1917, 66, 219, 'done', 17),
(1918, 66, 220, 'done', 17),
(1919, 66, 221, 'done', 17),
(1920, 66, 222, 'done', 17),
(1921, 66, 223, 'done', 17),
(1922, 66, 224, 'done', 17),
(1923, 66, 225, 'done', 17),
(1924, 66, 226, 'done', 17),
(1925, 66, 227, 'done', 17),
(1926, 66, 228, 'done', 44),
(1927, 66, 229, 'done', 44),
(1928, 66, 230, 'done', 44),
(1929, 66, 231, 'done', 44),
(1930, 66, 232, 'done', 44),
(1931, 66, 235, 'done', 45),
(1932, 66, 236, 'done', 45),
(1933, 66, 237, 'done', 45),
(1934, 66, 238, 'done', 45),
(1935, 66, 241, 'done', 45),
(1936, 66, 242, 'done', 46),
(1937, 66, 243, 'done', 46),
(1938, 66, 244, 'done', 46),
(1939, 66, 245, 'done', 46),
(1940, 66, 246, 'done', 46),
(1941, 66, 247, 'done', 46),
(1942, 66, 248, 'done', 47),
(1943, 66, 249, 'done', 47),
(1944, 66, 250, 'done', 47),
(1945, 66, 251, 'done', 47),
(1946, 61, 252, 'unlock', 47),
(1947, 62, 252, 'lock', 47),
(1948, 63, 252, 'lock', 47),
(1949, 64, 252, 'lock', 47),
(1950, 65, 252, 'lock', 47),
(1951, 66, 252, 'lock', 47),
(1952, 67, 219, 'unlock', 17),
(1953, 67, 220, 'lock', 17),
(1954, 67, 221, 'lock', 17),
(1955, 67, 222, 'lock', 17),
(1956, 67, 223, 'lock', 17),
(1957, 67, 224, 'lock', 17),
(1958, 67, 225, 'lock', 17),
(1959, 67, 226, 'lock', 17),
(1960, 67, 227, 'lock', 17),
(1961, 67, 228, 'unlock', 44),
(1962, 67, 229, 'lock', 44),
(1963, 67, 230, 'lock', 44),
(1964, 67, 231, 'lock', 44),
(1965, 67, 232, 'lock', 44),
(1966, 67, 235, 'unlock', 45),
(1967, 67, 236, 'lock', 45),
(1968, 67, 237, 'lock', 45),
(1969, 67, 238, 'lock', 45),
(1970, 67, 241, 'lock', 45),
(1971, 67, 242, 'unlock', 46),
(1972, 67, 243, 'lock', 46),
(1973, 67, 244, 'lock', 46),
(1974, 67, 245, 'lock', 46),
(1975, 67, 246, 'lock', 46),
(1976, 67, 247, 'lock', 46),
(1977, 67, 248, 'done', 47),
(1978, 67, 249, 'done', 47),
(1979, 67, 250, 'done', 47),
(1980, 67, 251, 'done', 47),
(1981, 67, 252, 'done', 47),
(1982, 61, 253, 'lock', 48),
(1983, 62, 253, 'lock', 48),
(1984, 63, 253, 'lock', 48),
(1985, 64, 253, 'lock', 48),
(1986, 65, 253, 'lock', 48),
(1987, 66, 253, 'lock', 48),
(1988, 67, 253, 'lock', 48),
(1989, 61, 254, 'lock', 48),
(1990, 62, 254, 'lock', 48),
(1991, 63, 254, 'lock', 48),
(1992, 64, 254, 'lock', 48),
(1993, 65, 254, 'lock', 48),
(1994, 66, 254, 'lock', 48),
(1995, 67, 254, 'lock', 48),
(1996, 61, 255, 'lock', 48),
(1997, 62, 255, 'lock', 48),
(1998, 63, 255, 'lock', 48),
(1999, 64, 255, 'lock', 48),
(2000, 65, 255, 'lock', 48),
(2001, 66, 255, 'lock', 48),
(2002, 67, 255, 'lock', 48),
(2003, 61, 256, 'lock', 48),
(2004, 62, 256, 'lock', 48),
(2005, 63, 256, 'lock', 48),
(2006, 64, 256, 'lock', 48),
(2007, 65, 256, 'lock', 48),
(2008, 66, 256, 'lock', 48),
(2009, 67, 256, 'lock', 48),
(2010, 68, 219, 'unlock', 17),
(2011, 68, 220, 'lock', 17),
(2012, 68, 221, 'lock', 17),
(2013, 68, 222, 'lock', 17),
(2014, 68, 223, 'lock', 17),
(2015, 68, 224, 'lock', 17),
(2016, 68, 225, 'lock', 17),
(2017, 68, 226, 'lock', 17),
(2018, 68, 227, 'lock', 17),
(2019, 68, 228, 'unlock', 44),
(2020, 68, 229, 'lock', 44),
(2021, 68, 230, 'lock', 44),
(2022, 68, 231, 'lock', 44),
(2023, 68, 232, 'lock', 44),
(2024, 68, 235, 'unlock', 45),
(2025, 68, 236, 'lock', 45),
(2026, 68, 237, 'lock', 45),
(2027, 68, 238, 'lock', 45),
(2028, 68, 241, 'lock', 45),
(2029, 68, 242, 'unlock', 46),
(2030, 68, 243, 'lock', 46),
(2031, 68, 244, 'lock', 46),
(2032, 68, 245, 'lock', 46),
(2033, 68, 246, 'lock', 46),
(2034, 68, 247, 'lock', 46),
(2035, 68, 248, 'unlock', 47),
(2036, 68, 249, 'lock', 47),
(2037, 68, 250, 'lock', 47),
(2038, 68, 251, 'lock', 47),
(2039, 68, 252, 'lock', 47),
(2040, 68, 253, 'done', 48),
(2041, 68, 254, 'done', 48),
(2042, 68, 255, 'done', 48),
(2043, 68, 256, 'done', 48),
(2044, 61, 257, 'unlock', 48),
(2045, 62, 257, 'lock', 48),
(2046, 63, 257, 'lock', 48),
(2047, 64, 257, 'lock', 48),
(2048, 65, 257, 'lock', 48),
(2049, 66, 257, 'lock', 48),
(2050, 67, 257, 'lock', 48),
(2051, 68, 257, 'lock', 48),
(2052, 69, 219, 'done', 17),
(2053, 69, 220, 'done', 17),
(2054, 69, 221, 'done', 17),
(2055, 69, 222, 'done', 17),
(2056, 69, 223, 'done', 17),
(2057, 69, 224, 'done', 17),
(2058, 69, 225, 'done', 17),
(2059, 69, 226, 'done', 17),
(2060, 69, 227, 'done', 17),
(2061, 69, 228, 'done', 44),
(2062, 69, 229, 'done', 44),
(2063, 69, 230, 'done', 44),
(2064, 69, 231, 'done', 44),
(2065, 69, 232, 'done', 44),
(2066, 69, 235, 'done', 45),
(2067, 69, 236, 'done', 45),
(2068, 69, 237, 'done', 45),
(2069, 69, 238, 'done', 45),
(2070, 69, 241, 'done', 45),
(2071, 69, 242, 'done', 46),
(2072, 69, 243, 'done', 46),
(2073, 69, 244, 'done', 46),
(2074, 69, 245, 'done', 46),
(2075, 69, 246, 'done', 46),
(2076, 69, 247, 'done', 46),
(2077, 69, 248, 'done', 47),
(2078, 69, 249, 'done', 47),
(2079, 69, 250, 'done', 47),
(2080, 69, 251, 'done', 47),
(2081, 69, 252, 'done', 47),
(2082, 69, 253, 'done', 48),
(2083, 69, 254, 'done', 48),
(2084, 69, 255, 'done', 48),
(2085, 69, 256, 'done', 48),
(2086, 69, 257, 'done', 48);

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
(73, 'Which of the following is true about Java?', '30', 'Easy', 27, 'Multiple Choice'),
(74, 'Which of the following is a valid variable name in Java?', '22', 'Easy', 27, 'Multiple Choice'),
(75, 'Which of the following is the correct syntax for declaring a variable of type integer?', '20', 'Medium', 27, 'Multiple Choice'),
(76, 'What is the output of the following code?\r\n\r\nint x = 5;\r\nSystem.out.println(\"The value of x is: \" + x);\r\n', '30', 'Medium', 27, 'Multiple Choice'),
(77, 'What is a string in Java?', '20', 'Easy', 27, 'Multiple Choice'),
(78, 'What is a variable in Java?', '20', 'Easy', 27, 'Multiple Choice'),
(79, 'Which operator is used for concatenating strings in Java?', '18', 'Easy', 27, 'Multiple Choice'),
(80, 'What is the output of the following code?\r\n\r\nint x = 5;\r\nint y = 2;\r\ndouble z = x / y;\r\nSystem.out.println(\"The value of z is: \" + z);', '35', 'Medium', 27, 'Multiple Choice'),
(81, 'What is the output of the following code?\r\n\r\nSystem.out.println(\"Hello \" + \"world!\");', '18', 'Easy', 27, 'Multiple Choice'),
(82, 'What is a syntax error in Java?', '18', 'Easy', 27, 'Multiple Choice'),
(83, 'Which of the following is not a primitive data type in Java?', '20', 'Easy', 28, 'Multiple Choice'),
(84, 'What is the result of the following expression?\r\n int a = 5;\r\n int b = 3;\r\n int c = a / b;\r\n System.out.println(c);', '25', 'Easy', 28, 'Multiple Choice'),
(85, 'Which of the following is a correct way to declare a variable of type double?', '20', 'Easy', 28, 'Multiple Choice'),
(86, 'What is the result of the following expression?\r\ndouble x = 2.5;\r\ndouble y = 1.5;\r\ndouble z = x + y;\r\nSystem.out.println(z);', '28', 'Easy', 28, 'Multiple Choice'),
(87, 'Which of the following operators can be used to increment a variable by 1 in Java?', '30', 'Medium', 28, 'Multiple Choice'),
(88, 'What is the result of the following expression?\r\nint a = 7;\r\nint b = 2;\r\nint c = a % b;\r\nSystem.out.println(c);', '22', 'Easy', 28, 'Multiple Choice'),
(89, 'Which of the following is a correct way to declare a variable of type boolean?', '15', 'Easy', 28, 'Multiple Choice'),
(90, 'What is the result of the following expression?\r\nint a = 3;\r\nint b = 5;\r\nint c = a + b * 2;\r\nSystem.out.println(c);', '25', 'Easy', 28, 'Multiple Choice'),
(91, 'Which of the following is not a conditional statement in Java?', '15', 'Easy', 29, 'Multiple Choice'),
(92, 'What is the purpose of a conditional statement in Java?', '20', 'Easy', 29, 'Multiple Choice'),
(93, 'What keyword is used to start a conditional statement in Java?', '18', 'Select Level', 29, 'Multiple Choice'),
(94, 'What is the syntax for a single if statement in Java?', '22', 'Easy', 29, 'Multiple Choice'),
(95, 'How many else if statements can be included in a single if-else chain in Java?', '16', 'Easy', 29, 'Multiple Choice'),
(96, 'What is the result of the following code block?\r\nint x = 5;\r\nif (x < 10) {\r\nSystem.out.println(\"x is less than 10\");\r\n} else {\r\nSystem.out.println(\"x is greater than or equal to 10\");\r\n}', '30', 'Medium', 29, 'Multiple Choice'),
(97, 'Which method can be used to read user input in Java?', '15', 'Select Level', 29, 'Multiple Choice'),
(98, 'What is the purpose of the Scanner class in Java?', '20', 'Medium', 29, 'Multiple Choice'),
(99, 'What is the result of the following code block?\r\nScanner scanner = new Scanner(System.in);\r\nSystem.out.println(\"Enter a number:\");\r\nint x = scanner.nextInt(); //x = 2\r\nif (x % 2 == 0) {\r\nSystem.out.println(\"The number is even.\");\r\n} else {\r\nSystem.out.println(\"The number is odd.\");\r\n}', '35', 'Medium', 29, 'Multiple Choice'),
(100, 'What is the result of the following code block?\r\nScanner scanner = new Scanner(System.in);\r\nSystem.out.println(\"Enter a string:\");\r\nString input = scanner.nextLine(); // input = \"Java\"\r\nif (input.equals(\"Java\")) {\r\nSystem.out.println(\"You entered Java.\");\r\n} else {\r\nSystem.out.println(\"You did not enter Java.\");\r\n}', '34', 'Medium', 29, 'Multiple Choice'),
(101, 'Which loop construct will always execute at least once?', '22', 'Easy', 30, 'Multiple Choice'),
(102, 'Which loop construct is best suited for situations where the number of iterations is known ahead of time?', '25', 'Easy', 30, 'Multiple Choice'),
(103, 'What is the syntax for a for loop in Java?', '25', 'Easy', 30, 'Multiple Choice'),
(104, 'What is the syntax for a while loop in Java?', '20', 'Easy', 30, 'Multiple Choice'),
(105, 'What is the syntax for a do-while loop in Java?', '25', 'Easy', 30, 'Multiple Choice'),
(106, 'Which of the following statements is true about the for loop?', '18', 'Easy', 30, 'Multiple Choice'),
(107, 'Which of the following statements is true about the while loop?', '18', 'Easy', 30, 'Multiple Choice'),
(108, 'Which of the following statements is true about the do-while loop?', '18', 'Easy', 30, 'Multiple Choice'),
(109, 'What is a method in Java?', '15', 'Select Level', 31, 'Multiple Choice'),
(110, 'What is the purpose of a method in Java?', '18', 'Select Level', 31, 'Multiple Choice'),
(111, 'How is a method declared in Java?', '16', 'Select Level', 31, 'Multiple Choice'),
(112, 'What is the return type of a method in Java?', '20', 'Easy', 31, 'Multiple Choice'),
(113, 'What is a parameter in a method?', '22', 'Easy', 31, 'Multiple Choice'),
(114, 'What is the purpose of a return statement in a method?', '15', 'Select Level', 31, 'Multiple Choice'),
(115, 'Can a method return multiple values in Java?', '22', 'Easy', 31, 'Multiple Choice'),
(116, 'What is method overloading in Java?', '25', 'Medium', 31, 'Multiple Choice'),
(117, 'What is the purpose of the \"void\" keyword in a method declaration?', '25', 'Medium', 31, 'Multiple Choice'),
(118, 'What is a static method in Java?', '25', 'Easy', 31, 'Multiple Choice'),
(119, 'What is an array in Java?', '25', 'Easy', 32, 'Multiple Choice'),
(120, 'How do you declare an array in Java?', '25', 'Easy', 32, 'Multiple Choice'),
(121, 'How do you initialize an array in Java?', '25', 'Easy', 32, 'Multiple Choice'),
(122, 'How do you access an element in an array in Java?', '22', 'Easy', 32, 'Multiple Choice'),
(123, 'What is the length of an array in Java?', '25', 'Easy', 32, 'Multiple Choice'),
(124, 'How do you change the value of an element in an array in Java?', '20', 'Easy', 32, 'Multiple Choice'),
(125, 'What is a multidimensional array in Java?', '25', 'Easy', 32, 'Multiple Choice'),
(126, 'How do you declare a multidimensional array in Java?', '25', 'Easy', 32, 'Multiple Choice'),
(127, 'How do you initialize a multidimensional array in Java?', '25', 'Medium', 32, 'Multiple Choice'),
(128, 'How do you access an element in a multidimensional array in Java?', '18', 'Easy', 32, 'Multiple Choice');

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
(27, 17, '2023-04-07'),
(28, 44, '2023-04-12'),
(29, 45, '2023-04-12'),
(30, 46, '2023-04-12'),
(31, 47, '2023-04-15'),
(32, 48, '2023-04-15');

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
(162, 27, 76, 17),
(163, 27, 77, 17),
(164, 27, 78, 17),
(165, 28, 76, 44),
(166, 28, 77, 44),
(167, 28, 78, 44),
(168, 27, 79, 17),
(169, 28, 79, 44),
(170, 29, 76, 45),
(171, 29, 77, 45),
(172, 29, 78, 45),
(173, 29, 79, 45),
(174, 30, 76, 46),
(175, 30, 77, 46),
(176, 30, 78, 46),
(177, 30, 79, 46),
(178, 27, 80, 17),
(179, 28, 80, 44),
(180, 29, 80, 45),
(181, 30, 80, 46),
(182, 27, 81, 17),
(183, 28, 81, 44),
(184, 29, 81, 45),
(185, 30, 81, 46),
(186, 31, 76, 47),
(187, 31, 77, 47),
(188, 31, 78, 47),
(189, 31, 79, 47),
(190, 31, 80, 47),
(191, 31, 81, 47),
(192, 27, 82, 17),
(193, 28, 82, 44),
(194, 29, 82, 45),
(195, 30, 82, 46),
(196, 31, 82, 47),
(197, 27, 83, 17),
(198, 28, 83, 44),
(199, 29, 83, 45),
(200, 30, 83, 46),
(201, 31, 83, 47),
(202, 32, 76, 48),
(203, 32, 77, 48),
(204, 32, 78, 48),
(205, 32, 79, 48),
(206, 32, 80, 48),
(207, 32, 81, 48),
(208, 32, 82, 48),
(209, 32, 83, 48),
(210, 27, 84, 17),
(211, 28, 84, 44),
(212, 29, 84, 45),
(213, 30, 84, 46),
(214, 31, 84, 47),
(215, 32, 84, 48);

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
(177, 26, 57, 'Passed', '07:07:18', 8),
(178, 26, 52, 'Failed', '12:22:22', 3),
(179, 26, 61, 'Passed', '12:42:35', 7),
(180, 26, 67, 'Passed', '10:12:35', 7),
(181, 27, 74, 'Passed', '01:26:05', 10),
(182, 28, 79, 'Passed', '11:59:04', 7),
(183, 27, 80, 'Passed', '01:29:21', 9),
(184, 28, 80, 'Failed', '01:31:59', 5),
(185, 28, 80, 'Passed', '01:33:02', 7),
(186, 29, 80, 'Passed', '01:37:42', 10),
(187, 30, 80, 'Passed', '01:40:55', 8),
(188, 27, 81, 'Passed', '10:43:56', 9),
(189, 28, 81, 'Failed', '10:45:24', 6),
(190, 28, 81, 'Passed', '10:46:19', 7),
(191, 29, 81, 'Passed', '10:48:01', 10),
(192, 30, 81, 'Passed', '10:49:51', 8),
(193, 31, 82, 'Passed', '12:28:30', 9),
(194, 27, 84, 'Passed', '01:06:04', 9),
(195, 28, 84, 'Failed', '01:08:00', 5),
(196, 28, 84, 'Failed', '01:08:52', 5),
(197, 28, 84, 'Failed', '01:09:49', 5),
(198, 28, 84, 'Passed', '01:11:54', 8),
(199, 29, 84, 'Failed', '01:13:21', 7),
(200, 29, 84, 'Passed', '01:14:25', 9),
(201, 30, 84, 'Passed', '01:16:01', 8),
(202, 31, 84, 'Passed', '01:17:55', 9),
(203, 32, 84, 'Passed', '01:22:52', 9);

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
(44, 0x6a617661, 'public class HelloWorld {\r\n   public static void main(String[] args) {\r\n      System.out.println(\"Hello, World!\");\r\n   }\r\n}', 191),
(45, 0x4a617661, 'String myString = \"Hello, world!\";\r\nString myOtherString = \'H\';', 196),
(46, 0x6a617661, '// concatenate two strings\r\nString greeting = \"Hello\";\r\nString name = \"Alice\";\r\nString message = greeting + \", \" + name + \"!\";\r\n\r\n// get the length of a string\r\nint length = message.length();\r\n\r\n// get a substring\r\nString substring = message.substring(0, 5);\r\n\r\n// convert a string to uppercase\r\nString uppercase = message.toUpperCase();\r\n\r\n// convert a string to lowercase\r\nString lowercase = message.toLowerCase();\r\n', 197),
(47, 0x6a617661, 'public class StringDemo {\r\n    public static void main(String[] args) {\r\n        String greeting = \"Hello\";\r\n        String name = \"Alice\";\r\n        String message = greeting + \", \" + name + \"!\";\r\n        System.out.println(message);\r\n        \r\n        int length = message.length();\r\n        System.out.println(\"The length of the message is \" + length);\r\n        \r\n        String substring = message.substring(0, 5);\r\n        System.out.println(\"The first five characters are \" + substring);\r\n        \r\n        String uppercase = message.toUpperCase();\r\n        System.out.println(\"The message in uppercase is \" + uppercase);\r\n        \r\n        String lowercase = message.toLowerCase();\r\n        System.out.println(\"The message in lowercase is \" + lowercase);\r\n    }\r\n}\r\n', 198),
(48, '', 'Hello, Alice!\r\nThe length of the message is 13\r\nThe first five characters are Hello\r\nThe message in uppercase is HELLO, ALICE!\r\nThe message in lowercase is hello, alice!\r\n', 199),
(49, 0x6a617661, 'int age;\r\n', 202),
(50, 0x6a617661, 'int age = 25;\r\n', 203),
(51, 0x6a617661, 'int age;\r\nage = 25;\r\n', 204),
(52, 0x6a617661, 'public class VariablesDemo {\r\n    public static void main(String[] args) {\r\n        int age = 25;\r\n        double weight = 68.5;\r\n        boolean isStudent = true;\r\n        char initial = \'J\';\r\n        \r\n        System.out.println(\"Age: \" + age);\r\n        System.out.println(\"Weight: \" + weight);\r\n        System.out.println(\"Is student? \" + isStudent);\r\n        System.out.println(\"Initial: \" + initial);\r\n    }\r\n}\r\n', 206),
(53, 0x6a617661, 'Age: 25\r\nWeight: 68.5\r\nIs student? true\r\nInitial: J\r\n', 207),
(54, 0x6a617661, 'int: holds integer values\r\ndouble: holds floating-point values\r\nboolean: holds true or false values\r\nchar: holds a single character ', 205),
(55, 0x6a617661, 'String myString;\r\n', 195),
(56, '', 'boolean: holds true or false values\r\nbyte: holds integer values from -128 to 127\r\nshort: holds integer values from -32,768 to 32,767\r\nint: holds integer values from -2^31 to 2^31-1\r\nlong: holds integer values from -2^63 to 2^63-1\r\nfloat: holds floating-point values with a range of approximately 1.4 x 10^-45 to 3.4 x 10^38\r\ndouble: holds floating-point values with a range of approximately 4.9 x 10^-324 to 1.8 x 10^308\r\nchar: holds a single character', 211),
(57, '', 'String: holds a sequence of characters\r\nArrays: holds a collection of values of the same data type\r\nClasses: holds an object that is an instance of a class', 212),
(58, 0x6a617661, 'public class DataTypesDemo {\r\n    public static void main(String[] args) {\r\n        boolean isTrue = true;\r\n        byte smallNumber = 127;\r\n        short mediumNumber = 32767;\r\n        int largeNumber = 2147483647;\r\n        long hugeNumber = 9223372036854775807L;\r\n        float pi = 3.14159f;\r\n        double e = 2.71828;\r\n        char initial = \'J\';\r\n        String name = \"John\";\r\n        int[] numbers = {1, 2, 3, 4, 5};\r\n        \r\n        System.out.println(\"Boolean: \" + isTrue);\r\n        System.out.println(\"Byte: \" + smallNumber);\r\n        System.out.println(\"Short: \" + mediumNumber);\r\n        System.out.println(\"Int: \" + largeNumber);\r\n        System.out.println(\"Long: \" + hugeNumber);\r\n        System.out.println(\"Float: \" + pi);\r\n        System.out.println(\"Double: \" + e);\r\n        System.out.println(\"Char: \" + initial);\r\n        System.out.println(\"String: \" + name);\r\n        System.out.println(\"Array: \" + numbers[2]);\r\n    }\r\n}\r\n', 213),
(59, 0x6a617661, 'public class ArithmeticOperatorsDemo {\r\n    public static void main(String[] args) {\r\n        int num1 = 10;\r\n        int num2 = 3;\r\n        \r\n        int sum = num1 + num2; // addition\r\n        int difference = num1 - num2; // subtraction\r\n        int product = num1 * num2; // multiplication\r\n        int quotient = num1 / num2; // division\r\n        int remainder = num1 % num2; // modulus\r\n        \r\n        System.out.println(\"Sum: \" + sum);\r\n        System.out.println(\"Difference: \" + difference);\r\n        System.out.println(\"Product: \" + product);\r\n        System.out.println(\"Quotient: \" + quotient);\r\n        System.out.println(\"Remainder: \" + remainder);\r\n    }\r\n}\r\n', 217),
(60, 0x6a617661, 'public class ConditionalStatementsDemo {\r\n    public static void main(String[] args) {\r\n        int number = 5;\r\n        \r\n        if (number > 0) {\r\n            System.out.println(\"Number is positive\");\r\n        } else {\r\n            System.out.println(\"Number is not positive\");\r\n        }\r\n    }\r\n}\r\n', 218),
(61, 0x6a617661, 'public class ConditionalStatementsDemo {\r\n    public static void main(String[] args) {\r\n        int dayOfWeek = 2;\r\n        \r\n        switch (dayOfWeek) {\r\n            case 1:\r\n                System.out.println(\"Monday\");\r\n                break;\r\n            case 2:\r\n                System.out.println(\"Tuesday\");\r\n                break;\r\n            case 3:\r\n                System.out.println(\"Wednesday\");\r\n                break;\r\n            case 4:\r\n                System.out.println(\"Thursday\");\r\n                break;\r\n            case 5:\r\n                System.out.println(\"Friday\");\r\n                break;\r\n            default:\r\n                System.out.println(\"Invalid day\");\r\n        }\r\n    }\r\n}\r\n', 220),
(62, '', 'import java.util.Scanner;\r\n\r\npublic class UserInputDemo {\r\n    public static void main(String[] args) {\r\n        Scanner scanner = new Scanner(System.in);\r\n        \r\n        System.out.print(\"Enter your name: \");\r\n        String name = scanner.nextLine();\r\n        \r\n        System.out.print(\"Enter your age: \");\r\n        int age = scanner.nextInt();\r\n        \r\n        System.out.println(\"Your name is \" + name + \" and your age is \" + age);\r\n        \r\n        scanner.close();\r\n    }\r\n}\r\n', 222),
(63, 0x6a617661, 'for (initialization; condition; increment/decrement) {\r\n    // code to be executed repeatedly\r\n}\r\n', 225),
(64, 0x6a617661, 'for (int i = 1; i <= 5; i++) {\r\n    System.out.println(i);\r\n}\r\n', 226),
(65, 0x6a617661, 'while (condition) {\r\n    // code to be executed repeatedly\r\n}\r\n', 229),
(66, 0x6a617661, 'int i = 1;\r\nwhile (i <= 5) {\r\n    System.out.println(i);\r\n    i++;\r\n}\r\n', 230),
(67, 0x6a617661, 'do {\r\n    // code to be executed repeatedly\r\n} while (condition);\r\n', 232),
(68, 0x6a617661, 'import java.util.Scanner;\r\n\r\npublic class DoWhileLoopExample {\r\n    public static void main(String[] args) {\r\n        Scanner input = new Scanner(System.in);\r\n        int number;\r\n\r\n        do {\r\n            System.out.print(\"Enter a positive integer: \");\r\n            number = input.nextInt();\r\n        } while (number <= 0);\r\n\r\n        System.out.println(\"You entered: \" + number);\r\n    }\r\n}\r\n', 233),
(69, 0x6a617661, 'public class MethodDemo {\r\n    public static void main(String[] args) {\r\n        int result = addNumbers(5, 10);\r\n        System.out.println(\"The result is \" + result);\r\n    }\r\n    \r\n    public static int addNumbers(int a, int b) {\r\n        int sum = a + b;\r\n        return sum;\r\n    }\r\n}\r\n', 234),
(70, 0x6a617661, 'public class CallStackDemo {\r\n    public static void main(String[] args) {\r\n        int result = addNumbers(5, 10);\r\n        System.out.println(\"The result is \" + result);\r\n    }\r\n    \r\n    public static int addNumbers(int a, int b) {\r\n        int sum = a + b;\r\n        int result = multiplyNumbers(sum, 2);\r\n        return result;\r\n    }\r\n    \r\n    public static int multiplyNumbers(int x, int y) {\r\n        int product = x * y;\r\n        return product;\r\n    }\r\n}\r\n', 235),
(71, 0x6a617661, 'public class OverloadDemo {\r\n    public static void main(String[] args) {\r\n        System.out.println(add(1, 2));\r\n        System.out.println(add(1.5, 2.5));\r\n        System.out.println(add(\"Hello\", \"World\"));\r\n    }\r\n    \r\n    public static int add(int a, int b) {\r\n        return a + b;\r\n    }\r\n    \r\n    public static double add(double a, double b) {\r\n        return a + b;\r\n    }\r\n    \r\n    public static String add(String a, String b) {\r\n        return a + \" \" + b;\r\n    }\r\n}\r\n', 236),
(72, 0x6a617661, 'int[] myArray;\r\nmyArray = new int[5];\r\n', 239),
(73, 0x6a617661, 'int[] myArray = new int[5];\r\n', 240),
(74, 0x6a617661, 'int[] myArray = {1, 2, 3, 4, 5};\r\n', 241),
(75, 0x6a617661, 'String[] myStrings = {\"Hello\", \"World\", \"Java\"};\r\n', 242),
(76, 0x6a617661, 'public static void printArray(int[] arr) {\r\n    for (int i = 0; i < arr.length; i++) {\r\n        System.out.println(arr[i]);\r\n    }\r\n}\r\n', 243),
(77, 0x6a617661, 'int[] myArray = {1, 2, 3, 4, 5};\r\nprintArray(myArray);\r\n', 244),
(78, 0x6a617661, 'public static void setArrayElementToZero(int[] arr, int index) {\r\n    arr[index] = 0;\r\n}\r\n\r\nint[] myArray = {1, 2, 3, 4, 5};\r\nsetArrayElementToZero(myArray, 2);\r\nSystem.out.println(Arrays.toString(myArray)); // prints [1, 2, 0, 4, 5]\r\n', 245),
(79, 0x6a617661, 'int[][] myArray = {\r\n    {1, 2, 3},\r\n    {4, 5, 6},\r\n    {7, 8, 9}\r\n};\r\n', 246),
(80, '', 'int x = myArray[1][2]; // x is now 6\r\n', 247),
(81, 0x6a617661, 'for (int i = 0; i < myArray.length; i++) {\r\n    for (int j = 0; j < myArray[i].length; j++) {\r\n        System.out.print(myArray[i][j] + \" \");\r\n    }\r\n    System.out.println();\r\n}\r\n', 248),
(82, 0x6a617661, 'int[][][] myArray = {\r\n    {{1, 2}, {3, 4}},\r\n    {{5, 6}, {7, 8}}\r\n};\r\n', 249),
(84, 0x6a617661, 'int x = myArray[1][0][1]; // x is now 6\r\n', 250);

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
(76, 'a', 'a', 'a'),
(77, 'w', 'w', 'w'),
(78, 'e', 'e', 'e'),
(79, 'q', 'q', 'q'),
(80, 'r', 'r', 'r'),
(81, 't', 't', 't'),
(82, 'y', 'y', 'y'),
(83, 'u', 'u', 'u'),
(84, 'i', 'i', 'i');

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
(61, 1, 76),
(62, 1, 77),
(63, 1, 78),
(64, 1, 79),
(65, 1, 80),
(66, 1, 81),
(67, 1, 82),
(68, 1, 83),
(69, 1, 84);

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
(181, '', '', 'VideoconditionalStatements.mp4', '', 235),
(188, '', '', 'Introduction (1).mp4', '', 219),
(189, '\r\nProgramming languages translate your commands into machine code\r\nto make it easier for your computer to understand you.\r\nThink of it as an interpreter between you and a person speaking a foreign\r\nlanguage\r\n', '', '', 'question.png', 220),
(190, 'Programming languages are used to write programs or sets of instructions that a computer can understand and execute. However, computers do not understand human language directly. Instead, computers work on machine code, which is a low-level language that is difficult for humans to understand and use.', 'That is where programming languages come in - they act as intermediaries between humans and machines. When you write a program in a programming language, it is translated into machine code that can be executed by the computer. This process of translation is done by a software called a compiler or interpreter.', '', '', 220),
(191, 'Think of it like speaking to someone who does not understand your language. You would need an interpreter to communicate with them. Similarly, programming languages act as interpreters between humans and computers. \r\n\r\nFor example, consider the following code snippet written in Java:  ', 'When you write this program, it is written in Java programming language. However, the computer cannot execute this code directly. Instead, it needs to be translated into machine code that the computer can understand. This is done by a Java compiler that translates the Java code into bytecode, which is then executed by the Java Virtual Machine (JVM) on the computer.', '', '', 220),
(193, 'So, programming languages are essential for writing programs that can be executed by computers. They make it easier for humans to write code by translating it into machine code that the computer can understand and execute.', '', '', '', 220),
(194, '', '', 'Intro-Java (3).mp4', '', 221),
(195, 'In Java, a string is a sequence of characters. Strings are one of the most commonly used data types, and are used to represent text.\r\n\r\nTo declare a string variable in Java, you use the keyword \"String\" followed by the name of the variable: ', ' ', '', '', 222),
(196, 'To initialize the string variable with a value, you can use either double quotes (\") or single quotes (\'):', '', '', '', 222),
(197, 'Once you have a string variable, there are many built-in methods that you can use to manipulate the string. Here are a few examples:', '', '', '', 222),
(198, 'Here\'s a simple program that demonstrates some of these string operations:', '', '', '', 222),
(199, 'Output:', '', '', '', 222),
(200, 'I hope this helps! That\'s all for String in Java', '', '', '', 222),
(201, '', '', 'Variables.mp4', '', 223),
(202, 'In Java, a variable is a container that holds a value of a certain data type. Variables are used to store data that can be used in a program.\r\n\r\nTo declare a variable in Java, you need to specify its data type and give it a name. Here\'s an example:', '', '', '', 224),
(203, 'This declares a variable named \"age\" that holds an integer value. You can initialize the variable with a value at the time of declaration like this:', '', '', '', 224),
(204, 'You can also assign a value to a variable later on in the program:', '', '', '', 224),
(205, 'Here are some common data types in Java:\r\n\r\n', ' ', '', '', 224),
(206, 'Here\'s an example program that uses variables:', '', '', '', 224),
(207, 'Output: ', ' In this example, we declare four variables: \"age\" (an int), \"weight\" (a double), \"isStudent\" (a boolean), and \"initial\" (a char). We initialize each variable with a value and then print out their values using the System.out.println() method.', '', '', 224),
(208, 'I hope this helps! That is all about Variables in Java.', '', '', '', 224),
(209, '', '', 'syntax&erros.mp4', '', 225),
(210, '', '', 'Part II.mp4', '', 226),
(211, 'In Java, data types are used to specify the type of data that a variable can hold. The data type determines the size and format of the variable, as well as the operations that can be performed on it.\r\n\r\nThere are two categories of data types in Java: primitive and reference types.\r\n\r\nPrimitive data types include:', '', '', '', 228),
(212, 'Reference data types include:', '', '', '', 228),
(213, 'Here\'s an example program that uses different data types:', 'Output:\r\n\r\nBoolean: true\r\nByte: 127\r\nShort: 32767\r\nInt: 2147483647\r\nLong: 9223372036854775807\r\nFloat: 3.14159\r\nDouble: 2.71828\r\nChar: J\r\nString: John\r\nArray: 3\r\n', '', '', 228),
(214, 'In the previews example, we declare variables of different data types, including primitive and reference types. We initialize each variable with a value and then print out their values using the System.out.println() method.', '', '', '', 228),
(215, '', '', 'data types.mp4', '', 229),
(216, '', '', 'operators.mp4', '', 230),
(217, 'In Java, arithmetic operators are used to perform mathematical operations on numeric data types. The arithmetic operators include addition (+), subtraction (-), multiplication (*), division (/), and modulus (%).\r\n\r\nHere\'s an example program that uses arithmetic operators: ', ' Output:\r\n\r\nSum: 13\r\nDifference: 7\r\nProduct: 30\r\nQuotient: 3\r\nRemainder: 1\r\n\r\nIn this example, we declare two variables of type int and initialize them with values. We then perform arithmetic operations using the arithmetic operators and store the results in different variables. Finally, we print out the results using the System.out.println() method.\r\n\r\nNote that division between two integers can result in a truncated value if the result is not an integer. In the example above, the quotient is stored in an integer variable and the fractional part is truncated. If you want to get a result with a fractional part, you can use a floating-point data type like float or double.', '', '', 231),
(218, 'In Java, conditional statements are used to execute different code blocks based on a condition. There are two types of conditional statements: if-else statements and switch statements.\r\n\r\nAn if-else statement is used when there are only two possible outcomes based on a condition. The code block inside the if statement is executed if the condition is true, otherwise, the code block inside the else statement is executed.\r\n\r\nHere\'s an example program that uses if-else statements: ', 'Output:\r\nNumber is positive\r\n', '', '', 236),
(219, 'In the previous example, we declare a variable of type int and initialize it with a value. We then use an if-else statement to check if the value of the variable is greater than 0. If the condition is true, we print out a message saying that the number is positive. Otherwise, we print out a message saying that the number is not positive.', '', '', '', 236),
(220, 'A switch statement is used when there are multiple possible outcomes based on a condition. The switch statement evaluates the value of an expression and executes the code block associated with the matching case.\r\n\r\nHere\'s an example program that uses a switch statement: ', 'Output:\r\n\r\nTuesday\r\n\r\n\r\nIn this example, we declare a variable of type int and initialize it with a value. We then use a switch statement to check the value of the variable and print out the corresponding day of the week. If the value does not match any of the cases, we print out a message saying that it is an invalid day.\r\n\r\n\r\n', '', '', 236),
(221, '', '', 'Scanner.mp4', '', 237),
(222, 'In Java, you can get user input using the Scanner class. The Scanner class provides various methods for reading different types of input from the user, such as integers, floating-point numbers, and strings.\r\n\r\nHere\'s an example program that uses the Scanner class to get user input ', 'In this program, we first import the Scanner class. We then create a new Scanner object and pass the System.in stream to it, which represents the standard input stream (i.e., the keyboard).\r\n\r\nWe then prompt the user to enter their name using the System.out.print() method and read the input using the scanner.nextLine() method, which reads a line of text from the input.\r\n\r\nNext, we prompt the user to enter their age using the System.out.print() method and read the input using the scanner.nextInt() method, which reads an integer from the input.', '', '', 238),
(223, 'Finally, we print out the user\'s name and age using the System.out.println() method, and close the Scanner object using the scanner.close() method.\r\n\r\nWhen you run this program, it will prompt the user to enter their name and age, and then print out the input in a formatted string.', '', '', '', 238),
(224, '', '', 'ForloopRepetition.mp4', '', 242),
(225, 'In Java, a for loop is a control flow statement that allows you to repeatedly execute a block of code. The for loop consists of three parts:\r\n\r\n1. Initialization: In this part, you initialize the loop counter variable to some value.\r\n\r\n2. Condition: In this part, you specify a condition that must be true for the loop to continue executing.\r\n\r\n3. Increment/Decrement: In this part, you specify how the loop counter variable should be changed with each iteration.\r\n\r\nThe general syntax of a for loop in Java is as follows:', '', '', '', 243),
(226, 'Here is a simple example of a for loop that prints the numbers 1 to 5: ', 'Let\'s break down the parts of this for loop:\r\n\r\n1. Initialization: int i = 1 initializes the loop counter variable i to 1.\r\n\r\n2. Condition: i <= 5 specifies that the loop should continue executing as long as i is less than or equal to 5.\r\n\r\n3. Increment/Decrement: i++ specifies that i should be incremented by 1 with each iteration of the loop.\r\n\r\nThe output of this code would be:\r\n1\r\n2\r\n3\r\n4\r\n5', '', '', 243),
(227, 'So, each time the loop runs, the value of i is printed to the console, and then incremented by 1. This continues until i is greater than 5, at which point the loop terminates.\r\n\r\nI hope this explanation and example helps you better understand for loops in Java!', '', '', '', 243),
(228, '', '', 'While Loops.mp4', '', 244),
(229, 'A while loop is a control flow statement that allows you to repeatedly execute a block of code as long as a specified condition is true. The while loop consists of a single part:\r\n\r\nCondition: In this part, you specify a condition that must be true for the loop to continue executing.\r\nThe general syntax of a while loop in Java is as follows:', '', '', '', 245),
(230, 'Here is a simple example of a while loop that prints the numbers 1 to 5: ', ' Let\'s break down the parts of this while loop:\r\n\r\nCondition: i <= 5 specifies that the loop should continue executing as long as i is less than or equal to 5.\r\n\r\nThe output of this code would be:\r\n1\r\n2\r\n3\r\n4\r\n5\r\n\r\n\r\n', '', '', 245),
(231, 'So, each time the loop runs, the value of i is printed to the console, and then incremented by 1. This continues until i is greater than 5, at which point the loop terminates.\r\n\r\nIt\'s worth noting that while loops are typically used when you don\'t know the number of iterations that will be needed ahead of time, whereas for loops are used when you do know the number of iterations.', '', '', '', 245),
(232, 'A do-while loop is similar to a while loop, except that the condition is checked at the end of the loop instead of the beginning. This means that the loop will always execute at least once, regardless of whether the condition is initially true or false.\r\n\r\nThe general syntax of a do-while loop in Java is as follows:', '', '', '', 246),
(233, 'Here is a simple example of a do-while loop that asks the user to enter a positive integer: ', ' Let\'s break down the parts of this do-while loop:\r\n\r\nCode block: System.out.print(\"Enter a positive integer: \"); number = input.nextInt(); asks the user to enter a positive integer and reads the input value.\r\n\r\nCondition: number <= 0 specifies that the loop should continue executing as long as number is less than or equal to 0.\r\n\r\nThe output of this code would be:\r\nEnter a positive integer: -5\r\nEnter a positive integer: 0\r\nEnter a positive integer: 10\r\nYou entered: 10\r\n\r\n\r\nSo, each time the loop runs, we ask the user to enter a positive integer and read the input value. We then check if the input value is less than or equal to 0. If it is, we continue executing the loop and ask the user to enter a new value. If the input value is greater than 0, we exit the loop and print the input value.', '', '', 246),
(234, 'Defining a method in Java involves specifying the method\'s name, return type, and parameters (if any). Here\'s an example of how to define a method in Java:  ', 'In this example, we define a method called addNumbers that takes two parameters of type int and returns their sum as an int.\r\n\r\nThe method starts with the access modifier public, which means the method can be accessed from outside the class. The keyword static means the method belongs to the class itself, rather than any particular instance of the class.\r\n\r\nThe return type of the method is specified as int, which means the method will return an integer value. The method\'s name is addNumbers.\r\n\r\nInside the method, we declare a local variable called sum and assign it the value of a + b. We then use the return statement to return the value of sum.\r\n\r\nIn the main method, we call the addNumbers method and pass in two integer values 5 and 10. We then assign the result to a variable called result and print out the value using the System.out.println() method.\r\n\r\nWhen you run this program, it will print out the message \"The result is 15\" to the console. ', '', 'hello (1).png', 249),
(235, 'the call stack is a data structure that keeps track of the order in which methods are called during program execution. Whenever a method is called, a new frame is pushed onto the top of the call stack. When the method completes, its frame is popped off the top of the stack and control returns to the method that called it.\r\n\r\nHere\'s an example program that demonstrates how the call stack works in Java: ', ' In this program, we define three methods: main, addNumbers, and multiplyNumbers.\r\n\r\nWhen the program starts, the main method is called, and a new frame is pushed onto the call stack. The main method then calls the addNumbers method, and a new frame is pushed onto the stack.\r\n\r\nInside the addNumbers method, we declare two local variables sum and result, and assign them the values a + b and multiplyNumbers(sum, 2) respectively. The multiplyNumbers method is called, and a new frame is pushed onto the top of the stack.\r\n\r\nInside the multiplyNumbers method, we declare a local variable product and assign it the value x * y. We then use the return statement to return the value of product to the addNumbers method.\r\n\r\nOnce the multiplyNumbers method completes, its frame is popped off the top of the stack, and control returns to the addNumbers method. The value returned by multiplyNumbers is assigned to the result variable, and the addNumbers method completes by returning result to the main method.\r\n\r\nWhen the main method receives the value of result, it assigns it to a variable called result and prints it out to the console using the System.out.println() method. Once the main method completes, its frame is popped off the top of the stack, and the program terminates.', '', '', 250),
(236, 'In Java, you can define multiple methods with the same name in a single class. This is known as method overloading. Overloading allows you to define multiple methods with the same name, but with different parameters or argument lists.\r\n\r\nHere\'s an example to help illustrate how method overloading works in Java:', 'In this program, we define three versions of the add method: one that takes two int parameters, one that takes two double parameters, and one that takes two String parameters. Each of these methods returns a value that corresponds to the sum or concatenation of the two parameters.\r\n\r\nIn the main method, we call each version of the add method, passing in different parameter types. Because each method has a different parameter list, the Java compiler can distinguish between them and call the appropriate method based on the types of the arguments we pass in.\r\n\r\nBy overloading methods in this way, we can write code that is more concise and easier to read. We can also provide different versions of the same method that are tailored to different types of input, allowing us to write more flexible and reusable code.', '', '', 251),
(237, '', '', 'Video-Methods.mp4', '', 248),
(238, '', '', 'Welcome (1).mp4', '', 253),
(239, 'In Java, an array is a collection of elements of the same data type. We declare an array variable by specifying the type of the elements in the array, followed by square brackets [] and a variable name.\r\n\r\nTo create an array in Java, we use the new keyword, followed by the type of the elements in the array, and the number of elements we want to allocate in the array.\r\n\r\nHere\'s an example of declaring and creating an array of integers in Java: ', ' In this example, we declare an integer array variable called myArray. We then use the new keyword to allocate memory for an array of 5 integers. The elements in the array are initialized to 0 by default.', '', '', 254),
(240, 'We can also declare and create an array in a single statement, like this: ', ' This is a more concise way of creating an array, and it\'s the preferred way of creating arrays in most cases.\r\n\r\nWe can initialize the elements in an array using an array initializer. An array initializer is a comma-separated list of values enclosed in curly braces {}.', '', '', 254),
(241, 'Here\'s an example of initializing an array of integers using an array initializer:', 'In this example, we declare and create an array of integers called myArray, and we initialize its elements to the values 1, 2, 3, 4, and 5.', '', '', 254),
(242, 'We can also create arrays of other data types, such as strings, booleans, or objects. Here\'s an example of creating an array of strings using an array initializer:', 'In this example, we declare and create an array of strings called myStrings, and we initialize its elements to the strings \"Hello\", \"World\", and \"Java\".\r\n\r\nArrays are a powerful and flexible tool in Java, and they\'re used extensively in Java programming to store and manipulate collections of data.', '', '', 254),
(243, 'n Java, we can pass arrays to a method just like any other variable. When we pass an array to a method, we\'re passing a reference to the array. This means that any changes made to the array inside the method will be reflected in the original array outside the method.\r\n\r\nHere\'s an example of passing an array of integers to a method in Java:', 'In this example, we define a method called printArray that takes an array of integers as a parameter. Inside the method, we loop through the elements of the array and print them to the console.', '', '', 255),
(244, 'To call the printArray method and pass an array of integers to it, we would do something like this:', 'In this example, we declare and create an array of integers called myArray, and we initialize its elements to the values 1, 2, 3, 4, and 5. We then call the printArray method and pass myArray as an argument.\r\n\r\nWhen the printArray method is called, a reference to myArray is passed to the method. Inside the method, we use the arr parameter to refer to the array. We loop through the elements of arr and print them to the console.', '', '', 255),
(245, 'Since we\'re passing a reference to the array to the printArray method, any changes made to the array inside the method will be reflected in the original array outside the method. For example, if we modify an element of the array inside the method, the change will be visible outside the method:', 'In this example, we define a method called setArrayElementToZero that takes an array of integers and an index as parameters. Inside the method, we set the element at the specified index to 0.\r\n\r\nWe then declare and create an array of integers called myArray and initialize its elements to the values 1, 2, 3, 4, and 5. We call the setArrayElementToZero method and pass myArray and the index 2 as arguments.\r\n\r\nInside the setArrayElementToZero method, a reference to myArray is passed to the method. We set the element at index 2 to 0. Since we\'re modifying the original array inside the method, the change is visible outside the method when we print the array to the console.', '', '', 255),
(246, 'In Java, a multidimensional array is an array of arrays. We can think of a two-dimensional array as a table or grid, where each element in the array represents a cell in the table.\r\n\r\nHere\'s an example of a two-dimensional array in Java:', 'In this example, we declare and create a two-dimensional array called myArray. The first set of curly braces represents the rows of the array, and the second set of curly braces represents the columns. The elements of the array are initialized to the values 1 through 9.', '', '', 256),
(247, 'To access an element of a two-dimensional array, we use two sets of square brackets, one for the row and one for the column:', 'In this example, we access the element at row 1, column 2 of myArray, which has the value 6.', '', '', 256),
(248, 'We can also loop through the elements of a two-dimensional array using nested loops:', 'In this example, we loop through the rows of myArray using the variable i, and we loop through the columns of each row using the variable j. We print each element of the array to the console, followed by a space. We then print a newline character to move to the next row of the array.', '', '', 256),
(249, 'We can also create arrays with more than two dimensions in Java. For example, we can create a three-dimensional array like this:', 'In this example, we declare and create a three-dimensional array called myArray. The first set of curly braces represents the layers of the array, the second set of curly braces represents the rows, and the third set of curly braces represents the columns. The elements of the array are initialized to the values 1 through 8.', '', '', 256),
(250, 'To access an element of a three-dimensional array, we use three sets of square brackets, one for each dimension:', 'In this example, we access the element at layer 1, row 0, column 1 of myArray, which has the value 6.', '', '', 256);

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
  MODIFY `choice_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;

--
-- AUTO_INCREMENT for table `tbllessons`
--
ALTER TABLE `tbllessons`
  MODIFY `lesson_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `tblmodules`
--
ALTER TABLE `tblmodules`
  MODIFY `modules_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tblmyclass`
--
ALTER TABLE `tblmyclass`
  MODIFY `myclassId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=414;

--
-- AUTO_INCREMENT for table `tblmylessons`
--
ALTER TABLE `tblmylessons`
  MODIFY `myLessons_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2087;

--
-- AUTO_INCREMENT for table `tblquestions`
--
ALTER TABLE `tblquestions`
  MODIFY `question_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `tblquiz`
--
ALTER TABLE `tblquiz`
  MODIFY `quiz_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tblquizzes`
--
ALTER TABLE `tblquizzes`
  MODIFY `quizzes_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `result_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `tblsnippets`
--
ALTER TABLE `tblsnippets`
  MODIFY `snippets_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `student_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tblstudentlang`
--
ALTER TABLE `tblstudentlang`
  MODIFY `class_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tblsublessons`
--
ALTER TABLE `tblsublessons`
  MODIFY `sublesson_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

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
