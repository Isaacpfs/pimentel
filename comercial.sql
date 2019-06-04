-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 04-Jun-2019 às 00:16
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comercial`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_05_12_000000_create_users_table', 1),
(2, '2019_05_12_100000_create_password_resets_table', 1),
(3, '2019_05_12_012229_create_produtos_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('anasofia@gmail.com', '$2y$10$42EwWJPju1NmGTaiOImdE.xA8ONKNB4jQ.mUIuNwgsNOGfxGRsoni', '2019-05-17 04:43:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` int(191) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `imagem` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `name`, `description`, `quantity`, `price`, `imagem`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'Lápis 3B', 'Lápis ponta 6B para escrita grossa.', 10, '5.50', 'pencil-1911312_960_720 - Copia.png', '2019-05-26 07:05:34', '2019-05-26 07:07:08', NULL),
(5, 'Caneca Bic 2.0', 'Caneta para escritores refinados.', 1, '1.00', 'caneta-bic-min - Copia.png', '2019-05-26 07:06:31', '2019-05-26 07:06:31', NULL),
(6, 'Papel Chamex A4', 'Papel chamex A4 com 500 folhas.', 1, '23.50', '5433360_1GG - Copia.jpg', '2019-05-26 07:08:13', '2019-05-26 07:08:13', NULL),
(7, 'Papel Cartaz', 'Papel Cartaz (Cartão) para uso criativo.', 5, '5.00', '0000221 - Copia.jpg', '2019-05-26 07:09:25', '2019-05-26 07:09:25', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Isaac Pimentel Fernandes Sobrinho', 'isaac@hotmail.com', '$2y$10$Qdh0VQYRetyyVgkbv8L1x.behpaAjNgl/my3a/PUumrvAO5cHjYsi', 'qgj3KBk2kzRdRDouL5oxZbfWF5KnwTzgfdursYEVf0m0H8IiQ5njOLMKgXps', '2019-05-16 21:55:05', '2019-05-16 21:55:05'),
(3, 'Ana Sofia', 'anasofia@gmail.com', '$2y$10$k4kEB.7zuwNozuCMdnV09.mAQ.WjiIwzPKaGCzOk12dv0zih1uvma', 'Z3bVv1OGEQ7WccBrBehheusmknArcO2OElFFkjxmCyBTIrPK2TRuLpcIWaaB', '2019-05-17 04:07:52', '2019-05-17 04:07:52'),
(4, 'Doguinho Hanna', 'doguinhohanna@hotmail.com', '$2y$10$aYAt5vpjUdHcc7bej0VlwekbHg.XU7eDh9Vlkys1eMPBAm9aMQjcC', '9uIagvYOLJmqNAa7mZGyQV1x9LxMqAWLgFnhMWb8wLIfQ56g8iYH7PlwMOIZ', '2019-05-20 23:07:33', '2019-05-20 23:07:33'),
(5, 'marcos', 'marcos@gmail.com', '$2y$10$FUal7dACWHkGEluaiB4TFe.WPDey28awXBpRUipl4JQT5UJSgUkOC', 'VY7kPMb2xPkWi1ka8FlggycFPCQkuAtW0Tu9LyzdtWvxR6cOvywbPKMzp9cz', '2019-05-21 03:21:26', '2019-05-21 03:21:26'),
(6, 'isaac', 'isaacp@gmail.com', '$2y$10$A.fx7AF7SxiHIFt51.fgr.xei5Wl5SIT66wZh/1ZVVIra8AWATPei', 'd6OwWQNW1ueFPDX34V6yS2rUzbi2lFsJL5fipXzrLovlM6pttTm8A5l5bPyF', '2019-05-21 03:27:43', '2019-05-21 03:27:43'),
(7, 'gabriel', 'gabril@hotmail.com', '$2y$10$VSVm8FO01Lm1a2tqUVSau.TKEB9DLkz8KCOzmrwORWX7uu4zNfYkq', '0I5l7Qx9yqLVXv6uPfYdqPWtCju4BgzblbBuN1USKGxuq7oonOPbVjhR9Z6W', '2019-05-21 03:47:16', '2019-05-21 03:47:16'),
(8, 'Gabriela', 'gabrielaeunasciassim@hotmail.com', '$2y$10$KpTyNF8GWOLle..my70rn.Jl288WzzqAI49hWq7zMntNdMm4A7ZhS', 'SlE0UmoJmFtr8MGTSdxFDMaaOoAE8YEGZTWQMrGMdOVFK2mkBjQbR5vnXqoc', '2019-05-21 03:51:27', '2019-05-21 03:51:27'),
(9, 'Ryan', 'ryanpimentel@hotmail.com', '$2y$10$QDpFmhIM2QvSIDQLb2sqvu.BJo.bnfDjKiBaUluO6OSdx5JJEfGLu', '6lTIWr2tXXdZiJEYIAPWH9BzhILshJlDDTJVpz3iwPe2Gb3ZnWWlJor6GFZ9', '2019-05-22 16:22:22', '2019-05-22 16:22:22');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
