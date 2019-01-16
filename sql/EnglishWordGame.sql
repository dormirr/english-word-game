/*
Navicat MySQL Data Transfer

Source Server         : EnglishWordGame
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : EnglishWordGame

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2019-01-16 11:15:35
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
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of 单词
-- ----------------------------
INSERT INTO `单词` VALUES ('1', 'ok', '好的', '简单');
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
INSERT INTO `单词` VALUES ('13', 'ten', '十', '简单');
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
INSERT INTO `单词` VALUES ('31', 'ordinary', '普通的', '困难');
INSERT INTO `单词` VALUES ('32', 'steam', '蒸汽', '困难');
INSERT INTO `单词` VALUES ('33', 'float', '漂浮', '困难');
INSERT INTO `单词` VALUES ('34', 'form', '形成', '困难');
INSERT INTO `单词` VALUES ('35', 'balance', '天平', '困难');
INSERT INTO `单词` VALUES ('36', 'crucible', '坩埚', '困难');
INSERT INTO `单词` VALUES ('37', 'flame', '火焰', '中等');
INSERT INTO `单词` VALUES ('38', 'lecture', '演讲', '中等');
INSERT INTO `单词` VALUES ('39', 'department', '科，系', '中等');
INSERT INTO `单词` VALUES ('40', 'contain', '包含', '中等');
INSERT INTO `单词` VALUES ('41', 'access', '接近', '中等');
INSERT INTO `单词` VALUES ('42', 'keyword', '密码', '中等');
INSERT INTO `单词` VALUES ('43', 'average', '平均的', '中等');
INSERT INTO `单词` VALUES ('44', 'statistics', '统计数字', '中等');
INSERT INTO `单词` VALUES ('45', 'shorten', '缩短', '中等');
INSERT INTO `单词` VALUES ('46', 'sieways', '横着的', '中等');
INSERT INTO `单词` VALUES ('47', 'cocaine', '可卡因', '中等');
INSERT INTO `单词` VALUES ('48', 'danger', '危险', '中等');
INSERT INTO `单词` VALUES ('49', 'addict', '瘾君子', '中等');
INSERT INTO `单词` VALUES ('50', 'inject', '注射', '中等');
INSERT INTO `单词` VALUES ('51', 'needle', '针管', '中等');
INSERT INTO `单词` VALUES ('52', 'powerful', '有力的', '中等');
INSERT INTO `单词` VALUES ('53', 'reduce', '减少', '中等');
INSERT INTO `单词` VALUES ('54', 'nearby', '附件的', '中等');
INSERT INTO `单词` VALUES ('55', 'burglary', '盗窃', '中等');
INSERT INTO `单词` VALUES ('56', 'crime', '罪行', '中等');
INSERT INTO `单词` VALUES ('57', 'connection', '联系', '中等');
INSERT INTO `单词` VALUES ('58', 'illegal', '违法的', '中等');
INSERT INTO `单词` VALUES ('59', 'ratio', '比', '中等');
INSERT INTO `单词` VALUES ('60', 'shoplifting', '逛商店时偷窃商品的行为', '中等');
INSERT INTO `单词` VALUES ('61', 'treatment', '治疗', '中等');
INSERT INTO `单词` VALUES ('62', 'likely', '可能的', '中等');
INSERT INTO `单词` VALUES ('63', 'adult', '成人', '中等');
INSERT INTO `单词` VALUES ('64', 'disagree', '不同意的', '中等');
INSERT INTO `单词` VALUES ('65', 'ban', '禁止', '中等');
INSERT INTO `单词` VALUES ('66', 'horrible', '令人不快的', '中等');
INSERT INTO `单词` VALUES ('67', 'affect', '影响', '中等');
INSERT INTO `单词` VALUES ('68', 'participants', '参与者', '中等');
INSERT INTO `单词` VALUES ('69', 'recofnise', '认识', '中等');
INSERT INTO `单词` VALUES ('70', 'jogging', '慢跑', '中等');
INSERT INTO `单词` VALUES ('71', 'gymnastic', '体操的', '中等');
INSERT INTO `单词` VALUES ('72', 'audience', '听众', '中等');
INSERT INTO `单词` VALUES ('73', 'choir', '唱诗班', '中等');
INSERT INTO `单词` VALUES ('74', 'classical', '古典音乐', '中等');
INSERT INTO `单词` VALUES ('75', 'composer', '作曲家', '中等');
INSERT INTO `单词` VALUES ('76', 'conductor', '指挥', '中等');
INSERT INTO `单词` VALUES ('77', 'court', '宫廷', '中等');
INSERT INTO `单词` VALUES ('78', 'director', '指挥', '中等');
INSERT INTO `单词` VALUES ('79', 'genius', '天才', '中等');
INSERT INTO `单词` VALUES ('80', 'lose', '失去', '中等');
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
INSERT INTO `单词` VALUES ('144', 'six', '六', '简单');
INSERT INTO `单词` VALUES ('145', 'me', '我', '简单');
INSERT INTO `单词` VALUES ('146', 'piece', '片', '简单');
INSERT INTO `单词` VALUES ('147', 'four', '四', '简单');
INSERT INTO `单词` VALUES ('148', 'bottle', '瓶', '简单');
INSERT INTO `单词` VALUES ('149', 'give', '给', '简单');
INSERT INTO `单词` VALUES ('150', 'bread', '面包', '简单');
INSERT INTO `单词` VALUES ('151', 'please', '请', '简单');
INSERT INTO `单词` VALUES ('152', 'near', '靠近', '简单');
INSERT INTO `单词` VALUES ('153', 'model', '模型', '简单');
INSERT INTO `单词` VALUES ('154', 'sky', '天空', '简单');
INSERT INTO `单词` VALUES ('155', 'above', '在上方', '简单');
INSERT INTO `单词` VALUES ('156', 'bright', '明亮的', '简单');
INSERT INTO `单词` VALUES ('157', 'lake', '湖', '简单');
INSERT INTO `单词` VALUES ('158', 'slogan', '标语', '简单');
INSERT INTO `单词` VALUES ('159', 'world', '世界', '简单');
INSERT INTO `单词` VALUES ('160', 'many', '许多', '简单');
INSERT INTO `单词` VALUES ('161', 'lesson', '功课', '简单');
INSERT INTO `单词` VALUES ('162', 'like', '喜欢', '简单');
INSERT INTO `单词` VALUES ('163', 'table', '桌子', '简单');
INSERT INTO `单词` VALUES ('164', 'let', '让', '简单');
INSERT INTO `单词` VALUES ('165', 'fly', '飞', '简单');
INSERT INTO `单词` VALUES ('166', 'house', '房子', '简单');
INSERT INTO `单词` VALUES ('167', 'tree', '树', '简单');
INSERT INTO `单词` VALUES ('168', 'river', '河流', '简单');
INSERT INTO `单词` VALUES ('169', 'dog', '狗', '简单');
INSERT INTO `单词` VALUES ('170', 'sequence', '继续；次序', '困难');
INSERT INTO `单词` VALUES ('171', 'shrew', '泼妇', '困难');
INSERT INTO `单词` VALUES ('172', 'sorcery', '巫术；魔法', '困难');
INSERT INTO `单词` VALUES ('173', 'temporal', '世俗的', '困难');
INSERT INTO `单词` VALUES ('174', 'theology', '神学；宗教', '困难');
INSERT INTO `单词` VALUES ('175', 'thatch', '茅草屋顶', '困难');
INSERT INTO `单词` VALUES ('176', 'thorny', '有刺的', '困难');
INSERT INTO `单词` VALUES ('177', 'tuna', '金枪鱼', '困难');
INSERT INTO `单词` VALUES ('178', 'undress', '脱衣服', '困难');
INSERT INTO `单词` VALUES ('179', 'usage', '使用', '困难');
INSERT INTO `单词` VALUES ('180', 'utilize', '利用', '困难');
INSERT INTO `单词` VALUES ('181', 'unruly', '野蛮的', '困难');
INSERT INTO `单词` VALUES ('182', 'vagabond', '浪荡子', '困难');
INSERT INTO `单词` VALUES ('183', 'vantage', '优势', '困难');
INSERT INTO `单词` VALUES ('184', 'vaunt', '吹嘘；炫耀', '困难');
INSERT INTO `单词` VALUES ('185', 'venom', '毒液', '困难');
INSERT INTO `单词` VALUES ('186', 'wafer', '晶片；薄饼', '困难');
INSERT INTO `单词` VALUES ('187', 'weld', '焊接', '困难');
INSERT INTO `单词` VALUES ('188', 'whisker', '髯', '困难');
INSERT INTO `单词` VALUES ('189', 'wrangle', '争论', '困难');
INSERT INTO `单词` VALUES ('190', 'xerography', '静电印刷法', '困难');
INSERT INTO `单词` VALUES ('191', 'wince', '避开；畏缩', '困难');
INSERT INTO `单词` VALUES ('192', 'wallow', '沉溺于', '困难');
INSERT INTO `单词` VALUES ('193', 'zenith', '天顶', '困难');
INSERT INTO `单词` VALUES ('194', 'zodiac', '十二宫图', '困难');
INSERT INTO `单词` VALUES ('195', 'pevert', '使堕落', '困难');
INSERT INTO `单词` VALUES ('196', 'pinion', '绑住；束缚', '困难');
INSERT INTO `单词` VALUES ('197', 'navigator', '航海家', '困难');
INSERT INTO `单词` VALUES ('198', 'bitch', '彪子', '困难');
INSERT INTO `单词` VALUES ('199', 'seethe', '沸腾；汹涌', '困难');
INSERT INTO `单词` VALUES ('200', 'abortion', '人工流产；堕胎', '中等');
INSERT INTO `单词` VALUES ('201', 'no', '不', '简单');
INSERT INTO `单词` VALUES ('202', 'absurd', '怪诞不经的', '中等');
INSERT INTO `单词` VALUES ('203', 'accommodation', '住宿', '中等');
INSERT INTO `单词` VALUES ('204', 'bandage', '绷带', '中等');
INSERT INTO `单词` VALUES ('205', 'ballon', '气球', '中等');
INSERT INTO `单词` VALUES ('206', 'bang', '秤', '中等');
INSERT INTO `单词` VALUES ('207', 'cabbage', '卷心菜', '中等');
INSERT INTO `单词` VALUES ('208', 'can', '罐头', '中等');
INSERT INTO `单词` VALUES ('209', 'cance', '癌症', '中等');
INSERT INTO `单词` VALUES ('210', 'canteen', '餐厅', '中等');
INSERT INTO `单词` VALUES ('211', 'database', '数据库', '中等');
INSERT INTO `单词` VALUES ('212', 'debate', '讨论；辩论', '中等');
INSERT INTO `单词` VALUES ('213', 'decade', '十年期', '中等');
INSERT INTO `单词` VALUES ('214', 'December', '十二月', '中等');
INSERT INTO `单词` VALUES ('215', 'Easter', '复活节', '中等');
INSERT INTO `单词` VALUES ('216', 'ecology', '生态学', '中等');
INSERT INTO `单词` VALUES ('217', 'effort', '努力；艰难的尝试', '中等');
INSERT INTO `单词` VALUES ('218', 'eggplant', '茄子', '中等');
INSERT INTO `单词` VALUES ('219', 'fairness', '公平公正', '中等');
INSERT INTO `单词` VALUES ('220', 'facial', '面部用的', '中等');
INSERT INTO `单词` VALUES ('221', 'fancy', '奇特的', '中等');
INSERT INTO `单词` VALUES ('222', 'fantasic', '极好的', '中等');
INSERT INTO `单词` VALUES ('223', 'garbage', '辣鸡', '中等');
INSERT INTO `单词` VALUES ('224', 'geography', '地理的', '中等');
INSERT INTO `单词` VALUES ('225', 'globe', '地球仪', '中等');
INSERT INTO `单词` VALUES ('226', 'grammar', '语法', '中等');
INSERT INTO `单词` VALUES ('227', 'hamburger', '汉堡', '中等');
INSERT INTO `单词` VALUES ('228', 'handkerchief', '手帕', '中等');
INSERT INTO `单词` VALUES ('229', 'handy', '绞刑；上吊', '中等');
INSERT INTO `单词` VALUES ('230', 'hydrogen', '氢', '中等');
INSERT INTO `单词` VALUES ('231', 'institution', '慈善机构', '中等');
INSERT INTO `单词` VALUES ('232', 'intend', '想要；打算', '中等');
INSERT INTO `单词` VALUES ('233', 'ink', '墨水', '中等');
INSERT INTO `单词` VALUES ('234', 'injury', '受伤处', '中等');
INSERT INTO `单词` VALUES ('235', 'junk', '废物', '中等');
INSERT INTO `单词` VALUES ('236', 'jog', '慢跑', '中等');
INSERT INTO `单词` VALUES ('237', 'jewel', '宝石', '中等');
INSERT INTO `单词` VALUES ('238', 'jet', '喷气式飞机', '中等');
INSERT INTO `单词` VALUES ('239', 'kettle', '水壶', '中等');
INSERT INTO `单词` VALUES ('240', 'kindergarten', '幼儿园', '中等');
INSERT INTO `单词` VALUES ('241', 'kick', '踢', '中等');
INSERT INTO `单词` VALUES ('242', 'lavatory', '厕所', '中等');
INSERT INTO `单词` VALUES ('243', 'laundry', '洗衣店', '中等');
INSERT INTO `单词` VALUES ('244', 'liberty', '自由', '中等');
INSERT INTO `单词` VALUES ('245', 'length', '字段', '中等');
INSERT INTO `单词` VALUES ('246', 'manner', '态度；举止', '中等');
INSERT INTO `单词` VALUES ('247', 'maple', '枫叶', '中等');
INSERT INTO `单词` VALUES ('248', 'marathon', '马拉松', '中等');
INSERT INTO `单词` VALUES ('249', 'mask', '口罩', '中等');
INSERT INTO `单词` VALUES ('250', 'neck', '脖子', '中等');
INSERT INTO `单词` VALUES ('251', 'neat', '巢穴', '中等');
INSERT INTO `单词` VALUES ('252', 'night-club', '夜总会', '中等');
INSERT INTO `单词` VALUES ('253', 'noisily', '喧闹的', '中等');
INSERT INTO `单词` VALUES ('254', 'observe', '观察；监视', '中等');
INSERT INTO `单词` VALUES ('255', 'Oceania', '大洋洲', '中等');
INSERT INTO `单词` VALUES ('256', 'oneself', '自身', '中等');
INSERT INTO `单词` VALUES ('257', 'onto', '到...上边', '中等');
INSERT INTO `单词` VALUES ('258', 'parcel', '包裹', '中等');
INSERT INTO `单词` VALUES ('259', 'particular', '特殊的；特别的', '中等');
INSERT INTO `单词` VALUES ('260', 'front', '前面的', '简单');
INSERT INTO `单词` VALUES ('261', 'cow', '母牛', '简单');
INSERT INTO `单词` VALUES ('262', 'then', '那么', '简单');
INSERT INTO `单词` VALUES ('263', 'cat', '猫', '简单');
INSERT INTO `单词` VALUES ('264', 'behind', '在后面', '简单');
INSERT INTO `单词` VALUES ('265', 'goose', '鹅', '简单');
INSERT INTO `单词` VALUES ('266', 'mountain', '山', '简单');
INSERT INTO `单词` VALUES ('267', 'air', '空气', '简单');
INSERT INTO `单词` VALUES ('268', 'moon', '月亮', '简单');
INSERT INTO `单词` VALUES ('269', 'think', '想', '简单');
INSERT INTO `单词` VALUES ('270', 'animal', '动物', '简单');
INSERT INTO `单词` VALUES ('271', 'life', '生命', '简单');
INSERT INTO `单词` VALUES ('272', 'which', '哪一个', '简单');
INSERT INTO `单词` VALUES ('273', 'thirty', '三十', '简单');
INSERT INTO `单词` VALUES ('274', 'miss', '女士', '简单');
INSERT INTO `单词` VALUES ('275', 'people', '人', '简单');
INSERT INTO `单词` VALUES ('276', 'family', '家庭', '简单');
INSERT INTO `单词` VALUES ('277', 'today', '今天', '简单');
INSERT INTO `单词` VALUES ('278', 'week', '周', '简单');
INSERT INTO `单词` VALUES ('279', 'day', '白天', '简单');
INSERT INTO `单词` VALUES ('280', 'baby', '婴儿', '简单');
INSERT INTO `单词` VALUES ('281', 'see', '看见', '简单');
INSERT INTO `单词` VALUES ('282', 'zebra', '斑马', '简单');
INSERT INTO `单词` VALUES ('283', 'jump', '跳', '简单');
INSERT INTO `单词` VALUES ('284', 'run', '跑', '简单');
INSERT INTO `单词` VALUES ('285', 'monkey', '猴子', '简单');
INSERT INTO `单词` VALUES ('286', 'count', '数', '简单');
INSERT INTO `单词` VALUES ('287', 'lion', '狮子', '简单');
INSERT INTO `单词` VALUES ('288', 'tiger', '老虎', '简单');
INSERT INTO `单词` VALUES ('289', 'sit', '坐', '简单');
INSERT INTO `单词` VALUES ('290', 'exercise', '练习', '简单');
INSERT INTO `单词` VALUES ('291', 'out', '出，在外', '简单');
INSERT INTO `单词` VALUES ('292', 'listen', '听', '简单');
INSERT INTO `单词` VALUES ('293', 'read', '读', '简单');
INSERT INTO `单词` VALUES ('294', 'after', '在后面', '简单');
INSERT INTO `单词` VALUES ('295', 'evening', '傍晚', '简单');
INSERT INTO `单词` VALUES ('296', 'wait', '等待', '简单');
INSERT INTO `单词` VALUES ('297', 'stop', '停止', '简单');
INSERT INTO `单词` VALUES ('298', 'cinema', '电影院', '简单');
INSERT INTO `单词` VALUES ('299', 'crossing', '十字路口', '简单');
INSERT INTO `单词` VALUES ('300', 'light', '灯', '简单');
INSERT INTO `单词` VALUES ('301', 'must', '必须', '简单');

-- ----------------------------
-- Table structure for 用户
-- ----------------------------
DROP TABLE IF EXISTS `用户`;
CREATE TABLE `用户` (
  `用户序号` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `账号` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `密码` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `简单` int(8) unsigned DEFAULT '0',
  `中等` int(8) unsigned DEFAULT '0',
  `困难` int(8) unsigned DEFAULT '0',
  `随机` int(8) unsigned DEFAULT '0',
  PRIMARY KEY (`用户序号`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of 用户
-- ----------------------------
INSERT INTO `用户` VALUES ('1', '张天赐', '123', '99999999', '99999999', '99999999', '99999999');
INSERT INTO `用户` VALUES ('2', '测试', '123', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for 记录
-- ----------------------------
DROP TABLE IF EXISTS `记录`;
CREATE TABLE `记录` (
  `用户序号` int(8) unsigned NOT NULL,
  `单词序号` int(8) unsigned NOT NULL,
  `错误次数` int(8) unsigned NOT NULL DEFAULT '0',
  `正确次数` int(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`用户序号`,`单词序号`),
  KEY `单词_单词序号` (`单词序号`),
  CONSTRAINT `单词_单词序号` FOREIGN KEY (`单词序号`) REFERENCES `单词` (`单词序号`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `用户_用户序号` FOREIGN KEY (`用户序号`) REFERENCES `用户` (`用户序号`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of 记录
-- ----------------------------
