SET NAMES UTF8;
DROP DATABASE IF EXISTS mingjue;
CREATE DATABASE  mingjue CHARSET=UTF8;
USE mingjue;


/*轮播图表单*/
DROP TABLE IF EXISTS  car_index_carousel;
CREATE TABLE car_index_carousel (
  cid INT (11) PRIMARY KEY,
  img VARCHAR(128) NOT NULL,
  title VARCHAR(64) NOT NULL
) ;
/*插入轮播图数据*/
INSERT INTO car_index_carousel VALUES ('1', 'picture/lun1.jpg', '轮播广告商品1');
INSERT INTO car_index_carousel VALUES ('2', 'picture/lun2.jpg', '轮播广告商品2');
INSERT INTO car_index_carousel VALUES ('3', 'picture/lun3.jpg', '轮播广告商品3');
INSERT INTO car_index_carousel VALUES ('4', 'picture/lun4.jpg', '轮播广告商品4');




/*商品首页栏目表*/
DROP TABLE IF EXISTS car_index_product;
CREATE TABLE car_index_product(
    pid INT(11) PRIMARY KEY,
    img VARCHAR(256)NOT NULl,
    details_a VARCHAR(128)NOT NULL,
    href VARCHAR(128),
    seq_recommended tinyint(4) default NULL,
    seq_new_arrival tinyint(4) default NULL,
    seq_top_sale tinyint(4) default NULL
);
/*插入商品首页数据*/
INSERT INTO car_index_product VALUES ("1","picture/hs.png","名爵HS", "product_details.html?lid=1",'1', '1', '1');
INSERT INTO car_index_product VALUES ("2","picture/gs.png","名爵GS" ,"product_details.html?lid=2",'2', '2', '2');
INSERT INTO car_index_product VALUES ("3","picture/zs.png","名爵ZS" ,"product_details.html?lid=3",'3', '3', '4');
INSERT INTO car_index_product VALUES ("4","picture/xny.png","名爵6新能源" ,"product_details.html?lid=4",'4', '4', '4');
INSERT INTO car_index_product VALUES ("5","picture/xgn.png","X-MOTION" ,"product_details.html?lid=5",'5', '5', '5');
INSERT INTO car_index_product VALUES ("6","picture/egn.png","E-MOTION" ,"product_details.html?lid=6",'6', '6', '6');




/*用户信息表*/
DROP TABLE IF EXISTS car_index_user;
CREATE TABLE car_index_user(
  uid INT(11) NOT NULL   PRIMARY KEY  auto_increment,
  uname VARCHAR(32) default NULL,
  upwd  VARCHAR(32) default NULL,
  email VARCHAR(64) default NULL,
  phone  VARCHAR(16) default NULL,
  avatar  VARCHAR(128) default NULL,
  user_name  VARCHAR(32) default NULL,
  gender  INT(11) default NULL
);
/*插入用户信息*/
INSERT INTO car_index_user VALUES ('1', 'dingding', '123456', 'ding@qq.com', '13511011000', null, '丁春秋', '0');
INSERT INTO car_index_user VALUES ('2', 'dangdang', '123456', 'dang@qq.com', '13501234568',null, '当当喵', '1');
INSERT INTO car_index_user VALUES ('3', 'doudou', '123456', 'dou@qq.com', '13501234569',null, '窦志强', '1');
INSERT INTO car_index_user VALUES ('4', 'yaya', '123456', 'ya@qq.com', '13501234560', null, '秦小雅', '0');
INSERT INTO car_index_user VALUES ('5', '1111', '111111', '441977193@qq.com', '18357100796', null,'单身的','0');
INSERT INTO car_index_user VALUES ('6', 'ABCD', '123456', '123@qq.com', '13538894495', null, '法定','1');
INSERT INTO car_index_user VALUES ('7', 'mohk', '123456', '11@qq.com', '13512312312', null, '反倒是', '1');
INSERT INTO car_index_user VALUES ('8', '121123', 'w13945128995', '491000888@qq.com', '13213389258', null,'记录','1');
INSERT INTO car_index_user VALUES ('9', '555555', '5555555', '55555555@163.com', '13400000000', null, '回家', '0');
INSERT INTO car_index_user VALUES ('10', 'xuyong', '123456', '123456789@qq.com', '15525623622', null, '发送到','0');





