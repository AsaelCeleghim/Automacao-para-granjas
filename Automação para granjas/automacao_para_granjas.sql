-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06/04/2025 às 14:22
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
-- Banco de dados: `poupave`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `dadossensores`
--

CREATE TABLE `dadossensores` (
  `temperatura` float DEFAULT NULL,
  `umidade` float DEFAULT NULL,
  `qualidade_ar` varchar(10) DEFAULT NULL,
  `amonia` float DEFAULT NULL,
  `co2` float DEFAULT NULL,
  `agua_potavel` float DEFAULT NULL,
  `fumaca` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `dadossensores`
--

INSERT INTO `dadossensores` (`temperatura`, `umidade`, `qualidade_ar`, `amonia`, `co2`, `agua_potavel`, `fumaca`) VALUES
(25.9074, 94.1611, 'Inaceitave', 1.35523, 1.86671, 42.7769, 'True');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estoqueinsumos`
--

CREATE TABLE `estoqueinsumos` (
  `DataTransacao` date DEFAULT NULL,
  `TipoInsumo` varchar(50) DEFAULT NULL,
  `Quantidade` decimal(10,2) DEFAULT NULL,
  `FornecedorDestinatario` varchar(100) DEFAULT NULL,
  `NumeroLote` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estoqueinsumos`
--

INSERT INTO `estoqueinsumos` (`DataTransacao`, `TipoInsumo`, `Quantidade`, `FornecedorDestinatario`, `NumeroLote`) VALUES
('2024-03-01', 'Ração', 2000.00, 'Fornecedor A', 'Lote001'),
('2024-03-02', 'Medicamento', 50.00, 'Fornecedor B', 'Lote002'),
('2024-06-08', 'Vacina', 100.00, 'Fornecedor C', 'Lote100');

-- --------------------------------------------------------

--
-- Estrutura para tabela `frango`
--

CREATE TABLE `frango` (
  `quantidade_entrada` int(11) DEFAULT NULL,
  `quantidade_vivos` int(11) DEFAULT NULL,
  `quantidade_morto` int(11) DEFAULT NULL,
  `mortalidade` float DEFAULT NULL,
  `preco_frango` float DEFAULT NULL,
  `preco_pinto` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `frango`
--

INSERT INTO `frango` (`quantidade_entrada`, `quantidade_vivos`, `quantidade_morto`, `mortalidade`, `preco_frango`, `preco_pinto`) VALUES
(5000, 5000, 40, 0, 25, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `producaodiaria`
--

CREATE TABLE `producaodiaria` (
  `Data` date DEFAULT NULL,
  `NumFrangosAlimentados` int(11) DEFAULT NULL,
  `QtdRacaoConsumida` decimal(10,2) DEFAULT NULL,
  `TaxaMortalidade` decimal(5,2) DEFAULT NULL,
  `PesoMedioFrangos` decimal(10,2) DEFAULT NULL,
  `ConsumoAgua` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `producaodiaria`
--

INSERT INTO `producaodiaria` (`Data`, `NumFrangosAlimentados`, `QtdRacaoConsumida`, `TaxaMortalidade`, `PesoMedioFrangos`, `ConsumoAgua`) VALUES
('2024-03-01', 5000, 1500.50, 2.50, 1.80, 350.25),
('2024-03-02', 5100, 1550.75, 2.20, 1.90, 355.20),
('2024-06-08', 4900, 1450.25, 3.00, 1.70, 340.75),
('2024-04-01', 5000, 1500.50, 2.50, 1.80, 350.25),
('2024-04-02', 5100, 1550.75, 2.20, 1.90, 355.20),
('2024-05-08', 4900, 1450.25, 3.00, 1.70, 340.75),
('2024-02-01', 5000, 1600.50, 2.60, 1.80, 354.25),
('2024-01-01', 5000, 1600.50, 2.60, 1.80, 354.25),
('2024-01-01', 5000, 1600.50, 2.60, 1.80, 354.25);

-- --------------------------------------------------------

--
-- Estrutura para tabela `saudefrangos`
--

CREATE TABLE `saudefrangos` (
  `Data` date DEFAULT NULL,
  `TipoVacinaTratamento` varchar(100) DEFAULT NULL,
  `Dosagem` decimal(10,2) DEFAULT NULL,
  `SintomasObservados` text DEFAULT NULL,
  `Observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `saudefrangos`
--

INSERT INTO `saudefrangos` (`Data`, `TipoVacinaTratamento`, `Dosagem`, `SintomasObservados`, `Observacoes`) VALUES
('2024-03-01', 'Vacina A', 10.00, 'Nenhum sintoma observado', 'N/A'),
('2024-03-02', 'Tratamento X', 5.00, 'Alguns frangos apresentando letargia', 'Monitorar de perto'),
('2024-06-08', 'Vacina B', 12.50, 'Frangos apresentando secreção nasal', 'Aumentar vigilância');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tempoabate`
--

CREATE TABLE `tempoabate` (
  `Prazo` int(50) DEFAULT NULL,
  `NumeroEntrada` int(11) DEFAULT NULL,
  `DataEntrada` date DEFAULT NULL,
  `preco_frango` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tempoabate`
--

INSERT INTO `tempoabate` (`Prazo`, `NumeroEntrada`, `DataEntrada`, `preco_frango`) VALUES
(50, 5000, '2024-03-01', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendasfaturamento`
--

CREATE TABLE `vendasfaturamento` (
  `DataVenda` varchar(20) DEFAULT NULL,
  `Cliente` varchar(100) DEFAULT NULL,
  `QtdVendida` int(11) DEFAULT NULL,
  `PrecoUnitario` decimal(10,2) DEFAULT NULL,
  `TotalFatura` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vendasfaturamento`
--

INSERT INTO `vendasfaturamento` (`DataVenda`, `Cliente`, `QtdVendida`, `PrecoUnitario`, `TotalFatura`) VALUES
('Janeiro', 'Cliente A', 5000, 3.50, 17500.00),
('Fereiro', 'Cliente B', 6000, 3.75, 22500.00),
('março', 'Cliente C', 5500, 3.25, 17870.50),
('abril', 'Cliente A', 1000, 3.50, 3500.00),
('Maio', 'Cliente B', 2000, 3.00, 6000.00),
('Junho', 'Cliente C', 5500, 3.00, 16500.00),
('Julho', 'Cliente C', 4600, 3.10, 14260.00),
('Agosto', 'Cliente C', 1000, 3.50, 3500.00),
('Setembro', 'Cliente C', 2000, 3.00, 6000.00),
('Outubro', 'Cliente C', 4600, 3.10, 14260.00),
('Novembro', 'Cliente C', 2000, 3.00, 6000.00),
('Dezembro', 'Cliente C', 2000, 3.00, 6000.00);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
