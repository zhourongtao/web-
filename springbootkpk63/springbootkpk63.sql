/*
Navicat MySQL Data Transfer

Source Server         : mysql5.7
Source Server Version : 50732
Source Host           : localhost:3309
Source Database       : springbootkpk63

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2021-12-08 21:20:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/springbootkpk63/upload/1619010733029.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/springbootkpk63/upload/1619010743086.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/springbootkpk63/upload/1619010793758.jpg');
INSERT INTO `config` VALUES ('6', 'homepage', null);
INSERT INTO `config` VALUES ('7', '景色', 'http://localhost:8080/springbootkpk63/upload/1638969494150.jpg');

-- ----------------------------
-- Table structure for discussjingdianxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussjingdianxinxi`;
CREATE TABLE `discussjingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='景点信息评论表';

-- ----------------------------
-- Records of discussjingdianxinxi
-- ----------------------------
INSERT INTO `discussjingdianxinxi` VALUES ('151', '2022-03-11 20:40:13', '1', '1', '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discussjingdianxinxi` VALUES ('152', '2022-03-11 20:40:13', '2', '2', '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discussjingdianxinxi` VALUES ('153', '2022-03-11 20:40:13', '3', '3', '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discussjingdianxinxi` VALUES ('154', '2022-03-11 20:40:13', '4', '4', '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discussjingdianxinxi` VALUES ('155', '2022-03-11 20:40:13', '5', '5', '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discussjingdianxinxi` VALUES ('156', '2022-03-11 20:40:13', '6', '6', '用户名6', '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for discussjiudianxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussjiudianxinxi`;
CREATE TABLE `discussjiudianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619010887391 DEFAULT CHARSET=utf8 COMMENT='酒店信息评论表';

-- ----------------------------
-- Records of discussjiudianxinxi
-- ----------------------------
INSERT INTO `discussjiudianxinxi` VALUES ('161', '2022-03-11 20:40:13', '1', '1', '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discussjiudianxinxi` VALUES ('162', '2022-03-11 20:40:13', '2', '2', '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discussjiudianxinxi` VALUES ('163', '2022-03-11 20:40:13', '3', '3', '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discussjiudianxinxi` VALUES ('164', '2022-03-11 20:40:13', '4', '4', '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discussjiudianxinxi` VALUES ('165', '2022-03-11 20:40:13', '5', '5', '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discussjiudianxinxi` VALUES ('166', '2022-03-11 20:40:13', '6', '6', '用户名6', '评论内容6', '回复内容6');
INSERT INTO `discussjiudianxinxi` VALUES ('1619010887390', '2022-03-11 21:14:46', '1619010547452', '1619010822875', '1', 'FRETG', null);

-- ----------------------------
-- Table structure for discusskefangxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discusskefangxinxi`;
CREATE TABLE `discusskefangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='客房信息评论表';

-- ----------------------------
-- Records of discusskefangxinxi
-- ----------------------------
INSERT INTO `discusskefangxinxi` VALUES ('171', '2022-03-11 20:40:13', '1', '1', '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discusskefangxinxi` VALUES ('172', '2022-03-11 20:40:13', '2', '2', '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discusskefangxinxi` VALUES ('173', '2022-03-11 20:40:13', '3', '3', '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discusskefangxinxi` VALUES ('174', '2022-03-11 20:40:13', '4', '4', '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discusskefangxinxi` VALUES ('175', '2022-03-11 20:40:13', '5', '5', '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discusskefangxinxi` VALUES ('176', '2022-03-11 20:40:13', '6', '6', '用户名6', '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for discusslvyouxianlu
-- ----------------------------
DROP TABLE IF EXISTS `discusslvyouxianlu`;
CREATE TABLE `discusslvyouxianlu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='旅游线路评论表';

-- ----------------------------
-- Records of discusslvyouxianlu
-- ----------------------------
INSERT INTO `discusslvyouxianlu` VALUES ('181', '2022-03-11 20:40:13', '1', '1', '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discusslvyouxianlu` VALUES ('182', '2022-03-11 20:40:13', '2', '2', '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discusslvyouxianlu` VALUES ('183', '2022-03-11 20:40:13', '3', '3', '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discusslvyouxianlu` VALUES ('184', '2022-03-11 20:40:13', '4', '4', '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discusslvyouxianlu` VALUES ('185', '2022-03-11 20:40:13', '5', '5', '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discusslvyouxianlu` VALUES ('186', '2022-03-11 20:40:13', '6', '6', '用户名6', '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for jingdianfenlei
-- ----------------------------
DROP TABLE IF EXISTS `jingdianfenlei`;
CREATE TABLE `jingdianfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianfenlei` varchar(200) NOT NULL COMMENT '景点分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jingdianfenlei` (`jingdianfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1638969320179 DEFAULT CHARSET=utf8 COMMENT='景点分类';

-- ----------------------------
-- Records of jingdianfenlei
-- ----------------------------
INSERT INTO `jingdianfenlei` VALUES ('21', '2022-03-11 20:40:12', '景点分类1');
INSERT INTO `jingdianfenlei` VALUES ('22', '2022-03-11 20:40:12', '景点分类2');
INSERT INTO `jingdianfenlei` VALUES ('23', '2022-03-11 20:40:12', '景点分类3');
INSERT INTO `jingdianfenlei` VALUES ('24', '2022-03-11 20:40:12', '景点分类4');
INSERT INTO `jingdianfenlei` VALUES ('25', '2022-03-11 20:40:12', '景点分类5');
INSERT INTO `jingdianfenlei` VALUES ('26', '2022-03-11 20:40:12', '景点分类6');
INSERT INTO `jingdianfenlei` VALUES ('1619010406873', '2022-03-11 21:06:46', '主题公园');
INSERT INTO `jingdianfenlei` VALUES ('1619010416683', '2022-03-11 21:06:56', '古代遗址');
INSERT INTO `jingdianfenlei` VALUES ('1638969320178', '2021-12-08 21:15:20', '风光');

-- ----------------------------
-- Table structure for jingdiangoupiao
-- ----------------------------
DROP TABLE IF EXISTS `jingdiangoupiao`;
CREATE TABLE `jingdiangoupiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `jingdianfenlei` varchar(200) DEFAULT NULL COMMENT '景点分类',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `menpiaojiage` int(11) DEFAULT NULL COMMENT '门票价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `goupiaoriqi` date DEFAULT NULL COMMENT '购票日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1638969196518 DEFAULT CHARSET=utf8 COMMENT='景点购票';

-- ----------------------------
-- Records of jingdiangoupiao
-- ----------------------------
INSERT INTO `jingdiangoupiao` VALUES ('41', '2022-03-11 20:40:12', '订单编号1', '景点名称1', '景点分类1', '景点地址1', '1', '1', '总金额1', '2022-03-11', '备注1', '用户名1', '姓名1', '联系电话1', '是', '', '未支付');
INSERT INTO `jingdiangoupiao` VALUES ('42', '2022-03-11 20:40:12', '订单编号2', '景点名称2', '景点分类2', '景点地址2', '2', '2', '总金额2', '2022-03-11', '备注2', '用户名2', '姓名2', '联系电话2', '是', '', '未支付');
INSERT INTO `jingdiangoupiao` VALUES ('43', '2022-03-11 20:40:12', '订单编号3', '景点名称3', '景点分类3', '景点地址3', '3', '3', '总金额3', '2022-03-11', '备注3', '用户名3', '姓名3', '联系电话3', '是', '', '未支付');
INSERT INTO `jingdiangoupiao` VALUES ('44', '2022-03-11 20:40:12', '订单编号4', '景点名称4', '景点分类4', '景点地址4', '4', '4', '总金额4', '2022-03-11', '备注4', '用户名4', '姓名4', '联系电话4', '是', '', '未支付');
INSERT INTO `jingdiangoupiao` VALUES ('45', '2022-03-11 20:40:12', '订单编号5', '景点名称5', '景点分类5', '景点地址5', '5', '5', '总金额5', '2022-03-11', '备注5', '用户名5', '姓名5', '联系电话5', '是', '', '未支付');
INSERT INTO `jingdiangoupiao` VALUES ('46', '2022-03-11 20:40:12', '订单编号6', '景点名称6', '景点分类6', '景点地址6', '6', '6', '总金额6', '2022-03-11', '备注6', '用户名6', '姓名6', '联系电话6', '是', '', '未支付');
INSERT INTO `jingdiangoupiao` VALUES ('1619010876089', '2022-03-11 21:14:35', '202142121143121460606', '西湖公园', '古代遗址', '杭州市西湖区龙井路1号', '100', '2', '200', '2022-03-11', null, '1', '陈一', '12312312312', '是', 'ok', '已支付');
INSERT INTO `jingdiangoupiao` VALUES ('1638969196517', '2021-12-08 21:13:15', '202112821131017894601', '景点名称1', '景点分类1', '景点地址1', '1', '1', '1', '2021-12-08', null, 'yy001', '小明', '13111111111', '是', null, '已支付');

-- ----------------------------
-- Table structure for jingdianxinxi
-- ----------------------------
DROP TABLE IF EXISTS `jingdianxinxi`;
CREATE TABLE `jingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `jingdianfenlei` varchar(200) NOT NULL COMMENT '景点分类',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `jingdiandengji` varchar(200) DEFAULT NULL COMMENT '景点等级',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `menpiaoleixing` varchar(200) DEFAULT NULL COMMENT '门票类型',
  `menpiaojiage` int(11) DEFAULT NULL COMMENT '门票价格',
  `kaifangshijian` varchar(200) DEFAULT NULL COMMENT '开放时间',
  `zhuyishixiang` longtext COMMENT '注意事项',
  `jingdianjieshao` longtext COMMENT '景点介绍',
  `zixunrexian` varchar(200) DEFAULT NULL COMMENT '咨询热线',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1638969355593 DEFAULT CHARSET=utf8 COMMENT='景点信息';

-- ----------------------------
-- Records of jingdianxinxi
-- ----------------------------
INSERT INTO `jingdianxinxi` VALUES ('31', '2022-03-11 20:40:12', '景点名称1', '景点分类1', 'http://localhost:8080/springbootkpk63/upload/1619010144570.jpg', 'A', '景点地址1', '普票', '1', '开放时间1', '注意事项1', '<p>景点介绍1</p>', '020-89819991', '2021-12-08 21:13:18', '4');
INSERT INTO `jingdianxinxi` VALUES ('32', '2022-03-11 20:40:12', '景点名称2', '景点分类2', 'http://localhost:8080/springbootkpk63/upload/jingdianxinxi_jingdiantupian2.jpg', 'A', '景点地址2', '普票', '2', '开放时间2', '注意事项2', '景点介绍2', '020-89819992', '2022-03-11 20:40:12', '2');
INSERT INTO `jingdianxinxi` VALUES ('33', '2022-03-11 20:40:12', '景点名称3', '景点分类3', 'http://localhost:8080/springbootkpk63/upload/jingdianxinxi_jingdiantupian3.jpg', 'A', '景点地址3', '普票', '3', '开放时间3', '注意事项3', '景点介绍3', '020-89819993', '2022-03-11 20:40:12', '3');
INSERT INTO `jingdianxinxi` VALUES ('34', '2022-03-11 20:40:12', '景点名称4', '景点分类4', 'http://localhost:8080/springbootkpk63/upload/1619010117701.jpg', 'A', '景点地址4', '普票', '4', '开放时间4', '注意事项4', '<p>景点介绍4</p>', '020-89819994', '2022-03-11 21:01:43', '5');
INSERT INTO `jingdianxinxi` VALUES ('35', '2022-03-11 20:40:12', '景点名称5', '景点分类5', 'http://localhost:8080/springbootkpk63/upload/1619010127068.jpg', 'A', '景点地址5', '普票', '5', '开放时间5', '注意事项5', '<p>景点介绍5</p>', '020-89819995', '2022-03-11 21:14:12', '11');
INSERT INTO `jingdianxinxi` VALUES ('36', '2022-03-11 20:40:12', '景点名称6', '景点分类6', 'http://localhost:8080/springbootkpk63/upload/1619010134753.jpg', 'A', '景点地址6', '普票', '6', '开放时间6', '注意事项6', '<p>景点介绍6</p>', '020-89819996', '2022-03-11 21:02:11', '7');
INSERT INTO `jingdianxinxi` VALUES ('1619010475235', '2022-03-11 21:07:55', '西湖公园', '古代遗址', 'http://localhost:8080/springbootkpk63/upload/1619010433262.jpg', 'AAAAA', '杭州市西湖区龙井路1号', '普票', '100', '10:00-18:00', '需全程佩戴口罩', '<p>西湖景区总面积49平方公里，汇水面积为21.22平方公里，湖面面积为6.38平方公里。</p><p>西湖南、西、北三面环山，湖中白堤、苏堤、杨公堤、赵公堤将湖面分割成若干水面。西湖的湖体轮廓呈近椭圆形，湖底部较为平坦，湖泊平均水深为2.27米，最深约5米，最浅不到1米。湖泊天然地表水源是金沙涧、龙泓涧、赤山涧（慧因涧）、长桥溪四条溪流。西湖地处中国东南丘陵边缘和中亚热带北缘，年均太阳总辐射量在100—110千卡/平方厘米之间，日照时数1800—2100小时。&nbsp;</p><p>西湖有100多处公园景点，有“西湖十景”、“新西湖十景”、“三评西湖十景”之说，有60多处国家、省、市级重点文物保护单位和20多座博物馆，有断桥、雷峰塔、钱王祠、净慈寺、苏小小墓等景点。&nbsp;</p><p><img src=\"http://localhost:8080/springbootkpk63/upload/1619010473800.jpg\"></p>', '0541-12345678', '2022-03-11 21:14:38', '3');
INSERT INTO `jingdianxinxi` VALUES ('1638969355592', '2021-12-08 21:15:54', '风光', '风光', 'http://localhost:8080/springbootkpk63/upload/1638969346502.jpg', 'AA', null, '普票', null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for jiudianxinxi
-- ----------------------------
DROP TABLE IF EXISTS `jiudianxinxi`;
CREATE TABLE `jiudianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiudianmingcheng` varchar(200) NOT NULL COMMENT '酒店名称',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `jiudianleixing` varchar(200) NOT NULL COMMENT '酒店类型',
  `xingji` varchar(200) NOT NULL COMMENT '星级',
  `jiudiandizhi` varchar(200) DEFAULT NULL COMMENT '酒店地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiudianjieshao` longtext COMMENT '酒店介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1638969394946 DEFAULT CHARSET=utf8 COMMENT='酒店信息';

-- ----------------------------
-- Records of jiudianxinxi
-- ----------------------------
INSERT INTO `jiudianxinxi` VALUES ('51', '2022-03-11 20:40:12', '酒店名称1', 'http://localhost:8080/springbootkpk63/upload/1619010162675.jpg', '民宿', '一星', '酒店地址1', '联系电话1', '<p>酒店介绍1</p>');
INSERT INTO `jiudianxinxi` VALUES ('52', '2022-03-11 20:40:12', '酒店名称2', 'http://localhost:8080/springbootkpk63/upload/1619010172110.jpg', '民宿', '一星', '酒店地址2', '联系电话2', '<p>酒店介绍2</p>');
INSERT INTO `jiudianxinxi` VALUES ('53', '2022-03-11 20:40:12', '酒店名称3', 'http://localhost:8080/springbootkpk63/upload/1619010179980.jpg', '民宿', '一星', '酒店地址3', '联系电话3', '<p>酒店介绍3</p>');
INSERT INTO `jiudianxinxi` VALUES ('54', '2022-03-11 20:40:12', '酒店名称4', 'http://localhost:8080/springbootkpk63/upload/1619010188360.jpg', '民宿', '一星', '酒店地址4', '联系电话4', '<p>酒店介绍4</p>');
INSERT INTO `jiudianxinxi` VALUES ('55', '2022-03-11 20:40:12', '酒店名称5', 'http://localhost:8080/springbootkpk63/upload/1619010197966.jpg', '民宿', '一星', '酒店地址5', '联系电话5', '<p>酒店介绍5</p>');
INSERT INTO `jiudianxinxi` VALUES ('56', '2022-03-11 20:40:12', '酒店名称6', 'http://localhost:8080/springbootkpk63/upload/1619010210306.jpg', '民宿', '一星', '酒店地址6', '联系电话6', '<p>酒店介绍6</p>');
INSERT INTO `jiudianxinxi` VALUES ('1619010547452', '2022-03-11 21:09:06', '杭州万凯酒店西湖店', 'http://localhost:8080/springbootkpk63/upload/1619010498755.jpg', '连锁酒店', '四星', '西湖区三台山路三台云舍9号', '0215-12345678', '<p>是由杭州云舍酒店管理有限公司旗下的专业经济型酒店品牌，提倡在传统中发现时尚、感受温馨，万凯连锁追求安全与舒适，强调为住客提供安全、温馨的服务。西湖店的特色是在西湖景区中的特色时尚经济型酒店。</p><p><img src=\"http://localhost:8080/springbootkpk63/upload/1619010545518.jpg\"></p>');
INSERT INTO `jiudianxinxi` VALUES ('1638969394945', '2021-12-08 21:16:34', '酒店', 'http://localhost:8080/springbootkpk63/upload/1638969389052.jpg', '民宿', '三星', null, null, null);

-- ----------------------------
-- Table structure for kefangleixing
-- ----------------------------
DROP TABLE IF EXISTS `kefangleixing`;
CREATE TABLE `kefangleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kefangleixing` varchar(200) NOT NULL COMMENT '客房类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kefangleixing` (`kefangleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1638969404565 DEFAULT CHARSET=utf8 COMMENT='客房类型';

-- ----------------------------
-- Records of kefangleixing
-- ----------------------------
INSERT INTO `kefangleixing` VALUES ('61', '2022-03-11 20:40:13', '客房类型1');
INSERT INTO `kefangleixing` VALUES ('62', '2022-03-11 20:40:13', '客房类型2');
INSERT INTO `kefangleixing` VALUES ('63', '2022-03-11 20:40:13', '客房类型3');
INSERT INTO `kefangleixing` VALUES ('64', '2022-03-11 20:40:13', '客房类型4');
INSERT INTO `kefangleixing` VALUES ('65', '2022-03-11 20:40:13', '客房类型5');
INSERT INTO `kefangleixing` VALUES ('66', '2022-03-11 20:40:13', '客房类型6');
INSERT INTO `kefangleixing` VALUES ('1619010557410', '2022-03-11 21:09:16', '双人房');
INSERT INTO `kefangleixing` VALUES ('1638969404564', '2021-12-08 21:16:43', '豪华房');

-- ----------------------------
-- Table structure for kefangxinxi
-- ----------------------------
DROP TABLE IF EXISTS `kefangxinxi`;
CREATE TABLE `kefangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kefangmingcheng` varchar(200) NOT NULL COMMENT '客房名称',
  `kefangleixing` varchar(200) NOT NULL COMMENT '客房类型',
  `kefangtupian` varchar(200) NOT NULL COMMENT '客房图片',
  `kefangsheshi` varchar(200) DEFAULT NULL COMMENT '客房设施',
  `kefangjiage` int(11) NOT NULL COMMENT '客房价格',
  `kefangzhuangtai` varchar(200) NOT NULL COMMENT '客房状态',
  `kefangjieshao` longtext COMMENT '客房介绍',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `jiudianleixing` varchar(200) DEFAULT NULL COMMENT '酒店类型',
  `xingji` varchar(200) DEFAULT NULL COMMENT '星级',
  `jiudiandizhi` varchar(200) DEFAULT NULL COMMENT '酒店地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1638969433863 DEFAULT CHARSET=utf8 COMMENT='客房信息';

-- ----------------------------
-- Records of kefangxinxi
-- ----------------------------
INSERT INTO `kefangxinxi` VALUES ('71', '2022-03-11 20:40:13', '客房名称1', '客房类型1', 'http://localhost:8080/springbootkpk63/upload/kefangxinxi_kefangtupian1.jpg', '客房设施1', '1', '可预订', '客房介绍1', '酒店名称1', '酒店类型1', '星级1', '酒店地址1');
INSERT INTO `kefangxinxi` VALUES ('72', '2022-03-11 20:40:13', '客房名称2', '客房类型2', 'http://localhost:8080/springbootkpk63/upload/kefangxinxi_kefangtupian2.jpg', '客房设施2', '2', '可预订', '客房介绍2', '酒店名称2', '酒店类型2', '星级2', '酒店地址2');
INSERT INTO `kefangxinxi` VALUES ('73', '2022-03-11 20:40:13', '客房名称3', '客房类型3', 'http://localhost:8080/springbootkpk63/upload/kefangxinxi_kefangtupian3.jpg', '客房设施3', '3', '可预订', '客房介绍3', '酒店名称3', '酒店类型3', '星级3', '酒店地址3');
INSERT INTO `kefangxinxi` VALUES ('74', '2022-03-11 20:40:13', '客房名称4', '客房类型4', 'http://localhost:8080/springbootkpk63/upload/kefangxinxi_kefangtupian4.jpg', '客房设施4', '4', '可预订', '客房介绍4', '酒店名称4', '酒店类型4', '星级4', '酒店地址4');
INSERT INTO `kefangxinxi` VALUES ('75', '2022-03-11 20:40:13', '客房名称5', '客房类型5', 'http://localhost:8080/springbootkpk63/upload/kefangxinxi_kefangtupian5.jpg', '客房设施5', '5', '可预订', '客房介绍5', '酒店名称5', '酒店类型5', '星级5', '酒店地址5');
INSERT INTO `kefangxinxi` VALUES ('76', '2022-03-11 20:40:13', '客房名称6', '客房类型6', 'http://localhost:8080/springbootkpk63/upload/kefangxinxi_kefangtupian6.jpg', '客房设施6', '6', '可预订', '客房介绍6', '酒店名称6', '酒店类型6', '星级6', '酒店地址6');
INSERT INTO `kefangxinxi` VALUES ('1619010595234', '2022-03-11 21:09:54', '万凯酒店604', '双人房', 'http://localhost:8080/springbootkpk63/upload/1619010572149.jpg', '空调浴缸等', '398', '已预订', '设施齐全', '杭州万凯酒店西湖店', '连锁酒店', '四星', '西湖区三台山路三台云舍9号');
INSERT INTO `kefangxinxi` VALUES ('1638969433862', '2021-12-08 21:17:13', '客房', '豪华房', 'http://localhost:8080/springbootkpk63/upload/1638969427123.jpg', null, '399', '可预订', null, null, null, null, null);

-- ----------------------------
-- Table structure for kefangyuding
-- ----------------------------
DROP TABLE IF EXISTS `kefangyuding`;
CREATE TABLE `kefangyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kefangmingcheng` varchar(200) DEFAULT NULL COMMENT '客房名称',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `kefangzhuangtai` varchar(200) DEFAULT NULL COMMENT '客房状态',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `kefangjiage` int(11) DEFAULT NULL COMMENT '客房价格',
  `yudingtianshu` int(11) NOT NULL COMMENT '预订天数',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `xiadanshijian` date DEFAULT NULL COMMENT '下单时间',
  `ruzhushijian` datetime NOT NULL COMMENT '入住时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1638969219633 DEFAULT CHARSET=utf8 COMMENT='客房预订';

-- ----------------------------
-- Records of kefangyuding
-- ----------------------------
INSERT INTO `kefangyuding` VALUES ('81', '2022-03-11 20:40:13', '订单编号1', '客房名称1', '客房类型1', '客房状态1', '酒店名称1', '1', '1', '总价格1', '2022-03-11', '2022-03-11 20:40:13', '用户名1', '姓名1', '身份证1', '是', '', '未支付');
INSERT INTO `kefangyuding` VALUES ('82', '2022-03-11 20:40:13', '订单编号2', '客房名称2', '客房类型2', '客房状态2', '酒店名称2', '2', '2', '总价格2', '2022-03-11', '2022-03-11 20:40:13', '用户名2', '姓名2', '身份证2', '是', '', '未支付');
INSERT INTO `kefangyuding` VALUES ('83', '2022-03-11 20:40:13', '订单编号3', '客房名称3', '客房类型3', '客房状态3', '酒店名称3', '3', '3', '总价格3', '2022-03-11', '2022-03-11 20:40:13', '用户名3', '姓名3', '身份证3', '是', '', '未支付');
INSERT INTO `kefangyuding` VALUES ('84', '2022-03-11 20:40:13', '订单编号4', '客房名称4', '客房类型4', '客房状态4', '酒店名称4', '4', '4', '总价格4', '2022-03-11', '2022-03-11 20:40:13', '用户名4', '姓名4', '身份证4', '是', '', '未支付');
INSERT INTO `kefangyuding` VALUES ('85', '2022-03-11 20:40:13', '订单编号5', '客房名称5', '客房类型5', '客房状态5', '酒店名称5', '5', '5', '总价格5', '2022-03-11', '2022-03-11 20:40:13', '用户名5', '姓名5', '身份证5', '是', '', '未支付');
INSERT INTO `kefangyuding` VALUES ('86', '2022-03-11 20:40:13', '订单编号6', '客房名称6', '客房类型6', '客房状态6', '酒店名称6', '6', '6', '总价格6', '2022-03-11', '2022-03-11 20:40:13', '用户名6', '姓名6', '身份证6', '是', '', '未支付');
INSERT INTO `kefangyuding` VALUES ('1619010924478', '2022-03-11 21:15:24', '20214212115111798307', '万凯酒店604', '双人房', '可预订', '杭州万凯酒店西湖店', '398', '2', '796', '2022-03-11', '2021-04-22 15:00:00', '1', '陈一', '123456789789456123', '是', 'ok', '已支付');
INSERT INTO `kefangyuding` VALUES ('1638969219632', '2021-12-08 21:13:39', '202112821133035185186', '客房名称2', '客房类型2', '可预订', '酒店名称2', '2', '1', '2', '2021-12-08', '2022-03-08 00:00:00', 'yy001', '小明', '230000000000000000', '是', null, '已支付');

-- ----------------------------
-- Table structure for lvyouxianlu
-- ----------------------------
DROP TABLE IF EXISTS `lvyouxianlu`;
CREATE TABLE `lvyouxianlu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianlumingcheng` varchar(200) NOT NULL COMMENT '线路名称',
  `xianlufenlei` varchar(200) NOT NULL COMMENT '线路分类',
  `fengmiantu` varchar(200) NOT NULL COMMENT '封面图',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `qidian` varchar(200) DEFAULT NULL COMMENT '起点',
  `tujing` varchar(200) DEFAULT NULL COMMENT '途经',
  `zhongdian` varchar(200) DEFAULT NULL COMMENT '终点',
  `jiaotongfangshi` varchar(200) DEFAULT NULL COMMENT '交通方式',
  `chuxingshijian` datetime DEFAULT NULL COMMENT '出行时间',
  `xianlufeiyong` int(11) DEFAULT NULL COMMENT '线路费用',
  `feiyongbaohan` varchar(200) DEFAULT NULL COMMENT '费用包含',
  `xingchengluxian` longtext COMMENT '行程路线',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619010716859 DEFAULT CHARSET=utf8 COMMENT='旅游线路';

-- ----------------------------
-- Records of lvyouxianlu
-- ----------------------------
INSERT INTO `lvyouxianlu` VALUES ('101', '2022-03-11 20:40:13', '线路名称1', '线路分类1', 'http://localhost:8080/springbootkpk63/upload/1619010240305.jpg', '景点名称1', '起点1', '途经1', '终点1', '大巴', '2022-03-11 20:40:13', '1', '费用包含1', '<p>行程路线1</p>');
INSERT INTO `lvyouxianlu` VALUES ('102', '2022-03-11 20:40:13', '线路名称2', '线路分类2', 'http://localhost:8080/springbootkpk63/upload/1619010249003.jpg', '景点名称2', '起点2', '途经2', '终点2', '大巴', '2022-03-11 20:40:13', '2', '费用包含2', '<p>行程路线2</p>');
INSERT INTO `lvyouxianlu` VALUES ('103', '2022-03-11 20:40:13', '线路名称3', '线路分类3', 'http://localhost:8080/springbootkpk63/upload/1619010258293.jpg', '景点名称3', '起点3', '途经3', '终点3', '大巴', '2022-03-11 20:40:13', '3', '费用包含3', '<p>行程路线3</p>');
INSERT INTO `lvyouxianlu` VALUES ('104', '2022-03-11 20:40:13', '线路名称4', '线路分类4', 'http://localhost:8080/springbootkpk63/upload/1619010271129.png', '景点名称4', '起点4', '途经4', '终点4', '大巴', '2022-03-11 20:40:13', '4', '费用包含4', '<p>行程路线4</p>');
INSERT INTO `lvyouxianlu` VALUES ('105', '2022-03-11 20:40:13', '线路名称5', '线路分类5', 'http://localhost:8080/springbootkpk63/upload/1619010280374.jpg', '景点名称5', '起点5', '途经5', '终点5', '大巴', '2022-03-11 20:40:13', '5', '费用包含5', '<p>行程路线5</p>');
INSERT INTO `lvyouxianlu` VALUES ('106', '2022-03-11 20:40:13', '线路名称6', '线路分类6', 'http://localhost:8080/springbootkpk63/upload/lvyouxianlu_fengmiantu6.jpg', '景点名称6', '起点6', '途经6', '终点6', '大巴', '2022-03-11 20:40:13', '6', '费用包含6', '行程路线6');
INSERT INTO `lvyouxianlu` VALUES ('1619010716858', '2022-03-11 21:11:56', '云南跟团旅游6天5晚', '观光旅游线路', 'http://localhost:8080/springbootkpk63/upload/1619010662334.jpg', '玉龙雪山洱海石林风景区', '广州', '上海深圳', '云南', '飞机', '2021-04-25 10:00:00', '3399', '酒店来回机票等', '<p><img src=\"http://localhost:8080/springbootkpk63/upload/1619010714127.jpg\"></p>');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1638969241126 DEFAULT CHARSET=utf8 COMMENT='留言板';

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES ('141', '2022-03-11 20:40:13', '1', '用户名1', '留言内容1', '回复内容1');
INSERT INTO `messages` VALUES ('142', '2022-03-11 20:40:13', '2', '用户名2', '留言内容2', '回复内容2');
INSERT INTO `messages` VALUES ('143', '2022-03-11 20:40:13', '3', '用户名3', '留言内容3', '回复内容3');
INSERT INTO `messages` VALUES ('144', '2022-03-11 20:40:13', '4', '用户名4', '留言内容4', '回复内容4');
INSERT INTO `messages` VALUES ('145', '2022-03-11 20:40:13', '5', '用户名5', '留言内容5', '回复内容5');
INSERT INTO `messages` VALUES ('146', '2022-03-11 20:40:13', '6', '用户名6', '留言内容6', '回复内容6');
INSERT INTO `messages` VALUES ('1619010955949', '2022-03-11 21:15:55', '1619010822875', '1', 'DSRERTE', 'FTR');
INSERT INTO `messages` VALUES ('1638969241125', '2021-12-08 21:14:00', '1638969149875', 'yy001', '111111111111', '11111111');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1638969527755 DEFAULT CHARSET=utf8 COMMENT='旅游资讯';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('131', '2022-03-11 20:40:13', '标题1', '简介1', 'http://localhost:8080/springbootkpk63/upload/news_picture1.jpg', '内容1');
INSERT INTO `news` VALUES ('132', '2022-03-11 20:40:13', '标题2', '简介2', 'http://localhost:8080/springbootkpk63/upload/news_picture2.jpg', '内容2');
INSERT INTO `news` VALUES ('133', '2022-03-11 20:40:13', '标题3', '简介3', 'http://localhost:8080/springbootkpk63/upload/news_picture3.jpg', '内容3');
INSERT INTO `news` VALUES ('134', '2022-03-11 20:40:13', '标题4', '简介4', 'http://localhost:8080/springbootkpk63/upload/news_picture4.jpg', '内容4');
INSERT INTO `news` VALUES ('135', '2022-03-11 20:40:13', '标题5', '简介5', 'http://localhost:8080/springbootkpk63/upload/news_picture5.jpg', '内容5');
INSERT INTO `news` VALUES ('136', '2022-03-11 20:40:13', '标题6', '简介6', 'http://localhost:8080/springbootkpk63/upload/news_picture6.jpg', '内容6');
INSERT INTO `news` VALUES ('1619011123417', '2022-03-11 21:18:43', '新景点上线', '新景点开放', 'http://localhost:8080/springbootkpk63/upload/1619011110547.jpg', '<p>资讯内容KJGKTJYTKU</p><p><img src=\"http://localhost:8080/springbootkpk63/upload/1619011122311.jpg\"></p>');
INSERT INTO `news` VALUES ('1638969527754', '2021-12-08 21:18:46', '风光', '风光', 'http://localhost:8080/springbootkpk63/upload/1638969523810.jpg', '<p>风光</p>');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1638969206762 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES ('1619010882579', '2022-03-11 21:14:42', '1619010822875', '1619010547452', 'jiudianxinxi', '杭州万凯酒店西湖店', 'http://localhost:8080/springbootkpk63/upload/1619010498755.jpg');
INSERT INTO `storeup` VALUES ('1619010909443', '2022-03-11 21:15:09', '1619010822875', '1619010595234', 'kefangxinxi', '万凯酒店604', 'http://localhost:8080/springbootkpk63/upload/1619010572149.jpg');
INSERT INTO `storeup` VALUES ('1638969200463', '2021-12-08 21:13:20', '1638969149875', '31', 'jingdianxinxi', '景点名称1', 'http://localhost:8080/springbootkpk63/upload/1619010144570.jpg');
INSERT INTO `storeup` VALUES ('1638969206761', '2021-12-08 21:13:26', '1638969149875', '51', 'jiudianxinxi', '酒店名称1', 'http://localhost:8080/springbootkpk63/upload/1619010162675.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '11', '用户1', 'yonghu', '用户', 'ggirfb6r7lbih7v7p4csg11138deyywl', '2022-03-11 20:51:14', '2022-03-11 21:51:14');
INSERT INTO `token` VALUES ('2', '1', 'abo', 'users', '管理员', 'g88gxqtggbdomb7n9vwyl74jauckmjkz', '2022-03-11 21:01:37', '2021-12-08 22:15:01');
INSERT INTO `token` VALUES ('3', '1619010822875', '1', 'yonghu', '用户', 'qtmsurymgcd97yz27nwhr2lkmt90vmr8', '2022-03-11 21:13:48', '2022-03-11 22:18:51');
INSERT INTO `token` VALUES ('4', '1638969149875', 'yy001', 'yonghu', '用户', 'w7iob57bbjjarrzy6r6e2s1ftcntd45d', '2021-12-08 21:12:36', '2021-12-08 22:19:01');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2022-03-11 20:40:13');

-- ----------------------------
-- Table structure for xianlufenlei
-- ----------------------------
DROP TABLE IF EXISTS `xianlufenlei`;
CREATE TABLE `xianlufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianlufenlei` varchar(200) NOT NULL COMMENT '线路分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xianlufenlei` (`xianlufenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1619010607461 DEFAULT CHARSET=utf8 COMMENT='线路分类';

-- ----------------------------
-- Records of xianlufenlei
-- ----------------------------
INSERT INTO `xianlufenlei` VALUES ('91', '2022-03-11 20:40:13', '线路分类1');
INSERT INTO `xianlufenlei` VALUES ('92', '2022-03-11 20:40:13', '线路分类2');
INSERT INTO `xianlufenlei` VALUES ('93', '2022-03-11 20:40:13', '线路分类3');
INSERT INTO `xianlufenlei` VALUES ('94', '2022-03-11 20:40:13', '线路分类4');
INSERT INTO `xianlufenlei` VALUES ('95', '2022-03-11 20:40:13', '线路分类5');
INSERT INTO `xianlufenlei` VALUES ('96', '2022-03-11 20:40:13', '线路分类6');
INSERT INTO `xianlufenlei` VALUES ('1619010607460', '2022-03-11 21:10:06', '观光旅游线路');

-- ----------------------------
-- Table structure for xianluyuding
-- ----------------------------
DROP TABLE IF EXISTS `xianluyuding`;
CREATE TABLE `xianluyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianlumingcheng` varchar(200) DEFAULT NULL COMMENT '线路名称',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `qidian` varchar(200) DEFAULT NULL COMMENT '起点',
  `zhongdian` varchar(200) DEFAULT NULL COMMENT '终点',
  `tujing` varchar(200) DEFAULT NULL COMMENT '途经',
  `jiaotongfangshi` varchar(200) DEFAULT NULL COMMENT '交通方式',
  `chuxingshijian` varchar(200) DEFAULT NULL COMMENT '出行时间',
  `xianlufeiyong` varchar(200) DEFAULT NULL COMMENT '线路费用',
  `yudingshijian` datetime DEFAULT NULL COMMENT '预订时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1638969230705 DEFAULT CHARSET=utf8 COMMENT='线路预订';

-- ----------------------------
-- Records of xianluyuding
-- ----------------------------
INSERT INTO `xianluyuding` VALUES ('111', '2022-03-11 20:40:13', '线路名称1', '景点名称1', '起点1', '终点1', '途经1', '交通方式1', '出行时间1', '线路费用1', '2022-03-11 20:40:13', '用户名1', '联系电话1', '身份证1', '是', '', '未支付');
INSERT INTO `xianluyuding` VALUES ('112', '2022-03-11 20:40:13', '线路名称2', '景点名称2', '起点2', '终点2', '途经2', '交通方式2', '出行时间2', '线路费用2', '2022-03-11 20:40:13', '用户名2', '联系电话2', '身份证2', '是', '', '未支付');
INSERT INTO `xianluyuding` VALUES ('113', '2022-03-11 20:40:13', '线路名称3', '景点名称3', '起点3', '终点3', '途经3', '交通方式3', '出行时间3', '线路费用3', '2022-03-11 20:40:13', '用户名3', '联系电话3', '身份证3', '是', '', '未支付');
INSERT INTO `xianluyuding` VALUES ('114', '2022-03-11 20:40:13', '线路名称4', '景点名称4', '起点4', '终点4', '途经4', '交通方式4', '出行时间4', '线路费用4', '2022-03-11 20:40:13', '用户名4', '联系电话4', '身份证4', '是', '', '未支付');
INSERT INTO `xianluyuding` VALUES ('115', '2022-03-11 20:40:13', '线路名称5', '景点名称5', '起点5', '终点5', '途经5', '交通方式5', '出行时间5', '线路费用5', '2022-03-11 20:40:13', '用户名5', '联系电话5', '身份证5', '是', '', '未支付');
INSERT INTO `xianluyuding` VALUES ('116', '2022-03-11 20:40:13', '线路名称6', '景点名称6', '起点6', '终点6', '途经6', '交通方式6', '出行时间6', '线路费用6', '2022-03-11 20:40:13', '用户名6', '联系电话6', '身份证6', '是', '', '未支付');
INSERT INTO `xianluyuding` VALUES ('1619009482912', '2022-03-11 20:51:22', '线路名称5', '景点名称5', '起点5', '终点5', '途经5', '大巴', '2022-03-11 20:40:13', '5', '2022-03-11 20:51:19', '用户1', '13823888881', '440300199101010001', '否', null, '未支付');
INSERT INTO `xianluyuding` VALUES ('1619010938496', '2022-03-11 21:15:38', '云南跟团旅游6天5晚', '玉龙雪山洱海石林风景区', '广州', '云南', '上海深圳', '飞机', '2021-04-25 10:00:00', '3399', '2022-03-11 21:15:35', '1', '12312312312', '123456789789456123', '是', 'ok', '已支付');
INSERT INTO `xianluyuding` VALUES ('1638969230704', '2021-12-08 21:13:50', '线路名称3', '景点名称3', '起点3', '终点3', '途经3', '大巴', '2022-03-11 20:40:13', '3', '2021-12-08 21:13:47', 'yy001', '13111111111', '230000000000000000', '是', null, '已支付');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1638969149876 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('11', '2022-03-11 20:40:12', '用户1', '123456', '姓名1', 'http://localhost:8080/springbootkpk63/upload/yonghu_touxiang1.jpg', '男', '13823888881', '440300199101010001');
INSERT INTO `yonghu` VALUES ('12', '2022-03-11 20:40:12', '用户2', '123456', '姓名2', 'http://localhost:8080/springbootkpk63/upload/yonghu_touxiang2.jpg', '男', '13823888882', '440300199202020002');
INSERT INTO `yonghu` VALUES ('13', '2022-03-11 20:40:12', '用户3', '123456', '姓名3', 'http://localhost:8080/springbootkpk63/upload/yonghu_touxiang3.jpg', '男', '13823888883', '440300199303030003');
INSERT INTO `yonghu` VALUES ('14', '2022-03-11 20:40:12', '用户4', '123456', '姓名4', 'http://localhost:8080/springbootkpk63/upload/yonghu_touxiang4.jpg', '男', '13823888884', '440300199404040004');
INSERT INTO `yonghu` VALUES ('15', '2022-03-11 20:40:12', '用户5', '123456', '姓名5', 'http://localhost:8080/springbootkpk63/upload/yonghu_touxiang5.jpg', '男', '13823888885', '440300199505050005');
INSERT INTO `yonghu` VALUES ('16', '2022-03-11 20:40:12', '用户6', '123456', '姓名6', 'http://localhost:8080/springbootkpk63/upload/yonghu_touxiang6.jpg', '男', '13823888886', '440300199606060006');
INSERT INTO `yonghu` VALUES ('1619010822875', '2022-03-11 21:13:42', '1', '1', '陈一', 'http://localhost:8080/springbootkpk63/upload/1619010836329.jpg', '女', '12312312312', '123456789789456123');
INSERT INTO `yonghu` VALUES ('1638969149875', '2021-12-08 21:12:29', 'yy001', '123', '小明', 'http://localhost:8080/springbootkpk63/upload/1638969178208.jpg', '男', '13111111111', '230000000000000000');
