/*
 Navicat MySQL Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : bime

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 17/03/2019 04:51:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id_fk` int(11) NOT NULL,
  `patient_id_fk` int(11) NOT NULL,
  `kinship` enum('سرپرست','همسر','فرزند') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'سرپرست',
  `file_type` enum('نقص عضو','بیماری','فوت') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'نقص عضو',
  `miladi_accident_date` date NULL DEFAULT NULL,
  `shamsi_accident_date` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `miladi_send_date` date NULL DEFAULT NULL,
  `shamsi_send_date` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_state` enum('ارسال شده','بایگانی شده','امحا شده','تحویل داده شده') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'ارسال شده',
  `folder_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `old_file_number` int(11) NULL DEFAULT NULL,
  `percentage_of_compensation` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shamsi_delivered_date` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `miladi_delivered_date` date NULL DEFAULT NULL,
  `explained` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`file_id`) USING BTREE,
  INDEX `fki_o`(`patient_id_fk`) USING BTREE,
  INDEX `file_person_id_fk_fkey`(`person_id_fk`) USING BTREE,
  CONSTRAINT `file_patient_id_fk_fkey` FOREIGN KEY (`patient_id_fk`) REFERENCES `person` (`person_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `file_person_id_fk_fkey` FOREIGN KEY (`person_id_fk`) REFERENCES `person` (`person_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of file
-- ----------------------------
BEGIN;
INSERT INTO `file` VALUES (1, 1, 2, 'همسر', 'نقص عضو', '2018-10-12', '1397/7/20', '2019-01-07', '1397/10/17', 'امحا شده', '', NULL, NULL, '1397/11/18', '2019-02-07', 'نامبرده'), (2, 3, 3, 'سرپرست', 'نقص عضو', '2018-05-05', '1397/2/15', '2019-01-07', '1397/10/17', 'امحا شده', '', NULL, NULL, NULL, NULL, NULL), (3, 4, 4, 'سرپرست', 'نقص عضو', '2019-01-02', '1397/10/12', '2019-01-07', '1397/10/17', 'امحا شده', '', NULL, NULL, NULL, NULL, NULL), (4, 5, 6, 'همسر', 'بیماری', NULL, '', '2019-01-07', '1397/10/17', 'تحویل داده شده', '', NULL, NULL, '1397/11/18', '2019-02-07', NULL), (5, 7, 8, 'همسر', 'بیماری', NULL, '', '2019-01-07', '1397/10/17', 'بایگانی شده', '2', NULL, NULL, NULL, NULL, NULL), (6, 9, 9, 'سرپرست', 'نقص عضو', '2018-05-19', '1397/2/29', '2019-01-07', '1397/10/17', 'بایگانی شده', '2', NULL, NULL, NULL, NULL, NULL), (7, 10, 11, 'فرزند', 'بیماری', NULL, '', '2019-01-07', '1397/10/17', 'بایگانی شده', '2', NULL, NULL, NULL, NULL, NULL), (8, 12, 12, 'سرپرست', 'نقص عضو', '2018-10-07', '1397/7/15', '2019-01-07', '1397/10/17', 'بایگانی شده', '2', NULL, NULL, NULL, NULL, NULL), (9, 13, 14, 'فرزند', 'نقص عضو', '2018-11-11', '1397/8/20', '2019-01-10', '1397/10/20', 'بایگانی شده', '3', NULL, NULL, NULL, NULL, NULL), (10, 15, 15, 'سرپرست', 'نقص عضو', '2018-10-01', '1397/7/9', '2019-01-13', '1397/10/23', 'بایگانی شده', '3', NULL, NULL, NULL, NULL, NULL), (11, 16, 17, 'همسر', 'بیماری', NULL, '', '2019-01-14', '1397/10/24', 'بایگانی شده', '3', NULL, NULL, NULL, NULL, NULL), (12, 18, 18, 'سرپرست', 'نقص عضو', '2017-02-15', '1395/12/26', '2019-01-14', '1397/10/24', 'بایگانی شده', '3', NULL, NULL, NULL, NULL, NULL), (13, 20, 20, 'سرپرست', 'نقص عضو', '2016-05-13', '1395/2/24', '2019-01-15', '1397/10/25', 'بایگانی شده', '3', NULL, NULL, NULL, NULL, NULL), (14, 21, 21, 'سرپرست', 'نقص عضو', '2018-11-01', '1397/8/10', '2019-01-16', '1397/10/26', 'بایگانی شده', '3', NULL, NULL, NULL, NULL, NULL), (15, 22, 23, 'فرزند', 'نقص عضو', '2018-12-13', '1397/9/22', '2019-01-16', '1397/10/26', 'بایگانی شده', '3', NULL, NULL, NULL, NULL, NULL), (16, 24, 24, 'سرپرست', 'نقص عضو', '2017-11-24', '1396/9/3', '2019-01-16', '1397/10/26', 'بایگانی شده', '3', NULL, NULL, NULL, NULL, NULL), (17, 25, 25, 'سرپرست', 'نقص عضو', '2018-09-10', '1397/6/19', '2019-01-16', '1397/10/26', 'ارسال شده', NULL, NULL, NULL, NULL, NULL, NULL), (18, 26, 27, 'فرزند', 'نقص عضو', '2018-08-23', '1397/6/1', '2019-01-19', '1397/10/29', 'ارسال شده', NULL, NULL, NULL, NULL, NULL, NULL), (19, 28, 28, 'سرپرست', 'نقص عضو', '2018-10-14', '1397/7/22', '2019-01-20', '1397/10/30', 'ارسال شده', NULL, NULL, NULL, NULL, NULL, 'نامبرده هنگام پایین آمدن از پله دچار حادثه گردیده و از ناحیه زانوی پای چپ دچار مصدومیت گردیده است.'), (20, 29, 30, 'همسر', 'بیماری', NULL, '', '2019-01-20', '1397/10/30', 'ارسال شده', NULL, NULL, NULL, NULL, NULL, ''), (21, 31, 32, 'همسر', 'بیماری', NULL, '', '2019-01-20', '1397/10/30', 'ارسال شده', NULL, NULL, NULL, NULL, NULL, ''), (22, 33, 34, 'فرزند', 'نقص عضو', '2019-01-07', '1397/10/17', '2019-01-20', '1397/10/30', 'ارسال شده', NULL, NULL, NULL, NULL, NULL, 'فرزند نامبرده در حین بازی فوتبال از ناحیه مچ دست راست دچار مصدومیت گردیده است'), (23, 35, 36, 'فرزند', 'نقص عضو', '2019-01-18', '1397/10/28', '2019-01-20', '1397/10/30', 'ارسال شده', NULL, NULL, NULL, NULL, NULL, 'فرزند نامبرده در منزل از ناحیه دندان دچار مصدومیت گردیده است'), (24, 37, 38, 'همسر', 'نقص عضو', '2018-06-28', '1397/4/7', '2019-01-21', '1397/11/01', 'ارسال شده', NULL, NULL, NULL, NULL, NULL, 'همسر نامبرده از ناحیه ساق پای چپ دچار سوختگی شده است.'), (25, 39, 39, 'سرپرست', 'نقص عضو', '2018-10-16', '1397/7/24', '2019-01-21', '1397/11/01', 'ارسال شده', NULL, NULL, NULL, NULL, NULL, 'نامبرده در حال استراحت خدمتی از ناحیه انگشت شصت راست دچار مصدومیت شده است.');
COMMIT;

-- ----------------------------
-- Table structure for folder_name
-- ----------------------------
DROP TABLE IF EXISTS `folder_name`;
CREATE TABLE `folder_name`  (
  `foder_id` int(11) NOT NULL AUTO_INCREMENT,
  `folder_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`foder_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of folder_name
-- ----------------------------
BEGIN;
INSERT INTO `folder_name` VALUES (1, '1'), (2, '2'), (3, '3'), (4, '4'), (5, '5'), (6, '6'), (7, '7'), (8, '8'), (9, '9'), (10, '10'), (11, '11'), (12, '12'), (13, '13'), (14, '14');
COMMIT;

-- ----------------------------
-- Table structure for patient
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient`  (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_first_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `patient_last_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `patient_national_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `patient_shamsi_birthdate` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `patient_miladi_birthdate` date NULL DEFAULT NULL,
  `patient_shenasname_number` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `patient_father_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`patient_id`) USING BTREE,
  UNIQUE INDEX `patient_national_code_key`(`patient_national_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person`  (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_first_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `person_last_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `person_national_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `person_salary_number` decimal(16, 0) NULL DEFAULT NULL,
  `person_military_rank` enum('سرباز','سرباز دوم','سرباز یکم','سرجوخه','گروهبان سوم','گروهبان دوم','گروهبان یکم','استوار دوم','استوار یکم','ستوان سوم','ستوان دوم','ستوان یکم','سروان','سرگرد','سرهنگ دوم','سرهنگ','سرتیپ دوم','سرتیپ','سرلشکر','سپهبد','ارتشبد','کارمند','روحانی','بازنشسته') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `person_shamsi_birthdate` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `person_miladi_birthdate` date NULL DEFAULT NULL,
  `person_shenasname_number` bigint(20) NULL DEFAULT NULL,
  `person_father_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `person_phone_number` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `person_bank_number` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`person_id`) USING BTREE,
  UNIQUE INDEX `person_national_code_key`(`person_national_code`) USING BTREE,
  UNIQUE INDEX `person_salary_number_key`(`person_salary_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of person
-- ----------------------------
BEGIN;
INSERT INTO `person` VALUES (1, 'کیامرث', 'کریمی', '6109600611', 402822466, 'استوار یکم', '1356/6/20', '1977-09-11', 1017, 'محمدباقر', '09178675176', ''), (2, 'گردآفرین', 'آزمند', '5479949391', 12345, 'استوار دوم', '1364/10/20', '1986-01-10', 12, 'اکبر', '09123124123', NULL), (3, 'محمدعلی', 'رجبی', '6109804487', 402767133, 'سرهنگ', '1359/9/1', '1980-11-22', 390, 'ابراهیم', '09171775489', ''), (4, 'حمید', 'تقدسی نیا', '5329909201', 403117572, 'ستوان سوم', '1359/3/20', '1980-06-10', 2, 'علی', '09177742052', ''), (5, 'یوسف', 'ملائی', '3521086021', 402612400, 'ستوان یکم', '1355/1/23', '1976-04-12', 1, 'رمضان', '09173717074', '236160500032006'), (6, 'پری', 'حیدری', '3521106934', NULL, NULL, '1359/05/30', '1980-08-21', 14, 'امراله', NULL, NULL), (7, 'مهدی', 'قربانی دهنو', '2296923623', 400337032, 'سرگرد', '1358/6/7', '1979-08-29', 1079, 'حاجی باقر', '09183584875', '118600500038682'), (8, 'الهام', 'آهو خوش', '3255946557', NULL, NULL, '1363/3/6', '1984-05-27', 1421, 'سیاوش', NULL, NULL), (9, 'مهران', 'کشاورزی', '2360328867', 968016391, 'ستوان سوم', '1372/6/29', '1993-09-20', 2360328867, 'مسیح اله', '09175591867', ''), (10, 'مهدی', 'دشتدار', '3500951651', 403400877, 'ستوان یکم', '1360/3/27', '1981-06-17', 623, 'احمد', '09171768096', ''), (11, 'احمدرضا', 'دشتدار', '3490951972', NULL, NULL, '1391/8/11', '2012-11-01', 3490951972, 'مهدی', NULL, NULL), (12, 'رضا', 'نیکو', '5320055366', 967610407, 'سرباز', '1375/9/13', '1996-12-03', 5320055366, 'عباسعلی', '09910029544', ''), (13, 'جابر', 'محمدیان', '5329789109', 276042579, 'ستوان دوم', '1357/7/1', '1978-09-23', 3606, 'عوض', '09179709317', ''), (14, 'شاهرخ', 'محمدیان', '5320114141', NULL, NULL, '1385/6/16', '2006-09-07', 5320114141, 'جابر', NULL, NULL), (15, 'فرشاد', 'پازهر', '6000025505', 968279149, 'سرباز', '1371/10/10', '1992-12-31', 6000025505, 'اکبر', '09902309909', '015180518310400'), (16, 'اسماعیل', 'لشکری', '6109621099', 402978259, 'ستوان سوم', '1357/11/2', '1979-01-22', 861, 'ابراهیم', '09175280265', NULL), (17, 'زینب', 'بهروزی', '3539712828', NULL, NULL, '1361/05/10', '1982-08-01', 1325, 'منصور', NULL, NULL), (18, 'نصرت اله', 'خرام', '4231284547', 403007201, 'ستوان یکم', '1355/06/16', '1976-09-07', 1187, 'نوراله', '09177413318', '150150500911173'), (19, 'مهرزاد', 'قربانی', '2391895666', 402320406, 'سروان', '1360/6/30', '1981-09-21', 47, 'فریبرز', '09397535662', '233700500279308'), (20, 'عبدالحسین', 'زحمتکش', '3549837119', 271022633, 'سروان', '1349/1/2', '1970-03-22', 1, 'علی', '09174962990', '233670500413076'), (21, 'ماشااله', 'زارعی', '3520902028', 402728176, 'ستوان یکم', '1359/5/20', '1980-08-11', 1113, 'محمد', '09900706068', '230230500435016'), (22, 'عباس', 'سهامی', '3520657554', 402500839, 'ستوان یکم', '1355/8/1', '1976-10-23', 776, 'رضا', '09173755836', '233710500636351'), (23, 'امیر محمد', 'سهامی', '3490694139', NULL, NULL, '1386/2/27', '2007-05-17', 3490694139, 'عباس', NULL, NULL), (24, 'حسین', 'فقیهی', '3521082431', 400342155, 'ستوان دوم', '1355/1/1', '1976-03-21', 28, 'حیدر', '09177765439', '233660500269025'), (25, 'محمود', 'رستمی', '2380205061', 402774496, 'سرهنگ دوم', '1358/2/1', '1979-04-21', 2380205061, 'رضاقلی', '09179899681', '233520500594093'), (26, 'ابراهیم', 'عبدالهی', '6009937302', 400399529, 'روحانی', '1365/6/30', '1986-09-21', 134, 'مهرعلی', '09131882035', ''), (27, 'امیرحسین', 'عبدالهی', '4240775248', NULL, NULL, '1390/2/13', '2011-05-03', 4240775248, 'ابراهیم', NULL, NULL), (28, 'محمدرضا', 'سوسنی', '2731263125', 2240114010400, 'بازنشسته', '1347/1/1', '1968-03-21', 1402, 'علی', '09178691767', ''), (29, 'یوسف', 'خسروانی', '3520929627', 403496777, 'ستوان دوم', '1360/12/25', '1982-03-16', 2074, 'مصیب', '09170113236', '83190500157995'), (30, 'بهاره', 'زاهدی فرد', '3521171620', NULL, NULL, '1364/5/21', '1985-08-12', 1257, 'نصراله', NULL, NULL), (31, 'ماشاءالله', 'رضایی', '3559313252', 270020215, 'ستوان یکم', '1353/1/5', '1974-03-25', 5410, 'خداکرم', '09900706068', '233700500315521'), (32, 'حکیمه', 'دادی', '3559321239', NULL, NULL, '1354/6/22', '1975-09-13', 6208, 'حسن', NULL, NULL), (33, 'یوسف', 'جوکار', '3520557894', 402779238, 'ستوان یکم', '1359/9/1', '1980-11-22', 561, 'قدرت اله', '09179708214', '236160500041769'), (34, 'ابوالفضل', 'جوکار', '3510601203', NULL, NULL, '1385/9/18', '2006-12-09', 3510601203, 'یوسف', NULL, NULL), (35, 'ابراهیم', 'وحید اصل', '2391099411', 403192107, 'ستوان دوم', '1360/9/1', '1981-11-22', 609, 'رحمن', '09179885176', '233710500643170'), (36, 'زهرا', 'وحید اصل', '2380715173', NULL, NULL, '1389/10/24', '2011-01-14', 2380715173, 'ابراهیم', NULL, NULL), (37, 'کامران', 'جعفری', '2371548146', 402691098, 'سروان', '1356/1/10', '1977-03-30', 1107, 'فتح اله', '09172174104', '233520500662478'), (38, 'هما', 'قائدی', '2298287465', NULL, NULL, '1360/11/28', '1982-02-17', 3500, 'محمد', NULL, NULL), (39, 'عبدالرحمن', 'صداقت', '3520934809', 402821516, 'ستوان دوم', '1361/1/5', '1982-03-25', 500, 'محمدکاظم', '09177732381', '233540500570840');
COMMIT;

-- ----------------------------
-- View structure for main_view
-- ----------------------------
DROP VIEW IF EXISTS `main_view`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `main_view` AS select `p`.`person_id` AS `person_id`,`p`.`person_first_name` AS `person_first_name`,`p`.`person_last_name` AS `person_last_name`,`p`.`person_national_code` AS `person_national_code`,`p`.`person_salary_number` AS `person_salary_number`,`p`.`person_military_rank` AS `person_military_rank`,`p`.`person_shamsi_birthdate` AS `person_shamsi_birthdate`,`p`.`person_miladi_birthdate` AS `person_miladi_birthdate`,`p`.`person_shenasname_number` AS `person_shenasname_number`,`p`.`person_father_name` AS `person_father_name`,`p`.`person_phone_number` AS `person_phone_number`,`p`.`person_bank_number` AS `person_bank_number`,`f`.`file_id` AS `file_id`,`f`.`person_id_fk` AS `person_id_fk`,`f`.`patient_id_fk` AS `patient_id_fk`,`f`.`kinship` AS `kinship`,`f`.`file_type` AS `file_type`,`f`.`miladi_accident_date` AS `miladi_accident_date`,`f`.`shamsi_accident_date` AS `shamsi_accident_date`,`f`.`miladi_send_date` AS `miladi_send_date`,`f`.`shamsi_send_date` AS `shamsi_send_date`,`f`.`file_state` AS `file_state`,`f`.`folder_name` AS `folder_name`,`f`.`old_file_number` AS `old_file_number`,`f`.`percentage_of_compensation` AS `percentage_of_compensation`,`f`.`shamsi_delivered_date` AS `shamsi_delivered_date`,`f`.`miladi_delivered_date` AS `miladi_delivered_date`,`f`.`explained` AS `explained`,`pa`.`person_id` AS `patient_id`,`pa`.`person_first_name` AS `patient_first_name`,`pa`.`person_last_name` AS `patient_last_name`,`pa`.`person_national_code` AS `patient_national_code`,`pa`.`person_salary_number` AS `patient_salary_number`,`pa`.`person_military_rank` AS `patient_military_rank`,`pa`.`person_shamsi_birthdate` AS `patient_shamsi_birthdate`,`pa`.`person_miladi_birthdate` AS `patient_miladi_birthdate`,`pa`.`person_shenasname_number` AS `patient_shenasname_number`,`pa`.`person_father_name` AS `patient_father_name`,`pa`.`person_phone_number` AS `patient_phone_number` from ((`person` `p` join `file` `f` on((`p`.`person_id` = `f`.`person_id_fk`))) join `person` `pa` on((`pa`.`person_id` = `f`.`patient_id_fk`))) order by `f`.`file_id` desc;

SET FOREIGN_KEY_CHECKS = 1;
