-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.90-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema fedena_ultimate
--

CREATE DATABASE IF NOT EXISTS fedena_ultimate;
USE fedena_ultimate;

--
-- Definition of table `additional_exam_groups`
--

DROP TABLE IF EXISTS `additional_exam_groups`;
CREATE TABLE `additional_exam_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `batch_id` int(11) default NULL,
  `exam_type` varchar(255) collate utf8_unicode_ci default NULL,
  `is_published` tinyint(1) default '0',
  `result_published` tinyint(1) default '0',
  `students_list` varchar(255) collate utf8_unicode_ci default NULL,
  `exam_date` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `additional_exam_groups`
--

/*!40000 ALTER TABLE `additional_exam_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_exam_groups` ENABLE KEYS */;


--
-- Definition of table `additional_exam_scores`
--

DROP TABLE IF EXISTS `additional_exam_scores`;
CREATE TABLE `additional_exam_scores` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `additional_exam_id` int(11) default NULL,
  `marks` decimal(7,2) default NULL,
  `grading_level_id` int(11) default NULL,
  `remarks` varchar(255) collate utf8_unicode_ci default NULL,
  `is_failed` tinyint(1) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `additional_exam_scores`
--

/*!40000 ALTER TABLE `additional_exam_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_exam_scores` ENABLE KEYS */;


--
-- Definition of table `additional_exams`
--

DROP TABLE IF EXISTS `additional_exams`;
CREATE TABLE `additional_exams` (
  `id` int(11) NOT NULL auto_increment,
  `additional_exam_group_id` int(11) default NULL,
  `subject_id` int(11) default NULL,
  `start_time` datetime default NULL,
  `end_time` datetime default NULL,
  `maximum_marks` int(11) default NULL,
  `minimum_marks` int(11) default NULL,
  `grading_level_id` int(11) default NULL,
  `weightage` int(11) default '0',
  `event_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `additional_exams`
--

/*!40000 ALTER TABLE `additional_exams` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_exams` ENABLE KEYS */;


--
-- Definition of table `additional_fields`
--

DROP TABLE IF EXISTS `additional_fields`;
CREATE TABLE `additional_fields` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `additional_fields`
--

/*!40000 ALTER TABLE `additional_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_fields` ENABLE KEYS */;


--
-- Definition of table `apply_leaves`
--

DROP TABLE IF EXISTS `apply_leaves`;
CREATE TABLE `apply_leaves` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `employee_leave_types_id` int(11) default NULL,
  `is_half_day` tinyint(1) default NULL,
  `start_date` date default NULL,
  `end_date` date default NULL,
  `reason` varchar(255) collate utf8_unicode_ci default NULL,
  `approved` tinyint(1) default '0',
  `viewed_by_manager` tinyint(1) default '0',
  `manager_remark` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `apply_leaves`
--

/*!40000 ALTER TABLE `apply_leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `apply_leaves` ENABLE KEYS */;


--
-- Definition of table `archived_employee_additional_details`
--

DROP TABLE IF EXISTS `archived_employee_additional_details`;
CREATE TABLE `archived_employee_additional_details` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `additional_field_id` int(11) default NULL,
  `additional_info` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `archived_employee_additional_details`
--

/*!40000 ALTER TABLE `archived_employee_additional_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employee_additional_details` ENABLE KEYS */;


--
-- Definition of table `archived_employee_bank_details`
--

DROP TABLE IF EXISTS `archived_employee_bank_details`;
CREATE TABLE `archived_employee_bank_details` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `bank_field_id` int(11) default NULL,
  `bank_info` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `archived_employee_bank_details`
--

/*!40000 ALTER TABLE `archived_employee_bank_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employee_bank_details` ENABLE KEYS */;


--
-- Definition of table `archived_employee_salary_structures`
--

DROP TABLE IF EXISTS `archived_employee_salary_structures`;
CREATE TABLE `archived_employee_salary_structures` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `payroll_category_id` int(11) default NULL,
  `amount` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `archived_employee_salary_structures`
--

/*!40000 ALTER TABLE `archived_employee_salary_structures` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employee_salary_structures` ENABLE KEYS */;


--
-- Definition of table `archived_employees`
--

