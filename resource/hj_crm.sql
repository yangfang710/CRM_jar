/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : hj_crm

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2019-09-06 09:38:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hj_action
-- ----------------------------
DROP TABLE IF EXISTS `hj_action`;
CREATE TABLE `hj_action` (
  `actionid` int(11) NOT NULL AUTO_INCREMENT,
  `billno` int(11) DEFAULT NULL,
  `actioncode` varchar(255) DEFAULT NULL,
  `resourceId` int(11) DEFAULT NULL,
  `studentId` int(11) DEFAULT NULL,
  `billstate` int(255) DEFAULT NULL,
  `fromuserid` int(11) DEFAULT NULL,
  `touserid` int(11) DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `dr` int(255) DEFAULT '0',
  PRIMARY KEY (`actionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hj_action
-- ----------------------------

-- ----------------------------
-- Table structure for hj_cellinfo
-- ----------------------------
DROP TABLE IF EXISTS `hj_cellinfo`;
CREATE TABLE `hj_cellinfo` (
  `cellinfoId` int(11) NOT NULL AUTO_INCREMENT,
  `cellname` varchar(255) DEFAULT NULL,
  `cellcode` varchar(255) DEFAULT NULL,
  `cellno` int(11) DEFAULT NULL,
  `cellmenu` varchar(255) DEFAULT NULL,
  `celldeptid` int(11) DEFAULT NULL,
  `cellroleid` int(11) DEFAULT NULL,
  `celluserid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cellinfoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hj_cellinfo
-- ----------------------------

-- ----------------------------
-- Table structure for hj_course
-- ----------------------------
DROP TABLE IF EXISTS `hj_course`;
CREATE TABLE `hj_course` (
  `courseid` int(11) NOT NULL AUTO_INCREMENT,
  `courseName` varchar(255) DEFAULT NULL,
  `coursecode` varchar(255) DEFAULT NULL,
  `courseMoney` varchar(255) DEFAULT NULL,
  `courseDescribe` varchar(255) DEFAULT NULL,
  `courseTeacherid` int(11) DEFAULT NULL,
  `courseTeacherName` varchar(255) DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `dr` int(255) DEFAULT '0',
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hj_course
-- ----------------------------
INSERT INTO `hj_course` VALUES ('1', '吸星大法', null, '6666', '为我所有', null, '任我行', '1', '2019-09-05 09:36:48', '2019-09-05 09:37:46', '1', '', '0');
INSERT INTO `hj_course` VALUES ('2', '独孤九剑', null, '9999', '一器破万法', null, '令狐冲', '1', '2019-09-05 09:38:09', null, null, '', '0');

-- ----------------------------
-- Table structure for hj_dept
-- ----------------------------
DROP TABLE IF EXISTS `hj_dept`;
CREATE TABLE `hj_dept` (
  `deptid` int(11) NOT NULL AUTO_INCREMENT,
  `deptparaid` int(11) DEFAULT NULL,
  `deptname` varchar(255) DEFAULT NULL,
  `deptcode` varchar(255) DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `dr` int(255) DEFAULT '0',
  PRIMARY KEY (`deptid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hj_dept
-- ----------------------------
INSERT INTO `hj_dept` VALUES ('1', null, '绿盟科技', '10001', '1', '2019-09-04 20:21:45', '1', '2019-09-04 20:21:47', '0');
INSERT INTO `hj_dept` VALUES ('2', '1', '成都研发中心', 'cd_nsfocus', '1', '2019-09-05 09:22:31', null, null, '0');
INSERT INTO `hj_dept` VALUES ('3', '1', '武汉研发中心', 'wh_nsfocus', '1', '2019-09-05 09:32:39', null, null, '0');
INSERT INTO `hj_dept` VALUES ('4', '1', '西安研发中心', 'xa_nsfocus', '1', '2019-09-05 09:33:02', null, null, '0');
INSERT INTO `hj_dept` VALUES ('5', '1', '北京研发中心', 'bj_nsfocus', '1', '2019-09-05 09:33:14', null, null, '0');

-- ----------------------------
-- Table structure for hj_forget
-- ----------------------------
DROP TABLE IF EXISTS `hj_forget`;
CREATE TABLE `hj_forget` (
  `forgetid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `expiration_time` datetime DEFAULT NULL,
  `randomcode` varchar(255) DEFAULT NULL,
  `linknumber` int(11) DEFAULT NULL,
  `dr` int(11) DEFAULT '0',
  PRIMARY KEY (`forgetid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hj_forget
-- ----------------------------
INSERT INTO `hj_forget` VALUES ('1', '1', 'admin@qq.com', '2019-09-05 09:48:25', '2019-09-06 00:00:00', '79831f351fa50565433e2ad877c67488', '0', '0');
INSERT INTO `hj_forget` VALUES ('2', '1', '413621484@qq.com', '2019-09-05 09:50:17', '2019-09-06 00:00:00', 'cd683734770314e00cbdae6d24a83e4d', '0', '0');
INSERT INTO `hj_forget` VALUES ('3', '1', '413621484@qq.com', '2019-09-05 09:58:22', '2019-09-06 00:00:00', 'd5a89d1db58aa86e3ca716f0c39c47de', '0', '0');
INSERT INTO `hj_forget` VALUES ('4', '1', '413621484@qq.com', '2019-09-05 09:58:34', '2019-09-06 00:00:00', '9e4dcc180b1f4d242be7f1caa9928637', '0', '0');

-- ----------------------------
-- Table structure for hj_menu
-- ----------------------------
DROP TABLE IF EXISTS `hj_menu`;
CREATE TABLE `hj_menu` (
  `menuid` int(11) NOT NULL AUTO_INCREMENT,
  `menuname` varchar(100) DEFAULT NULL,
  `menuurl` varchar(255) DEFAULT NULL,
  `menuno` int(11) DEFAULT NULL,
  `menuparaid` int(11) DEFAULT NULL,
  `menucode` varchar(255) DEFAULT NULL,
  `menuimgurl` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `menutype` varchar(255) DEFAULT NULL,
  `dr` int(11) DEFAULT '0',
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hj_menu
-- ----------------------------
INSERT INTO `hj_menu` VALUES ('1', '系统管理', '/', '100', null, null, 'img/tishi.png', null, null, '0');
INSERT INTO `hj_menu` VALUES ('2', '用户管理', 'system/userMang.do', '101', '1', null, null, null, null, '0');
INSERT INTO `hj_menu` VALUES ('3', '消息管理', 'system/systemMessage.do', '105', '1', null, null, null, null, '0');
INSERT INTO `hj_menu` VALUES ('4', '角色管理', 'system/roleMang.do', '102', '1', null, null, null, null, '0');
INSERT INTO `hj_menu` VALUES ('5', '菜单管理', 'system/menuMang.do', '103', '1', null, null, null, null, '0');
INSERT INTO `hj_menu` VALUES ('6', '部门管理', 'system/deptMang.do', '104', '1', null, null, null, null, '0');
INSERT INTO `hj_menu` VALUES ('7', '选课管理', '/', '200', null, null, 'img/tishi.png', null, null, '0');
INSERT INTO `hj_menu` VALUES ('8', '科目管理', 'system/subjectMang.do', '201', '7', null, null, null, null, '0');
INSERT INTO `hj_menu` VALUES ('9', '课程管理', 'system/courseMang.do', '202', '7', null, null, null, null, '0');

-- ----------------------------
-- Table structure for hj_role
-- ----------------------------
DROP TABLE IF EXISTS `hj_role`;
CREATE TABLE `hj_role` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  `dr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hj_role
-- ----------------------------
INSERT INTO `hj_role` VALUES ('1', '超级管理员', '1', '0');
INSERT INTO `hj_role` VALUES ('2', '系统管理员', '1', '0');

-- ----------------------------
-- Table structure for hj_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `hj_role_menu`;
CREATE TABLE `hj_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) DEFAULT NULL,
  `menuid` int(11) DEFAULT NULL,
  `dr` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hj_role_menu
-- ----------------------------
INSERT INTO `hj_role_menu` VALUES ('1', '1', '1', '0');
INSERT INTO `hj_role_menu` VALUES ('2', '1', '2', '0');
INSERT INTO `hj_role_menu` VALUES ('3', '1', '3', '0');
INSERT INTO `hj_role_menu` VALUES ('4', '1', '4', '0');
INSERT INTO `hj_role_menu` VALUES ('5', '1', '5', '0');
INSERT INTO `hj_role_menu` VALUES ('6', '1', '6', '0');
INSERT INTO `hj_role_menu` VALUES ('7', '1', '7', '0');
INSERT INTO `hj_role_menu` VALUES ('8', '2', '2', '0');
INSERT INTO `hj_role_menu` VALUES ('9', '2', '6', '0');
INSERT INTO `hj_role_menu` VALUES ('10', '2', '7', '0');
INSERT INTO `hj_role_menu` VALUES ('11', '1', '8', '0');
INSERT INTO `hj_role_menu` VALUES ('12', '1', '9', '0');

-- ----------------------------
-- Table structure for hj_subject
-- ----------------------------
DROP TABLE IF EXISTS `hj_subject`;
CREATE TABLE `hj_subject` (
  `subjectid` int(11) NOT NULL AUTO_INCREMENT,
  `courseid` int(11) DEFAULT NULL,
  `subjectname` varchar(255) DEFAULT NULL,
  `subjectcode` varchar(255) DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `dr` int(11) DEFAULT '0',
  PRIMARY KEY (`subjectid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hj_subject
-- ----------------------------
INSERT INTO `hj_subject` VALUES ('1', '2', '江湖', '001', '1', '2019-09-05 10:27:11', null, null, '', '0');

-- ----------------------------
-- Table structure for hj_systemmessage
-- ----------------------------
DROP TABLE IF EXISTS `hj_systemmessage`;
CREATE TABLE `hj_systemmessage` (
  `systemmessageId` int(11) NOT NULL AUTO_INCREMENT,
  `messagetitle` varchar(255) DEFAULT NULL,
  `messageContent` varchar(255) DEFAULT NULL,
  `issend` int(255) DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`systemmessageId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hj_systemmessage
-- ----------------------------
INSERT INTO `hj_systemmessage` VALUES ('1', '9月5号', 'CNCERT定制项目测试', '1', '2019-09-04 20:57:03', '2019-09-01 20:57:06', '1');
INSERT INTO `hj_systemmessage` VALUES ('2', '测试NTA', 'F01SP05执行阶段主要是验证bug需要花费时间比较长。', '1', '2019-09-05 20:17:59', '2019-09-05 20:17:54', null);

-- ----------------------------
-- Table structure for hj_todaynote
-- ----------------------------
DROP TABLE IF EXISTS `hj_todaynote`;
CREATE TABLE `hj_todaynote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `dr` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hj_todaynote
-- ----------------------------
INSERT INTO `hj_todaynote` VALUES ('1', '1', '完成奥术大师多阿萨德as打手电', '2019-09-04 20:44:43', '2019-10-01 20:44:45', '0');
INSERT INTO `hj_todaynote` VALUES ('2', '1', '完成整个项目', '2019-09-05 08:40:46', null, '0');
INSERT INTO `hj_todaynote` VALUES ('3', '1', '测试完成', '2019-09-06 08:30:27', null, '0');

-- ----------------------------
-- Table structure for hj_user
-- ----------------------------
DROP TABLE IF EXISTS `hj_user`;
CREATE TABLE `hj_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `state` tinyint(5) DEFAULT NULL,
  `wxopenid` int(11) DEFAULT NULL,
  `qqopenid` int(11) DEFAULT NULL,
  `dr` varchar(100) DEFAULT NULL,
  `userphoto` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `ischange` tinyint(5) DEFAULT NULL,
  `deptgroup` varchar(50) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hj_user
-- ----------------------------
INSERT INTO `hj_user` VALUES ('1', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '111111', '8113', '2', '1', '2019-09-04 19:37:43', '0', '111', '111', '0', '', 'admin@qq.com', '1', '1', '0', '1', '2019-09-05 09:47:59', '');
INSERT INTO `hj_user` VALUES ('2', 'test', 'test', 'e10adc3949ba59abbe56e057f20f883e', '222222', '182 0012 4100', '3', '2', null, '0', null, null, '0', '', 'test@qq.com', null, null, '0', '1', '2019-09-05 09:09:41', '');
