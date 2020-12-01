-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de gera��o: 29/09/2017 �s 21:12
-- Vers�o do servidor: 5.5.57-0+deb8u1
-- Vers�o do PHP: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `net`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `arquivo`
--

CREATE TABLE IF NOT EXISTS `arquivo` (
`id` int(11) NOT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `titulo` varchar(250) DEFAULT NULL,
  `descricao` varchar(250) DEFAULT NULL,
  `botao` varchar(250) DEFAULT NULL,
  `apn` varchar(250) DEFAULT NULL,
  `imagem` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `file` varchar(250) DEFAULT NULL,
  `tipo` varchar(250) DEFAULT NULL,
  `operadora` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `chave`
--

CREATE TABLE IF NOT EXISTS `chave` (
`id` int(11) NOT NULL,
  `chave` varchar(250) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `chave`
--

INSERT INTO `chave` (`id`, `chave`) VALUES
(1, 'UPZCHUH1YLTHE0GZDU6H');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config_suporte`
--

CREATE TABLE IF NOT EXISTS `config_suporte` (
`id` int(11) NOT NULL,
  `id_cad` varchar(250) DEFAULT NULL,
  `SuportePaginacao` int(11) DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `icone_perfil`
--

CREATE TABLE IF NOT EXISTS `icone_perfil` (
`id` int(11) NOT NULL,
  `imagem` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `imagem_perfil`
--

CREATE TABLE IF NOT EXISTS `imagem_perfil` (
`id` int(11) NOT NULL,
  `imagem` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`id` int(11) NOT NULL,
  `id_cad` int(11) NOT NULL DEFAULT '0',
  `acesso` int(11) NOT NULL DEFAULT '3',
  `nome` varchar(250) DEFAULT NULL,
  `login` varchar(250) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `senha2` varchar(250) DEFAULT NULL,
  `expiredate` varchar(250) DEFAULT NULL,
  `cota` varchar(250) NOT NULL DEFAULT '0',
  `operadora` varchar(250) DEFAULT NULL,
  `derrubado` varchar(250) DEFAULT '0',
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  `LimiteTeste` varchar(250) NOT NULL DEFAULT '0',
  `data` varchar(250) DEFAULT NULL,
  `ValorCobrado` varchar(250) DEFAULT NULL,
  `msginterna` longtext,
  `email` varchar(250) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `login`
--

INSERT INTO `login` (`id`, `id_cad`, `acesso`, `nome`, `login`, `senha`, `senha2`, `expiredate`, `cota`, `operadora`, `derrubado`, `bloqueado`, `LimiteTeste`, `data`, `ValorCobrado`, `msginterna`, `email`) VALUES
(1, 1, 1, 'admin', 'admin', 'admin', '', '', '999998932394', '', '0', 'N', '0', '', '10.00', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `relatorio`
--

CREATE TABLE IF NOT EXISTS `relatorio` (
`id` int(11) NOT NULL,
  `id_cad` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `data` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `servidor`
--

CREATE TABLE IF NOT EXISTS `servidor` (
`id` int(11) NOT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `server` varchar(250) DEFAULT NULL,
  `porta` varchar(250) DEFAULT NULL,
  `user` varchar(250) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `icone` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sms`
--

CREATE TABLE IF NOT EXISTS `sms` (
`id` int(11) NOT NULL,
  `login` varchar(250) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `suporte`
--

CREATE TABLE IF NOT EXISTS `suporte` (
`id` int(11) NOT NULL,
  `UserEmissor` varchar(250) DEFAULT NULL,
  `UserReceptor` varchar(250) DEFAULT NULL,
  `Assunto` varchar(250) DEFAULT NULL,
  `data` varchar(250) DEFAULT NULL,
  `anexo` varchar(250) DEFAULT NULL,
  `Mensagem` longtext,
  `LidaEmissor` varchar(11) NOT NULL DEFAULT 'N',
  `LidaReceptor` varchar(11) NOT NULL DEFAULT 'N',
  `PastaEmissor` int(11) NOT NULL DEFAULT '2',
  `PastaReceptor` int(11) NOT NULL DEFAULT '1',
  `Marcacao` int(11) NOT NULL DEFAULT '5',
  `Estrela` varchar(11) NOT NULL DEFAULT 'N',
  `ExcluirEmissor` varchar(11) NOT NULL DEFAULT 'N',
  `ExcluirReceptor` varchar(11) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `suporteresp`
--

CREATE TABLE IF NOT EXISTS `suporteresp` (
`id` int(11) NOT NULL,
  `id_suporte` int(11) DEFAULT NULL,
  `UserEmissor` varchar(250) DEFAULT NULL,
  `mensagem` longtext,
  `anexo` varchar(250) DEFAULT NULL,
  `data` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `urlteste`
--

CREATE TABLE IF NOT EXISTS `urlteste` (
`id` int(11) NOT NULL,
  `CadUser` varchar(2500) DEFAULT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'N',
  `tempo` int(11) DEFAULT NULL,
  `cemail` varchar(11) NOT NULL DEFAULT 'N',
  `email` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- �ndices de tabelas apagadas
--

--
-- �ndices de tabela `arquivo`
--
ALTER TABLE `arquivo`
 ADD PRIMARY KEY (`id`);

--
-- �ndices de tabela `chave`
--
ALTER TABLE `chave`
 ADD PRIMARY KEY (`id`);

--
-- �ndices de tabela `config_suporte`
--
ALTER TABLE `config_suporte`
 ADD PRIMARY KEY (`id`);

--
-- �ndices de tabela `icone_perfil`
--
ALTER TABLE `icone_perfil`
 ADD PRIMARY KEY (`id`);

--
-- �ndices de tabela `imagem_perfil`
--
ALTER TABLE `imagem_perfil`
 ADD PRIMARY KEY (`id`);

--
-- �ndices de tabela `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`id`);

--
-- �ndices de tabela `relatorio`
--
ALTER TABLE `relatorio`
 ADD PRIMARY KEY (`id`);

--
-- �ndices de tabela `servidor`
--
ALTER TABLE `servidor`
 ADD PRIMARY KEY (`id`);

--
-- �ndices de tabela `sms`
--
ALTER TABLE `sms`
 ADD PRIMARY KEY (`id`);

--
-- �ndices de tabela `suporte`
--
ALTER TABLE `suporte`
 ADD PRIMARY KEY (`id`);

--
-- �ndices de tabela `suporteresp`
--
ALTER TABLE `suporteresp`
 ADD PRIMARY KEY (`id`);

--
-- �ndices de tabela `urlteste`
--
ALTER TABLE `urlteste`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `arquivo`
--
ALTER TABLE `arquivo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `chave`
--
ALTER TABLE `chave`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `config_suporte`
--
ALTER TABLE `config_suporte`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `icone_perfil`
--
ALTER TABLE `icone_perfil`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `imagem_perfil`
--
ALTER TABLE `imagem_perfil`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `relatorio`
--
ALTER TABLE `relatorio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `servidor`
--
ALTER TABLE `servidor`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sms`
--
ALTER TABLE `sms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `suporte`
--
ALTER TABLE `suporte`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `suporteresp`
--
ALTER TABLE `suporteresp`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `urlteste`
--
ALTER TABLE `urlteste`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
