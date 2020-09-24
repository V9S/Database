/*
 Navicat Premium Data Transfer

 Source Server         : 10.2.7.114
 Source Server Type    : MySQL
 Source Server Version : 50647
 Source Host           : 10.2.7.114:3306
 Source Schema         : xxl

 Target Server Type    : MySQL
 Target Server Version : 50647
 File Encoding         : 65001

 Date: 29/06/2020 13:05:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for xxl_job_group
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_group`;
CREATE TABLE `xxl_job_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ִ����AppName',
  `title` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ִ��������',
  `order` int(11) NOT NULL DEFAULT 0 COMMENT '����',
  `address_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'ִ������ַ���ͣ�0=�Զ�ע�ᡢ1=�ֶ�¼��',
  `address_list` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ִ������ַ�б����ַ���ŷָ�',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xxl_job_group
-- ----------------------------
INSERT INTO `xxl_job_group` VALUES (2, 'jy-np-plantask', 'jy-np-planta', 1, 0, '172.27.0.6:9999');

-- ----------------------------
-- Table structure for xxl_job_info
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_info`;
CREATE TABLE `xxl_job_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_group` int(11) NOT NULL COMMENT 'ִ��������ID',
  `job_cron` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '����ִ��CRON',
  `job_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `job_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `author` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '����',
  `alarm_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '�����ʼ�',
  `executor_route_strategy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ִ����·�ɲ���',
  `executor_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ִ��������handler',
  `executor_param` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ִ�����������',
  `executor_block_strategy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '�����������',
  `executor_timeout` int(11) NOT NULL DEFAULT 0 COMMENT '����ִ�г�ʱʱ�䣬��λ��',
  `executor_fail_retry_count` int(11) NOT NULL DEFAULT 0 COMMENT 'ʧ�����Դ���',
  `glue_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'GLUE����',
  `glue_source` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'GLUEԴ����',
  `glue_remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'GLUE��ע',
  `glue_updatetime` datetime(0) NULL DEFAULT NULL COMMENT 'GLUE����ʱ��',
  `child_jobid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '������ID��������ŷָ�',
  `trigger_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '����״̬��0-ֹͣ��1-����',
  `trigger_last_time` bigint(13) NOT NULL DEFAULT 0 COMMENT '�ϴε���ʱ��',
  `trigger_next_time` bigint(13) NOT NULL DEFAULT 0 COMMENT '�´ε���ʱ��',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xxl_job_info
-- ----------------------------
INSERT INTO `xxl_job_info` VALUES (2, 2, '0/5 * * * * ?', '����ͬ���������ݴ���', 'TableThreadService', '2020-06-22 02:13:28', '2020-06-22 02:28:26', '��ΰ��', '', 'FIRST', 'TableThreadService', '', 'SERIAL_EXECUTION', 0, 0, 'BEAN', '', 'GLUE�����ʼ��', '2020-06-22 02:13:28', '', 0, 0, 0);
INSERT INTO `xxl_job_info` VALUES (3, 2, '1 0 0 * * ?', '�ն˴�ӡ��ֽ�������', 'ListenPaperPlanTaskExecutor', '2020-06-22 02:14:46', '2020-06-23 10:02:30', '������', '', 'FIRST', 'ListenPaperPlanTaskExecutor', '', 'SERIAL_EXECUTION', 20, 0, 'BEAN', '', 'GLUE�����ʼ��', '2020-06-22 02:14:46', '', 0, 0, 0);
INSERT INTO `xxl_job_info` VALUES (4, 2, '1 0 0 * * ?', '�ն˴�ӡ�������', 'ListenNetworkPlanTask', '2020-06-22 02:15:51', '2020-06-23 10:02:13', '������', '', 'FIRST', 'ListenNetworkPlanTask', '', 'SERIAL_EXECUTION', 3, 0, 'BEAN', '', 'GLUE�����ʼ��', '2020-06-22 02:15:51', '', 0, 0, 0);
INSERT INTO `xxl_job_info` VALUES (5, 2, '0 0 1 * * ?', '������㣨����', 'CWJKPlanTaskExecutor', '2020-06-22 02:16:40', '2020-06-22 03:04:28', '���˧', '', 'FIRST', 'CWJKPlanTaskExecutor', '', 'SERIAL_EXECUTION', 0, 0, 'BEAN', '', 'GLUE�����ʼ��', '2020-06-22 02:16:40', '', 0, 0, 0);
INSERT INTO `xxl_job_info` VALUES (6, 2, '0 0 1 * * ?', 'У�ڴ��ù�ʾ�Զ�����', 'DisposalFormulaPlanTaskExecutor', '2020-06-22 02:17:21', '2020-06-29 05:01:39', 'ۡ��', '', 'FIRST', 'DisposalFormulaPlanTaskExecutor', '', 'SERIAL_EXECUTION', 0, 0, 'BEAN', '', 'GLUE�����ʼ��', '2020-06-22 02:17:21', '', 0, 0, 0);
INSERT INTO `xxl_job_info` VALUES (7, 2, '0 0 0 1 1/3 ?', '��־�鵵', 'GamsLogBackupService', '2020-06-22 03:02:51', '2020-06-22 03:02:51', '������', '', 'FIRST', 'GamsLogBackupService', '', 'SERIAL_EXECUTION', 0, 0, 'BEAN', '', 'GLUE�����ʼ��', '2020-06-22 03:02:51', '', 0, 0, 0);
INSERT INTO `xxl_job_info` VALUES (8, 2, '0 0 1 * * ?', '������㣨��ƣ�', 'TCJKPlanTaskExecutor', '2020-06-22 03:05:13', '2020-06-22 03:05:13', '���˧', '', 'FIRST', 'TCJKPlanTaskExecutor', '', 'SERIAL_EXECUTION', 0, 0, 'BEAN', '', 'GLUE�����ʼ��', '2020-06-22 03:05:13', '', 0, 0, 0);

-- ----------------------------
-- Table structure for xxl_job_lock
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_lock`;
CREATE TABLE `xxl_job_lock`  (
  `lock_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '������',
  PRIMARY KEY (`lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xxl_job_lock
-- ----------------------------
INSERT INTO `xxl_job_lock` VALUES ('schedule_lock');

-- ----------------------------
-- Table structure for xxl_job_log
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_log`;
CREATE TABLE `xxl_job_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job_group` int(11) NOT NULL COMMENT 'ִ��������ID',
  `job_id` int(11) NOT NULL COMMENT '��������ID',
  `billid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ҵ��id',
  `executor_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ִ������ַ������ִ�еĵ�ַ',
  `executor_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ִ��������handler',
  `executor_param` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ִ�����������',
  `executor_sharding_param` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ִ���������Ƭ��������ʽ�� 1/2',
  `executor_fail_retry_count` int(11) NOT NULL DEFAULT 0 COMMENT 'ʧ�����Դ���',
  `trigger_time` datetime(0) NULL DEFAULT NULL COMMENT '����-ʱ��',
  `trigger_code` int(11) NOT NULL COMMENT '����-���',
  `trigger_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '����-��־',
  `handle_time` datetime(0) NULL DEFAULT NULL COMMENT 'ִ��-ʱ��',
  `handle_code` int(11) NOT NULL COMMENT 'ִ��-״̬',
  `handle_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'ִ��-��־',
  `alarm_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '�澯״̬��0-Ĭ�ϡ�1-����澯��2-�澯�ɹ���3-�澯ʧ��',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `I_trigger_time`(`trigger_time`) USING BTREE,
  INDEX `I_handle_code`(`handle_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for xxl_job_log_report
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_log_report`;
CREATE TABLE `xxl_job_log_report`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trigger_day` datetime(0) NULL DEFAULT NULL COMMENT '����-ʱ��',
  `running_count` int(11) NOT NULL DEFAULT 0 COMMENT '������-��־����',
  `suc_count` int(11) NOT NULL DEFAULT 0 COMMENT 'ִ�гɹ�-��־����',
  `fail_count` int(11) NOT NULL DEFAULT 0 COMMENT 'ִ��ʧ��-��־����',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `i_trigger_day`(`trigger_day`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xxl_job_log_report
-- ----------------------------
INSERT INTO `xxl_job_log_report` VALUES (1, '2020-06-18 16:00:00', 0, 0, 0);
INSERT INTO `xxl_job_log_report` VALUES (2, '2020-06-17 16:00:00', 0, 0, 0);
INSERT INTO `xxl_job_log_report` VALUES (3, '2020-06-16 16:00:00', 0, 0, 0);
INSERT INTO `xxl_job_log_report` VALUES (4, '2020-06-19 16:00:00', 0, 0, 0);
INSERT INTO `xxl_job_log_report` VALUES (5, '2020-06-20 16:00:00', 0, 0, 0);
INSERT INTO `xxl_job_log_report` VALUES (6, '2020-06-21 16:00:00', 0, 0, 0);
INSERT INTO `xxl_job_log_report` VALUES (7, '2020-06-22 16:00:00', 0, 0, 0);
INSERT INTO `xxl_job_log_report` VALUES (8, '2020-06-23 16:00:00', 0, 0, 0);
INSERT INTO `xxl_job_log_report` VALUES (9, '2020-06-24 16:00:00', 0, 0, 0);
INSERT INTO `xxl_job_log_report` VALUES (10, '2020-06-25 16:00:00', 0, 0, 0);
INSERT INTO `xxl_job_log_report` VALUES (11, '2020-06-26 16:00:00', 0, 0, 0);
INSERT INTO `xxl_job_log_report` VALUES (12, '2020-06-27 16:00:00', 0, 0, 0);
INSERT INTO `xxl_job_log_report` VALUES (13, '2020-06-28 16:00:00', 0, 0, 0);

-- ----------------------------
-- Table structure for xxl_job_logglue
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_logglue`;
CREATE TABLE `xxl_job_logglue`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL COMMENT '��������ID',
  `glue_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'GLUE����',
  `glue_source` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'GLUEԴ����',
  `glue_remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'GLUE��ע',
  `add_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for xxl_job_registry
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_registry`;
CREATE TABLE `xxl_job_registry`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registry_group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `registry_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `registry_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xxl_job_registry
-- ----------------------------
INSERT INTO `xxl_job_registry` VALUES (11, 'EXECUTOR', 'jy-np-plantask', '172.27.0.6:9999', '2020-06-29 05:02:02');

-- ----------------------------
-- Table structure for xxl_job_user
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_user`;
CREATE TABLE `xxl_job_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '�˺�',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '����',
  `role` tinyint(4) NOT NULL COMMENT '��ɫ��0-��ͨ�û���1-����Ա',
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Ȩ�ޣ�ִ����ID�б�������ŷָ�',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `i_username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xxl_job_user
-- ----------------------------
INSERT INTO `xxl_job_user` VALUES (1, 'admin', '161ebd7d45089b3446ee4e0d86dbcf92', 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;

select * from xxl_job_logglue;
