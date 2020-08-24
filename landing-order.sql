-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Апр 23 2016 г., 14:48
-- Версия сервера: 5.5.25
-- Версия PHP: 5.4.42

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `landing-order`
--

-- --------------------------------------------------------

--
-- Структура таблицы `lan_camps`
--

CREATE TABLE IF NOT EXISTS `lan_camps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` bigint(20) NOT NULL,
  `utm_source` varchar(255) DEFAULT NULL,
  `utm_campaign` varchar(255) DEFAULT NULL,
  `utm_content` varchar(255) DEFAULT NULL,
  `utm_term` varchar(255) DEFAULT NULL,
  `ref` varchar(500) DEFAULT NULL,
  `date` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `lan_orders`
--

CREATE TABLE IF NOT EXISTS `lan_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `price` decimal(11,2) unsigned DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `date_order` int(10) unsigned NOT NULL,
  `date_confirm` int(10) unsigned DEFAULT NULL,
  `date_pay` int(10) unsigned DEFAULT NULL,
  `date_cancel` int(10) unsigned DEFAULT NULL,
  `camp_id` int(10) unsigned DEFAULT NULL,
  `split` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `plan` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
