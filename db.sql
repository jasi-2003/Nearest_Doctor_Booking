/*
SQLyog Community v13.0.1 (64 bit)
MySQL - 8.0.35 : Database - nearestdoctorbooking
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nearestdoctorbooking` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `nearestdoctorbooking`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add doctor_table',7,'add_doctor_table'),
(26,'Can change doctor_table',7,'change_doctor_table'),
(27,'Can delete doctor_table',7,'delete_doctor_table'),
(28,'Can view doctor_table',7,'view_doctor_table'),
(29,'Can add login_table',8,'add_login_table'),
(30,'Can change login_table',8,'change_login_table'),
(31,'Can delete login_table',8,'delete_login_table'),
(32,'Can view login_table',8,'view_login_table'),
(33,'Can add patient_table',9,'add_patient_table'),
(34,'Can change patient_table',9,'change_patient_table'),
(35,'Can delete patient_table',9,'delete_patient_table'),
(36,'Can view patient_table',9,'view_patient_table'),
(37,'Can add feedback_table',10,'add_feedback_table'),
(38,'Can change feedback_table',10,'change_feedback_table'),
(39,'Can delete feedback_table',10,'delete_feedback_table'),
(40,'Can view feedback_table',10,'view_feedback_table'),
(41,'Can add emergencyrequest_table',11,'add_emergencyrequest_table'),
(42,'Can change emergencyrequest_table',11,'change_emergencyrequest_table'),
(43,'Can delete emergencyrequest_table',11,'delete_emergencyrequest_table'),
(44,'Can view emergencyrequest_table',11,'view_emergencyrequest_table'),
(45,'Can add complaint_table',12,'add_complaint_table'),
(46,'Can change complaint_table',12,'change_complaint_table'),
(47,'Can delete complaint_table',12,'delete_complaint_table'),
(48,'Can view complaint_table',12,'view_complaint_table'),
(49,'Can add chat_table',13,'add_chat_table'),
(50,'Can change chat_table',13,'change_chat_table'),
(51,'Can delete chat_table',13,'delete_chat_table'),
(52,'Can view chat_table',13,'view_chat_table'),
(53,'Can add appoiment_table',14,'add_appoiment_table'),
(54,'Can change appoiment_table',14,'change_appoiment_table'),
(55,'Can delete appoiment_table',14,'delete_appoiment_table'),
(56,'Can view appoiment_table',14,'view_appoiment_table'),
(57,'Can add rating_table',15,'add_rating_table'),
(58,'Can change rating_table',15,'change_rating_table'),
(59,'Can delete rating_table',15,'delete_rating_table'),
(60,'Can view rating_table',15,'view_rating_table'),
(61,'Can add timeshedule_table',16,'add_timeshedule_table'),
(62,'Can change timeshedule_table',16,'change_timeshedule_table'),
(63,'Can delete timeshedule_table',16,'delete_timeshedule_table'),
(64,'Can view timeshedule_table',16,'view_timeshedule_table'),
(65,'Can add viewprescription_table',17,'add_viewprescription_table'),
(66,'Can change viewprescription_table',17,'change_viewprescription_table'),
(67,'Can delete viewprescription_table',17,'delete_viewprescription_table'),
(68,'Can view viewprescription_table',17,'view_viewprescription_table');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user` */

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(14,'MEDICARE','appoiment_table'),
(13,'MEDICARE','chat_table'),
(12,'MEDICARE','complaint_table'),
(7,'MEDICARE','doctor_table'),
(11,'MEDICARE','emergencyrequest_table'),
(10,'MEDICARE','feedback_table'),
(8,'MEDICARE','login_table'),
(9,'MEDICARE','patient_table'),
(15,'MEDICARE','rating_table'),
(16,'MEDICARE','timeshedule_table'),
(17,'MEDICARE','viewprescription_table'),
(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'MEDICARE','0001_initial','2023-12-13 09:21:01.194337'),
(2,'contenttypes','0001_initial','2023-12-13 09:21:01.507973'),
(3,'auth','0001_initial','2023-12-13 09:21:06.304845'),
(4,'admin','0001_initial','2023-12-13 09:21:07.657890'),
(5,'admin','0002_logentry_remove_auto_add','2023-12-13 09:21:07.696756'),
(6,'admin','0003_logentry_add_action_flag_choices','2023-12-13 09:21:07.717432'),
(7,'contenttypes','0002_remove_content_type_name','2023-12-13 09:21:08.191764'),
(8,'auth','0002_alter_permission_name_max_length','2023-12-13 09:21:08.749599'),
(9,'auth','0003_alter_user_email_max_length','2023-12-13 09:21:08.915819'),
(10,'auth','0004_alter_user_username_opts','2023-12-13 09:21:08.959376'),
(11,'auth','0005_alter_user_last_login_null','2023-12-13 09:21:09.493807'),
(12,'auth','0006_require_contenttypes_0002','2023-12-13 09:21:09.518813'),
(13,'auth','0007_alter_validators_add_error_messages','2023-12-13 09:21:09.587633'),
(14,'auth','0008_alter_user_username_max_length','2023-12-13 09:21:10.212398'),
(15,'auth','0009_alter_user_last_name_max_length','2023-12-13 09:21:10.745304'),
(16,'auth','0010_alter_group_name_max_length','2023-12-13 09:21:10.924342'),
(17,'auth','0011_update_proxy_permissions','2023-12-13 09:21:11.024902'),
(18,'auth','0012_alter_user_first_name_max_length','2023-12-13 09:21:11.536926'),
(19,'sessions','0001_initial','2023-12-13 09:21:11.871090'),
(20,'MEDICARE','0002_rating_table','2023-12-13 11:49:34.519811'),
(21,'MEDICARE','0003_timeshedule_table','2023-12-14 10:34:20.220687'),
(22,'MEDICARE','0004_viewprescription_table','2023-12-15 05:14:58.260066'),
(23,'MEDICARE','0005_appoiment_table_doctor','2023-12-15 06:24:16.432129'),
(24,'MEDICARE','0006_auto_20231215_1634','2023-12-15 11:04:12.341211'),
(25,'MEDICARE','0007_auto_20231215_1636','2023-12-15 11:06:16.255510'),
(26,'MEDICARE','0008_auto_20231215_1728','2023-12-15 12:00:53.730859'),
(27,'MEDICARE','0009_alter_viewprescription_table_patientid','2023-12-15 12:02:42.278022'),
(28,'MEDICARE','0010_patient_table_image','2023-12-17 10:42:22.595404'),
(29,'MEDICARE','0011_delete_emergencyrequest_table','2024-02-15 06:38:52.982031');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('2fj65fc7ahm8yfi2dlb0o43fklpatsy0','eyJzciI6MiwibGlkIjoyMCwiYWlkIjoxLCJlZCI6MTUsImVzIjo2fQ:1rESL8:4GpgQWY_Rlh9RlI4Cjoi5mC0FQ0Tv5-eBjBCyQ53OJU','2023-12-30 10:56:14.303350'),
('mzyrupf6py46k59blbiosvmibege2onv','eyJsaWQiOjIwLCJlcyI6OH0:1rI7tr:mfU8e9-_yq_HI7FrW6G2jPzFlJ5HfD22Q2BVi9kbebA','2024-01-09 13:55:15.282762'),
('qotwqtpyzx90g8wsn714s8ppt052jevy','eyJlZCI6MTcsImxpZCI6MjEsImFpZCI6Mn0:1raXfp:mkno0hAP8BKJiFWh7nB6wD9FXJ6PU-C_8o9ZUd4IS04','2024-02-29 09:04:53.957065'),
('thyd8zh3khf9zntjqn6qebg9sfz1rl5i','eyJsaWQiOjIxfQ:1raY9Q:9A_E4gFA7eQGW65X3VUaHrtt3PZ5Al-njKbM8k2PcgY','2024-02-29 09:35:28.871236');

