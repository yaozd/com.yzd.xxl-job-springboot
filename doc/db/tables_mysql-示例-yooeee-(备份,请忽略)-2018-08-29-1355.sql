/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : xxl-job

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-08-29 14:44:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for xxl_job_qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_blob_triggers`;
CREATE TABLE `xxl_job_qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `xxl_job_qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `xxl_job_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xxl_job_qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_calendars`;
CREATE TABLE `xxl_job_qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xxl_job_qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_cron_triggers`;
CREATE TABLE `xxl_job_qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `xxl_job_qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `xxl_job_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xxl_job_qrtz_cron_triggers
-- ----------------------------
INSERT INTO `xxl_job_qrtz_cron_triggers` VALUES ('quartzScheduler', '1', '1', '0 0 3 1 1 ? 2099', 'Asia/Shanghai');
INSERT INTO `xxl_job_qrtz_cron_triggers` VALUES ('quartzScheduler', '2', '2', '0/10 * * * * ? ', 'Asia/Shanghai');
INSERT INTO `xxl_job_qrtz_cron_triggers` VALUES ('quartzScheduler', '3', '2', '0 0 3 1 1 ? 2099', 'Asia/Shanghai');
INSERT INTO `xxl_job_qrtz_cron_triggers` VALUES ('quartzScheduler', '4', '2', '0 0 3 1 1 ? 2099', 'Asia/Shanghai');
INSERT INTO `xxl_job_qrtz_cron_triggers` VALUES ('quartzScheduler', '5', '2', '0 0 3 1 1 ? 2099', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for xxl_job_qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_fired_triggers`;
CREATE TABLE `xxl_job_qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xxl_job_qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_job_details`;
CREATE TABLE `xxl_job_qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xxl_job_qrtz_job_details
-- ----------------------------
INSERT INTO `xxl_job_qrtz_job_details` VALUES ('quartzScheduler', '1', '1', null, 'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000010770800000010000000007800);
INSERT INTO `xxl_job_qrtz_job_details` VALUES ('quartzScheduler', '2', '2', null, 'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000010770800000010000000007800);
INSERT INTO `xxl_job_qrtz_job_details` VALUES ('quartzScheduler', '3', '2', null, 'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000010770800000010000000007800);
INSERT INTO `xxl_job_qrtz_job_details` VALUES ('quartzScheduler', '4', '2', null, 'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000010770800000010000000007800);
INSERT INTO `xxl_job_qrtz_job_details` VALUES ('quartzScheduler', '5', '2', null, 'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000010770800000010000000007800);

-- ----------------------------
-- Table structure for xxl_job_qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_locks`;
CREATE TABLE `xxl_job_qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xxl_job_qrtz_locks
-- ----------------------------
INSERT INTO `xxl_job_qrtz_locks` VALUES ('quartzScheduler', 'STATE_ACCESS');
INSERT INTO `xxl_job_qrtz_locks` VALUES ('quartzScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for xxl_job_qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_paused_trigger_grps`;
CREATE TABLE `xxl_job_qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xxl_job_qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_scheduler_state`;
CREATE TABLE `xxl_job_qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xxl_job_qrtz_scheduler_state
-- ----------------------------
INSERT INTO `xxl_job_qrtz_scheduler_state` VALUES ('quartzScheduler', 'DESKTOP-UBO3UI81535524842593', '1535525074373', '5000');

-- ----------------------------
-- Table structure for xxl_job_qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_simple_triggers`;
CREATE TABLE `xxl_job_qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `xxl_job_qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `xxl_job_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xxl_job_qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_simprop_triggers`;
CREATE TABLE `xxl_job_qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `xxl_job_qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `xxl_job_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xxl_job_qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_triggers`;
CREATE TABLE `xxl_job_qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `xxl_job_qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `xxl_job_qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xxl_job_qrtz_triggers
-- ----------------------------
INSERT INTO `xxl_job_qrtz_triggers` VALUES ('quartzScheduler', '1', '1', '1', '1', null, '4070890800000', '-1', '5', 'WAITING', 'CRON', '1535337238000', '0', null, '2', '');
INSERT INTO `xxl_job_qrtz_triggers` VALUES ('quartzScheduler', '2', '2', '2', '2', null, '1535523620000', '1535523610000', '5', 'PAUSED', 'CRON', '1535518696000', '0', null, '2', '');
INSERT INTO `xxl_job_qrtz_triggers` VALUES ('quartzScheduler', '3', '2', '3', '2', null, '4070890800000', '-1', '5', 'WAITING', 'CRON', '1535518939000', '0', null, '2', '');
INSERT INTO `xxl_job_qrtz_triggers` VALUES ('quartzScheduler', '4', '2', '4', '2', null, '4070890800000', '-1', '5', 'WAITING', 'CRON', '1535519502000', '0', null, '2', '');
INSERT INTO `xxl_job_qrtz_triggers` VALUES ('quartzScheduler', '5', '2', '5', '2', null, '4070890800000', '-1', '5', 'WAITING', 'CRON', '1535519764000', '0', null, '2', '');

-- ----------------------------
-- Table structure for xxl_job_qrtz_trigger_group
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_trigger_group`;
CREATE TABLE `xxl_job_qrtz_trigger_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(64) NOT NULL COMMENT '执行器AppName',
  `title` varchar(12) NOT NULL COMMENT '执行器名称',
  `order` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `address_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '执行器地址类型：0=自动注册、1=手动录入',
  `address_list` varchar(512) DEFAULT NULL COMMENT '执行器地址列表，多地址逗号分隔',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xxl_job_qrtz_trigger_group
-- ----------------------------
INSERT INTO `xxl_job_qrtz_trigger_group` VALUES ('1', 'xxl-job-executor-sample', '示例执行器', '20', '0', null);
INSERT INTO `xxl_job_qrtz_trigger_group` VALUES ('2', 'xxl-job-executor-yooeee-sample', '示例执行器-yooeee', '1', '0', null);

-- ----------------------------
-- Table structure for xxl_job_qrtz_trigger_info
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_trigger_info`;
CREATE TABLE `xxl_job_qrtz_trigger_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_group` int(11) NOT NULL COMMENT '执行器主键ID',
  `job_cron` varchar(128) NOT NULL COMMENT '任务执行CRON',
  `job_desc` varchar(255) NOT NULL,
  `add_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `author` varchar(64) DEFAULT NULL COMMENT '作者',
  `alarm_email` varchar(255) DEFAULT NULL COMMENT '报警邮件',
  `executor_route_strategy` varchar(50) DEFAULT NULL COMMENT '执行器路由策略',
  `executor_handler` varchar(255) DEFAULT NULL COMMENT '执行器任务handler',
  `executor_param` varchar(512) DEFAULT NULL COMMENT '执行器任务参数',
  `executor_block_strategy` varchar(50) DEFAULT NULL COMMENT '阻塞处理策略',
  `executor_fail_strategy` varchar(50) DEFAULT NULL COMMENT '失败处理策略',
  `glue_type` varchar(50) NOT NULL COMMENT 'GLUE类型',
  `glue_source` text COMMENT 'GLUE源代码',
  `glue_remark` varchar(128) DEFAULT NULL COMMENT 'GLUE备注',
  `glue_updatetime` datetime DEFAULT NULL COMMENT 'GLUE更新时间',
  `child_jobid` varchar(255) DEFAULT NULL COMMENT '子任务ID，多个逗号分隔',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xxl_job_qrtz_trigger_info
-- ----------------------------
INSERT INTO `xxl_job_qrtz_trigger_info` VALUES ('1', '1', '0 0 3 1 1 ? 2099', 'demo', '2018-08-27 10:33:58', '2018-08-27 10:33:58', 'yzd', '', 'FIRST', 'demoJobHandler', '', 'DISCARD_LATER', 'FAIL_ALARM', 'BEAN', '', 'GLUE代码初始化', '2018-08-27 10:33:58', '');
INSERT INTO `xxl_job_qrtz_trigger_info` VALUES ('2', '2', '0/10 * * * * ? ', 'QJLianlianJob-清理未支付订单(演示每10秒执行一次)', '2018-08-29 12:58:16', '2018-08-29 14:16:55', 'yzd', '', 'FIRST', 'QJLianlianJob_ClearOvertimeOrderHandler', '', 'DISCARD_LATER', 'FAIL_ALARM', 'BEAN', '', 'GLUE代码初始化', '2018-08-29 12:58:16', '');
INSERT INTO `xxl_job_qrtz_trigger_info` VALUES ('3', '2', '0 0 3 1 1 ? 2099', 'QJLianlianJob-对在线项目进行上/下线状态处理', '2018-08-29 13:02:19', '2018-08-29 13:13:44', 'yzd', '', 'FIRST', 'QJLianlianJob_ProcessInvestProjectOnLineStatusHandler', '', 'DISCARD_LATER', 'FAIL_ALARM', 'BEAN', '', 'GLUE代码初始化', '2018-08-29 13:02:19', '');
INSERT INTO `xxl_job_qrtz_trigger_info` VALUES ('4', '2', '0 0 3 1 1 ? 2099', 'BigJob-取消商品订单(演示DEMO-2018)', '2018-08-29 13:11:42', '2018-08-29 13:53:06', 'yzd', '', 'FIRST', 'BigJob_CancelGoodsOrderHandler', '', 'DISCARD_LATER', 'FAIL_ALARM', 'BEAN', '', 'GLUE代码初始化', '2018-08-29 13:11:42', '');
INSERT INTO `xxl_job_qrtz_trigger_info` VALUES ('5', '2', '0 0 3 1 1 ? 2099', 'BigJob-取消订单 (模拟异常情况)', '2018-08-29 13:16:03', '2018-08-29 13:17:42', 'yzd', '', 'FIRST', 'BigJob_CancelOrderHandler', '', 'DISCARD_LATER', 'FAIL_ALARM', 'BEAN', '', 'GLUE代码初始化', '2018-08-29 13:16:03', '');

-- ----------------------------
-- Table structure for xxl_job_qrtz_trigger_log
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_trigger_log`;
CREATE TABLE `xxl_job_qrtz_trigger_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_group` int(11) NOT NULL COMMENT '执行器主键ID',
  `job_id` int(11) NOT NULL COMMENT '任务，主键ID',
  `glue_type` varchar(50) DEFAULT NULL COMMENT 'GLUE类型',
  `executor_address` varchar(255) DEFAULT NULL COMMENT '执行器地址，本次执行的地址',
  `executor_handler` varchar(255) DEFAULT NULL COMMENT '执行器任务handler',
  `executor_param` varchar(512) DEFAULT NULL COMMENT '执行器任务参数',
  `trigger_time` datetime DEFAULT NULL COMMENT '调度-时间',
  `trigger_code` varchar(255) NOT NULL DEFAULT '0' COMMENT '调度-结果',
  `trigger_msg` varchar(2048) DEFAULT NULL COMMENT '调度-日志',
  `handle_time` datetime DEFAULT NULL COMMENT '执行-时间',
  `handle_code` varchar(255) NOT NULL DEFAULT '0' COMMENT '执行-状态',
  `handle_msg` varchar(2048) DEFAULT NULL COMMENT '执行-日志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xxl_job_qrtz_trigger_log
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_qrtz_trigger_logglue
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_trigger_logglue`;
CREATE TABLE `xxl_job_qrtz_trigger_logglue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL COMMENT '任务，主键ID',
  `glue_type` varchar(50) DEFAULT NULL COMMENT 'GLUE类型',
  `glue_source` text COMMENT 'GLUE源代码',
  `glue_remark` varchar(128) NOT NULL COMMENT 'GLUE备注',
  `add_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xxl_job_qrtz_trigger_logglue
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_qrtz_trigger_registry
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_trigger_registry`;
CREATE TABLE `xxl_job_qrtz_trigger_registry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registry_group` varchar(255) NOT NULL,
  `registry_key` varchar(255) NOT NULL,
  `registry_value` varchar(255) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xxl_job_qrtz_trigger_registry
-- ----------------------------
