-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06/04/2025 às 15:01
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sensores_2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `balanca`
--

CREATE TABLE `balanca` (
  `balanca_1` float DEFAULT NULL,
  `balanca_2` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `balanca`
--

INSERT INTO `balanca` (`balanca_1`, `balanca_2`) VALUES
(16.5, 9.8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `box1`
--

CREATE TABLE `box1` (
  `metano` float DEFAULT NULL,
  `amonia` float DEFAULT NULL,
  `h2s` float DEFAULT NULL,
  `iluminacao` float DEFAULT NULL,
  `umidade` float DEFAULT NULL,
  `umidade_cama` float DEFAULT NULL,
  `temperatura_cama` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `box1`
--

INSERT INTO `box1` (`metano`, `amonia`, `h2s`, `iluminacao`, `umidade`, `umidade_cama`, `temperatura_cama`) VALUES
(3729.5, 24.1, 133.3, 45.7, 60.8, 91.9, 61.2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `box2`
--

CREATE TABLE `box2` (
  `metano` float DEFAULT NULL,
  `amonia` float DEFAULT NULL,
  `h2s` float DEFAULT NULL,
  `iluminacao` float DEFAULT NULL,
  `umidade` float DEFAULT NULL,
  `umidade_cama` float DEFAULT NULL,
  `temperatura_cama` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `box2`
--

INSERT INTO `box2` (`metano`, `amonia`, `h2s`, `iluminacao`, `umidade`, `umidade_cama`, `temperatura_cama`) VALUES
(2121.9, 170.8, 43, 30.2, 27.4, 30, 90.1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fora`
--

CREATE TABLE `fora` (
  `temperatura` float DEFAULT NULL,
  `vasao` float DEFAULT NULL,
  `temperatura_agua` float DEFAULT NULL,
  `energia` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fora`
--

INSERT INTO `fora` (`temperatura`, `vasao`, `temperatura_agua`, `energia`) VALUES
(11.5, 17.7, 12, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `silos`
--

CREATE TABLE `silos` (
  `silo1` float DEFAULT NULL,
  `silo2` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `silos`
--

INSERT INTO `silos` (`silo1`, `silo2`) VALUES
(312.2, 275.8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `temperaturas`
--

CREATE TABLE `temperaturas` (
  `t1` float DEFAULT NULL,
  `t2` float DEFAULT NULL,
  `t3` float DEFAULT NULL,
  `t4` float DEFAULT NULL,
  `t5` float DEFAULT NULL,
  `t6` float DEFAULT NULL,
  `t7` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `temperaturas`
--

INSERT INTO `temperaturas` (`t1`, `t2`, `t3`, `t4`, `t5`, `t6`, `t7`) VALUES
(74.6, 82.9, 17.3, 11.9, 96.9, 62.3, 8.8);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
