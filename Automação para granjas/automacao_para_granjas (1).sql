-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/04/2025 às 23:11
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
-- Banco de dados: `cadastro_funcionario`
--
CREATE DATABASE IF NOT EXISTS `cadastro_funcionario` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cadastro_funcionario`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `sobrenome` varchar(20) DEFAULT NULL,
  `idade` int(100) DEFAULT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `imagem` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`cpf`, `nome`, `sobrenome`, `idade`, `sexo`, `imagem`) VALUES
('128.132.231', 'Fernanda', 'Antonia', 36, 'mulher', 'uploads/IMG-20200118-WA0013.jpg'),
('138.154.559', 'Asael', 'Celeghim', 19, 'homem', 'uploads/IMG-20200118-WA0011.jpg'),
('148.354.769', 'Elian', 'Celeghim', 12, 'homem', 'uploads/IMG-20200118-WA0007.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`cpf`);
--
-- Banco de dados: `controle_de_estoque`
--
CREATE DATABASE IF NOT EXISTS `controle_de_estoque` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `controle_de_estoque`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `preco_venda` float NOT NULL,
  `preco_compra` float NOT NULL,
  `unidade_medida` varchar(50) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `quantidade_atual` int(100) DEFAULT NULL,
  `quantidade_maxima` int(100) DEFAULT NULL,
  `quantidade_minima` int(100) DEFAULT NULL,
  `fornecedor` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`codigo`, `nome`, `descricao`, `marca`, `validade`, `preco_venda`, `preco_compra`, `unidade_medida`, `imagem`, `quantidade_atual`, `quantidade_maxima`, `quantidade_minima`, `fornecedor`) VALUES
(1, 'Lapis', 'Não contém borracha ', 'fiber castel', '0000-00-00', 1.5, 0.5, 'caixa', 'uploads/lapis.jpg', 100, 34, 2, 'Fiber Castel'),
(3, 'Mochila', 'feito de pano', 'Caterpiller', '0000-00-00', 20.54, 15.54, 'caixa', 'uploads/mochila.jpg', 34, 34, 1, 'AtacadoBraz'),
(4, 'Caneta', 'Transparente azul', 'Bic', '0000-00-00', 1.5, 1.8, '', 'uploads/caneta.jpg', 100, 100, 34, 'Doritos'),
(5, 'Caneca', 'Feito de plárico', 'Caterpiller', '0000-00-00', 15, 10, 'quilograma', 'uploads/caneca.jpg', 100, 100, 2, 'AtacadoBraz'),
(6, 'lapiseira', 'Não contém borracha ', 'fiber castel', '0000-00-00', 1.5, 0.5, 'caixa', 'uploads/caneca.jpg', 434, 34, 34, 'AtacadoBraz');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- Banco de dados: `db_pessoas`
--
CREATE DATABASE IF NOT EXISTS `db_pessoas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_pessoas`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_cidades`
--

CREATE TABLE `tb_cidades` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `sigla` varchar(3) NOT NULL,
  `id_estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_cidades`
--

