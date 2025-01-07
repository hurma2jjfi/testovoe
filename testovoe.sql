-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 07 2025 г., 18:51
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testovoe`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'ksdks@mail.ru', '$2b$10$85GUJU1ZkEf0d5VQsxOQnuwejXDukY0zARjQ0IaAhu3H13b4a4tzq', '2025-01-07 14:23:08', '2025-01-07 14:23:08'),
(2, 'utipov36@gmail.com', '$2b$10$CBAoq7QVXYp1RcbM8l.0ueMTJlXf03s6L18Hni2IlTRIMjF2rD9Ra', '2025-01-07 14:23:39', '2025-01-07 14:23:39'),
(3, 'utipov366@gmail.com', '$2b$10$MWQLY2vHapmwURaRRVnKOeAMIceIJiY5fdzV5.SE3dTdnctR9kGeu', '2025-01-07 14:29:11', '2025-01-07 14:29:11'),
(4, 'k56sdks@mail.ru', '$2b$10$ZTketVp0Yg.oku1LihDZTO.xUpRFboHI8fGuqhlHiAxwsd0xx9xZa', '2025-01-07 14:44:52', '2025-01-07 14:44:52'),
(5, 'utipov3FS6@gmail.com', '$2b$10$lSwVbh0tgSYXRBvSnLDT4uWxtO4ELUcHV7dostEJ44JrY.MN.ylE2', '2025-01-07 14:45:30', '2025-01-07 14:45:30'),
(6, 'utipofv3FS6@gmail.com', '$2b$10$72ihAMYmmnRKt9uo3R73r.GO1LNBlRnl83k8vx9x8Nfpnex/DFW1C', '2025-01-07 14:45:53', '2025-01-07 14:45:53'),
(7, 'utipofv3FSs6@gmail.com', '$2b$10$6aWgBy0WGuUo2gnSOmYFHOM4Ono06Y3LRie3wr2qTAFbkn3sVAIJq', '2025-01-07 14:45:59', '2025-01-07 14:45:59'),
(8, 'dassad36@gmail.com', '$2b$10$8lMOCCUSDzqwZLwu8dnV6uUkf5Iz6KGcRio6KL.xXaftz.yrtM66y', '2025-01-07 14:48:40', '2025-01-07 14:48:40'),
(9, 'utipovll36@gmail.com', '$2b$10$8VXiPWQIRcsZ5zCyDQFK8eJ54WH9UlyznfaAqWQk.TpNmJ4LerrCG', '2025-01-07 14:50:01', '2025-01-07 14:50:01'),
(10, 'jhon@gmail.com', '$2b$10$8vEywfMnnnE1t/JquzcxR.dYq5bFjPGbFiqhD6aC09Vuxgh4fYZNi', '2025-01-07 15:38:33', '2025-01-07 15:38:33');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

