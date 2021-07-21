-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2021 at 05:55 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kithu`
--

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `EmployeeId` varchar(6) NOT NULL,
  `LecturerName` varchar(200) NOT NULL,
  `Faculty` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Center` varchar(100) NOT NULL,
  `Building` varchar(100) NOT NULL,
  `Level` int(11) NOT NULL,
  `Rank` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`EmployeeId`, `LecturerName`, `Faculty`, `Department`, `Center`, `Building`, `Level`, `Rank`) VALUES
('E001', 'Nelum Chathuranka', 'Computing', 'IT', 'Malabe', 'A-Block', 3, '3.E001'),
('E002', 'Dilshan De Silva', 'Computing', 'Software', 'Malabe', 'B-Block', 2, '2.E002'),
('E003', 'Gaya Thamali', 'Computing', 'Data Science', 'Malabe', 'C-Block', 2, '2.E003'),
('E006', 'usal', 'Computing', 'Computing', 'Malabe', 'B-Block', 2, '2.E006'),
('E008', 'Nuwan', 'Computing', 'ISE', 'Metro', 'A-Block', 1, '1.E008'),
('E009', 'Sasikka', 'Computing', 'Network', 'Malabe', 'B-Block', 2, '2.E009'),
('E010', 'Archana', 'Computing', 'IT', 'Malabe', 'A-Block', 3, '3.E010');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `Location_Id` int(11) NOT NULL,
  `Building_Name` varchar(50) NOT NULL,
  `Room_Name` varchar(50) NOT NULL,
  `Room_type` varchar(50) NOT NULL,
  `Capacity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`Location_Id`, `Building_Name`, `Room_Name`, `Room_type`, `Capacity`) VALUES
(1, 'A', 'A7', 'LectureHall', 100),
(3, 'A', 'A6', 'LectureHall', 50),
(4, 'A', 'A5', 'Laboratory', 200),
(5, 'B', 'B7', 'Laboratory', 200),
(6, 'C', 'N301', 'LectureHall', 100);

-- --------------------------------------------------------

--
-- Table structure for table `new`
--

CREATE TABLE `new` (
  `SubjectName` varchar(200) NOT NULL,
  `LecturerName` varchar(200) NOT NULL,
  `RoomName` varchar(200) NOT NULL,
  `Id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new`
--

INSERT INTO `new` (`SubjectName`, `LecturerName`, `RoomName`, `Id`) VALUES
('ITPM', 'Archana', 'N301', 1);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `Id` int(11) NOT NULL,
  `Lecturer1Id` varchar(6) NOT NULL,
  `Lecturer2Id` varchar(6) NOT NULL,
  `SubjectCode` varchar(10) NOT NULL,
  `GroupId` varchar(30) NOT NULL,
  `Tag` varchar(10) NOT NULL,
  `Room` int(11) NOT NULL,
  `TotalStudent` int(11) NOT NULL,
  `Duration` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`Id`, `Lecturer1Id`, `Lecturer2Id`, `SubjectCode`, `GroupId`, `Tag`, `Room`, `TotalStudent`, `Duration`) VALUES
(16, 'E006', 'E002', 'IT1022', 'Y3S1.IM.5', '4', 1, 250, 2),
(15, 'E002', 'E005', 'IT1113', 'Y3S2.IT.8', '5', 4, 200, 2),
(13, 'E001', 'E001', 'IT1133', 'Y3S2.IT.8', '3', 1, 250, 1),
(18, 'E002', 'E003', 'IT1133', 'Y1S1.IT.3', '2', 1, 200, 3),
(20, 'E007', 'E008', 'IT5050', 'Y1S1.IT.3', '5', 1, 300, 2),
(21, 'E003', 'E008', 'IT1010', 'Y1S1.IT.3', '2', 1, 300, 2),
(23, 'E001', 'E010', 'IT1010', 'Y1S1.IT.1', '2', 1, 250, 2),
(25, 'E010', 'E009', 'IS2020', 'Y2S2.CSE.11', '4', 1, 350, 2),
(26, 'E010', 'E011', 'IT1113', 'Y3S1.IM.5', '4', 1, 350, 1),
(27, 'E001', 'E011', 'IT1113', 'Y1S1.IT.3', '2', 1, 250, 2),
(29, 'E011', 'E008', 'IT1113', 'Y2S2.CSE.11', '2', 1, 400, 3),
(30, 'E005', 'E002', 'IT1133', 'Y3S1.IM.5', '3', 1, 200, 2),
(31, 'E005', 'E011', 'ISE2020', 'Y1S1.IT.3', '5', 1, 300, 2),
(32, 'E007', 'E009', 'IT5050', 'Y1S1.IT.3', '4', 1, 300, 2),
(33, 'E002', 'E006', 'IT1022', 'Y3S1.IM.5', '3', 1, 250, 2),
(34, 'E005', 'E004', 'IT1010', 'Y1S1.IT.3', '3', 1, 150, 2),
(35, 'E005', 'E004', 'IT1010', 'Y1S1.IT.3', '4', 1, 150, 2),
(36, 'E001', 'E003', 'IT1030', 'Y1S1.IT.1', '3', 6, 200, 2),
(37, 'E001', 'E003', 'IT1030', 'Y1S1.IT.1', '2', 1, 200, 2),
(39, 'E001', 'E003', 'IT1030', 'Y1S1.IT.1', '4', 1, 200, 2),
(40, 'E005', 'E004', 'IT1010', 'Y1S1.IT.3', '3', 1, 150, 2),
(41, 'E011', 'E005', 'ISE2020', 'Y1S1.IT.3', '2', 1, 300, 2),
(42, 'E005', 'E011', 'ISE2020', 'Y1S1.IT.3', '3', 1, 300, 2),
(43, 'E005', 'E011', 'ISE2020', 'Y1S1.IT.3', '4', 1, 300, 2),
(44, 'E001', 'E005', 'IT1010', 'Y1S1.IT.8', '5', 4, 100, 2),
(45, 'E001', 'E005', 'IT1010', 'Y1S1.IT.8', '5', 4, 100, 2);

-- --------------------------------------------------------

--
-- Table structure for table `studentgroub`
--

CREATE TABLE `studentgroub` (
  `Id` int(11) NOT NULL,
  `AcadamicYearSem` varchar(20) NOT NULL,
  `Program` varchar(20) NOT NULL,
  `GroupNo` int(11) NOT NULL,
  `SubGroupNo` int(11) NOT NULL,
  `GroupId` varchar(30) NOT NULL,
  `SubGroupId` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentgroub`