/*Table structure for table `medicare_appoiment_table` */

DROP TABLE IF EXISTS `medicare_appoiment_table`;

CREATE TABLE `medicare_appoiment_table` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `status` varchar(100) NOT NULL,
  `Patient_id` bigint NOT NULL,
  `doctor_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MEDICARE_appoiment_t_Patient_id_61a74ced_fk_MEDICARE_` (`Patient_id`),
  KEY `MEDICARE_appoiment_t_doctor_id_79909fa3_fk_MEDICARE_` (`doctor_id`),
  CONSTRAINT `MEDICARE_appoiment_t_doctor_id_79909fa3_fk_MEDICARE_` FOREIGN KEY (`doctor_id`) REFERENCES `medicare_doctor_table` (`id`),
  CONSTRAINT `MEDICARE_appoiment_t_Patient_id_61a74ced_fk_MEDICARE_` FOREIGN KEY (`Patient_id`) REFERENCES `medicare_patient_table` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `medicare_appoiment_table` */

insert  into `medicare_appoiment_table`(`id`,`date`,`time`,`status`,`Patient_id`,`doctor_id`) values 
(2,'2024-02-15','01:00:00.000000','pending',1,17);

/*Table structure for table `medicare_chat_table` */

DROP TABLE IF EXISTS `medicare_chat_table`;

