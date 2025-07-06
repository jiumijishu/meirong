/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : meirong_db

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2023-07-21 15:47:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `base_article`
-- ----------------------------
DROP TABLE IF EXISTS `base_article`;
CREATE TABLE `base_article` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(30) DEFAULT NULL COMMENT '标题',
  `type` varchar(10) DEFAULT NULL COMMENT '类型',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `words` varchar(100) DEFAULT NULL COMMENT '关键字',
  `content` varchar(4000) DEFAULT NULL COMMENT '内容',
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '图片路径',
  `status` varchar(2) DEFAULT NULL COMMENT '状态是否可用',
  `sort_no` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '创建时间',
  `publish_by` varchar(30) DEFAULT NULL COMMENT '发布人',
  `publish_time` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='问题管理';

-- ----------------------------
-- Records of base_article
-- ----------------------------

-- ----------------------------
-- Table structure for `base_banner`
-- ----------------------------
DROP TABLE IF EXISTS `base_banner`;
CREATE TABLE `base_banner` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播ID',
  `banner_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `banner_category` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT 'banner类别 图片、视频、音频',
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '图片路径',
  `link_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'banner跳转路径',
  `sort_num` int(11) DEFAULT NULL COMMENT '排序',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `create_date` datetime DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='轮播图表';

-- ----------------------------
-- Records of base_banner
-- ----------------------------

