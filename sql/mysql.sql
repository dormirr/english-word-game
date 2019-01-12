/*
Navicat MySQL Data Transfer

Source Server         : EnglishWordGame
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : EnglishWordGame

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2019-01-12 17:15:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for 单词
-- ----------------------------
DROP TABLE IF EXISTS `单词`;
CREATE TABLE `单词` (
  `单词序号` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `英文` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `中文` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `难度` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`单词序号`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of 单词
-- ----------------------------
INSERT INTO `单词` VALUES ('1', 'ok', '好', '简单');
INSERT INTO `单词` VALUES ('2', 'ruler', '尺子', '简单');
INSERT INTO `单词` VALUES ('3', 'book', '书', '简单');
INSERT INTO `单词` VALUES ('4', 'school', '学校', '简单');
INSERT INTO `单词` VALUES ('5', 'nose', '鼻子', '简单');
INSERT INTO `单词` VALUES ('6', 'ear', '耳朵', '简单');
INSERT INTO `单词` VALUES ('7', 'leg', '腿', '简单');
INSERT INTO `单词` VALUES ('8', 'red', '红色的', '简单');
INSERT INTO `单词` VALUES ('9', 'blue', '蓝色的', '简单');
INSERT INTO `单词` VALUES ('10', 'bear', '熊', '简单');
INSERT INTO `单词` VALUES ('11', 'pig', '猪', '简单');
INSERT INTO `单词` VALUES ('12', 'you', '你', '简单');
INSERT INTO `单词` VALUES ('13', 'name', '名字', '简单');
INSERT INTO `单词` VALUES ('14', 'name', '名字', '中等');
INSERT INTO `单词` VALUES ('15', 'classroom', '教室', '中等');
INSERT INTO `单词` VALUES ('16', 'answer', '回答', '中等');
INSERT INTO `单词` VALUES ('17', 'blackboard', '黑板', '中等');
INSERT INTO `单词` VALUES ('18', 'broom', '扫帚', '中等');
INSERT INTO `单词` VALUES ('19', 'window', '窗户', '中等');
INSERT INTO `单词` VALUES ('20', 'raincoat', '雨衣', '中等');
INSERT INTO `单词` VALUES ('21', 'cap', '便帽', '中等');
INSERT INTO `单词` VALUES ('22', 'pioneer', '先锋', '中等');
INSERT INTO `单词` VALUES ('23', 'academic', '学术的', '困难');
INSERT INTO `单词` VALUES ('24', 'province', '省', '困难');
INSERT INTO `单词` VALUES ('25', 'enthusiastic', '热心的', '困难');
INSERT INTO `单词` VALUES ('26', 'information', '信息', '困难');
INSERT INTO `单词` VALUES ('27', 'brilliant', '极好的', '困难');
INSERT INTO `单词` VALUES ('28', 'cartoon', '卡通', '困难');
INSERT INTO `单词` VALUES ('29', 'journey', '卡通', '困难');
INSERT INTO `单词` VALUES ('30', 'frighten', '吃惊', '困难');
INSERT INTO `单词` VALUES ('31', 'ordinary', ' 普通的', '困难');
INSERT INTO `单词` VALUES ('32', 'steam', '蒸汽', '困难');
INSERT INTO `单词` VALUES ('33', 'float', '漂浮', '困难');
INSERT INTO `单词` VALUES ('34', 'form', '形成', '困难');
INSERT INTO `单词` VALUES ('35', 'balance', '天平', '困难');
INSERT INTO `单词` VALUES ('36', 'crucible', ' 坩埚', '困难');
INSERT INTO `单词` VALUES ('37', 'flame', ' 火焰', '中等');
INSERT INTO `单词` VALUES ('38', ' lecture', ' 演讲', '中等');
INSERT INTO `单词` VALUES ('39', ' department', '科，系', '中等');
INSERT INTO `单词` VALUES ('40', ' contain', ' 包含', '中等');
INSERT INTO `单词` VALUES ('41', 'access', '接近', '中等');
INSERT INTO `单词` VALUES ('42', 'keyword', ' 密码', '中等');
INSERT INTO `单词` VALUES ('43', 'average', ' 平均的', '中等');
INSERT INTO `单词` VALUES ('44', ' statistics', '统计数字', '中等');
INSERT INTO `单词` VALUES ('45', ' shorten', ' 缩短', '中等');
INSERT INTO `单词` VALUES ('46', ' sideways', ' 横着的', '中等');
INSERT INTO `单词` VALUES ('47', 'cocaine', '可卡因', '中等');
INSERT INTO `单词` VALUES ('48', ' danger', '危险', '中等');
INSERT INTO `单词` VALUES ('49', ' addict', ' 瘾君子', '中等');
INSERT INTO `单词` VALUES ('50', 'inject', ' 注射', '中等');
INSERT INTO `单词` VALUES ('51', ' needle', ' 针管', '中等');
INSERT INTO `单词` VALUES ('52', ' powerful', ' 有力的', '中等');
INSERT INTO `单词` VALUES ('53', ' reduce', '减少', '中等');
INSERT INTO `单词` VALUES ('54', 'nearby', ' 附件的', '中等');
INSERT INTO `单词` VALUES ('55', ' burglary', '盗窃', '中等');
INSERT INTO `单词` VALUES ('56', ' crime', ' 罪行', '中等');
INSERT INTO `单词` VALUES ('57', 'connection', ' 联系', '中等');
INSERT INTO `单词` VALUES ('58', ' illegal', ' 违法的', '中等');
INSERT INTO `单词` VALUES ('59', ' ratio', ' 比', '中等');
INSERT INTO `单词` VALUES ('60', ' shoplifting', ' 逛商店时偷窃商品的行为', '中等');
INSERT INTO `单词` VALUES ('61', 'treatment', '治疗', '中等');
INSERT INTO `单词` VALUES ('62', ' likely', ' 可能的', '中等');
INSERT INTO `单词` VALUES ('63', ' adult', ' 成人', '中等');
INSERT INTO `单词` VALUES ('64', ' disagree', ' 不同意的', '中等');
INSERT INTO `单词` VALUES ('65', ' ban', ' 禁止', '中等');
INSERT INTO `单词` VALUES ('66', ' horrible', '令人不快的', '中等');
INSERT INTO `单词` VALUES ('67', ' affect', ' 影响', '中等');
INSERT INTO `单词` VALUES ('68', ' participants', ' 参与者', '中等');
INSERT INTO `单词` VALUES ('69', 'recofnise', ' 认识', '中等');
INSERT INTO `单词` VALUES ('70', ' jogging', ' 慢跑', '中等');
INSERT INTO `单词` VALUES ('71', ' gymnastic', ' 体操的', '中等');
INSERT INTO `单词` VALUES ('72', 'audience', ' 听众', '中等');
INSERT INTO `单词` VALUES ('73', ' choir', ' 唱诗班', '中等');
INSERT INTO `单词` VALUES ('74', ' classical', ' 古典音乐', '中等');
INSERT INTO `单词` VALUES ('75', 'composer', ' 作曲家', '中等');
INSERT INTO `单词` VALUES ('76', ' conductor', ' 指挥', '中等');
INSERT INTO `单词` VALUES ('77', ' court', ' 宫廷', '中等');
INSERT INTO `单词` VALUES ('78', ' director', ' 指挥', '中等');
INSERT INTO `单词` VALUES ('79', ' genius', ' 天才', '中等');
INSERT INTO `单词` VALUES ('80', 'lose', ' 失去', '中等');
INSERT INTO `单词` VALUES ('81', 'abolition', '废除', '困难');
INSERT INTO `单词` VALUES ('82', 'absract', '抽象的；深奥的', '困难');
INSERT INTO `单词` VALUES ('83', 'almanac', '年鉴，历书', '困难');
INSERT INTO `单词` VALUES ('84', 'bankrupt', '破产的', '困难');
INSERT INTO `单词` VALUES ('85', 'bearing', '忍受；方位', '困难');
INSERT INTO `单词` VALUES ('86', 'brittle', '脆的；易损坏的', '困难');
INSERT INTO `单词` VALUES ('87', 'chasm', '深渊', '困难');
INSERT INTO `单词` VALUES ('88', 'chastise', '严厉惩罚；谴责', '困难');
INSERT INTO `单词` VALUES ('89', 'chauffeur', '司机', '困难');
INSERT INTO `单词` VALUES ('90', 'cholera', '霍乱', '困难');
INSERT INTO `单词` VALUES ('91', 'clergy', '神职人员', '困难');
INSERT INTO `单词` VALUES ('92', 'degradation', '降级；衰变', '困难');
INSERT INTO `单词` VALUES ('93', 'detachment', '分离；超然', '困难');
INSERT INTO `单词` VALUES ('94', 'devilish', '如恶魔的', '困难');
INSERT INTO `单词` VALUES ('95', 'dexterity', '纯熟；灵巧', '困难');
INSERT INTO `单词` VALUES ('96', 'diadem', '王冠；王权', '困难');
INSERT INTO `单词` VALUES ('97', 'eagerness', '热心', '困难');
INSERT INTO `单词` VALUES ('98', 'ebony', '黑檀树', '困难');
INSERT INTO `单词` VALUES ('99', 'effeminate', '柔弱的；缺乏勇气的', '困难');
INSERT INTO `单词` VALUES ('100', 'elapse', '（时间）过去；消逝', '困难');
INSERT INTO `单词` VALUES ('101', 'fabulous', '难以置信的', '困难');
INSERT INTO `单词` VALUES ('102', 'feudal', '封建制度的', '困难');
INSERT INTO `单词` VALUES ('103', 'fervent', '热烈的', '困难');
INSERT INTO `单词` VALUES ('104', 'feud', '宿怨；不和', '困难');
INSERT INTO `单词` VALUES ('105', 'gamble', '赌博；冒险', '困难');
INSERT INTO `单词` VALUES ('106', 'gentile', '非犹太人；异邦人', '困难');
INSERT INTO `单词` VALUES ('107', 'gig', '双轮马车；赛艇', '困难');
INSERT INTO `单词` VALUES ('108', 'glossy', '光滑的', '困难');
INSERT INTO `单词` VALUES ('109', 'hereditary', '世袭的；遗传的', '困难');
INSERT INTO `单词` VALUES ('110', 'heretic', '异教徒', '困难');
INSERT INTO `单词` VALUES ('111', 'hurricane', '飓风', '困难');
INSERT INTO `单词` VALUES ('112', 'hygiene', '卫生的', '困难');
INSERT INTO `单词` VALUES ('113', 'impend', '逼迫；迫近', '困难');
INSERT INTO `单词` VALUES ('114', 'incurable', '无可救药的', '困难');
INSERT INTO `单词` VALUES ('115', 'inexorable', '不为所动的', '困难');
INSERT INTO `单词` VALUES ('116', 'infer', '推论；推断', '困难');
INSERT INTO `单词` VALUES ('117', 'jam', '堵塞', '困难');
INSERT INTO `单词` VALUES ('118', 'jingle', '叮当响', '困难');
INSERT INTO `单词` VALUES ('119', 'jeer', '嘲笑', '困难');
INSERT INTO `单词` VALUES ('120', 'juicy', '多水分的', '困难');
INSERT INTO `单词` VALUES ('121', 'keel', '龙骨', '困难');
INSERT INTO `单词` VALUES ('122', 'kennel', '狗舍', '困难');
INSERT INTO `单词` VALUES ('123', 'knead', '按摩；捏制', '困难');
INSERT INTO `单词` VALUES ('124', 'lair', '野兽的巢穴', '困难');
INSERT INTO `单词` VALUES ('125', 'layman', '门外汉', '困难');
INSERT INTO `单词` VALUES ('126', 'landmark', '里程碑', '困难');
INSERT INTO `单词` VALUES ('127', 'mace', '权杖', '困难');
INSERT INTO `单词` VALUES ('128', 'martyrdom', '殉难', '困难');
INSERT INTO `单词` VALUES ('129', 'mangle', '撕成碎片', '困难');
INSERT INTO `单词` VALUES ('130', 'narcotic', '催眠药', '困难');
INSERT INTO `单词` VALUES ('131', 'needlework', '裁缝', '困难');
INSERT INTO `单词` VALUES ('132', 'noticeable', '显而易见的', '困难');
INSERT INTO `单词` VALUES ('133', 'oaken', '橡木制的', '困难');
INSERT INTO `单词` VALUES ('134', 'outrageous', '粗暴无礼的', '困难');
INSERT INTO `单词` VALUES ('135', 'oral', '口头的', '困难');
INSERT INTO `单词` VALUES ('136', 'pagan', '异教徒', '困难');
INSERT INTO `单词` VALUES ('137', 'patronage', '赞助', '困难');
INSERT INTO `单词` VALUES ('138', 'quinine', '奎宁', '困难');
INSERT INTO `单词` VALUES ('139', 'quarrelsome', '怒气冲冲的', '困难');
INSERT INTO `单词` VALUES ('140', 'rabble', '乌合之众', '困难');
INSERT INTO `单词` VALUES ('141', 'ramble', '漫步；闲逛', '困难');
INSERT INTO `单词` VALUES ('142', 'safeguard', '护照', '困难');
INSERT INTO `单词` VALUES ('143', 'secretion', '分泌', '困难');

-- ----------------------------
-- Table structure for 用户
-- ----------------------------
DROP TABLE IF EXISTS `用户`;
CREATE TABLE `用户` (
  `用户序号` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `账号` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `密码` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `累计积分` int(8) unsigned DEFAULT '0',
  PRIMARY KEY (`用户序号`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of 用户
-- ----------------------------
INSERT INTO `用户` VALUES ('1', '管理员', '123', '0');
INSERT INTO `用户` VALUES ('2', '张天赐', '123', '0');
INSERT INTO `用户` VALUES ('3', '测试', '123', '0');

-- ----------------------------
-- Table structure for 记录
-- ----------------------------
DROP TABLE IF EXISTS `记录`;
CREATE TABLE `记录` (
  `记录序号` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `用户序号` int(8) unsigned NOT NULL,
  `单词序号` int(8) unsigned NOT NULL,
  `次数` int(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`记录序号`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of 记录
-- ----------------------------
