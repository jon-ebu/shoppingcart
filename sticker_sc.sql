
--to run enter to command line: mysql -u root -p < htdocs/final/sticker_sc.sql
create database sticker_sc;

use sticker_sc;

create table customers
(
  customerid int unsigned not null auto_increment primary key,
  name char(60) not null,
  address char(80) not null,
  city char(30) not null,
  state char(20),
  zip char(10),
  country char(20) not null
);

create table orders
(
  orderid int unsigned not null auto_increment primary key,
  customerid int unsigned not null,
  amount float(6,2),
  date date not null,
  order_status char(10),
  ship_name char(60) not null,
  ship_address char(80) not null,
  ship_city char(30) not null,
  ship_state char(20),
  ship_zip char(10),
  ship_country char(20) not null
);

create table stickers /*books*/
(
   stickerID char(13) not null primary key,/*isbn char(13) not null primary key,*/
   color char(80), /*author char(80),*/
   title char(100),
   catid int unsigned,
   price float(4,2) not null,
   description varchar(255)
);

create table categories
(
  catid int unsigned not null auto_increment primary key,
  catname char(60) not null
);

create table order_items
(
  orderid int unsigned not null,
  stickerID char(13) not null, /*isbn char(13) not null,*/
  item_price float(4,2) not null,
  quantity tinyint unsigned not null,
  primary key (orderid, stickerID) /*--(orderid,isbn)*/
);

create table admin
(
  username char(16) not null primary key,
  password char(40) not null
);

grant select, insert, update, delete
on sticker_sc.*
to sticker_sc@localhost identified by 'password';
