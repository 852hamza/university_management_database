-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 11, 2022 at 02:56 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sahara_medical_college`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_calendar`
--

CREATE TABLE `academic_calendar` (
  `academic_id` int(10) NOT NULL,
  `degree_id` int(10) DEFAULT NULL,
  `degree_no` int(10) DEFAULT NULL,
  `session_no` int(20) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academic_calendar`
--

INSERT INTO `academic_calendar` (`academic_id`, `degree_id`, `degree_no`, `session_no`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 1, 1, 1, NULL, NULL, NULL, NULL),
(2, 3, 2, 3, NULL, NULL, NULL, NULL),
(3, 1, 1, 3, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assign_student_subject`
--

CREATE TABLE `assign_student_subject` (
  `ss_id` int(20) NOT NULL,
  `sub_id` int(20) DEFAULT NULL,
  `std_id` int(20) DEFAULT NULL,
  `academic_id` int(20) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assign_student_subject`
--

INSERT INTO `assign_student_subject` (`ss_id`, `sub_id`, `std_id`, `academic_id`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 8, 1, 1, 'hamza', '2022-08-29', NULL, NULL),
(2, 7, 2, 1, 'hamza', '2022-08-29', NULL, NULL),
(3, 4, 3, 1, 'hamza', '2022-08-29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assign_teacher_subject`
--

CREATE TABLE `assign_teacher_subject` (
  `assign_id` int(10) NOT NULL,
  `subject_id` int(20) DEFAULT NULL,
  `teacher_id` int(20) DEFAULT NULL,
  `class_id` int(20) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assign_teacher_subject`
--

INSERT INTO `assign_teacher_subject` (`assign_id`, `subject_id`, `teacher_id`, `class_id`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 9, 1, 3, NULL, NULL, NULL, NULL),
(2, 8, 2, 1, NULL, NULL, NULL, NULL),
(3, 6, 3, 3, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_room`
--

CREATE TABLE `class_room` (
  `room_id` int(20) NOT NULL,
  `degree` int(20) DEFAULT NULL,
  `room_name` varchar(20) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class_room`
--

INSERT INTO `class_room` (`room_id`, `degree`, `room_name`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 1, 'bsn_it_lab', NULL, NULL, NULL, NULL),
(2, 4, 'it_lab', NULL, NULL, NULL, NULL),
(3, 5, 'dppt_lab', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_schudle`
--

CREATE TABLE `class_schudle` (
  `schudle_id` int(20) NOT NULL,
  `class_id` int(20) DEFAULT NULL,
  `subject_id` int(20) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `day` varchar(20) DEFAULT NULL,
  `lecture_date` date DEFAULT NULL,
  `class_type` varchar(20) DEFAULT NULL,
  `class_topic` varchar(20) DEFAULT NULL,
  `room_id` int(20) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class_schudle`
--

INSERT INTO `class_schudle` (`schudle_id`, `class_id`, `subject_id`, `start_time`, `end_time`, `day`, `lecture_date`, `class_type`, `class_topic`, `room_id`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 1, 6, '2020-08-25 03:00:00', '2022-08-25 04:30:00', 'monday', '2022-08-25', 'lecture', 'intro to assambly', 1, NULL, NULL, NULL, NULL),
(2, 4, 1, '2020-08-25 03:00:00', '2022-08-25 04:30:00', 'monday', '2022-08-25', 'lecture', 'math logic', 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `degree`
--

CREATE TABLE `degree` (
  `degree_id` int(20) NOT NULL,
  `degree_name` varchar(20) DEFAULT NULL,
  `total_duration` int(10) DEFAULT NULL,
  `total_semester` int(10) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `degree`
--

INSERT INTO `degree` (`degree_id`, `degree_name`, `total_duration`, `total_semester`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'BSCS', 4, 8, NULL, NULL, NULL, NULL),
(3, 'BBA', 4, 8, NULL, NULL, NULL, NULL),
(4, 'BSMATH', 4, 8, NULL, NULL, NULL, NULL),
(5, 'DPT', 5, 10, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `degree_name`
--

CREATE TABLE `degree_name` (
  `degree_no` int(10) NOT NULL,
  `degree_name` int(10) DEFAULT NULL,
  `start_year` date DEFAULT NULL,
  `end_year` date DEFAULT NULL,
  `semester_session` int(20) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `degree_name`
--

INSERT INTO `degree_name` (`degree_no`, `degree_name`, `start_year`, `end_year`, `semester_session`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 1, '2019-09-00', '2023-09-00', 3, NULL, NULL, NULL, NULL),
(2, 1, '2020-09-00', '2024-09-00', 3, NULL, NULL, NULL, NULL),
(3, 1, '2021-09-00', '2025-09-00', 3, NULL, NULL, NULL, NULL),
(4, 3, '2019-09-00', '2023-09-00', 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_no` int(20) NOT NULL,
  `emp_name` varchar(20) DEFAULT NULL,
  `job_type` varchar(20) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `cnic_no` varchar(20) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_no`, `emp_name`, `job_type`, `joining_date`, `cnic_no`, `phone_no`, `address`) VALUES
(1, 'asim', 'teacher', '2022-08-29', '1234567891234', '0', 'narowal');

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `notice_id` int(20) NOT NULL,
  `REFERENCE_no` varchar(20) DEFAULT NULL,
  `notice_type` varchar(20) DEFAULT NULL,
  `notice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `notice_attachment` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`notice_id`, `REFERENCE_no`, `notice_type`, `notice_date`, `due_date`, `notice_attachment`) VALUES
(1, 'bscs', 'fine', '2022-08-31', '2022-09-01', '/home/hamza/Pictures/pic/23.jpg\n'),
(2, 'bscs', 'function-sport', '2022-08-31', '2022-09-01', '/home/hamza/Pictures/pic/24.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `session_1`
--

CREATE TABLE `session_1` (
  `session_id` int(20) NOT NULL,
  `batch_no` int(20) DEFAULT NULL,
  `class_name` varchar(20) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `mid_paper_date` varchar(10) DEFAULT NULL,
  `final_paper_date` varchar(20) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session_1`
--

INSERT INTO `session_1` (`session_id`, `batch_no`, `class_name`, `start_date`, `end_date`, `mid_paper_date`, `final_paper_date`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 1, 'fall_01', '2019-09-00', '2020-03-00', '20191200', '20200225', NULL, NULL, NULL, NULL),
(2, 1, 'spring_02', '2020-04-00', '2020-10-00', '20200700', '20200925', NULL, NULL, NULL, NULL),
(3, 1, 'fall_03', '2020-10-00', '2020-04-00', '20200100', '20200325', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(10) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `cnic` varchar(13) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `student_roll_no` int(10) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `student_status` varchar(20) DEFAULT NULL,
  `degree_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `first_name`, `last_name`, `date_of_birth`, `cnic`, `phone_no`, `email`, `address`, `student_roll_no`, `created_by`, `created_date`, `updated_by`, `updated_date`, `student_status`, `degree_id`) VALUES
(1, 'm_hamza', 'm_shabbir', '2000-10-08', '4220177255969', '3061232852', 'hamza@gmail.com', 'narowal', 1, 'hamza', '2022-08-29', NULL, NULL, 'Acive', 1),
(2, 'adeel', 'adeel', '2000-10-08', '4220177255969', '3061232852', 'adeel@gmail.com', 'lahore', 2, 'adeel', '2022-08-29', NULL, NULL, 'Acive', 1),
(3, 'ali', 'ali', '2000-10-08', '4220177255969', '3061232852', 'ali@gmail.com', 'narowal', 3, 'ali', '2022-08-29', NULL, NULL, 'Acive', 1),
(4, 'hassan', 'hassan', '2000-10-08', '4220177255969', '3061232852', 'hassan@gmail.com', 'narowal', 4, 'hassan', '2022-08-29', NULL, NULL, 'Acive', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_attendence`
--

CREATE TABLE `student_attendence` (
  `attendence_id` int(20) NOT NULL,
  `student_name` int(20) DEFAULT NULL,
  `attendence_status` varchar(20) DEFAULT NULL,
  `class_schudle` int(20) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_attendence`
--

INSERT INTO `student_attendence` (`attendence_id`, `student_name`, `attendence_status`, `class_schudle`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 1, 'present', 1, 'hamza', '2022-08-29', NULL, NULL),
(2, 2, 'absent', 1, 'hamza', '2022-08-29', NULL, NULL),
(3, 4, 'leave', 1, 'hamza', '2022-08-29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_exam_marking`
--

CREATE TABLE `student_exam_marking` (
  `sem_id` int(20) NOT NULL,
  `student_id` int(20) DEFAULT NULL,
  `class_schudle_id` int(20) DEFAULT NULL,
  `total_marks` int(20) DEFAULT NULL,
  `obtained_marks` int(20) DEFAULT NULL,
  `percentage` int(20) DEFAULT NULL,
  `result_status` varchar(20) DEFAULT NULL,
  `grade` varchar(20) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_exam_marking`
--

INSERT INTO `student_exam_marking` (`sem_id`, `student_id`, `class_schudle_id`, `total_marks`, `obtained_marks`, `percentage`, `result_status`, `grade`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 1, 1, 100, 70, 68, 'Pass', 'B+', 'hamza', '2020-08-29', NULL, NULL),
(2, 2, 1, 100, 80, 58, 'Pass', 'c+', 'hamza', '2020-08-29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_parent_gardian`
--

CREATE TABLE `student_parent_gardian` (
  `spg_no` int(20) NOT NULL,
  `student_id` int(20) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `realtion` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_subject`
-- (See below for the actual view)
--
CREATE TABLE `student_subject` (
`first_name` varchar(20)
,`last_name` varchar(20)
,`subjects` varchar(20)
,`student_class` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(20) NOT NULL,
  `subject_code` int(20) DEFAULT NULL,
  `subject_title` varchar(20) DEFAULT NULL,
  `subject_credit` int(10) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `subject_credit`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 350, 'math', 3, NULL, NULL, NULL, NULL),
(2, 357, 'urdu', 3, NULL, NULL, NULL, NULL),
(3, 351, 'visual', 4, NULL, NULL, NULL, NULL),
(4, 352, 'technical_english', 3, NULL, NULL, NULL, NULL),
(5, 353, 'discrete', 3, NULL, NULL, NULL, NULL),
(6, 354, 'assambly language', 4, NULL, NULL, NULL, NULL),
(7, 355, 'numarical_computing', 3, NULL, NULL, NULL, NULL),
(8, 356, 'wireless', 3, NULL, NULL, NULL, NULL),
(9, 358, 'data_base', 4, NULL, NULL, NULL, NULL),
(10, 359, 'programming', 4, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(10) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `cnic` varchar(13) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `joing_date` date DEFAULT NULL,
  `designation` varchar(20) DEFAULT NULL,
  `teacher_department` int(20) DEFAULT NULL,
  `teacher_gender` varchar(20) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `teacher_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `first_name`, `last_name`, `date_of_birth`, `cnic`, `phone_no`, `email`, `address`, `joing_date`, `designation`, `teacher_department`, `teacher_gender`, `created_by`, `created_date`, `updated_by`, `updated_date`, `teacher_status`) VALUES
(1, 'Qasir', 'qasir', '1990-09-19', '3450112345678', '3060000000', 'qasir@gmail.com', 'Narowal', '2021-10-23', 'teacher', 1, 'male', NULL, NULL, NULL, NULL, NULL),
(2, 'kashif', 'kashif', '1991-01-23', '3450145345678', '3050000000', 'kashif@gmail.com', 'Narowal', '2020-10-23', 'HOD', 1, 'male', NULL, NULL, NULL, NULL, NULL),
(3, 'romat', 'romat', '1989-01-23', '3450145367678', '3040000000', 'romat@gmail.com', 'Narowal', '2022-10-23', 'Teacher', 1, 'male', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `user_no` int(20) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `user_password` varchar(20) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `teacher_id` int(20) DEFAULT NULL,
  `student_id` int(20) DEFAULT NULL,
  `student_parent_id` int(20) DEFAULT NULL,
  `administrator_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure for view `student_subject`
--
DROP TABLE IF EXISTS `student_subject`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_subject`  AS SELECT `student`.`first_name` AS `first_name`, `student`.`last_name` AS `last_name`, (select `subject`.`subject_title` from `subject` where `assign_student_subject`.`sub_id` = `subject`.`subject_id`) AS `subjects`, (select `session_1`.`class_name` from `session_1` where `assign_student_subject`.`academic_id` = `session_1`.`session_id`) AS `student_class` FROM (`student` join `assign_student_subject`) WHERE `student`.`student_id` = `assign_student_subject`.`std_id``std_id`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_calendar`
--
ALTER TABLE `academic_calendar`
  ADD PRIMARY KEY (`academic_id`),
  ADD KEY `dk` (`degree_id`),
  ADD KEY `sk` (`session_no`),
  ADD KEY `aak` (`degree_no`);

--
-- Indexes for table `assign_student_subject`
--
ALTER TABLE `assign_student_subject`
  ADD PRIMARY KEY (`ss_id`),
  ADD KEY `assk` (`academic_id`),
  ADD KEY `esk` (`sub_id`),
  ADD KEY `qsk` (`std_id`);

--
-- Indexes for table `assign_teacher_subject`
--
ALTER TABLE `assign_teacher_subject`
  ADD PRIMARY KEY (`assign_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `azk` (`teacher_id`),
  ADD KEY `aazk` (`subject_id`);

--
-- Indexes for table `class_room`
--
ALTER TABLE `class_room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `degree` (`degree`);

--
-- Indexes for table `class_schudle`
--
ALTER TABLE `class_schudle`
  ADD PRIMARY KEY (`schudle_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `degree`
--
ALTER TABLE `degree`
  ADD PRIMARY KEY (`degree_id`);

--
-- Indexes for table `degree_name`
--
ALTER TABLE `degree_name`
  ADD PRIMARY KEY (`degree_no`),
  ADD KEY `mk` (`degree_name`),
  ADD KEY `wk` (`semester_session`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_no`);

--
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `session_1`
--
ALTER TABLE `session_1`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `nk` (`batch_no`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `aka` (`degree_id`);

--
-- Indexes for table `student_attendence`
--
ALTER TABLE `student_attendence`
  ADD PRIMARY KEY (`attendence_id`),
  ADD KEY `student_name` (`student_name`),
  ADD KEY `class_schudle` (`class_schudle`);

--
-- Indexes for table `student_exam_marking`
--
ALTER TABLE `student_exam_marking`
  ADD PRIMARY KEY (`sem_id`),
  ADD KEY `aaa` (`student_id`),
  ADD KEY `aaas` (`class_schudle_id`);

--
-- Indexes for table `student_parent_gardian`
--
ALTER TABLE `student_parent_gardian`
  ADD PRIMARY KEY (`spg_no`),
  ADD KEY `fk_student_id_to_student_table` (`student_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `tk` (`teacher_department`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`user_no`),
  ADD KEY `fk_teacher_id_to_teacher` (`teacher_id`),
  ADD KEY `fk_student_id_to_student` (`student_id`),
  ADD KEY `fk_student_parent_to_student_pareent` (`student_parent_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_calendar`
--
ALTER TABLE `academic_calendar`
  ADD CONSTRAINT `aak` FOREIGN KEY (`degree_no`) REFERENCES `degree_name` (`degree_no`),
  ADD CONSTRAINT `dk` FOREIGN KEY (`degree_id`) REFERENCES `degree` (`degree_id`),
  ADD CONSTRAINT `sk` FOREIGN KEY (`session_no`) REFERENCES `session_1` (`session_id`);

--
-- Constraints for table `assign_student_subject`
--
ALTER TABLE `assign_student_subject`
  ADD CONSTRAINT `assk` FOREIGN KEY (`academic_id`) REFERENCES `academic_calendar` (`academic_id`),
  ADD CONSTRAINT `esk` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`subject_id`),
  ADD CONSTRAINT `qsk` FOREIGN KEY (`std_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `assign_teacher_subject`
--
ALTER TABLE `assign_teacher_subject`
  ADD CONSTRAINT `aazk` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`),
  ADD CONSTRAINT `assignk` FOREIGN KEY (`class_id`) REFERENCES `academic_calendar` (`academic_id`),
  ADD CONSTRAINT `azk` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `class_room`
--
ALTER TABLE `class_room`
  ADD CONSTRAINT `class_room_ibfk_1` FOREIGN KEY (`degree`) REFERENCES `degree` (`degree_id`);

--
-- Constraints for table `class_schudle`
--
ALTER TABLE `class_schudle`
  ADD CONSTRAINT `class_schudle_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `degree` (`degree_id`),
  ADD CONSTRAINT `class_schudle_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`),
  ADD CONSTRAINT `class_schudle_ibfk_3` FOREIGN KEY (`room_id`) REFERENCES `class_room` (`room_id`);

--
-- Constraints for table `degree_name`
--
ALTER TABLE `degree_name`
  ADD CONSTRAINT `mk` FOREIGN KEY (`degree_name`) REFERENCES `degree` (`degree_id`),
  ADD CONSTRAINT `wk` FOREIGN KEY (`semester_session`) REFERENCES `session_1` (`session_id`);

--
-- Constraints for table `session_1`
--
ALTER TABLE `session_1`
  ADD CONSTRAINT `nk` FOREIGN KEY (`batch_no`) REFERENCES `degree_name` (`degree_no`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `aka` FOREIGN KEY (`degree_id`) REFERENCES `degree` (`degree_id`);

--
-- Constraints for table `student_attendence`
--
ALTER TABLE `student_attendence`
  ADD CONSTRAINT `student_attendence_ibfk_1` FOREIGN KEY (`student_name`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `student_attendence_ibfk_2` FOREIGN KEY (`class_schudle`) REFERENCES `class_schudle` (`schudle_id`);

--
-- Constraints for table `student_exam_marking`
--
ALTER TABLE `student_exam_marking`
  ADD CONSTRAINT `aaa` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `aaas` FOREIGN KEY (`class_schudle_id`) REFERENCES `class_schudle` (`schudle_id`);

--
-- Constraints for table `student_parent_gardian`
--
ALTER TABLE `student_parent_gardian`
  ADD CONSTRAINT `fk_student_id_to_student_table` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `tk` FOREIGN KEY (`teacher_department`) REFERENCES `degree` (`degree_id`);

--
-- Constraints for table `user_login`
--
ALTER TABLE `user_login`
  ADD CONSTRAINT `fk_student_id_to_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `fk_student_parent_to_student_pareent` FOREIGN KEY (`student_parent_id`) REFERENCES `student_parent_gardian` (`spg_no`),
  ADD CONSTRAINT `fk_teacher_id_to_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
