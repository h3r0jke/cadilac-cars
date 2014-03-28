-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Мар 28 2014 г., 11:58
-- Версия сервера: 5.6.16
-- Версия PHP: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `cadilac`
--

-- --------------------------------------------------------

--
-- Структура таблицы `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_model` int(11) NOT NULL,
  `S` int(11) NOT NULL,
  `hp` int(11) NOT NULL,
  `benz` varchar(255) NOT NULL,
  `privod` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_model` (`id_model`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `info`
--

INSERT INTO `info` (`id`, `id_model`, `S`, `hp`, `benz`, `privod`, `color`) VALUES
(1, 1, 1998, 276, 'Бензин', 'задний привод', 'черный металлик'),
(2, 2, 3564, 311, 'Бензин', 'полный привод', 'черный металлик'),
(3, 3, 3564, 304, 'бензин', 'полный привод', 'бежевый металлик'),
(4, 4, 3000, 265, 'бензин', 'полный привод', 'белый металик'),
(5, 5, 6156, 409, 'бензин', 'полный привод', 'черный металлик'),
(6, 6, 6156, 409, 'бензин', 'полный привод', 'черный металик');

-- --------------------------------------------------------

--
-- Структура таблицы `model`
--

CREATE TABLE IF NOT EXISTS `model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `kuzov` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `model_2` (`model`),
  KEY `model` (`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Дамп данных таблицы `model`
--

INSERT INTO `model` (`id`, `model`, `year`, `kuzov`) VALUES
(1, 'ATS', 2013, ''),
(2, 'CTS-V Coupe', 2012, ''),
(3, 'CTS Coupe', 2013, ''),
(4, 'SRX', 2013, ''),
(5, 'ESCALADE', 2013, ''),
(6, 'ESCALADE Hybrid', 2013, '');

-- --------------------------------------------------------

--
-- Структура таблицы `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_model` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
