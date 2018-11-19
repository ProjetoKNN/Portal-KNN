-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19-Nov-2018 às 02:41
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `knn`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `cod` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `rg` varchar(15) NOT NULL,
  `datanascimento` date NOT NULL,
  `telefonealuno` varchar(15) NOT NULL,
  `nomeresponsavel` varchar(150) DEFAULT NULL,
  `telefoneresponsavel` varchar(15) DEFAULT NULL,
  `rua` varchar(50) NOT NULL,
  `numero` int(11) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) CHARACTER SET big5 NOT NULL,
  `estado` varchar(2) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alergiaalimentar` varchar(250) DEFAULT NULL,
  `remedio` varchar(250) DEFAULT NULL,
  `alergia` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`cod`, `nome`, `cpf`, `rg`, `datanascimento`, `telefonealuno`, `nomeresponsavel`, `telefoneresponsavel`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `email`, `alergiaalimentar`, `remedio`, `alergia`) VALUES
(16, 'Wellington Augusto Morais Santoss', '122.800.826-40', '21.445.856', '1999-01-19', '35-98403-6830', 'Tereza Soares de Morais', '35-98436-3704', 'Rua JosÃ© Lopes Palma', 221, 'Residencial ParaÃ­so', 'Parais??polis', 'MG', '37660-000', 'wellingtonmoraisrx@gmail.com', '', '', ''),
(17, 'Rhuan Lucas Carvalho Almeida Silva', '122.715.756-80', '21.674.254', '2000-05-02', '35-99812-4311', 'Rosemara Aparecida Carvalho', '35-98419-3599', 'Adelino Dias de Carvalho', 146, 'Boa Vista 2', 'Parais??po', 'MG', '37660-000', 'rhuanlucas2011@gmail.com', 'Frango', 'Gardenal', 'Rinite'),
(18, 'Guilherme Gomes Ducati', '848.054.400-74', '2.977.269', '1973-04-09', '(82) 9840-1982', NULL, NULL, 'Rua Antenor Gomes de Oliveira', 825, 'Farol', 'Macei?', 'AL', '57055-265', 'guilherme.ducati@hotmail.com', 'nenhum', 'nenhum', 'nenhum'),
(19, 'Pedro Machado Teixeira', '680.483.890-45', '91.122.534-1', '1991-10-09', '(82) 6360-6897', NULL, NULL, 'Rua Antenor Gomes de Oliveira', 825, 'Farol', 'Macei?', 'AL', '57055-80', 'pedro.teixeira@yahoo.com', 'nenhum', 'nenhum', 'nenhum'),
(20, 'Guilherme Augusto InÃ¡cio Nunes', '330.245.250-09', '330.245.25', '2000-01-26', '35-98436-8740', '', '', 'Rua Juscelino K. Oliveira', 353, 'Centro', 'Parais??polis', 'MG', '37660-000', 'gui-inacio-2010@hotmail.com', 'nenhum', 'insulina', 'nenhum'),
(21, 'Rosemara Ap Carvalho', '541.248.431-32', '12.487.985', '1983-03-08', '35-98419-3599', '', '', 'Adelino Dias de Carvalho', 146, 'Boa Vista II', 'Parais??polis', 'MG', '37660-000', 'maracarvalho146@yahoo.com.br', 'nenhum', 'nenhum', 'nenhum'),
(22, 'Wagner de Oliveira Santos', '879.944.558-55', '12.543.558', '1982-12-06', '35-98434-4796', '', '', 'Adelino Dias de Carvalho', 146, 'Boa Vista II', 'Parais??polis', 'MG', '37660-000', 'wagner_ol@gmail.com', 'nenhum', 'nenhum', 'nenhum'),
(23, 'Maria Clara Carvalho Silva', '123.487.287-87', '87.636.463', '2005-07-04', '35-98434-4796', 'Rosemara Ap Carvalho', '35-98419-3599', 'Adelino Dias de Carvalho', 146, 'Boa Vista II', 'Parais??polis', 'MG', '37660-000', 'mariaclara146@gmail.com', 'nenhum', 'nenhum', 'nenhum'),
(24, 'Davi Lucas Carvalho Santos', '843.738.764-28', '38.726.483', '2016-06-08', '35-98434-4796', 'Rosemara Ap Carvalho', '35-98419-3599', 'Adelino Dias de Carvalho', 146, 'Boa Vista II', 'Parais??polis', 'MG', '37660-000', 'davizinho@gmail.com', 'nenhum', 'nenhum', 'nenhum'),
(25, 'Kayky Eduardo Santos', '123.144.839-24', '93.827.342', '2004-09-11', '35-98448-9995', 'Amanda Rafaela Santos ', '35-98459-9522', 'Travessa JoÃ£o Braga', 645, 'Centro', 'Parais??polis', 'MG', '37660-000', 'kakabueno@gmail.com', 'nenhum', 'nenhum', 'nenhum'),
(26, 'Daniela Luzia Nicole Lima', '965.607.846-22', '44.973.669', '1996-11-24', '35-98705-8574', '', '', 'Beco Vinte e TrÃªs-C', 601, 'Vila Cemig', 'Belo Horizonte', 'MG', '30624-450', 'danielaluzianicolelima__danielaluzianicolelima@sen', 'nenhum', 'nenhum', 'nenhum'),
(27, 'Aline Nunes Leite', '172.317.239-18', '18.739.812', '2001-01-15', '35-98482-8273', '', '', 'Rua Gleisson de Souza', 34, 'Boa Vista II', 'Parais??polis', 'MG', '37660-000', 'alinenunesleite@gmail.com', '', '', ''),
(28, 'Elias CÃ¢ndido', '123.767.367-67', '12.738.627', '1999-02-11', '35-83837-7488', '', '', 'Rua do Gesso Grosso', 145, 'Polvilhos', 'Concei?§?£o dos Ouros', 'MG', '37548-000', 'eliasraibownsix@gmail.com', '', '', ''),
(29, 'Maya MaitÃª Aline da Paz', '013.081.546-23', '12.261.036', '1999-08-27', '35-98747-6484', '', '', 'Rua Henrique LibÃ¢nio Rodrigues', 33, 'Centro', 'Parais??polis', 'MG', '37660-000', 'mayahue2@gmail.com', '', '', ''),
(30, 'Matheus Renato Erick Drumond', '871.263.817-26', '87.362.873', '1999-05-08', '35-98374-7488', '', '', 'Rua Sete de Setembro', 344, 'Centro', 'Parais??polis', 'MG', '37660-000', 'matheus23@gmail.com', '', '', ''),
(31, 'Roberto Marley JR', '123.747.830-03', '32.024.928', '2000-02-04', '39-43049-8309', '', '', 'Rua Ganja de Sao Bernardo', 1213, 'Centro', 'Pindamonhangaba', 'SP', '12411-131', 'bobmarley@gmail.com', '', '', ''),
(32, 'Austin Richard Post Malone', '237.427.347-28', '93.874.938', '1998-05-23', '35-98484-8400', '', '', 'Rua Sete de Setembro', 3423, 'Centro', 'Parais??polis', 'MG', '37660-000', 'postmalonerockstar@gmail.com', '', '', ''),
(33, 'Khalid Donnel Robinson', '747.484.939-93', '34.595.005', '1997-02-15', '35-97828-2920', '', '', 'Rua Holly Wood', 37, 'Centro', 'Parais??polis', 'MG', '37660-000', 'khalidJr@gmail.com', '', '', ''),
(34, 'Eric Ghoste', '329.834.928-34', '66.688.484', '1991-04-15', '35-98699-5050', '', '', 'Rua Holly Wood', 666, 'Centro', 'Parais??polis', 'MG', '37660-000', 'ghostemane22@gmail.com', '', '', ''),
(35, 'Sonny John Moore', '837.488.483-7', '84.477.499', '1988-01-15', '35-50586-0585', '', '', 'Rua Gremmy Awards', 5311, 'Centro', 'Parais??polis', 'MG', '37660-000', 'skrillexSonny@gmail.com', '', '', ''),
(36, 'Alessia De Gasperis-Brigante', '982.686.873-87', '87.368.463', '1990-03-17', '35-98888-8748', '', '', 'Rua Sete de Setembro', 444, 'Centro', 'Parais??polis', 'MG', '37660-000', 'kais2sonny@gmail.com', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aulas`
--

