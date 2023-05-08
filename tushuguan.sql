/*
 Navicat Premium Data Transfer

 Source Server         : 122
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : qiansun

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 22/01/2023 10:30:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `group_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add rooms', 7, 'add_rooms');
INSERT INTO `auth_permission` VALUES (26, 'Can change rooms', 7, 'change_rooms');
INSERT INTO `auth_permission` VALUES (27, 'Can delete rooms', 7, 'delete_rooms');
INSERT INTO `auth_permission` VALUES (28, 'Can view rooms', 7, 'view_rooms');
INSERT INTO `auth_permission` VALUES (29, 'Can add students', 8, 'add_students');
INSERT INTO `auth_permission` VALUES (30, 'Can change students', 8, 'change_students');
INSERT INTO `auth_permission` VALUES (31, 'Can delete students', 8, 'delete_students');
INSERT INTO `auth_permission` VALUES (32, 'Can view students', 8, 'view_students');
INSERT INTO `auth_permission` VALUES (33, 'Can add text', 9, 'add_text');
INSERT INTO `auth_permission` VALUES (34, 'Can change text', 9, 'change_text');
INSERT INTO `auth_permission` VALUES (35, 'Can delete text', 9, 'delete_text');
INSERT INTO `auth_permission` VALUES (36, 'Can view text', 9, 'view_text');
INSERT INTO `auth_permission` VALUES (37, 'Can add integrals', 10, 'add_integrals');
INSERT INTO `auth_permission` VALUES (38, 'Can change integrals', 10, 'change_integrals');
INSERT INTO `auth_permission` VALUES (39, 'Can delete integrals', 10, 'delete_integrals');
INSERT INTO `auth_permission` VALUES (40, 'Can view integrals', 10, 'view_integrals');
INSERT INTO `auth_permission` VALUES (41, 'Can add bookings', 11, 'add_bookings');
INSERT INTO `auth_permission` VALUES (42, 'Can change bookings', 11, 'change_bookings');
INSERT INTO `auth_permission` VALUES (43, 'Can delete bookings', 11, 'delete_bookings');
INSERT INTO `auth_permission` VALUES (44, 'Can view bookings', 11, 'view_bookings');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$320000$uxbEcAxfw4Ad6f02IdK7oJ$8HzUOcS9SVfDIPv/2Jcbk7W8m4VS6QvX07XfCbxGFR4=', '2022-03-20 12:31:49.413216', 1, 'haige', '', '', '169330@qq.com', 1, 1, '2022-03-20 12:27:36.959208');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `group_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for booking
-- ----------------------------
DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `number` int(0) NOT NULL,
  `period` int(0) NOT NULL,
  `time` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `students_id` int(0) NULL DEFAULT NULL,
  `room_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Booking_students_id_45c9c675_fk_Students_id`(`students_id`) USING BTREE,
  INDEX `Booking_room_id_9ed60313_fk_Room_id`(`room_id`) USING BTREE,
  CONSTRAINT `Booking_room_id_9ed60313_fk_Room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Booking_students_id_45c9c675_fk_Students_id` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of booking
-- ----------------------------
INSERT INTO `booking` VALUES (4, 2, 2, '2022-03-21 15:22:58.640300', 1, 1, 1);
INSERT INTO `booking` VALUES (5, 1, 1, '2022-03-21 16:03:04.592391', 1, 1, 1);
INSERT INTO `booking` VALUES (6, 18, 2, '2022-03-22 01:11:30.537589', 0, 1, 2);
INSERT INTO `booking` VALUES (7, 2, 2, '2022-03-22 01:14:44.228051', 0, 1, 2);
INSERT INTO `booking` VALUES (8, 1, 1, '2022-03-22 01:24:12.098542', 1, 1, 2);
INSERT INTO `booking` VALUES (9, 2, 1, '2022-03-22 01:24:28.112887', 0, 1, 2);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(0) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content_type_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2022-03-20 12:50:47.398103', '1', '一楼  1  好自习室', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (2, '2022-03-20 12:51:11.343694', '2', '一楼  2  号自习室', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (3, '2022-03-20 12:59:35.301256', '1', '张三', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (4, '2022-03-20 13:00:06.587931', '2', 'user02', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (5, '2022-03-20 13:00:22.527041', '1', 'user01', 2, '[{\"changed\": {\"fields\": [\"\\u59d3\\u540d\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (6, '2022-03-20 13:04:27.821912', '3', '请大家知悉，这周不开图书馆。', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (7, '2022-03-20 13:10:23.252397', '3', 'user01', 1, '[{\"added\": {}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (8, '2022-03-20 14:16:50.818321', '3', '院校简介. 喀什大学坐落于中国历史文化名城、中国优秀旅游城市、丝绸之路经济带的重要战略核心城市喀什市，是一所以培养基础教育师资和经济社会发展需要的应用型、技术技能型人才的多科性本科学校。. 学校始建于1962年，前身为新疆喀什师范专科学校，从建校到1978年底的16年间，学校是自治区5所高等院校（新疆大学、新疆工学院、八一农学院、新疆医学院、新疆喀什师范专科学校）中唯一的一所高等师范院校，在新疆特', 2, '[{\"changed\": {\"fields\": [\"\\u9898\\u76ee\", \"\\u5185\\u5bb9\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (9, '2022-03-20 14:22:15.617488', '4', '院校简介. 喀什大学坐落于中国历史文化名城、中国优秀旅游城市、丝绸之路经济带的重要战略核心城市喀什市，是一所以培养基础教育师资和经济社会发展需要的应用型、技术技能型人才的多科性本科学校。. 学校始建于1962年，前身为新疆喀什师范专科学校，从建校到1978年底的16年间，学校是自治区5所高等院校（新疆大学、新疆工学院、八一农学院、新疆医学院、新疆喀什师范专科学校）中唯一的一所高等师范院校，在新疆特', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (10, '2022-03-20 14:22:38.815544', '5', '院校简介. 喀什大学坐落于中国历史文化名城、中国优秀旅游城市、丝绸之路经济带的重要战略核心城市喀什市，是一所以培养基础教育师资和经济社会发展需要的应用型、技术技能型人才的多科性本科学校。. 学校始建于1962年，前身为新疆喀什师范专科学校，从建校到1978年底的16年间，学校是自治区5所高等院校（新疆大学、新疆工学院、八一农学院、新疆医学院、新疆喀什师范专科学校）中唯一的一所高等师范院校，在新疆特', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (11, '2022-03-20 14:22:57.873701', '5', '院校简介. 喀什大学坐落于中国历史文化名城、中国优秀旅游城市、丝绸之路经济带的重要战略核心城市喀什市，是一所以培养基础教育师资和经济社会发展需要的应用型、技术技能型人才的多科性本科学校。. 学校始建于1962年，前身为新疆喀什师范专科学校，从建校到1978年底的16年间，学校是自治区5所高等院校（新疆大学、新疆工学院、八一农学院、新疆医学院、新疆喀什师范专科学校）中唯一的一所高等师范院校，在新疆特', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (12, '2022-03-20 14:22:57.912814', '4', '院校简介. 喀什大学坐落于中国历史文化名城、中国优秀旅游城市、丝绸之路经济带的重要战略核心城市喀什市，是一所以培养基础教育师资和经济社会发展需要的应用型、技术技能型人才的多科性本科学校。. 学校始建于1962年，前身为新疆喀什师范专科学校，从建校到1978年底的16年间，学校是自治区5所高等院校（新疆大学、新疆工学院、八一农学院、新疆医学院、新疆喀什师范专科学校）中唯一的一所高等师范院校，在新疆特', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (13, '2022-03-20 15:12:03.243658', '1', '一楼  1  号自习室', 2, '[{\"changed\": {\"fields\": [\"\\u540d\\u79f0\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (14, '2022-03-20 15:12:34.516973', '3', '一楼  3号自习室', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (15, '2022-03-21 11:42:55.217283', '1', 'user01', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (16, '2022-03-21 15:22:58.666333', '4', 'user01', 1, '[{\"added\": {}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (17, '2022-03-21 16:03:04.625138', '5', 'user01', 1, '[{\"added\": {}}]', 11, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (11, 'login', 'bookings');
INSERT INTO `django_content_type` VALUES (10, 'login', 'integrals');
INSERT INTO `django_content_type` VALUES (7, 'login', 'rooms');
INSERT INTO `django_content_type` VALUES (8, 'login', 'students');
INSERT INTO `django_content_type` VALUES (9, 'login', 'text');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2022-03-20 12:27:03.925270');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2022-03-20 12:27:05.138936');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2022-03-20 12:27:05.542448');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2022-03-20 12:27:05.567716');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-20 12:27:05.592992');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2022-03-20 12:27:05.832862');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2022-03-20 12:27:05.945678');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2022-03-20 12:27:06.053263');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2022-03-20 12:27:06.077184');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2022-03-20 12:27:06.169703');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2022-03-20 12:27:06.169703');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2022-03-20 12:27:06.196206');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2022-03-20 12:27:06.354413');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2022-03-20 12:27:06.699212');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2022-03-20 12:27:06.823123');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2022-03-20 12:27:06.840007');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2022-03-20 12:27:06.946114');
INSERT INTO `django_migrations` VALUES (18, 'login', '0001_initial', '2022-03-20 12:27:07.337858');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2022-03-20 12:27:07.462612');
INSERT INTO `django_migrations` VALUES (20, 'login', '0002_alter_text_text', '2022-03-20 13:02:00.831855');
INSERT INTO `django_migrations` VALUES (21, 'login', '0003_alter_bookings_period', '2022-03-20 13:07:49.897773');
INSERT INTO `django_migrations` VALUES (22, 'login', '0004_text_title_alter_text_text', '2022-03-20 14:14:05.479934');
INSERT INTO `django_migrations` VALUES (23, 'login', '0005_remove_students_integral', '2022-03-21 11:36:11.764515');
INSERT INTO `django_migrations` VALUES (24, 'login', '0006_remove_integrals_integral_integrals_title', '2022-03-21 11:41:10.238720');
INSERT INTO `django_migrations` VALUES (25, 'login', '0007_alter_integrals_text', '2022-03-21 11:41:59.361995');
INSERT INTO `django_migrations` VALUES (26, 'login', '0008_bookings_room', '2022-03-21 14:18:19.159726');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('vzrx3n2zgv23kinm636l1g3ihyijhst5', '.eJzFlsmOm0AQhl_F6rMNNPRmH5NTDlEi5RhGqJtulhmWiEWJZPnd0wUeaRgQ4MwhF5dcXcvvj9_AFUWy77Kob00T5RpdEEbHtzkl4xdTwYF-llVaO3FddU2uHChx7qet87XWpvh0r50MyGSb2W5iFPUI9nisOPWJFDQwXGqdiLPmgvmUJp5g3CQ-iTHGwvBYMx4LFgeMkkDC0NJUfWtn_byGqJKlCdHlEKIw7AU20gZimGcDVZLYwJXEEIjHQnS0hSVobKFp3wDqYw5ngolxQN8UY4crdZlXblGn9rOp67J1xwrVGKnjpi_VA3tmQnPLGFqqvihux8O_iZ0MeYKMyTUksOf5YyL6bfI06yDpTQvwwtqzEINaI9mDdKedO7Gqun7Jq3Qv2Q11G0g3FK6xJDOWeFoQLF1CxYZFhMjhmxquZELptlMnnTtZ5lVn0kYWu226Lm_Ln-sS12CyGUx_WkAX9rFAgz5-DuSDxpx27oTZmT_dTo4byjY4bqhb4yhmHINpAV_YZ-_LAtb6AV9TG6JEtodEnuD2fmqz3BR6kzQdPcEpTvaTbrtem6rb69oP6V_gsaF5hT_2lvC-EQT_DirWpoLKV5HvGMGz1YX8f-LykR_yHhSeGZVMjXq-PdlHP-xHl-s9IpjlwYvKr6zuapv48eqUIeF--_L99DkKnOckT9Dt9hdukrei:1nWLHJ:0nc76wYargUzcUML2h91wNlwSjTtw6Qe8wAs0SQOTQU', '2022-04-05 00:53:09.330594');

-- ----------------------------
-- Table structure for integral
-- ----------------------------
DROP TABLE IF EXISTS `integral`;
CREATE TABLE `integral`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `text` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `student_id` int(0) NOT NULL,
  `title` varchar(220) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Integral_student_id_f50e6f94_fk_Students_id`(`student_id`) USING BTREE,
  CONSTRAINT `Integral_student_id_f50e6f94_fk_Students_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of integral
-- ----------------------------
INSERT INTO `integral` VALUES (1, '在图书馆自习室大声说话，请注意！！！！', '2022-03-21 11:42:55.214942', 1, 1, '大声说话');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(22) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `number` int(0) NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (1, '一楼  1  号自习室', 40, 'Room/photo/2n3aun7zv8.jpg', '2022-03-20 12:50:47.394547', 1);
INSERT INTO `room` VALUES (2, '一楼  2  号自习室', 54, 'Room/photo/2n3aun7zv8_oRPJyy7.jpg', '2022-03-20 12:51:11.341701', 1);
INSERT INTO `room` VALUES (3, '一楼  3号自习室', 40, 'Room/photo/2n3aun7zv8_kBJ5OFI.jpg', '2022-03-20 15:12:34.512942', 1);

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(22) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(22) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` datetime(6) NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES (1, 'user01', '123', '19914378079', '1693305172@qq.com', '2022-03-20 12:59:35.295791', 'Students/photo/OIP-C_3.jfif', 1);
INSERT INTO `students` VALUES (2, 'user02', '123', '19914378079', '1693305172@qq.com', '2022-03-20 13:00:06.582949', 'Students/photo/OIP-C.jpg', 1);
INSERT INTO `students` VALUES (3, 'user03', '123', '19914378079', '1693305172@qq.com', '2022-03-21 23:56:51.635784', 'Students/photo/OIP-C_3_Icr71TE.jfif', 1);

-- ----------------------------
-- Table structure for text
-- ----------------------------
DROP TABLE IF EXISTS `text`;
CREATE TABLE `text`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `text` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `title` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of text
-- ----------------------------
INSERT INTO `text` VALUES (3, '院校简介. 喀什大学坐落于中国历史文化名城、中国优秀旅游城市、丝绸之路经济带的重要战略核心城市喀什市，是一所以培养基础教育师资和经济社会发展需要的应用型、技术技能型人才的多科性本科学校。. 学校始建于1962年，前身为新疆喀什师范专科学校，从建校到1978年底的16年间，学校是自治区5所高等院校（新疆大学、新疆工学院、八一农学院、新疆医学院、新疆喀什师范专科学校）中唯一的一所高等师范院校，在新疆特别是南疆教师教育、民族教育、社会稳定和经济发展方面发挥了不可替代的重要作用。. 1978年学校升格为本科院校，更名为喀什师范学院。', '2022-03-20 13:04:27.800715', 1, '关于喀什大学');

SET FOREIGN_KEY_CHECKS = 1;
