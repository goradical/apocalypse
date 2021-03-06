/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : apocalypse_example

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 30/07/2019 18:25:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for example
-- ----------------------------
DROP TABLE IF EXISTS `example`;
CREATE TABLE `example`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `example_extend_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '扩展表Id',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `birthday` date NOT NULL COMMENT '生日',
  `hobby` json NOT NULL COMMENT '爱好',
  `extend` json NOT NULL COMMENT '扩展',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'example表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for example_extend
-- ----------------------------
DROP TABLE IF EXISTS `example_extend`;
CREATE TABLE `example_extend`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `alias` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '别名',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'example扩展表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_database_table_0
-- ----------------------------
DROP TABLE IF EXISTS `sharding_database_table_0`;
CREATE TABLE `sharding_database_table_0`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_database_table_1
-- ----------------------------
DROP TABLE IF EXISTS `sharding_database_table_1`;
CREATE TABLE `sharding_database_table_1`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_database_table_2
-- ----------------------------
DROP TABLE IF EXISTS `sharding_database_table_2`;
CREATE TABLE `sharding_database_table_2`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_database_table_3
-- ----------------------------
DROP TABLE IF EXISTS `sharding_database_table_3`;
CREATE TABLE `sharding_database_table_3`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_database_table_4
-- ----------------------------
DROP TABLE IF EXISTS `sharding_database_table_4`;
CREATE TABLE `sharding_database_table_4`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_table_0
-- ----------------------------
DROP TABLE IF EXISTS `sharding_table_0`;
CREATE TABLE `sharding_table_0`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_table_1
-- ----------------------------
DROP TABLE IF EXISTS `sharding_table_1`;
CREATE TABLE `sharding_table_1`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_table_2
-- ----------------------------
DROP TABLE IF EXISTS `sharding_table_2`;
CREATE TABLE `sharding_table_2`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_table_3
-- ----------------------------
DROP TABLE IF EXISTS `sharding_table_3`;
CREATE TABLE `sharding_table_3`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_table_4
-- ----------------------------
DROP TABLE IF EXISTS `sharding_table_4`;
CREATE TABLE `sharding_table_4`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_year_month_2019_01
-- ----------------------------
DROP TABLE IF EXISTS `sharding_year_month_2019_01`;
CREATE TABLE `sharding_year_month_2019_01`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `order_date` datetime(0) NOT NULL COMMENT '下单时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_year_month_2019_02
-- ----------------------------
DROP TABLE IF EXISTS `sharding_year_month_2019_02`;
CREATE TABLE `sharding_year_month_2019_02`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `order_date` datetime(0) NOT NULL COMMENT '下单时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_year_month_2019_03
-- ----------------------------
DROP TABLE IF EXISTS `sharding_year_month_2019_03`;
CREATE TABLE `sharding_year_month_2019_03`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `order_date` datetime(0) NOT NULL COMMENT '下单时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_year_month_2019_04
-- ----------------------------
DROP TABLE IF EXISTS `sharding_year_month_2019_04`;
CREATE TABLE `sharding_year_month_2019_04`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `order_date` datetime(0) NOT NULL COMMENT '下单时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_year_month_2019_05
-- ----------------------------
DROP TABLE IF EXISTS `sharding_year_month_2019_05`;
CREATE TABLE `sharding_year_month_2019_05`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `order_date` datetime(0) NOT NULL COMMENT '下单时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_year_month_2019_06
-- ----------------------------
DROP TABLE IF EXISTS `sharding_year_month_2019_06`;
CREATE TABLE `sharding_year_month_2019_06`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `order_date` datetime(0) NOT NULL COMMENT '下单时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_year_month_2019_07
-- ----------------------------
DROP TABLE IF EXISTS `sharding_year_month_2019_07`;
CREATE TABLE `sharding_year_month_2019_07`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `order_date` datetime(0) NOT NULL COMMENT '下单时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_year_month_2019_08
-- ----------------------------
DROP TABLE IF EXISTS `sharding_year_month_2019_08`;
CREATE TABLE `sharding_year_month_2019_08`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `order_date` datetime(0) NOT NULL COMMENT '下单时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_year_month_2019_09
-- ----------------------------
DROP TABLE IF EXISTS `sharding_year_month_2019_09`;
CREATE TABLE `sharding_year_month_2019_09`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `order_date` datetime(0) NOT NULL COMMENT '下单时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_year_month_2019_10
-- ----------------------------
DROP TABLE IF EXISTS `sharding_year_month_2019_10`;
CREATE TABLE `sharding_year_month_2019_10`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `order_date` datetime(0) NOT NULL COMMENT '下单时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_year_month_2019_11
-- ----------------------------
DROP TABLE IF EXISTS `sharding_year_month_2019_11`;
CREATE TABLE `sharding_year_month_2019_11`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `order_date` datetime(0) NOT NULL COMMENT '下单时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sharding_year_month_2019_12
-- ----------------------------
DROP TABLE IF EXISTS `sharding_year_month_2019_12`;
CREATE TABLE `sharding_year_month_2019_12`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `order_date` datetime(0) NOT NULL COMMENT '下单时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除：1：已删除；0：未删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
