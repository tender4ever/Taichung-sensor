-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主機: localhost
-- 建立日期: Aug 07, 2014, 03:08 PM
-- 伺服器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 資料庫: `sensor`
-- 

-- --------------------------------------------------------

-- 
-- 資料表格式： `customer`
-- 

CREATE TABLE `customer` (
  `customer_id` int(50) NOT NULL auto_increment,
  `account` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY  (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 列出以下資料庫的數據： `customer`
-- 

INSERT INTO `customer` VALUES (1, 'admin', '123456', '彰濱秀傳', '', '');

-- --------------------------------------------------------

-- 
-- 資料表格式： `sensing`
-- 

CREATE TABLE `sensing` (
  `sensing_id` int(100) NOT NULL auto_increment,
  `sensor_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `pressure` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(10) NOT NULL,
  PRIMARY KEY  (`sensing_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- 列出以下資料庫的數據： `sensing`
-- 

INSERT INTO `sensing` VALUES (1, 1, 1, '10.2', '2014-08-07', '12:00:00');
INSERT INTO `sensing` VALUES (2, 2, 1, '20.2', '2014-08-07', '12:00:00');

-- --------------------------------------------------------

-- 
-- 資料表格式： `sensor`
-- 

CREATE TABLE `sensor` (
  `sensor_id` int(11) NOT NULL auto_increment,
  `customer_id` int(11) NOT NULL,
  `site` varchar(50) NOT NULL,
  `pressure1` varchar(10) default NULL,
  `pressure2` varchar(10) default NULL,
  `check` varchar(5) NOT NULL default '0',
  PRIMARY KEY  (`sensor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- 列出以下資料庫的數據： `sensor`
-- 

INSERT INTO `sensor` VALUES (1, 1, '監測點一', '20', '30', '0');
INSERT INTO `sensor` VALUES (2, 1, '監測點二', NULL, NULL, '0');
