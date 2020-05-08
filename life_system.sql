-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 27, 2020 at 03:17 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `life_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `serial` int(20) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `delmode` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`serial`, `username`, `password`, `post_date`, `update_time`, `delmode`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-04-21 23:13:38', '2020-04-21 23:13:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment_experience`
--

CREATE TABLE `comment_experience` (
  `serial` int(20) NOT NULL,
  `rndcode` int(20) NOT NULL,
  `type` enum('SEMINAR','READING','VOLUNTEER','EXCHANGE') NOT NULL,
  `event_id` int(20) NOT NULL,
  `remark` longtext NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `delmode` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comment_request`
--

CREATE TABLE `comment_request` (
  `serial` int(20) NOT NULL,
  `rndcode` int(20) NOT NULL,
  `type` enum('SEMINAR','READING','VOLUNTEER','EXCHANGE') NOT NULL,
  `event_id` int(20) NOT NULL,
  `remark` longtext NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `delmode` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `serial` int(20) NOT NULL,
  `student_id` int(20) NOT NULL,
  `status` enum('PENDING','APPROVE') NOT NULL DEFAULT 'PENDING',
  `result` enum('PENDING','PASS','FAIL') NOT NULL DEFAULT 'PENDING',
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `delmode` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `serial` int(20) NOT NULL,
  `reference` varchar(200) NOT NULL,
  `student_id` int(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `seen` int(1) NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `delmode` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `serial` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `post_by` varchar(200) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `delmode` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `programme`
--

CREATE TABLE `programme` (
  `serial` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `delmode` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programme`
--

INSERT INTO `programme` (`serial`, `name`, `post_date`, `update_time`, `delmode`) VALUES
(1, 'Bachelor in Accounting (Honours)', '2019-02-22 23:02:33', '2019-02-22 23:07:38', 1),
(2, 'Diploma in Accountancy', '2019-02-22 23:04:33', '2019-02-22 23:04:33', 1),
(3, 'Bachelor BA (Hons) in Finance & Investment', '2019-02-22 23:08:52', '2019-02-22 23:08:52', 1),
(4, 'Diploma in Financial Analysis', '2019-02-22 23:09:02', '2019-02-22 23:09:02', 1),
(5, 'Bachelor BA (Hons) in Marketing', '2019-02-22 23:09:15', '2019-02-22 23:09:15', 1),
(6, 'Diploma in Marketing', '2019-02-22 23:09:22', '2019-02-22 23:09:22', 1),
(7, 'Diploma in International Business', '2019-02-22 23:09:33', '2019-02-22 23:09:33', 1),
(8, 'Diploma in Logistics Management', '2019-02-22 23:09:41', '2019-02-22 23:09:41', 1),
(9, 'Bachelor of Business Administration (Honours)', '2019-02-22 23:10:01', '2019-02-22 23:10:01', 1),
(10, 'BBA (Honours) in Human Resource Management', '2019-02-22 23:10:49', '2019-02-22 23:10:49', 1),
(11, 'Diploma in Business Administration', '2019-02-22 23:10:56', '2019-02-22 23:10:56', 1),
(12, 'BBA (Hons) in Tourism Management', '2019-02-22 23:11:19', '2019-02-22 23:11:19', 1),
(13, 'Diploma in Tourism Management', '2019-02-22 23:11:26', '2019-02-22 23:11:26', 1),
(14, 'Diploma in Computer Science', '2019-02-22 23:36:05', '2019-02-22 23:36:05', 1),
(15, 'Bachelor of Information Technology (Hons) in Software Engineering', '2019-02-28 14:21:12', '2019-02-28 14:21:12', 1),
(16, 'Diploma in Information Technology', '2019-02-28 14:22:09', '2019-02-28 14:22:09', 1),
(17, 'Diploma in Computer Science', '2019-02-28 14:22:52', '2019-02-28 14:22:52', 0),
(18, 'Bachelor of Electronic Engineering with Honours', '2019-02-28 14:23:38', '2019-02-28 14:23:38', 1),
(19, 'Diploma in Electrical & Electronic Engineering', '2019-02-28 14:24:19', '2019-02-28 14:24:19', 1),
(20, 'Master of Arts in Chinese Studies', '2019-02-28 14:24:57', '2019-02-28 14:24:57', 0),
(21, 'BA (Hons) in Chinese Studies', '2019-02-28 14:25:18', '2019-02-28 14:25:18', 1),
(22, 'Diploma in Chinese Studies', '2019-02-28 14:25:30', '2019-02-28 14:25:30', 1),
(23, 'BA (Hons) English Language Teaching', '2019-02-28 14:26:34', '2019-02-28 14:26:34', 1),
(24, 'Diploma in English Studies', '2019-02-28 14:26:46', '2019-02-28 14:26:46', 1),
(25, 'BA (Hons) in Malay Studies', '2019-02-28 14:27:16', '2019-02-28 14:27:16', 1),
(26, 'Bachelor of Communication (Hons) (Mass Communication)', '2019-02-28 14:27:57', '2019-02-28 14:27:57', 1),
(27, 'Diploma in Journalism', '2019-02-28 14:28:13', '2019-02-28 14:28:13', 1),
(28, 'Bachelor of Traditional Chinese Medicine (Hons)', '2019-02-28 14:31:00', '2019-02-28 14:31:00', 1),
(29, 'Foundation in Traditional Chinese Medicine', '2019-02-28 14:31:43', '2019-02-28 14:31:43', 0),
(30, 'Bachelor of Psychology (Honours) (MQA/PA5726)', '2019-02-28 14:32:46', '2019-02-28 14:32:46', 1),
(31, 'Bachelor of Early Childhood Education (Hons) (MQA/PA5221)', '2019-02-28 14:33:28', '2019-02-28 14:33:28', 1),
(32, 'Bachelor of Education (Hons) (Information Technology and Multimedia) (MQA/PA8001)', '2019-02-28 14:34:16', '2019-02-28 14:34:16', 1),
(33, 'Bachelor of Education (Hons) (Guidance and Counselling) (MQA/PA8023)', '2019-02-28 14:35:13', '2019-02-28 14:35:13', 1),
(34, 'Diploma in Early Childhood Education (MQA/A4430)', '2019-02-28 14:35:56', '2019-02-28 14:35:56', 1),
(35, 'Professional Diploma in Unreal Engine VR Architecture', '2019-02-28 14:40:58', '2019-02-28 14:40:58', 1),
(36, 'Professional Certificate in Aesthetic Treatments & Body Therapy', '2019-02-28 14:41:44', '2019-02-28 14:41:44', 0),
(37, 'Professional Certificate in Hairdressing & Hair Design', '2019-02-28 14:42:19', '2019-02-28 14:42:19', 0),
(38, 'Professional Certificate in Funeral Business and Management', '2019-02-28 14:42:49', '2019-02-28 14:42:49', 0),
(39, 'Professional Diploma in Postnatal Care', '2019-02-28 14:43:12', '2019-02-28 14:43:12', 0),
(40, 'Foundation in Arts', '2019-02-28 14:49:53', '2019-02-28 14:49:53', 0),
(41, 'Foundation in Science', '2019-02-28 14:50:09', '2019-02-28 14:50:09', 0),
(42, 'Bachelor of Design (Honours) in Computer Graphic Design', '2019-03-12 09:07:30', '2019-03-12 09:07:30', 1),
(43, 'Diploma in Industrial Design', '2019-03-12 09:07:40', '2019-03-12 09:07:40', 1),
(44, 'Diploma in Advertising Design', '2019-03-12 09:08:04', '2019-03-12 09:08:04', 1),
(45, 'Diploma in Multimedia Design', '2019-03-12 09:08:16', '2019-03-12 09:08:16', 1),
(46, 'Diploma in Visual Art', '2019-03-12 09:08:29', '2019-03-12 09:08:29', 1),
(47, 'Executive Diploma in Tourism Management ', '2019-04-09 11:40:10', '2019-04-09 11:40:10', 1),
(48, 'Executive Diploma in Industrial Design', '2019-04-09 11:40:29', '2019-04-09 11:40:29', 1),
(49, 'Executive Diploma in Visual Art', '2019-04-09 11:40:59', '2019-04-09 11:40:59', 1),
(50, 'Executive Diploma in Advertising Design', '2019-04-09 11:41:18', '2019-04-09 11:41:18', 1),
(51, 'Executive Diploma in Multimedia Design', '2019-04-09 11:42:30', '2019-04-09 11:42:30', 1),
(52, 'Executive Diploma in Early Childhood Education', '2019-04-09 11:44:00', '2019-04-09 11:44:00', 1),
(53, 'Executive Diploma in Business Administration', '2019-04-09 11:44:20', '2019-04-09 11:44:20', 1),
(54, 'Executive Diploma in Marketing', '2019-04-09 11:44:37', '2019-04-09 11:44:37', 1),
(55, 'Executive Diploma in Logistics Management', '2019-04-09 11:45:01', '2019-04-09 11:45:01', 1),
(56, 'Executive Diploma in Chinese Studies', '2019-04-09 11:45:19', '2019-04-09 11:45:19', 1),
(57, 'Executive Diploma in Marketing', '2019-04-09 11:46:15', '2019-04-09 11:46:15', 0),
(58, 'Executive Diploma in English', '2019-04-09 11:47:32', '2019-04-09 11:47:32', 1),
(59, 'Executive Diploma in Journalism', '2019-04-09 11:47:47', '2019-04-09 11:47:47', 1),
(60, 'Executive Diploma in Information Technology', '2019-04-09 11:48:03', '2019-04-09 11:48:03', 1),
(61, 'Executive Diploma in Computer Science', '2019-04-09 11:48:17', '2019-04-09 11:48:17', 1),
(62, 'Executive Diploma in Electrical & Electronic Engineering', '2019-04-09 11:48:54', '2019-04-09 11:48:54', 1),
(63, 'Bachelor of Traditional Chinese Medicine (Hons) (3 + 2 Twinning Program )', '2019-05-09 13:39:15', '2019-05-09 13:39:15', 1),
(64, 'Bachelor of Property Management (Honours)', '2019-10-08 13:34:08', '2019-10-08 13:34:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reading`
--

CREATE TABLE `reading` (
  `serial` int(20) NOT NULL,
  `rndcode` int(20) NOT NULL,
  `student_id` int(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `year` varchar(200) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `experience` longtext NOT NULL,
  `status` enum('PENDING','APPROVE','REJECT') NOT NULL DEFAULT 'PENDING',
  `active` int(1) NOT NULL,
  `point` int(20) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `delmode` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reading_request`
--

CREATE TABLE `reading_request` (
  `serial` int(20) NOT NULL,
  `rndcode` int(20) NOT NULL,
  `student_id` int(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `status` enum('PENDING','APPROVE','REJECT') NOT NULL DEFAULT 'PENDING',
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `delmode` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `seminar`
--

CREATE TABLE `seminar` (
  `serial` int(20) NOT NULL,
  `rndcode` int(20) NOT NULL,
  `student_id` int(20) NOT NULL,
  `organizer` varchar(200) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `venue` varchar(255) NOT NULL,
  `bg_speaker` longtext NOT NULL,
  `limited` int(10) NOT NULL,
  `event_date` date NOT NULL,
  `event_start_time` time NOT NULL,
  `event_end_time` time NOT NULL,
  `paid` varchar(200) NOT NULL,
  `public` int(1) NOT NULL,
  `random_code` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` enum('PENDING','APPROVE','REJECT') NOT NULL DEFAULT 'PENDING',
  `point` int(20) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `delmode` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `seminar_attend`
--

CREATE TABLE `seminar_attend` (
  `serial` int(20) NOT NULL,
  `seminar_id` int(20) NOT NULL,
  `student_id` int(20) NOT NULL,
  `attend` int(1) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `delmode` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `seminar_event`
--

CREATE TABLE `seminar_event` (
  `serial` int(20) NOT NULL,
  `rndcode` int(20) NOT NULL,
  `seminar_id` int(20) NOT NULL,
  `student_id` int(20) NOT NULL,
  `experience` longtext NOT NULL,
  `active` int(1) NOT NULL,
  `status` enum('PENDING','APPROVE','REJECT') NOT NULL DEFAULT 'PENDING',
  `point` int(20) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `delmode` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `serial` int(20) NOT NULL,
  `image` varchar(200) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `delmode` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`serial`, `image`, `post_date`, `update_time`, `delmode`) VALUES
(1, 'bgsystem.jpg', '2019-05-31 06:06:06', '2019-06-01 20:22:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `serial` int(200) NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `student_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `batch` varchar(30) CHARACTER SET latin1 NOT NULL,
  `level` enum('DIPLOMA','DEGREE') CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `programme` int(20) NOT NULL,
  `image` varchar(200) CHARACTER SET latin1 NOT NULL,
  `contact` varchar(30) CHARACTER SET latin1 NOT NULL,
  `email` varchar(200) NOT NULL,
  `user_type` int(20) NOT NULL DEFAULT 0,
  `point` int(20) NOT NULL DEFAULT 0,
  `status` enum('PENDING','APPROVE','REJECT') CHARACTER SET latin1 NOT NULL DEFAULT 'PENDING',
  `remark` varchar(200) CHARACTER SET latin1 NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `ipc` varchar(200) CHARACTER SET latin1 NOT NULL,
  `delmode` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_exchange`
--

CREATE TABLE `student_exchange` (
  `serial` int(20) NOT NULL,
  `rndcode` int(20) NOT NULL,
  `student_id` int(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `experience` longtext NOT NULL,
  `file` varchar(200) NOT NULL,
  `status` enum('PENDING','APPROVE','REJECT') NOT NULL DEFAULT 'PENDING',
  `active` int(1) NOT NULL,
  `point` int(20) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `delmode` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `serial` int(20) NOT NULL,
  `student_id` varchar(200) NOT NULL,
  `ip` varchar(200) NOT NULL,
  `login_time` datetime NOT NULL DEFAULT current_timestamp(),
  `logout_time` datetime NOT NULL DEFAULT current_timestamp(),
  `status` enum('IN','OUT') NOT NULL DEFAULT 'IN',
  `delmode` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `serial` int(20) NOT NULL,
  `rndcode` int(20) NOT NULL,
  `student_id` int(20) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 NOT NULL,
  `organizer` varchar(200) CHARACTER SET utf8 NOT NULL,
  `purpose` longtext CHARACTER SET utf8 NOT NULL,
  `background` longtext CHARACTER SET utf8 NOT NULL,
  `event_date` date NOT NULL,
  `event_day` int(20) NOT NULL,
  `event_start_time` time NOT NULL,
  `event_end_time` time NOT NULL,
  `venue` varchar(200) CHARACTER SET utf8 NOT NULL,
  `contact` varchar(200) CHARACTER SET utf8 NOT NULL,
  `limited` int(20) NOT NULL,
  `service_type` varchar(200) CHARACTER SET utf8 NOT NULL,
  `person_in_charge` varchar(200) CHARACTER SET utf8 NOT NULL,
  `pic_contact` varchar(20) CHARACTER SET utf8 NOT NULL,
  `description` longtext CHARACTER SET utf8 NOT NULL,
  `image` varchar(200) CHARACTER SET utf8 NOT NULL,
  `open` int(1) NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('PENDING','APPROVE','REJECT') CHARACTER SET utf8 NOT NULL DEFAULT 'PENDING',
  `point` int(20) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `delmode` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_event`
--

CREATE TABLE `volunteer_event` (
  `serial` int(20) NOT NULL,
  `rndcode` int(20) NOT NULL,
  `volunteer_id` int(20) NOT NULL,
  `student_id` int(20) NOT NULL,
  `experience` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `image_date` date NOT NULL,
  `image_day` int(20) NOT NULL,
  `status` enum('PENDING','APPROVE','REJECT') NOT NULL DEFAULT 'PENDING',
  `active` int(1) NOT NULL,
  `point` int(20) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `delmode` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_report`
--

CREATE TABLE `volunteer_report` (
  `serial` int(20) NOT NULL,
  `rndcode` int(20) NOT NULL,
  `volunteer_id` int(20) NOT NULL,
  `student_id` int(20) NOT NULL,
  `event_date` date NOT NULL,
  `event_start_time` time NOT NULL,
  `event_end_time` time NOT NULL,
  `experience` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image1` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image2` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image3` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image4` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('PENDING','APPROVE','REJECT') CHARACTER SET utf8 NOT NULL DEFAULT 'PENDING',
  `point` int(20) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `delmode` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `comment_experience`
--
ALTER TABLE `comment_experience`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `comment_request`
--
ALTER TABLE `comment_request`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `programme`
--
ALTER TABLE `programme`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `reading`
--
ALTER TABLE `reading`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `reading_request`
--
ALTER TABLE `reading_request`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `seminar_attend`
--
ALTER TABLE `seminar_attend`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `seminar_event`
--
ALTER TABLE `seminar_event`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `student_exchange`
--
ALTER TABLE `student_exchange`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `volunteer_event`
--
ALTER TABLE `volunteer_event`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `volunteer_report`
--
ALTER TABLE `volunteer_report`
  ADD PRIMARY KEY (`serial`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment_experience`
--
ALTER TABLE `comment_experience`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment_request`
--
ALTER TABLE `comment_request`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enroll`
--
ALTER TABLE `enroll`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programme`
--
ALTER TABLE `programme`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `reading`
--
ALTER TABLE `reading`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reading_request`
--
ALTER TABLE `reading_request`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seminar`
--
ALTER TABLE `seminar`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seminar_attend`
--
ALTER TABLE `seminar_attend`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seminar_event`
--
ALTER TABLE `seminar_event`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `serial` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_exchange`
--
ALTER TABLE `student_exchange`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `volunteer_event`
--
ALTER TABLE `volunteer_event`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `volunteer_report`
--
ALTER TABLE `volunteer_report`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
