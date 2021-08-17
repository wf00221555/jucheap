/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : jucheapcorejob

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 17/08/2021 20:12:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hangfire_aggregatedcounter
-- ----------------------------
DROP TABLE IF EXISTS `hangfire_aggregatedcounter`;
CREATE TABLE `hangfire_aggregatedcounter`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Value` int NOT NULL,
  `ExpireAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  UNIQUE INDEX `IX_CounterAggregated_Key`(`Key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hangfire_aggregatedcounter
-- ----------------------------
INSERT INTO `hangfire_aggregatedcounter` VALUES (1, 'stats:succeeded:2021-08-04', 25, '2021-09-04 08:19:24');
INSERT INTO `hangfire_aggregatedcounter` VALUES (3, 'stats:succeeded', 185, NULL);
INSERT INTO `hangfire_aggregatedcounter` VALUES (10, 'stats:succeeded:2021-08-06', 91, '2021-09-06 12:27:06');
INSERT INTO `hangfire_aggregatedcounter` VALUES (32, 'stats:succeeded:2021-08-07', 5, '2021-09-07 07:37:04');
INSERT INTO `hangfire_aggregatedcounter` VALUES (35, 'stats:succeeded:2021-08-10', 64, '2021-09-10 13:33:02');
INSERT INTO `hangfire_aggregatedcounter` VALUES (36, 'stats:succeeded:2021-08-10-12', 35, '2021-08-11 12:59:10');
INSERT INTO `hangfire_aggregatedcounter` VALUES (45, 'stats:succeeded:2021-08-10-13', 29, '2021-08-11 13:33:02');

-- ----------------------------
-- Table structure for hangfire_counter
-- ----------------------------
DROP TABLE IF EXISTS `hangfire_counter`;
CREATE TABLE `hangfire_counter`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Value` int NOT NULL,
  `ExpireAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `IX_Counter_Key`(`Key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 561 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hangfire_counter
-- ----------------------------
INSERT INTO `hangfire_counter` VALUES (556, 'stats:succeeded:2021-08-10', 1, '2021-09-10 13:35:02');
INSERT INTO `hangfire_counter` VALUES (557, 'stats:succeeded:2021-08-10-13', 1, '2021-08-11 13:35:02');
INSERT INTO `hangfire_counter` VALUES (558, 'stats:succeeded', 1, NULL);
INSERT INTO `hangfire_counter` VALUES (559, 'stats:succeeded:2021-08-10', 1, '2021-09-10 13:37:18');
INSERT INTO `hangfire_counter` VALUES (560, 'stats:succeeded:2021-08-10-13', 1, '2021-08-11 13:37:18');
INSERT INTO `hangfire_counter` VALUES (561, 'stats:succeeded', 1, NULL);

-- ----------------------------
-- Table structure for hangfire_distributedlock
-- ----------------------------
DROP TABLE IF EXISTS `hangfire_distributedlock`;
CREATE TABLE `hangfire_distributedlock`  (
  `Resource` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CreatedAt` datetime(6) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hangfire_distributedlock
-- ----------------------------
INSERT INTO `hangfire_distributedlock` VALUES ('recurring-jobs:lock', '2021-08-10 13:37:53.956410');
INSERT INTO `hangfire_distributedlock` VALUES ('lock:recurring-job:Console.WriteLine', '2021-08-10 13:37:55.378491');

-- ----------------------------
-- Table structure for hangfire_hash
-- ----------------------------
DROP TABLE IF EXISTS `hangfire_hash`;
CREATE TABLE `hangfire_hash`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Field` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ExpireAt` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  UNIQUE INDEX `IX_Hash_Key_Field`(`Key`, `Field`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 592 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hangfire_hash
-- ----------------------------
INSERT INTO `hangfire_hash` VALUES (1, 'recurring-job:ISiteViewService.AddOrUpdate', 'Queue', 'default', NULL);
INSERT INTO `hangfire_hash` VALUES (2, 'recurring-job:ISiteViewService.AddOrUpdate', 'Cron', '0 0 * * *', NULL);
INSERT INTO `hangfire_hash` VALUES (3, 'recurring-job:ISiteViewService.AddOrUpdate', 'TimeZoneId', 'UTC', NULL);
INSERT INTO `hangfire_hash` VALUES (4, 'recurring-job:ISiteViewService.AddOrUpdate', 'Job', '{\"Type\":\"JuCheap.Core.Interfaces.ISiteViewService, JuCheap.Core.Interfaces, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"AddOrUpdate\",\"ParameterTypes\":\"[]\",\"Arguments\":\"[]\"}', NULL);
INSERT INTO `hangfire_hash` VALUES (5, 'recurring-job:ISiteViewService.AddOrUpdate', 'CreatedAt', '2021-08-04T07:44:48.6935951Z', NULL);
INSERT INTO `hangfire_hash` VALUES (6, 'recurring-job:ISiteViewService.AddOrUpdate', 'NextExecution', '2021-08-11T00:00:00.0000000Z', NULL);
INSERT INTO `hangfire_hash` VALUES (7, 'recurring-job:ISiteViewService.AddOrUpdate', 'V', '2', NULL);
INSERT INTO `hangfire_hash` VALUES (8, 'recurring-job:Console.WriteLine', 'Queue', 'default', NULL);
INSERT INTO `hangfire_hash` VALUES (9, 'recurring-job:Console.WriteLine', 'Cron', '* * * * *', NULL);
INSERT INTO `hangfire_hash` VALUES (10, 'recurring-job:Console.WriteLine', 'TimeZoneId', 'UTC', NULL);
INSERT INTO `hangfire_hash` VALUES (11, 'recurring-job:Console.WriteLine', 'Job', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', NULL);
INSERT INTO `hangfire_hash` VALUES (12, 'recurring-job:Console.WriteLine', 'CreatedAt', '2021-08-04T07:44:52.8178310Z', NULL);
INSERT INTO `hangfire_hash` VALUES (13, 'recurring-job:Console.WriteLine', 'NextExecution', '2021-08-10T13:38:00.0000000Z', NULL);
INSERT INTO `hangfire_hash` VALUES (14, 'recurring-job:Console.WriteLine', 'V', '2', NULL);
INSERT INTO `hangfire_hash` VALUES (15, 'recurring-job:Console.WriteLine', 'LastExecution', '2021-08-10T13:37:16.2572540Z', NULL);
INSERT INTO `hangfire_hash` VALUES (17, 'recurring-job:Console.WriteLine', 'LastJobId', '187', NULL);
INSERT INTO `hangfire_hash` VALUES (96, 'recurring-job:ISiteViewService.AddOrUpdate', 'LastExecution', '2021-08-10T12:17:59.4661811Z', NULL);
INSERT INTO `hangfire_hash` VALUES (98, 'recurring-job:ISiteViewService.AddOrUpdate', 'LastJobId', '123', NULL);

-- ----------------------------
-- Table structure for hangfire_job
-- ----------------------------
DROP TABLE IF EXISTS `hangfire_job`;
CREATE TABLE `hangfire_job`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `StateId` int NULL DEFAULT NULL,
  `StateName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `InvocationData` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Arguments` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `ExpireAt` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `IX_Job_StateName`(`StateName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 187 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hangfire_job
-- ----------------------------
INSERT INTO `hangfire_job` VALUES (122, 369, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/7 15:37:24执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/7 15:37:24执行完成.\\\"\"]', '2021-08-10 12:17:59.329173', '2021-08-11 12:19:57.699943');
INSERT INTO `hangfire_job` VALUES (123, 371, 'Succeeded', '{\"Type\":\"JuCheap.Core.Interfaces.ISiteViewService, JuCheap.Core.Interfaces, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\",\"Method\":\"AddOrUpdate\",\"ParameterTypes\":\"[]\",\"Arguments\":\"[]\"}', '[]', '2021-08-10 12:17:59.475181', '2021-08-11 12:19:59.206029');
INSERT INTO `hangfire_job` VALUES (124, 373, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:17:59执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:17:59执行完成.\\\"\"]', '2021-08-10 12:19:57.573936', '2021-08-11 12:19:59.256032');
INSERT INTO `hangfire_job` VALUES (125, 376, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:17:59执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:17:59执行完成.\\\"\"]', '2021-08-10 12:20:27.709660', '2021-08-11 12:20:29.338753');
INSERT INTO `hangfire_job` VALUES (126, 379, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:17:59执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:17:59执行完成.\\\"\"]', '2021-08-10 12:21:00.010507', '2021-08-11 12:21:14.442333');
INSERT INTO `hangfire_job` VALUES (127, 382, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:17:59执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:17:59执行完成.\\\"\"]', '2021-08-10 12:22:30.190665', '2021-08-11 12:22:44.551487');
INSERT INTO `hangfire_job` VALUES (128, 385, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:17:59执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:17:59执行完成.\\\"\"]', '2021-08-10 12:23:00.028372', '2021-08-11 12:23:14.639208');
INSERT INTO `hangfire_job` VALUES (129, 388, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:17:59执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:17:59执行完成.\\\"\"]', '2021-08-10 12:24:45.289392', '2021-08-11 12:24:59.758220');
INSERT INTO `hangfire_job` VALUES (130, 391, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:17:59执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:17:59执行完成.\\\"\"]', '2021-08-10 12:25:00.035236', '2021-08-11 12:25:14.843083');
INSERT INTO `hangfire_job` VALUES (131, 395, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:17:59执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:17:59执行完成.\\\"\"]', '2021-08-10 12:26:55.880862', '2021-08-11 12:27:10.757713');
INSERT INTO `hangfire_job` VALUES (132, 397, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:26:55执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:26:55执行完成.\\\"\"]', '2021-08-10 12:27:00.010098', '2021-08-11 12:27:10.845718');
INSERT INTO `hangfire_job` VALUES (133, 400, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:26:55执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:26:55执行完成.\\\"\"]', '2021-08-10 12:29:00.744004', '2021-08-11 12:29:10.929586');
INSERT INTO `hangfire_job` VALUES (134, 403, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:26:55执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:26:55执行完成.\\\"\"]', '2021-08-10 12:31:00.952879', '2021-08-11 12:31:11.022455');
INSERT INTO `hangfire_job` VALUES (135, 406, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:32:58执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:32:58执行完成.\\\"\"]', '2021-08-10 12:33:13.481459', '2021-08-11 12:33:28.528320');
INSERT INTO `hangfire_job` VALUES (136, 409, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:32:58执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:32:58执行完成.\\\"\"]', '2021-08-10 12:34:00.019121', '2021-08-11 12:34:13.594898');
INSERT INTO `hangfire_job` VALUES (137, 413, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:32:58执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:32:58执行完成.\\\"\"]', '2021-08-10 12:35:55.458724', '2021-08-11 12:36:22.373263');
INSERT INTO `hangfire_job` VALUES (138, 415, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:32:58执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:32:58执行完成.\\\"\"]', '2021-08-10 12:36:00.015985', '2021-08-11 12:36:22.612277');
INSERT INTO `hangfire_job` VALUES (139, 418, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:32:58执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:32:58执行完成.\\\"\"]', '2021-08-10 12:37:23.177741', '2021-08-11 12:37:28.698057');
INSERT INTO `hangfire_job` VALUES (140, 421, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:38:12执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:38:12执行完成.\\\"\"]', '2021-08-10 12:39:12.366986', '2021-08-11 12:39:27.228836');
INSERT INTO `hangfire_job` VALUES (141, 424, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:39:12执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:39:12执行完成.\\\"\"]', '2021-08-10 12:40:00.016712', '2021-08-11 12:40:12.316415');
INSERT INTO `hangfire_job` VALUES (142, 428, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:39:12执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:39:12执行完成.\\\"\"]', '2021-08-10 12:41:45.680755', '2021-08-11 12:42:00.522604');
INSERT INTO `hangfire_job` VALUES (143, 430, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:41:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:41:45执行完成.\\\"\"]', '2021-08-10 12:42:00.036577', '2021-08-11 12:42:00.600609');
INSERT INTO `hangfire_job` VALUES (144, 433, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:41:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:41:45执行完成.\\\"\"]', '2021-08-10 12:46:11.824978', '2021-08-11 12:46:36.373382');
INSERT INTO `hangfire_job` VALUES (145, 436, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:41:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:41:45执行完成.\\\"\"]', '2021-08-10 12:48:23.983537', '2021-08-11 12:48:38.895390');
INSERT INTO `hangfire_job` VALUES (146, 439, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:48:23执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:48:23执行完成.\\\"\"]', '2021-08-10 12:49:00.013598', '2021-08-11 12:49:09.037114');
INSERT INTO `hangfire_job` VALUES (147, 442, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:48:23执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:48:23执行完成.\\\"\"]', '2021-08-10 12:50:15.137895', '2021-08-11 12:50:24.140410');
INSERT INTO `hangfire_job` VALUES (148, 445, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:48:23执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:48:23执行完成.\\\"\"]', '2021-08-10 12:51:00.018462', '2021-08-11 12:51:09.225988');
INSERT INTO `hangfire_job` VALUES (149, 448, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:48:23执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:48:23执行完成.\\\"\"]', '2021-08-10 12:52:30.198620', '2021-08-11 12:52:39.362144');
INSERT INTO `hangfire_job` VALUES (150, 451, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:48:23执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:48:23执行完成.\\\"\"]', '2021-08-10 12:53:00.011325', '2021-08-11 12:53:09.416863');
INSERT INTO `hangfire_job` VALUES (151, 454, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:48:23执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:48:23执行完成.\\\"\"]', '2021-08-10 12:54:30.377494', '2021-08-11 12:54:39.588020');
INSERT INTO `hangfire_job` VALUES (152, 457, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:48:23执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:48:23执行完成.\\\"\"]', '2021-08-10 12:55:00.026189', '2021-08-11 12:55:09.661741');
INSERT INTO `hangfire_job` VALUES (153, 460, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:48:23执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:48:23执行完成.\\\"\"]', '2021-08-10 12:56:45.344213', '2021-08-11 12:56:55.171775');
INSERT INTO `hangfire_job` VALUES (154, 463, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:48:23执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:48:23执行完成.\\\"\"]', '2021-08-10 12:57:00.016052', '2021-08-11 12:57:10.250638');
INSERT INTO `hangfire_job` VALUES (155, 466, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:48:23执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:48:23执行完成.\\\"\"]', '2021-08-10 12:58:45.968113', '2021-08-11 12:58:55.400652');
INSERT INTO `hangfire_job` VALUES (156, 469, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:48:23执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:48:23执行完成.\\\"\"]', '2021-08-10 12:59:00.073919', '2021-08-11 12:59:10.458513');
INSERT INTO `hangfire_job` VALUES (157, 472, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:48:23执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:48:23执行完成.\\\"\"]', '2021-08-10 13:01:00.557811', '2021-08-11 13:01:10.697391');
INSERT INTO `hangfire_job` VALUES (158, 475, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:48:23执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:48:23执行完成.\\\"\"]', '2021-08-10 13:03:00.886693', '2021-08-11 13:03:10.822261');
INSERT INTO `hangfire_job` VALUES (159, 478, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:48:23执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:48:23执行完成.\\\"\"]', '2021-08-10 13:04:00.015075', '2021-08-11 13:04:10.943700');
INSERT INTO `hangfire_job` VALUES (160, 481, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 20:48:23执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 20:48:23执行完成.\\\"\"]', '2021-08-10 13:05:21.964762', '2021-08-11 13:05:36.859614');
INSERT INTO `hangfire_job` VALUES (161, 484, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:05:21执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:05:21执行完成.\\\"\"]', '2021-08-10 13:06:00.008938', '2021-08-11 13:06:06.927334');
INSERT INTO `hangfire_job` VALUES (162, 487, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:05:21执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:05:21执行完成.\\\"\"]', '2021-08-10 13:07:15.424252', '2021-08-11 13:07:22.130635');
INSERT INTO `hangfire_job` VALUES (163, 490, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:05:21执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:05:21执行完成.\\\"\"]', '2021-08-10 13:08:02.404939', '2021-08-11 13:08:23.668155');
INSERT INTO `hangfire_job` VALUES (164, 493, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:05:21执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:05:21执行完成.\\\"\"]', '2021-08-10 13:09:28.327853', '2021-08-11 13:09:38.792452');
INSERT INTO `hangfire_job` VALUES (165, 496, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:05:21执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:05:21执行完成.\\\"\"]', '2021-08-10 13:10:00.025666', '2021-08-11 13:10:08.857172');
INSERT INTO `hangfire_job` VALUES (166, 499, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:05:21执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:05:21执行完成.\\\"\"]', '2021-08-10 13:11:30.227826', '2021-08-11 13:11:38.960325');
INSERT INTO `hangfire_job` VALUES (167, 502, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:05:21执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:05:21执行完成.\\\"\"]', '2021-08-10 13:12:00.039531', '2021-08-11 13:12:09.063047');
INSERT INTO `hangfire_job` VALUES (168, 506, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:05:21执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:05:21执行完成.\\\"\"]', '2021-08-10 13:13:45.575567', '2021-08-11 13:14:00.481420');
INSERT INTO `hangfire_job` VALUES (169, 508, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:13:45执行完成.\\\"\"]', '2021-08-10 13:14:00.049395', '2021-08-11 13:14:00.545423');
INSERT INTO `hangfire_job` VALUES (170, 511, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:13:45执行完成.\\\"\"]', '2021-08-10 13:15:45.405421', '2021-08-11 13:15:45.622433');
INSERT INTO `hangfire_job` VALUES (171, 514, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:13:45执行完成.\\\"\"]', '2021-08-10 13:16:00.023257', '2021-08-11 13:16:00.697296');
INSERT INTO `hangfire_job` VALUES (172, 517, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:13:45执行完成.\\\"\"]', '2021-08-10 13:18:00.995176', '2021-08-11 13:18:15.782022');
INSERT INTO `hangfire_job` VALUES (173, 520, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:13:45执行完成.\\\"\"]', '2021-08-10 13:20:01.158049', '2021-08-11 13:20:15.907893');
INSERT INTO `hangfire_job` VALUES (174, 523, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:13:45执行完成.\\\"\"]', '2021-08-10 13:21:00.022416', '2021-08-11 13:21:01.007472');
INSERT INTO `hangfire_job` VALUES (175, 526, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:13:45执行完成.\\\"\"]', '2021-08-10 13:22:15.183715', '2021-08-11 13:22:16.096767');
INSERT INTO `hangfire_job` VALUES (176, 529, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:13:45执行完成.\\\"\"]', '2021-08-10 13:23:00.017279', '2021-08-11 13:23:01.215348');
INSERT INTO `hangfire_job` VALUES (177, 532, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:13:45执行完成.\\\"\"]', '2021-08-10 13:24:30.246440', '2021-08-11 13:24:31.293500');
INSERT INTO `hangfire_job` VALUES (178, 535, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:13:45执行完成.\\\"\"]', '2021-08-10 13:25:00.055145', '2021-08-11 13:25:01.402222');
INSERT INTO `hangfire_job` VALUES (179, 538, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:13:45执行完成.\\\"\"]', '2021-08-10 13:26:30.473317', '2021-08-11 13:26:31.518377');
INSERT INTO `hangfire_job` VALUES (180, 541, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:13:45执行完成.\\\"\"]', '2021-08-10 13:27:00.022007', '2021-08-11 13:27:01.614098');
INSERT INTO `hangfire_job` VALUES (181, 544, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:13:45执行完成.\\\"\"]', '2021-08-10 13:28:45.210023', '2021-08-11 13:28:46.715109');
INSERT INTO `hangfire_job` VALUES (182, 547, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:13:45执行完成.\\\"\"]', '2021-08-10 13:29:00.015870', '2021-08-11 13:29:01.795972');
INSERT INTO `hangfire_job` VALUES (183, 550, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:13:45执行完成.\\\"\"]', '2021-08-10 13:30:45.654912', '2021-08-11 13:30:47.014990');
INSERT INTO `hangfire_job` VALUES (184, 553, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:13:45执行完成.\\\"\"]', '2021-08-10 13:31:00.008733', '2021-08-11 13:31:02.091853');
INSERT INTO `hangfire_job` VALUES (185, 556, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:13:45执行完成.\\\"\"]', '2021-08-10 13:33:00.808643', '2021-08-11 13:33:02.374732');
INSERT INTO `hangfire_job` VALUES (186, 559, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:13:45执行完成.\\\"\"]', '2021-08-10 13:35:01.019518', '2021-08-11 13:35:02.472602');
INSERT INTO `hangfire_job` VALUES (187, 562, 'Succeeded', '{\"Type\":\"System.Console, System.Console, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a\",\"Method\":\"WriteLine\",\"ParameterTypes\":\"[\\\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\\\"]\",\"Arguments\":\"[\\\"\\\\\\\"Job在2021/8/10 21:13:45执行完成.\\\\\\\"\\\"]\"}', '[\"\\\"Job在2021/8/10 21:13:45执行完成.\\\"\"]', '2021-08-10 13:37:16.272254', '2021-08-11 13:37:17.661334');

-- ----------------------------
-- Table structure for hangfire_jobparameter
-- ----------------------------
DROP TABLE IF EXISTS `hangfire_jobparameter`;
CREATE TABLE `hangfire_jobparameter`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `JobId` int NOT NULL,
  `Name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  UNIQUE INDEX `IX_JobParameter_JobId_Name`(`JobId`, `Name`) USING BTREE,
  INDEX `FK_JobParameter_Job`(`JobId`) USING BTREE,
  CONSTRAINT `FK_JobParameter_Job` FOREIGN KEY (`JobId`) REFERENCES `hangfire_job` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 748 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hangfire_jobparameter
-- ----------------------------
INSERT INTO `hangfire_jobparameter` VALUES (485, 122, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (486, 122, 'Time', '1628597879');
INSERT INTO `hangfire_jobparameter` VALUES (487, 122, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (488, 122, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (489, 123, 'RecurringJobId', '\"ISiteViewService.AddOrUpdate\"');
INSERT INTO `hangfire_jobparameter` VALUES (490, 123, 'Time', '1628597879');
INSERT INTO `hangfire_jobparameter` VALUES (491, 123, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (492, 123, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (493, 124, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (494, 124, 'Time', '1628597997');
INSERT INTO `hangfire_jobparameter` VALUES (495, 124, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (496, 124, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (497, 125, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (498, 125, 'Time', '1628598027');
INSERT INTO `hangfire_jobparameter` VALUES (499, 125, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (500, 125, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (501, 126, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (502, 126, 'Time', '1628598060');
INSERT INTO `hangfire_jobparameter` VALUES (503, 126, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (504, 126, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (505, 127, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (506, 127, 'Time', '1628598150');
INSERT INTO `hangfire_jobparameter` VALUES (507, 127, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (508, 127, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (509, 128, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (510, 128, 'Time', '1628598180');
INSERT INTO `hangfire_jobparameter` VALUES (511, 128, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (512, 128, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (513, 129, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (514, 129, 'Time', '1628598285');
INSERT INTO `hangfire_jobparameter` VALUES (515, 129, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (516, 129, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (517, 130, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (518, 130, 'Time', '1628598300');
INSERT INTO `hangfire_jobparameter` VALUES (519, 130, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (520, 130, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (521, 131, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (522, 131, 'Time', '1628598415');
INSERT INTO `hangfire_jobparameter` VALUES (523, 131, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (524, 131, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (525, 132, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (526, 132, 'Time', '1628598420');
INSERT INTO `hangfire_jobparameter` VALUES (527, 132, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (528, 132, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (529, 133, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (530, 133, 'Time', '1628598540');
INSERT INTO `hangfire_jobparameter` VALUES (531, 133, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (532, 133, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (533, 134, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (534, 134, 'Time', '1628598660');
INSERT INTO `hangfire_jobparameter` VALUES (535, 134, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (536, 134, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (537, 135, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (538, 135, 'Time', '1628598793');
INSERT INTO `hangfire_jobparameter` VALUES (539, 135, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (540, 135, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (541, 136, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (542, 136, 'Time', '1628598840');
INSERT INTO `hangfire_jobparameter` VALUES (543, 136, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (544, 136, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (545, 137, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (546, 137, 'Time', '1628598955');
INSERT INTO `hangfire_jobparameter` VALUES (547, 137, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (548, 137, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (549, 138, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (550, 138, 'Time', '1628598960');
INSERT INTO `hangfire_jobparameter` VALUES (551, 138, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (552, 138, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (553, 139, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (554, 139, 'Time', '1628599043');
INSERT INTO `hangfire_jobparameter` VALUES (555, 139, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (556, 139, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (557, 140, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (558, 140, 'Time', '1628599152');
INSERT INTO `hangfire_jobparameter` VALUES (559, 140, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (560, 140, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (561, 141, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (562, 141, 'Time', '1628599200');
INSERT INTO `hangfire_jobparameter` VALUES (563, 141, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (564, 141, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (565, 142, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (566, 142, 'Time', '1628599305');
INSERT INTO `hangfire_jobparameter` VALUES (567, 142, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (568, 142, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (569, 143, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (570, 143, 'Time', '1628599320');
INSERT INTO `hangfire_jobparameter` VALUES (571, 143, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (572, 143, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (573, 144, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (574, 144, 'Time', '1628599571');
INSERT INTO `hangfire_jobparameter` VALUES (575, 144, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (576, 144, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (577, 145, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (578, 145, 'Time', '1628599703');
INSERT INTO `hangfire_jobparameter` VALUES (579, 145, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (580, 145, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (581, 146, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (582, 146, 'Time', '1628599740');
INSERT INTO `hangfire_jobparameter` VALUES (583, 146, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (584, 146, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (585, 147, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (586, 147, 'Time', '1628599815');
INSERT INTO `hangfire_jobparameter` VALUES (587, 147, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (588, 147, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (589, 148, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (590, 148, 'Time', '1628599860');
INSERT INTO `hangfire_jobparameter` VALUES (591, 148, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (592, 148, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (593, 149, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (594, 149, 'Time', '1628599950');
INSERT INTO `hangfire_jobparameter` VALUES (595, 149, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (596, 149, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (597, 150, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (598, 150, 'Time', '1628599980');
INSERT INTO `hangfire_jobparameter` VALUES (599, 150, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (600, 150, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (601, 151, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (602, 151, 'Time', '1628600070');
INSERT INTO `hangfire_jobparameter` VALUES (603, 151, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (604, 151, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (605, 152, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (606, 152, 'Time', '1628600100');
INSERT INTO `hangfire_jobparameter` VALUES (607, 152, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (608, 152, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (609, 153, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (610, 153, 'Time', '1628600205');
INSERT INTO `hangfire_jobparameter` VALUES (611, 153, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (612, 153, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (613, 154, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (614, 154, 'Time', '1628600220');
INSERT INTO `hangfire_jobparameter` VALUES (615, 154, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (616, 154, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (617, 155, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (618, 155, 'Time', '1628600325');
INSERT INTO `hangfire_jobparameter` VALUES (619, 155, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (620, 155, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (621, 156, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (622, 156, 'Time', '1628600340');
INSERT INTO `hangfire_jobparameter` VALUES (623, 156, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (624, 156, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (625, 157, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (626, 157, 'Time', '1628600460');
INSERT INTO `hangfire_jobparameter` VALUES (627, 157, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (628, 157, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (629, 158, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (630, 158, 'Time', '1628600580');
INSERT INTO `hangfire_jobparameter` VALUES (631, 158, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (632, 158, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (633, 159, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (634, 159, 'Time', '1628600640');
INSERT INTO `hangfire_jobparameter` VALUES (635, 159, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (636, 159, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (637, 160, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (638, 160, 'Time', '1628600721');
INSERT INTO `hangfire_jobparameter` VALUES (639, 160, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (640, 160, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (641, 161, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (642, 161, 'Time', '1628600760');
INSERT INTO `hangfire_jobparameter` VALUES (643, 161, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (644, 161, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (645, 162, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (646, 162, 'Time', '1628600835');
INSERT INTO `hangfire_jobparameter` VALUES (647, 162, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (648, 162, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (649, 163, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (650, 163, 'Time', '1628600880');
INSERT INTO `hangfire_jobparameter` VALUES (651, 163, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (652, 163, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (653, 164, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (654, 164, 'Time', '1628600968');
INSERT INTO `hangfire_jobparameter` VALUES (655, 164, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (656, 164, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (657, 165, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (658, 165, 'Time', '1628601000');
INSERT INTO `hangfire_jobparameter` VALUES (659, 165, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (660, 165, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (661, 166, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (662, 166, 'Time', '1628601090');
INSERT INTO `hangfire_jobparameter` VALUES (663, 166, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (664, 166, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (665, 167, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (666, 167, 'Time', '1628601120');
INSERT INTO `hangfire_jobparameter` VALUES (667, 167, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (668, 167, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (669, 168, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (670, 168, 'Time', '1628601225');
INSERT INTO `hangfire_jobparameter` VALUES (671, 168, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (672, 168, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (673, 169, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (674, 169, 'Time', '1628601240');
INSERT INTO `hangfire_jobparameter` VALUES (675, 169, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (676, 169, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (677, 170, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (678, 170, 'Time', '1628601345');
INSERT INTO `hangfire_jobparameter` VALUES (679, 170, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (680, 170, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (681, 171, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (682, 171, 'Time', '1628601360');
INSERT INTO `hangfire_jobparameter` VALUES (683, 171, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (684, 171, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (685, 172, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (686, 172, 'Time', '1628601480');
INSERT INTO `hangfire_jobparameter` VALUES (687, 172, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (688, 172, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (689, 173, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (690, 173, 'Time', '1628601601');
INSERT INTO `hangfire_jobparameter` VALUES (691, 173, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (692, 173, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (693, 174, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (694, 174, 'Time', '1628601660');
INSERT INTO `hangfire_jobparameter` VALUES (695, 174, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (696, 174, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (697, 175, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (698, 175, 'Time', '1628601735');
INSERT INTO `hangfire_jobparameter` VALUES (699, 175, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (700, 175, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (701, 176, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (702, 176, 'Time', '1628601780');
INSERT INTO `hangfire_jobparameter` VALUES (703, 176, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (704, 176, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (705, 177, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (706, 177, 'Time', '1628601870');
INSERT INTO `hangfire_jobparameter` VALUES (707, 177, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (708, 177, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (709, 178, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (710, 178, 'Time', '1628601900');
INSERT INTO `hangfire_jobparameter` VALUES (711, 178, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (712, 178, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (713, 179, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (714, 179, 'Time', '1628601990');
INSERT INTO `hangfire_jobparameter` VALUES (715, 179, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (716, 179, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (717, 180, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (718, 180, 'Time', '1628602020');
INSERT INTO `hangfire_jobparameter` VALUES (719, 180, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (720, 180, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (721, 181, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (722, 181, 'Time', '1628602125');
INSERT INTO `hangfire_jobparameter` VALUES (723, 181, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (724, 181, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (725, 182, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (726, 182, 'Time', '1628602140');
INSERT INTO `hangfire_jobparameter` VALUES (727, 182, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (728, 182, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (729, 183, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (730, 183, 'Time', '1628602245');
INSERT INTO `hangfire_jobparameter` VALUES (731, 183, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (732, 183, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (733, 184, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (734, 184, 'Time', '1628602260');
INSERT INTO `hangfire_jobparameter` VALUES (735, 184, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (736, 184, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (737, 185, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (738, 185, 'Time', '1628602380');
INSERT INTO `hangfire_jobparameter` VALUES (739, 185, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (740, 185, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (741, 186, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (742, 186, 'Time', '1628602501');
INSERT INTO `hangfire_jobparameter` VALUES (743, 186, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (744, 186, 'CurrentUICulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (745, 187, 'RecurringJobId', '\"Console.WriteLine\"');
INSERT INTO `hangfire_jobparameter` VALUES (746, 187, 'Time', '1628602636');
INSERT INTO `hangfire_jobparameter` VALUES (747, 187, 'CurrentCulture', '\"zh-CN\"');
INSERT INTO `hangfire_jobparameter` VALUES (748, 187, 'CurrentUICulture', '\"zh-CN\"');

-- ----------------------------
-- Table structure for hangfire_jobqueue
-- ----------------------------
DROP TABLE IF EXISTS `hangfire_jobqueue`;
CREATE TABLE `hangfire_jobqueue`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `JobId` int NOT NULL,
  `Queue` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FetchedAt` datetime(6) NULL DEFAULT NULL,
  `FetchToken` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `IX_JobQueue_QueueAndFetchedAt`(`Queue`, `FetchedAt`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 187 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hangfire_jobqueue
-- ----------------------------

-- ----------------------------
-- Table structure for hangfire_jobstate
-- ----------------------------
DROP TABLE IF EXISTS `hangfire_jobstate`;
CREATE TABLE `hangfire_jobstate`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `JobId` int NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Reason` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `Data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `FK_JobState_Job`(`JobId`) USING BTREE,
  CONSTRAINT `FK_JobState_Job` FOREIGN KEY (`JobId`) REFERENCES `hangfire_job` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hangfire_jobstate
-- ----------------------------

-- ----------------------------
-- Table structure for hangfire_list
-- ----------------------------
DROP TABLE IF EXISTS `hangfire_list`;
CREATE TABLE `hangfire_list`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ExpireAt` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hangfire_list
-- ----------------------------

-- ----------------------------
-- Table structure for hangfire_server
-- ----------------------------
DROP TABLE IF EXISTS `hangfire_server`;
CREATE TABLE `hangfire_server`  (
  `Id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LastHeartbeat` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hangfire_server
-- ----------------------------
INSERT INTO `hangfire_server` VALUES ('user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4', '{\"WorkerCount\":1,\"Queues\":[\"default\"],\"StartedAt\":\"2021-08-10T13:13:44.865527Z\"}', '2021-08-10 13:37:46.343974');

-- ----------------------------
-- Table structure for hangfire_set
-- ----------------------------
DROP TABLE IF EXISTS `hangfire_set`;
CREATE TABLE `hangfire_set`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Value` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Score` float NOT NULL,
  `ExpireAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  UNIQUE INDEX `IX_Set_Key_Value`(`Key`, `Value`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126695 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hangfire_set
-- ----------------------------
INSERT INTO `hangfire_set` VALUES (1, 'recurring-jobs', 'ISiteViewService.AddOrUpdate', 1628640000, NULL);
INSERT INTO `hangfire_set` VALUES (2, 'recurring-jobs', 'Console.WriteLine', 1628600000, NULL);

-- ----------------------------
-- Table structure for hangfire_state
-- ----------------------------
DROP TABLE IF EXISTS `hangfire_state`;
CREATE TABLE `hangfire_state`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `JobId` int NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Reason` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `Data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `FK_HangFire_State_Job`(`JobId`) USING BTREE,
  CONSTRAINT `FK_HangFire_State_Job` FOREIGN KEY (`JobId`) REFERENCES `hangfire_job` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 562 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hangfire_state
-- ----------------------------
INSERT INTO `hangfire_state` VALUES (365, 122, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:17:59.421178', '{\"EnqueuedAt\":\"2021-08-10T12:17:59.3761760Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (366, 123, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:17:59.510183', '{\"EnqueuedAt\":\"2021-08-10T12:17:59.5091836Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (367, 122, 'Processing', NULL, '2021-08-10 12:19:57.594937', '{\"StartedAt\":\"2021-08-10T12:19:57.5599357Z\",\"ServerId\":\"user-20140905nh:12948:a9cec7ed-0db4-4d17-a4aa-6e7e9ea05e79\",\"WorkerId\":\"effef9d4-3169-48c2-b7e6-baa4b7794ce1\"}');
INSERT INTO `hangfire_state` VALUES (368, 124, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:19:57.618939', '{\"EnqueuedAt\":\"2021-08-10T12:19:57.6179390Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (369, 122, 'Succeeded', NULL, '2021-08-10 12:19:57.694943', '{\"SucceededAt\":\"2021-08-10T12:19:57.6679419Z\",\"PerformanceDuration\":\"36\",\"Latency\":\"118301\"}');
INSERT INTO `hangfire_state` VALUES (370, 123, 'Processing', NULL, '2021-08-10 12:19:57.736945', '{\"StartedAt\":\"2021-08-10T12:19:57.7279453Z\",\"ServerId\":\"user-20140905nh:12948:a9cec7ed-0db4-4d17-a4aa-6e7e9ea05e79\",\"WorkerId\":\"effef9d4-3169-48c2-b7e6-baa4b7794ce1\"}');
INSERT INTO `hangfire_state` VALUES (371, 123, 'Succeeded', NULL, '2021-08-10 12:19:59.204029', '{\"SucceededAt\":\"2021-08-10T12:19:59.1920291Z\",\"PerformanceDuration\":\"1433\",\"Latency\":\"118283\",\"Result\":\"true\"}');
INSERT INTO `hangfire_state` VALUES (372, 124, 'Processing', NULL, '2021-08-10 12:19:59.238031', '{\"StartedAt\":\"2021-08-10T12:19:59.2340315Z\",\"ServerId\":\"user-20140905nh:12948:a9cec7ed-0db4-4d17-a4aa-6e7e9ea05e79\",\"WorkerId\":\"effef9d4-3169-48c2-b7e6-baa4b7794ce1\"}');
INSERT INTO `hangfire_state` VALUES (373, 124, 'Succeeded', NULL, '2021-08-10 12:19:59.255032', '{\"SucceededAt\":\"2021-08-10T12:19:59.2480323Z\",\"PerformanceDuration\":\"1\",\"Latency\":\"1673\"}');
INSERT INTO `hangfire_state` VALUES (374, 125, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:20:27.730661', '{\"EnqueuedAt\":\"2021-08-10T12:20:27.7296613Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (375, 125, 'Processing', NULL, '2021-08-10 12:20:29.297751', '{\"StartedAt\":\"2021-08-10T12:20:29.2897506Z\",\"ServerId\":\"user-20140905nh:12948:a9cec7ed-0db4-4d17-a4aa-6e7e9ea05e79\",\"WorkerId\":\"effef9d4-3169-48c2-b7e6-baa4b7794ce1\"}');
INSERT INTO `hangfire_state` VALUES (376, 125, 'Succeeded', NULL, '2021-08-10 12:20:29.336753', '{\"SucceededAt\":\"2021-08-10T12:20:29.3137519Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"1602\"}');
INSERT INTO `hangfire_state` VALUES (377, 126, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:21:00.045509', '{\"EnqueuedAt\":\"2021-08-10T12:21:00.0445096Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (378, 126, 'Processing', NULL, '2021-08-10 12:21:14.411331', '{\"StartedAt\":\"2021-08-10T12:21:14.4033309Z\",\"ServerId\":\"user-20140905nh:12948:a9cec7ed-0db4-4d17-a4aa-6e7e9ea05e79\",\"WorkerId\":\"effef9d4-3169-48c2-b7e6-baa4b7794ce1\"}');
INSERT INTO `hangfire_state` VALUES (379, 126, 'Succeeded', NULL, '2021-08-10 12:21:14.440333', '{\"SucceededAt\":\"2021-08-10T12:21:14.4283323Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"14415\"}');
INSERT INTO `hangfire_state` VALUES (380, 127, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:22:30.212667', '{\"EnqueuedAt\":\"2021-08-10T12:22:30.2116669Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (381, 127, 'Processing', NULL, '2021-08-10 12:22:44.510484', '{\"StartedAt\":\"2021-08-10T12:22:44.4934838Z\",\"ServerId\":\"user-20140905nh:12948:a9cec7ed-0db4-4d17-a4aa-6e7e9ea05e79\",\"WorkerId\":\"effef9d4-3169-48c2-b7e6-baa4b7794ce1\"}');
INSERT INTO `hangfire_state` VALUES (382, 127, 'Succeeded', NULL, '2021-08-10 12:22:44.549487', '{\"SucceededAt\":\"2021-08-10T12:22:44.5394864Z\",\"PerformanceDuration\":\"3\",\"Latency\":\"14345\"}');
INSERT INTO `hangfire_state` VALUES (383, 128, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:23:00.097376', '{\"EnqueuedAt\":\"2021-08-10T12:23:00.0963762Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (384, 128, 'Processing', NULL, '2021-08-10 12:23:14.601205', '{\"StartedAt\":\"2021-08-10T12:23:14.5932054Z\",\"ServerId\":\"user-20140905nh:12948:a9cec7ed-0db4-4d17-a4aa-6e7e9ea05e79\",\"WorkerId\":\"effef9d4-3169-48c2-b7e6-baa4b7794ce1\"}');
INSERT INTO `hangfire_state` VALUES (385, 128, 'Succeeded', NULL, '2021-08-10 12:23:14.636207', '{\"SucceededAt\":\"2021-08-10T12:23:14.6252072Z\",\"PerformanceDuration\":\"1\",\"Latency\":\"14594\"}');
INSERT INTO `hangfire_state` VALUES (386, 129, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:24:45.312394', '{\"EnqueuedAt\":\"2021-08-10T12:24:45.3103941Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (387, 129, 'Processing', NULL, '2021-08-10 12:24:59.711217', '{\"StartedAt\":\"2021-08-10T12:24:59.6972170Z\",\"ServerId\":\"user-20140905nh:12948:a9cec7ed-0db4-4d17-a4aa-6e7e9ea05e79\",\"WorkerId\":\"effef9d4-3169-48c2-b7e6-baa4b7794ce1\"}');
INSERT INTO `hangfire_state` VALUES (388, 129, 'Succeeded', NULL, '2021-08-10 12:24:59.755220', '{\"SucceededAt\":\"2021-08-10T12:24:59.7332190Z\",\"PerformanceDuration\":\"5\",\"Latency\":\"14438\"}');
INSERT INTO `hangfire_state` VALUES (389, 130, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:25:00.114240', '{\"EnqueuedAt\":\"2021-08-10T12:25:00.1132408Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (390, 130, 'Processing', NULL, '2021-08-10 12:25:14.811081', '{\"StartedAt\":\"2021-08-10T12:25:14.8040810Z\",\"ServerId\":\"user-20140905nh:12948:a9cec7ed-0db4-4d17-a4aa-6e7e9ea05e79\",\"WorkerId\":\"effef9d4-3169-48c2-b7e6-baa4b7794ce1\"}');
INSERT INTO `hangfire_state` VALUES (391, 130, 'Succeeded', NULL, '2021-08-10 12:25:14.840083', '{\"SucceededAt\":\"2021-08-10T12:25:14.8290825Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"14790\"}');
INSERT INTO `hangfire_state` VALUES (392, 131, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:26:55.949866', '{\"EnqueuedAt\":\"2021-08-10T12:26:55.9268649Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (393, 132, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:27:00.042100', '{\"EnqueuedAt\":\"2021-08-10T12:27:00.0411003Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (394, 131, 'Processing', NULL, '2021-08-10 12:27:10.700709', '{\"StartedAt\":\"2021-08-10T12:27:10.6797087Z\",\"ServerId\":\"user-20140905nh:11712:55ced880-87a9-4e85-b1b6-8d41384a8cd7\",\"WorkerId\":\"19a1109b-6d6c-463e-aa14-96362f0f83fd\"}');
INSERT INTO `hangfire_state` VALUES (395, 131, 'Succeeded', NULL, '2021-08-10 12:27:10.753713', '{\"SucceededAt\":\"2021-08-10T12:27:10.7367120Z\",\"PerformanceDuration\":\"15\",\"Latency\":\"14839\"}');
INSERT INTO `hangfire_state` VALUES (396, 132, 'Processing', NULL, '2021-08-10 12:27:10.815716', '{\"StartedAt\":\"2021-08-10T12:27:10.8027158Z\",\"ServerId\":\"user-20140905nh:11712:55ced880-87a9-4e85-b1b6-8d41384a8cd7\",\"WorkerId\":\"19a1109b-6d6c-463e-aa14-96362f0f83fd\"}');
INSERT INTO `hangfire_state` VALUES (397, 132, 'Succeeded', NULL, '2021-08-10 12:27:10.842718', '{\"SucceededAt\":\"2021-08-10T12:27:10.8337176Z\",\"PerformanceDuration\":\"1\",\"Latency\":\"10821\"}');
INSERT INTO `hangfire_state` VALUES (398, 133, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:29:00.782006', '{\"EnqueuedAt\":\"2021-08-10T12:29:00.7810062Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (399, 133, 'Processing', NULL, '2021-08-10 12:29:10.900585', '{\"StartedAt\":\"2021-08-10T12:29:10.8945846Z\",\"ServerId\":\"user-20140905nh:11712:55ced880-87a9-4e85-b1b6-8d41384a8cd7\",\"WorkerId\":\"19a1109b-6d6c-463e-aa14-96362f0f83fd\"}');
INSERT INTO `hangfire_state` VALUES (400, 133, 'Succeeded', NULL, '2021-08-10 12:29:10.926586', '{\"SucceededAt\":\"2021-08-10T12:29:10.9145858Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"10167\"}');
INSERT INTO `hangfire_state` VALUES (401, 134, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:31:00.993882', '{\"EnqueuedAt\":\"2021-08-10T12:31:00.9928819Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (402, 134, 'Processing', NULL, '2021-08-10 12:31:10.994454', '{\"StartedAt\":\"2021-08-10T12:31:10.9804532Z\",\"ServerId\":\"user-20140905nh:11712:55ced880-87a9-4e85-b1b6-8d41384a8cd7\",\"WorkerId\":\"19a1109b-6d6c-463e-aa14-96362f0f83fd\"}');
INSERT INTO `hangfire_state` VALUES (403, 134, 'Succeeded', NULL, '2021-08-10 12:31:11.020455', '{\"SucceededAt\":\"2021-08-10T12:31:11.0124550Z\",\"PerformanceDuration\":\"3\",\"Latency\":\"10055\"}');
INSERT INTO `hangfire_state` VALUES (404, 135, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:33:13.528462', '{\"EnqueuedAt\":\"2021-08-10T12:33:13.5124616Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (405, 135, 'Processing', NULL, '2021-08-10 12:33:28.452316', '{\"StartedAt\":\"2021-08-10T12:33:28.4353151Z\",\"ServerId\":\"user-20140905nh:7396:2b9521c7-0de1-4db2-9ca3-e039b59ed278\",\"WorkerId\":\"5f5be2ba-5ead-4f69-a5e5-206607f94214\"}');
INSERT INTO `hangfire_state` VALUES (406, 135, 'Succeeded', NULL, '2021-08-10 12:33:28.524320', '{\"SucceededAt\":\"2021-08-10T12:33:28.5013189Z\",\"PerformanceDuration\":\"18\",\"Latency\":\"15000\"}');
INSERT INTO `hangfire_state` VALUES (407, 136, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:34:00.095126', '{\"EnqueuedAt\":\"2021-08-10T12:34:00.0941259Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (408, 136, 'Processing', NULL, '2021-08-10 12:34:13.569896', '{\"StartedAt\":\"2021-08-10T12:34:13.5628963Z\",\"ServerId\":\"user-20140905nh:7396:2b9521c7-0de1-4db2-9ca3-e039b59ed278\",\"WorkerId\":\"5f5be2ba-5ead-4f69-a5e5-206607f94214\"}');
INSERT INTO `hangfire_state` VALUES (409, 136, 'Succeeded', NULL, '2021-08-10 12:34:13.592898', '{\"SucceededAt\":\"2021-08-10T12:34:13.5838975Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"13561\"}');
INSERT INTO `hangfire_state` VALUES (410, 137, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:35:55.508727', '{\"EnqueuedAt\":\"2021-08-10T12:35:55.5047270Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (411, 138, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:36:00.053987', '{\"EnqueuedAt\":\"2021-08-10T12:36:00.0529872Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (412, 137, 'Processing', NULL, '2021-08-10 12:36:21.142193', '{\"StartedAt\":\"2021-08-10T12:36:11.1376212Z\",\"ServerId\":\"user-20140905nh:7396:2b9521c7-0de1-4db2-9ca3-e039b59ed278\",\"WorkerId\":\"5f5be2ba-5ead-4f69-a5e5-206607f94214\"}');
INSERT INTO `hangfire_state` VALUES (413, 137, 'Succeeded', NULL, '2021-08-10 12:36:22.371263', '{\"SucceededAt\":\"2021-08-10T12:36:22.3322615Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"26870\"}');
INSERT INTO `hangfire_state` VALUES (414, 138, 'Processing', NULL, '2021-08-10 12:36:22.503271', '{\"StartedAt\":\"2021-08-10T12:36:22.4652691Z\",\"ServerId\":\"user-20140905nh:7396:2b9521c7-0de1-4db2-9ca3-e039b59ed278\",\"WorkerId\":\"5f5be2ba-5ead-4f69-a5e5-206607f94214\"}');
INSERT INTO `hangfire_state` VALUES (415, 138, 'Succeeded', NULL, '2021-08-10 12:36:22.608277', '{\"SucceededAt\":\"2021-08-10T12:36:22.5722752Z\",\"PerformanceDuration\":\"1\",\"Latency\":\"22554\"}');
INSERT INTO `hangfire_state` VALUES (416, 139, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:37:23.214743', '{\"EnqueuedAt\":\"2021-08-10T12:37:23.2137437Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (417, 139, 'Processing', NULL, '2021-08-10 12:37:28.648054', '{\"StartedAt\":\"2021-08-10T12:37:28.6340537Z\",\"ServerId\":\"user-20140905nh:7396:2b9521c7-0de1-4db2-9ca3-e039b59ed278\",\"WorkerId\":\"5f5be2ba-5ead-4f69-a5e5-206607f94214\"}');
INSERT INTO `hangfire_state` VALUES (418, 139, 'Succeeded', NULL, '2021-08-10 12:37:28.695057', '{\"SucceededAt\":\"2021-08-10T12:37:28.6820565Z\",\"PerformanceDuration\":\"6\",\"Latency\":\"5498\"}');
INSERT INTO `hangfire_state` VALUES (419, 140, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:39:12.429990', '{\"EnqueuedAt\":\"2021-08-10T12:39:12.4079892Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (420, 140, 'Processing', NULL, '2021-08-10 12:39:27.171833', '{\"StartedAt\":\"2021-08-10T12:39:27.1478323Z\",\"ServerId\":\"user-20140905nh:9856:effd3579-d0ae-47a5-ae94-a5c6c94e59f2\",\"WorkerId\":\"c1a1a305-0819-45c7-a128-df2192c7f00b\"}');
INSERT INTO `hangfire_state` VALUES (421, 140, 'Succeeded', NULL, '2021-08-10 12:39:27.224836', '{\"SucceededAt\":\"2021-08-10T12:39:27.2078357Z\",\"PerformanceDuration\":\"12\",\"Latency\":\"14826\"}');
INSERT INTO `hangfire_state` VALUES (422, 141, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:40:00.048714', '{\"EnqueuedAt\":\"2021-08-10T12:40:00.0467140Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (423, 141, 'Processing', NULL, '2021-08-10 12:40:12.276413', '{\"StartedAt\":\"2021-08-10T12:40:12.2654129Z\",\"ServerId\":\"user-20140905nh:9856:effd3579-d0ae-47a5-ae94-a5c6c94e59f2\",\"WorkerId\":\"c1a1a305-0819-45c7-a128-df2192c7f00b\"}');
INSERT INTO `hangfire_state` VALUES (424, 141, 'Succeeded', NULL, '2021-08-10 12:40:12.313415', '{\"SucceededAt\":\"2021-08-10T12:40:12.2944146Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"12275\"}');
INSERT INTO `hangfire_state` VALUES (425, 142, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:41:45.735759', '{\"EnqueuedAt\":\"2021-08-10T12:41:45.7137578Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (426, 143, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:42:00.076579', '{\"EnqueuedAt\":\"2021-08-10T12:42:00.0755793Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (427, 142, 'Processing', NULL, '2021-08-10 12:42:00.472602', '{\"StartedAt\":\"2021-08-10T12:42:00.4536009Z\",\"ServerId\":\"user-20140905nh:10456:b802e26c-68ad-4432-81dd-43b3df4ce9c2\",\"WorkerId\":\"130f6dfe-62e8-45a4-a173-78505a5d7a1b\"}');
INSERT INTO `hangfire_state` VALUES (428, 142, 'Succeeded', NULL, '2021-08-10 12:42:00.517604', '{\"SucceededAt\":\"2021-08-10T12:42:00.5006036Z\",\"PerformanceDuration\":\"16\",\"Latency\":\"14803\"}');
INSERT INTO `hangfire_state` VALUES (429, 143, 'Processing', NULL, '2021-08-10 12:42:00.572607', '{\"StartedAt\":\"2021-08-10T12:42:00.5566068Z\",\"ServerId\":\"user-20140905nh:10456:b802e26c-68ad-4432-81dd-43b3df4ce9c2\",\"WorkerId\":\"130f6dfe-62e8-45a4-a173-78505a5d7a1b\"}');
INSERT INTO `hangfire_state` VALUES (430, 143, 'Succeeded', NULL, '2021-08-10 12:42:00.599609', '{\"SucceededAt\":\"2021-08-10T12:42:00.5896087Z\",\"PerformanceDuration\":\"1\",\"Latency\":\"552\"}');
INSERT INTO `hangfire_state` VALUES (431, 144, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:46:33.366210', '{\"EnqueuedAt\":\"2021-08-10T12:46:33.3652106Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (432, 144, 'Processing', NULL, '2021-08-10 12:46:36.286377', '{\"StartedAt\":\"2021-08-10T12:46:33.4522155Z\",\"ServerId\":\"user-20140905nh:10456:b802e26c-68ad-4432-81dd-43b3df4ce9c2\",\"WorkerId\":\"130f6dfe-62e8-45a4-a173-78505a5d7a1b\"}');
INSERT INTO `hangfire_state` VALUES (433, 144, 'Succeeded', NULL, '2021-08-10 12:46:36.369382', '{\"SucceededAt\":\"2021-08-10T12:46:36.3563816Z\",\"PerformanceDuration\":\"4\",\"Latency\":\"24527\"}');
INSERT INTO `hangfire_state` VALUES (434, 145, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:48:24.080543', '{\"EnqueuedAt\":\"2021-08-10T12:48:24.0575418Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (435, 145, 'Processing', NULL, '2021-08-10 12:48:38.789384', '{\"StartedAt\":\"2021-08-10T12:48:38.7683832Z\",\"ServerId\":\"user-20140905nh:6924:218d625d-c8d2-4a97-8c86-21525fa5755c\",\"WorkerId\":\"d34ca27a-0b90-4819-9839-8a03b4d895ea\"}');
INSERT INTO `hangfire_state` VALUES (436, 145, 'Succeeded', NULL, '2021-08-10 12:48:38.886390', '{\"SucceededAt\":\"2021-08-10T12:48:38.8443876Z\",\"PerformanceDuration\":\"18\",\"Latency\":\"14842\"}');
INSERT INTO `hangfire_state` VALUES (437, 146, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:49:00.043600', '{\"EnqueuedAt\":\"2021-08-10T12:49:00.0416000Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (438, 146, 'Processing', NULL, '2021-08-10 12:49:08.999112', '{\"StartedAt\":\"2021-08-10T12:49:08.9901118Z\",\"ServerId\":\"user-20140905nh:6924:218d625d-c8d2-4a97-8c86-21525fa5755c\",\"WorkerId\":\"d34ca27a-0b90-4819-9839-8a03b4d895ea\"}');
INSERT INTO `hangfire_state` VALUES (439, 146, 'Succeeded', NULL, '2021-08-10 12:49:09.034114', '{\"SucceededAt\":\"2021-08-10T12:49:09.0201135Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"9004\"}');
INSERT INTO `hangfire_state` VALUES (440, 147, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:50:15.165896', '{\"EnqueuedAt\":\"2021-08-10T12:50:15.1648968Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (441, 147, 'Processing', NULL, '2021-08-10 12:50:24.089407', '{\"StartedAt\":\"2021-08-10T12:50:24.0794067Z\",\"ServerId\":\"user-20140905nh:6924:218d625d-c8d2-4a97-8c86-21525fa5755c\",\"WorkerId\":\"d34ca27a-0b90-4819-9839-8a03b4d895ea\"}');
INSERT INTO `hangfire_state` VALUES (442, 147, 'Succeeded', NULL, '2021-08-10 12:50:24.136409', '{\"SucceededAt\":\"2021-08-10T12:50:24.1204090Z\",\"PerformanceDuration\":\"5\",\"Latency\":\"8976\"}');
INSERT INTO `hangfire_state` VALUES (443, 148, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:51:00.052464', '{\"EnqueuedAt\":\"2021-08-10T12:51:00.0504641Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (444, 148, 'Processing', NULL, '2021-08-10 12:51:09.193987', '{\"StartedAt\":\"2021-08-10T12:51:09.1879867Z\",\"ServerId\":\"user-20140905nh:6924:218d625d-c8d2-4a97-8c86-21525fa5755c\",\"WorkerId\":\"d34ca27a-0b90-4819-9839-8a03b4d895ea\"}');
INSERT INTO `hangfire_state` VALUES (445, 148, 'Succeeded', NULL, '2021-08-10 12:51:09.223988', '{\"SucceededAt\":\"2021-08-10T12:51:09.2129881Z\",\"PerformanceDuration\":\"3\",\"Latency\":\"9190\"}');
INSERT INTO `hangfire_state` VALUES (446, 149, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:52:30.227621', '{\"EnqueuedAt\":\"2021-08-10T12:52:30.2266219Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (447, 149, 'Processing', NULL, '2021-08-10 12:52:39.301140', '{\"StartedAt\":\"2021-08-10T12:52:39.2911403Z\",\"ServerId\":\"user-20140905nh:6924:218d625d-c8d2-4a97-8c86-21525fa5755c\",\"WorkerId\":\"d34ca27a-0b90-4819-9839-8a03b4d895ea\"}');
INSERT INTO `hangfire_state` VALUES (448, 149, 'Succeeded', NULL, '2021-08-10 12:52:39.361144', '{\"SucceededAt\":\"2021-08-10T12:52:39.3421432Z\",\"PerformanceDuration\":\"8\",\"Latency\":\"9135\"}');
INSERT INTO `hangfire_state` VALUES (449, 150, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:53:00.046327', '{\"EnqueuedAt\":\"2021-08-10T12:53:00.0453274Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (450, 150, 'Processing', NULL, '2021-08-10 12:53:09.395862', '{\"StartedAt\":\"2021-08-10T12:53:09.3918620Z\",\"ServerId\":\"user-20140905nh:6924:218d625d-c8d2-4a97-8c86-21525fa5755c\",\"WorkerId\":\"d34ca27a-0b90-4819-9839-8a03b4d895ea\"}');
INSERT INTO `hangfire_state` VALUES (451, 150, 'Succeeded', NULL, '2021-08-10 12:53:09.414863', '{\"SucceededAt\":\"2021-08-10T12:53:09.4068628Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"9393\"}');
INSERT INTO `hangfire_state` VALUES (452, 151, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:54:30.401495', '{\"EnqueuedAt\":\"2021-08-10T12:54:30.4004954Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (453, 151, 'Processing', NULL, '2021-08-10 12:54:39.556019', '{\"StartedAt\":\"2021-08-10T12:54:39.5400182Z\",\"ServerId\":\"user-20140905nh:6924:218d625d-c8d2-4a97-8c86-21525fa5755c\",\"WorkerId\":\"d34ca27a-0b90-4819-9839-8a03b4d895ea\"}');
INSERT INTO `hangfire_state` VALUES (454, 151, 'Succeeded', NULL, '2021-08-10 12:54:39.587020', '{\"SucceededAt\":\"2021-08-10T12:54:39.5780203Z\",\"PerformanceDuration\":\"1\",\"Latency\":\"9198\"}');
INSERT INTO `hangfire_state` VALUES (455, 152, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:55:00.060191', '{\"EnqueuedAt\":\"2021-08-10T12:55:00.0591918Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (456, 152, 'Processing', NULL, '2021-08-10 12:55:09.627739', '{\"StartedAt\":\"2021-08-10T12:55:09.6187386Z\",\"ServerId\":\"user-20140905nh:6924:218d625d-c8d2-4a97-8c86-21525fa5755c\",\"WorkerId\":\"d34ca27a-0b90-4819-9839-8a03b4d895ea\"}');
INSERT INTO `hangfire_state` VALUES (457, 152, 'Succeeded', NULL, '2021-08-10 12:55:09.657740', '{\"SucceededAt\":\"2021-08-10T12:55:09.6487403Z\",\"PerformanceDuration\":\"1\",\"Latency\":\"9620\"}');
INSERT INTO `hangfire_state` VALUES (458, 153, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:56:45.382215', '{\"EnqueuedAt\":\"2021-08-10T12:56:45.3812159Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (459, 153, 'Processing', NULL, '2021-08-10 12:56:55.131773', '{\"StartedAt\":\"2021-08-10T12:56:55.1237731Z\",\"ServerId\":\"user-20140905nh:6924:218d625d-c8d2-4a97-8c86-21525fa5755c\",\"WorkerId\":\"d34ca27a-0b90-4819-9839-8a03b4d895ea\"}');
INSERT INTO `hangfire_state` VALUES (460, 153, 'Succeeded', NULL, '2021-08-10 12:56:55.166775', '{\"SucceededAt\":\"2021-08-10T12:56:55.1517747Z\",\"PerformanceDuration\":\"3\",\"Latency\":\"9803\"}');
INSERT INTO `hangfire_state` VALUES (461, 154, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:57:00.035054', '{\"EnqueuedAt\":\"2021-08-10T12:57:00.0340540Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (462, 154, 'Processing', NULL, '2021-08-10 12:57:10.224636', '{\"StartedAt\":\"2021-08-10T12:57:10.2186365Z\",\"ServerId\":\"user-20140905nh:6924:218d625d-c8d2-4a97-8c86-21525fa5755c\",\"WorkerId\":\"d34ca27a-0b90-4819-9839-8a03b4d895ea\"}');
INSERT INTO `hangfire_state` VALUES (463, 154, 'Succeeded', NULL, '2021-08-10 12:57:10.247638', '{\"SucceededAt\":\"2021-08-10T12:57:10.2406377Z\",\"PerformanceDuration\":\"4\",\"Latency\":\"10219\"}');
INSERT INTO `hangfire_state` VALUES (464, 155, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:58:46.002115', '{\"EnqueuedAt\":\"2021-08-10T12:58:46.0011149Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (465, 155, 'Processing', NULL, '2021-08-10 12:58:55.346649', '{\"StartedAt\":\"2021-08-10T12:58:55.3336487Z\",\"ServerId\":\"user-20140905nh:6924:218d625d-c8d2-4a97-8c86-21525fa5755c\",\"WorkerId\":\"d34ca27a-0b90-4819-9839-8a03b4d895ea\"}');
INSERT INTO `hangfire_state` VALUES (466, 155, 'Succeeded', NULL, '2021-08-10 12:58:55.399652', '{\"SucceededAt\":\"2021-08-10T12:58:55.3876518Z\",\"PerformanceDuration\":\"5\",\"Latency\":\"9413\"}');
INSERT INTO `hangfire_state` VALUES (467, 156, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 12:59:00.139923', '{\"EnqueuedAt\":\"2021-08-10T12:59:00.1389236Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (468, 156, 'Processing', NULL, '2021-08-10 12:59:10.429512', '{\"StartedAt\":\"2021-08-10T12:59:10.4225118Z\",\"ServerId\":\"user-20140905nh:6924:218d625d-c8d2-4a97-8c86-21525fa5755c\",\"WorkerId\":\"d34ca27a-0b90-4819-9839-8a03b4d895ea\"}');
INSERT INTO `hangfire_state` VALUES (469, 156, 'Succeeded', NULL, '2021-08-10 12:59:10.455513', '{\"SucceededAt\":\"2021-08-10T12:59:10.4415128Z\",\"PerformanceDuration\":\"1\",\"Latency\":\"10365\"}');
INSERT INTO `hangfire_state` VALUES (470, 157, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:01:00.593813', '{\"EnqueuedAt\":\"2021-08-10T13:01:00.5928131Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (471, 157, 'Processing', NULL, '2021-08-10 13:01:10.659388', '{\"StartedAt\":\"2021-08-10T13:01:10.6493883Z\",\"ServerId\":\"user-20140905nh:6924:218d625d-c8d2-4a97-8c86-21525fa5755c\",\"WorkerId\":\"d34ca27a-0b90-4819-9839-8a03b4d895ea\"}');
INSERT INTO `hangfire_state` VALUES (472, 157, 'Succeeded', NULL, '2021-08-10 13:01:10.695391', '{\"SucceededAt\":\"2021-08-10T13:01:10.6843903Z\",\"PerformanceDuration\":\"1\",\"Latency\":\"10124\"}');
INSERT INTO `hangfire_state` VALUES (473, 158, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:03:00.922695', '{\"EnqueuedAt\":\"2021-08-10T13:03:00.9216956Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (474, 158, 'Processing', NULL, '2021-08-10 13:03:10.781259', '{\"StartedAt\":\"2021-08-10T13:03:10.7682587Z\",\"ServerId\":\"user-20140905nh:6924:218d625d-c8d2-4a97-8c86-21525fa5755c\",\"WorkerId\":\"d34ca27a-0b90-4819-9839-8a03b4d895ea\"}');
INSERT INTO `hangfire_state` VALUES (475, 158, 'Succeeded', NULL, '2021-08-10 13:03:10.820261', '{\"SucceededAt\":\"2021-08-10T13:03:10.8002606Z\",\"PerformanceDuration\":\"4\",\"Latency\":\"9909\"}');
INSERT INTO `hangfire_state` VALUES (476, 159, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:04:00.056077', '{\"EnqueuedAt\":\"2021-08-10T13:04:00.0550778Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (477, 159, 'Processing', NULL, '2021-08-10 13:04:10.906698', '{\"StartedAt\":\"2021-08-10T13:04:10.8936977Z\",\"ServerId\":\"user-20140905nh:6924:218d625d-c8d2-4a97-8c86-21525fa5755c\",\"WorkerId\":\"d34ca27a-0b90-4819-9839-8a03b4d895ea\"}');
INSERT INTO `hangfire_state` VALUES (478, 159, 'Succeeded', NULL, '2021-08-10 13:04:10.940700', '{\"SucceededAt\":\"2021-08-10T13:04:10.9296998Z\",\"PerformanceDuration\":\"1\",\"Latency\":\"10912\"}');
INSERT INTO `hangfire_state` VALUES (479, 160, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:05:22.052767', '{\"EnqueuedAt\":\"2021-08-10T13:05:22.0287664Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (480, 160, 'Processing', NULL, '2021-08-10 13:05:36.792610', '{\"StartedAt\":\"2021-08-10T13:05:36.7696095Z\",\"ServerId\":\"user-20140905nh:10592:84bd89c2-dced-4d26-bba3-05f98ca12c14\",\"WorkerId\":\"ee2fe028-fd09-4a99-8b8c-69a41a9f60f3\"}');
INSERT INTO `hangfire_state` VALUES (481, 160, 'Succeeded', NULL, '2021-08-10 13:05:36.850614', '{\"SucceededAt\":\"2021-08-10T13:05:36.8296130Z\",\"PerformanceDuration\":\"18\",\"Latency\":\"14845\"}');
INSERT INTO `hangfire_state` VALUES (482, 161, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:06:00.041940', '{\"EnqueuedAt\":\"2021-08-10T13:06:00.0409406Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (483, 161, 'Processing', NULL, '2021-08-10 13:06:06.900332', '{\"StartedAt\":\"2021-08-10T13:06:06.8933325Z\",\"ServerId\":\"user-20140905nh:10592:84bd89c2-dced-4d26-bba3-05f98ca12c14\",\"WorkerId\":\"ee2fe028-fd09-4a99-8b8c-69a41a9f60f3\"}');
INSERT INTO `hangfire_state` VALUES (484, 161, 'Succeeded', NULL, '2021-08-10 13:06:06.924334', '{\"SucceededAt\":\"2021-08-10T13:06:06.9153338Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"6903\"}');
INSERT INTO `hangfire_state` VALUES (485, 162, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:07:15.461254', '{\"EnqueuedAt\":\"2021-08-10T13:07:15.4592543Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (486, 162, 'Processing', NULL, '2021-08-10 13:07:22.071632', '{\"StartedAt\":\"2021-08-10T13:07:22.0616319Z\",\"ServerId\":\"user-20140905nh:10592:84bd89c2-dced-4d26-bba3-05f98ca12c14\",\"WorkerId\":\"ee2fe028-fd09-4a99-8b8c-69a41a9f60f3\"}');
INSERT INTO `hangfire_state` VALUES (487, 162, 'Succeeded', NULL, '2021-08-10 13:07:22.127635', '{\"SucceededAt\":\"2021-08-10T13:07:22.1136349Z\",\"PerformanceDuration\":\"5\",\"Latency\":\"6684\"}');
INSERT INTO `hangfire_state` VALUES (488, 163, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:08:08.899310', '{\"EnqueuedAt\":\"2021-08-10T13:08:08.8983108Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (489, 163, 'Processing', NULL, '2021-08-10 13:08:23.634153', '{\"StartedAt\":\"2021-08-10T13:08:23.6251531Z\",\"ServerId\":\"user-20140905nh:10592:84bd89c2-dced-4d26-bba3-05f98ca12c14\",\"WorkerId\":\"ee2fe028-fd09-4a99-8b8c-69a41a9f60f3\"}');
INSERT INTO `hangfire_state` VALUES (490, 163, 'Succeeded', NULL, '2021-08-10 13:08:23.667155', '{\"SucceededAt\":\"2021-08-10T13:08:23.6581550Z\",\"PerformanceDuration\":\"3\",\"Latency\":\"21250\"}');
INSERT INTO `hangfire_state` VALUES (491, 164, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:09:28.350855', '{\"EnqueuedAt\":\"2021-08-10T13:09:28.3488551Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (492, 164, 'Processing', NULL, '2021-08-10 13:09:38.734449', '{\"StartedAt\":\"2021-08-10T13:09:38.7184482Z\",\"ServerId\":\"user-20140905nh:10592:84bd89c2-dced-4d26-bba3-05f98ca12c14\",\"WorkerId\":\"ee2fe028-fd09-4a99-8b8c-69a41a9f60f3\"}');
INSERT INTO `hangfire_state` VALUES (493, 164, 'Succeeded', NULL, '2021-08-10 13:09:38.790452', '{\"SucceededAt\":\"2021-08-10T13:09:38.7794517Z\",\"PerformanceDuration\":\"5\",\"Latency\":\"10446\"}');
INSERT INTO `hangfire_state` VALUES (494, 165, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:10:00.051668', '{\"EnqueuedAt\":\"2021-08-10T13:10:00.0506684Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (495, 165, 'Processing', NULL, '2021-08-10 13:10:08.830170', '{\"StartedAt\":\"2021-08-10T13:10:08.8241702Z\",\"ServerId\":\"user-20140905nh:10592:84bd89c2-dced-4d26-bba3-05f98ca12c14\",\"WorkerId\":\"ee2fe028-fd09-4a99-8b8c-69a41a9f60f3\"}');
INSERT INTO `hangfire_state` VALUES (496, 165, 'Succeeded', NULL, '2021-08-10 13:10:08.854171', '{\"SucceededAt\":\"2021-08-10T13:10:08.8451714Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"8816\"}');
INSERT INTO `hangfire_state` VALUES (497, 166, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:11:30.263828', '{\"EnqueuedAt\":\"2021-08-10T13:11:30.2628282Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (498, 166, 'Processing', NULL, '2021-08-10 13:11:38.929323', '{\"StartedAt\":\"2021-08-10T13:11:38.9163232Z\",\"ServerId\":\"user-20140905nh:10592:84bd89c2-dced-4d26-bba3-05f98ca12c14\",\"WorkerId\":\"ee2fe028-fd09-4a99-8b8c-69a41a9f60f3\"}');
INSERT INTO `hangfire_state` VALUES (499, 166, 'Succeeded', NULL, '2021-08-10 13:11:38.958325', '{\"SucceededAt\":\"2021-08-10T13:11:38.9463249Z\",\"PerformanceDuration\":\"3\",\"Latency\":\"8715\"}');
INSERT INTO `hangfire_state` VALUES (500, 167, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:12:00.119535', '{\"EnqueuedAt\":\"2021-08-10T13:12:00.1185359Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (501, 167, 'Processing', NULL, '2021-08-10 13:12:09.023045', '{\"StartedAt\":\"2021-08-10T13:12:09.0160448Z\",\"ServerId\":\"user-20140905nh:10592:84bd89c2-dced-4d26-bba3-05f98ca12c14\",\"WorkerId\":\"ee2fe028-fd09-4a99-8b8c-69a41a9f60f3\"}');
INSERT INTO `hangfire_state` VALUES (502, 167, 'Succeeded', NULL, '2021-08-10 13:12:09.054046', '{\"SucceededAt\":\"2021-08-10T13:12:09.0400461Z\",\"PerformanceDuration\":\"1\",\"Latency\":\"8998\"}');
INSERT INTO `hangfire_state` VALUES (503, 168, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:13:45.639571', '{\"EnqueuedAt\":\"2021-08-10T13:13:45.6155699Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (504, 169, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:14:00.127400', '{\"EnqueuedAt\":\"2021-08-10T13:14:00.1263999Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (505, 168, 'Processing', NULL, '2021-08-10 13:14:00.426417', '{\"StartedAt\":\"2021-08-10T13:14:00.4104162Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (506, 168, 'Succeeded', NULL, '2021-08-10 13:14:00.476419', '{\"SucceededAt\":\"2021-08-10T13:14:00.4584189Z\",\"PerformanceDuration\":\"13\",\"Latency\":\"14869\"}');
INSERT INTO `hangfire_state` VALUES (507, 169, 'Processing', NULL, '2021-08-10 13:14:00.519422', '{\"StartedAt\":\"2021-08-10T13:14:00.5114219Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (508, 169, 'Succeeded', NULL, '2021-08-10 13:14:00.543423', '{\"SucceededAt\":\"2021-08-10T13:14:00.5354233Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"483\"}');
INSERT INTO `hangfire_state` VALUES (509, 170, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:15:45.441423', '{\"EnqueuedAt\":\"2021-08-10T13:15:45.4404235Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (510, 170, 'Processing', NULL, '2021-08-10 13:15:45.592432', '{\"StartedAt\":\"2021-08-10T13:15:45.5864319Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (511, 170, 'Succeeded', NULL, '2021-08-10 13:15:45.619433', '{\"SucceededAt\":\"2021-08-10T13:15:45.6084331Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"201\"}');
INSERT INTO `hangfire_state` VALUES (512, 171, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:16:00.100262', '{\"EnqueuedAt\":\"2021-08-10T13:16:00.0992620Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (513, 171, 'Processing', NULL, '2021-08-10 13:16:00.676295', '{\"StartedAt\":\"2021-08-10T13:16:00.6712947Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (514, 171, 'Succeeded', NULL, '2021-08-10 13:16:00.695296', '{\"SucceededAt\":\"2021-08-10T13:16:00.6872956Z\",\"PerformanceDuration\":\"1\",\"Latency\":\"662\"}');
INSERT INTO `hangfire_state` VALUES (515, 172, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:18:01.018178', '{\"EnqueuedAt\":\"2021-08-10T13:18:01.0171781Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (516, 172, 'Processing', NULL, '2021-08-10 13:18:15.756021', '{\"StartedAt\":\"2021-08-10T13:18:15.7500207Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (517, 172, 'Succeeded', NULL, '2021-08-10 13:18:15.780022', '{\"SucceededAt\":\"2021-08-10T13:18:15.7670217Z\",\"PerformanceDuration\":\"1\",\"Latency\":\"14769\"}');
INSERT INTO `hangfire_state` VALUES (518, 173, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:20:01.197052', '{\"EnqueuedAt\":\"2021-08-10T13:20:01.1960519Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (519, 173, 'Processing', NULL, '2021-08-10 13:20:15.871891', '{\"StartedAt\":\"2021-08-10T13:20:15.8568905Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (520, 173, 'Succeeded', NULL, '2021-08-10 13:20:15.905893', '{\"SucceededAt\":\"2021-08-10T13:20:15.8948926Z\",\"PerformanceDuration\":\"4\",\"Latency\":\"14731\"}');
INSERT INTO `hangfire_state` VALUES (521, 174, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:21:00.060418', '{\"EnqueuedAt\":\"2021-08-10T13:21:00.0594187Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (522, 174, 'Processing', NULL, '2021-08-10 13:21:00.974471', '{\"StartedAt\":\"2021-08-10T13:21:00.9654705Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (523, 174, 'Succeeded', NULL, '2021-08-10 13:21:01.004472', '{\"SucceededAt\":\"2021-08-10T13:21:00.9934721Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"969\"}');
INSERT INTO `hangfire_state` VALUES (524, 175, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:22:15.224717', '{\"EnqueuedAt\":\"2021-08-10T13:22:15.2237179Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (525, 175, 'Processing', NULL, '2021-08-10 13:22:16.059765', '{\"StartedAt\":\"2021-08-10T13:22:16.0477650Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (526, 175, 'Succeeded', NULL, '2021-08-10 13:22:16.093767', '{\"SucceededAt\":\"2021-08-10T13:22:16.0817669Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"896\"}');
INSERT INTO `hangfire_state` VALUES (527, 176, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:23:00.067282', '{\"EnqueuedAt\":\"2021-08-10T13:23:00.0662827Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (528, 176, 'Processing', NULL, '2021-08-10 13:23:01.174346', '{\"StartedAt\":\"2021-08-10T13:23:01.1653456Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (529, 176, 'Succeeded', NULL, '2021-08-10 13:23:01.212348', '{\"SucceededAt\":\"2021-08-10T13:23:01.2023477Z\",\"PerformanceDuration\":\"6\",\"Latency\":\"1178\"}');
INSERT INTO `hangfire_state` VALUES (530, 177, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:24:30.283442', '{\"EnqueuedAt\":\"2021-08-10T13:24:30.2824428Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (531, 177, 'Processing', NULL, '2021-08-10 13:24:31.266499', '{\"StartedAt\":\"2021-08-10T13:24:31.2574985Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (532, 177, 'Succeeded', NULL, '2021-08-10 13:24:31.291500', '{\"SucceededAt\":\"2021-08-10T13:24:31.2804999Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"1031\"}');
INSERT INTO `hangfire_state` VALUES (533, 178, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:25:00.119149', '{\"EnqueuedAt\":\"2021-08-10T13:25:00.1181493Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (534, 178, 'Processing', NULL, '2021-08-10 13:25:01.366220', '{\"StartedAt\":\"2021-08-10T13:25:01.3572201Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (535, 178, 'Succeeded', NULL, '2021-08-10 13:25:01.399222', '{\"SucceededAt\":\"2021-08-10T13:25:01.3882219Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"1330\"}');
INSERT INTO `hangfire_state` VALUES (536, 179, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:26:30.501318', '{\"EnqueuedAt\":\"2021-08-10T13:26:30.5003188Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (537, 179, 'Processing', NULL, '2021-08-10 13:26:31.476374', '{\"StartedAt\":\"2021-08-10T13:26:31.4643740Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (538, 179, 'Succeeded', NULL, '2021-08-10 13:26:31.515376', '{\"SucceededAt\":\"2021-08-10T13:26:31.5003760Z\",\"PerformanceDuration\":\"1\",\"Latency\":\"1025\"}');
INSERT INTO `hangfire_state` VALUES (539, 180, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:27:00.040008', '{\"EnqueuedAt\":\"2021-08-10T13:27:00.0390084Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (540, 180, 'Processing', NULL, '2021-08-10 13:27:01.581096', '{\"StartedAt\":\"2021-08-10T13:27:01.5730961Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (541, 180, 'Succeeded', NULL, '2021-08-10 13:27:01.612098', '{\"SucceededAt\":\"2021-08-10T13:27:01.6000976Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"1576\"}');
INSERT INTO `hangfire_state` VALUES (542, 181, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:28:45.257026', '{\"EnqueuedAt\":\"2021-08-10T13:28:45.2510261Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (543, 181, 'Processing', NULL, '2021-08-10 13:28:46.680107', '{\"StartedAt\":\"2021-08-10T13:28:46.6701073Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (544, 181, 'Succeeded', NULL, '2021-08-10 13:28:46.714109', '{\"SucceededAt\":\"2021-08-10T13:28:46.7041093Z\",\"PerformanceDuration\":\"5\",\"Latency\":\"1489\"}');
INSERT INTO `hangfire_state` VALUES (545, 182, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:29:00.053872', '{\"EnqueuedAt\":\"2021-08-10T13:29:00.0528728Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (546, 182, 'Processing', NULL, '2021-08-10 13:29:01.762970', '{\"StartedAt\":\"2021-08-10T13:29:01.7569702Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (547, 182, 'Succeeded', NULL, '2021-08-10 13:29:01.793972', '{\"SucceededAt\":\"2021-08-10T13:29:01.7829717Z\",\"PerformanceDuration\":\"1\",\"Latency\":\"1765\"}');
INSERT INTO `hangfire_state` VALUES (548, 183, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:30:45.687914', '{\"EnqueuedAt\":\"2021-08-10T13:30:45.6869147Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (549, 183, 'Processing', NULL, '2021-08-10 13:30:46.961987', '{\"StartedAt\":\"2021-08-10T13:30:46.9519870Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (550, 183, 'Succeeded', NULL, '2021-08-10 13:30:47.011990', '{\"SucceededAt\":\"2021-08-10T13:30:46.9989897Z\",\"PerformanceDuration\":\"4\",\"Latency\":\"1339\"}');
INSERT INTO `hangfire_state` VALUES (551, 184, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:31:00.031735', '{\"EnqueuedAt\":\"2021-08-10T13:31:00.0307351Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (552, 184, 'Processing', NULL, '2021-08-10 13:31:02.066851', '{\"StartedAt\":\"2021-08-10T13:31:02.0618513Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (553, 184, 'Succeeded', NULL, '2021-08-10 13:31:02.088852', '{\"SucceededAt\":\"2021-08-10T13:31:02.0798523Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"2069\"}');
INSERT INTO `hangfire_state` VALUES (554, 185, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:33:00.832644', '{\"EnqueuedAt\":\"2021-08-10T13:33:00.8316445Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (555, 185, 'Processing', NULL, '2021-08-10 13:33:02.352731', '{\"StartedAt\":\"2021-08-10T13:33:02.3437310Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (556, 185, 'Succeeded', NULL, '2021-08-10 13:33:02.372732', '{\"SucceededAt\":\"2021-08-10T13:33:02.3647322Z\",\"PerformanceDuration\":\"1\",\"Latency\":\"1554\"}');
INSERT INTO `hangfire_state` VALUES (557, 186, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:35:01.041520', '{\"EnqueuedAt\":\"2021-08-10T13:35:01.0405201Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (558, 186, 'Processing', NULL, '2021-08-10 13:35:02.437600', '{\"StartedAt\":\"2021-08-10T13:35:02.4325997Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (559, 186, 'Succeeded', NULL, '2021-08-10 13:35:02.469601', '{\"SucceededAt\":\"2021-08-10T13:35:02.4576011Z\",\"PerformanceDuration\":\"2\",\"Latency\":\"1435\"}');
INSERT INTO `hangfire_state` VALUES (560, 187, 'Enqueued', 'Triggered by recurring job scheduler', '2021-08-10 13:37:16.298256', '{\"EnqueuedAt\":\"2021-08-10T13:37:16.2972563Z\",\"Queue\":\"default\"}');
INSERT INTO `hangfire_state` VALUES (561, 187, 'Processing', NULL, '2021-08-10 13:37:17.604331', '{\"StartedAt\":\"2021-08-10T13:37:17.5683290Z\",\"ServerId\":\"user-20140905nh:9280:5e5bdba4-35e6-44da-8e24-29c8e1da07f4\",\"WorkerId\":\"1da43f1a-5356-4343-966b-12e68f8f87d9\"}');
INSERT INTO `hangfire_state` VALUES (562, 187, 'Succeeded', NULL, '2021-08-10 13:37:17.660334', '{\"SucceededAt\":\"2021-08-10T13:37:17.6503337Z\",\"PerformanceDuration\":\"3\",\"Latency\":\"1374\"}');

SET FOREIGN_KEY_CHECKS = 1;