CREATE TABLE `medicare_chat_table` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Message` longtext NOT NULL,
  `Date` date NOT NULL,
  `Fromid_id` bigint NOT NULL,
  `Toid_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MEDICARE_chat_table_Fromid_id_08fc9f30_fk_MEDICARE_` (`Fromid_id`),
  KEY `MEDICARE_chat_table_Toid_id_1f607fc1_fk_MEDICARE_login_table_id` (`Toid_id`),
  CONSTRAINT `MEDICARE_chat_table_Fromid_id_08fc9f30_fk_MEDICARE_` FOREIGN KEY (`Fromid_id`) REFERENCES `medicare_login_table` (`id`),
  CONSTRAINT `MEDICARE_chat_table_Toid_id_1f607fc1_fk_MEDICARE_login_table_id` FOREIGN KEY (`Toid_id`) REFERENCES `medicare_login_table` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `medicare_chat_table` */

insert  into `medicare_chat_table`(`id`,`Message`,`Date`,`Fromid_id`,`Toid_id`) values 
(1,'hfgj','2023-12-17',20,2),
(2,'dfdgd','2023-12-17',20,2),
(3,'scscscsc','2023-12-17',20,2),
(4,'csdcd','2023-12-17',2,20),
(5,'HLO','2023-12-25',20,2),
(6,'hlo','2024-02-01',21,2),
(7,'hj','2024-02-15',20,2),
(8,'hdff','2024-02-15',21,2),
(9,'hi sir','2024-02-15',21,2),
(10,'what is your prblm','2024-02-15',21,2);

/*Table structure for table `medicare_complaint_table` */

DROP TABLE IF EXISTS `medicare_complaint_table`;

CREATE TABLE `medicare_complaint_table` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `complints` longtext NOT NULL,
  `Date` date NOT NULL,
  `Replay` varchar(100) NOT NULL,
  `Doctor_id` bigint NOT NULL,
  `Patient_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MEDICARE_complaint_t_Doctor_id_b41fd66c_fk_MEDICARE_` (`Doctor_id`),
  KEY `MEDICARE_complaint_t_Patient_id_b5215632_fk_MEDICARE_` (`Patient_id`),
  CONSTRAINT `MEDICARE_complaint_t_Doctor_id_b41fd66c_fk_MEDICARE_` FOREIGN KEY (`Doctor_id`) REFERENCES `medicare_doctor_table` (`id`),
  CONSTRAINT `MEDICARE_complaint_t_Patient_id_b5215632_fk_MEDICARE_` FOREIGN KEY (`Patient_id`) REFERENCES `medicare_patient_table` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `medicare_complaint_table` */

/*Table structure for table `medicare_doctor_table` */

DROP TABLE IF EXISTS `medicare_doctor_table`;

CREATE TABLE `medicare_doctor_table` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `Phone` bigint NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Qualification` varchar(90) NOT NULL,
  `Email` varchar(90) NOT NULL,
  `LOGIN_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MEDICARE_doctor_tabl_LOGIN_id_3cb80000_fk_MEDICARE_` (`LOGIN_id`),
  CONSTRAINT `MEDICARE_doctor_tabl_LOGIN_id_3cb80000_fk_MEDICARE_` FOREIGN KEY (`LOGIN_id`) REFERENCES `medicare_login_table` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `medicare_doctor_table` */

insert  into `medicare_doctor_table`(`id`,`Name`,`Image`,`DOB`,`Phone`,`Gender`,`Qualification`,`Email`,`LOGIN_id`) values 
(17,'kammappa','download.jpg','1988-02-07',23874586789,'Male','mbbs','kammappa@gmail.com',21);

/*Table structure for table `medicare_feedback_table` */

DROP TABLE IF EXISTS `medicare_feedback_table`;

CREATE TABLE `medicare_feedback_table` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Feedback` longtext NOT NULL,
  `Date` date NOT NULL,
  `Doctor_id` bigint NOT NULL,
  `Patient_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MEDICARE_feedback_ta_Doctor_id_380c4d2d_fk_MEDICARE_` (`Doctor_id`),
  KEY `MEDICARE_feedback_ta_Patient_id_b2309cf1_fk_MEDICARE_` (`Patient_id`),
  CONSTRAINT `MEDICARE_feedback_ta_Doctor_id_380c4d2d_fk_MEDICARE_` FOREIGN KEY (`Doctor_id`) REFERENCES `medicare_doctor_table` (`id`),
  CONSTRAINT `MEDICARE_feedback_ta_Patient_id_b2309cf1_fk_MEDICARE_` FOREIGN KEY (`Patient_id`) REFERENCES `medicare_patient_table` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `medicare_feedback_table` */

/*Table structure for table `medicare_login_table` */

DROP TABLE IF EXISTS `medicare_login_table`;

CREATE TABLE `medicare_login_table` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(90) NOT NULL,
  `password` varchar(80) NOT NULL,
  `type` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `medicare_login_table` */

insert  into `medicare_login_table`(`id`,`username`,`password`,`type`) values 
(1,'admin','admin','admin'),
(2,'user1','123','user'),
(20,'febi','1234','doctor'),
(21,'kammappa','1234567','doctor');

/*Table structure for table `medicare_patient_table` */

DROP TABLE IF EXISTS `medicare_patient_table`;

CREATE TABLE `medicare_patient_table` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `First_name` varchar(80) NOT NULL,
  `Last_name` varchar(80) NOT NULL,
  `Gender` varchar(80) NOT NULL,
  `DOB` date NOT NULL,
  `Place` varchar(70) NOT NULL,
  `Post` varchar(80) NOT NULL,
  `Pin` bigint NOT NULL,
  `Phone` bigint NOT NULL,
  `Email` varchar(70) NOT NULL,
  `LOGIN_id` bigint NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MEDICARE_patient_tab_LOGIN_id_39b19d65_fk_MEDICARE_` (`LOGIN_id`),
  CONSTRAINT `MEDICARE_patient_tab_LOGIN_id_39b19d65_fk_MEDICARE_` FOREIGN KEY (`LOGIN_id`) REFERENCES `medicare_login_table` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `medicare_patient_table` */

