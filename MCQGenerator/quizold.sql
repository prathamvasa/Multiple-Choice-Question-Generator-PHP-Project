-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2014 at 12:50 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quiz`
--
CREATE DATABASE IF NOT EXISTS `quiz` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quiz`;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_master`
--

CREATE TABLE IF NOT EXISTS `faculty_master` (
  `Faculty_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Faculty_Name` varchar(20) NOT NULL,
  `Faculty_Email` varchar(20) NOT NULL,
  `Faculty_Mobile` varchar(10) NOT NULL,
  `Faculty_User` varchar(20) NOT NULL,
  `Faculty_Password` varchar(20) NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`Faculty_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `faculty_master`
--

INSERT INTO `faculty_master` (`Faculty_Id`, `Faculty_Name`, `Faculty_Email`, `Faculty_Mobile`, `Faculty_User`, `Faculty_Password`, `Status`) VALUES
(1, 'Utsav', 'utsav.agra@gmail.com', '9623443265', 'utsav.a', 'google', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `question_master`
--

CREATE TABLE IF NOT EXISTS `question_master` (
  `Question_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Quiz_Id` int(11) NOT NULL,
  `Semester` varchar(10) NOT NULL,
  `Subject_Id` int(11) NOT NULL,
  `Question` varchar(200) NOT NULL,
  `Option1` varchar(100) NOT NULL,
  `Option2` varchar(100) NOT NULL,
  `Option3` varchar(100) NOT NULL,
  `Option4` varchar(100) NOT NULL,
  `Answer` varchar(100) NOT NULL,
  PRIMARY KEY (`Question_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `question_master`
--

INSERT INTO `question_master` (`Question_Id`, `Quiz_Id`, `Semester`, `Subject_Id`, `Question`, `Option1`, `Option2`, `Option3`, `Option4`, `Answer`) VALUES
(12, 1, '1', 1, '3+2', '4', '5', '6', '7', '5'),
(13, 1, '1', 1, '8+7', '13', '15', '17', '16', '15'),
(14, 1, '1', 1, '9+8', '18', '19', '17', '16', '17'),
(15, 2, '1', 1, '44+87', '131', '121', '130', '120', '131'),
(16, 2, '1', 1, '5*2', '15', '10', '20', '5', '10'),
(17, 2, '1', 1, '12*5', '50', '60', '70', '45', '60'),
(18, 3, '1', 1, '12*(5+8)', '165', '156', '145', '154', '156'),
(19, 3, '1', 1, '(9*6)/(3+2)', '10.8', '11.8', '9.8', '12.8', '10.8'),
(20, 3, '1', 1, '57*92', '5234', '5244', '5254', '5264', '5244');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_category`
--

CREATE TABLE IF NOT EXISTS `quiz_category` (
  `Quiz_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Quiz_Name` varchar(20) NOT NULL,
  `Quiz_level` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Quiz_Id`,`Quiz_level`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `quiz_category`
--

INSERT INTO `quiz_category` (`Quiz_Id`, `Quiz_Name`, `Quiz_level`) VALUES
(1, 'Level Easy', 1),
(2, 'Level Medium', 2),
(3, 'Level Hard', 3),
(26, 'AAAAAAh AHHH AHHHHHH', 1),
(26, 'AAAAAAh AHHH AHHHHHH', 2),
(26, 'AAAAAAh AHHH AHHHHHH', 3);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_schedule`
--

CREATE TABLE IF NOT EXISTS `quiz_schedule` (
  `Schedule_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Quiz_Id` int(11) NOT NULL,
  `Semester` varchar(10) NOT NULL,
  `Subject_Id` int(11) NOT NULL,
  `QuizDate` date NOT NULL,
  `QuizTime` time NOT NULL,
  PRIMARY KEY (`Schedule_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `quiz_schedule`
--

INSERT INTO `quiz_schedule` (`Schedule_Id`, `Quiz_Id`, `Semester`, `Subject_Id`, `QuizDate`, `QuizTime`) VALUES
(24, 0, '1', 1, '2014-03-31', '12:15:00'),
(25, 0, '1', 1, '2014-03-27', '09:00:00'),
(26, 0, '1', 1, '2014-04-01', '09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `result_master`
--

CREATE TABLE IF NOT EXISTS `result_master` (
  `Result_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Exam_Id` int(11) NOT NULL,
  `Subject_Id` int(11) NOT NULL,
  `Student_Id` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Correct` int(11) NOT NULL,
  `Wrong` int(11) NOT NULL,
  `Result` int(11) NOT NULL,
  PRIMARY KEY (`Result_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `result_master`
--

INSERT INTO `result_master` (`Result_Id`, `Exam_Id`, `Subject_Id`, `Student_Id`, `Total`, `Correct`, `Wrong`, `Result`) VALUES
(23, 0, 1, 1, 0, 0, 0, 0),
(24, 0, 1, 1, 0, 0, 0, 0),
(25, 0, 1, 1, 0, 0, 0, 0),
(26, 0, 1, 1, 0, 0, 0, 0),
(27, 0, 1, 1, 0, 0, 0, 0),
(28, 0, 1, 1, 0, 0, 0, 0),
(29, 0, 1, 1, 0, 0, 0, 0),
(30, 0, 1, 1, 0, 0, 0, 0),
(31, 0, 1, 1, 0, 0, 0, 0),
(32, 0, 1, 1, 3, 3, 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE IF NOT EXISTS `student_registration` (
  `Student_Id` int(11) NOT NULL AUTO_INCREMENT,
  `RollNumber` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Semester` varchar(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Mobile` varchar(10) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `running_avg` float DEFAULT NULL,
  PRIMARY KEY (`Student_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`Student_Id`, `RollNumber`, `Name`, `Semester`, `Email`, `Mobile`, `UserName`, `Password`, `Status`, `running_avg`) VALUES
(1, '1011112', 'Patel Jagruti', '1', 'jagruti@gmail.com', '9898989898', 'jagruti', 'jagruti', 'Active', 4.7677),
(2, '1011120', 'Patel Monika', '1', 'monika@gmail.com', '7878787878', 'monika', 'monika', 'Active', 3.5);

-- --------------------------------------------------------

--
-- Table structure for table `subject_master`
--

CREATE TABLE IF NOT EXISTS `subject_master` (
  `Subject_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Subject_Name` varchar(30) NOT NULL,
  `Semester` varchar(10) NOT NULL,
  PRIMARY KEY (`Subject_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `subject_master`
--

INSERT INTO `subject_master` (`Subject_Id`, `Subject_Name`, `Semester`) VALUES
(1, 'Maths', '1'),
(2, 'English', '1'),
(3, 'Logic', '2'),
(4, 'Science', '2');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE IF NOT EXISTS `user_master` (
  `User_Id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Name` varchar(20) NOT NULL,
  `User_Password` varchar(20) NOT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`User_Id`, `User_Name`, `User_Password`) VALUES
(1, 'admin', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
