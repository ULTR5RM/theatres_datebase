-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 30 2022 г., 05:33
-- Версия сервера: 8.0.11
-- Версия PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `theaters`
--

-- --------------------------------------------------------

--
-- Структура таблицы `performance`
--

CREATE TABLE `performance` (
  `ID` int(11) NOT NULL,
  `tItle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `performance`
--

INSERT INTO `performance` (`ID`, `tItle`) VALUES
(1, 'Три сестры, А.П. Чехов'),
(2, 'Вишневый сад, А.П. Чехов'),
(3, 'Сирано де Бержерак, Эдмон Ростан'),
(4, 'Дон Кихоту, Мигель де Сервантес'),
(5, 'Преступления и наказания, Ф.М. Достоевский'),
(6, 'Пигмалиона, Бернанд Шоу'),
(7, 'щелкунчик');

-- --------------------------------------------------------

--
-- Структура таблицы `theate`
--

CREATE TABLE `theate` (
  `ID` int(11) NOT NULL,
  `tItle` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `theate`
--

INSERT INTO `theate` (`ID`, `tItle`, `address`) VALUES
(1, 'Новосибирский классический театр', 'пр. Красный, 5'),
(2, 'Новосибирский Театр Оперы и Балета', 'Красный проспект, 36'),
(3, 'Астана опера', 'ул. Динмухамеда - Гунаева, 1'),
(4, 'Пуля, Театральный клуб', 'ул. Ленина 24'),
(5, 'Первый театр', 'ул. Коммунистическая, 58'),
(6, 'Потешки, театр кукол', 'ул. Мичурина, 8'),
(7, 'Центральный детский театр', 'ул. Мичурина, 9'),
(8, 'ееее', 'аааа');

-- --------------------------------------------------------

--
-- Структура таблицы `theater_performance`
--

CREATE TABLE `theater_performance` (
  `ID_theater` int(11) NOT NULL,
  `ID_performance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `theater_performance`
--

INSERT INTO `theater_performance` (`ID_theater`, `ID_performance`) VALUES
(3, 1),
(2, 2),
(1, 3),
(6, 4),
(4, 5),
(7, 6);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `theate`
--
ALTER TABLE `theate`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `theater_performance`
--
ALTER TABLE `theater_performance`
  ADD UNIQUE KEY `ID_theater` (`ID_theater`),
  ADD UNIQUE KEY `ID_performance` (`ID_performance`),
  ADD KEY `ID_theater_2` (`ID_theater`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `performance`
--
ALTER TABLE `performance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `theate`
--
ALTER TABLE `theate`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `theater_performance`
--
ALTER TABLE `theater_performance`
  ADD CONSTRAINT `theater_performance_ibfk_1` FOREIGN KEY (`ID_performance`) REFERENCES `performance` (`id`),
  ADD CONSTRAINT `theater_performance_ibfk_2` FOREIGN KEY (`ID_theater`) REFERENCES `theate` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