--

INSERT INTO `studentgroub` (`Id`, `AcadamicYearSem`, `Program`, `GroupNo`, `SubGroupNo`, `GroupId`, `SubGroupId`) VALUES
(1, 'Y1S1', 'IT', 1, 1, 'Y1S1.IT.1', 'Y1S1.IT.1.1'),
(3, 'Y1S2', 'CSSE', 1, 2, 'Y1S2.CSSE.1', 'Y1S2.CSSE.1.2'),
(4, 'Y1S1', 'IT', 3, 1, 'Y1S1.IT.3', 'Y1S1.IT.3.1'),
(5, 'Y2S2', 'CSE', 11, 1, 'Y2S2.CSE.11', 'Y2S2.CSE.11.1'),
(6, 'Y3S1', 'IM', 5, 2, 'Y3S1.IM.5', 'Y3S1.IM.5.2'),
(7, 'Y3S2', 'IT', 8, 1, 'Y3S2.IT.8', 'Y3S2.IT.8.1');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SubjectCode` varchar(10) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `OfferedYear` int(11) NOT NULL,
  `OfferedSem` int(11) NOT NULL,
  `LectureHour` int(11) NOT NULL,
  `LabHour` int(11) NOT NULL,
  `TuteHour` int(11) NOT NULL,
  `EvaluationHour` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SubjectCode`, `SubjectName`, `OfferedYear`, `OfferedSem`, `LectureHour`, `LabHour`, `TuteHour`, `EvaluationHour`) VALUES
('IT1113', 'Information System', 1, 1, 2, 1, 1, 3),
('IT1133', 'Software Fundamental', 1, 1, 2, 0, 1, 3),
('IT1010', 'Introduction to Programming', 1, 1, 2, 1, 1, 0),
('IT1030', 'Database System', 3, 1, 2, 2, 2, 1),
('IT1020', 'Programming Application and Framework', 3, 1, 2, 2, 2, 1),
('IT1022', 'OOP', 1, 2, 2, 1, 1, 1),
('IS2020', 'Computer Network', 2, 2, 2, 1, 2, 1),
('ISE2020', 'Information System', 3, 2, 2, 1, 1, 1),
('IT5050', 'NDM', 2, 2, 2, 1, 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`EmployeeId`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`Location_Id`);

--
-- Indexes for table `new`
--
ALTER TABLE `new`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `studentgroub`
--
ALTER TABLE `studentgroub`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SubjectCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `Location_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `studentgroub`
--
ALTER TABLE `studentgroub`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