INSERT INTO `tb_cidades` (`id`, `nome`, `sigla`, `id_estado`) VALUES
(1, 'São Paulo', 'SP', 1),
(2, 'Santos', 'STS', 1),
(3, 'Campinas', 'CPS', 1),
(4, 'Rio de Janeiro', 'RJ', 2),
(5, 'Niterói', 'NT', 2),
(6, 'Duque de Caxias', 'DC', 2),
(7, 'Salvador', 'SA', 3),
(8, 'Feira de Santana', 'FS', 3),
(9, 'Vitória da Conquista', 'VC', 3),
(10, 'Porto Alegre', 'PA', 4),
(11, 'Canoas', 'CN', 4),
(12, 'Santa Maria', 'SM', 4),
(13, 'Recife', 'RE', 5),
(14, 'Jaboatão dos Guararapes', 'JG', 5),
(15, 'Olinda', 'OL', 5),
(16, 'São Bernardo do Campo', 'SBC', 1),
(17, 'São José dos Campos', 'SJC', 1),
(18, 'Nova Iguaçu', 'NI', 2),
(19, 'Camaçari', 'CM', 3),
(20, 'Pelotas', 'PEL', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_pessoas`
--

CREATE TABLE `tb_pessoas` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_de_nascimento` date NOT NULL,
  `sexo` char(1) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `id_cidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_pessoas`
--

INSERT INTO `tb_pessoas` (`id`, `nome`, `data_de_nascimento`, `sexo`, `telefone`, `id_cidade`) VALUES
(1, 'Ana Silva', '1980-05-01', 'F', '11 99999-9999', 1),
(2, 'João Souza', '1981-07-15', 'M', '11 88888-8888', 1),
(3, 'Maria Oliveira', '1982-09-25', 'F', '21 77777-7777', 4),
(4, 'Carlos Santos', '1983-11-03', 'M', '21 66666-6666', 4),
(5, 'Julia Costa', '1984-02-12', 'F', '71 55555-5555', 7),
(6, 'Roberto Silva', '1985-04-22', 'M', '71 44444-4444', 7),
(7, 'Carla Pereira', '1986-06-05', 'F', '51 33333-3333', 10),
(8, 'Ricardo Lima', '1987-08-14', 'M', '51 22222-2222', 10),
(9, 'Lúcia Mendes', '1988-10-20', 'F', '81 11111-1111', 13),
(10, 'José Almeida', '1989-12-30', 'M', '81 00000-0000', 13),
(11, 'Daniela Fernandes', '1990-03-07', 'F', '11 12345-6789', 2),
(12, 'Rodrigo Castro', '1991-05-15', 'M', '11 23456-7891', 2),
(13, 'Fernanda Ribeiro', '1992-07-25', 'F', '21 34567-8912', 5),
(14, 'Marcos Barros', '1993-09-05', 'M', '21 45678-9123', 5),
(15, 'Patrícia Rocha', '1994-11-14', 'F', '71 56789-1234', 8),
(16, 'Bruno Melo', '1995-01-24', 'M', '71 67891-2345', 8),
(17, 'Camila Cardoso', '1996-03-02', 'F', '51 78912-3456', 11),
(18, 'Rafael Dias', '1997-05-12', 'M', '51 89123-4567', 11),
(19, 'Priscila Andrade', '1998-07-22', 'F', '81 91234-5678', 14),
(20, 'Felipe Gomes', '1999-09-30', 'M', '81 98765-4321', 14);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_uf`
--

CREATE TABLE `tb_uf` (
  `id` int(11) NOT NULL,
  `sigla` varchar(2) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_uf`
--

INSERT INTO `tb_uf` (`id`, `sigla`, `nome`) VALUES
(1, 'SP', 'São Paulo'),
(2, 'RJ', 'Rio de Janeiro'),
(3, 'BA', 'Bahia'),
(4, 'RS', 'Rio Grande do Sul'),
(5, 'PE', 'Pernambuco');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_cidades`
--
ALTER TABLE `tb_cidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Índices de tabela `tb_pessoas`
--
ALTER TABLE `tb_pessoas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cidade` (`id_cidade`);

--
-- Índices de tabela `tb_uf`
--
ALTER TABLE `tb_uf`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_cidades`
--
ALTER TABLE `tb_cidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `tb_pessoas`
--
ALTER TABLE `tb_pessoas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `tb_uf`
--
ALTER TABLE `tb_uf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_cidades`
--
ALTER TABLE `tb_cidades`
  ADD CONSTRAINT `tb_cidades_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `tb_uf` (`id`);

--
-- Restrições para tabelas `tb_pessoas`
--
ALTER TABLE `tb_pessoas`
  ADD CONSTRAINT `tb_pessoas_ibfk_1` FOREIGN KEY (`id_cidade`) REFERENCES `tb_cidades` (`id`);
--
-- Banco de dados: `gasolina_barata`
--
CREATE DATABASE IF NOT EXISTS `gasolina_barata` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gasolina_barata`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_bandeiras`
--

CREATE TABLE `tb_bandeiras` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_cidades`
--

CREATE TABLE `tb_cidades` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `id_uf` int(11) DEFAULT NULL,
  `cordenadas` decimal(10,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_combustivel`
--

CREATE TABLE `tb_combustivel` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `subtipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_endereco`
--

CREATE TABLE `tb_endereco` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `id_cidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_historico`
--

CREATE TABLE `tb_historico` (
  `id` int(11) NOT NULL,
  `id_posto` int(11) DEFAULT NULL,
  `id_tipo_combustivel` int(11) DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_postos`
--

CREATE TABLE `tb_postos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `id_endereco` int(11) DEFAULT NULL,
  `id_bandeira` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_ufs`
--

CREATE TABLE `tb_ufs` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_bandeiras`
--
ALTER TABLE `tb_bandeiras`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_cidades`
--
ALTER TABLE `tb_cidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_uf` (`id_uf`);

--
-- Índices de tabela `tb_combustivel`
--
ALTER TABLE `tb_combustivel`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_endereco`
--
ALTER TABLE `tb_endereco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cidade` (`id_cidade`);

--
-- Índices de tabela `tb_historico`
--
ALTER TABLE `tb_historico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_posto` (`id_posto`),
  ADD KEY `id_tipo_combustivel` (`id_tipo_combustivel`);

--
-- Índices de tabela `tb_postos`
--
ALTER TABLE `tb_postos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_endereco` (`id_endereco`),
  ADD KEY `id_bandeira` (`id_bandeira`);

--
-- Índices de tabela `tb_ufs`
--
ALTER TABLE `tb_ufs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_bandeiras`
--
ALTER TABLE `tb_bandeiras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_cidades`
--
ALTER TABLE `tb_cidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_combustivel`
--
ALTER TABLE `tb_combustivel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_endereco`
--
ALTER TABLE `tb_endereco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_historico`
--
ALTER TABLE `tb_historico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_postos`
--
ALTER TABLE `tb_postos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_ufs`
--
ALTER TABLE `tb_ufs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_cidades`
--
ALTER TABLE `tb_cidades`
  ADD CONSTRAINT `tb_cidades_ibfk_1` FOREIGN KEY (`id_uf`) REFERENCES `tb_ufs` (`id`);

--
-- Restrições para tabelas `tb_endereco`
--
ALTER TABLE `tb_endereco`
  ADD CONSTRAINT `tb_endereco_ibfk_1` FOREIGN KEY (`id_cidade`) REFERENCES `tb_cidades` (`id`);

--
-- Restrições para tabelas `tb_historico`
--
ALTER TABLE `tb_historico`
  ADD CONSTRAINT `tb_historico_ibfk_1` FOREIGN KEY (`id_posto`) REFERENCES `tb_postos` (`id`),
  ADD CONSTRAINT `tb_historico_ibfk_2` FOREIGN KEY (`id_tipo_combustivel`) REFERENCES `tb_combustivel` (`id`);

--
-- Restrições para tabelas `tb_postos`
--
ALTER TABLE `tb_postos`
  ADD CONSTRAINT `tb_postos_ibfk_1` FOREIGN KEY (`id_endereco`) REFERENCES `tb_endereco` (`id`),
  ADD CONSTRAINT `tb_postos_ibfk_2` FOREIGN KEY (`id_bandeira`) REFERENCES `tb_bandeiras` (`id`);
--
-- Banco de dados: `loja_informatica`
--
CREATE DATABASE IF NOT EXISTS `loja_informatica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `loja_informatica`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `cpf` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cep` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `rua` varchar(50) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`cpf`, `nome`, `sobrenome`, `email`, `cep`, `cidade`, `estado`, `bairro`, `rua`, `numero`, `senha`) VALUES
(138154, 'ASAEL', 'HENRIQUE BARBÃO MACHADO CELEGHIM', 'asaelbarbao451@gmail.com', '86730000', 'ASTORGA', 'PR', 'Alto da Boa Vista', 'Rua Pacaembu', '38B', '123');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cpf`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cpf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138188;
--
-- Banco de dados: `nome`
--
CREATE DATABASE IF NOT EXISTS `nome` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nome`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `nome`
--

CREATE TABLE `nome` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `nome`
--

INSERT INTO `nome` (`id`, `nome`) VALUES
(1, 'asa'),
(2, 'samuel'),
(3, ''),
(4, 'coco'),
(5, 'elian'),
(6, 'elian'),
(7, 'elian'),
(8, 'elian'),
(9, 'jm'),
(10, 'jm'),
(11, 'asa'),
(12, 'asa'),
(13, ''),
(14, 'xxz'),
(15, 'aaa'),
(16, 'sdsd'),
(17, 'wwwwwwwwwww');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `nome`
--
ALTER TABLE `nome`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `nome`
--
ALTER TABLE `nome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Despejando dados para a tabela `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Despejando dados para a tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"ramau\",\"table\":\"tb_user\"},{\"db\":\"ramau\",\"table\":\"tb_ramais\"},{\"db\":\"loja_informatica\",\"table\":\"usuario\"},{\"db\":\"tds\",\"table\":\"tbdisciplina\"},{\"db\":\"tds\",\"table\":\"tbDisciplina\"},{\"db\":\"nome\",\"table\":\"nome\"},{\"db\":\"controle_de_estoque\",\"table\":\"produto\"},{\"db\":\"test\",\"table\":\"tb_usuarios\"},{\"db\":\"test\",\"table\":\"usuario\"},{\"db\":\"test\",\"table\":\"pessoa\"}]');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Despejando dados para a tabela `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'test', 'pessoa', '{\"sorted_col\":\"`pessoa`.`email` ASC, `pessoa`.`senha` ASC\"}', '2024-02-01 18:56:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Despejando dados para a tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-04-05 21:11:27', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt_BR\",\"NavigationWidth\":199}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices de tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices de tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices de tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices de tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices de tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices de tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices de tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices de tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices de tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `poupave`
--
CREATE DATABASE IF NOT EXISTS `poupave` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `poupave`;

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
--
-- Banco de dados: `ramau`
--
CREATE DATABASE IF NOT EXISTS `ramau` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ramau`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_ramais`
--

CREATE TABLE `tb_ramais` (
  `id` int(11) DEFAULT NULL,
  `nome` varchar(50) NOT NULL,
  `contato` int(20) NOT NULL,
  `palavra_chave` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_ramais`
--

INSERT INTO `tb_ramais` (`id`, `nome`, `contato`, `palavra_chave`, `email`) VALUES
(NULL, 'samuel', 99987665, 'Mecânico, conserta motor elétrico', 'samuel@gmail.com'),
(NULL, 'asael', 97082257, 'faxineiro', 'asaelbarbao451@gmail.com'),
(NULL, 'samuel', 2323, 'mecanico', 'samuel@'),
(NULL, 'jeferson', 12312, 'mecanico', 'jeferson@'),
(NULL, '', 0, '', ''),
(NULL, '', 0, '', ''),
(NULL, '', 0, '', ''),
(NULL, '', 0, '', ''),
(NULL, '', 0, '', ''),
(NULL, '', 0, '', ''),
(NULL, '', 0, '', ''),
(NULL, '', 0, '', ''),
(NULL, '', 0, '', ''),
(NULL, 'Asael', 2323, 'mecanico', 'asaelbarbao451@gmail.com'),
(NULL, 'Asael', 2323, 'mecanico', 'asaelbarbao451@gmail.com'),
(NULL, 'samuel', 2147483647, 'tranporte', 'samuehenriquesaousabarbosa@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_user`
--

CREATE TABLE `tb_user` (
  `cpf` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` int(4) NOT NULL,
  `how` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_user`
--

INSERT INTO `tb_user` (`cpf`, `nome`, `email`, `senha`, `how`) VALUES
(0, 'asael', 'asaelbarbao451@gmail.com', 123, 'adm'),
(138154, 'chapeu', 'pedro@', 123, 'user'),
(18290, 'sandro', 'sandrohenriqueseleghin@gmail.com', 123, 'user'),
(18290, 'Samuel', 'samuel@', 123, 'user');
--
-- Banco de dados: `sensores_2`
--
CREATE DATABASE IF NOT EXISTS `sensores_2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sensores_2`;

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
(10.2, 8.2);

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
(9569.2, 121.4, 187.4, 57.6, 42.2, 80, 85.8);

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
(4237.5, 134.9, 102.2, 74.8, 67.6, 74.2, 5.6);

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
(13.9, 11.9, 15.4, 1);

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
(295.1, 936.1);

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
(48.6, 54.1, 84.5, 56.4, 32.7, 29.6, 48.4);
--
-- Banco de dados: `tds`
--
CREATE DATABASE IF NOT EXISTS `tds` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tds`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbdisciplina`
--

CREATE TABLE `tbdisciplina` (
  `id` int(11) NOT NULL,
  `nome_disciplina` varchar(50) NOT NULL,
  `nome_prof` varchar(50) NOT NULL,
  `obs` varchar(200) NOT NULL,
  `foto_professor` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbdisciplina`
--

INSERT INTO `tbdisciplina` (`id`, `nome_disciplina`, `nome_prof`, `obs`, `foto_professor`) VALUES
(6, 'Banco de Dados', 'Yuri', 'Muito explicativo', 'Captura de Tela (1).png'),
(7, 'asas', 'asasa', 'asas', 'Captura de Tela (1).png'),
(8, 'kjk', 'kjk', 'kj', 'Captura de Tela (8).png');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tbdisciplina`
--
ALTER TABLE `tbdisciplina`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbdisciplina`
--
ALTER TABLE `tbdisciplina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id`, `nome`, `email`, `senha`) VALUES
(3, 'Jorge Sant Ana', 'jorge@gmail.com', '123445'),
(4, 'Jorge Sant Ana', 'jorge@gmail.com', '123445'),
(5, 'Jorge Sant Ana', 'jorge@gmail.com', '123445'),
(6, 'Asael', 'asael@gmail.com', '5421s');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `senha`) VALUES
(1, 'asael', 'Asel@hmad'),
(2, 'pedro', 'pedro@hmad');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