/*用户地址表*/
DROP TABLE IF EXISTS car_receiver_address;
CREATE TABLE  car_receiver_address(
   aid INT(11) NOT NULL   PRIMARY KEY  auto_increment,
  cid INT(11) default NULL,
  receiver VARCHAR(16) default NULL,
  province VARCHAR(16) default NULL,
  city VARCHAR(16) default NULL,
  county VARCHAR(16) default NULL,
  address VARCHAR(128) default NULL,
  cellphone VARCHAR(16) default NULL,
  fixedphone VARCHAR(16) default NULL,
  postcode CHAR (6) default NULL
);
/*插入用户地址信息*/
INSERT INTO car_receiver_address VALUES ('1', '1', '丁春秋', '陕西省', '西安市', '碑林区', '二环南路东段', '13511011000','','710048');
INSERT INTO car_receiver_address VALUES ('2', '2', '当当喵', '陕西省', '咸阳市', '秦都区', '秦都大道', '13501234568','','610048');
INSERT INTO car_receiver_address VALUES ('3', '3', '窦志强', '北京市', '北京市', '朝阳区', '朝阳大道', '13501234569','','410048');





/*用户订单表 */
DROP TABLE IF EXISTS car_order;
CREATE TABLE car_order(
  aid INT(11) NOT NULL  PRIMARY KEY auto_increment,
  cid INT(11) default NULL,
  address_id INT(128) default NULL,
  status INT(11) default NULL,
  order_time BIGINT(20) default NULL,
  pay_time BIGINT(20) default NULL,
  deliver_time BIGINT(20) default NULL,
  received_time BIGINT(20) default NULL  
);
/*插入订单数据*/
INSERT INTO car_order VALUES('1','1','陕西省西安市碑林区二环南路东段','2','2018-10-1','2018-10-1','2018-10-2','');
INSERT INTO car_order VALUES('2','2','陕西省咸阳市秦都区秦都大道','3','2018-10-1','2018-10-2','2018-10-2','2018-10-5');
INSERT INTO car_order VALUES('3','3','北京市朝阳区朝阳大道','4','2018-10-1','2018-10-1','2018-10-2','2018-10-5');
INSERT INTO car_order VALUES('4','4','陕西省西安市雁塔区','4','2018-10-1','2018-10-1','2018-10-2','2018-10-3');







/*商品类别表*/
DROP TABLE IF EXISTS car_laptop_family;
CREATE TABLE car_laptop_family (
  fid INt(11) NOT NULL  PRIMARY KEY  auto_increment,
  fname VARCHAR(32) default NULL
);
/*插入商品列表信息*/
INSERT INTO car_laptop_family VALUES("1","名爵HS");
INSERT INTO car_laptop_family VALUES("2","名爵GS");
INSERT INTO car_laptop_family VALUES("3","名爵ZS");
INSERT INTO car_laptop_family VALUES("4","名爵6新能源");
INSERT INTO car_laptop_family VALUES("5","X-MOTION");
INSERT INTO car_laptop_family VALUES("6","E-MOTION");
INSERT INTO car_laptop_family VALUES("7","名爵6");
INSERT INTO car_laptop_family VALUES("8","名爵3");
INSERT INTO car_laptop_family VALUES("9","名爵GT");




/*商品表*/
DROP TABLE IF EXISTS car_laptop;
CREATE TABLE car_laptop(
  lid int(11) NOT NULL  PRIMARY KEY auto_increment,
  cid int(11) default NULL,
  title varchar(128),
  subtitle varchar(128),
  price decimal(10,2) default NULL,
  lname varchar(32) default NULL,
  category varchar(32) default NULL
  );
















