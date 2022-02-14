-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 14 2022 г., 13:59
-- Версия сервера: 10.4.21-MariaDB
-- Версия PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `diplom`
--

-- --------------------------------------------------------

--
-- Структура таблицы `9a`
--

CREATE TABLE `9a` (
  `fio` text NOT NULL,
  `alg` text NOT NULL COMMENT '17',
  `fizika` text NOT NULL,
  `informatika` text NOT NULL,
  `matematika` text NOT NULL,
  `english` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `9a`
--

INSERT INTO `9a` (`fio`, `alg`, `fizika`, `informatika`, `matematika`, `english`, `id`) VALUES
('Тур Павел Александрович', '3', '5', '4', '5', '5', 1),
('Некрасов Никита Александрович', '2', '4', '4', '4', '2', 2),
('Шеин Никита Дмитриевич', '3', '4', '4', '3', '5', 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `9a`
--
ALTER TABLE `9a`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
