-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 21-Jan-2019 às 20:14
-- Versão do servidor: 8.0.13
-- versão do PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `addresses`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `states`
--

-- DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `label` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uf` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `states`
--

INSERT INTO `states` (`id`, `label`, `uf`, `created_at`, `updated_at`) VALUES
(1, 'São Paulo', 'SP', '2019-01-21 02:28:30', '2019-01-21 02:28:30'),
(2, 'Rio de Janeiro', 'RJ', '2019-01-21 02:39:16', '2019-01-21 02:39:16'),
(3, 'Espírito Santo', 'ES', '2019-01-21 02:42:07', '2019-01-21 02:42:07'),
(4, 'Minas Gerais', 'MG', '2019-01-21 02:42:43', '2019-01-21 02:42:43'),
(5, 'Bahia', 'BA', '2019-01-21 02:47:30', '2019-01-21 02:47:30'),
(6, 'Sergipe', 'SE', '2019-01-21 02:49:36', '2019-01-21 02:49:36'),
(7, 'Pernambuco', 'PE', '2019-01-21 02:49:50', '2019-01-21 02:49:50'),
(8, 'Alagoas', 'AL', '2019-01-21 02:51:08', '2019-01-21 02:51:08'),
(9, 'Paraíba', 'PB', '2019-01-21 02:51:26', '2019-01-21 02:51:26'),
(10, 'Rio Grande do Norte', 'RN', '2019-01-21 02:52:02', '2019-01-21 02:52:02'),
(11, 'Ceará', 'CE', '2019-01-21 02:52:27', '2019-01-21 02:52:27'),
(12, 'Piauí', 'PI', '2019-01-21 02:54:13', '2019-01-21 02:54:13'),
(13, 'Maranhão', 'MA', '2019-01-21 02:54:40', '2019-01-21 02:54:40'),
(14, 'Pará', 'PA', '2019-01-21 02:55:04', '2019-01-21 02:55:04'),
(15, 'Amapá', 'AP', '2019-01-21 02:55:45', '2019-01-21 02:55:45'),
(16, 'Amazonas', 'AM', '2019-01-21 02:55:51', '2019-01-21 02:55:51'),
(17, 'Roraima', 'RR', '2019-01-21 02:56:00', '2019-01-21 02:56:00'),
(18, 'Acre', 'AC', '2019-01-21 02:56:12', '2019-01-21 02:56:12'),
(19, 'Distrito Federal', 'DF', '2019-01-21 02:56:20', '2019-01-21 02:56:20'),
(20, 'Goiás', 'GO', '2019-01-21 02:56:41', '2019-01-21 02:56:41'),
(21, 'Rondônia', 'RO', '2019-01-21 02:58:35', '2019-01-21 02:58:35'),
(22, 'Tocantins', 'TO', '2019-01-21 02:58:56', '2019-01-21 02:58:56'),
(23, 'Mato Grosso', 'MT', '2019-01-21 02:59:19', '2019-01-21 02:59:19'),
(24, 'Mato Grosso do Sul', 'MS', '2019-01-21 03:00:04', '2019-01-21 03:00:04'),
(25, 'Paraná', 'PR', '2019-01-21 03:00:45', '2019-01-21 03:00:45'),
(26, 'Santa Catarina', 'SC', '2019-01-21 03:04:02', '2019-01-21 03:04:02'),
(27, 'Rio Grande do Sul', 'RS', '2019-01-21 03:05:30', '2019-01-21 03:05:30');

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;