-- ----------------------------
-- Table structure for `base_brand_detail`
-- ----------------------------
DROP TABLE IF EXISTS `base_brand_detail`;
CREATE TABLE `base_brand_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(30) DEFAULT NULL COMMENT '点评标题',
  `top_img` varchar(300) DEFAULT NULL COMMENT '顶部图片',
  `detail_img` varchar(300) DEFAULT NULL COMMENT '介绍图片',
  `content` varchar(4000) DEFAULT NULL COMMENT '点评内容',
  `status` varchar(10) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '添加时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of base_brand_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `base_consultant_rank`
-- ----------------------------
DROP TABLE IF EXISTS `base_consultant_rank`;
CREATE TABLE `base_consultant_rank` (
  `level_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '顾问等级ID',
  `level_name` varchar(50) DEFAULT NULL COMMENT '顾问等级名称',
  `commission_ratio` double(6,4) DEFAULT NULL COMMENT '顾问佣金比例',
  `use_flag` varchar(2) DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`level_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='顾问等级';

-- ----------------------------
-- Records of base_consultant_rank
-- ----------------------------

-- ----------------------------
-- Table structure for `base_number_card`
-- ----------------------------
DROP TABLE IF EXISTS `base_number_card`;
CREATE TABLE `base_number_card` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '次卡名称',
  `day` int(11) DEFAULT NULL COMMENT '次卡有效期',
  `shop_item_id` bigint(20) DEFAULT NULL COMMENT '关联项目',
  `num` int(11) DEFAULT NULL COMMENT '次卡次数',
  `price` decimal(10,2) DEFAULT NULL COMMENT '次卡价格',
  `status` varchar(255) DEFAULT NULL COMMENT '上架状态 01 上架  02 下架',
  `goods_type_id` bigint(20) DEFAULT NULL COMMENT '项目分类',
  `introduction` text COMMENT '商品简介',
  `head_img` varchar(500) DEFAULT NULL COMMENT '次卡头图',
  `details_img` varchar(500) DEFAULT NULL COMMENT '详情图片',
  `details` longtext COMMENT '交卡详情',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='次卡表';

-- ----------------------------
-- Records of base_number_card
-- ----------------------------

-- ----------------------------
-- Table structure for `base_question`
-- ----------------------------
DROP TABLE IF EXISTS `base_question`;
CREATE TABLE `base_question` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(30) DEFAULT NULL COMMENT '标题',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `words` varchar(100) DEFAULT NULL COMMENT '关键字',
  `content` varchar(4000) DEFAULT NULL COMMENT '内容',
  `status` varchar(2) DEFAULT NULL COMMENT '状态是否可用',
  `sort_no` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(30) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(30) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='问题管理';

-- ----------------------------
-- Records of base_question
-- ----------------------------

-- ----------------------------
-- Table structure for `base_region_city`
-- ----------------------------
DROP TABLE IF EXISTS `base_region_city`;
CREATE TABLE `base_region_city` (
  `city_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '城市ID',
  `city_name` varchar(50) DEFAULT NULL COMMENT '城市名称',
  `zip_code` varchar(50) DEFAULT NULL COMMENT '邮编',
  `province_id` bigint(20) unsigned NOT NULL COMMENT '省份ID',
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`city_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='城市表';

-- ----------------------------
-- Records of base_region_city
-- ----------------------------

-- ----------------------------
-- Table structure for `base_region_district`
-- ----------------------------
DROP TABLE IF EXISTS `base_region_district`;
CREATE TABLE `base_region_district` (
  `district_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '区县ID',
  `district_name` varchar(50) DEFAULT NULL COMMENT '区县名称',
  `city_id` bigint(20) unsigned DEFAULT NULL COMMENT '城市ID',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`district_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2863 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='区县信息表';

-- ----------------------------
-- Records of base_region_district
-- ----------------------------

-- ----------------------------
-- Table structure for `base_region_province`
-- ----------------------------
DROP TABLE IF EXISTS `base_region_province`;
CREATE TABLE `base_region_province` (
  `province_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '省份ID',
  `province_name` varchar(50) NOT NULL COMMENT '省份名称',
  `sub_name` varchar(50) DEFAULT NULL COMMENT '简名',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `short_name` varchar(2) DEFAULT NULL COMMENT '简称',
  `initials` varchar(10) DEFAULT NULL COMMENT '首拼',
  PRIMARY KEY (`province_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='省份信息表';

-- ----------------------------
-- Records of base_region_province
-- ----------------------------

-- ----------------------------
-- Table structure for `base_search_history`
-- ----------------------------
DROP TABLE IF EXISTS `base_search_history`;
CREATE TABLE `base_search_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `words` varchar(100) DEFAULT NULL COMMENT '搜索关键字',
  `type` varchar(10) DEFAULT NULL COMMENT '类型',
  `create_time` datetime DEFAULT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='搜索历史';

-- ----------------------------
-- Records of base_search_history
-- ----------------------------

-- ----------------------------
-- Table structure for `base_shop_info`
-- ----------------------------
DROP TABLE IF EXISTS `base_shop_info`;
CREATE TABLE `base_shop_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `shop_name` varchar(50) DEFAULT NULL COMMENT '店铺名称',
  `shop_detail` varchar(500) DEFAULT NULL COMMENT '店铺描述',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `contact` varchar(30) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(40) DEFAULT NULL COMMENT '联系电话',
  `status` varchar(2) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21219 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='门店';

-- ----------------------------
-- Records of base_shop_info
-- ----------------------------

-- ----------------------------
-- Table structure for `base_shop_item`
-- ----------------------------
DROP TABLE IF EXISTS `base_shop_item`;
CREATE TABLE `base_shop_item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `item_name` varchar(50) DEFAULT NULL COMMENT '项目名称',
  `type` varchar(20) DEFAULT NULL COMMENT '项目品类',
  `item_remark` varchar(200) DEFAULT NULL COMMENT '项目简介',
  `item_price` double(10,2) DEFAULT NULL COMMENT '项目价格',
  `item_vip_price` double(10,2) DEFAULT NULL COMMENT '项目VIP价格',
  `bank_discount` double(6,2) DEFAULT NULL COMMENT '银行卡权益',
  `header_img` varchar(500) DEFAULT NULL COMMENT '项目图片',
  `detail_img` varchar(500) DEFAULT NULL COMMENT '详情图片',
  `item_detail` varchar(4000) DEFAULT NULL COMMENT '项目描述',
  `referrer_flag` varchar(2) DEFAULT NULL COMMENT '是否推荐',
  `share_rate_type` int(11) DEFAULT NULL COMMENT '分享佣金类型1比例2金额',
  `share_percent1` double(6,2) DEFAULT NULL COMMENT '分享佣金比例1',
  `share_percent2` double(6,2) DEFAULT NULL COMMENT '分享佣金比例2',
  `share_percent3` double(6,2) DEFAULT NULL COMMENT '分享佣金比例3',
  `share_percent4` double(6,2) DEFAULT NULL COMMENT '分享佣金比例4',
  `online_flag` varchar(2) DEFAULT 'Y' COMMENT '是否线上展示Y是N否',
  `sort_no` int(11) DEFAULT NULL COMMENT '项目排序',
  `status` varchar(10) DEFAULT NULL COMMENT '项目状态',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='预约项目';

-- ----------------------------
-- Records of base_shop_item
-- ----------------------------

-- ----------------------------
-- Table structure for `base_shop_item_consultant`
-- ----------------------------
DROP TABLE IF EXISTS `base_shop_item_consultant`;
CREATE TABLE `base_shop_item_consultant` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `shop_id` varchar(30) DEFAULT NULL COMMENT '门店ID',
  `item_id` bigint(20) DEFAULT NULL COMMENT '项目ID',
  `consultant_id` varchar(500) DEFAULT NULL COMMENT '顾问ID',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=845 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='顾问';

-- ----------------------------
-- Records of base_shop_item_consultant
-- ----------------------------

-- ----------------------------
-- Table structure for `base_text_content`
-- ----------------------------
DROP TABLE IF EXISTS `base_text_content`;
CREATE TABLE `base_text_content` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `remark` varchar(300) DEFAULT NULL COMMENT '备注',
  `content` longtext COMMENT '文本内容',
  `status` varchar(10) DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文本管理';

-- ----------------------------
-- Records of base_text_content
-- ----------------------------

-- ----------------------------
-- Table structure for `base_user_address`
-- ----------------------------
DROP TABLE IF EXISTS `base_user_address`;
CREATE TABLE `base_user_address` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `district` varchar(100) DEFAULT NULL COMMENT '所在地区',
  `address` varchar(200) DEFAULT NULL COMMENT '用户邮寄地址',
  `default_flag` varchar(2) DEFAULT '0' COMMENT '是否是默认地址',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户地址';

-- ----------------------------
-- Records of base_user_address
-- ----------------------------

-- ----------------------------
-- Table structure for `base_user_msg`
-- ----------------------------
DROP TABLE IF EXISTS `base_user_msg`;
CREATE TABLE `base_user_msg` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户的id',
  `msg_type` varchar(20) DEFAULT NULL COMMENT '消息类型01预约提示02系统消息03订单提醒',
  `msg_title` varchar(30) DEFAULT NULL COMMENT '消息标题',
  `msg_content` varchar(200) DEFAULT NULL COMMENT '消息内容',
  `msg_state` varchar(10) DEFAULT NULL COMMENT '消息状态',
  `msg_create_time` datetime DEFAULT NULL COMMENT '消息创建时间',
  `msg_read_time` datetime DEFAULT NULL COMMENT '消息阅读时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户业务消息表';

-- ----------------------------
-- Records of base_user_msg
-- ----------------------------

-- ----------------------------
-- Table structure for `base_user_video`
-- ----------------------------
DROP TABLE IF EXISTS `base_user_video`;
CREATE TABLE `base_user_video` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `video_id` bigint(20) DEFAULT NULL COMMENT '视频ID',
  `video_name` varchar(50) DEFAULT NULL COMMENT '视频名称',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户购买的视频';

-- ----------------------------
-- Records of base_user_video
-- ----------------------------

-- ----------------------------
-- Table structure for `gen_table`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for `gen_table_column`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for `oms_goods_cart`
-- ----------------------------
DROP TABLE IF EXISTS `oms_goods_cart`;
CREATE TABLE `oms_goods_cart` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `goods_img` varchar(500) DEFAULT NULL COMMENT '商品图片',
  `sku_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `goods_num` int(11) DEFAULT '0' COMMENT '数量',
  `sku_attr` varchar(300) DEFAULT NULL COMMENT '属性',
  `price` double(10,2) DEFAULT NULL COMMENT '价格',
  `status` varchar(2) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='购物车';

-- ----------------------------
-- Records of oms_goods_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `oms_goods_info`
-- ----------------------------
DROP TABLE IF EXISTS `oms_goods_info`;
CREATE TABLE `oms_goods_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type_id` int(11) DEFAULT NULL COMMENT '分类编号',
  `type_name` varchar(30) DEFAULT NULL COMMENT '分类名称',
  `name` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `description` varchar(500) DEFAULT NULL COMMENT '商品简介',
  `header_img` varchar(500) DEFAULT NULL COMMENT '商品头图',
  `detail_img` text COMMENT '详情图片',
  `detail` text COMMENT '商品详情 ',
  `referrer_flag` varchar(2) DEFAULT NULL COMMENT '首页是否推荐',
  `share_percent` double(6,2) DEFAULT NULL COMMENT '线上分享佣金比例',
  `sort_no` int(11) DEFAULT NULL COMMENT '排序序号',
  `status` varchar(2) DEFAULT NULL COMMENT '商品状态',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `rebate_ratio_type` int(11) DEFAULT '1' COMMENT '返佣类型1比例2金额',
  `rebate_ratio` double(6,2) DEFAULT '0.00' COMMENT '返佣比例',
  `sub1_commissiona` double(6,2) DEFAULT NULL COMMENT '方案1分配分佣1',
  `sub2_commissiona` double(6,2) DEFAULT NULL COMMENT '方案2分配分佣1',
  `sub2_commissionb` double(6,2) DEFAULT NULL COMMENT '方案2分配分佣2',
  `sub3_commissiona` double(6,2) DEFAULT NULL COMMENT '方案3分配分佣1',
  `sub3_commissionb` double(6,2) DEFAULT NULL COMMENT '方案3分配分佣2',
  `sub3_commissionc` double(6,2) DEFAULT NULL COMMENT '方案3分配分佣3',
  `online_flag` varchar(2) DEFAULT 'Y' COMMENT '是否线上展示Y是N否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品表';

-- ----------------------------
-- Records of oms_goods_info
-- ----------------------------

-- ----------------------------
-- Table structure for `oms_goods_sku`
-- ----------------------------
DROP TABLE IF EXISTS `oms_goods_sku`;
CREATE TABLE `oms_goods_sku` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `sku_name` varchar(50) DEFAULT NULL COMMENT '规格名称',
  `price` double(10,2) DEFAULT NULL COMMENT '价格',
  `stock_num` int(11) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=398 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品规格';

-- ----------------------------
-- Records of oms_goods_sku
-- ----------------------------

-- ----------------------------
-- Table structure for `oms_goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `oms_goods_type`;
CREATE TABLE `oms_goods_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(30) DEFAULT NULL COMMENT '商品名称',
  `type_desc` varchar(50) DEFAULT NULL COMMENT '商品描述',
  `goods_num` int(11) DEFAULT '0' COMMENT '商品数量',
  `status` varchar(2) DEFAULT NULL COMMENT '是否可用',
  `sort_no` int(11) DEFAULT NULL COMMENT '排序编号',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品类型';

-- ----------------------------
-- Records of oms_goods_type
-- ----------------------------

-- ----------------------------
-- Table structure for `oms_item_apply`
-- ----------------------------
DROP TABLE IF EXISTS `oms_item_apply`;
CREATE TABLE `oms_item_apply` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `shop_id` bigint(20) DEFAULT NULL COMMENT '门店ID',
  `item_id` bigint(20) DEFAULT NULL COMMENT '项目ID',
  `apply_user_id` bigint(20) DEFAULT NULL COMMENT '申请用户ID',
  `apply_time` datetime DEFAULT NULL COMMENT '申请时间',
  `apply_consultant` bigint(20) DEFAULT NULL COMMENT '预约顾问ID',
  `status` varchar(30) DEFAULT NULL COMMENT '预约状态',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='门店项目预约';

-- ----------------------------
-- Records of oms_item_apply
-- ----------------------------

-- ----------------------------
-- Table structure for `oms_order_commission_record`
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_commission_record`;
CREATE TABLE `oms_order_commission_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单ID',
  `order_amount` double(8,2) DEFAULT NULL COMMENT '订单金额',
  `commission_percent` double(6,2) DEFAULT NULL COMMENT '返佣比例',
  `commission_amount` varchar(8) DEFAULT NULL COMMENT '返佣金额',
  `pay_time` datetime DEFAULT NULL COMMENT '支付日期',
  `customer_id` bigint(20) DEFAULT NULL COMMENT '顾客ID',
  `pay_type` varchar(2) DEFAULT NULL COMMENT '支付方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='返佣记录表';

-- ----------------------------
-- Records of oms_order_commission_record
-- ----------------------------

-- ----------------------------
-- Table structure for `oms_order_info`
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_info`;
CREATE TABLE `oms_order_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `shop_id` varchar(40) DEFAULT NULL COMMENT '门店ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `product_name` varchar(30) DEFAULT NULL COMMENT '商品名称',
  `order_code` varchar(30) DEFAULT NULL COMMENT '订单编号',
  `order_time` datetime DEFAULT NULL COMMENT '下单时间',
  `out_trade_no` varchar(50) DEFAULT NULL COMMENT '微信支付下单号',
  `consume_type` varchar(2) DEFAULT NULL COMMENT '消费类型01线上消费02线上消费',
  `order_type` varchar(10) DEFAULT '01' COMMENT '订单类型01商品02次卡',
  `order_amount` double(6,0) DEFAULT NULL COMMENT '订单金额',
  `freight_amount` double(6,0) DEFAULT NULL COMMENT '运费',
  `sum_amount` double(6,0) DEFAULT NULL COMMENT '总金额',
  `pay_type` int(11) DEFAULT NULL COMMENT '支付类型01余额支付02微信支付',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `ollacate_flag` varchar(2) DEFAULT 'N' COMMENT '是否分配佣金Y是N否',
  `order_status` varchar(10) DEFAULT NULL COMMENT '订单状态00取消订单01待支付02已支付03已发货04已收货(已完成)',
  `logistics_code` varchar(30) DEFAULT NULL COMMENT '物流单号',
  `logistics_type` varchar(30) DEFAULT NULL COMMENT '物流类型',
  `take_user` varchar(30) DEFAULT NULL COMMENT '收货人姓名',
  `take_phone` varchar(20) DEFAULT NULL COMMENT '收货人手机号',
  `take_address` varchar(40) DEFAULT NULL COMMENT '收货人地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单表';

-- ----------------------------
-- Records of oms_order_info
-- ----------------------------

-- ----------------------------
-- Table structure for `oms_order_item`
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_item`;
CREATE TABLE `oms_order_item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单ID',
  `order_code` varchar(30) DEFAULT NULL COMMENT '订单编号',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `goods_img` varchar(500) DEFAULT NULL COMMENT '商品图片',
  `product_name` varchar(30) DEFAULT NULL COMMENT '商品名称',
  `sku_id` bigint(20) DEFAULT NULL COMMENT 'skuID',
  `goods_num` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` double(10,2) DEFAULT NULL COMMENT '商品价格',
  `sku_attr` varchar(200) DEFAULT NULL COMMENT '属性描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单项';

-- ----------------------------
-- Records of oms_order_item
-- ----------------------------

-- ----------------------------
-- Table structure for `oms_order_item_detail`
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_item_detail`;
CREATE TABLE `oms_order_item_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
  `consumer_type` int(11) DEFAULT NULL COMMENT '消费类型1消费项目2消费产品3消费次卡',
  `consumer_id` bigint(20) DEFAULT NULL COMMENT '消费产品ID类型为1就是消费项目ID类型为2就是消费产品ID3就是次卡ID',
  `price` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `card_id` bigint(20) DEFAULT NULL COMMENT '卡ID',
  `card_num` int(11) DEFAULT NULL COMMENT '划卡次数',
  `sub_type` varchar(30) DEFAULT NULL COMMENT '方案类型',
  `consultant1` bigint(20) DEFAULT NULL COMMENT '技师A',
  `consultant1_amount` decimal(10,2) DEFAULT NULL COMMENT '技师A佣金',
  `consultant2` bigint(20) DEFAULT NULL COMMENT '技师B',
  `consultant2_amount` decimal(10,2) DEFAULT NULL COMMENT '技师B佣金',
  `consultant3` bigint(20) DEFAULT NULL COMMENT '技师C',
  `consultant3_amount` decimal(10,2) DEFAULT NULL COMMENT '技师C佣金',
  `final_amount` decimal(10,2) DEFAULT NULL COMMENT '最终金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3605 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目订单详情';

-- ----------------------------
-- Records of oms_order_item_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `oms_order_item_detail_back`
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_item_detail_back`;
CREATE TABLE `oms_order_item_detail_back` (
  `id` bigint(20) unsigned NOT NULL COMMENT 'id',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
  `consumer_type` int(11) DEFAULT NULL COMMENT '消费类型1消费项目2消费产品',
  `consumer_id` bigint(20) DEFAULT NULL COMMENT '消费产品ID类型为1就是消费项目ID类型为2就是消费产品ID',
  `price` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `card_id` bigint(20) DEFAULT NULL COMMENT '卡ID',
  `card_num` int(11) DEFAULT NULL COMMENT '划卡次数',
  `sub_type` varchar(30) DEFAULT NULL COMMENT '方案类型',
  `consultant1` bigint(20) DEFAULT NULL COMMENT '技师A',
  `consultant1_amount` decimal(10,2) DEFAULT NULL COMMENT '技师A佣金',
  `consultant2` bigint(20) DEFAULT NULL COMMENT '技师B',
  `consultant2_amount` decimal(10,2) DEFAULT NULL COMMENT '技师B佣金',
  `consultant3` bigint(20) DEFAULT NULL COMMENT '技师C',
  `consultant3_amount` decimal(10,2) DEFAULT NULL COMMENT '技师C佣金',
  `final_amount` decimal(10,2) DEFAULT NULL COMMENT '最终金额',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(40) DEFAULT NULL COMMENT '修改人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目订单详情';

-- ----------------------------
-- Records of oms_order_item_detail_back
-- ----------------------------

-- ----------------------------
-- Table structure for `oms_order_item_info`
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_item_info`;
CREATE TABLE `oms_order_item_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `shop_id` varchar(40) DEFAULT NULL COMMENT '门店ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `apply_id` bigint(20) DEFAULT NULL COMMENT '申请单ID',
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '用户姓名',
  `user_phone` varchar(30) DEFAULT NULL COMMENT '绑定号码',
  `order_code` varchar(30) DEFAULT NULL COMMENT '订单编号',
  `order_time` datetime DEFAULT NULL COMMENT '下单时间',
  `out_trade_no` varchar(50) DEFAULT NULL COMMENT '微信支付下单号',
  `order_type` varchar(10) DEFAULT '01' COMMENT '订单类型01门店订单 02 预约订单03次卡订单',
  `account_amount` double(10,2) DEFAULT '0.00' COMMENT '账户金额',
  `sum_amount` double(8,2) DEFAULT NULL COMMENT '总金额',
  `pay_type` varchar(80) DEFAULT NULL COMMENT '支付类型1余额支付2产品账户3现金支付4银行卡5挂账6免费7微信支付8支付宝支付',
  `payment1` decimal(8,2) DEFAULT NULL COMMENT '余额支付',
  `payment2` decimal(8,2) DEFAULT NULL COMMENT '产品账户支付',
  `payment3` decimal(8,2) DEFAULT NULL COMMENT '现金支付',
  `payment4` decimal(8,2) DEFAULT NULL COMMENT '银行卡支付',
  `payment5` decimal(8,2) DEFAULT NULL COMMENT '挂账支付',
  `payment6` decimal(8,2) DEFAULT NULL COMMENT '免费支付',
  `payment7` decimal(8,2) DEFAULT NULL COMMENT '微信支付',
  `payment8` decimal(8,2) DEFAULT NULL COMMENT '支付宝支付',
  `payment9` decimal(8,2) DEFAULT NULL COMMENT '大众点评抵扣',
  `card_amount` decimal(8,2) DEFAULT '0.00' COMMENT '次卡额度',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` varchar(10) DEFAULT NULL COMMENT '订单状态00取消订单01未完成02已完成03挂账订单',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `order_file` varchar(400) DEFAULT NULL COMMENT '附件',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1249 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目订单表';

-- ----------------------------
-- Records of oms_order_item_info
-- ----------------------------

-- ----------------------------
-- Table structure for `oms_order_item_info_back`
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_item_info_back`;
CREATE TABLE `oms_order_item_info_back` (
  `id` bigint(20) unsigned NOT NULL COMMENT 'ID',
  `shop_id` bigint(20) DEFAULT NULL COMMENT '门店ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `apply_id` bigint(20) DEFAULT NULL COMMENT '申请单ID',
  `user_name` varchar(30) DEFAULT NULL COMMENT '购买用户',
  `user_phone` varchar(30) DEFAULT NULL COMMENT '绑定号码',
  `order_code` varchar(30) DEFAULT NULL COMMENT '订单编号',
  `order_time` datetime DEFAULT NULL COMMENT '下单时间',
  `out_trade_no` varchar(50) DEFAULT NULL COMMENT '微信支付下单号',
  `order_type` varchar(10) DEFAULT '01' COMMENT '订单类型01门店订单 02 预约订单',
  `account_amount` double(10,2) DEFAULT NULL COMMENT '账户余额',
  `sum_amount` double(8,2) DEFAULT NULL COMMENT '总金额',
  `pay_type` varchar(80) DEFAULT NULL COMMENT '支付类型1余额支付2产品账户3现金支付4银行卡5挂账6免费7微信支付8支付宝支付9大众点评抵扣',
  `payment1` decimal(8,2) DEFAULT NULL COMMENT '余额支付',
  `payment2` decimal(8,2) DEFAULT NULL COMMENT '产品账户支付',
  `payment3` decimal(8,2) DEFAULT NULL COMMENT '现金支付',
  `payment4` decimal(8,2) DEFAULT NULL COMMENT '银行卡支付',
  `payment5` decimal(8,2) DEFAULT NULL COMMENT '挂账支付',
  `payment6` decimal(8,2) DEFAULT NULL COMMENT '免费支付',
  `payment7` decimal(8,2) DEFAULT NULL COMMENT '微信支付',
  `payment8` decimal(8,2) DEFAULT NULL COMMENT '支付宝支付',
  `payment9` decimal(8,2) DEFAULT NULL COMMENT '大众点评抵扣',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` varchar(10) DEFAULT NULL COMMENT '订单状态00取消订单01未完成02已完成03挂账订单',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `order_file` varchar(400) DEFAULT NULL COMMENT '附件',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(40) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(40) DEFAULT NULL COMMENT '创建人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目订单表';

-- ----------------------------
-- Records of oms_order_item_info_back
-- ----------------------------

-- ----------------------------
-- Table structure for `oms_order_item_payment`
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_item_payment`;
CREATE TABLE `oms_order_item_payment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单ID',
  `order_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '订单编号',
  `order_time` datetime DEFAULT NULL COMMENT '下单时间',
  `order_user` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '下单用户',
  `operate_source_shop` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '下单店铺',
  `operate_source_shop_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '下单店铺名称',
  `payment_source_shop` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '结算店铺',
  `payment_source_shop_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '结算店铺名称',
  `payment_status` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '结算状态01未结算02已结算',
  `payment_user` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '结算用户',
  `payment_time` datetime DEFAULT NULL COMMENT '结算时间',
  `payment_amount` decimal(10,2) DEFAULT NULL COMMENT '结算金额',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='跨店结算';

-- ----------------------------
-- Records of oms_order_item_payment
-- ----------------------------

-- ----------------------------
-- Table structure for `oms_vip_info`
-- ----------------------------
DROP TABLE IF EXISTS `oms_vip_info`;
CREATE TABLE `oms_vip_info` (
  `vip_level` int(11) NOT NULL COMMENT 'VIP登记',
  `vip_name` varchar(30) DEFAULT NULL COMMENT 'vip名称',
  `recharge_amount` double(8,2) DEFAULT NULL COMMENT '充值金额',
  `discount` varchar(6) DEFAULT NULL COMMENT '充值金额',
  `vip_img` varchar(200) DEFAULT NULL COMMENT '展示头像',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `status` varchar(2) DEFAULT 'Y' COMMENT '是否可用Y是N否',
  PRIMARY KEY (`vip_level`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员登记配置';

-- ----------------------------
-- Records of oms_vip_info
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_blob_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Blob类型的触发器表';

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_calendars`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_cron_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_fired_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(20) NOT NULL,
  `sched_time` bigint(20) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_job_details`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('JiumiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.jiumi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E6A69756D692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E6A69756D692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017BA67F41F878707400007070707400013174000D3020302F35202A202A202A203F74001D657865637574655461736B2E646F45786563757465436F6D706C65746574000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740012E887AAE58AA8E7A1AEE8AEA4E694B6E8B4A774000133740001307800);
INSERT INTO `qrtz_job_details` VALUES ('JiumiScheduler', 'TASK_CLASS_NAME100', 'DEFAULT', null, 'com.jiumi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E6A69756D692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E6A69756D692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017DEB92760078707400007070707400013174000D3020302F35202A202A202A203F740021657865637574655461736B2E646F45786563757465536E7963416C6C6F6361746574000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000064740012E887AAE58AA8E58886E9858DE4BDA3E9879174000131740001307800);
INSERT INTO `qrtz_job_details` VALUES ('JiumiScheduler', 'TASK_CLASS_NAME101', 'DEFAULT', null, 'com.jiumi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E6A69756D692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E6A69756D692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017F3F883F0078707400007070707400013174000F302F3130202A202A202A202A203F20740020657865637574655461736B2E646F457865637574654170706C7953746174757374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000065740018E9A1B9E79BAEE9A284E7BAA6E887AAE58AA8E8BF87E69C9F74000133740001307800);
INSERT INTO `qrtz_job_details` VALUES ('XiaoxiangScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.xiaoxiang.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720022636F6D2E7869616F7869616E672E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002B636F6D2E7869616F7869616E672E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017BA67F41F878707400007070707400013174000D3020302F35202A202A202A203F74001D657865637574655461736B2E646F45786563757465436F6D706C65746574000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740012E887AAE58AA8E7A1AEE8AEA4E694B6E8B4A774000133740001307800);
INSERT INTO `qrtz_job_details` VALUES ('XiaoxiangScheduler', 'TASK_CLASS_NAME100', 'DEFAULT', null, 'com.xiaoxiang.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720022636F6D2E7869616F7869616E672E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002B636F6D2E7869616F7869616E672E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017DEB92760078707400007070707400013174000D3020302F35202A202A202A203F740021657865637574655461736B2E646F45786563757465536E7963416C6C6F6361746574000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000064740012E887AAE58AA8E58886E9858DE4BDA3E9879174000131740001307800);
INSERT INTO `qrtz_job_details` VALUES ('XiaoxiangScheduler', 'TASK_CLASS_NAME101', 'DEFAULT', null, 'com.xiaoxiang.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720022636F6D2E7869616F7869616E672E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002B636F6D2E7869616F7869616E672E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017F3F883F0078707400007070707400013174000F302F3130202A202A202A202A203F20740020657865637574655461736B2E646F457865637574654170706C7953746174757374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000065740018E9A1B9E79BAEE9A284E7BAA6E887AAE58AA8E8BF87E69C9F74000133740001307800);

-- ----------------------------
-- Table structure for `qrtz_locks`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_paused_trigger_grps`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_scheduler_state`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(20) NOT NULL,
  `checkin_interval` bigint(20) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_simple_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(20) NOT NULL,
  `repeat_interval` bigint(20) NOT NULL,
  `times_triggered` bigint(20) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_simprop_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(20) DEFAULT NULL,
  `prev_fire_time` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(20) NOT NULL,
  `end_time` bigint(20) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(6) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(11) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_dict_data`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(11) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_dict_type`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_job`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_job_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4537520 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_logininfor`
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(4000) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3680 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(11) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `is_frame` int(11) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(11) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2255 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_old_users`
-- ----------------------------
DROP TABLE IF EXISTS `sys_old_users`;
CREATE TABLE `sys_old_users` (
  `card_no` varchar(255) DEFAULT NULL COMMENT '卡号',
  `card_inno` varchar(255) DEFAULT NULL COMMENT '卡内码',
  `type` varchar(255) DEFAULT NULL COMMENT '类别',
  `discount` int(11) DEFAULT NULL COMMENT '折率',
  `sum_charge` double(10,2) DEFAULT NULL COMMENT '累计充值',
  `sum_card_payment` double(10,2) DEFAULT NULL COMMENT '累计卡消费',
  `sum_payment` double(10,2) DEFAULT NULL COMMENT '累计消费',
  `score` int(11) DEFAULT NULL COMMENT '积分',
  `balance` double(10,2) DEFAULT NULL COMMENT '卡余额',
  `date_str` varchar(200) DEFAULT NULL COMMENT '日期',
  `shop_id` varchar(255) DEFAULT NULL COMMENT '店名',
  `operate_user` varchar(255) DEFAULT NULL COMMENT '操作员',
  `status` varchar(255) DEFAULT NULL COMMENT '状态',
  `birthday` varchar(255) DEFAULT NULL COMMENT '生日',
  `nongli_flag` varchar(255) DEFAULT NULL COMMENT '农历',
  `limit` varchar(255) DEFAULT NULL COMMENT '限期',
  `end_time` varchar(255) DEFAULT NULL COMMENT '到期时间',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `identy` varchar(255) DEFAULT NULL COMMENT '身份证',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `qq` varchar(255) DEFAULT NULL COMMENT 'qq',
  `email` varchar(255) DEFAULT NULL COMMENT 'EMAIL',
  `weixinid` varchar(200) DEFAULT NULL COMMENT '微信id',
  `msn` varchar(255) DEFAULT NULL COMMENT 'msn'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_old_users
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_old_users1`
-- ----------------------------
DROP TABLE IF EXISTS `sys_old_users1`;
CREATE TABLE `sys_old_users1` (
  `card_no` varchar(255) DEFAULT NULL COMMENT '卡号',
  `card_inno` varchar(255) DEFAULT NULL COMMENT '卡内码',
  `type` varchar(255) DEFAULT NULL COMMENT '类别',
  `discount` int(11) DEFAULT NULL COMMENT '折率',
  `sum_charge` double(10,2) DEFAULT NULL COMMENT '累计充值',
  `sum_card_payment` double(10,2) DEFAULT NULL COMMENT '累计卡消费',
  `sum_payment` double(10,2) DEFAULT NULL COMMENT '累计消费',
  `score` int(11) DEFAULT NULL COMMENT '积分',
  `balance` double(10,2) DEFAULT NULL COMMENT '卡余额',
  `date_str` varchar(200) DEFAULT NULL COMMENT '日期',
  `shop_id` varchar(255) DEFAULT NULL COMMENT '店名',
  `operate_user` varchar(255) DEFAULT NULL COMMENT '操作员',
  `status` varchar(255) DEFAULT NULL COMMENT '状态',
  `birthday` varchar(255) DEFAULT NULL COMMENT '生日',
  `nongli_flag` varchar(255) DEFAULT NULL COMMENT '农历',
  `limit` varchar(255) DEFAULT NULL COMMENT '限期',
  `end_time` varchar(255) DEFAULT NULL COMMENT '到期时间',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `identy` varchar(255) DEFAULT NULL COMMENT '身份证',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `qq` varchar(255) DEFAULT NULL COMMENT 'qq',
  `email` varchar(255) DEFAULT NULL COMMENT 'EMAIL',
  `weixinid` varchar(200) DEFAULT NULL COMMENT '微信id',
  `msn` varchar(255) DEFAULT NULL COMMENT 'msn'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_old_users1
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_old_users1_copy1`
-- ----------------------------
DROP TABLE IF EXISTS `sys_old_users1_copy1`;
CREATE TABLE `sys_old_users1_copy1` (
  `card_no` varchar(255) DEFAULT NULL COMMENT '卡号',
  `card_inno` varchar(255) DEFAULT NULL COMMENT '卡内码',
  `type` varchar(255) DEFAULT NULL COMMENT '类别',
  `discount` double(6,2) DEFAULT NULL COMMENT '折率',
  `sum_charge` double(10,2) DEFAULT NULL COMMENT '累计充值',
  `sum_card_payment` double(10,2) DEFAULT NULL COMMENT '累计卡消费',
  `sum_payment` double(10,2) DEFAULT NULL COMMENT '累计消费',
  `score` int(11) DEFAULT NULL COMMENT '积分',
  `balance` double(10,2) DEFAULT NULL COMMENT '卡余额',
  `date_str` varchar(200) DEFAULT NULL COMMENT '日期',
  `shop_id` varchar(255) DEFAULT NULL COMMENT '店名',
  `operate_user` varchar(255) DEFAULT NULL COMMENT '操作员',
  `status` varchar(255) DEFAULT NULL COMMENT '状态',
  `birthday` varchar(255) DEFAULT NULL COMMENT '生日',
  `nongli_flag` varchar(255) DEFAULT NULL COMMENT '农历',
  `limit` varchar(255) DEFAULT NULL COMMENT '限期',
  `end_time` varchar(255) DEFAULT NULL COMMENT '到期时间',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `identy` varchar(255) DEFAULT NULL COMMENT '身份证',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `qq` varchar(255) DEFAULT NULL COMMENT 'qq',
  `email` varchar(255) DEFAULT NULL COMMENT 'EMAIL',
  `weixinid` varchar(200) DEFAULT NULL COMMENT '微信id',
  `msn` varchar(255) DEFAULT NULL COMMENT 'msn'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_old_users1_copy1
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_oper_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(11) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(11) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '返回参数',
  `status` int(11) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5940 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(11) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(11) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_role_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `weixin_open_id` varchar(30) DEFAULT NULL COMMENT '微信opid',
  `weixin_union_id` varchar(30) DEFAULT NULL COMMENT '微信unionID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户昵称',
  `invite_flag` varchar(2) DEFAULT 'N' COMMENT '是否允许推广',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户） 02 线上用户  03线下用户',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(20) DEFAULT '' COMMENT '手机号码',
  `sex` char(10) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(500) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `income_amount` double(8,2) DEFAULT '0.00' COMMENT '返佣金额',
  `recharge_amount` double(8,2) DEFAULT '0.00' COMMENT '充值金额',
  `account_amount` double(8,2) DEFAULT '0.00' COMMENT '账户金额',
  `freeze_amount` double(8,2) DEFAULT '0.00' COMMENT '冻结金额',
  `product_account` varchar(255) DEFAULT '0' COMMENT '产品账户状态0未开通 1开通',
  `product_balance` decimal(10,2) DEFAULT NULL COMMENT '产品账户余额',
  `vip_level` int(11) DEFAULT NULL COMMENT 'VIP等级',
  `source_shop` varchar(100) DEFAULT NULL COMMENT '来源门店',
  `referrer_user_id` bigint(20) DEFAULT NULL COMMENT '推荐人ID',
  `consultant_rank` bigint(20) DEFAULT NULL COMMENT '顾问等级',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1203 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user_0610`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_0610`;
CREATE TABLE `sys_user_0610` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `weixin_open_id` varchar(30) DEFAULT NULL COMMENT '微信opid',
  `weixin_union_id` varchar(30) DEFAULT NULL COMMENT '微信unionID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户昵称',
  `invite_flag` varchar(2) DEFAULT 'N' COMMENT '是否允许推广',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户） 02 线上用户  03线下用户',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(10) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(500) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `income_amount` double(8,2) DEFAULT '0.00' COMMENT '返佣金额',
  `recharge_amount` double(8,2) DEFAULT '0.00' COMMENT '充值金额',
  `account_amount` double(8,2) DEFAULT '0.00' COMMENT '账户金额',
  `freeze_amount` double(8,2) DEFAULT '0.00' COMMENT '冻结金额',
  `product_account` varchar(255) DEFAULT '0' COMMENT '产品账户状态0未开通 1开通',
  `product_balance` decimal(10,2) DEFAULT NULL COMMENT '产品账户余额',
  `vip_level` int(11) DEFAULT NULL COMMENT 'VIP等级',
  `source_shop` varchar(100) DEFAULT NULL COMMENT '来源门店',
  `referrer_user_id` bigint(20) DEFAULT NULL COMMENT '推荐人ID',
  `consultant_rank` bigint(20) DEFAULT NULL COMMENT '顾问等级',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=404 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user_0610
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user_20230522`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_20230522`;
CREATE TABLE `sys_user_20230522` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `weixin_open_id` varchar(30) DEFAULT NULL COMMENT '微信opid',
  `weixin_union_id` varchar(30) DEFAULT NULL COMMENT '微信unionID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户昵称',
  `invite_flag` varchar(2) DEFAULT 'N' COMMENT '是否允许推广',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户） 02 线上用户  03线下用户',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(20) DEFAULT '' COMMENT '手机号码',
  `sex` char(10) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(500) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `income_amount` double(8,2) DEFAULT '0.00' COMMENT '返佣金额',
  `recharge_amount` double(8,2) DEFAULT '0.00' COMMENT '充值金额',
  `account_amount` double(8,2) DEFAULT '0.00' COMMENT '账户金额',
  `freeze_amount` double(8,2) DEFAULT '0.00' COMMENT '冻结金额',
  `product_account` varchar(255) DEFAULT '0' COMMENT '产品账户状态0未开通 1开通',
  `product_balance` decimal(10,2) DEFAULT NULL COMMENT '产品账户余额',
  `vip_level` int(11) DEFAULT NULL COMMENT 'VIP等级',
  `source_shop` varchar(100) DEFAULT NULL COMMENT '来源门店',
  `referrer_user_id` bigint(20) DEFAULT NULL COMMENT '推荐人ID',
  `consultant_rank` bigint(20) DEFAULT NULL COMMENT '顾问等级',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1146 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user_20230522
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user_20230524`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_20230524`;
CREATE TABLE `sys_user_20230524` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `weixin_open_id` varchar(30) DEFAULT NULL COMMENT '微信opid',
  `weixin_union_id` varchar(30) DEFAULT NULL COMMENT '微信unionID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户昵称',
  `invite_flag` varchar(2) DEFAULT 'N' COMMENT '是否允许推广',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户） 02 线上用户  03线下用户',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(20) DEFAULT '' COMMENT '手机号码',
  `sex` char(10) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(500) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `income_amount` double(8,2) DEFAULT '0.00' COMMENT '返佣金额',
  `recharge_amount` double(8,2) DEFAULT '0.00' COMMENT '充值金额',
  `account_amount` double(8,2) DEFAULT '0.00' COMMENT '账户金额',
  `freeze_amount` double(8,2) DEFAULT '0.00' COMMENT '冻结金额',
  `product_account` varchar(255) DEFAULT '0' COMMENT '产品账户状态0未开通 1开通',
  `product_balance` decimal(10,2) DEFAULT NULL COMMENT '产品账户余额',
  `vip_level` int(11) DEFAULT NULL COMMENT 'VIP等级',
  `source_shop` varchar(100) DEFAULT NULL COMMENT '来源门店',
  `referrer_user_id` bigint(20) DEFAULT NULL COMMENT '推荐人ID',
  `consultant_rank` bigint(20) DEFAULT NULL COMMENT '顾问等级',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1150 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user_20230524
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for `user_income_detail`
-- ----------------------------
DROP TABLE IF EXISTS `user_income_detail`;
CREATE TABLE `user_income_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `account_amount` double(8,2) DEFAULT NULL COMMENT '账户金额',
  `income_amount` double(8,2) DEFAULT NULL COMMENT '入账金额',
  `income_time` datetime DEFAULT NULL COMMENT '入账时间',
  `income_type` varchar(2) DEFAULT NULL COMMENT '入账类型 01推广佣金',
  `income_desc` varchar(200) DEFAULT NULL COMMENT '入账描述',
  `source_user_id` bigint(20) DEFAULT NULL COMMENT '消费用户',
  `source_user_name` varchar(300) DEFAULT NULL COMMENT '消费用户名称',
  `source_user_avatar` varchar(400) DEFAULT NULL COMMENT '消费用户头像',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户入账记录';

-- ----------------------------
-- Records of user_income_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `user_invite_detail`
-- ----------------------------
DROP TABLE IF EXISTS `user_invite_detail`;
CREATE TABLE `user_invite_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `invite_user_id` bigint(20) DEFAULT NULL COMMENT '邀请人用户ID',
  `invite_openid` varchar(50) DEFAULT NULL COMMENT '邀请人openid',
  `invite_name` varchar(30) DEFAULT NULL COMMENT '邀请人姓名',
  `invite_time` datetime DEFAULT NULL COMMENT '邀请时间',
  `remard_amount` double(8,2) DEFAULT NULL COMMENT '奖励金额',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户邀请';

-- ----------------------------
-- Records of user_invite_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `user_number_card_detail`
-- ----------------------------
DROP TABLE IF EXISTS `user_number_card_detail`;
CREATE TABLE `user_number_card_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `order_code` varchar(30) DEFAULT NULL COMMENT '订单编号',
  `card_id` bigint(20) DEFAULT NULL COMMENT '次卡ID',
  `buy_time` datetime DEFAULT NULL COMMENT '购买时间',
  `begin_time` datetime DEFAULT NULL COMMENT '生效时间',
  `end_time` datetime DEFAULT NULL COMMENT '截至时间',
  `total_times` int(11) DEFAULT NULL COMMENT '总次数',
  `use_times` int(11) DEFAULT NULL COMMENT '使用次数',
  `last_times` int(11) DEFAULT NULL COMMENT '剩余次数',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户购买次卡记录';

-- ----------------------------
-- Records of user_number_card_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `user_number_card_history`
-- ----------------------------
DROP TABLE IF EXISTS `user_number_card_history`;
CREATE TABLE `user_number_card_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `order_code` varchar(30) NOT NULL COMMENT '订单编号',
  `card_id` bigint(20) DEFAULT NULL COMMENT '次卡ID',
  `use_time` datetime DEFAULT NULL COMMENT '使用时间',
  `use_times` int(11) DEFAULT NULL COMMENT '使用次数',
  `last_times` int(11) DEFAULT NULL COMMENT '剩余次数',
  `operate_user` varchar(40) DEFAULT NULL COMMENT '操作技师',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `order_code_index` (`order_code`,`card_id`) USING BTREE COMMENT '订单编号唯一索引'
) ENGINE=InnoDB AUTO_INCREMENT=340 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户次卡使用记录';

-- ----------------------------
-- Records of user_number_card_history
-- ----------------------------

-- ----------------------------
-- Table structure for `user_performance_calculate`
-- ----------------------------
DROP TABLE IF EXISTS `user_performance_calculate`;
CREATE TABLE `user_performance_calculate` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `user_phone` varchar(30) DEFAULT NULL COMMENT '手机号',
  `shop_id` bigint(20) DEFAULT NULL COMMENT '所属店铺',
  `shop_name` varchar(40) DEFAULT NULL COMMENT '店铺名称',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单ID',
  `order_code` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `order_amount` double(8,2) DEFAULT NULL COMMENT '订单金额',
  `order_remark` varchar(255) DEFAULT NULL COMMENT '订单备注',
  `item_amount` double(8,2) DEFAULT NULL COMMENT '项目提成',
  `product_amount` double(8,2) DEFAULT NULL COMMENT '产品提成',
  `sum_amount` double(8,2) DEFAULT NULL COMMENT '总提成',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1894 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='技师业绩核算';

-- ----------------------------
-- Records of user_performance_calculate
-- ----------------------------

-- ----------------------------
-- Table structure for `user_recharge_detail`
-- ----------------------------
DROP TABLE IF EXISTS `user_recharge_detail`;
CREATE TABLE `user_recharge_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `account_amount` double(8,2) DEFAULT NULL COMMENT '账户金额',
  `recharge_amount` double(8,2) DEFAULT NULL COMMENT '入账金额',
  `payment_type` varchar(2) DEFAULT NULL COMMENT '充值方式',
  `vip_level` int(11) DEFAULT NULL COMMENT 'vip变更等级',
  `recharge_time` datetime DEFAULT NULL COMMENT '入账时间',
  `recharge_desc` longtext COMMENT '入账描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `recharge_type` varchar(255) DEFAULT NULL COMMENT '充值类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=463 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户充值记录';

-- ----------------------------
-- Records of user_recharge_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `user_withdraw_detail`
-- ----------------------------
DROP TABLE IF EXISTS `user_withdraw_detail`;
CREATE TABLE `user_withdraw_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `account_amount` double(8,2) DEFAULT NULL COMMENT '账户金额',
  `withdraw_amount` double(8,2) DEFAULT NULL COMMENT '提现金额',
  `pay_type` int(11) DEFAULT NULL COMMENT '支付方式：1支付宝2银行卡',
  `alipay_account` varchar(100) DEFAULT NULL COMMENT '支付宝账号',
  `bank_name` varchar(100) DEFAULT NULL COMMENT '银行名称',
  `bank_account` varchar(20) DEFAULT NULL COMMENT '银行卡号',
  `apply_time` datetime DEFAULT NULL COMMENT '申请时间',
  `apply_status` varchar(2) DEFAULT NULL COMMENT '申请状态',
  `approve_user` varchar(20) DEFAULT NULL COMMENT '审核人',
  `approve_time` datetime DEFAULT NULL COMMENT '审核时间',
  `back_reason` varchar(200) DEFAULT NULL COMMENT '拒绝原因',
  `payment_time` datetime DEFAULT NULL COMMENT '打款时间',
  `payment_user` varchar(30) DEFAULT NULL COMMENT '打款人',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户提现记录';

-- ----------------------------
-- Records of user_withdraw_detail
-- ----------------------------