DROP TABLE IF EXISTS `archived_employees`;
CREATE TABLE `archived_employees` (
  `id` int(11) NOT NULL auto_increment,
  `employee_category_id` int(11) default NULL,
  `employee_number` varchar(255) collate utf8_unicode_ci default NULL,
  `joining_date` date default NULL,
  `first_name` varchar(255) collate utf8_unicode_ci default NULL,
  `middle_name` varchar(255) collate utf8_unicode_ci default NULL,
  `last_name` varchar(255) collate utf8_unicode_ci default NULL,
  `gender` tinyint(1) default NULL,
  `job_title` varchar(255) collate utf8_unicode_ci default NULL,
  `employee_position_id` int(11) default NULL,
  `employee_department_id` int(11) default NULL,
  `reporting_manager_id` int(11) default NULL,
  `employee_grade_id` int(11) default NULL,
  `qualification` varchar(255) collate utf8_unicode_ci default NULL,
  `experience_detail` text collate utf8_unicode_ci,
  `experience_year` int(11) default NULL,
  `experience_month` int(11) default NULL,
  `status` tinyint(1) default NULL,
  `status_description` varchar(255) collate utf8_unicode_ci default NULL,
  `date_of_birth` date default NULL,
  `marital_status` varchar(255) collate utf8_unicode_ci default NULL,
  `children_count` int(11) default NULL,
  `father_name` varchar(255) collate utf8_unicode_ci default NULL,
  `mother_name` varchar(255) collate utf8_unicode_ci default NULL,
  `husband_name` varchar(255) collate utf8_unicode_ci default NULL,
  `blood_group` varchar(255) collate utf8_unicode_ci default NULL,
  `nationality_id` int(11) default NULL,
  `home_address_line1` varchar(255) collate utf8_unicode_ci default NULL,
  `home_address_line2` varchar(255) collate utf8_unicode_ci default NULL,
  `home_city` varchar(255) collate utf8_unicode_ci default NULL,
  `home_state` varchar(255) collate utf8_unicode_ci default NULL,
  `home_country_id` int(11) default NULL,
  `home_pin_code` varchar(255) collate utf8_unicode_ci default NULL,
  `office_address_line1` varchar(255) collate utf8_unicode_ci default NULL,
  `office_address_line2` varchar(255) collate utf8_unicode_ci default NULL,
  `office_city` varchar(255) collate utf8_unicode_ci default NULL,
  `office_state` varchar(255) collate utf8_unicode_ci default NULL,
  `office_country_id` int(11) default NULL,
  `office_pin_code` varchar(255) collate utf8_unicode_ci default NULL,
  `office_phone1` varchar(255) collate utf8_unicode_ci default NULL,
  `office_phone2` varchar(255) collate utf8_unicode_ci default NULL,
  `mobile_phone` varchar(255) collate utf8_unicode_ci default NULL,
  `home_phone` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `fax` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_file_name` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_content_type` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_data` mediumblob,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `photo_file_size` int(11) default NULL,
  `former_id` varchar(255) collate utf8_unicode_ci default NULL,
  `library_card` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `archived_employees`
--

/*!40000 ALTER TABLE `archived_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employees` ENABLE KEYS */;


--
-- Definition of table `archived_exam_scores`
--

DROP TABLE IF EXISTS `archived_exam_scores`;
CREATE TABLE `archived_exam_scores` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `exam_id` int(11) default NULL,
  `marks` decimal(7,2) default NULL,
  `grading_level_id` int(11) default NULL,
  `remarks` varchar(255) collate utf8_unicode_ci default NULL,
  `is_failed` tinyint(1) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_archived_exam_scores_on_student_id_and_exam_id` (`student_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `archived_exam_scores`
--

/*!40000 ALTER TABLE `archived_exam_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_exam_scores` ENABLE KEYS */;


--
-- Definition of table `archived_guardians`
--

DROP TABLE IF EXISTS `archived_guardians`;
CREATE TABLE `archived_guardians` (
  `id` int(11) NOT NULL auto_increment,
  `ward_id` int(11) default NULL,
  `first_name` varchar(255) collate utf8_unicode_ci default NULL,
  `last_name` varchar(255) collate utf8_unicode_ci default NULL,
  `relation` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `office_phone1` varchar(255) collate utf8_unicode_ci default NULL,
  `office_phone2` varchar(255) collate utf8_unicode_ci default NULL,
  `mobile_phone` varchar(255) collate utf8_unicode_ci default NULL,
  `office_address_line1` varchar(255) collate utf8_unicode_ci default NULL,
  `office_address_line2` varchar(255) collate utf8_unicode_ci default NULL,
  `city` varchar(255) collate utf8_unicode_ci default NULL,
  `state` varchar(255) collate utf8_unicode_ci default NULL,
  `country_id` int(11) default NULL,
  `dob` date default NULL,
  `occupation` varchar(255) collate utf8_unicode_ci default NULL,
  `income` varchar(255) collate utf8_unicode_ci default NULL,
  `education` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `archived_guardians`
--

/*!40000 ALTER TABLE `archived_guardians` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_guardians` ENABLE KEYS */;


--
-- Definition of table `archived_students`
--

DROP TABLE IF EXISTS `archived_students`;
CREATE TABLE `archived_students` (
  `id` int(11) NOT NULL auto_increment,
  `admission_no` varchar(255) collate utf8_unicode_ci default NULL,
  `class_roll_no` varchar(255) collate utf8_unicode_ci default NULL,
  `admission_date` date default NULL,
  `first_name` varchar(255) collate utf8_unicode_ci default NULL,
  `middle_name` varchar(255) collate utf8_unicode_ci default NULL,
  `last_name` varchar(255) collate utf8_unicode_ci default NULL,
  `batch_id` int(11) default NULL,
  `date_of_birth` date default NULL,
  `gender` varchar(255) collate utf8_unicode_ci default NULL,
  `blood_group` varchar(255) collate utf8_unicode_ci default NULL,
  `birth_place` varchar(255) collate utf8_unicode_ci default NULL,
  `nationality_id` int(11) default NULL,
  `language` varchar(255) collate utf8_unicode_ci default NULL,
  `religion` varchar(255) collate utf8_unicode_ci default NULL,
  `student_category_id` int(11) default NULL,
  `address_line1` varchar(255) collate utf8_unicode_ci default NULL,
  `address_line2` varchar(255) collate utf8_unicode_ci default NULL,
  `city` varchar(255) collate utf8_unicode_ci default NULL,
  `state` varchar(255) collate utf8_unicode_ci default NULL,
  `pin_code` varchar(255) collate utf8_unicode_ci default NULL,
  `country_id` int(11) default NULL,
  `phone1` varchar(255) collate utf8_unicode_ci default NULL,
  `phone2` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_file_name` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_content_type` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_data` mediumblob,
  `status_description` varchar(255) collate utf8_unicode_ci default NULL,
  `is_active` tinyint(1) default '1',
  `is_deleted` tinyint(1) default '0',
  `immediate_contact_id` int(11) default NULL,
  `is_sms_enabled` tinyint(1) default '1',
  `former_id` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `photo_file_size` int(11) default NULL,
  `library_card` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `archived_students`
--

/*!40000 ALTER TABLE `archived_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_students` ENABLE KEYS */;


--
-- Definition of table `assessment_scores`
--

DROP TABLE IF EXISTS `assessment_scores`;
CREATE TABLE `assessment_scores` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `grade_points` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `exam_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  `descriptive_indicator_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `score_index` (`student_id`,`batch_id`,`descriptive_indicator_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assessment_scores`
--

/*!40000 ALTER TABLE `assessment_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `assessment_scores` ENABLE KEYS */;


--
-- Definition of table `assets`
--

DROP TABLE IF EXISTS `assets`;
CREATE TABLE `assets` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `description` text collate utf8_unicode_ci,
  `amount` int(11) default NULL,
  `is_inactive` tinyint(1) default '0',
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assets`
--

/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;


--
-- Definition of table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
CREATE TABLE `attendances` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `period_table_entry_id` int(11) default NULL,
  `forenoon` tinyint(1) default '0',
  `afternoon` tinyint(1) default '0',
  `reason` varchar(255) collate utf8_unicode_ci default NULL,
  `month_date` date default NULL,
  `batch_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_attendances_on_month_date_and_batch_id` (`month_date`,`batch_id`),
  KEY `index_attendances_on_student_id_and_batch_id` (`student_id`,`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attendances`
--

/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;


--
-- Definition of table `bank_fields`
--

DROP TABLE IF EXISTS `bank_fields`;
CREATE TABLE `bank_fields` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bank_fields`
--

/*!40000 ALTER TABLE `bank_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_fields` ENABLE KEYS */;


--
-- Definition of table `batch_events`
--

DROP TABLE IF EXISTS `batch_events`;
CREATE TABLE `batch_events` (
  `id` int(11) NOT NULL auto_increment,
  `event_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_batch_events_on_batch_id` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `batch_events`
--

/*!40000 ALTER TABLE `batch_events` DISABLE KEYS */;
INSERT INTO `batch_events` (`id`,`event_id`,`batch_id`,`created_at`,`updated_at`) VALUES 
 (1,1,1,'2020-01-28 22:10:38','2020-01-28 22:10:38'),
 (2,2,1,'2020-01-29 21:29:31','2020-01-29 21:29:31'),
 (3,3,1,'2020-01-29 22:18:12','2020-01-29 22:18:12'),
 (4,4,1,'2020-01-29 22:28:20','2020-01-29 22:28:20'),
 (5,5,1,'2020-01-29 22:30:17','2020-01-29 22:30:17'),
 (6,6,2,'2020-01-30 09:05:55','2020-01-30 09:05:55'),
 (7,7,2,'2020-01-30 09:30:28','2020-01-30 09:30:28'),
 (8,8,2,'2020-01-30 09:42:54','2020-01-30 09:42:54'),
 (9,9,1,'2020-01-30 09:59:10','2020-01-30 09:59:10'),
 (10,10,2,'2020-01-30 09:59:10','2020-01-30 09:59:10'),
 (11,11,1,'2020-03-23 12:17:01','2020-03-23 12:17:01');
/*!40000 ALTER TABLE `batch_events` ENABLE KEYS */;


--
-- Definition of table `batch_groups`
--

DROP TABLE IF EXISTS `batch_groups`;
CREATE TABLE `batch_groups` (
  `id` int(11) NOT NULL auto_increment,
  `course_id` int(11) default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `batch_groups`
--

/*!40000 ALTER TABLE `batch_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_groups` ENABLE KEYS */;


--
-- Definition of table `batch_students`
--

DROP TABLE IF EXISTS `batch_students`;
CREATE TABLE `batch_students` (
  `student_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  KEY `index_batch_students_on_batch_id_and_student_id` (`batch_id`,`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `batch_students`
--

/*!40000 ALTER TABLE `batch_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_students` ENABLE KEYS */;


--
-- Definition of table `batches`
--

DROP TABLE IF EXISTS `batches`;
CREATE TABLE `batches` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `course_id` int(11) default NULL,
  `start_date` datetime default NULL,
  `end_date` datetime default NULL,
  `is_active` tinyint(1) default '1',
  `is_deleted` tinyint(1) default '0',
  `employee_id` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_batches_on_is_deleted_and_is_active_and_course_id_and_name` (`is_deleted`,`is_active`,`course_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `batches`
--

/*!40000 ALTER TABLE `batches` DISABLE KEYS */;
INSERT INTO `batches` (`id`,`name`,`course_id`,`start_date`,`end_date`,`is_active`,`is_deleted`,`employee_id`) VALUES 
 (1,'TURMA_A',1,'2020-01-28 00:00:00','2021-01-28 00:00:00',1,0,NULL),
 (2,'TURMA_B',2,'2020-01-29 00:00:00','2021-01-30 00:00:00',1,0,NULL);
/*!40000 ALTER TABLE `batches` ENABLE KEYS */;


--
-- Definition of table `book_movements`
--

DROP TABLE IF EXISTS `book_movements`;
CREATE TABLE `book_movements` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `book_id` int(11) default NULL,
  `issue_date` date default NULL,
  `due_date` date default NULL,
  `status` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `school_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_book_movements_on_school_id` (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book_movements`
--

/*!40000 ALTER TABLE `book_movements` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_movements` ENABLE KEYS */;


--
-- Definition of table `book_reservations`
--

DROP TABLE IF EXISTS `book_reservations`;
CREATE TABLE `book_reservations` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `book_id` int(11) default NULL,
  `reserved_on` datetime default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `school_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_book_reservations_on_school_id` (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book_reservations`
--

/*!40000 ALTER TABLE `book_reservations` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_reservations` ENABLE KEYS */;


--
-- Definition of table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `author` varchar(255) collate utf8_unicode_ci default NULL,
  `book_number` varchar(255) collate utf8_unicode_ci default NULL,
  `book_movement_id` int(11) default NULL,
  `status` varchar(255) collate utf8_unicode_ci default 'available',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `school_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_books_on_school_id` (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `books`
--

/*!40000 ALTER TABLE `books` DISABLE KEYS */;
/*!40000 ALTER TABLE `books` ENABLE KEYS */;


--
-- Definition of table `cce_exam_categories`
--

DROP TABLE IF EXISTS `cce_exam_categories`;
CREATE TABLE `cce_exam_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `desc` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cce_exam_categories`
--

/*!40000 ALTER TABLE `cce_exam_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_exam_categories` ENABLE KEYS */;


--
-- Definition of table `cce_grade_sets`
--

DROP TABLE IF EXISTS `cce_grade_sets`;
CREATE TABLE `cce_grade_sets` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cce_grade_sets`
--

/*!40000 ALTER TABLE `cce_grade_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_grade_sets` ENABLE KEYS */;


--
-- Definition of table `cce_grades`
--

DROP TABLE IF EXISTS `cce_grades`;
CREATE TABLE `cce_grades` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `grade_point` float default NULL,
  `cce_grade_set_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_cce_grades_on_cce_grade_set_id` (`cce_grade_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cce_grades`
--

/*!40000 ALTER TABLE `cce_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_grades` ENABLE KEYS */;


--
-- Definition of table `cce_reports`
--

DROP TABLE IF EXISTS `cce_reports`;
CREATE TABLE `cce_reports` (
  `id` int(11) NOT NULL auto_increment,
  `observable_id` int(11) default NULL,
  `observable_type` varchar(255) collate utf8_unicode_ci default NULL,
  `student_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  `grade_string` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `exam_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `cce_report_join_index` (`observable_id`,`student_id`,`batch_id`,`exam_id`,`observable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cce_reports`
--

/*!40000 ALTER TABLE `cce_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_reports` ENABLE KEYS */;


--
-- Definition of table `cce_weightages`
--

DROP TABLE IF EXISTS `cce_weightages`;
CREATE TABLE `cce_weightages` (
  `id` int(11) NOT NULL auto_increment,
  `weightage` int(11) default NULL,
  `criteria_type` varchar(255) collate utf8_unicode_ci default NULL,
  `cce_exam_category_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cce_weightages`
--

/*!40000 ALTER TABLE `cce_weightages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_weightages` ENABLE KEYS */;


--
-- Definition of table `cce_weightages_courses`
--

DROP TABLE IF EXISTS `cce_weightages_courses`;
CREATE TABLE `cce_weightages_courses` (
  `cce_weightage_id` int(11) default NULL,
  `course_id` int(11) default NULL,
  KEY `index_cce_weightages_courses_on_cce_weightage_id` (`cce_weightage_id`),
  KEY `index_cce_weightages_courses_on_course_id` (`course_id`),
  KEY `index_for_join_table_cce_weightage_courses` (`course_id`,`cce_weightage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cce_weightages_courses`
--

/*!40000 ALTER TABLE `cce_weightages_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_weightages_courses` ENABLE KEYS */;


--
-- Definition of table `class_designations`
--

DROP TABLE IF EXISTS `class_designations`;
CREATE TABLE `class_designations` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `cgpa` decimal(15,2) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `marks` decimal(15,2) default NULL,
  `course_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_designations`
--

/*!40000 ALTER TABLE `class_designations` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_designations` ENABLE KEYS */;


--
-- Definition of table `class_timings`
--

DROP TABLE IF EXISTS `class_timings`;
CREATE TABLE `class_timings` (
  `id` int(11) NOT NULL auto_increment,
  `batch_id` int(11) default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `start_time` time default NULL,
  `end_time` time default NULL,
  `is_break` tinyint(1) default NULL,
  `is_deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `index_class_timings_on_batch_id_and_start_time_and_end_time` (`batch_id`,`start_time`,`end_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_timings`
--

/*!40000 ALTER TABLE `class_timings` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_timings` ENABLE KEYS */;


--
-- Definition of table `configurations`
--

DROP TABLE IF EXISTS `configurations`;
CREATE TABLE `configurations` (
  `id` int(11) NOT NULL auto_increment,
  `config_key` varchar(255) collate utf8_unicode_ci default NULL,
  `config_value` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_configurations_on_config_key` (`config_key`(10)),
  KEY `index_configurations_on_config_value` (`config_value`(10))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `configurations`
--

/*!40000 ALTER TABLE `configurations` DISABLE KEYS */;
INSERT INTO `configurations` (`id`,`config_key`,`config_value`) VALUES 
 (1,'InstitutionName','UNIVERSIDADE DE BELLAS'),
 (2,'InstitutionAddress','LUANDA - ANGOLA'),
 (3,'InstitutionPhoneNo',''),
 (4,'StudentAttendanceType','Daily'),
 (5,'CurrencyType','KZ'),
 (6,'Locale','pt'),
 (7,'AdmissionNumberAutoIncrement','1'),
 (8,'EmployeeNumberAutoIncrement','0'),
 (9,'TotalSmsCount','0'),
 (10,'NetworkState','Online'),
 (11,'FinancialYearStartDate','2020-01-28'),
 (12,'FinancialYearEndDate','2021-01-28'),
 (13,'AutomaticLeaveReset','0'),
 (14,'LeaveResetPeriod','4'),
 (15,'LastAutoLeaveReset',NULL),
 (16,'GPA','0'),
 (17,'CWA','0'),
 (18,'CCE','0'),
 (19,'DefaultCountry','5'),
 (20,'AvailableModules','HR'),
 (21,'AvailableModules','Finance'),
 (22,'EnableNewsCommentModeration','0'),
 (23,'TimeZone','1');
/*!40000 ALTER TABLE `configurations` ENABLE KEYS */;


--
-- Definition of table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` (`id`,`name`) VALUES 
 (1,'Afghanistan'),
 (2,'Albania'),
 (3,'Algeria'),
 (4,'Andorra'),
 (5,'Angola'),
 (6,'Antigua & Deps'),
 (7,'Argentina'),
 (8,'Armenia'),
 (9,'Australia'),
 (10,'Austria'),
 (11,'Azerbaijan'),
 (12,'Bahamas'),
 (13,'Bahrain'),
 (14,'Bangladesh'),
 (15,'Barbados'),
 (16,'Belarus'),
 (17,'Belgium'),
 (18,'Belize'),
 (19,'Benin'),
 (20,'Bhutan'),
 (21,'Bolivia'),
 (22,'Bosnia Herzegovina'),
 (23,'Botswana'),
 (24,'Brazil'),
 (25,'Brunei'),
 (26,'Bulgaria'),
 (27,'Burkina'),
 (28,'Burundi'),
 (29,'Cambodia'),
 (30,'Cameroon'),
 (31,'Canada'),
 (32,'Cape Verde'),
 (33,'Central African Rep'),
 (34,'Chad'),
 (35,'Chile'),
 (36,'China'),
 (37,'Colombia'),
 (38,'Comoros'),
 (39,'Congo'),
 (40,'Congo {Democratic Rep}'),
 (41,'Costa Rica'),
 (42,'Croatia'),
 (43,'Cuba'),
 (44,'Cyprus'),
 (45,'Czech Republic'),
 (46,'Denmark'),
 (47,'Djibouti'),
 (48,'Dominica'),
 (49,'Dominican Republic'),
 (50,'East Timor'),
 (51,'Ecuador'),
 (52,'Egypt'),
 (53,'El Salvador'),
 (54,'Equatorial Guinea'),
 (55,'Eritrea'),
 (56,'Estonia'),
 (57,'Ethiopia'),
 (58,'Fiji'),
 (59,'Finland'),
 (60,'France'),
 (61,'Gabon'),
 (62,'Gambia'),
 (63,'Georgia'),
 (64,'Germany'),
 (65,'Ghana'),
 (66,'Greece'),
 (67,'Grenada'),
 (68,'Guatemala'),
 (69,'Guinea'),
 (70,'Guinea-Bissau'),
 (71,'Guyana'),
 (72,'Haiti'),
 (73,'Honduras'),
 (74,'Hungary'),
 (75,'Iceland'),
 (76,'India'),
 (77,'Indonesia'),
 (78,'Iran'),
 (79,'Iraq'),
 (80,'Ireland {Republic}'),
 (81,'Israel'),
 (82,'Italy'),
 (83,'Ivory Coast'),
 (84,'Jamaica'),
 (85,'Japan'),
 (86,'Jordan'),
 (87,'Kazakhstan'),
 (88,'Kenya'),
 (89,'Kiribati'),
 (90,'Korea North'),
 (91,'Korea South'),
 (92,'Kosovo'),
 (93,'Kuwait'),
 (94,'Kyrgyzstan'),
 (95,'Laos'),
 (96,'Latvia'),
 (97,'Lebanon'),
 (98,'Lesotho'),
 (99,'Liberia'),
 (100,'Libya'),
 (101,'Liechtenstein'),
 (102,'Lithuania'),
 (103,'Luxembourg'),
 (104,'Macedonia'),
 (105,'Madagascar'),
 (106,'Malawi'),
 (107,'Malaysia'),
 (108,'Maldives'),
 (109,'Mali'),
 (110,'Malta'),
 (111,'Montenegro'),
 (112,'Marshall Islands'),
 (113,'Mauritania'),
 (114,'Mauritius'),
 (115,'Mexico'),
 (116,'Micronesia'),
 (117,'Moldova'),
 (118,'Monaco'),
 (119,'Mongolia'),
 (120,'Morocco'),
 (121,'Mozambique'),
 (122,'Myanmar, {Burma}'),
 (123,'Namibia'),
 (124,'Nauru'),
 (125,'Nepal'),
 (126,'Netherlands'),
 (127,'New Zealand'),
 (128,'Nicaragua'),
 (129,'Niger'),
 (130,'Nigeria'),
 (131,'Norway'),
 (132,'Oman'),
 (133,'Pakistan'),
 (134,'Palau'),
 (135,'Panama'),
 (136,'Papua New Guinea'),
 (137,'Paraguay'),
 (138,'Peru'),
 (139,'Philippines'),
 (140,'Poland'),
 (141,'Portugal'),
 (142,'Qatar'),
 (143,'Romania'),
 (144,'Russian Federation'),
 (145,'Rwanda'),
 (146,'St Kitts & Nevis'),
 (147,'St Lucia'),
 (148,'Saint Vincent & the Grenadines'),
 (149,'Samoa'),
 (150,'San Marino'),
 (151,'Sao Tome & Principe'),
 (152,'Saudi Arabia'),
 (153,'Senegal'),
 (154,'Serbia'),
 (155,'Seychelles'),
 (156,'Sierra Leone'),
 (157,'Singapore'),
 (158,'Slovakia'),
 (159,'Slovenia'),
 (160,'Solomon Islands'),
 (161,'Somalia'),
 (162,'South Africa'),
 (163,'Spain'),
 (164,'Sri Lanka'),
 (165,'Sudan'),
 (166,'Suriname'),
 (167,'Swaziland'),
 (168,'Sweden'),
 (169,'Switzerland'),
 (170,'Syria'),
 (171,'Taiwan'),
 (172,'Tajikistan'),
 (173,'Tanzania'),
 (174,'Thailand'),
 (175,'Togo'),
 (176,'Tonga'),
 (177,'Trinidad & Tobago'),
 (178,'Tunisia'),
 (179,'Turkey'),
 (180,'Turkmenistan'),
 (181,'Tuvalu'),
 (182,'Uganda'),
 (183,'Ukraine'),
 (184,'United Arab Emirates'),
 (185,'United Kingdom'),
 (186,'United States'),
 (187,'Uruguay'),
 (188,'Uzbekistan'),
 (189,'Vanuatu'),
 (190,'Vatican City'),
 (191,'Venezuea'),
 (192,'Vietnam'),
 (193,'Yemen'),
 (194,'Zambia'),
 (195,'Zimbabwe');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;


--
-- Definition of table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL auto_increment,
  `course_name` varchar(255) collate utf8_unicode_ci default NULL,
  `code` varchar(255) collate utf8_unicode_ci default NULL,
  `section_name` varchar(255) collate utf8_unicode_ci default NULL,
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `grading_type` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_courses_on_grading_type` (`grading_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses`
--

/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` (`id`,`course_name`,`code`,`section_name`,`is_deleted`,`created_at`,`updated_at`,`grading_type`) VALUES 
 (1,'INFORMÃTICA DE GESTÃƒO','INFORMÃTICA','INFO',0,'2020-01-28 21:42:58','2020-01-28 21:42:58','0'),
 (2,'INFORMÃTICA DE GESTÃƒO','INFORMÃTICA','INFO',0,'2020-01-29 09:13:32','2020-01-29 09:13:32','0');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;


--
-- Definition of table `courses_observation_groups`
--

DROP TABLE IF EXISTS `courses_observation_groups`;
CREATE TABLE `courses_observation_groups` (
  `course_id` int(11) default NULL,
  `observation_group_id` int(11) default NULL,
  KEY `index_courses_observation_groups_on_observation_group_id` (`observation_group_id`),
  KEY `index_courses_observation_groups_on_course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses_observation_groups`
--

/*!40000 ALTER TABLE `courses_observation_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses_observation_groups` ENABLE KEYS */;


--
-- Definition of table `delayed_jobs`
--

DROP TABLE IF EXISTS `delayed_jobs`;
CREATE TABLE `delayed_jobs` (
  `id` int(11) NOT NULL auto_increment,
  `priority` int(11) default '0',
  `attempts` int(11) default '0',
  `handler` text collate utf8_unicode_ci,
  `last_error` text collate utf8_unicode_ci,
  `run_at` datetime default NULL,
  `locked_at` datetime default NULL,
  `failed_at` datetime default NULL,
  `locked_by` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_delayed_jobs_on_locked_by` (`locked_by`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `delayed_jobs`
--

/*!40000 ALTER TABLE `delayed_jobs` DISABLE KEYS */;
INSERT INTO `delayed_jobs` (`id`,`priority`,`attempts`,`handler`,`last_error`,`run_at`,`locked_at`,`failed_at`,`locked_by`,`created_at`,`updated_at`) VALUES 
 (1,0,0,'--- !ruby/object:DelayedReminderJob \nbody: \"<p><b>Data de Remeter Taxa <i>TAXA TOTAL JA_ABRIL</i> foi publicado </b>\\n              \\n \\n  Data de In\\xC3\\xADcio : 2020-01-28 \\n Data de fim :2020-01-28 \\n  Dia de entrega :2020-01-29 \\n \\n \\n  Verifica seu  Estrutura das Contas\"\nmessage: \nrecipient_ids: \n- 2\nsender_id: 1\nsubject: Data de Remeter Contas\n',NULL,'2020-01-28 22:10:38',NULL,NULL,NULL,'2020-01-28 22:10:38','2020-01-28 22:10:38'),
 (2,0,0,'--- !ruby/object:DelayedReminderJob \nbody: \"<p><b>Data de Remeter Taxa <i>TAXA TOTAL JA_ABRIL</i> foi publicado </b>\\n              \\n \\n  Data de In\\xC3\\xADcio : 2020-04-30 \\n Data de fim :2020-05-01 \\n  Dia de entrega :2020-05-01 \\n \\n \\n  Verifica seu  Estrutura das Contas\"\nmessage: \nrecipient_ids: \n- 2\nsender_id: 1\nsubject: Data de Remeter Contas\n',NULL,'2020-01-29 21:29:31',NULL,NULL,NULL,'2020-01-29 21:29:31','2020-01-29 21:29:31'),
 (3,0,0,'--- !ruby/object:DelayedReminderJob \nbody: \"<p><b>Data de Remeter Taxa <i>TAXA TOTAL JA_ABRIL</i> foi publicado </b>\\n              \\n \\n  Data de In\\xC3\\xADcio : 2020-01-29 \\n Data de fim :2020-01-29 \\n  Dia de entrega :2020-01-31 \\n \\n \\n  Verifica seu  Estrutura das Contas\"\nmessage: \nrecipient_ids: []\n\nsender_id: 1\nsubject: Data de Remeter Contas\n',NULL,'2020-01-29 22:18:12',NULL,NULL,NULL,'2020-01-29 22:18:12','2020-01-29 22:18:12'),
 (4,0,0,'--- !ruby/object:DelayedReminderJob \nbody: \"<p><b>Data de Remeter Taxa <i>TAXA_ANUAL</i> foi publicado </b>\\n              \\n \\n  Data de In\\xC3\\xADcio : 2020-01-29 \\n Data de fim :2020-01-29 \\n  Dia de entrega :2020-01-29 \\n \\n \\n  Verifica seu  Estrutura das Contas\"\nmessage: \nrecipient_ids: \n- 3\nsender_id: 1\nsubject: Data de Remeter Contas\n',NULL,'2020-01-29 22:28:20',NULL,NULL,NULL,'2020-01-29 22:28:20','2020-01-29 22:28:20'),
 (5,0,0,'--- !ruby/object:DelayedReminderJob \nbody: \"<p><b>Data de Remeter Taxa <i>TAXA_ANUAL</i> foi publicado </b>\\n              \\n \\n  Data de In\\xC3\\xADcio : 2020-01-29 \\n Data de fim :2020-01-29 \\n  Dia de entrega :2020-01-29 \\n \\n \\n  Verifica seu  Estrutura das Contas\"\nmessage: \nrecipient_ids: \n- 3\nsender_id: 1\nsubject: Data de Remeter Contas\n',NULL,'2020-01-29 22:30:17',NULL,NULL,NULL,'2020-01-29 22:30:17','2020-01-29 22:30:17'),
 (6,0,0,'--- !ruby/object:DelayedReminderJob \nbody: \"<p><b>Data de Remeter Taxa <i>TAXA_ANUIDADE</i> foi publicado </b>\\n              \\n \\n  Data de In\\xC3\\xADcio : 2020-01-30 \\n Data de fim :2020-01-30 \\n  Dia de entrega :2020-01-30 \\n \\n \\n  Verifica seu  Estrutura das Contas\"\nmessage: \nrecipient_ids: \n- 5\nsender_id: 1\nsubject: Data de Remeter Contas\n',NULL,'2020-01-30 09:05:55',NULL,NULL,NULL,'2020-01-30 09:05:55','2020-01-30 09:05:55'),
 (7,0,0,'--- !ruby/object:DelayedReminderJob \nbody: \"<p><b>Data de Remeter Taxa <i>TAXA_ANUIDADE</i> foi publicado </b>\\n              \\n \\n  Data de In\\xC3\\xADcio : 2020-01-30 \\n Data de fim :2020-01-30 \\n  Dia de entrega :2020-01-30 \\n \\n \\n  Verifica seu  Estrutura das Contas\"\nmessage: \nrecipient_ids: \n- 5\n- 6\nsender_id: 1\nsubject: Data de Remeter Contas\n',NULL,'2020-01-30 09:30:28',NULL,NULL,NULL,'2020-01-30 09:30:28','2020-01-30 09:30:28'),
 (8,0,0,'--- !ruby/object:DelayedReminderJob \nbody: \"<p><b>Data de Remeter Taxa <i>TAXA_ANUIDADE</i> foi publicado </b>\\n              \\n \\n  Data de In\\xC3\\xADcio : 2020-01-30 \\n Data de fim :2020-01-30 \\n  Dia de entrega :2020-01-30 \\n \\n \\n  Verifica seu  Estrutura das Contas\"\nmessage: \nrecipient_ids: \n- 5\n- 6\n- 7\nsender_id: 1\nsubject: Data de Remeter Contas\n',NULL,'2020-01-30 09:42:54',NULL,NULL,NULL,'2020-01-30 09:42:54','2020-01-30 09:42:54'),
 (9,0,0,'--- !ruby/object:DelayedReminderJob \nbody: \"<p><b>Data de Remeter Taxa <i>TAXA_ANUIDADE</i> foi publicado </b>\\n              \\n \\n  Data de In\\xC3\\xADcio : 2020-01-30 \\n Data de fim :2020-01-30 \\n  Dia de entrega :2020-01-30 \\n \\n \\n  Verifica seu  Estrutura das Contas\"\nmessage: \nrecipient_ids: \n- 8\nsender_id: 1\nsubject: Data de Remeter Contas\n',NULL,'2020-01-30 09:59:10',NULL,NULL,NULL,'2020-01-30 09:59:10','2020-01-30 09:59:10'),
 (10,0,0,'--- !ruby/object:DelayedReminderJob \nbody: \"<p><b>Data de Remeter Taxa <i>TAXA_ANUIDADE</i> foi publicado </b>\\n              \\n \\n  Data de In\\xC3\\xADcio : 2020-01-30 \\n Data de fim :2020-01-30 \\n  Dia de entrega :2020-01-30 \\n \\n \\n  Verifica seu  Estrutura das Contas\"\nmessage: \nrecipient_ids: \n- 5\n- 6\n- 7\nsender_id: 1\nsubject: Data de Remeter Contas\n',NULL,'2020-01-30 09:59:10',NULL,NULL,NULL,'2020-01-30 09:59:10','2020-01-30 09:59:10'),
 (11,0,0,'--- !ruby/object:DelayedReminderJob \nbody: \"Recibo de sal\\xC3\\xA1rio gerado para  TANDO GOMES. Por favor, aprovar este pedido\"\nmessage: \nrecipient_ids: []\n\nsender_id: 1\nsubject: \"Nota de Sal\\xC3\\xA1rio Gerado\"\n',NULL,'2020-02-04 22:09:56',NULL,NULL,NULL,'2020-02-04 22:09:56','2020-02-04 22:09:56'),
 (12,0,0,'--- !ruby/object:PayslipTransactionJob \nemployee_ids: \n- \"2\"\nsalary_date: 2020-02-01\n',NULL,'2020-02-04 22:21:37',NULL,NULL,NULL,'2020-02-04 22:21:37','2020-02-04 22:21:37'),
 (13,0,0,'--- !ruby/object:DelayedReminderJob \nbody: \"Recibo de sal\\xC3\\xA1rio gerado para  ROMELU FERNANDO. Por favor, aprovar este pedido\"\nmessage: \nrecipient_ids: []\n\nsender_id: 1\nsubject: \"Nota de Sal\\xC3\\xA1rio Gerado\"\n',NULL,'2020-03-23 11:53:29',NULL,NULL,NULL,'2020-03-23 11:53:29','2020-03-23 11:53:29'),
 (14,0,0,'--- !ruby/object:DelayedReminderJob \nbody: \"Nota de sal\\xC3\\xA1rio foi gerada para o m\\xC3\\xAAs espec\\xC3\\xADfico. Por favor, aprovar este pedido\"\nmessage: \nrecipient_ids: []\n\nsender_id: 1\nsubject: \"Nota de Sal\\xC3\\xA1rio Gerado\"\n',NULL,'2020-03-23 11:55:11',NULL,NULL,NULL,'2020-03-23 11:55:11','2020-03-23 11:55:11'),
 (15,0,0,'--- !ruby/object:PayslipTransactionJob \nemployee_ids: \n- \"3\"\nsalary_date: 2020-03-01\n',NULL,'2020-03-23 11:58:31',NULL,NULL,NULL,'2020-03-23 11:58:31','2020-03-23 11:58:31'),
 (16,0,0,'--- !ruby/object:DelayedReminderJob \nbody: \"<p><b>Data de Remeter Taxa <i>TAXA_ANUAL</i> foi publicado </b>\\n              \\n \\n  Data de In\\xC3\\xADcio : 2020-03-22 \\n Data de fim :2020-03-22 \\n  Dia de entrega :2020-03-22 \\n \\n \\n  Verifica seu  Estrutura das Contas\"\nmessage: \nrecipient_ids: \n- 3\nsender_id: 1\nsubject: Data de Remeter Contas\n',NULL,'2020-03-23 12:17:01',NULL,NULL,NULL,'2020-03-23 12:17:01','2020-03-23 12:17:01');
/*!40000 ALTER TABLE `delayed_jobs` ENABLE KEYS */;


--
-- Definition of table `descriptive_indicators`
--

DROP TABLE IF EXISTS `descriptive_indicators`;
CREATE TABLE `descriptive_indicators` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `desc` varchar(255) collate utf8_unicode_ci default NULL,
  `describable_id` int(11) default NULL,
  `describable_type` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `sort_order` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `describable_index` (`describable_id`,`describable_type`,`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `descriptive_indicators`
--

/*!40000 ALTER TABLE `descriptive_indicators` DISABLE KEYS */;
/*!40000 ALTER TABLE `descriptive_indicators` ENABLE KEYS */;


--
-- Definition of table `elective_groups`
--

DROP TABLE IF EXISTS `elective_groups`;
CREATE TABLE `elective_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `batch_id` int(11) default NULL,
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `elective_groups`
--

/*!40000 ALTER TABLE `elective_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `elective_groups` ENABLE KEYS */;


--
-- Definition of table `electives`
--

DROP TABLE IF EXISTS `electives`;
CREATE TABLE `electives` (
  `id` int(11) NOT NULL auto_increment,
  `elective_group_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `electives`
--

/*!40000 ALTER TABLE `electives` DISABLE KEYS */;
/*!40000 ALTER TABLE `electives` ENABLE KEYS */;


--
-- Definition of table `employee_additional_details`
--

DROP TABLE IF EXISTS `employee_additional_details`;
CREATE TABLE `employee_additional_details` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `additional_field_id` int(11) default NULL,
  `additional_info` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_additional_details`
--

/*!40000 ALTER TABLE `employee_additional_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_additional_details` ENABLE KEYS */;


--
-- Definition of table `employee_attendances`
--

DROP TABLE IF EXISTS `employee_attendances`;
CREATE TABLE `employee_attendances` (
  `id` int(11) NOT NULL auto_increment,
  `attendance_date` date default NULL,
  `employee_id` int(11) default NULL,
  `employee_leave_type_id` int(11) default NULL,
  `reason` varchar(255) collate utf8_unicode_ci default NULL,
  `is_half_day` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_attendances`
--

/*!40000 ALTER TABLE `employee_attendances` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_attendances` ENABLE KEYS */;


--
-- Definition of table `employee_bank_details`
--

DROP TABLE IF EXISTS `employee_bank_details`;
CREATE TABLE `employee_bank_details` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `bank_field_id` int(11) default NULL,
  `bank_info` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_bank_details`
--

/*!40000 ALTER TABLE `employee_bank_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_bank_details` ENABLE KEYS */;


--
-- Definition of table `employee_categories`
--

DROP TABLE IF EXISTS `employee_categories`;
CREATE TABLE `employee_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `prefix` varchar(255) collate utf8_unicode_ci default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_categories`
--

/*!40000 ALTER TABLE `employee_categories` DISABLE KEYS */;
INSERT INTO `employee_categories` (`id`,`name`,`prefix`,`status`) VALUES 
 (1,'System Admin','Admin',1);
/*!40000 ALTER TABLE `employee_categories` ENABLE KEYS */;


--
-- Definition of table `employee_department_events`
--

DROP TABLE IF EXISTS `employee_department_events`;
CREATE TABLE `employee_department_events` (
  `id` int(11) NOT NULL auto_increment,
  `event_id` int(11) default NULL,
  `employee_department_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_department_events`
--

/*!40000 ALTER TABLE `employee_department_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_department_events` ENABLE KEYS */;


--
-- Definition of table `employee_departments`
--

DROP TABLE IF EXISTS `employee_departments`;
CREATE TABLE `employee_departments` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(255) collate utf8_unicode_ci default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_departments`
--

/*!40000 ALTER TABLE `employee_departments` DISABLE KEYS */;
INSERT INTO `employee_departments` (`id`,`code`,`name`,`status`) VALUES 
 (1,'Admin','System Admin',1);
/*!40000 ALTER TABLE `employee_departments` ENABLE KEYS */;


--
-- Definition of table `employee_grades`
--

DROP TABLE IF EXISTS `employee_grades`;
CREATE TABLE `employee_grades` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `priority` int(11) default NULL,
  `status` tinyint(1) default NULL,
  `max_hours_day` int(11) default NULL,
  `max_hours_week` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_grades`
--

/*!40000 ALTER TABLE `employee_grades` DISABLE KEYS */;
INSERT INTO `employee_grades` (`id`,`name`,`priority`,`status`,`max_hours_day`,`max_hours_week`) VALUES 
 (1,'System Admin',0,1,NULL,NULL);
/*!40000 ALTER TABLE `employee_grades` ENABLE KEYS */;


--
-- Definition of table `employee_leave_types`
--

DROP TABLE IF EXISTS `employee_leave_types`;
CREATE TABLE `employee_leave_types` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `code` varchar(255) collate utf8_unicode_ci default NULL,
  `status` tinyint(1) default NULL,
  `max_leave_count` varchar(255) collate utf8_unicode_ci default NULL,
  `carry_forward` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_leave_types`
--

/*!40000 ALTER TABLE `employee_leave_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_leave_types` ENABLE KEYS */;


--
-- Definition of table `employee_leaves`
--

DROP TABLE IF EXISTS `employee_leaves`;
CREATE TABLE `employee_leaves` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `employee_leave_type_id` int(11) default NULL,
  `leave_count` decimal(5,1) default '0.0',
  `leave_taken` decimal(5,1) default '0.0',
  `reset_date` date default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_leaves`
--

/*!40000 ALTER TABLE `employee_leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_leaves` ENABLE KEYS */;


--
-- Definition of table `employee_positions`
--

DROP TABLE IF EXISTS `employee_positions`;
CREATE TABLE `employee_positions` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `employee_category_id` int(11) default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_positions`
--

/*!40000 ALTER TABLE `employee_positions` DISABLE KEYS */;
INSERT INTO `employee_positions` (`id`,`name`,`employee_category_id`,`status`) VALUES 
 (1,'System Admin',1,1);
/*!40000 ALTER TABLE `employee_positions` ENABLE KEYS */;


--
-- Definition of table `employee_salary_structures`
--

DROP TABLE IF EXISTS `employee_salary_structures`;
CREATE TABLE `employee_salary_structures` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `payroll_category_id` int(11) default NULL,
  `amount` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_salary_structures`
--

/*!40000 ALTER TABLE `employee_salary_structures` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_salary_structures` ENABLE KEYS */;


--
-- Definition of table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL auto_increment,
  `employee_category_id` int(11) default NULL,
  `employee_number` varchar(255) collate utf8_unicode_ci default NULL,
  `joining_date` date default NULL,
  `first_name` varchar(255) collate utf8_unicode_ci default NULL,
  `middle_name` varchar(255) collate utf8_unicode_ci default NULL,
  `last_name` varchar(255) collate utf8_unicode_ci default NULL,
  `gender` tinyint(1) default NULL,
  `job_title` varchar(255) collate utf8_unicode_ci default NULL,
  `employee_position_id` int(11) default NULL,
  `employee_department_id` int(11) default NULL,
  `reporting_manager_id` int(11) default NULL,
  `employee_grade_id` int(11) default NULL,
  `qualification` varchar(255) collate utf8_unicode_ci default NULL,
  `experience_detail` text collate utf8_unicode_ci,
  `experience_year` int(11) default NULL,
  `experience_month` int(11) default NULL,
  `status` tinyint(1) default NULL,
  `status_description` varchar(255) collate utf8_unicode_ci default NULL,
  `date_of_birth` date default NULL,
  `marital_status` varchar(255) collate utf8_unicode_ci default NULL,
  `children_count` int(11) default NULL,
  `father_name` varchar(255) collate utf8_unicode_ci default NULL,
  `mother_name` varchar(255) collate utf8_unicode_ci default NULL,
  `husband_name` varchar(255) collate utf8_unicode_ci default NULL,
  `blood_group` varchar(255) collate utf8_unicode_ci default NULL,
  `nationality_id` int(11) default NULL,
  `home_address_line1` varchar(255) collate utf8_unicode_ci default NULL,
  `home_address_line2` varchar(255) collate utf8_unicode_ci default NULL,
  `home_city` varchar(255) collate utf8_unicode_ci default NULL,
  `home_state` varchar(255) collate utf8_unicode_ci default NULL,
  `home_country_id` int(11) default NULL,
  `home_pin_code` varchar(255) collate utf8_unicode_ci default NULL,
  `office_address_line1` varchar(255) collate utf8_unicode_ci default NULL,
  `office_address_line2` varchar(255) collate utf8_unicode_ci default NULL,
  `office_city` varchar(255) collate utf8_unicode_ci default NULL,
  `office_state` varchar(255) collate utf8_unicode_ci default NULL,
  `office_country_id` int(11) default NULL,
  `office_pin_code` varchar(255) collate utf8_unicode_ci default NULL,
  `office_phone1` varchar(255) collate utf8_unicode_ci default NULL,
  `office_phone2` varchar(255) collate utf8_unicode_ci default NULL,
  `mobile_phone` varchar(255) collate utf8_unicode_ci default NULL,
  `home_phone` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `fax` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_file_name` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_content_type` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_data` mediumblob,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `photo_file_size` int(11) default NULL,
  `user_id` int(11) default NULL,
  `library_card` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_employees_on_employee_number` (`employee_number`(10))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`id`,`employee_category_id`,`employee_number`,`joining_date`,`first_name`,`middle_name`,`last_name`,`gender`,`job_title`,`employee_position_id`,`employee_department_id`,`reporting_manager_id`,`employee_grade_id`,`qualification`,`experience_detail`,`experience_year`,`experience_month`,`status`,`status_description`,`date_of_birth`,`marital_status`,`children_count`,`father_name`,`mother_name`,`husband_name`,`blood_group`,`nationality_id`,`home_address_line1`,`home_address_line2`,`home_city`,`home_state`,`home_country_id`,`home_pin_code`,`office_address_line1`,`office_address_line2`,`office_city`,`office_state`,`office_country_id`,`office_pin_code`,`office_phone1`,`office_phone2`,`mobile_phone`,`home_phone`,`email`,`fax`,`photo_file_name`,`photo_content_type`,`photo_data`,`created_at`,`updated_at`,`photo_file_size`,`user_id`,`library_card`) VALUES 
 (1,1,'admin','2020-01-28','Anacleto de','','Morais',1,'',1,1,NULL,1,'','',NULL,NULL,1,NULL,'2019-01-28',NULL,NULL,NULL,NULL,NULL,NULL,76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'noreply@fedena.com',NULL,NULL,NULL,NULL,'2020-01-28 19:05:43','2020-02-13 08:57:35',NULL,1,NULL),
 (2,1,'E1','2020-02-04','TANDO','','GOMES',1,'',1,1,NULL,NULL,'','',NULL,NULL,1,NULL,'2010-02-04','single',NULL,'','','','Desconhecido',5,'','','','',5,'','','','','',5,'','','','','','','',NULL,NULL,NULL,'2020-02-04 21:33:06','2020-02-04 21:34:43',NULL,10,NULL),
 (3,1,'E3','2020-02-04','ROMELU','','FERNANDO',1,'',1,1,NULL,NULL,'','',NULL,NULL,1,NULL,'2010-02-04','single',NULL,'','','','Desconhecido',5,'','','','',5,'','','','','',5,'','','','','','','',NULL,NULL,NULL,'2020-02-04 21:45:11','2020-02-04 21:45:25',NULL,11,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;


--
-- Definition of table `employees_subjects`
--

DROP TABLE IF EXISTS `employees_subjects`;
CREATE TABLE `employees_subjects` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `subject_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_employees_subjects_on_subject_id` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees_subjects`
--

/*!40000 ALTER TABLE `employees_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees_subjects` ENABLE KEYS */;


--
-- Definition of table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `description` varchar(255) collate utf8_unicode_ci default NULL,
  `start_date` datetime default NULL,
  `end_date` datetime default NULL,
  `is_common` tinyint(1) default '0',
  `is_holiday` tinyint(1) default '0',
  `is_exam` tinyint(1) default '0',
  `is_due` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `origin_id` int(11) default NULL,
  `origin_type` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_events_on_is_common_and_is_holiday_and_is_exam` (`is_common`,`is_holiday`,`is_exam`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` (`id`,`title`,`description`,`start_date`,`end_date`,`is_common`,`is_holiday`,`is_exam`,`is_due`,`created_at`,`updated_at`,`origin_id`,`origin_type`) VALUES 
 (1,'Contas em atraso','JANEIRO_abril','2020-01-29 00:00:00','2020-01-29 00:00:00',0,0,0,1,'2020-01-28 22:10:38','2020-01-28 22:10:38',1,'FinanceFeeCollection'),
 (2,'Contas em atraso','ABRIL','2020-05-01 00:00:00','2020-05-01 00:00:00',0,0,0,1,'2020-01-29 21:29:31','2020-01-29 21:29:31',2,'FinanceFeeCollection'),
 (3,'Contas em atraso','TAXA TRIMESTRE','2020-01-31 00:00:00','2020-01-31 00:00:00',0,0,0,1,'2020-01-29 22:18:12','2020-01-29 22:18:12',3,'FinanceFeeCollection'),
 (4,'Contas em atraso','ABRIL','2020-01-29 00:00:00','2020-01-29 00:00:00',0,0,0,1,'2020-01-29 22:28:20','2020-01-29 22:28:20',4,'FinanceFeeCollection'),
 (5,'Contas em atraso','ERER','2020-01-29 00:00:00','2020-01-29 00:00:00',0,0,0,1,'2020-01-29 22:30:17','2020-01-29 22:30:17',5,'FinanceFeeCollection'),
 (6,'Contas em atraso','JANEIRO01_ABRIL01','2020-01-30 00:00:00','2020-01-30 00:00:00',0,0,0,1,'2020-01-30 09:05:55','2020-01-30 09:05:55',6,'FinanceFeeCollection'),
 (7,'Contas em atraso','JAN_ABRIL_005','2020-01-30 00:00:00','2020-01-30 00:00:00',0,0,0,1,'2020-01-30 09:30:28','2020-01-30 09:30:28',7,'FinanceFeeCollection'),
 (8,'Contas em atraso','JA_ABRI_006','2020-01-30 00:00:00','2020-01-30 00:00:00',0,0,0,1,'2020-01-30 09:42:54','2020-01-30 09:42:54',8,'FinanceFeeCollection'),
 (9,'Contas em atraso','JAN_ABRIL_007','2020-01-30 00:00:00','2020-01-30 00:00:00',0,0,0,1,'2020-01-30 09:59:10','2020-01-30 09:59:10',9,'FinanceFeeCollection'),
 (10,'Contas em atraso','JAN_ABRIL_007','2020-01-30 00:00:00','2020-01-30 00:00:00',0,0,0,1,'2020-01-30 09:59:10','2020-01-30 09:59:10',10,'FinanceFeeCollection'),
 (11,'Contas em atraso','PROPINA DE MARÃ‡O','2020-03-22 00:00:00','2020-03-22 00:00:00',0,0,0,1,'2020-03-23 12:17:01','2020-03-23 12:17:01',11,'FinanceFeeCollection');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;


--
-- Definition of table `exam_groups`
--

DROP TABLE IF EXISTS `exam_groups`;
CREATE TABLE `exam_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `batch_id` int(11) default NULL,
  `exam_type` varchar(255) collate utf8_unicode_ci default NULL,
  `is_published` tinyint(1) default '0',
  `result_published` tinyint(1) default '0',
  `exam_date` date default NULL,
  `is_final_exam` tinyint(1) NOT NULL default '0',
  `cce_exam_category_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_groups`
--

/*!40000 ALTER TABLE `exam_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_groups` ENABLE KEYS */;


--
-- Definition of table `exam_scores`
--

DROP TABLE IF EXISTS `exam_scores`;
CREATE TABLE `exam_scores` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `exam_id` int(11) default NULL,
  `marks` decimal(7,2) default NULL,
  `grading_level_id` int(11) default NULL,
  `remarks` varchar(255) collate utf8_unicode_ci default NULL,
  `is_failed` tinyint(1) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_exam_scores_on_student_id_and_exam_id` (`student_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_scores`
--

/*!40000 ALTER TABLE `exam_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_scores` ENABLE KEYS */;


--
-- Definition of table `exams`
--

DROP TABLE IF EXISTS `exams`;
CREATE TABLE `exams` (
  `id` int(11) NOT NULL auto_increment,
  `exam_group_id` int(11) default NULL,
  `subject_id` int(11) default NULL,
  `start_time` datetime default NULL,
  `end_time` datetime default NULL,
  `maximum_marks` decimal(10,2) default NULL,
  `minimum_marks` decimal(10,2) default NULL,
  `grading_level_id` int(11) default NULL,
  `weightage` int(11) default '0',
  `event_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_exams_on_exam_group_id_and_subject_id` (`exam_group_id`,`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exams`
--

/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;


--
-- Definition of table `fa_criterias`
--

DROP TABLE IF EXISTS `fa_criterias`;
CREATE TABLE `fa_criterias` (
  `id` int(11) NOT NULL auto_increment,
  `fa_name` varchar(255) collate utf8_unicode_ci default NULL,
  `desc` varchar(255) collate utf8_unicode_ci default NULL,
  `fa_group_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `sort_order` int(11) default NULL,
  `is_deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `index_fa_criterias_on_fa_group_id` (`fa_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fa_criterias`
--

/*!40000 ALTER TABLE `fa_criterias` DISABLE KEYS */;
/*!40000 ALTER TABLE `fa_criterias` ENABLE KEYS */;


--
-- Definition of table `fa_groups`
--

DROP TABLE IF EXISTS `fa_groups`;
CREATE TABLE `fa_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `desc` text collate utf8_unicode_ci,
  `cce_exam_category_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `cce_grade_set_id` int(11) default NULL,
  `max_marks` float default '100',
  `is_deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fa_groups`
--

/*!40000 ALTER TABLE `fa_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fa_groups` ENABLE KEYS */;


--
-- Definition of table `fa_groups_subjects`
--

DROP TABLE IF EXISTS `fa_groups_subjects`;
CREATE TABLE `fa_groups_subjects` (
  `subject_id` int(11) default NULL,
  `fa_group_id` int(11) default NULL,
  KEY `index_fa_groups_subjects_on_subject_id` (`subject_id`),
  KEY `index_fa_groups_subjects_on_fa_group_id` (`fa_group_id`),
  KEY `score_index` (`fa_group_id`,`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fa_groups_subjects`
--

/*!40000 ALTER TABLE `fa_groups_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `fa_groups_subjects` ENABLE KEYS */;


--
-- Definition of table `fee_collection_discounts`
--

DROP TABLE IF EXISTS `fee_collection_discounts`;
CREATE TABLE `fee_collection_discounts` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(255) collate utf8_unicode_ci default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `receiver_id` int(11) default NULL,
  `finance_fee_collection_id` int(11) default NULL,
  `discount` decimal(15,2) default NULL,
  `is_amount` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fee_collection_discounts`
--

/*!40000 ALTER TABLE `fee_collection_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee_collection_discounts` ENABLE KEYS */;


--
-- Definition of table `fee_collection_particulars`
--

DROP TABLE IF EXISTS `fee_collection_particulars`;
CREATE TABLE `fee_collection_particulars` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `description` text collate utf8_unicode_ci,
  `amount` decimal(12,2) default NULL,
  `finance_fee_collection_id` int(11) default NULL,
  `student_category_id` int(11) default NULL,
  `admission_no` varchar(255) collate utf8_unicode_ci default NULL,
  `student_id` int(11) default NULL,
  `is_deleted` tinyint(1) NOT NULL default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fee_collection_particulars`
--

/*!40000 ALTER TABLE `fee_collection_particulars` DISABLE KEYS */;
INSERT INTO `fee_collection_particulars` (`id`,`name`,`description`,`amount`,`finance_fee_collection_id`,`student_category_id`,`admission_no`,`student_id`,`is_deleted`,`created_at`,`updated_at`) VALUES 
 (1,'VALOR TRIMENSTRAL','TRIMENSTRE','50000.00',1,NULL,'001',NULL,0,'2020-01-28 22:09:17','2020-01-28 22:09:17'),
 (2,'VALOR TRIMENSTRAL','TRIMENSTRE','50000.00',2,NULL,'001',NULL,0,'2020-01-28 22:09:17','2020-01-28 22:09:17'),
 (3,'VALOR TOTAL DO CURSO','VALOR TOTAL DO CURSO','50000.00',2,NULL,'001',NULL,0,'2020-01-29 21:26:01','2020-01-29 21:26:01'),
 (4,'VALOR TRIMENSTRAL','TRIMENSTRE','50000.00',3,NULL,'001',NULL,0,'2020-01-28 22:09:17','2020-01-28 22:09:17'),
 (5,'VALOR TOTAL DO CURSO','VALOR TOTAL DO CURSO','50000.00',3,NULL,'001',NULL,0,'2020-01-29 21:26:01','2020-01-29 21:26:01'),
 (6,'VALOR TRIMENSTRAL','VALOR TOTAL','50000.00',4,NULL,'002',NULL,0,'2020-01-29 22:22:05','2020-01-29 22:22:05'),
 (7,'VALOR TRIMENSTRAL','VALOR TOTAL','50000.00',5,NULL,'002',NULL,0,'2020-01-29 22:22:05','2020-01-29 22:22:05'),
 (8,'VALOR TOTAL','VALOR TOTAL','50000.00',6,NULL,'004',NULL,0,'2020-01-30 09:03:49','2020-01-30 09:03:49'),
 (9,'VALOR TOTAL','VALOR TOTAL','50000.00',7,NULL,'004',NULL,0,'2020-01-30 09:03:49','2020-01-30 09:03:49'),
 (10,'VALOR TOTAL','VALOR TOTAL','50000.00',7,NULL,'005',NULL,0,'2020-01-30 09:27:56','2020-01-30 09:27:56'),
 (11,'VALOR TOTAL','VALOR TOTAL','50000.00',8,NULL,'004',NULL,0,'2020-01-30 09:03:49','2020-01-30 09:03:49'),
 (12,'VALOR TOTAL','VALOR TOTAL','50000.00',8,NULL,'005',NULL,0,'2020-01-30 09:27:56','2020-01-30 09:27:56'),
 (13,'VALOR TRI_006','VALOR TOTAL 01','50000.00',8,NULL,'006',NULL,0,'2020-01-30 09:41:11','2020-01-30 09:41:11'),
 (14,'VALOR TOTAL    007','VALOR TOTAL','50000.00',9,NULL,'007',NULL,0,'2020-01-30 09:57:14','2020-01-30 09:57:14'),
 (15,'VALOR TOTAL','VALOR TOTAL','50000.00',10,NULL,'004',NULL,0,'2020-01-30 09:03:49','2020-01-30 09:03:49'),
 (16,'VALOR TOTAL','VALOR TOTAL','50000.00',10,NULL,'005',NULL,0,'2020-01-30 09:27:56','2020-01-30 09:27:56'),
 (17,'VALOR TRI_006','VALOR TOTAL 01','50000.00',10,NULL,'006',NULL,0,'2020-01-30 09:41:11','2020-01-30 09:41:11'),
 (18,'VALOR TRIMENSTRAL','VALOR TOTAL','50000.00',11,NULL,'002',NULL,0,'2020-01-29 22:22:05','2020-01-29 22:22:05');
/*!40000 ALTER TABLE `fee_collection_particulars` ENABLE KEYS */;


--
-- Definition of table `fee_discounts`
--

DROP TABLE IF EXISTS `fee_discounts`;
CREATE TABLE `fee_discounts` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(255) collate utf8_unicode_ci default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `receiver_id` int(11) default NULL,
  `finance_fee_category_id` int(11) default NULL,
  `discount` decimal(15,2) default NULL,
  `is_amount` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fee_discounts`
--

/*!40000 ALTER TABLE `fee_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee_discounts` ENABLE KEYS */;


--
-- Definition of table `finance_donations`
--

DROP TABLE IF EXISTS `finance_donations`;
CREATE TABLE `finance_donations` (
  `id` int(11) NOT NULL auto_increment,
  `donor` varchar(255) collate utf8_unicode_ci default NULL,
  `description` varchar(255) collate utf8_unicode_ci default NULL,
  `amount` decimal(15,2) default NULL,
  `transaction_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `transaction_date` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `finance_donations`
--

/*!40000 ALTER TABLE `finance_donations` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_donations` ENABLE KEYS */;


--
-- Definition of table `finance_fee_categories`
--

DROP TABLE IF EXISTS `finance_fee_categories`;
CREATE TABLE `finance_fee_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `description` text collate utf8_unicode_ci,
  `batch_id` int(11) default NULL,
  `is_deleted` tinyint(1) NOT NULL default '0',
  `is_master` tinyint(1) NOT NULL default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `finance_fee_categories`
--

/*!40000 ALTER TABLE `finance_fee_categories` DISABLE KEYS */;
INSERT INTO `finance_fee_categories` (`id`,`name`,`description`,`batch_id`,`is_deleted`,`is_master`,`created_at`,`updated_at`) VALUES 
 (1,'TAXA TOTAL JA_ABRIL','JANEIRO A ABRIL',1,0,1,'2020-01-28 22:00:32','2020-01-28 22:00:32'),
 (2,'TAXA_ANUAL','TAXA ANUAL',1,0,1,'2020-01-29 20:17:50','2020-01-29 20:17:50'),
 (3,'TAXA_ANUAL','TAXA ANUAL',2,0,1,'2020-01-30 09:00:00','2020-01-30 09:00:00'),
 (4,'TAXA_ANUIDADE','TAXA ANUAL',1,0,1,'2020-01-30 09:00:26','2020-01-30 09:00:26'),
 (5,'TAXA_ANUIDADE','TAXA ANUAL',2,0,1,'2020-01-30 09:00:26','2020-01-30 09:00:26');
/*!40000 ALTER TABLE `finance_fee_categories` ENABLE KEYS */;


--
-- Definition of table `finance_fee_collections`
--

DROP TABLE IF EXISTS `finance_fee_collections`;
CREATE TABLE `finance_fee_collections` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `start_date` date default NULL,
  `end_date` date default NULL,
  `due_date` date default NULL,
  `fee_category_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  `is_deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `index_finance_fee_collections_on_fee_category_id` (`fee_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `finance_fee_collections`
--

/*!40000 ALTER TABLE `finance_fee_collections` DISABLE KEYS */;
INSERT INTO `finance_fee_collections` (`id`,`name`,`start_date`,`end_date`,`due_date`,`fee_category_id`,`batch_id`,`is_deleted`) VALUES 
 (1,'JANEIRO_abril','2020-01-28','2020-01-28','2020-01-29',1,1,0),
 (2,'ABRIL','2020-04-30','2020-05-01','2020-05-01',1,1,0),
 (3,'TAXA TRIMESTRE','2020-01-29','2020-01-29','2020-01-31',1,1,0),
 (4,'ABRIL','2020-01-29','2020-01-29','2020-01-29',2,1,0),
 (5,'ERER','2020-01-29','2020-01-29','2020-01-29',2,1,0),
 (6,'JANEIRO01_ABRIL01','2020-01-30','2020-01-30','2020-01-30',5,2,0),
 (7,'JAN_ABRIL_005','2020-01-30','2020-01-30','2020-01-30',5,2,0),
 (8,'JA_ABRI_006','2020-01-30','2020-01-30','2020-01-30',5,2,0),
 (9,'JAN_ABRIL_007','2020-01-30','2020-01-30','2020-01-30',4,1,0),
 (10,'JAN_ABRIL_007','2020-01-30','2020-01-30','2020-01-30',5,2,0),
 (11,'PROPINA DE MARÃ‡O','2020-03-22','2020-03-22','2020-03-22',2,1,0);
/*!40000 ALTER TABLE `finance_fee_collections` ENABLE KEYS */;


--
-- Definition of table `finance_fee_particulars`
--

DROP TABLE IF EXISTS `finance_fee_particulars`;
CREATE TABLE `finance_fee_particulars` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `description` text collate utf8_unicode_ci,
  `amount` decimal(15,2) default NULL,
  `finance_fee_category_id` int(11) default NULL,
  `student_category_id` int(11) default NULL,
  `admission_no` varchar(255) collate utf8_unicode_ci default NULL,
  `student_id` int(11) default NULL,
  `is_deleted` tinyint(1) NOT NULL default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `finance_fee_particulars`
--

/*!40000 ALTER TABLE `finance_fee_particulars` DISABLE KEYS */;
INSERT INTO `finance_fee_particulars` (`id`,`name`,`description`,`amount`,`finance_fee_category_id`,`student_category_id`,`admission_no`,`student_id`,`is_deleted`,`created_at`,`updated_at`) VALUES 
 (1,'VALOR TRIMENSTRAL','TRIMENSTRE','50000.00',1,NULL,'001',NULL,0,'2020-01-28 22:09:17','2020-01-28 22:09:17'),
 (2,'VALOR TOTAL DO CURSO','VALOR TOTAL DO CURSO','50000.00',1,NULL,'001',NULL,0,'2020-01-29 21:26:01','2020-01-29 21:26:01'),
 (3,'VALOR TRIMENSTRAL','VALOR TOTAL','50000.00',2,NULL,'002',NULL,0,'2020-01-29 22:22:05','2020-01-29 22:22:05'),
 (4,'VALOR TOTAL','VALOR TOTAL','50000.00',5,NULL,'004',NULL,0,'2020-01-30 09:03:49','2020-01-30 09:03:49'),
 (5,'VALOR TOTAL','VALOR TOTAL','50000.00',5,NULL,'005',NULL,0,'2020-01-30 09:27:56','2020-01-30 09:27:56'),
 (6,'VALOR TRI_006','VALOR TOTAL 01','50000.00',5,NULL,'006',NULL,0,'2020-01-30 09:41:11','2020-01-30 09:41:11'),
 (7,'VALOR TOTAL    007','VALOR TOTAL','50000.00',4,NULL,'007',NULL,0,'2020-01-30 09:57:14','2020-01-30 09:57:14'),
 (8,'PROPINA DE MARÃ‡O','PROPINA DE MARÃ‡O','15000.00',2,NULL,NULL,NULL,0,'2020-03-23 12:18:53','2020-03-23 12:18:53');
/*!40000 ALTER TABLE `finance_fee_particulars` ENABLE KEYS */;


--
-- Definition of table `finance_fee_structure_elements`
--

DROP TABLE IF EXISTS `finance_fee_structure_elements`;
CREATE TABLE `finance_fee_structure_elements` (
  `id` int(11) NOT NULL auto_increment,
  `amount` decimal(15,2) default NULL,
  `label` varchar(255) collate utf8_unicode_ci default NULL,
  `batch_id` int(11) default NULL,
  `student_category_id` int(11) default NULL,
  `student_id` int(11) default NULL,
  `parent_id` int(11) default NULL,
  `fee_collection_id` int(11) default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `finance_fee_structure_elements`
--

/*!40000 ALTER TABLE `finance_fee_structure_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_fee_structure_elements` ENABLE KEYS */;


--
-- Definition of table `finance_fees`
--

DROP TABLE IF EXISTS `finance_fees`;
CREATE TABLE `finance_fees` (
  `id` int(11) NOT NULL auto_increment,
  `fee_collection_id` int(11) default NULL,
  `transaction_id` varchar(255) collate utf8_unicode_ci default NULL,
  `student_id` int(11) default NULL,
  `is_paid` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `index_finance_fees_on_fee_collection_id_and_student_id` (`fee_collection_id`,`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `finance_fees`
--

/*!40000 ALTER TABLE `finance_fees` DISABLE KEYS */;
INSERT INTO `finance_fees` (`id`,`fee_collection_id`,`transaction_id`,`student_id`,`is_paid`) VALUES 
 (1,1,'1,2',1,1),
 (2,2,'3,4',1,1),
 (3,4,'5,8',2,1),
 (4,5,'6',2,1),
 (5,6,'7,9',4,1),
 (6,7,'10,12',4,1),
 (7,7,'11',5,1),
 (8,8,NULL,4,0),
 (9,8,NULL,5,0),
 (10,8,'13,14',6,1),
 (11,9,'15',7,1),
 (12,10,NULL,4,0),
 (13,10,NULL,5,0),
 (14,10,NULL,6,0),
 (15,11,'16',2,1);
/*!40000 ALTER TABLE `finance_fees` ENABLE KEYS */;


--
-- Definition of table `finance_transaction_categories`
--

DROP TABLE IF EXISTS `finance_transaction_categories`;
CREATE TABLE `finance_transaction_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `description` varchar(255) collate utf8_unicode_ci default NULL,
  `is_income` tinyint(1) default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `finance_transaction_categories`
--

/*!40000 ALTER TABLE `finance_transaction_categories` DISABLE KEYS */;
INSERT INTO `finance_transaction_categories` (`id`,`name`,`description`,`is_income`,`deleted`) VALUES 
 (1,'Salary',' ',0,0),
 (2,'Donation',' ',1,0),
 (3,'Fee',' ',1,0),
 (4,'Library','Library Module for Fedena',1,0),
 (5,'SALÃRIO','SALÃRIOS',0,0);
/*!40000 ALTER TABLE `finance_transaction_categories` ENABLE KEYS */;


--
-- Definition of table `finance_transaction_triggers`
--

DROP TABLE IF EXISTS `finance_transaction_triggers`;
CREATE TABLE `finance_transaction_triggers` (
  `id` int(11) NOT NULL auto_increment,
  `finance_category_id` int(11) default NULL,
  `percentage` decimal(8,2) default NULL,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `description` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `finance_transaction_triggers`
--

/*!40000 ALTER TABLE `finance_transaction_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_transaction_triggers` ENABLE KEYS */;


--
-- Definition of table `finance_transactions`
--

DROP TABLE IF EXISTS `finance_transactions`;
CREATE TABLE `finance_transactions` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `description` varchar(255) collate utf8_unicode_ci default NULL,
  `amount` decimal(15,2) default NULL,
  `fine_included` tinyint(1) default '0',
  `category_id` int(11) default NULL,
  `student_id` int(11) default NULL,
  `finance_fees_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `transaction_date` date default NULL,
  `fine_amount` decimal(10,2) default '0.00',
  `master_transaction_id` int(11) default '0',
  `finance_id` int(11) default NULL,
  `finance_type` varchar(255) collate utf8_unicode_ci default NULL,
  `payee_id` int(11) default NULL,
  `payee_type` varchar(255) collate utf8_unicode_ci default NULL,
  `receipt_no` varchar(255) collate utf8_unicode_ci default NULL,
  `voucher_no` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `finance_transactions`
--

/*!40000 ALTER TABLE `finance_transactions` DISABLE KEYS */;
INSERT INTO `finance_transactions` (`id`,`title`,`description`,`amount`,`fine_included`,`category_id`,`student_id`,`finance_fees_id`,`created_at`,`updated_at`,`transaction_date`,`fine_amount`,`master_transaction_id`,`finance_id`,`finance_type`,`payee_id`,`payee_type`,`receipt_no`,`voucher_no`) VALUES 
 (1,'No. Recibo. F1',NULL,'25000.00',0,3,NULL,NULL,'2020-01-28 22:13:01','2020-01-28 22:13:01','2020-01-28','0.00',0,1,'FinanceFee',1,'Student','1',NULL),
 (2,'No. Recibo. F1',NULL,'25000.00',0,3,NULL,NULL,'2020-01-28 22:13:28','2020-01-28 22:13:28','2020-01-28','0.00',0,1,'FinanceFee',1,'Student','2',NULL),
 (3,'No. Recibo. (parcial) F2',NULL,'25000.00',0,3,NULL,NULL,'2020-01-29 21:31:29','2020-01-29 21:31:29','2020-01-29','0.00',0,2,'FinanceFee',1,'Student','3',NULL),
 (4,'No. Recibo. (parcial) F2',NULL,'75000.00',0,3,NULL,NULL,'2020-01-29 21:32:28','2020-01-29 21:32:28','2020-01-29','0.00',0,2,'FinanceFee',1,'Student','4',NULL),
 (5,'No. Recibo. F3',NULL,'30000.00',0,3,NULL,NULL,'2020-01-29 22:31:23','2020-01-29 22:31:23','2020-01-29','0.00',0,3,'FinanceFee',2,'Student','5',NULL),
 (6,'No. Recibo. F4',NULL,'50000.00',0,3,NULL,NULL,'2020-01-29 22:32:17','2020-01-29 22:32:17','2020-01-29','0.00',0,4,'FinanceFee',2,'Student','6',NULL),
 (7,'No. Recibo. F5',NULL,'25000.00',0,3,NULL,NULL,'2020-01-30 09:08:28','2020-01-30 09:08:28','2020-01-30','0.00',0,5,'FinanceFee',4,'Student','7',NULL),
 (8,'No. Recibo. F3',NULL,'20000.00',0,3,NULL,NULL,'2020-01-30 09:13:40','2020-01-30 09:13:40','2020-01-30','0.00',0,3,'FinanceFee',2,'Student','8',NULL),
 (9,'No. Recibo. (parcial) F5',NULL,'25000.00',0,3,NULL,NULL,'2020-01-30 09:18:25','2020-01-30 09:18:25','2020-01-30','0.00',0,5,'FinanceFee',4,'Student','9',NULL),
 (10,'No. Recibo. (parcial) F6',NULL,'25000.00',0,3,NULL,NULL,'2020-01-30 09:31:32','2020-01-30 09:31:32','2020-01-30','0.00',0,6,'FinanceFee',4,'Student','10',NULL),
 (11,'No. Recibo. F7',NULL,'50000.00',0,3,NULL,NULL,'2020-01-30 09:32:50','2020-01-30 09:32:50','2020-01-30','0.00',0,7,'FinanceFee',5,'Student','11',NULL),
 (12,'No. Recibo. (parcial) F6',NULL,'25000.00',0,3,NULL,NULL,'2020-01-30 09:34:16','2020-01-30 09:34:16','2020-01-30','0.00',0,6,'FinanceFee',4,'Student','12',NULL),
 (13,'No. Recibo. F10',NULL,'25000.00',0,3,NULL,NULL,'2020-01-30 09:48:53','2020-01-30 09:48:53','2020-01-30','0.00',0,10,'FinanceFee',6,'Student','13',NULL),
 (14,'No. Recibo. (parcial) F10',NULL,'25000.00',0,3,NULL,NULL,'2020-01-30 09:50:38','2020-01-30 09:50:38','2020-01-30','0.00',0,10,'FinanceFee',6,'Student','14',NULL),
 (15,'No. Recibo. F11',NULL,'50000.00',0,3,NULL,NULL,'2020-01-30 10:01:04','2020-01-30 10:01:04','2020-01-30','0.00',0,11,'FinanceFee',7,'Student','15',NULL),
 (16,'No. Recibo. F15',NULL,'65000.00',1,3,NULL,NULL,'2020-03-23 12:23:44','2020-03-23 12:23:44','2020-03-23','15000.00',0,15,'FinanceFee',2,'Student','16',NULL);
/*!40000 ALTER TABLE `finance_transactions` ENABLE KEYS */;


--
-- Definition of table `grading_levels`
--

DROP TABLE IF EXISTS `grading_levels`;
CREATE TABLE `grading_levels` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `batch_id` int(11) default NULL,
  `min_score` int(11) default NULL,
  `order` int(11) default NULL,
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `credit_points` decimal(15,2) default NULL,
  `description` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_grading_levels_on_batch_id_and_is_deleted` (`batch_id`,`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grading_levels`
--

/*!40000 ALTER TABLE `grading_levels` DISABLE KEYS */;
INSERT INTO `grading_levels` (`id`,`name`,`batch_id`,`min_score`,`order`,`is_deleted`,`created_at`,`updated_at`,`credit_points`,`description`) VALUES 
 (1,'A',NULL,90,NULL,0,'2020-01-28 19:05:42','2020-01-28 19:05:42',NULL,NULL),
 (2,'B',NULL,80,NULL,0,'2020-01-28 19:05:42','2020-01-28 19:05:42',NULL,NULL),
 (3,'C',NULL,70,NULL,0,'2020-01-28 19:05:42','2020-01-28 19:05:42',NULL,NULL),
 (4,'D',NULL,60,NULL,0,'2020-01-28 19:05:42','2020-01-28 19:05:42',NULL,NULL),
 (5,'E',NULL,50,NULL,0,'2020-01-28 19:05:43','2020-01-28 19:05:43',NULL,NULL),
 (6,'F',NULL,0,NULL,0,'2020-01-28 19:05:43','2020-01-28 19:05:43',NULL,NULL);
/*!40000 ALTER TABLE `grading_levels` ENABLE KEYS */;


--
-- Definition of table `grouped_batches`
--

DROP TABLE IF EXISTS `grouped_batches`;
CREATE TABLE `grouped_batches` (
  `id` int(11) NOT NULL auto_increment,
  `batch_group_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_grouped_batches_on_batch_group_id` (`batch_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grouped_batches`
--

/*!40000 ALTER TABLE `grouped_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `grouped_batches` ENABLE KEYS */;


--
-- Definition of table `grouped_exam_reports`
--

DROP TABLE IF EXISTS `grouped_exam_reports`;
CREATE TABLE `grouped_exam_reports` (
  `id` int(11) NOT NULL auto_increment,
  `batch_id` int(11) default NULL,
  `student_id` int(11) default NULL,
  `exam_group_id` int(11) default NULL,
  `marks` decimal(15,2) default NULL,
  `score_type` varchar(255) collate utf8_unicode_ci default NULL,
  `subject_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `by_batch_student_and_score_type` (`batch_id`,`student_id`,`score_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grouped_exam_reports`
--

/*!40000 ALTER TABLE `grouped_exam_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `grouped_exam_reports` ENABLE KEYS */;


--
-- Definition of table `grouped_exams`
--

DROP TABLE IF EXISTS `grouped_exams`;
CREATE TABLE `grouped_exams` (
  `id` int(11) NOT NULL auto_increment,
  `exam_group_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  `weightage` decimal(15,2) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_grouped_exams_on_batch_id` (`batch_id`),
  KEY `index_grouped_exams_on_batch_id_and_exam_group_id` (`batch_id`,`exam_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grouped_exams`
--

/*!40000 ALTER TABLE `grouped_exams` DISABLE KEYS */;
/*!40000 ALTER TABLE `grouped_exams` ENABLE KEYS */;


--
-- Definition of table `guardians`
--

DROP TABLE IF EXISTS `guardians`;
CREATE TABLE `guardians` (
  `id` int(11) NOT NULL auto_increment,
  `ward_id` int(11) default NULL,
  `first_name` varchar(255) collate utf8_unicode_ci default NULL,
  `last_name` varchar(255) collate utf8_unicode_ci default NULL,
  `relation` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `office_phone1` varchar(255) collate utf8_unicode_ci default NULL,
  `office_phone2` varchar(255) collate utf8_unicode_ci default NULL,
  `mobile_phone` varchar(255) collate utf8_unicode_ci default NULL,
  `office_address_line1` varchar(255) collate utf8_unicode_ci default NULL,
  `office_address_line2` varchar(255) collate utf8_unicode_ci default NULL,
  `city` varchar(255) collate utf8_unicode_ci default NULL,
  `state` varchar(255) collate utf8_unicode_ci default NULL,
  `country_id` int(11) default NULL,
  `dob` date default NULL,
  `occupation` varchar(255) collate utf8_unicode_ci default NULL,
  `income` varchar(255) collate utf8_unicode_ci default NULL,
  `education` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `guardians`
--

/*!40000 ALTER TABLE `guardians` DISABLE KEYS */;
/*!40000 ALTER TABLE `guardians` ENABLE KEYS */;


--
-- Definition of table `individual_payslip_categories`
--

DROP TABLE IF EXISTS `individual_payslip_categories`;
CREATE TABLE `individual_payslip_categories` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `salary_date` date default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `amount` varchar(255) collate utf8_unicode_ci default NULL,
  `is_deduction` tinyint(1) default NULL,
  `include_every_month` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `individual_payslip_categories`
--

/*!40000 ALTER TABLE `individual_payslip_categories` DISABLE KEYS */;
INSERT INTO `individual_payslip_categories` (`id`,`employee_id`,`salary_date`,`name`,`amount`,`is_deduction`,`include_every_month`) VALUES 
 (1,2,'2020-02-01','BASE','500000',0,0),
 (2,2,'2020-02-01','SUB ALIMEN','40000',0,0),
 (3,2,'2020-02-01','SUB TRANSP','40000',0,0),
 (4,2,'2020-02-01','SUB CHEFIA','55000',0,0),
 (5,2,'2020-02-01','IRT','30000',1,0);
/*!40000 ALTER TABLE `individual_payslip_categories` ENABLE KEYS */;


--
-- Definition of table `liabilities`
--

DROP TABLE IF EXISTS `liabilities`;
CREATE TABLE `liabilities` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `description` text collate utf8_unicode_ci,
  `amount` int(11) default NULL,
  `is_solved` tinyint(1) default '0',
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `liabilities`
--

/*!40000 ALTER TABLE `liabilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `liabilities` ENABLE KEYS */;


--
-- Definition of table `library_card_settings`
--

DROP TABLE IF EXISTS `library_card_settings`;
CREATE TABLE `library_card_settings` (
  `id` int(11) NOT NULL auto_increment,
  `course_id` int(11) default NULL,
  `student_category_id` int(11) default NULL,
  `books_issueable` int(11) default NULL,
  `time_period` int(11) default '30',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `school_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_library_card_settings_on_school_id` (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `library_card_settings`
--

/*!40000 ALTER TABLE `library_card_settings` DISABLE KEYS */;
INSERT INTO `library_card_settings` (`id`,`course_id`,`student_category_id`,`books_issueable`,`time_period`,`created_at`,`updated_at`,`school_id`) VALUES 
 (1,1,1,23,30,'2020-01-30 21:05:21','2020-01-30 21:05:21',NULL);
/*!40000 ALTER TABLE `library_card_settings` ENABLE KEYS */;


--
-- Definition of table `monthly_payslips`
--

DROP TABLE IF EXISTS `monthly_payslips`;
CREATE TABLE `monthly_payslips` (
  `id` int(11) NOT NULL auto_increment,
  `salary_date` date default NULL,
  `employee_id` int(11) default NULL,
  `payroll_category_id` int(11) default NULL,
  `amount` varchar(255) collate utf8_unicode_ci default NULL,
  `is_approved` tinyint(1) NOT NULL default '0',
  `approver_id` int(11) default NULL,
  `is_rejected` tinyint(1) NOT NULL default '0',
  `rejector_id` int(11) default NULL,
  `reason` varchar(255) collate utf8_unicode_ci default NULL,
  `remark` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `monthly_payslips`
--

/*!40000 ALTER TABLE `monthly_payslips` DISABLE KEYS */;
INSERT INTO `monthly_payslips` (`id`,`salary_date`,`employee_id`,`payroll_category_id`,`amount`,`is_approved`,`approver_id`,`is_rejected`,`rejector_id`,`reason`,`remark`) VALUES 
 (1,'2020-02-01',2,1,'500000',1,1,0,NULL,NULL,'Approved'),
 (2,'2020-02-01',2,2,'',1,1,0,NULL,NULL,'Approved'),
 (3,'2020-02-01',2,3,'',1,1,0,NULL,NULL,'Approved'),
 (4,'2020-02-01',2,4,'',1,1,0,NULL,NULL,'Approved'),
 (5,'2020-03-01',3,1,'40000',1,1,0,NULL,NULL,''),
 (6,'2020-03-01',3,2,'4000',1,1,0,NULL,NULL,''),
 (7,'2020-03-01',3,3,'5600',1,1,0,NULL,NULL,''),
 (8,'2020-03-01',3,4,'6800',1,1,0,NULL,NULL,'');
/*!40000 ALTER TABLE `monthly_payslips` ENABLE KEYS */;


--
-- Definition of table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `content` text collate utf8_unicode_ci,
  `author_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;


--
-- Definition of table `news_comments`
--

DROP TABLE IF EXISTS `news_comments`;
CREATE TABLE `news_comments` (
  `id` int(11) NOT NULL auto_increment,
  `content` text collate utf8_unicode_ci,
  `news_id` int(11) default NULL,
  `author_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `is_approved` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_comments`
--

/*!40000 ALTER TABLE `news_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_comments` ENABLE KEYS */;


--
-- Definition of table `observation_groups`
--

DROP TABLE IF EXISTS `observation_groups`;
CREATE TABLE `observation_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `header_name` varchar(255) collate utf8_unicode_ci default NULL,
  `desc` varchar(255) collate utf8_unicode_ci default NULL,
  `cce_grade_set_id` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `observation_kind` varchar(255) collate utf8_unicode_ci default NULL,
  `max_marks` float default NULL,
  `is_deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `observation_groups`
--

/*!40000 ALTER TABLE `observation_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `observation_groups` ENABLE KEYS */;


--
-- Definition of table `observations`
--

DROP TABLE IF EXISTS `observations`;
CREATE TABLE `observations` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `desc` varchar(255) collate utf8_unicode_ci default NULL,
  `is_active` tinyint(1) default NULL,
  `observation_group_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `sort_order` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_observations_on_observation_group_id` (`observation_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `observations`
--

/*!40000 ALTER TABLE `observations` DISABLE KEYS */;
/*!40000 ALTER TABLE `observations` ENABLE KEYS */;


--
-- Definition of table `payroll_categories`
--

DROP TABLE IF EXISTS `payroll_categories`;
CREATE TABLE `payroll_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `percentage` float default NULL,
  `payroll_category_id` int(11) default NULL,
  `is_deduction` tinyint(1) default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payroll_categories`
--

/*!40000 ALTER TABLE `payroll_categories` DISABLE KEYS */;
INSERT INTO `payroll_categories` (`id`,`name`,`percentage`,`payroll_category_id`,`is_deduction`,`status`) VALUES 
 (1,'BASE',100,NULL,0,1),
 (2,'SUB TRANSP',10,1,0,1),
 (3,'SUB ALIME',14,1,0,1),
 (4,'IRT',17,1,1,1);
/*!40000 ALTER TABLE `payroll_categories` ENABLE KEYS */;


--
-- Definition of table `period_entries`
--

DROP TABLE IF EXISTS `period_entries`;
CREATE TABLE `period_entries` (
  `id` int(11) NOT NULL auto_increment,
  `month_date` date default NULL,
  `batch_id` int(11) default NULL,
  `subject_id` int(11) default NULL,
  `class_timing_id` int(11) default NULL,
  `employee_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_period_entries_on_month_date_and_batch_id` (`month_date`,`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `period_entries`
--

/*!40000 ALTER TABLE `period_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `period_entries` ENABLE KEYS */;


--
-- Definition of table `previous_exam_scores`
--

DROP TABLE IF EXISTS `previous_exam_scores`;
CREATE TABLE `previous_exam_scores` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `exam_id` int(11) default NULL,
  `marks` decimal(7,2) default NULL,
  `grading_level_id` int(11) default NULL,
  `remarks` varchar(255) collate utf8_unicode_ci default NULL,
  `is_failed` tinyint(1) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_previous_exam_scores_on_student_id_and_exam_id` (`student_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `previous_exam_scores`
--

/*!40000 ALTER TABLE `previous_exam_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `previous_exam_scores` ENABLE KEYS */;


--
-- Definition of table `privileges`
--

DROP TABLE IF EXISTS `privileges`;
CREATE TABLE `privileges` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `description` text collate utf8_unicode_ci,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `privileges`
--

/*!40000 ALTER TABLE `privileges` DISABLE KEYS */;
INSERT INTO `privileges` (`id`,`name`,`created_at`,`updated_at`,`description`) VALUES 
 (1,'ExaminationControl','2020-01-28 19:05:03','2020-01-28 19:05:03','examination_control_privilege'),
 (2,'EnterResults','2020-01-28 19:05:03','2020-01-28 19:05:03','enter_results_privilege'),
 (3,'ViewResults','2020-01-28 19:05:03','2020-01-28 19:05:03','view_results_privilege'),
 (4,'Admission','2020-01-28 19:05:03','2020-01-28 19:05:03','admission_privilege'),
 (5,'StudentsControl','2020-01-28 19:05:03','2020-01-28 19:05:03','students_control_privilege'),
 (6,'ManageNews','2020-01-28 19:05:03','2020-01-28 19:05:03','manage_news_privilege'),
 (7,'ManageTimetable','2020-01-28 19:05:03','2020-01-28 19:05:03','manage_timetable_privilege'),
 (8,'StudentAttendanceView','2020-01-28 19:05:03','2020-01-28 19:05:03','student_attendance_view_privilege'),
 (9,'HrBasics','2020-01-28 19:05:03','2020-01-28 19:05:03','hr_basics_privilege'),
 (10,'AddNewBatch','2020-01-28 19:05:03','2020-01-28 19:05:03','add_new_batch_privilege'),
 (11,'SubjectMaster','2020-01-28 19:05:03','2020-01-28 19:05:03','subject_master_privilege'),
 (12,'EventManagement','2020-01-28 19:05:03','2020-01-28 19:05:03','event_management_privilege'),
 (13,'GeneralSettings','2020-01-28 19:05:03','2020-01-28 19:05:03','general_settings_privilege'),
 (14,'FinanceControl','2020-01-28 19:05:03','2020-01-28 19:05:03','finance_control_privilege'),
 (15,'TimetableView','2020-01-28 19:05:03','2020-01-28 19:05:03','timetable_view_privilege'),
 (16,'StudentAttendanceRegister','2020-01-28 19:05:03','2020-01-28 19:05:03','student_attendance_register_privilege'),
 (17,'EmployeeAttendance','2020-01-28 19:05:03','2020-01-28 19:05:03','employee_attendance_privilege'),
 (18,'PayslipPowers','2020-01-28 19:05:03','2020-01-28 19:05:03','payslip_powers_privilege'),
 (19,'EmployeeSearch','2020-01-28 19:05:03','2020-01-28 19:05:03','employee_search_privilege'),
 (20,'SMSManagement','2020-01-28 19:05:04','2020-01-28 19:05:04','sms_management_privilege'),
 (21,'StudentView','2020-01-28 19:05:34','2020-01-28 19:05:44','student_view_privilege'),
 (22,'Librarian','2020-01-28 19:05:52','2020-01-28 19:05:52','librarian_privilege');
/*!40000 ALTER TABLE `privileges` ENABLE KEYS */;


--
-- Definition of table `privileges_users`
--

DROP TABLE IF EXISTS `privileges_users`;
CREATE TABLE `privileges_users` (
  `user_id` int(11) default NULL,
  `privilege_id` int(11) default NULL,
  KEY `index_privileges_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `privileges_users`
--

/*!40000 ALTER TABLE `privileges_users` DISABLE KEYS */;
INSERT INTO `privileges_users` (`user_id`,`privilege_id`) VALUES 
 (9,3),
 (9,15),
 (9,21),
 (10,1),
 (10,4),
 (10,6),
 (10,7),
 (10,9),
 (10,22),
 (11,2),
 (11,4),
 (11,8),
 (11,11),
 (11,12),
 (11,19),
 (11,22);
/*!40000 ALTER TABLE `privileges_users` ENABLE KEYS */;


--
-- Definition of table `ranking_levels`
--

DROP TABLE IF EXISTS `ranking_levels`;
CREATE TABLE `ranking_levels` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `gpa` decimal(15,2) default NULL,
  `marks` decimal(15,2) default NULL,
  `subject_count` int(11) default NULL,
  `priority` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `full_course` tinyint(1) default '0',
  `course_id` int(11) default NULL,
  `subject_limit_type` varchar(255) collate utf8_unicode_ci default NULL,
  `marks_limit_type` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ranking_levels`
--

/*!40000 ALTER TABLE `ranking_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `ranking_levels` ENABLE KEYS */;


--
-- Definition of table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
CREATE TABLE `reminders` (
  `id` int(11) NOT NULL auto_increment,
  `sender` int(11) default NULL,
  `recipient` int(11) default NULL,
  `subject` varchar(255) collate utf8_unicode_ci default NULL,
  `body` text collate utf8_unicode_ci,
  `is_read` tinyint(1) default '0',
  `is_deleted_by_sender` tinyint(1) default '0',
  `is_deleted_by_recipient` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_reminders_on_recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reminders`
--

/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;


--
-- Definition of table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) collate utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`) VALUES 
 ('20090622100004'),
 ('20090622102004'),
 ('20090622104053'),
 ('20090622104054'),
 ('20090622114927'),
 ('20090622115927'),
 ('20090703074822'),
 ('20090706170408'),
 ('20090715234257'),
 ('20090715234258'),
 ('20090717124241'),
 ('20090717126241'),
 ('20090718050113'),
 ('20090718050453'),
 ('20090718050921'),
 ('20090718052749'),
 ('20090731092833'),
 ('20090818045411'),
 ('20090818050018'),
 ('20090904071048'),
 ('20090904071548'),
 ('20090904071642'),
 ('20090904071905'),
 ('20090904071906'),
 ('20090904071907'),
 ('20090904071908'),
 ('20090904071909'),
 ('20090910062751'),
 ('20090914095002'),
 ('20090914114212'),
 ('20090916052300'),
 ('20090917052349'),
 ('20090917065256'),
 ('20090924081520'),
 ('20090926071527'),
 ('20091009093746'),
 ('20091026065251'),
 ('20091202050910'),
 ('20091202053600'),
 ('20091202104818'),
 ('20091207084711'),
 ('20091207085849'),
 ('20091207090412'),
 ('20091217191652'),
 ('20091217201118'),
 ('20091224063502'),
 ('20100403073735'),
 ('20100403092229'),
 ('20100403093355'),
 ('20100412105036'),
 ('20100412105116'),
 ('20100422110336'),
 ('20100426094532'),
 ('20100429093616'),
 ('20100505075459'),
 ('20100515063157'),
 ('20100515063814'),
 ('20100520073311'),
 ('20100524093457'),
 ('20100525055716'),
 ('20100602115152'),
 ('20100604103435'),
 ('20100604103916'),
 ('20100604104308'),
 ('20100604104759'),
 ('20100609073016'),
 ('20100609074544'),
 ('20100730092747'),
 ('20100731053458'),
 ('20100731054033'),
 ('20100731055437'),
 ('20101019100229'),
 ('20101019100810'),
 ('20101022064802'),
 ('20101026093826'),
 ('20101027060122'),
 ('20101129085525'),
 ('20101209063633'),
 ('20110221051223'),
 ('20110510121550'),
 ('20110511053223'),
 ('20110516110336'),
 ('20110706114907'),
 ('20110711100500'),
 ('20110721122326'),
 ('20110728115723'),
 ('20110729055539'),
 ('20110730100503'),
 ('20110805072425'),
 ('20110810052138'),
 ('20110912062640'),
 ('20110928054502'),
 ('20111015111840'),
 ('20111020074717'),
 ('20111105052819'),
 ('20120320044605'),
 ('20120321065124'),
 ('20120326114112'),
 ('20120404051019'),
 ('20120404051814'),
 ('20120404052524'),
 ('20120410081920'),
 ('20120413090231'),
 ('20120420085643'),
 ('20120421061939'),
 ('20120421062319'),
 ('20120421062549'),
 ('20120421062750'),
 ('20120421062917'),
 ('20120421063035'),
 ('20120423061415'),
 ('20120423100037'),
 ('20120424092335'),
 ('20120425052412'),
 ('20120427102307'),
 ('20120503062405'),
 ('20120503112304'),
 ('20120504123001'),
 ('20120507064439'),
 ('20120508085619'),
 ('20120510070334'),
 ('20120514050238'),
 ('20120514050318'),
 ('20120514050339'),
 ('20120514050353'),
 ('20120514050415'),
 ('20120514050433'),
 ('20120514050455'),
 ('20120514050500'),
 ('20120514050522'),
 ('20120514050548'),
 ('20120514050603'),
 ('20120514063103'),
 ('20120514063142'),
 ('20120516052659'),
 ('20120517112833'),
 ('20120517122038'),
 ('20120518091221'),
 ('20120521120315'),
 ('20120522065318'),
 ('20120522065410'),
 ('20120525100324'),
 ('20120528060855'),
 ('20120530120325'),
 ('20120602095356'),
 ('20120606050404'),
 ('20120606050437'),
 ('20120608090107'),
 ('20120608090126'),
 ('20120613063621'),
 ('20120613070054'),
 ('20120614092829'),
 ('20120615084815'),
 ('20120615085346'),
 ('20120615103301'),
 ('20120618053150'),
 ('20120618102301'),
 ('20120625072331'),
 ('20120625073818'),
 ('20120626082424'),
 ('20120702062719'),
 ('20120704103545'),
 ('20120706090514'),
 ('20120706103712'),
 ('20120710054428'),
 ('20120816045034');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;


--
-- Definition of table `school_details`
--

DROP TABLE IF EXISTS `school_details`;
CREATE TABLE `school_details` (
  `id` int(11) NOT NULL auto_increment,
  `school_id` int(11) default NULL,
  `logo_file_name` varchar(255) collate utf8_unicode_ci default NULL,
  `logo_content_type` varchar(255) collate utf8_unicode_ci default NULL,
  `logo_file_size` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `school_details`
--

/*!40000 ALTER TABLE `school_details` DISABLE KEYS */;
INSERT INTO `school_details` (`id`,`school_id`,`logo_file_name`,`logo_content_type`,`logo_file_size`,`created_at`,`updated_at`) VALUES 
 (1,NULL,NULL,NULL,NULL,'2020-01-28 21:39:19','2020-01-28 21:39:19');
/*!40000 ALTER TABLE `school_details` ENABLE KEYS */;


--
-- Definition of table `sms_logs`
--

DROP TABLE IF EXISTS `sms_logs`;
CREATE TABLE `sms_logs` (
  `id` int(11) NOT NULL auto_increment,
  `mobile` varchar(255) collate utf8_unicode_ci default NULL,
  `gateway_response` varchar(255) collate utf8_unicode_ci default NULL,
  `sms_message_id` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sms_logs`
--

/*!40000 ALTER TABLE `sms_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_logs` ENABLE KEYS */;


--
-- Definition of table `sms_messages`
--

DROP TABLE IF EXISTS `sms_messages`;
CREATE TABLE `sms_messages` (
  `id` int(11) NOT NULL auto_increment,
  `body` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sms_messages`
--

/*!40000 ALTER TABLE `sms_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_messages` ENABLE KEYS */;


--
-- Definition of table `sms_settings`
--

DROP TABLE IF EXISTS `sms_settings`;
CREATE TABLE `sms_settings` (
  `id` int(11) NOT NULL auto_increment,
  `settings_key` varchar(255) collate utf8_unicode_ci default NULL,
  `is_enabled` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sms_settings`
--

/*!40000 ALTER TABLE `sms_settings` DISABLE KEYS */;
INSERT INTO `sms_settings` (`id`,`settings_key`,`is_enabled`) VALUES 
 (1,'ApplicationEnabled',1),
 (2,'ParentSmsEnabled',1),
 (3,'EmployeeSmsEnabled',0),
 (4,'StudentSmsEnabled',1),
 (5,'ResultPublishEnabled',0),
 (6,'StudentAdmissionEnabled',0),
 (7,'ExamScheduleResultEnabled',0),
 (8,'AttendanceEnabled',0),
 (9,'NewsEventsEnabled',0);
/*!40000 ALTER TABLE `sms_settings` ENABLE KEYS */;


--
-- Definition of table `student_additional_details`
--

DROP TABLE IF EXISTS `student_additional_details`;
CREATE TABLE `student_additional_details` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `additional_field_id` int(11) default NULL,
  `additional_info` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_additional_details`
--

/*!40000 ALTER TABLE `student_additional_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_additional_details` ENABLE KEYS */;


--
-- Definition of table `student_additional_fields`
--

DROP TABLE IF EXISTS `student_additional_fields`;
CREATE TABLE `student_additional_fields` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_additional_fields`
--

/*!40000 ALTER TABLE `student_additional_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_additional_fields` ENABLE KEYS */;


--
-- Definition of table `student_categories`
--

DROP TABLE IF EXISTS `student_categories`;
CREATE TABLE `student_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `is_deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_categories`
--

/*!40000 ALTER TABLE `student_categories` DISABLE KEYS */;
INSERT INTO `student_categories` (`id`,`name`,`is_deleted`) VALUES 
 (1,'NORMAL',0);
/*!40000 ALTER TABLE `student_categories` ENABLE KEYS */;


--
-- Definition of table `student_previous_datas`
--

DROP TABLE IF EXISTS `student_previous_datas`;
CREATE TABLE `student_previous_datas` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `institution` varchar(255) collate utf8_unicode_ci default NULL,
  `year` varchar(255) collate utf8_unicode_ci default NULL,
  `course` varchar(255) collate utf8_unicode_ci default NULL,
  `total_mark` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_previous_datas`
--

/*!40000 ALTER TABLE `student_previous_datas` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_previous_datas` ENABLE KEYS */;


--
-- Definition of table `student_previous_subject_marks`
--

DROP TABLE IF EXISTS `student_previous_subject_marks`;
CREATE TABLE `student_previous_subject_marks` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `subject` varchar(255) collate utf8_unicode_ci default NULL,
  `mark` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_previous_subject_marks`
--

/*!40000 ALTER TABLE `student_previous_subject_marks` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_previous_subject_marks` ENABLE KEYS */;


--
-- Definition of table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(11) NOT NULL auto_increment,
  `admission_no` varchar(255) collate utf8_unicode_ci default NULL,
  `class_roll_no` varchar(255) collate utf8_unicode_ci default NULL,
  `admission_date` date default NULL,
  `first_name` varchar(255) collate utf8_unicode_ci default NULL,
  `middle_name` varchar(255) collate utf8_unicode_ci default NULL,
  `last_name` varchar(255) collate utf8_unicode_ci default NULL,
  `batch_id` int(11) default NULL,
  `date_of_birth` date default NULL,
  `gender` varchar(255) collate utf8_unicode_ci default NULL,
  `blood_group` varchar(255) collate utf8_unicode_ci default NULL,
  `birth_place` varchar(255) collate utf8_unicode_ci default NULL,
  `nationality_id` int(11) default NULL,
  `language` varchar(255) collate utf8_unicode_ci default NULL,
  `religion` varchar(255) collate utf8_unicode_ci default NULL,
  `student_category_id` int(11) default NULL,
  `address_line1` varchar(255) collate utf8_unicode_ci default NULL,
  `address_line2` varchar(255) collate utf8_unicode_ci default NULL,
  `city` varchar(255) collate utf8_unicode_ci default NULL,
  `state` varchar(255) collate utf8_unicode_ci default NULL,
  `pin_code` varchar(255) collate utf8_unicode_ci default NULL,
  `country_id` int(11) default NULL,
  `phone1` varchar(255) collate utf8_unicode_ci default NULL,
  `phone2` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `immediate_contact_id` int(11) default NULL,
  `is_sms_enabled` tinyint(1) default '1',
  `photo_file_name` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_content_type` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_data` mediumblob,
  `status_description` varchar(255) collate utf8_unicode_ci default NULL,
  `is_active` tinyint(1) default '1',
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `has_paid_fees` tinyint(1) default '0',
  `photo_file_size` int(11) default NULL,
  `user_id` int(11) default NULL,
  `library_card` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_students_on_admission_no` (`admission_no`(10)),
  KEY `index_students_on_first_name_and_middle_name_and_last_name` (`first_name`(10),`middle_name`(10),`last_name`(10)),
  KEY `index_students_on_batch_id` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` (`id`,`admission_no`,`class_roll_no`,`admission_date`,`first_name`,`middle_name`,`last_name`,`batch_id`,`date_of_birth`,`gender`,`blood_group`,`birth_place`,`nationality_id`,`language`,`religion`,`student_category_id`,`address_line1`,`address_line2`,`city`,`state`,`pin_code`,`country_id`,`phone1`,`phone2`,`email`,`immediate_contact_id`,`is_sms_enabled`,`photo_file_name`,`photo_content_type`,`photo_data`,`status_description`,`is_active`,`is_deleted`,`created_at`,`updated_at`,`has_paid_fees`,`photo_file_size`,`user_id`,`library_card`) VALUES 
 (1,'001',NULL,'2020-01-28','DOMINGOS','','FAUSTO',1,'2015-01-28','m','','',5,'','',NULL,'','','','','',5,'','','',NULL,1,NULL,NULL,NULL,NULL,1,0,'2020-01-28 21:47:44','2020-01-29 21:54:31',1,NULL,2,NULL),
 (2,'002',NULL,'2020-01-29','Manuel ','','Franco',1,'2015-01-29','m','','',5,'','',NULL,'','','','','',5,'','','',NULL,1,NULL,NULL,NULL,NULL,1,0,'2020-01-29 22:09:29','2020-01-29 22:09:29',0,NULL,3,NULL),
 (3,'003',NULL,'2020-01-29','Manuel ','','Franco',1,'2015-01-29','m','','',5,'','',NULL,'','','','','',5,'','','',NULL,1,NULL,NULL,NULL,NULL,1,0,'2020-01-29 22:10:38','2020-01-29 22:10:38',0,NULL,4,NULL),
 (4,'004',NULL,'2020-01-30','GOMES','','ANTUNES',2,'2015-01-30','m','','',5,'','',NULL,'','','','','',5,'','','',NULL,1,NULL,NULL,NULL,NULL,1,0,'2020-01-30 08:51:37','2020-01-30 08:51:37',0,NULL,5,NULL),
 (5,'005',NULL,'2020-01-30','RODRIGUES','','GOMES',2,'2015-01-30','m','','',5,'','',1,'','','','','',5,'','','',NULL,1,NULL,NULL,NULL,NULL,1,0,'2020-01-30 09:23:04','2020-01-30 09:25:45',0,NULL,6,NULL),
 (6,'006',NULL,'2020-01-30','JOTA','','XAVIER',2,'2015-01-30','m','','',5,'','',NULL,'','','','','',5,'','','',NULL,1,NULL,NULL,NULL,NULL,1,0,'2020-01-30 09:38:31','2020-01-30 09:38:31',0,NULL,7,NULL),
 (7,'007',NULL,'2020-01-30','LIMA','','SAMUEL',1,'2015-01-30','m','','',5,'','',NULL,'','','','','',5,'','','',NULL,1,NULL,NULL,NULL,NULL,1,0,'2020-01-30 09:54:57','2020-01-30 09:54:57',0,NULL,8,NULL),
 (8,'008',NULL,'2020-02-04','WALTER ','','JOTA',1,'2015-02-04','m','','',5,'','',1,'','','','','',5,'','','',NULL,1,NULL,NULL,NULL,NULL,1,0,'2020-02-04 20:21:09','2020-02-04 20:21:09',0,NULL,9,NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;


--
-- Definition of table `students_subjects`
--

DROP TABLE IF EXISTS `students_subjects`;
CREATE TABLE `students_subjects` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `subject_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_students_subjects_on_student_id_and_subject_id` (`student_id`,`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students_subjects`
--

/*!40000 ALTER TABLE `students_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `students_subjects` ENABLE KEYS */;


--
-- Definition of table `subject_leaves`
--

DROP TABLE IF EXISTS `subject_leaves`;
CREATE TABLE `subject_leaves` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `month_date` date default NULL,
  `subject_id` int(11) default NULL,
  `employee_id` int(11) default NULL,
  `class_timing_id` int(11) default NULL,
  `reason` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `batch_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_subject_leaves_on_month_date_and_subject_id_and_batch_id` (`month_date`,`subject_id`,`batch_id`),
  KEY `index_subject_leaves_on_student_id_and_batch_id` (`student_id`,`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject_leaves`
--

/*!40000 ALTER TABLE `subject_leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject_leaves` ENABLE KEYS */;


--
-- Definition of table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `code` varchar(255) collate utf8_unicode_ci default NULL,
  `batch_id` int(11) default NULL,
  `no_exams` tinyint(1) default '0',
  `max_weekly_classes` int(11) default NULL,
  `elective_group_id` int(11) default NULL,
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `credit_hours` decimal(15,2) default NULL,
  `prefer_consecutive` tinyint(1) default '0',
  `amount` decimal(15,2) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_subjects_on_batch_id_and_elective_group_id_and_is_deleted` (`batch_id`,`elective_group_id`,`is_deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;


--
-- Definition of table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL auto_increment,
  `tag_id` int(11) default NULL,
  `taggable_id` int(11) default NULL,
  `taggable_type` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `school_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `index_taggings_on_taggable_id_and_taggable_type` (`taggable_id`,`taggable_type`),
  KEY `index_taggings_on_school_id` (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taggings`
--

/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;


--
-- Definition of table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `school_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_tags_on_school_id` (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`,`name`,`school_id`) VALUES 
 (1,'Reference Book',NULL);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;


--
-- Definition of table `time_zones`
--

DROP TABLE IF EXISTS `time_zones`;
CREATE TABLE `time_zones` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `code` varchar(255) collate utf8_unicode_ci default NULL,
  `difference_type` varchar(255) collate utf8_unicode_ci default NULL,
  `time_difference` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `time_zones`
--

/*!40000 ALTER TABLE `time_zones` DISABLE KEYS */;
INSERT INTO `time_zones` (`id`,`name`,`code`,`difference_type`,`time_difference`,`created_at`,`updated_at`) VALUES 
 (1,'Greenwich Mean Time','GMT','+',0,'2020-01-28 19:05:35','2020-01-28 19:05:35'),
 (2,'European Central Time','ECT','+',3600,'2020-01-28 19:05:35','2020-01-28 19:05:35'),
 (3,'Eastern European Time','EET','+',7200,'2020-01-28 19:05:35','2020-01-28 19:05:35'),
 (4,'Arabic Standard Time','ART','+',7200,'2020-01-28 19:05:35','2020-01-28 19:05:35'),
 (5,'Eastern African Time','EAT','+',10800,'2020-01-28 19:05:35','2020-01-28 19:05:35'),
 (6,'Middle East Time','MET','+',12600,'2020-01-28 19:05:35','2020-01-28 19:05:35'),
 (7,'Near East Time','NET','+',14400,'2020-01-28 19:05:35','2020-01-28 19:05:35'),
 (8,'Pakistan Lahore Time','PLT','+',18000,'2020-01-28 19:05:35','2020-01-28 19:05:35'),
 (9,'Indian Standard Time','IST','+',19800,'2020-01-28 19:05:35','2020-01-28 19:05:35'),
 (10,'Bangladesh Standard Time','BST','+',21600,'2020-01-28 19:05:35','2020-01-28 19:05:35'),
 (11,'Vietnam Standard Time','VST','+',25200,'2020-01-28 19:05:36','2020-01-28 19:05:36'),
 (12,'China Taiwan Time','CTT','+',28800,'2020-01-28 19:05:36','2020-01-28 19:05:36'),
 (13,'Japan Standard Time','JST','+',32400,'2020-01-28 19:05:36','2020-01-28 19:05:36'),
 (14,'Australia Central Time','ACT','+',34200,'2020-01-28 19:05:36','2020-01-28 19:05:36'),
 (15,'Australia Eastern Time','AET','+',36000,'2020-01-28 19:05:36','2020-01-28 19:05:36'),
 (16,'Solomon Standard Time','SST','+',39600,'2020-01-28 19:05:36','2020-01-28 19:05:36'),
 (17,'New Zealand Standard Time','NST','+',43200,'2020-01-28 19:05:36','2020-01-28 19:05:36'),
 (18,'Midway Islands Time','MIT','-',39600,'2020-01-28 19:05:36','2020-01-28 19:05:36'),
 (19,'Hawaii Standard Time','HST','-',36000,'2020-01-28 19:05:36','2020-01-28 19:05:36'),
 (20,'Alaska Standard Time','AST','-',32400,'2020-01-28 19:05:36','2020-01-28 19:05:36'),
 (21,'Pacific Standard Time','PST','-',28800,'2020-01-28 19:05:36','2020-01-28 19:05:36'),
 (22,'Phoenix Standard Time','PNT','-',25200,'2020-01-28 19:05:36','2020-01-28 19:05:36'),
 (23,'Mountain Standard Time','MST','-',25200,'2020-01-28 19:05:36','2020-01-28 19:05:36'),
 (24,'Central Standard Time','CST','-',21600,'2020-01-28 19:05:36','2020-01-28 19:05:36'),
 (25,'Eastern Standard Time','EST','-',18000,'2020-01-28 19:05:36','2020-01-28 19:05:36'),
 (26,'Indiana Eastern Standard Time','IET','-',18000,'2020-01-28 19:05:36','2020-01-28 19:05:36'),
 (27,'Puerto Rico and US Virgin Islands Time','PRT','-',14400,'2020-01-28 19:05:36','2020-01-28 19:05:36'),
 (28,'Canada Newfoundland Time','CNT','-',12600,'2020-01-28 19:05:36','2020-01-28 19:05:36'),
 (29,'Argentina Standard Time','AGT','-',10800,'2020-01-28 19:05:37','2020-01-28 19:05:37'),
 (30,'Brazil Eastern Time','BET','-',10800,'2020-01-28 19:05:37','2020-01-28 19:05:37'),
 (31,'Central African Time','CAT','-',3600,'2020-01-28 19:05:37','2020-01-28 19:05:37');
/*!40000 ALTER TABLE `time_zones` ENABLE KEYS */;


--
-- Definition of table `timetable_entries`
--

DROP TABLE IF EXISTS `timetable_entries`;
CREATE TABLE `timetable_entries` (
  `id` int(11) NOT NULL auto_increment,
  `batch_id` int(11) default NULL,
  `weekday_id` int(11) default NULL,
  `class_timing_id` int(11) default NULL,
  `subject_id` int(11) default NULL,
  `employee_id` int(11) default NULL,
  `timetable_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_timetable_entries_on_timetable_id` (`timetable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `timetable_entries`
--

/*!40000 ALTER TABLE `timetable_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetable_entries` ENABLE KEYS */;


--
-- Definition of table `timetables`
--

DROP TABLE IF EXISTS `timetables`;
CREATE TABLE `timetables` (
  `id` int(11) NOT NULL auto_increment,
  `start_date` date default NULL,
  `end_date` date default NULL,
  `is_active` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `by_start_and_end` (`start_date`,`end_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `timetables`
--

/*!40000 ALTER TABLE `timetables` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetables` ENABLE KEYS */;


--
-- Definition of table `user_events`
--

DROP TABLE IF EXISTS `user_events`;
CREATE TABLE `user_events` (
  `id` int(11) NOT NULL auto_increment,
  `event_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_events`
--

/*!40000 ALTER TABLE `user_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_events` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) collate utf8_unicode_ci default NULL,
  `first_name` varchar(255) collate utf8_unicode_ci default NULL,
  `last_name` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `admin` tinyint(1) default NULL,
  `student` tinyint(1) default NULL,
  `employee` tinyint(1) default NULL,
  `hashed_password` varchar(255) collate utf8_unicode_ci default NULL,
  `salt` varchar(255) collate utf8_unicode_ci default NULL,
  `reset_password_code` varchar(255) collate utf8_unicode_ci default NULL,
  `reset_password_code_until` datetime default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `parent` tinyint(1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_users_on_username` (`username`(10))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`username`,`first_name`,`last_name`,`email`,`admin`,`student`,`employee`,`hashed_password`,`salt`,`reset_password_code`,`reset_password_code_until`,`created_at`,`updated_at`,`parent`) VALUES 
 (1,'admin','Anacleto de','Morais','noreply@fedena.com',1,0,0,'e97ceb475bbd8001dcc317839481c581db9478e4','BtETSFKW',NULL,NULL,'2020-01-28 19:05:43','2020-02-13 08:57:35',NULL),
 (2,'001','DOMINGOS','FAUSTO','',0,1,0,'30f0b1a67ee235ae29c12484f87fcd635938b428','GW32LM3O',NULL,NULL,'2020-01-28 21:47:44','2020-03-23 12:40:23',NULL),
 (3,'002','Manuel ','Franco','',0,1,0,'4fcbac599c3a820f047a309fc0db8b6c8ce21764','VOP3VC3s',NULL,NULL,'2020-01-29 22:09:29','2020-01-29 22:09:29',NULL),
 (4,'003','Manuel ','Franco','',0,1,0,'2e2a7a61151c86590256462cbc5e9cf889ebd93f','R7kdQv1r',NULL,NULL,'2020-01-29 22:10:38','2020-01-29 22:10:38',NULL),
 (5,'004','GOMES','ANTUNES','',0,1,0,'4c3da181120bbc493fb47767e86acaffce8fc8f9','ij4c54Oh',NULL,NULL,'2020-01-30 08:51:37','2020-01-30 08:51:37',NULL),
 (6,'005','RODRIGUES','GOMES','',0,1,0,'dbf04d59d725d6cfca021a798b271163d9b6faf4','Y2btk65p',NULL,NULL,'2020-01-30 09:23:04','2020-01-30 09:23:04',NULL),
 (7,'006','JOTA','XAVIER','',0,1,0,'46569671ce052b6076b1094885f3dd4e2997f9a6','74UO95Mm',NULL,NULL,'2020-01-30 09:38:31','2020-01-30 09:38:31',NULL),
 (8,'007','LIMA','SAMUEL','',0,1,0,'4d1919392549f6436b3cd42231b48b54fa4e60e0','BApSkAj5',NULL,NULL,'2020-01-30 09:54:57','2020-01-30 09:54:57',NULL),
 (9,'008','WALTER ','JOTA','',0,1,0,'0bc093fc534c1fb4d5d1bc287e884fcbdb073029','6eeaNQdR',NULL,NULL,'2020-02-04 20:21:09','2020-02-04 20:28:24',NULL),
 (10,'E1','TANDO','GOMES','',0,0,1,'0d952d68df12e41cfb3341b6825bfef457b48e57','UHv5ey9J',NULL,NULL,'2020-02-04 21:33:06','2020-02-04 21:33:06',NULL),
 (11,'E3','ROMELU','FERNANDO','',0,0,1,'0c20729196972873ab2ecdf14ff62dece6284dc1','xCbrcgYP',NULL,NULL,'2020-02-04 21:45:11','2020-02-04 21:45:11',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


--
-- Definition of table `weekdays`
--

DROP TABLE IF EXISTS `weekdays`;
CREATE TABLE `weekdays` (
  `id` int(11) NOT NULL auto_increment,
  `batch_id` int(11) default NULL,
  `weekday` varchar(255) collate utf8_unicode_ci default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `sort_order` int(11) default NULL,
  `day_of_week` int(11) default NULL,
  `is_deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `index_weekdays_on_batch_id` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `weekdays`
--

/*!40000 ALTER TABLE `weekdays` DISABLE KEYS */;
INSERT INTO `weekdays` (`id`,`batch_id`,`weekday`,`name`,`sort_order`,`day_of_week`,`is_deleted`) VALUES 
 (1,NULL,'1',NULL,NULL,1,0),
 (2,NULL,'2',NULL,NULL,2,0),
 (3,NULL,'3',NULL,NULL,3,0),
 (4,NULL,'4',NULL,NULL,4,0),
 (5,NULL,'5',NULL,NULL,5,0);
/*!40000 ALTER TABLE `weekdays` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
