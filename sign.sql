DROP DATABASE IF EXISTS `bb`;
CREATE DATABASE  IF NOT EXISTS `bb`; 

--
-- Table structure for table `admin`
--
USE `bb`;
DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `mail` varchar(80) NOT NULL,
  `pwd` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--
INSERT INTO `admin` VALUES ('admin@gmail.com','1234');

--
-- Table structure for table `members`
--


USE `bb`;
DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `memID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `mail` varchar(80) NOT NULL,
  `pwd` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`memID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

--
-- Table structure for table `goods`
--

USE `bb`;
DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `goodID` varchar(10) NOT NULL,
  `goodname` varchar(45) NOT NULL,
  `price` int NOT NULL,
  `goodsize` varchar(10) NOT NULL,
  `quan` int NOT NULL,
  `salenum` int NOT NULL,
  `intro` varchar(80) NOT NULL,
  `pic1` varchar(45) NOT NULL,
  `type` varchar(30) NOT NULL,
  `kind` varchar(30) NOT NULL,
  `path` varchar(30) NOT NULL,
  PRIMARY KEY (`goodID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goods`
--

INSERT INTO `goods` VALUES ('W001s','甜美蕾絲拼接小可愛','200','s','10','0','簡約時尚的心機穿搭，包覆不跑位久穿無勒痕','-1','woman','top','img/woman/w-1.jpg');
INSERT INTO `goods` VALUES ('W001m','甜美蕾絲拼接小可愛','200','m','10','0','簡約時尚的心機穿搭，包覆不跑位久穿無勒痕','-1','woman','top','img/woman/w-1.jpg');
INSERT INTO `goods` VALUES ('W001l','甜美蕾絲拼接小可愛','200','l','10','0','簡約時尚的心機穿搭，包覆不跑位久穿無勒痕','-1','woman','top','img/woman/w-1.jpg');
INSERT INTO `goods` VALUES ('W001xl','甜美蕾絲拼接小可愛','200','xl','10','0','簡約時尚的心機穿搭，包覆不跑位久穿無勒痕','-1','woman','top','img/woman/w-1.jpg');

INSERT INTO `goods` VALUES ('W002s','荷葉長版上衣','300','s','10','0','高含棉，輕鬆修飾身型','-1','woman','top','img/woman/w-2.jpg');
INSERT INTO `goods` VALUES ('W002m','荷葉長版上衣','300','m','10','0','高含棉，輕鬆修飾身型','-1','woman','top','img/woman/w-2.jpg');
INSERT INTO `goods` VALUES ('W002l','荷葉長版上衣','300','l','10','0','高含棉，輕鬆修飾身型','-1','woman','top','img/woman/w-2.jpg');
INSERT INTO `goods` VALUES ('W002xl','荷葉長版上衣','300','xl','10','0','高含棉，輕鬆修飾身型','-1','woman','top','img/woman/w-2.jpg');

INSERT INTO `goods` VALUES ('W003s','貓咪燙印圓領上衣','450','s','10','0','貓咪燙印搭配雪紡面料，打造迷人穿著','-1','woman','top','img/woman/w-3.jpg');
INSERT INTO `goods` VALUES ('W003m','貓咪燙印圓領上衣','450','m','10','0','貓咪燙印搭配雪紡面料，打造迷人穿著','-1','woman','top','img/woman/w-3.jpg');
INSERT INTO `goods` VALUES ('W003l','貓咪燙印圓領上衣','450','l','10','0','貓咪燙印搭配雪紡面料，打造迷人穿著','-1','woman','top','img/woman/w-3.jpg');
INSERT INTO `goods` VALUES ('W003xl','貓咪燙印圓領上衣','450','xl','10','0','貓咪燙印搭配雪紡面料，打造迷人穿著','-1','woman','top','img/woman/w-3.jpg');

INSERT INTO `goods` VALUES ('W004s','條紋前短後長上衣','400','s','10','0','條紋的親膚面料，輕盈柔軟好透氣','-1','woman','top','img/woman/w-4.jpg');
INSERT INTO `goods` VALUES ('W004m','條紋前短後長上衣','400','m','10','0','條紋的親膚面料，輕盈柔軟好透氣','-1','woman','top','img/woman/w-4.jpg');
INSERT INTO `goods` VALUES ('W004l','條紋前短後長上衣','400','l','10','0','條紋的親膚面料，輕盈柔軟好透氣','-1','woman','top','img/woman/w-4.jpg');
INSERT INTO `goods` VALUES ('W004xl','條紋前短後長上衣','400','xl','10','0','條紋的親膚面料，輕盈柔軟好透氣','-1','woman','top','img/woman/w-4.jpg');

INSERT INTO `goods` VALUES ('W006s','鬆緊反褶短褲','300','s','10','0','打造簡約風格，選用透氣涼感面料','-1','woman','bottom','img/woman/w-6.jpg');
INSERT INTO `goods` VALUES ('W006m','鬆緊反褶短褲','300','m','10','0','打造簡約風格，選用透氣涼感面料','-1','woman','bottom','img/woman/w-6.jpg');
INSERT INTO `goods` VALUES ('W006l','鬆緊反褶短褲','300','l','10','0','打造簡約風格，選用透氣涼感面料','-1','woman','bottom','img/woman/w-6.jpg');
INSERT INTO `goods` VALUES ('W006xl','鬆緊反褶短褲','300','xl','10','0','打造簡約風格，選用透氣涼感面料','-1','woman','bottom','img/woman/w-6.jpg');

INSERT INTO `goods` VALUES ('W007s','輕薄牛仔短褲','350','s','10','0','寬褲管設計修飾大腿線條，輕鬆藏肉好修飾','-1','woman','bottom','img/woman/w-7.jpg');
INSERT INTO `goods` VALUES ('W007m','輕薄牛仔短褲','350','m','10','0','寬褲管設計修飾大腿線條，輕鬆藏肉好修飾','-1','woman','bottom','img/woman/w-7.jpg');
INSERT INTO `goods` VALUES ('W007l','輕薄牛仔短褲','350','l','10','0','寬褲管設計修飾大腿線條，輕鬆藏肉好修飾','-1','woman','bottom','img/woman/w-7.jpg');
INSERT INTO `goods` VALUES ('W007xl','輕薄牛仔短褲','350','xl','10','0','寬褲管設計修飾大腿線條，輕鬆藏肉好修飾','-1','woman','bottom','img/woman/w-7.jpg');

INSERT INTO `goods` VALUES ('W008s','鬆緊彈性窄管褲','450','s','10','0','選用涼感面料，加上良好的彈性，舒適不拘束','-1','woman','bottom','img/woman/w-8.jpg');
INSERT INTO `goods` VALUES ('W008m','鬆緊彈性窄管褲','450','m','10','0','選用涼感面料，加上良好的彈性，舒適不拘束','-1','woman','bottom','img/woman/w-8.jpg');
INSERT INTO `goods` VALUES ('W008l','鬆緊彈性窄管褲','450','l','10','0','選用涼感面料，加上良好的彈性，舒適不拘束','-1','woman','bottom','img/woman/w-8.jpg');
INSERT INTO `goods` VALUES ('W008xl','鬆緊彈性窄管褲','450','xl','10','0','選用涼感面料，加上良好的彈性，舒適不拘束','-1','woman','bottom','img/woman/w-8.jpg');

INSERT INTO `goods` VALUES ('W009s','八分斜紋寬褲','400','s','10','0','直筒版型有效藏住肉感視覺，打造長腿比例','-1','woman','bottom','img/woman/w-9.jpg');
INSERT INTO `goods` VALUES ('W009m','八分斜紋寬褲','400','m','10','0','直筒版型有效藏住肉感視覺，打造長腿比例','-1','woman','bottom','img/woman/w-9.jpg');
INSERT INTO `goods` VALUES ('W009l','八分斜紋寬褲','400','l','10','0','直筒版型有效藏住肉感視覺，打造長腿比例','-1','woman','bottom','img/woman/w-9.jpg');
INSERT INTO `goods` VALUES ('W009xl','八分斜紋寬褲','400','xl','10','0','直筒版型有效藏住肉感視覺，打造長腿比例','-1','woman','bottom','img/woman/w-9.jpg');

INSERT INTO `goods` VALUES ('W011s','丹寧牛仔外套','450','s','10','0','自然修身的線條不挑身型的穿著打造纖細身材','-1','woman','outer','img/woman/w-11.jpg');
INSERT INTO `goods` VALUES ('W011m','丹寧牛仔外套','450','m','10','0','自然修身的線條不挑身型的穿著打造纖細身材','-1','woman','outer','img/woman/w-11.jpg');
INSERT INTO `goods` VALUES ('W011l','丹寧牛仔外套','450','l','10','0','自然修身的線條不挑身型的穿著打造纖細身材','-1','woman','outer','img/woman/w-11.jpg');
INSERT INTO `goods` VALUES ('W011xl','丹寧牛仔外套','450','xl','10','0','自然修身的線條不挑身型的穿著打造纖細身材','-1','woman','outer','img/woman/w-11.jpg');

INSERT INTO `goods` VALUES ('W012s','防風條紋連帽外套','400','s','10','0','連帽內裡條紋造型打造隨意搭配少女LOOK','-1','woman','outer','img/woman/w-12.jpg');
INSERT INTO `goods` VALUES ('W012m','防風條紋連帽外套','400','m','10','0','連帽內裡條紋造型打造隨意搭配少女LOOK','-1','woman','outer','img/woman/w-12.jpg');
INSERT INTO `goods` VALUES ('W012l','防風條紋連帽外套','400','l','10','0','連帽內裡條紋造型打造隨意搭配少女LOOK','-1','woman','outer','img/woman/w-12.jpg');
INSERT INTO `goods` VALUES ('W012xl','防風條紋連帽外套','400','xl','10','0','連帽內裡條紋造型打造隨意搭配少女LOOK','-1','woman','outer','img/woman/w-12.jpg');

INSERT INTO `goods` VALUES ('W013s','長版防曬罩衫','350','s','10','0','質感壓紋增添層次感，素面設計實搭不NG','-1','woman','outer','img/woman/w-13.jpg');
INSERT INTO `goods` VALUES ('W013m','長版防曬罩衫','350','m','10','0','質感壓紋增添層次感，素面設計實搭不NG','-1','woman','outer','img/woman/w-13.jpg');
INSERT INTO `goods` VALUES ('W013l','長版防曬罩衫','350','l','10','0','質感壓紋增添層次感，素面設計實搭不NG','-1','woman','outer','img/woman/w-13.jpg');
INSERT INTO `goods` VALUES ('W013xl','長版防曬罩衫','350','xl','10','0','質感壓紋增添層次感，素面設計實搭不NG','-1','woman','outer','img/woman/w-13.jpg');

INSERT INTO `goods` VALUES ('W014s','翻領收腰傘襬風衣外套','500','s','10','0','造型翻領營造明星閃閃氣息，傘襬剪裁展現魅力風格','-1','woman','outer','img/woman/w-14.jpg');
INSERT INTO `goods` VALUES ('W014m','翻領收腰傘襬風衣外套','500','m','10','0','造型翻領營造明星閃閃氣息，傘襬剪裁展現魅力風格','-1','woman','outer','img/woman/w-14.jpg');
INSERT INTO `goods` VALUES ('W014l','翻領收腰傘襬風衣外套','500','l','10','0','造型翻領營造明星閃閃氣息，傘襬剪裁展現魅力風格','-1','woman','outer','img/woman/w-14.jpg');
INSERT INTO `goods` VALUES ('W014xl','翻領收腰傘襬風衣外套','500','xl','10','0','造型翻領營造明星閃閃氣息，傘襬剪裁展現魅力風格','-1','woman','outer','img/woman/w-14.jpg');

INSERT INTO `goods` VALUES ('M001s','機能涼感圓領上衣','250','s','10','0','選用涼感機能布料，親膚清爽一整天','-1','man','top','img/man/m-1.jpg');
INSERT INTO `goods` VALUES ('M001m','機能涼感圓領上衣','250','m','10','0','選用涼感機能布料，親膚清爽一整天','-1','man','top','img/man/m-1.jpg');
INSERT INTO `goods` VALUES ('M001l','機能涼感圓領上衣','250','l','10','0','選用涼感機能布料，親膚清爽一整天','-1','man','top','img/man/m-1.jpg');
INSERT INTO `goods` VALUES ('M001xl','機能涼感圓領上衣','250','xl','10','0','選用涼感機能布料，親膚清爽一整天','-1','man','top','img/man/m-1.jpg');

INSERT INTO `goods` VALUES ('M002s','涼感圓領背心','250','s','10','0','涼感機能升級！對抗炎熱、涼爽對策','-1','man','top','img/man/m-2.jpg');
INSERT INTO `goods` VALUES ('M002m','涼感圓領背心','250','m','10','0','涼感機能升級！對抗炎熱、涼爽對策','-1','man','top','img/man/m-2.jpg');
INSERT INTO `goods` VALUES ('M002l','涼感圓領背心','250','l','10','0','涼感機能升級！對抗炎熱、涼爽對策','-1','man','top','img/man/m-2.jpg');
INSERT INTO `goods` VALUES ('M002xl','涼感圓領背心','250','xl','10','0','涼感機能升級！對抗炎熱、涼爽對策','-1','man','top','img/man/m-2.jpg');

INSERT INTO `goods` VALUES ('M003s','徽章造型條紋PLO衫','250','s','10','0','條紋滾邊帶點休閒風味，休閒外出提升男人魅力','-1','man','top','img/man/m-3.jpg');
INSERT INTO `goods` VALUES ('M003m','徽章造型條紋PLO衫','250','m','10','0','條紋滾邊帶點休閒風味，休閒外出提升男人魅力','-1','man','top','img/man/m-3.jpg');
INSERT INTO `goods` VALUES ('M003l','徽章造型條紋PLO衫','250','l','10','0','條紋滾邊帶點休閒風味，休閒外出提升男人魅力','-1','man','top','img/man/m-3.jpg');
INSERT INTO `goods` VALUES ('M003xl','徽章造型條紋PLO衫','250','xl','10','0','條紋滾邊帶點休閒風味，休閒外出提升男人魅力','-1','man','top','img/man/m-3.jpg');

INSERT INTO `goods` VALUES ('M004s','不易皺簡約襯衫','250','s','10','0','採用親膚不易皺材質，穿出你的簡約時尚','-1','man','top','img/man/m-4.jpg');
INSERT INTO `goods` VALUES ('M004m','不易皺簡約襯衫','250','m','10','0','採用親膚不易皺材質，穿出你的簡約時尚','-1','man','top','img/man/m-4.jpg');
INSERT INTO `goods` VALUES ('M004l','不易皺簡約襯衫','250','l','10','0','採用親膚不易皺材質，穿出你的簡約時尚','-1','man','top','img/man/m-4.jpg');
INSERT INTO `goods` VALUES ('M004xl','不易皺簡約襯衫','250','xl','10','0','採用親膚不易皺材質，穿出你的簡約時尚','-1','man','top','img/man/m-4.jpg');

INSERT INTO `goods` VALUES ('M006s','涼感縮口休閒褲','400','s','10','0','親膚透氣涼感布料，穿出你的率性時尚','-1','man','bottom','img/man/m-6.jpg');
INSERT INTO `goods` VALUES ('M006m','涼感縮口休閒褲','400','m','10','0','親膚透氣涼感布料，穿出你的率性時尚','-1','man','bottom','img/man/m-6.jpg');
INSERT INTO `goods` VALUES ('M006l','涼感縮口休閒褲','400','l','10','0','親膚透氣涼感布料，穿出你的率性時尚','-1','man','bottom','img/man/m-6.jpg');
INSERT INTO `goods` VALUES ('M006xl','涼感縮口休閒褲','400','xl','10','0','親膚透氣涼感布料，穿出你的率性時尚','-1','man','bottom','img/man/m-6.jpg');

INSERT INTO `goods` VALUES ('M007s','素色牛仔長褲','450','s','10','0','素色好搭配，任意穿搭打造多樣造型風格','-1','man','bottom','img/man/m-7.jpg');
INSERT INTO `goods` VALUES ('M007m','素色牛仔長褲','450','m','10','0','素色好搭配，任意穿搭打造多樣造型風格','-1','man','bottom','img/man/m-7.jpg');
INSERT INTO `goods` VALUES ('M007l','素色牛仔長褲','450','l','10','0','素色好搭配，任意穿搭打造多樣造型風格','-1','man','bottom','img/man/m-7.jpg');
INSERT INTO `goods` VALUES ('M007xl','素色牛仔長褲','450','xl','10','0','素色好搭配，任意穿搭打造多樣造型風格','-1','man','bottom','img/man/m-7.jpg');

INSERT INTO `goods` VALUES ('M008s','純棉素色休閒短褲','300','s','10','0','簡約素色好搭配，簡單穿出你的休閒時尚風格','-1','man','bottom','img/man/m-8.jpg');
INSERT INTO `goods` VALUES ('M008m','純棉素色休閒短褲','300','m','10','0','簡約素色好搭配，簡單穿出你的休閒時尚風格','-1','man','bottom','img/man/m-8.jpg');
INSERT INTO `goods` VALUES ('M008l','純棉素色休閒短褲','300','l','10','0','簡約素色好搭配，簡單穿出你的休閒時尚風格','-1','man','bottom','img/man/m-8.jpg');
INSERT INTO `goods` VALUES ('M008xl','純棉素色休閒短褲','300','xl','10','0','簡約素色好搭配，簡單穿出你的休閒時尚風格','-1','man','bottom','img/man/m-8.jpg');

INSERT INTO `goods` VALUES ('M009s','刷破彈力牛仔短褲','400','s','10','0','率性刷破設計，營造整體休閒時尚風格','-1','man','bottom','img/man/m-9.jpg');
INSERT INTO `goods` VALUES ('M009m','刷破彈力牛仔短褲','400','m','10','0','率性刷破設計，營造整體休閒時尚風格','-1','man','bottom','img/man/m-9.jpg');
INSERT INTO `goods` VALUES ('M009l','刷破彈力牛仔短褲','400','l','10','0','率性刷破設計，營造整體休閒時尚風格','-1','man','bottom','img/man/m-9.jpg');
INSERT INTO `goods` VALUES ('M009xl','刷破彈力牛仔短褲','400','xl','10','0','率性刷破設計，營造整體休閒時尚風格','-1','man','bottom','img/man/m-9.jpg');

INSERT INTO `goods` VALUES ('M011s','連帽牛仔背心','400','s','10','0','俐落剪接車縫，打造率性個性風格','-1','man','outer','img/man/m-11.jpg');
INSERT INTO `goods` VALUES ('M011m','連帽牛仔背心','400','m','10','0','俐落剪接車縫，打造率性個性風格','-1','man','outer','img/man/m-11.jpg');
INSERT INTO `goods` VALUES ('M011l','連帽牛仔背心','400','l','10','0','俐落剪接車縫，打造率性個性風格','-1','man','outer','img/man/m-11.jpg');
INSERT INTO `goods` VALUES ('M011xl','連帽牛仔背心','400','xl','10','0','俐落剪接車縫，打造率性個性風格','-1','man','outer','img/man/m-11.jpg');

INSERT INTO `goods` VALUES ('M012s','韓版棉挺括襯衫','450','s','10','0','可單穿當襯衫也可當外套，韓系版型實穿好搭配','-1','man','outer','img/man/m-12.jpg');
INSERT INTO `goods` VALUES ('M012m','韓版棉挺括襯衫','450','m','10','0','可單穿當襯衫也可當外套，韓系版型實穿好搭配','-1','man','outer','img/man/m-12.jpg');
INSERT INTO `goods` VALUES ('M012l','韓版棉挺括襯衫','450','l','10','0','可單穿當襯衫也可當外套，韓系版型實穿好搭配','-1','man','outer','img/man/m-12.jpg');
INSERT INTO `goods` VALUES ('M012xl','韓版棉挺括襯衫','450','xl','10','0','可單穿當襯衫也可當外套，韓系版型實穿好搭配','-1','man','outer','img/man/m-12.jpg');

INSERT INTO `goods` VALUES ('M013s','牛仔飛行外套','500','s','10','0','不退流飛行外套版型，套上就能展現獨特的街頭魅力','-1','man','outer','img/man/m-13.jpg');
INSERT INTO `goods` VALUES ('M013m','牛仔飛行外套','500','m','10','0','不退流飛行外套版型，套上就能展現獨特的街頭魅力','-1','man','outer','img/man/m-13.jpg');
INSERT INTO `goods` VALUES ('M013l','牛仔飛行外套','500','l','10','0','不退流飛行外套版型，套上就能展現獨特的街頭魅力','-1','man','outer','img/man/m-13.jpg');
INSERT INTO `goods` VALUES ('M013xl','牛仔飛行外套','500','xl','10','0','不退流飛行外套版型，套上就能展現獨特的街頭魅力','-1','man','outer','img/man/m-13.jpg');

INSERT INTO `goods` VALUES ('M014s','長版翻領大衣外套','600','s','10','0','質感的仿毛呢帶有輕奢感展現不凡的魅力','-1','man','outer','img/man/m-14.jpg');
INSERT INTO `goods` VALUES ('M014m','長版翻領大衣外套','600','m','10','0','質感的仿毛呢帶有輕奢感展現不凡的魅力','-1','man','outer','img/man/m-14.jpg');
INSERT INTO `goods` VALUES ('M014l','長版翻領大衣外套','600','l','10','0','質感的仿毛呢帶有輕奢感展現不凡的魅力','-1','man','outer','img/man/m-14.jpg');
INSERT INTO `goods` VALUES ('M014xl','長版翻領大衣外套','600','xl','10','0','質感的仿毛呢帶有輕奢感展現不凡的魅力','-1','man','outer','img/man/m-14.jpg');

INSERT INTO `goods` VALUES ('K001s','兔子印花長版上衣','100','s','10','0','童趣感的兔子印花，讓小寶貝穿出亮眼的可愛look','-1','kids','top','img/kids/k-1.jpg');
INSERT INTO `goods` VALUES ('K001m','兔子印花長版上衣','100','m','10','0','童趣感的兔子印花，讓小寶貝穿出亮眼的可愛look','-1','kids','top','img/kids/k-1.jpg');
INSERT INTO `goods` VALUES ('K001l','兔子印花長版上衣','100','l','10','0','童趣感的兔子印花，讓小寶貝穿出亮眼的可愛look','-1','kids','top','img/kids/k-1.jpg');
INSERT INTO `goods` VALUES ('K001xl','兔子印花長版上衣','100','xl','10','0','童趣感的兔子印花，讓小寶貝穿出亮眼的可愛look','-1','kids','top','img/kids/k-1.jpg');

INSERT INTO `goods` VALUES ('K002s','綁帶兩穿短袖上衣','150','s','10','0','肩上固定蝴蝶結設計，不會亂掉，維持一整天的可愛','-1','kids','top','img/kids/k-2.jpg');
INSERT INTO `goods` VALUES ('K002m','綁帶兩穿短袖上衣','150','m','10','0','肩上固定蝴蝶結設計，不會亂掉，維持一整天的可愛','-1','kids','top','img/kids/k-2.jpg');
INSERT INTO `goods` VALUES ('K002l','綁帶兩穿短袖上衣','150','l','10','0','肩上固定蝴蝶結設計，不會亂掉，維持一整天的可愛','-1','kids','top','img/kids/k-2.jpg');
INSERT INTO `goods` VALUES ('K002xl','綁帶兩穿短袖上衣','150','xl','10','0','肩上固定蝴蝶結設計，不會亂掉，維持一整天的可愛','-1','kids','top','img/kids/k-2.jpg');

INSERT INTO `goods` VALUES ('K003s','耳機膠印短袖上衣','100','s','10','0','英文與耳機膠印設計，打造活力的搖滾氣息','-1','kids','top','img/kids/k-3.jpg');
INSERT INTO `goods` VALUES ('K003m','耳機膠印短袖上衣','100','m','10','0','英文與耳機膠印設計，打造活力的搖滾氣息','-1','kids','top','img/kids/k-3.jpg');
INSERT INTO `goods` VALUES ('K003l','耳機膠印短袖上衣','100','l','10','0','英文與耳機膠印設計，打造活力的搖滾氣息','-1','kids','top','img/kids/k-3.jpg');
INSERT INTO `goods` VALUES ('K003xl','耳機膠印短袖上衣','100','xl','10','0','英文與耳機膠印設計，打造活力的搖滾氣息','-1','kids','top','img/kids/k-3.jpg');

INSERT INTO `goods` VALUES ('K004s','大手牽小手短袖上衣','150','s','10','0','版型挑選寬鬆無拘束、不分男女老少','-1','kids','top','img/kids/k-4.jpg');
INSERT INTO `goods` VALUES ('K004m','大手牽小手短袖上衣','150','m','10','0','版型挑選寬鬆無拘束、不分男女老少','-1','kids','top','img/kids/k-4.jpg');
INSERT INTO `goods` VALUES ('K004l','大手牽小手短袖上衣','150','l','10','0','版型挑選寬鬆無拘束、不分男女老少','-1','kids','top','img/kids/k-4.jpg');
INSERT INTO `goods` VALUES ('K004xl','大手牽小手短袖上衣','150','xl','10','0','版型挑選寬鬆無拘束、不分男女老少','-1','kids','top','img/kids/k-4.jpg');

INSERT INTO `goods` VALUES ('K006s','鬆緊牛仔寬褲','150','s','10','0','休閒好搭實穿的款式，夏日穿著親膚舒適不悶熱','-1','kids','bottom','img/kids/k-6.jpg');
INSERT INTO `goods` VALUES ('K006m','鬆緊牛仔寬褲','150','m','10','0','休閒好搭實穿的款式，夏日穿著親膚舒適不悶熱','-1','kids','bottom','img/kids/k-6.jpg');
INSERT INTO `goods` VALUES ('K006l','鬆緊牛仔寬褲','150','l','10','0','休閒好搭實穿的款式，夏日穿著親膚舒適不悶熱','-1','kids','bottom','img/kids/k-6.jpg');
INSERT INTO `goods` VALUES ('K006xl','鬆緊牛仔寬褲','150','xl','10','0','休閒好搭實穿的款式，夏日穿著親膚舒適不悶熱','-1','kids','bottom','img/kids/k-6.jpg');

INSERT INTO `goods` VALUES ('K007s','荷葉腰鬆緊牛仔短褲','200','s','10','0','純棉的牛仔面料與褲腳拼接荷葉，擁有青春的魅力','-1','kids','bottom','img/kids/k-7.jpg');
INSERT INTO `goods` VALUES ('K007m','荷葉腰鬆緊牛仔短褲','200','m','10','0','純棉的牛仔面料與褲腳拼接荷葉，擁有青春的魅力','-1','kids','bottom','img/kids/k-7.jpg');
INSERT INTO `goods` VALUES ('K007l','荷葉腰鬆緊牛仔短褲','200','l','10','0','純棉的牛仔面料與褲腳拼接荷葉，擁有青春的魅力','-1','kids','bottom','img/kids/k-7.jpg');
INSERT INTO `goods` VALUES ('K007xl','荷葉腰鬆緊牛仔短褲','200','xl','10','0','純棉的牛仔面料與褲腳拼接荷葉，擁有青春的魅力','-1','kids','bottom','img/kids/k-7.jpg');

INSERT INTO `goods` VALUES ('K008s','童趣數字鬆緊好動褲','200','s','10','0','數字印花，增添童趣俏皮的活潑氛圍','-1','kids','bottom','img/kids/k-8.jpg');
INSERT INTO `goods` VALUES ('K008m','童趣數字鬆緊好動褲','200','m','10','0','數字印花，增添童趣俏皮的活潑氛圍','-1','kids','bottom','img/kids/k-8.jpg');
INSERT INTO `goods` VALUES ('K008l','童趣數字鬆緊好動褲','200','l','10','0','數字印花，增添童趣俏皮的活潑氛圍','-1','kids','bottom','img/kids/k-8.jpg');
INSERT INTO `goods` VALUES ('K008xl','童趣數字鬆緊好動褲','200','xl','10','0','數字印花，增添童趣俏皮的活潑氛圍','-1','kids','bottom','img/kids/k-8.jpg');

INSERT INTO `goods` VALUES ('K009s','素面透氣縮口好動褲','150','s','10','0','腰鬆緊與彩色珠扣綁帶細節，造型活潑且穿脫方便','-1','kids','bottom','img/kids/k-9.jpg');
INSERT INTO `goods` VALUES ('K009m','素面透氣縮口好動褲','150','m','10','0','腰鬆緊與彩色珠扣綁帶細節，造型活潑且穿脫方便','-1','kids','bottom','img/kids/k-9.jpg');
INSERT INTO `goods` VALUES ('K009l','素面透氣縮口好動褲','150','l','10','0','腰鬆緊與彩色珠扣綁帶細節，造型活潑且穿脫方便','-1','kids','bottom','img/kids/k-9.jpg');
INSERT INTO `goods` VALUES ('K009xl','素面透氣縮口好動褲','150','xl','10','0','腰鬆緊與彩色珠扣綁帶細節，造型活潑且穿脫方便','-1','kids','bottom','img/kids/k-9.jpg');

INSERT INTO `goods` VALUES ('K011s','星星羽絨棉外套','400','s','10','0','內裡的星星與明亮色系，整體更加活潑可愛','-1','kids','outer','img/kids/k-11.jpg');
INSERT INTO `goods` VALUES ('K011m','星星羽絨棉外套','400','m','10','0','內裡的星星與明亮色系，整體更加活潑可愛','-1','kids','outer','img/kids/k-11.jpg');
INSERT INTO `goods` VALUES ('K011l','星星羽絨棉外套','400','l','10','0','內裡的星星與明亮色系，整體更加活潑可愛','-1','kids','outer','img/kids/k-11.jpg');
INSERT INTO `goods` VALUES ('K011xl','星星羽絨棉外套','400','xl','10','0','內裡的星星與明亮色系，整體更加活潑可愛','-1','kids','outer','img/kids/k-11.jpg');

INSERT INTO `goods` VALUES ('K012s','毛球造型連帽羽絨外套','450','s','10','0','帽子可愛球球小設計，保暖更添時尚可愛度','-1','kids','outer','img/kids/k-12.jpg');
INSERT INTO `goods` VALUES ('K012m','毛球造型連帽羽絨外套','450','m','10','0','帽子可愛球球小設計，保暖更添時尚可愛度','-1','kids','outer','img/kids/k-12.jpg');
INSERT INTO `goods` VALUES ('K012l','毛球造型連帽羽絨外套','450','l','10','0','帽子可愛球球小設計，保暖更添時尚可愛度','-1','kids','outer','img/kids/k-12.jpg');
INSERT INTO `goods` VALUES ('K012','毛球造型連帽羽絨外套','450','xl','10','0','帽子可愛球球小設計，保暖更添時尚可愛度','-1','kids','outer','img/kids/k-12.jpg');

INSERT INTO `goods` VALUES ('K013s','彈性針織排釦式外套','350','s','10','0','排釦開襟設計，好穿好脫，男童女童皆可穿唷','-1','kids','outer','img/kids/k-13.jpg');
INSERT INTO `goods` VALUES ('K013m','彈性針織排釦式外套','350','m','10','0','排釦開襟設計，好穿好脫，男童女童皆可穿唷','-1','kids','outer','img/kids/k-13.jpg');
INSERT INTO `goods` VALUES ('K013l','彈性針織排釦式外套','350','l','10','0','排釦開襟設計，好穿好脫，男童女童皆可穿唷','-1','kids','outer','img/kids/k-13.jpg');
INSERT INTO `goods` VALUES ('K013xl','彈性針織排釦式外套','350','xl','10','0','排釦開襟設計，好穿好脫，男童女童皆可穿唷','-1','kids','outer','img/kids/k-13.jpg');

INSERT INTO `goods` VALUES ('K014s','口袋連帽絨毛背心','300','s','10','0','內裡鋪滿手感柔軟的絨毛，不輕易掉毛且又保暖','-1','kids','outer','img/kids/k-14.jpg');
INSERT INTO `goods` VALUES ('K014m','口袋連帽絨毛背心','300','m','10','0','內裡鋪滿手感柔軟的絨毛，不輕易掉毛且又保暖','-1','kids','outer','img/kids/k-14.jpg');
INSERT INTO `goods` VALUES ('K014l','口袋連帽絨毛背心','300','l','10','0','內裡鋪滿手感柔軟的絨毛，不輕易掉毛且又保暖','-1','kids','outer','img/kids/k-14.jpg');
INSERT INTO `goods` VALUES ('K014xl','口袋連帽絨毛背心','300','xl','10','0','內裡鋪滿手感柔軟的絨毛，不輕易掉毛且又保暖','-1','kids','outer','img/kids/k-14.jpg');

INSERT INTO `goods` VALUES ('S001s','吸濕排汗撞色運動上衣','350','s','10','0','反光設計，增加安全性，撞色設計成就搶眼時尚風格','-1','sport','top','img/sport/s-1.jpg');
INSERT INTO `goods` VALUES ('S001m','吸濕排汗撞色運動上衣','350','m','10','0','反光設計，增加安全性，撞色設計成就搶眼時尚風格','-1','sport','top','img/sport/s-1.jpg');
INSERT INTO `goods` VALUES ('S001l','吸濕排汗撞色運動上衣','350','l','10','0','反光設計，增加安全性，撞色設計成就搶眼時尚風格','-1','sport','top','img/sport/s-1.jpg');
INSERT INTO `goods` VALUES ('S001xl','吸濕排汗撞色運動上衣','350','xl','10','0','反光設計，增加安全性，撞色設計成就搶眼時尚風格','-1','sport','top','img/sport/s-1.jpg');

INSERT INTO `goods` VALUES ('S002s','抗UV涼感上衣','300','s','10','0','透氣吸濕排汗的特性擺脫炎炎夏日的黏膩感','-1','sport','top','img/sport/s-2.jpg');
INSERT INTO `goods` VALUES ('S002m','抗UV涼感上衣','300','m','10','0','透氣吸濕排汗的特性擺脫炎炎夏日的黏膩感','-1','sport','top','img/sport/s-2.jpg');
INSERT INTO `goods` VALUES ('S002l','抗UV涼感上衣','300','l','10','0','透氣吸濕排汗的特性擺脫炎炎夏日的黏膩感','-1','sport','top','img/sport/s-2.jpg');
INSERT INTO `goods` VALUES ('S002xl','抗UV涼感上衣','300','xl','10','0','透氣吸濕排汗的特性擺脫炎炎夏日的黏膩感','-1','sport','top','img/sport/s-2.jpg');

INSERT INTO `goods` VALUES ('S003s','反光線條短袖上衣','450','s','10','0','胸前反光線條設計，夜間外出運動更安全','-1','sport','top','img/sport/s-3.jpg');
INSERT INTO `goods` VALUES ('S003m','反光線條短袖上衣','450','m','10','0','胸前反光線條設計，夜間外出運動更安全','-1','sport','top','img/sport/s-3.jpg');
INSERT INTO `goods` VALUES ('S003l','反光線條短袖上衣','450','l','10','0','胸前反光線條設計，夜間外出運動更安全','-1','sport','top','img/sport/s-3.jpg');
INSERT INTO `goods` VALUES ('S003xl','反光線條短袖上衣','450','xl','10','0','胸前反光線條設計，夜間外出運動更安全','-1','sport','top','img/sport/s-3.jpg');

INSERT INTO `goods` VALUES ('S004s','長版運動短袖上衣','250','s','10','0','V字領口剪裁展現鎖骨線條修飾臉型','-1','sport','top','img/sport/s-4.jpg');
INSERT INTO `goods` VALUES ('S004m','長版運動短袖上衣','250','m','10','0','V字領口剪裁展現鎖骨線條修飾臉型','-1','sport','top','img/sport/s-4.jpg');
INSERT INTO `goods` VALUES ('S004l','長版運動短袖上衣','250','l','10','0','V字領口剪裁展現鎖骨線條修飾臉型','-1','sport','top','img/sport/s-4.jpg');
INSERT INTO `goods` VALUES ('S004xl','長版運動短袖上衣','250','xl','10','0','V字領口剪裁展現鎖骨線條修飾臉型','-1','sport','top','img/sport/s-4.jpg');

INSERT INTO `goods` VALUES ('S006s','彈力抽繩縮口褲','450','s','10','0','腰頭抽繩可自由調整鬆緊，舒適穿著活動更自在','-1','sport','bottom','img/sport/s-6.jpg');
INSERT INTO `goods` VALUES ('S006m','彈力抽繩縮口褲','450','m','10','0','腰頭抽繩可自由調整鬆緊，舒適穿著活動更自在','-1','sport','bottom','img/sport/s-6.jpg');
INSERT INTO `goods` VALUES ('S006l','彈力抽繩縮口褲','450','l','10','0','腰頭抽繩可自由調整鬆緊，舒適穿著活動更自在','-1','sport','bottom','img/sport/s-6.jpg');
INSERT INTO `goods` VALUES ('S006xl','彈力抽繩縮口褲','450','xl','10','0','腰頭抽繩可自由調整鬆緊，舒適穿著活動更自在','-1','sport','bottom','img/sport/s-6.jpg');

INSERT INTO `goods` VALUES ('S007s','撞色假兩件瑜珈褲','250','s','10','0','假兩件設計增加安全感，側邊網布能降低運動悶熱感','-1','sport','bottom','img/sport/s-7.jpg');
INSERT INTO `goods` VALUES ('S007m','撞色假兩件瑜珈褲','250','m','10','0','假兩件設計增加安全感，側邊網布能降低運動悶熱感','-1','sport','bottom','img/sport/s-7.jpg');
INSERT INTO `goods` VALUES ('S007l','撞色假兩件瑜珈褲','250','l','10','0','假兩件設計增加安全感，側邊網布能降低運動悶熱感','-1','sport','bottom','img/sport/s-7.jpg');
INSERT INTO `goods` VALUES ('S007xl','撞色假兩件瑜珈褲','250','xl','10','0','假兩件設計增加安全感，側邊網布能降低運動悶熱感','-1','sport','bottom','img/sport/s-7.jpg');

INSERT INTO `goods` VALUES ('S008s','縮口五分運動褲','300','s','10','0','褲腳的縮口和強調修身的版型，簡單運動時尚有型','-1','sport','bottom','img/sport/s-8.jpg');
INSERT INTO `goods` VALUES ('S008m','縮口五分運動褲','300','m','10','0','褲腳的縮口和強調修身的版型，簡單運動時尚有型','-1','sport','bottom','img/sport/s-8.jpg');
INSERT INTO `goods` VALUES ('S008l','縮口五分運動褲','300','l','10','0','褲腳的縮口和強調修身的版型，簡單運動時尚有型','-1','sport','bottom','img/sport/s-8.jpg');
INSERT INTO `goods` VALUES ('S008xl','縮口五分運動褲','300','xl','10','0','褲腳的縮口和強調修身的版型，簡單運動時尚有型','-1','sport','bottom','img/sport/s-8.jpg');

INSERT INTO `goods` VALUES ('S009s','抽繩綁帶網布短褲','250','s','10','0','亮眼鮮明的色調拼接透膚網布設計，造型更有設計感','-1','sport','bottom','img/sport/s-9.jpg');
INSERT INTO `goods` VALUES ('S009m','抽繩綁帶網布短褲','250','m','10','0','亮眼鮮明的色調拼接透膚網布設計，造型更有設計感','-1','sport','bottom','img/sport/s-9.jpg');
INSERT INTO `goods` VALUES ('S009l','抽繩綁帶網布短褲','250','l','10','0','亮眼鮮明的色調拼接透膚網布設計，造型更有設計感','-1','sport','bottom','img/sport/s-9.jpg');
INSERT INTO `goods` VALUES ('S009xl','抽繩綁帶網布短褲','250','xl','10','0','亮眼鮮明的色調拼接透膚網布設計，造型更有設計感','-1','sport','bottom','img/sport/s-9.jpg');

INSERT INTO `goods` VALUES ('S011s','涼感運動連帽外套','450','s','10','0','嚴選台灣製涼感面料，降低運動時的悶熱感','-1','sport','outer','img/sport/s-11.jpg');
INSERT INTO `goods` VALUES ('S011m','涼感運動連帽外套','450','m','10','0','嚴選台灣製涼感面料，降低運動時的悶熱感','-1','sport','outer','img/sport/s-11.jpg');
INSERT INTO `goods` VALUES ('S011l','涼感運動連帽外套','450','l','10','0','嚴選台灣製涼感面料，降低運動時的悶熱感','-1','sport','outer','img/sport/s-11.jpg');
INSERT INTO `goods` VALUES ('S011xl','涼感運動連帽外套','450','xl','10','0','嚴選台灣製涼感面料，降低運動時的悶熱感','-1','sport','outer','img/sport/s-11.jpg');

INSERT INTO `goods` VALUES ('S012s','防潑水抗UV光澤短版外套','550','s','10','0','抗UV面料阻隔紫外線，防潑水材質突遇下雨也不怕','-1','sport','outer','img/sport/s-12.jpg');
INSERT INTO `goods` VALUES ('S012m','防潑水抗UV光澤短版外套','550','m','10','0','抗UV面料阻隔紫外線，防潑水材質突遇下雨也不怕','-1','sport','outer','img/sport/s-12.jpg');
INSERT INTO `goods` VALUES ('S012l','防潑水抗UV光澤短版外套','550','l','10','0','抗UV面料阻隔紫外線，防潑水材質突遇下雨也不怕','-1','sport','outer','img/sport/s-12.jpg');
INSERT INTO `goods` VALUES ('S012xl','防潑水抗UV光澤短版外套','550','xl','10','0','抗UV面料阻隔紫外線，防潑水材質突遇下雨也不怕','-1','sport','outer','img/sport/s-12.jpg');

INSERT INTO `goods` VALUES ('S013s','連帽抽繩拉鍊運動外套','400','s','10','0','簡約素色，百搭單品怎麼穿都好看','-1','sport','outer','img/sport/s-13.jpg');
INSERT INTO `goods` VALUES ('S013m','連帽抽繩拉鍊運動外套','400','m','10','0','簡約素色，百搭單品怎麼穿都好看','-1','sport','outer','img/sport/s-13.jpg');
INSERT INTO `goods` VALUES ('S013l','連帽抽繩拉鍊運動外套','400','l','10','0','簡約素色，百搭單品怎麼穿都好看','-1','sport','outer','img/sport/s-13.jpg');
INSERT INTO `goods` VALUES ('S013xl','連帽抽繩拉鍊運動外套','400','xl','10','0','簡約素色，百搭單品怎麼穿都好看','-1','sport','outer','img/sport/s-13.jpg');

INSERT INTO `goods` VALUES ('S014s','造型高領運動休閒外套','350','s','10','0','整件採用透氣網布，快速散熱適合運動時穿著','-1','sport','outer','img/sport/s-14.jpg');
INSERT INTO `goods` VALUES ('S014m','造型高領運動休閒外套','350','m','10','0','整件採用透氣網布，快速散熱適合運動時穿著','-1','sport','outer','img/sport/s-14.jpg');
INSERT INTO `goods` VALUES ('S014l','造型高領運動休閒外套','350','l','10','0','整件採用透氣網布，快速散熱適合運動時穿著','-1','sport','outer','img/sport/s-14.jpg');
INSERT INTO `goods` VALUES ('S014xl','造型高領運動休閒外套','350','xl','10','0','整件採用透氣網布，快速散熱適合運動時穿著','-1','sport','outer','img/sport/s-14.jpg');