insert  into `medicare_patient_table`(`id`,`First_name`,`Last_name`,`Gender`,`DOB`,`Place`,`Post`,`Pin`,`Phone`,`Email`,`LOGIN_id`,`image`) values 
(1,'Jasir','Hussain','Male','2023-12-13','clt','clt',654321,9876543215,'asdfghj',2,'download_MGlWSwk.png');

/*Table structure for table `medicare_rating_table` */

DROP TABLE IF EXISTS `medicare_rating_table`;

CREATE TABLE `medicare_rating_table` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Rating` varchar(90) NOT NULL,
  `Riview` varchar(90) NOT NULL,
  `Date` varchar(90) NOT NULL,
  `Doctor_id` bigint NOT NULL,
  `User_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MEDICARE_rating_tabl_Doctor_id_fb97d166_fk_MEDICARE_` (`Doctor_id`),
  KEY `MEDICARE_rating_tabl_User_id_213acf7c_fk_MEDICARE_` (`User_id`),
  CONSTRAINT `MEDICARE_rating_tabl_Doctor_id_fb97d166_fk_MEDICARE_` FOREIGN KEY (`Doctor_id`) REFERENCES `medicare_doctor_table` (`id`),
  CONSTRAINT `MEDICARE_rating_tabl_User_id_213acf7c_fk_MEDICARE_` FOREIGN KEY (`User_id`) REFERENCES `medicare_patient_table` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `medicare_rating_table` */

/*Table structure for table `medicare_timeshedule_table` */

DROP TABLE IF EXISTS `medicare_timeshedule_table`;

CREATE TABLE `medicare_timeshedule_table` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `From_time` time(6) NOT NULL,
  `To_time` time(6) NOT NULL,
  `Day` varchar(90) NOT NULL,
  `Doctor_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MEDICARE_timeshedule_Doctor_id_edff5e85_fk_MEDICARE_` (`Doctor_id`),
  CONSTRAINT `MEDICARE_timeshedule_Doctor_id_edff5e85_fk_MEDICARE_` FOREIGN KEY (`Doctor_id`) REFERENCES `medicare_doctor_table` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `medicare_timeshedule_table` */

insert  into `medicare_timeshedule_table`(`id`,`From_time`,`To_time`,`Day`,`Doctor_id`) values 
(10,'14:34:00.000000','16:44:00.000000','Sunday',17),
(11,'15:00:00.000000','17:00:00.000000','Wednesday',17),
(12,'23:48:00.000000','17:48:00.000000','Wednesday',17);

/*Table structure for table `medicare_viewprescription_table` */

DROP TABLE IF EXISTS `medicare_viewprescription_table`;

CREATE TABLE `medicare_viewprescription_table` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `prescription` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `doctor_id` bigint NOT NULL,
  `Patientid_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MEDICARE_viewprescri_doctor_id_f068bc28_fk_MEDICARE_` (`doctor_id`),
  KEY `MEDICARE_viewprescri_Patientid_id_898d1aff_fk_MEDICARE_` (`Patientid_id`),
  CONSTRAINT `MEDICARE_viewprescri_doctor_id_f068bc28_fk_MEDICARE_` FOREIGN KEY (`doctor_id`) REFERENCES `medicare_doctor_table` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `medicare_viewprescription_table` */

insert  into `medicare_viewprescription_table`(`id`,`prescription`,`date`,`doctor_id`,`Patientid_id`) values 
(4,'qwertyasdfgzx','2024-02-15 13:40:15.768760',17,1),
(5,'','2024-02-15 14:22:56.952115',17,1),
(6,'asdfgh','2024-02-15 14:23:27.056614',17,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
