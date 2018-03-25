-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25-Mar-2018 às 01:51
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projeto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `craques`
--

CREATE TABLE `craques` (
  `id_craques` int(10) NOT NULL,
  `nome_craque` varchar(35) NOT NULL,
  `morte` date DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `titulos` varchar(150) DEFAULT NULL,
  `numero_de_jogos` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `craques`
--

INSERT INTO `craques` (`id_craques`, `nome_craque`, `morte`, `nascimento`, `titulos`, `numero_de_jogos`) VALUES
(1, 'João', '2101-01-17', '2001-01-16', '3 mundiais(2000, 2001, 2002)', 3),
(2, 'Pelé', '2050-05-02', '1950-01-19', '5', 1000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `curtir_comentar_craques`
--

CREATE TABLE `curtir_comentar_craques` (
  `id_usuario` int(10) NOT NULL,
  `id_craques` int(10) NOT NULL,
  `texto_comentario` varchar(200) NOT NULL,
  `dt_comentario` date DEFAULT NULL,
  `dt_curtir` date DEFAULT NULL,
  `curtir` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curtir_comentar_craques`
--

INSERT INTO `curtir_comentar_craques` (`id_usuario`, `id_craques`, `texto_comentario`, `dt_comentario`, `dt_curtir`, `curtir`) VALUES
(1, 1, 'O João é um gatão', '2018-03-18', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `curtir_comentar_equipe`
--

CREATE TABLE `curtir_comentar_equipe` (
  `id_equipe` int(10) NOT NULL,
  `id_usuario` int(10) NOT NULL,
  `dt_comentario` date DEFAULT NULL,
  `dt_curtir` date DEFAULT NULL,
  `curtir` tinyint(1) DEFAULT NULL,
  `texto_comentario` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curtir_comentar_equipe`
--

INSERT INTO `curtir_comentar_equipe` (`id_equipe`, `id_usuario`, `dt_comentario`, `dt_curtir`, `curtir`, `texto_comentario`) VALUES
(1, 2, NULL, '2018-03-18', 1, NULL),
(2, 80, '2020-06-19', NULL, NULL, 'Uhullll');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curtir_comentar_esportes`
--

CREATE TABLE `curtir_comentar_esportes` (
  `id_esporte` int(10) NOT NULL,
  `id_usuario` int(10) NOT NULL,
  `texto_comentarario` varchar(200) DEFAULT NULL,
  `dt_comentario` date DEFAULT NULL,
  `curtir` tinyint(4) DEFAULT NULL,
  `dt_curtir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curtir_comentar_esportes`
--

INSERT INTO `curtir_comentar_esportes` (`id_esporte`, `id_usuario`, `texto_comentarario`, `dt_comentario`, `curtir`, `dt_curtir`) VALUES
(1, 3, 'muito bom', '2018-05-18', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `curtir_comentar_ligas`
--

CREATE TABLE `curtir_comentar_ligas` (
  `id_liga` int(10) NOT NULL,
  `id_usuario` int(10) NOT NULL,
  `texto_comentario` varchar(200) DEFAULT NULL,
  `dt_curtir` date DEFAULT NULL,
  `curtir` tinyint(1) DEFAULT NULL,
  `dt_comentario` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curtir_comentar_ligas`
--

INSERT INTO `curtir_comentar_ligas` (`id_liga`, `id_usuario`, `texto_comentario`, `dt_curtir`, `curtir`, `dt_comentario`) VALUES
(2, 56, 'hjkhhj', NULL, NULL, '2000-05-30'),
(1, 90, NULL, '2004-09-03', 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipes`
--

CREATE TABLE `equipes` (
  `titulos` varchar(150) NOT NULL,
  `id_equipe` int(10) NOT NULL,
  `fundacao` date NOT NULL,
  `nome_equipe` varchar(35) NOT NULL,
  `numero_torcedores` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `equipes`
--

INSERT INTO `equipes` (`titulos`, `id_equipe`, `fundacao`, `nome_equipe`, `numero_torcedores`) VALUES
('3(1990, 2000) mundiais', 1, '1900-05-05', 'Neco', '2 bilhões'),
('5', 2, '1905-01-01', 'NICO', '1.8 bilhões'),
('2', 3, '1905-01-01', 'Alann', '1.8 bilhões');

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipes_craques`
--

CREATE TABLE `equipes_craques` (
  `id_equipe` int(10) NOT NULL,
  `id_craques` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `equipes_craques`
--

INSERT INTO `equipes_craques` (`id_equipe`, `id_craques`) VALUES
(3, 1),
(1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipes_ligas`
--

CREATE TABLE `equipes_ligas` (
  `id_equipe` int(10) NOT NULL,
  `id_liga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `equipes_ligas`
--

INSERT INTO `equipes_ligas` (`id_equipe`, `id_liga`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `esportes`
--

CREATE TABLE `esportes` (
  `nome_esporte` varchar(35) DEFAULT NULL,
  `historia` varchar(255) DEFAULT NULL,
  `id_esporte` int(10) NOT NULL,
  `num_praticantes` varchar(10) NOT NULL,
  `regras` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `esportes`
--

INSERT INTO `esportes` (`nome_esporte`, `historia`, `id_esporte`, `num_praticantes`, `regras`) VALUES
('Futebol', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 1, '2 bilhões', 'gdhguyasgbygbaygbyhcyhfdydyfg'),
('Handebol', 'historia do Handebol', 2, '100000', 'nao há');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ligas`
--

CREATE TABLE `ligas` (
  `id_liga` int(11) NOT NULL,
  `historia` varchar(255) NOT NULL,
  `fundacao` date NOT NULL,
  `regulamento` varchar(255) DEFAULT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `esporte_id_esporte` int(10) DEFAULT NULL,
  `nome_liga` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ligas`
--

INSERT INTO `ligas` (`id_liga`, `historia`, `fundacao`, `regulamento`, `pais`, `esporte_id_esporte`, `nome_liga`) VALUES
(1, 'ddd', '2018-05-14', 'ddd', 'dd', 1, 'copa do mundo'),
(2, 'teste', '2018-05-14', 'wss', 'ss', 1, 'copa do rei');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rivalidade`
--

CREATE TABLE `rivalidade` (
  `id_equipe` int(10) DEFAULT NULL,
  `possui_id_equipe` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `rivalidade`
--

INSERT INTO `rivalidade` (`id_equipe`, `possui_id_equipe`) VALUES
(1, 2),
(1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` int(10) NOT NULL,
  `nome_tipo_usuario` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id_tipo_usuario`, `nome_tipo_usuario`) VALUES
(1, 'comum'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `email` varchar(40) NOT NULL,
  `senha` varchar(64) NOT NULL,
  `id_usuario` int(10) NOT NULL,
  `nome_usuario` varchar(64) NOT NULL,
  `tipo_usuario_id_tipo_usuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`email`, `senha`, `id_usuario`, `nome_usuario`, `tipo_usuario_id_tipo_usuario`) VALUES
('arcu.Nunc@Utnec.ca', '', 1, 'TaShya', 2),
('tortor@In.net', '', 2, 'Zenaida', 2),
('ut.pharetra@lorem.ca', '', 3, 'Irma', 1),
('cursus.et@vel.com', '', 4, 'Doris', 1),
('et@egetmagnaSuspendisse.net', '', 5, 'Ferris', 2),
('est.congue.a@ipsum.net', '', 6, 'Georgia', 2),
('tortor.at@aaliquetvel.org', '', 7, 'Odette', 1),
('sem.vitae@nonfeugiat.org', '', 8, 'Zachery', 1),
('tortor@justo.ca', '', 9, 'Miranda', 1),
('vestibulum.massa.rutrum@arcuVivamussit.n', '', 10, 'Kellie', 2),
('nulla.Integer@lectus.com', '', 11, 'Kelsey', 2),
('ut.pharetra.sed@elementumategestas.com', '', 12, 'Quon', 1),
('sed@arcuVestibulumante.edu', '', 13, 'Reece', 2),
('Quisque.fringilla.euismod@Duis.com', '', 14, 'Rigel', 1),
('ac.mattis@sapienCrasdolor.com', '', 15, 'Oleg', 1),
('leo@urnaet.org', '', 16, 'Dale', 1),
('accumsan.sed@accumsan.com', '', 17, 'Salvador', 1),
('vehicula.Pellentesque.tincidunt@primisin', '', 18, 'Ginger', 1),
('mi@telluseu.ca', '', 19, 'Ora', 1),
('semper@atliberoMorbi.net', '', 20, 'Nadine', 2),
('fringilla.purus.mauris@mus.org', '', 21, 'Denton', 2),
('Donec.feugiat@ligulaAenean.com', '', 22, 'Alma', 2),
('Integer.vulputate@quisarcuvel.com', '', 23, 'Anthony', 2),
('dictum.sapien@ut.edu', '', 24, 'Judah', 1),
('pede.ac@tempor.org', '', 25, 'Casey', 2),
('sem.egestas.blandit@scelerisquescelerisq', '7yhgbdhb', 26, 'Clayton', 1),
('mattis@pede.net', '', 27, 'Harlan', 1),
('sit@disparturientmontes.com', '', 28, 'Silas', 2),
('lacus.Etiam.bibendum@sitamet.org', '', 29, 'Finn', 2),
('nonummy.ipsum@nisidictumaugue.net', '', 30, 'Sarah', 1),
('erat.volutpat@imperdietornareIn.net', '', 31, 'Mari', 1),
('aliquet@Nuncsed.co.uk', '', 32, 'Cody', 1),
('iaculis.quis@et.ca', '', 33, 'Brendan', 1),
('nonummy.Fusce.fermentum@Sed.com', '', 34, 'Cheyenne', 2),
('tincidunt.dui.augue@nasceturridiculus.co', '', 35, 'Alan', 2),
('pellentesque@gravidamolestie.com', '', 36, 'Danielle', 2),
('elementum@orciluctuset.net', '', 37, 'Abraham', 2),
('et.magnis.dis@vitae.com', '', 38, 'Zachary', 2),
('ornare.lectus@arcuMorbi.edu', '', 39, 'David', 1),
('tristique@ullamcorpervelitin.co.uk', '', 40, 'Rogan', 1),
('tincidunt.aliquam@habitantmorbi.co.uk', '', 41, 'Joelle', 1),
('turpis.non@laoreetposuereenim.com', '', 42, 'Barry', 2),
('ultrices@sempertellus.net', '', 43, 'Malik', 1),
('blandit.mattis.Cras@magnaatortor.ca', '', 44, 'Samuel', 1),
('Cras@molestieorcitincidunt.co.uk', '', 45, 'Branden', 1),
('netus@tellusjustosit.ca', '', 46, 'Tiger', 1),
('non.enim.commodo@feugiatLorem.org', '', 47, 'Harlan', 2),
('eu@diameu.org', '', 48, 'Hector', 2),
('nec.mollis@sempererat.edu', '', 49, 'Roary', 2),
('facilisi@Sednecmetus.co.uk', '', 50, 'Burke', 1),
('auctor@urnajustofaucibus.net', '', 51, 'Judah', 1),
('interdum.ligula.eu@FuscemollisDuis.net', '', 52, 'Catherine', 1),
('Ut.sagittis@Quisquenonummyipsum.net', '', 53, 'William', 2),
('sit.amet.metus@blanditatnisi.net', '', 54, 'Olympia', 2),
('Nulla.facilisi.Sed@semPellentesque.ca', '', 55, 'Alma', 2),
('eu@erat.edu', '', 56, 'Peter', 2),
('sem.eget.massa@faucibusleo.ca', '', 57, 'Gabriel', 1),
('justo@risusNulla.ca', '', 58, 'Olga', 1),
('ut.cursus.luctus@eu.net', '', 59, 'Hedda', 1),
('elit.Etiam@eu.co.uk', '', 60, 'Wing', 1),
('Nunc.lectus@acmattisornare.com', '', 61, 'Sydney', 1),
('neque.vitae.semper@aptent.com', '', 62, 'Hunter', 2),
('Donec.sollicitudin@lectussitamet.org', '', 63, 'Ezra', 2),
('Curabitur.vel@mollisPhasellus.edu', '', 64, 'Lane', 2),
('dui.Cras.pellentesque@atiaculis.ca', '', 65, 'Delilah', 2),
('Praesent.luctus@feugiattellus.edu', '', 66, 'Angela', 2),
('imperdiet.ullamcorper.Duis@nonlaciniaat.', '', 67, 'Brock', 1),
('Sed.eu@odioAliquamvulputate.ca', '', 68, 'Ali', 1),
('litora.torquent.per@hendreritidante.net', '', 69, 'Alexandra', 1),
('Maecenas@pedeCum.co.uk', '', 70, 'Uta', 1),
('ligula@acfermentumvel.edu', '', 71, 'Reece', 1),
('elit@penatibuset.edu', '', 72, 'Kirk', 1),
('vitae.nibh@nonegestasa.co.uk', '', 73, 'Marshall', 1),
('accumsan.sed@non.net', '', 74, 'Cairo', 2),
('et@arcuacorci.org', '', 75, 'Yuli', 2),
('fermentum@ligulaconsectetuerrhoncus.ca', '', 76, 'Steel', 2),
('amet.ornare@mi.co.uk', '', 77, 'Petra', 1),
('auctor.quis.tristique@euismodurna.ca', '', 78, 'Grant', 2),
('dis@amet.edu', '', 79, 'Clare', 2),
('feugiat.Sed.nec@auctorveliteget.co.uk', '', 80, 'Aristotle', 1),
('ut@Nullatempor.co.uk', '', 81, 'Gisela', 2),
('nec.urna.et@eutemporerat.net', '', 82, 'Morgan', 1),
('auctor.vitae@eratnonummy.ca', '', 83, 'Fritz', 2),
('Nam.ligula@malesuadaaugueut.ca', '', 84, 'Ignatius', 2),
('tincidunt.vehicula.risus@Duisa.net', '', 85, 'Lisandra', 1),
('ac.facilisis@dapibusidblandit.co.uk', '', 86, 'Yardley', 2),
('posuere@disparturient.edu', '', 87, 'Bradley', 2),
('non@In.ca', '', 88, 'Cameron', 1),
('Suspendisse.aliquet@imperdietornare.com', '', 89, 'Alexandra', 2),
('ultrices@consectetuer.net', '', 90, 'Grady', 2),
('imperdiet@Aeneanegestashendrerit.edu', '', 91, 'Hamilton', 2),
('ultrices.posuere@porta.com', '', 92, 'Jessica', 1),
('convallis.ante@interdum.co.uk', '', 93, 'Caesar', 1),
('nec.mauris.blandit@adipiscing.com', '', 94, 'Marshall', 2),
('Proin.nisl@Duisatlacus.net', '', 95, 'Christopher', 2),
('Proin@rutrumeuultrices.ca', '', 96, 'Declan', 1),
('auctor@nisisemsemper.ca', '', 97, 'Sasha', 2),
('Nunc@in.co.uk', '', 98, 'Eden', 1),
('lobortis.risus@SuspendisseduiFusce.net', '', 99, 'Jackson', 1),
('blandit.mattis@a.edu', '', 100, 'Shelley', 2),
('email@email.com', '123', 101, 'João Vitor dos Santos', 1),
('email@email.com', '123', 102, 'Jefferson Chaves', 1),
('email@email.com', 'hgdhsgb', 103, 'Davi Henrique dos Santos', 1),
('email@email.com', 'gsdygdg', 104, 'Soleni de Borba dos Santos', 1),
('ahvaghvgha@gt', '135', 105, 'j', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `craques`
--
ALTER TABLE `craques`
  ADD PRIMARY KEY (`id_craques`);

--
-- Indexes for table `curtir_comentar_craques`
--
ALTER TABLE `curtir_comentar_craques`
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_craques` (`id_craques`);

--
-- Indexes for table `curtir_comentar_equipe`
--
ALTER TABLE `curtir_comentar_equipe`
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_equipe` (`id_equipe`);

--
-- Indexes for table `curtir_comentar_esportes`
--
ALTER TABLE `curtir_comentar_esportes`
  ADD KEY `id_esporte` (`id_esporte`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `curtir_comentar_ligas`
--
ALTER TABLE `curtir_comentar_ligas`
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`id_equipe`);

--
-- Indexes for table `equipes_craques`
--
ALTER TABLE `equipes_craques`
  ADD KEY `equipes_craques_ibfk_1` (`id_equipe`),
  ADD KEY `equipes_craques_ibfk_2` (`id_craques`);

--
-- Indexes for table `equipes_ligas`
--
ALTER TABLE `equipes_ligas`
  ADD KEY `id_equipe` (`id_equipe`),
  ADD KEY `id_liga` (`id_liga`);

--
-- Indexes for table `esportes`
--
ALTER TABLE `esportes`
  ADD PRIMARY KEY (`id_esporte`);

--
-- Indexes for table `ligas`
--
ALTER TABLE `ligas`
  ADD PRIMARY KEY (`id_liga`),
  ADD KEY `id_esporte` (`esporte_id_esporte`);

--
-- Indexes for table `rivalidade`
--
ALTER TABLE `rivalidade`
  ADD KEY `id_equipe` (`id_equipe`),
  ADD KEY `possui_id_equipe` (`possui_id_equipe`);

--
-- Indexes for table `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_tipo_usuario` (`tipo_usuario_id_tipo_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `craques`
--
ALTER TABLE `craques`
  MODIFY `id_craques` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `equipes`
--
ALTER TABLE `equipes`
  MODIFY `id_equipe` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `esportes`
--
ALTER TABLE `esportes`
  MODIFY `id_esporte` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ligas`
--
ALTER TABLE `ligas`
  MODIFY `id_liga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id_tipo_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `curtir_comentar_craques`
--
ALTER TABLE `curtir_comentar_craques`
  ADD CONSTRAINT `curtir_comentar_craques_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `curtir_comentar_craques_ibfk_2` FOREIGN KEY (`id_craques`) REFERENCES `craques` (`id_craques`),
  ADD CONSTRAINT `curtir_comentar_craques_ibfk_3` FOREIGN KEY (`id_craques`) REFERENCES `craques` (`id_craques`);

--
-- Limitadores para a tabela `curtir_comentar_equipe`
--
ALTER TABLE `curtir_comentar_equipe`
  ADD CONSTRAINT `curtir_comentar_equipe_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `curtir_comentar_equipe_ibfk_2` FOREIGN KEY (`id_equipe`) REFERENCES `equipes` (`id_equipe`),
  ADD CONSTRAINT `curtir_comentar_equipe_ibfk_3` FOREIGN KEY (`id_equipe`) REFERENCES `equipes` (`id_equipe`);

--
-- Limitadores para a tabela `curtir_comentar_esportes`
--
ALTER TABLE `curtir_comentar_esportes`
  ADD CONSTRAINT `curtir_comentar_esportes_ibfk_1` FOREIGN KEY (`id_esporte`) REFERENCES `esportes` (`id_esporte`),
  ADD CONSTRAINT `curtir_comentar_esportes_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Limitadores para a tabela `curtir_comentar_ligas`
--
ALTER TABLE `curtir_comentar_ligas`
  ADD CONSTRAINT `curtir_comentar_ligas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Limitadores para a tabela `equipes_craques`
--
ALTER TABLE `equipes_craques`
  ADD CONSTRAINT `equipes_craques_ibfk_1` FOREIGN KEY (`id_equipe`) REFERENCES `equipes` (`id_equipe`),
  ADD CONSTRAINT `equipes_craques_ibfk_2` FOREIGN KEY (`id_craques`) REFERENCES `craques` (`id_craques`);

--
-- Limitadores para a tabela `equipes_ligas`
--
ALTER TABLE `equipes_ligas`
  ADD CONSTRAINT `equipes_ligas_ibfk_1` FOREIGN KEY (`id_equipe`) REFERENCES `equipes` (`id_equipe`),
  ADD CONSTRAINT `equipes_ligas_ibfk_2` FOREIGN KEY (`id_liga`) REFERENCES `ligas` (`id_liga`);

--
-- Limitadores para a tabela `ligas`
--
ALTER TABLE `ligas`
  ADD CONSTRAINT `ligas_ibfk_1` FOREIGN KEY (`esporte_id_esporte`) REFERENCES `esportes` (`id_esporte`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`tipo_usuario_id_tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