CREATE TABLE `aulas` (
  `cod` int(11) NOT NULL,
  `conteudo` varchar(150) NOT NULL,
  `dataaula` date NOT NULL,
  `turma_cod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aulas`
--

INSERT INTO `aulas` (`cod`, `conteudo`, `dataaula`, `turma_cod`) VALUES
(2, 'Verb to be', '2018-11-18', 30),
(3, 'Fluencia', '2018-11-18', 33),
(4, 'Falsos Cognatos', '2018-11-18', 32),
(5, 'IntroduciÃ³n', '2018-11-18', 31),
(6, 'Introduction', '2018-11-18', 29);

-- --------------------------------------------------------

--
-- Estrutura da tabela `boletim`
--

CREATE TABLE `boletim` (
  `cod` int(11) NOT NULL,
  `falta` int(11) DEFAULT NULL,
  `nota1` float DEFAULT NULL,
  `nota2` float DEFAULT NULL,
  `nota3` float DEFAULT NULL,
  `nota4` float DEFAULT NULL,
  `nota5` float DEFAULT NULL,
  `nota6` float DEFAULT NULL,
  `media` float DEFAULT NULL,
  `reposicao` int(11) DEFAULT NULL,
  `aluno_cod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `boletim`
--

INSERT INTO `boletim` (`cod`, `falta`, `nota1`, `nota2`, `nota3`, `nota4`, `nota5`, `nota6`, `media`, `reposicao`, `aluno_cod`) VALUES
(0, 0, 10, 10, 10, 10, 9, 9, 9.66667, 0, 16),
(0, 0, 9, 10, 9, 8, 9, 8, 8.83333, 0, 17),
(0, 1, 7, 8, 7, 5, 9, 2, 6.33333, 1, 18),
(0, 0, 10, 9, 5, 8, 9, 4, 7.5, 1, 19),
(0, 0, 9, 9, 9, 9, 9, 9, 9, 0, 20),
(0, 0, 10, 10, 10, 9, 8, 9, 9.33333, 0, 21),
(0, 0, 10, 10, 9, 9, 9, 8, 9.16667, 0, 22),
(0, 0, 10, 10, 10, 10, 10, 10, 10, 0, 23),
(0, 0, 10, 10, 10, 10, 10, 10, 10, 0, 24),
(0, 1, 7, 7, 7, 7, 8, 7, 7.16667, 1, 25),
(0, 0, 6, 6, 6, 6, 5, 6, 5.83333, 0, 26),
(0, 0, 6, 7, 8, 6, 9, 7, 7.16667, 0, 27),
(0, 1, 1, 4, 5, 7, 8, 10, 5.83333, 2, 28),
(0, 0, 8, 8, 8, 9, 8, 9, 8.33333, 2, 29),
(0, 0, 7, 7, 3, 7, 7, 7, 6.33333, 0, 30),
(0, 0, 10, 9, 8, 9, 9, 8, 8.83333, 0, 31),
(0, 0, 10, 9, 8, 0, 1, 2, 5, 1, 32),
(0, 0, 10, 9, 9, 9, 9, 6, 8.66667, 0, 33),
(0, 0, 10, 10, 10, 3, 3, 3, 6.5, 1, 34),
(0, 0, 10, 10, 10, 10, 10, 9, 9.83333, 0, 35),
(0, 1, 6, 6, 8, 7, 9, 0, 6, 2, 36);

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `nome` varchar(45) NOT NULL,
  `duracao` int(11) NOT NULL,
  `cod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`nome`, `duracao`, `cod`) VALUES
('Ingles', 0, 16),
('Espanhol', 0, 17);

-- --------------------------------------------------------

--
-- Estrutura da tabela `frequencia`
--

CREATE TABLE `frequencia` (
  `aluno_cod` int(11) NOT NULL,
  `aulas_cod` int(11) NOT NULL,
  `falta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `frequencia`
--

INSERT INTO `frequencia` (`aluno_cod`, `aulas_cod`, `falta`) VALUES
(26, 2, 0),
(27, 2, 0),
(28, 2, 1),
(29, 2, 0),
(17, 3, 0),
(21, 3, 0),
(22, 3, 0),
(24, 3, 0),
(25, 3, 1),
(36, 3, 1),
(33, 4, 0),
(34, 4, 0),
(35, 4, 0),
(30, 5, 0),
(31, 5, 0),
(32, 5, 0),
(16, 6, 0),
(18, 6, 1),
(19, 6, 0),
(20, 6, 0),
(23, 6, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `interessados`
--

CREATE TABLE `interessados` (
  `cod` int(11) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `privilegio` int(11) DEFAULT NULL,
  `datav` date DEFAULT NULL,
  `horario` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `usuario` varchar(16) NOT NULL,
  `senha` varchar(16) NOT NULL,
  `privilegio` varchar(3) NOT NULL,
  `al` varchar(15) DEFAULT NULL,
  `pr` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`usuario`, `senha`, `privilegio`, `al`, `pr`) VALUES
('4i20hehe', '4i20', 'usr', '871.263.817-26', NULL),
('adm', 'adm', 'adm', NULL, NULL),
('Ana', 'Ana', 'prf', NULL, '125.558.484-84'),
('dani123', 'dani123', 'usr', '965.607.846-22', NULL),
('davi', 'davizin', 'usr', '843.738.764-28', NULL),
('elias22', 'elias23', 'usr', '123.767.367-67', NULL),
('enzo', 'enzo', 'prf', NULL, '776.855.656-92'),
('esther', 'esteira', 'prf', NULL, '786.441.196-72'),
('guilh', 'guilh', 'usr', '848.054.400-74', NULL),
('kai', 'mind', 'usr', '982.686.873-87', NULL),
('kaykyb126', 'kaykyb741', 'usr', '123.144.839-24', NULL),
('line23', 'line23', 'usr', '172.317.239-18', NULL),
('maraC', 'dmrwr', 'usr', '541.248.431-32', NULL),
('mariacl', 'mariacl', 'usr', '123.487.287-87', NULL),
('maya2', 'mayada', 'usr', '013.081.546-23', NULL),
('mercury', 'venom', 'usr', '329.834.928-34', NULL),
('pedro', 'pedro', 'usr', '680.483.890-45', NULL),
('renato', 'renato', 'prf', NULL, '795.130.846-39'),
('Rhuan', 'Rhuan', 'usr', '122.715.756-80', NULL),
('robson', 'robson', 'prf', NULL, '122.854.584-58'),
('rockstar', 'congratulations', 'usr', '237.427.347-28', NULL),
('skrillex', 'toumind', 'usr', '837.488.483-7', NULL),
('srgui', 'srguixp', 'usr', '330.245.250-09', NULL),
('wagner', 'wagner', 'usr', '879.944.558-55', NULL),
('weeds2', 'weeds3', 'usr', '123.747.830-03', NULL),
('Well', 'Well', 'usr', '122.800.826-40', NULL),
('ydandbroke', 'dumb', 'usr', '747.484.939-93', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `matricula`
--

CREATE TABLE `matricula` (
  `datamatricula` date NOT NULL,
  `aluno_cod` int(11) NOT NULL,
  `turma_cod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `matricula`
--

INSERT INTO `matricula` (`datamatricula`, `aluno_cod`, `turma_cod`) VALUES
('2018-11-18', 16, 29),
('2018-11-18', 17, 33),
('2018-11-18', 18, 29),
('2018-11-18', 19, 29),
('2018-11-18', 20, 29),
('2018-11-18', 21, 33),
('2018-11-18', 22, 33),
('2018-11-18', 23, 29),
('2018-11-18', 24, 33),
('2018-11-18', 25, 33),
('2018-11-18', 26, 30),
('2018-11-18', 27, 30),
('2018-11-18', 28, 30),
('2018-11-18', 29, 30),
('2018-11-18', 30, 31),
('2018-11-18', 31, 31),
('2018-11-18', 32, 31),
('2018-11-18', 33, 32),
('2018-11-18', 34, 32),
('2018-11-18', 35, 32),
('2018-11-18', 36, 33);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamentos`
--

CREATE TABLE `pagamentos` (
  `cod` int(11) NOT NULL,
  `codAluno` int(11) NOT NULL,
  `valor` varchar(100) NOT NULL,
  `datamat` date NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pagamentos`
--

INSERT INTO `pagamentos` (`cod`, `codAluno`, `valor`, `datamat`, `descricao`) VALUES
(17, 16, '80,00', '2018-11-18', 'Mensalidade'),
(18, 17, '80,00', '2018-11-18', 'Mensalidade'),
(19, 18, '80,00', '2018-11-18', 'Mensalidade'),
(20, 19, '80,00', '2018-11-18', 'Mensalidade'),
(21, 20, '80,00', '2018-11-18', 'Mensalidade'),
(22, 21, '80,00', '2018-11-18', 'Mensalidade'),
(23, 22, '80,00', '2018-11-18', 'Mensalidade'),
(24, 23, '80,00', '2018-11-18', 'Mensalidade'),
(25, 24, '80,00', '2018-11-18', 'Mensalidade'),
(26, 25, '80,00', '2018-11-18', 'Mensalidade'),
(27, 26, '80,00', '2018-11-18', 'Mensalidade'),
(28, 27, '80,00', '2018-11-18', 'Mensalidade'),
(29, 28, '80,00', '2018-11-18', 'Mensalidade'),
(30, 29, '80,00', '2018-11-18', 'Mensalidade'),
(31, 30, '80,00', '2018-11-18', 'Mensalidade'),
(32, 31, '80,00', '2018-11-18', 'Mensalidade'),
(33, 32, '80,00', '2018-11-18', 'Mensalidade'),
(34, 33, '80,00', '2018-11-18', 'Mensalidade'),
(35, 34, '80,00', '2018-11-18', 'Mensalidade'),
(36, 35, '80,00', '2018-11-18', 'Mensalidade'),
(37, 36, '80,00', '2018-11-18', 'Mensalidade');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `cod` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `rg` varchar(15) NOT NULL,
  `rua` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `numero` int(11) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`cod`, `nome`, `cpf`, `rg`, `rua`, `email`, `telefone`, `numero`, `bairro`, `cidade`, `estado`) VALUES
(9, 'Robson Silva', '122.854.584-58', '21.544.564', 'Rua GonÃ§alves Torres', 'robinho@gmail.com', '35-98425-4454', 300, 'Bairro do Robinho', 'BrazÃ³polis', 'MG'),
(10, 'Ana Paula da Silva', '125.558.484-84', '21.848.484', 'Rua Julio Pereira de Faria', 'napaula@gmail.com', '35-98454-6546', 88, 'Centro', 'ParaisÃ³polis', 'MG'),
(11, 'Enzo Pietro', '776.855.656-92', '20.302.654', 'Rua GonÃ§alves Torres', 'enzonha@gmail.com', '35- 99624-6828', 300, 'Tijuco Preto', 'BrazÃ³polis', 'MG'),
(12, 'Renato Raimundo', '795.130.846-39', '32.152.904', 'Rua SilÃ©sia Hooper Bastos', 'renatoraimundob@gmail.com', '(32) 98296-92', 533, 'Spina Ville II', 'Juiz de Fora', 'MG'),
(13, 'Esther Laura ', '786.441.196-72', '13.890.237', 'Avenida Primeiro de Junho 545', 'esthero_@regional.com.br', '37-98476-7289', 335, 'Centro', 'DivinÃ³polis', 'MG');

-- --------------------------------------------------------

--
-- Estrutura da tabela `recado`
--

CREATE TABLE `recado` (
  `cod` int(11) NOT NULL,
  `recado` varchar(500) NOT NULL,
  `turma_cod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `cod` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `codProf` int(11) NOT NULL,
  `qtd` int(11) NOT NULL,
  `curso_cod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`cod`, `nome`, `codProf`, `qtd`, `curso_cod`) VALUES
(29, 'English 1', 9, 8, 16),
(30, 'English 2', 10, 8, 16),
(31, 'Spanish 1', 11, 5, 17),
(32, 'Spanish 3', 12, 7, 17),
(33, 'English 3', 13, 9, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`cod`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  ADD UNIQUE KEY `rg_UNIQUE` (`rg`);

--
-- Indexes for table `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `fk_aulas_turma1_idx` (`turma_cod`);

--
-- Indexes for table `boletim`
--
ALTER TABLE `boletim`
  ADD PRIMARY KEY (`aluno_cod`,`cod`),
  ADD KEY `fk_boletim_aluno1_idx` (`aluno_cod`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `frequencia`
--
ALTER TABLE `frequencia`
  ADD PRIMARY KEY (`aulas_cod`,`aluno_cod`),
  ADD KEY `fk_frequencia_aluno1_idx` (`aluno_cod`);

--
-- Indexes for table `interessados`
--
ALTER TABLE `interessados`
  ADD PRIMARY KEY (`cod`),
  ADD UNIQUE KEY `horario_UNIQUE` (`horario`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`usuario`),
  ADD KEY `fk_login_aluno1_idx` (`al`),
  ADD KEY `fk_login_professor1_idx` (`pr`);

--
-- Indexes for table `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`aluno_cod`,`turma_cod`),
  ADD KEY `fk_matricula_turma1_idx` (`turma_cod`);

--
-- Indexes for table `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `fk_pagamentos_aluno1_idx` (`codAluno`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`cod`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  ADD UNIQUE KEY `rg_UNIQUE` (`rg`);

--
-- Indexes for table `recado`
--
ALTER TABLE `recado`
  ADD PRIMARY KEY (`cod`,`turma_cod`),
  ADD KEY `fk_recado_turma1_idx` (`turma_cod`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`cod`,`curso_cod`),
  ADD KEY `fk_turma_professor1_idx` (`codProf`),
  ADD KEY `curso_cod` (`curso_cod`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `interessados`
--
ALTER TABLE `interessados`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pagamentos`
--
ALTER TABLE `pagamentos`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aulas`
--
ALTER TABLE `aulas`
  ADD CONSTRAINT `fk_aulas_turma1` FOREIGN KEY (`turma_cod`) REFERENCES `turma` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `boletim`
--
ALTER TABLE `boletim`
  ADD CONSTRAINT `fk_boletim_aluno1` FOREIGN KEY (`aluno_cod`) REFERENCES `aluno` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `frequencia`
--
ALTER TABLE `frequencia`
  ADD CONSTRAINT `fk_frequencia_aluno1` FOREIGN KEY (`aluno_cod`) REFERENCES `aluno` (`cod`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `frequencia_ibfk_1` FOREIGN KEY (`aulas_cod`) REFERENCES `aulas` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `fk_login_aluno1` FOREIGN KEY (`al`) REFERENCES `aluno` (`cpf`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_login_professor1` FOREIGN KEY (`pr`) REFERENCES `professor` (`cpf`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `fk_matricula_aluno1` FOREIGN KEY (`aluno_cod`) REFERENCES `aluno` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_matricula_turma1` FOREIGN KEY (`turma_cod`) REFERENCES `turma` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD CONSTRAINT `fk_pagamentos_aluno1` FOREIGN KEY (`codAluno`) REFERENCES `aluno` (`cod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `recado`
--
ALTER TABLE `recado`
  ADD CONSTRAINT `fk_recado_turma1` FOREIGN KEY (`turma_cod`) REFERENCES `turma` (`cod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `turma`
--
ALTER TABLE `turma`
  ADD CONSTRAINT `fk_turma_professor1` FOREIGN KEY (`codProf`) REFERENCES `professor` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`curso_cod`) REFERENCES `curso` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