/*商品详情图表*/
DROP TABLE IF EXISTS car_commodities_pic;
CREATE TABLE car_commodities_pic (
  pid INT(11) PRIMARY KEY NOT NULL auto_increment,
  cid INT(11) default NULL,
  sm VARCHAR(128) default NULL,
  md VARCHAR(128) default NULL,
  lg VARCHAR(128) default NULL 
);
/*插入详情数据*/
INSERT INTO car_commodities_pic VALUES ('1', '1', 'HS/hs-1.jpg', 'HS/hs-1.jpg', 'HS/hs-1.jpg');
INSERT INTO car_commodities_pic VALUES ('2', '1', 'HS/hs-2.jpg', 'HS/hs-2.jpg', 'HS/hs-2.jpg');
INSERT INTO car_commodities_pic VALUES ('3', '1', 'HS/hs-3.jpg', 'HS/hs-3.jpg', 'HS/hs-3.jpg');
INSERT INTO car_commodities_pic VALUES ('4', '1', 'HS/hs-4.jpg', 'HS/hs-4.jpg', 'HS/hs-4.jpg');
INSERT INTO car_commodities_pic VALUES ('5', '1', 'HS/hs-5.jpg', 'HS/hs-5.jpg', 'HS/hs-5.jpg');
INSERT INTO car_commodities_pic VALUES ('6', '1', 'HS/hs-6.jpg', 'HS/hs-6.jpg', 'HS/hs-6.jpg');
INSERT INTO car_commodities_pic VALUES ('7', '1', 'HS/hs-7.jpg', 'HS/hs-7.jpg', 'HS/hs-7.jpg');
INSERT INTO car_commodities_pic VALUES ('8', '1', 'HS/hs-8.jpg', 'HS/hs-8.jpg', 'HS/hs-8.jpg');
INSERT INTO car_commodities_pic VALUES ('9', '1', 'HS/hs-9.jpg', 'HS/hs-9.jpg', 'HS/hs-9.jpg');
INSERT INTO car_commodities_pic VALUES ('10', '1', 'HS/hs-10.jpg', 'HS/hs-10.jpg', 'HS/hs-10.jpg');
INSERT INTO car_commodities_pic VALUES ('11', '1', 'HS/hs-11.jpg', 'HS/hs-11.jpg', 'HS/hs-11.jpg');
INSERT INTO car_commodities_pic VALUES ('12', '1', 'HS/hs-12.jpg', 'HS/hs-12.jpg', 'HS/hs-12.jpg');
INSERT INTO car_commodities_pic VALUES ('13', '1', 'HS/hs-13.jpg', 'HS/hs-13.jpg', 'HS/hs-13.jpg');
INSERT INTO car_commodities_pic VALUES ('14', '1', 'HS/hs-14.jpg', 'HS/hs-14.jpg', 'HS/hs-14.jpg');
INSERT INTO car_commodities_pic VALUES ('15', '1', 'HS/hs-15.jpg', 'HS/hs-15.jpg', 'HS/hs-15.jpg');
INSERT INTO car_commodities_pic VALUES ('16', '1', 'HS/hs-16.jpg', 'HS/hs-16.jpg', 'HS/hs-16.jpg');
INSERT INTO car_commodities_pic VALUES ('17', '1', 'HS/hs-17.jpg', 'HS/hs-17.jpg', 'HS/hs-17.jpg');
INSERT INTO car_commodities_pic VALUES ('18', '1', 'HS/hs-18.jpg', 'HS/hs-18.jpg', 'HS/hs-18.jpg');
INSERT INTO car_commodities_pic VALUES ('19', '1', 'HS/hs-19.jpg', 'HS/hs-19.jpg', 'HS/hs-19.jpg');
INSERT INTO car_commodities_pic VALUES ('20', '1', 'HS/hs-20.jpg', 'HS/hs-20.jpg', 'HS/hs-20.jpg');
INSERT INTO car_commodities_pic VALUES ('21', '1', 'HS/hs-21.jpg', 'HS/hs-21.jpg', 'HS/hs-21.jpg');
INSERT INTO car_commodities_pic VALUES ('22', '1', 'HS/hs-22.jpg', 'HS/hs-22.jpg', 'HS/hs-22.jpg');
INSERT INTO car_commodities_pic VALUES ('23', '1', 'HS/hs-23.jpg', 'HS/hs-23.jpg', 'HS/hs-23.jpg');
INSERT INTO car_commodities_pic VALUES ('24', '1', 'HS/hs-24.jpg', 'HS/hs-24.jpg', 'HS/hs-24.jpg');
INSERT INTO car_commodities_pic VALUES ('25', '1', 'HS/hs-25.jpg', 'HS/hs-25.jpg', 'HS/hs-25.jpg');
INSERT INTO car_commodities_pic VALUES ('26', '1', 'HS/hs-26.jpg', 'HS/hs-26.jpg', 'HS/hs-26.jpg');
INSERT INTO car_commodities_pic VALUES ('27', '1', 'HS/hs-27.jpg', 'HS/hs-27.jpg', 'HS/hs-27.jpg');
INSERT INTO car_commodities_pic VALUES ('28', '1', 'HS/hs-28.jpg', 'HS/hs-28.jpg', 'HS/hs-28.jpg');
INSERT INTO car_commodities_pic VALUES ('29', '1', 'HS/hs-29.jpg', 'HS/hs-29.jpg', 'HS/hs-29.jpg');
INSERT INTO car_commodities_pic VALUES ('30', '1', 'HS/hs-30.jpg', 'HS/hs-30.jpg', 'HS/hs-30.jpg');
INSERT INTO car_commodities_pic VALUES ('31', '1', 'HS/hs-31.jpg', 'HS/hs-31.jpg', 'HS/hs-31.jpg');
INSERT INTO car_commodities_pic VALUES ('32', '1', 'HS/hs-32.jpg', 'HS/hs-32.jpg', 'HS/hs-32.jpg');
INSERT INTO car_commodities_pic VALUES ('33', '1', 'HS/hs-33.jpg', 'HS/hs-33.jpg', 'HS/hs-33.jpg');
INSERT INTO car_commodities_pic VALUES ('34', '1', 'HS/hs-34.jpg', 'HS/hs-34.jpg', 'HS/hs-34.jpg');
INSERT INTO car_commodities_pic VALUES ('35', '1', 'HS/hs-35.jpg', 'HS/hs-35.jpg', 'HS/hs-35.jpg');
INSERT INTO car_commodities_pic VALUES ('36', '1', 'HS/hs-36.jpg', 'HS/hs-36.jpg', 'HS/hs-36.jpg');
INSERT INTO car_commodities_pic VALUES ('37', '1', 'HS/hs-37.jpg', 'HS/hs-37.jpg', 'HS/hs-37.jpg');
INSERT INTO car_commodities_pic VALUES ('38', '1', 'HS/hs-38.jpg', 'HS/hs-38.jpg', 'HS/hs-38.jpg');
INSERT INTO car_commodities_pic VALUES ('39', '1', 'HS/hs-39.jpg', 'HS/hs-39.jpg', 'HS/hs-39.jpg');
INSERT INTO car_commodities_pic VALUES ('40', '1', 'HS/hs-40.jpg', 'HS/hs-40.jpg', 'HS/hs-40.jpg');
INSERT INTO car_commodities_pic VALUES ('41', '1', 'HS/hs-41.jpg', 'HS/hs-41.jpg', 'HS/hs-41.jpg');
INSERT INTO car_commodities_pic VALUES ('42', '1', 'HS/hs-42.jpg', 'HS/hs-42.jpg', 'HS/hs-42.jpg');
INSERT INTO car_commodities_pic VALUES ('43', '1', 'HS/hs-43.jpg', 'HS/hs-43.jpg', 'HS/hs-43.jpg');
INSERT INTO car_commodities_pic VALUES ('44', '1', 'HS/hs-44.jpg', 'HS/hs-44.jpg', 'HS/hs-44.jpg');
INSERT INTO car_commodities_pic VALUES ('45', '1', 'HS/hs-45.jpg', 'HS/hs-45.jpg', 'HS/hs-45.jpg');
INSERT INTO car_commodities_pic VALUES ('46', '1', 'HS/hs-46.jpg', 'HS/hs-46.jpg', 'HS/hs-46.jpg');
INSERT INTO car_commodities_pic VALUES ('47', '1', 'HS/hs-47.jpg', 'HS/hs-47.jpg', 'HS/hs-47.jpg');
INSERT INTO car_commodities_pic VALUES ('48', '1', 'HS/hs-48.jpg', 'HS/hs-48.jpg', 'HS/hs-48.jpg');


