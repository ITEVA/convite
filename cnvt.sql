-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 19-Abr-2017 às 14:26
-- Versão do servidor: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cnvt`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `evento`
--

CREATE TABLE `evento` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `evento`
--

INSERT INTO `evento` (`id`, `nome`, `descricao`) VALUES
(1, 'Primeira etapa das ações para fortalecimento das Organizações da Sociedade Civil do Ceará', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inscricao`
--

CREATE TABLE `inscricao` (
  `id` int(11) NOT NULL,
  `id_evento` int(11) NOT NULL,
  `id_convidado` int(11) NOT NULL,
  `presenca` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `inscricao`
--

INSERT INTO `inscricao` (`id`, `id_evento`, `id_convidado`, `presenca`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 1, 6, 1),
(7, 1, 7, 1),
(8, 1, 8, 1),
(9, 1, 9, 1),
(10, 1, 10, 1),
(11, 1, 11, 1),
(12, 1, 12, 1),
(13, 1, 13, 1),
(14, 1, 14, 1),
(15, 1, 15, 1),
(16, 1, 16, 1),
(17, 1, 17, 1),
(18, 1, 18, 1),
(19, 1, 19, 1),
(20, 1, 20, 1),
(21, 1, 21, 1),
(22, 1, 22, 1),
(23, 1, 23, 1),
(24, 1, 24, 1),
(25, 1, 25, 1),
(26, 1, 26, 1),
(27, 1, 27, 1),
(28, 1, 28, 1),
(29, 1, 29, 1),
(30, 1, 30, 1),
(31, 1, 31, 1),
(32, 1, 32, 1),
(33, 1, 33, 1),
(34, 1, 34, 1),
(35, 1, 35, 1),
(36, 1, 36, 1),
(37, 1, 37, 1),
(38, 1, 38, 1),
(39, 1, 39, 1),
(40, 1, 40, 1),
(41, 1, 41, 1),
(42, 1, 42, 1),
(43, 1, 43, 1),
(44, 1, 44, 1),
(45, 1, 45, 1),
(46, 1, 46, 1),
(47, 1, 47, 1),
(48, 1, 48, 1),
(49, 1, 49, 1),
(50, 1, 50, 1),
(51, 1, 51, 1),
(52, 1, 52, 1),
(53, 1, 53, 1),
(54, 1, 54, 1),
(55, 1, 55, 1),
(56, 1, 56, 1),
(57, 1, 57, 1),
(58, 1, 58, 1),
(59, 1, 59, 1),
(60, 1, 60, 1),
(61, 1, 61, 1),
(62, 1, 62, 1),
(63, 1, 63, 1),
(64, 1, 64, 1),
(65, 1, 65, 1),
(66, 1, 66, 1),
(67, 1, 67, 1),
(68, 1, 68, 1),
(69, 1, 69, 1),
(70, 1, 70, 1),
(71, 1, 71, 1),
(72, 1, 72, 1),
(73, 1, 73, 1),
(74, 1, 74, 1),
(75, 1, 75, 0),
(76, 1, 76, 0),
(77, 1, 77, 0),
(78, 1, 78, 0),
(79, 1, 79, 0),
(80, 1, 80, 0),
(81, 1, 81, 0),
(82, 1, 82, 0),
(83, 1, 83, 0),
(84, 1, 84, 0),
(85, 1, 85, 0),
(86, 1, 86, 0),
(87, 1, 87, 0),
(88, 1, 88, 0),
(89, 1, 89, 0),
(90, 1, 90, 0),
(91, 1, 91, 0),
(92, 1, 92, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `instituicao`
--

CREATE TABLE `instituicao` (
  `id` int(11) NOT NULL,
  `cnpj` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `uf` varchar(255) DEFAULT 'CE',
  `cidade` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `status_email` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `instituicao`
--

INSERT INTO `instituicao` (`id`, `cnpj`, `nome`, `email`, `telefone`, `endereco`, `numero`, `complemento`, `uf`, `cidade`, `bairro`, `status_email`) VALUES
(1, NULL, 'Assembleia Legislativa', 'bruna.rolim@al.ce.gov.br', '(85) 3257-9797', 'Rua Barbosa de Freitas', 's/n', NULL, 'CE', 'Fortaleza', 'Dionísio Torres', NULL),
(2, NULL, 'Associação Barraca da Amizade', 'assbarracadaamizade@gmail.com', '(85) 8656-4911', NULL, NULL, NULL, 'CE', 'Fortaleza', NULL, NULL),
(3, NULL, 'Associação Benção Capoeira', 'bencaocapoeirabloq@hotmail.com', '(85) 3361-5040', 'Rua Péricles Ribeiro', 's/n', 'casa', 'CE', 'Aquiraz', 'Prainha', NULL),
(4, '', 'Associação Beneficente dos Moradores do Pau Pombo', NULL, NULL, NULL, NULL, NULL, 'CE', 'Aquiraz', NULL, NULL),
(5, NULL, 'Associação Comunitária dos Moradores da Caponga da Bernarda', 'acmcb.ce@hotmail.com', '(85) 3362-5060', 'Jeronimo Jose da Silva', '256', 'casa', 'CE', 'Aquiraz', 'Caponga da Bernarda', NULL),
(6, NULL, 'Associação dos Esportes Radicais de Aquiraz  - AERA', 'kleber_prainha1@hotmail.com', '(85) 8874-6589', 'Rua João Tomé', '85', NULL, 'CE', 'Aquiraz', 'Prainha', NULL),
(7, NULL, 'Associação do Moradores de Justiniano Serpa', 'betinhoassuncao13@hotmail.com', '(85) 8721-9985', NULL, NULL, NULL, 'CE', 'Aquiraz', NULL, NULL),
(8, NULL, 'Associação dos Moradores do Angorá', 'lucineidebb@hotmail.com', '(85) 8529-2154', 'Rua Ester Pereira de Jesus', 's/n', NULL, 'CE', 'Itaitinga', 'Angorá', NULL),
(9, NULL, 'Associação dos Moradores Amigos do Cauassu', 'amacauassueusebio@yahoo.com.br', '(85) 8779-8074', 'Rua Talita de Araújo', '116', NULL, 'CE', 'Eusébio', 'Cauassu', NULL),
(10, NULL, 'Associação Estação da Luz', 'contato@estacaoluz.org.br', '(85) 3260-5140', 'Rua Zildênia', 's/n', NULL, 'CE', 'Eusébio', 'Tamatanduba', NULL),
(11, NULL, 'Caritas Brasileira Regional Ceará', 'patricia@caritas.org.br', '(85) 3253-6998', NULL, NULL, NULL, 'CE', 'Fortaleza', NULL, NULL),
(12, NULL, 'Casa dos Conselhos', 'conselhosaquiraz@outlook.com', '(85) 8954-0432', 'Travessa Francisco Porfírio de Castro, Casa 04', NULL, NULL, 'CE', 'Aquiraz', 'Alto Alegre', NULL),
(13, NULL, 'Casa Sonho Conhecimento Infantil', 'abrigoinfantil@outlook.com.br', NULL, NULL, NULL, NULL, 'CE', 'Aquiraz', NULL, NULL),
(14, NULL, 'Centro de Defesa da Criança e do Adolescente - CEDECA', 'cedeca@cedecaceara.org.br', '(85) 3252-4202', 'Rua Deputado João Lopes', '83', NULL, 'CE', 'Fortaleza', 'Centro', NULL),
(15, NULL, 'Sem instituição', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(16, NULL, 'ChildFund Brasil', 'jose.wendel@childfundbrasil.org.br', '(85) 32241718', 'Av. Dom Luís', '880', 'Salas 1203/1204', 'CE', 'Fortaleza', 'Aldeota', NULL),
(17, NULL, 'COMDICA', 'ilza-chaves@hotmail.com', '(85) 8879-3737', 'Rua Josmo Gurgel Araújo', NULL, NULL, 'CE', 'Itaitinga', 'Centro', NULL),
(18, NULL, 'Conselho Estadual dos Direitos da Criança e do Adolescente - CEDCA', 'cedcaceara@yahoo.com.br', '(85) 3101-1564', 'Rua Nunes Valente', '2138', NULL, 'CE', 'Fortaleza', 'Dionísio Torres', NULL),
(19, NULL, 'Conselho Regional de Contabilidade do Estado do Ceará - CRCCE', 'claurea@tea.com.br', '(85) 8113-1932', NULL, NULL, NULL, 'CE', 'Fortaleza', NULL, 0),
(20, NULL, 'Cooperbem', NULL, NULL, NULL, NULL, NULL, 'CE', '', '', NULL),
(21, NULL, 'Dialogus Consultoria', 'dialogus@dialogusconsultoria.com.br', '(85) 3181-0087', 'Av. Desembargador Moreira', '2020', 'Sala 907', 'CE', 'Fortaleza', 'Aldeota', NULL),
(22, NULL, 'Frente de Assistência a Criança Carente - FACC', 'facc.4042@hotmail.com', '(85)3257-5642', 'Rua Floro Bartolomeu 264', NULL, NULL, 'CE', 'Fortaleza', NULL, NULL),
(23, NULL, 'Fundação Nova Esperança', 'contato@fundacaonovaesperanca.org.br', '(85) 3361-1310', 'Rua Bacalhau', '01', NULL, 'CE', 'Aquiraz', 'Chácara da Prainha', NULL),
(24, NULL, 'Grupo Bailarinos de Cristo Amor e Doações - BCAD', 'janne_ruth@yahoo.com.br', '(85) 8890-7977', 'Rua Parana', '3', NULL, 'CE', 'Fortaleza', 'Bela Vista', NULL),
(25, NULL, 'Grupo de Apoio a Prevenção a AIDS Ceará - GAPA', 'gapace@gmail.com', '(85) 3253-4159', 'Rua Castro e Silva', '121', 'sala 305', 'CE', 'Fortaleza', 'Centro', NULL),
(26, NULL, 'Instituto de Assistência e Proteção Social - IAPS', 'doacao@iaps.org.br', '(85) 9962-1317', 'Barra Nova', '1000', NULL, 'CE', 'Fortaleza', 'Tancredo Neves', NULL),
(27, NULL, 'Instituto Sinergia Social', 'institutosinergiasocial@gmail.com', '(85) 8826-6959', '', NULL, NULL, 'CE', 'Fortaleza', NULL, 0),
(28, NULL, 'Instituto Povo do Mar - IPOM', 'contato@ipompovodomar.org.br', '(85) 3067-3264', 'Rua Pintor Antônio Bandeira - Praia do Futuro', '1500', 'ap 701', 'CE', 'Fortaleza', 'Vicente Pizon', NULL),
(29, NULL, 'Instituto Sons da Vila', 'institutosonsdavila@gmail.com', '(85)3361-4638', 'Rodovia CE 453, Estrada Caminho do Iguape', '4050', NULL, 'CE', 'Aquiraz', 'Tapera', NULL),
(30, NULL, 'Lar de Crianças Sara e Burton Davis', 'ivone@lardavis.org.br', '(85) 3361-9098', 'Praça Araças', '14', NULL, 'CE', 'Aquiraz', 'Patacas', NULL),
(31, NULL, 'Movimento Saúde Mental Comunitária', 'movimentobj@gmail.com', '(85) 3497-0892', 'Rua Dr. Fernando Augusto', '609', NULL, 'CE', 'Fortaleza', 'Bom Jardim', NULL),
(32, NULL, 'Movimento Teia de Vida', 'anamarianoroes@gmail.com', '(85) 3279-3859', 'Chico Lemos', '200', NULL, 'CE', 'Fortaleza', 'Cidade dos Funcionários', NULL),
(33, NULL, 'OAB - CE', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(34, NULL, 'Prefeitura Municipal de Aquiraz', 'seap@aquiraz.ce.gov.br', '(85) 3361-1854', 'Rua Virgílio Coelho', 's/n', NULL, 'CE', 'Aquiraz', 'Centro', NULL),
(35, NULL, 'Projeto Fundação Farol', 'helanori@hotmail.com', '(85) 9636-1553', NULL, NULL, NULL, 'CE', 'Várzea Alegre', NULL, NULL),
(36, NULL, 'Secretaria do Trabalho e Assistência Social de Aquiraz', 'deniseaguiar.assistenciasocial@aquiraz.ce.gov.br', NULL, NULL, NULL, NULL, 'CE', 'Aquiraz', NULL, NULL),
(37, NULL, 'Secretaria de Saúde', 'vanda.deucila@saude.ce.gov.br', NULL, NULL, NULL, NULL, 'CE', 'Fortaleza', NULL, NULL),
(38, NULL, 'Secretaria do Trabalho e Desenvolvimento Social', 'imprensa@stds.ce.gov.br', '(85) 3101-2093', 'Soriano Albuquerque', '230', NULL, 'CE', 'Fortaleza', 'Joaquim Távora', NULL),
(39, NULL, 'Secretaria e Educação - SEDUC', 'iranir@seduc.ce.gov.br', '(85) 3101-3911', 'Av. Gen. Alfonso Albuquerque Lima', 's/n', NULL, 'CE', 'Fortaleza', 'Cambeba', NULL),
(40, NULL, 'Tapera das Artes', 'presidencia@taperadasartes.org.br', '(85) 3361-2704', 'Rua Antônio Gome dos Santos', 's/n', 'Próximo aos correios', 'CE', 'Aquiraz', 'Centro', NULL),
(41, NULL, 'Instituto Beatriz e Lauro Fiuza - IBLF', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, 0),
(42, NULL, 'Instituto Tecnológico e Vocacional Avançado - ITEVA', 'iteva@iteva.org.br', '(85) 3362-3210', 'CE 040', 's/n', NULL, 'CE', 'Aquiraz', NULL, 0),
(43, NULL, 'Associação Católica Tenda de Cristo', NULL, '(85) 3361-1409', NULL, NULL, NULL, 'CE', NULL, NULL, 0),
(44, NULL, 'Associação de Catadoras e Catadores de Materiais Recicláveis do Eusébio - ACEU', NULL, NULL, NULL, '(85) 8598-7516', NULL, 'CE', 'Eusébio', NULL, 0),
(45, NULL, 'Associação de Pais e Amigos dos Excepcionais de Eusébio', NULL, NULL, NULL, '(85) 8895-4774', NULL, 'CE', 'Eusébio', NULL, 0),
(46, NULL, 'Associação dos Moradores Agentes de Cidadania', NULL, NULL, NULL, '(85) 3361-1205', NULL, 'CE', 'Aquiraz', NULL, 0),
(47, NULL, 'Associação dos Moradores e Amigos do Sítio Guarda e adjacências', NULL, NULL, NULL, '(85) 9726-2865', NULL, 'CE', 'Aquiraz', NULL, 0),
(48, NULL, 'Associação dos Pais de Pessoas - APPE', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(49, NULL, 'Casa Civil', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(50, NULL, 'Casa de Afonso e Maria - ACAM', NULL, '(85) 3262-8537', NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(51, NULL, 'Casa do Menor São Miguel Arcanjo', NULL, '(85) 3289-4344', NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(52, NULL, 'Centro de Defesa dos Direitos Humanos', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(53, NULL, 'Centro Humanitário de Amparo à Maternidade - CHAMA', NULL, NULL, NULL, NULL, NULL, 'CE', 'Eusébio', NULL, NULL),
(54, NULL, 'Conselho CMAS', NULL, NULL, NULL, NULL, NULL, 'CE', 'Itaitinga', NULL, NULL),
(55, NULL, 'Conselho Comunitário Nossa Senhora Aparecida', NULL, '(85) 3260-4504', NULL, NULL, NULL, 'CE', 'Eusébio', NULL, NULL),
(56, NULL, 'Coordenadoria Especial de Políticas Públicas dos Direitos Humanos - COPDH', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(57, NULL, 'Escola de Desenvolvimento e Integração Social para Criança e Adolescente - EDISCA', 'edisca@edisca.org.br', '(85) 3278-1515', NULL, NULL, NULL, 'CE', 'Fortaleza', NULL, NULL),
(59, NULL, 'Empresa de Tecnologia da Informação do Ceará - ETICE', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(60, NULL, 'Fundação Pirata Marinheiros', 'secretariado@fundacaopirata.org.br', NULL, NULL, NULL, NULL, 'CE', 'Fortaleza', NULL, NULL),
(61, NULL, 'Gabinete do Governador', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(62, NULL, 'Instituto da Primeira Infância - IPREDE', NULL, '(85) 3218-4000', NULL, NULL, NULL, 'CE', 'Fortaleza', NULL, NULL),
(63, NULL, 'Instituto Maria de Lourdes', NULL, NULL, NULL, NULL, NULL, 'CE', 'Eusébio', NULL, NULL),
(64, NULL, 'Instituto Sociocultural Conte Comigo', NULL, '(85) 3260-1548', NULL, NULL, NULL, 'CE', 'Eusébio', NULL, 0),
(65, NULL, 'JOCUM - Jovens com uma Missão - Mão Amiga', NULL, NULL, NULL, NULL, NULL, 'CE', 'Aquiraz', NULL, NULL),
(66, NULL, 'LUMEN', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, 0),
(67, NULL, 'Idoso Amado – Resgate da Autoestima', NULL, NULL, NULL, NULL, NULL, 'CE', 'Eusébio', NULL, NULL),
(68, NULL, 'Pastoral do Menor', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(69, NULL, 'Peter Pan', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(70, NULL, 'Portal IEP', 'contato@portaliep.com', '(85) 3348-0120', NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(71, NULL, 'REVART', NULL, '(85) 3046-2482', NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(72, NULL, 'SECITECE/COTEC', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(73, NULL, 'Secretaria de Politicas Sobre Drogas – SPD', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(74, NULL, 'SECULT', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(75, NULL, 'SEMACE', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(76, NULL, 'SEPLAG', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(77, NULL, 'SESPORTE', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(78, NULL, 'SETUR', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(79, NULL, 'SOL NASCENTE', 'servicosocialsolnascenete@gmail.com', '(85) 3469-4437', NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(80, NULL, 'Secretaria de Segurança Pública e Defesa Social - SSPDS', NULL, NULL, NULL, NULL, NULL, 'CE', NULL, NULL, NULL),
(81, NULL, 'VIDANÇA', 'vidanca@vidanca.org.br', NULL, NULL, NULL, NULL, 'CE', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `instituicao_convidado`
--

CREATE TABLE `instituicao_convidado` (
  `id` int(11) NOT NULL,
  `id_instituicao` int(11) DEFAULT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `instituicao_convidado`
--

INSERT INTO `instituicao_convidado` (`id`, `id_instituicao`, `nome`, `email`, `celular`) VALUES
(1, 40, 'Adriana Patrício dos Santos', 'gestaoecaptacaotaperadasartes@hotmail.com', '(85) 9 8754-8496'),
(2, 27, 'Alberto Tavares', 'albertoimagem@gmail.com', '(85) 9 8833-8807'),
(3, 24, 'Alex Silva do Nascimento', 'alex.silva95@yahoo.com.br', '(85) 9 9770-4225'),
(4, 32, 'Ana Maria Norões', 'anamarianoroes@gmail.com', '(85) 9 8858-3859'),
(5, 42, 'Anderson Ribeiro Pires', 'anderson@iteva.org.br', '(85) 9 9616-4562'),
(6, 31, 'Antonio Elizeu de Sousa', 'elizeusousa@gmail.com', '(85) 9 9989-9012'),
(7, 42, 'Antônio Miguel de Sousa Lima', 'miguel.lima@iteva.org.br', '(85) 9 9974-5913'),
(8, 18, 'Armando Luiz Bandeira de Paula', 'DEPAULAARMANDO@YAHOO.COM.BR', '(85) 9 9989-5909'),
(9, 18, 'Aurelina Duarte', NULL, NULL),
(10, 7, 'Betinho', 'betinhoassuncao13@hotmail.com', '(85) 9 8721-9985'),
(11, 41, 'Bia Fiuza Barros', 'ia@iblf.org.br', '(85) 9 9181-6000'),
(12, 2, 'Brigitte Louchez', 'assbarracadaamizade@gmail.com', '(85) 9 8656-4911'),
(13, 1, 'Bruna Bardawil Rolim', 'brunarolim@hotmail.com', '(85) 9 8801-8520'),
(14, 19, 'Cláurea Andréa Moreira Tavares', 'claurea@tea.com.br', '(85) 9 8113-1932'),
(15, 23, 'Clemilce Carvalho Pires', 'clemilce@fundacaonovaesperanca.org.br', '(85) 9 9670-0070'),
(16, 17, 'Cristiane De Oliveira Dantas e Lima', 'josecris1@hotmail.com', '(85) 9 8661-0333'),
(17, 28, 'Dado Montengro', 'dado.montenegro@gmail.com', NULL),
(18, 36, 'Denise Moreira de Aguiar', 'deniseaguiar.assistenciasocial@aquiraz.ce.gov', NULL),
(19, 22, 'Edglê Chagas Mendonça', 'edglemendonca@hotmail.com', '(85) 9 8515-4791'),
(20, 29, 'Elias Soares', 'elias.sonsdavila@gmail.com', '(85) 9 8886-0844'),
(21, 42, 'Fábio Cezar Aidar Beneduce', 'fabio@iteva.org.br', '(85) 9 9616-3543'),
(22, 13, 'Fabiola Alencar', 'abrigoinfantil@outlook.com.br', '(85) 9 8548-7939'),
(23, 28, 'Fabrini Andrade', 'fabrinia@yahoo.com.br', '(85) 9 8742-6147'),
(24, 16, 'Francisco Cristiano Alves da Costa', 'francisco.costa@childfundbrasil.org.br', '(85) 9 9674-6421'),
(25, 17, 'Francisco de Assis da Costa', 'assisdoquixere12@gmail.com', '(85) 9 8574-5514'),
(26, 5, 'Francisco Gomes da Silva', 'acmcb.ce@hotmail.com', '(85) 9 8811-9192'),
(27, 4, 'Francisco José Cavalcante', 'elizoniasalves@gmail.com', '(85) 9 8568-7283'),
(28, 26, 'Francisco José da Silva Ribeiro', 'doacao@iaps.org.br', '(85) 9 9621-3179'),
(29, 40, 'Gilvan Alves de Santana', 'financeiro@taperadasartes.org.br', '(85) 9 8819-9093'),
(30, 35, 'Helano Fiuza', 'helanori@hotmail.com', '(85) 9 9636-1553'),
(31, 23, 'Iracy Mendes Soares', 'fundacaonovaesperanca@oi.com.br', '(85) 9 8831-9678'),
(32, 39, 'Iranir Rodrigues Loiola', 'iranir@seduc.ce.gov.br', '(85) 9 8807-2726'),
(33, 30, 'Ivone Moreira dos Santos', 'ivone@lardavis.org.br', '(85) 9 9188-6539'),
(34, 31, 'Jaciara França de Deus Silva', 'jaciara.msmcbj@gmail.com', '(85) 9 8964-9096'),
(35, 24, 'Jane Ruth Chaves Nascimento Viana', 'janne_ruth@yahoo.com.br', '(85) 9 8890-7977'),
(36, 33, 'João Cavalcante Soares', 'jcavalcante3528@gmail.com', '(85) 9 9192-2626'),
(37, 26, 'João Paulo Ramos', 'jp.recode@hotmail.com', '(85) 9 8656-7490'),
(38, 16, 'José Wendel Cavalcante Ferreira', 'jose.wendel@childfundbrasil.org.br', '(85) 9 9661-7300'),
(39, 42, 'Josinaldo da Silva Batista ', 'josinaldo.batista@iteva.org.br', '(85) 9 9974-6003'),
(40, 28, 'Juliana Matos Ferreira', 'juliana.matosferreira@hotmail.com', '(85) 9 8994-5605'),
(41, 36, 'Katyuscya Arraes', 'financeiro.stas@aquiraz.ce.gov.br', NULL),
(42, 6, 'Kleber Euclides dos Santos', 'kleber_prainha1@hotmail.com', '(85) 9 8874-6589'),
(43, 10, 'Layson Galeno', 'layson1@hotmail.com', '(85) 9 8811-9710'),
(44, 12, 'Lina Maria Machado de Souza', 'linamariamachado13@gmail.com', '(85) 9 8954-0432'),
(45, 29, 'Lucas Oliveira de Almeida', 'lucas.sonsdavila@gmail.com', '(85) 9 8872-0844'),
(46, 14, 'Luciana Costa Brilhante', 'lu.missunshine@gmail.com', '(85) 9 8704-7470'),
(47, 31, 'Luciana Custódio Silva', 'lucianacustodio97@gmail.com', '(85) 9 9721-9301'),
(48, 38, 'Luciene Rolim', 'luciene.rolim@stds.ce.gov.br', '(85) 9 8161-8912'),
(49, 21, 'Maiso Dias', 'maiso@dialogusconsultoria.com.br', '(85) 9 9953-8908'),
(50, 25, 'Makciel Castro Maciel', 'makcielcastro@gmail.com', '(85) 9 8841-1416'),
(51, 21, 'Manoela Silva', 'manoela@dialogusconsultoria.com.br', '(85) 9 8821-3859'),
(52, 29, 'Marcelo Freitas de Carvalho', 'marcelofreitas.cultura@gmail.com', '(85) 9 8830-0844'),
(53, 30, 'Márcio Maciel Gomes', 'marcio@lardavis.org.br', NULL),
(54, 13, 'Maria Auxiliadora', '(85) 9 8935-0702', NULL),
(55, 18, 'Maria da Conceição Nunes', 'ceicanunes@bol.com.br', '(85) 9 7052-9266'),
(56, 5, 'Maria Dione lopes Gomes', 'dionelg@hotmail.com', '(85) 9 8848-4442'),
(57, 12, 'Maria do Rosário Lima Cavalcante Coelho', 'rosariolima.to@gmail.com', '(85) 9 9785-2700'),
(58, 8, 'Maria Lucineide Nascimento da Silva', 'lucineidebb@hotmail.com', '(85) 9 8529-2154'),
(59, 23, 'Maria Socorro Cândido da Costa', 'socorro.candidocosta@gmail.com', '(85) 9 8736-2432'),
(60, 36, 'Michelle Cariello', 'queiroz.cariello@uol.com.br', '(85) 9 9954-9272'),
(61, 16, 'Mirilene Costa de Oliveira Santana', 'mirilene.santana@childfundbrasil.org.br', '(85) 9 9136-4905'),
(62, 14, 'Nadja Furtado Bortolotti', 'nadja@cedecaceara.org.br', '(85) 9 8702-1419'),
(63, 17, 'Otailza de Sousa Moura Chaves', 'ilza-chaves@hotmail.com', '(85) 9 8879-3737'),
(64, 27, 'Pablo de Albuquerque Robles', 'pablodosocial@gmail.com', '(85) 9 8826-6959'),
(65, 11, 'Patrícia Amorim', 'patricia@caritas.org.br', '(85) 9 9950-6521'),
(66, 26, 'Rayssa Stella', 'raystella@live.com', '(85) 9 8683-25-72'),
(67, 30, 'Rebeca  Lopes  de Moura', 'rebeca@lardavis.org.br', '(85) 9 9958-4751'),
(68, 34, 'Ricardo Lima', 'ricardolima7@bol.com.br', '(85) 9 8794-3373'),
(69, 38, 'Rosangela', 'rosangela.lopes@stds.ce.gov.br', '(85) 9 9961-1213'),
(70, 10, 'Sidney Girão de Araújo', 'sidneygirao@hotmail.com', '(85) 9 8801-2019'),
(71, 20, 'Solange Macedo Lima', 'solange.macedo70@yahoo.com', '(85) 9 8152-0191'),
(72, 10, 'Suelem Loiola Noronha', 'suelem@estacaoluz.org.br', '(85) 9 8784-6567'),
(73, 42, 'Vanessa Saraiva Belém', 'vanessa@iteva.org.br', '(85) 9 9974-6432'),
(74, 26, 'Wanderson Oliveira', 'wanderson@iaps.org.br', 'wanderson@iaps.org.br'),
(75, 3, 'Alberto Marcos Fonseca de Sousa', 'canelaprainha@hotmail.com', '(85) 9 8643-6040'),
(76, 6, 'Carlos Kakao', 'canelaprainha@hotmail.com', '(85) 9 8402-7451'),
(77, 6, 'Claudio Lima', 'alohaescoladesurf@hotmail.com', '(85) 9 9939-1734'),
(78, 18, 'Cristhiane Cordeiro', NULL, NULL),
(79, 9, 'Eliábia de Abreu Gomes Barbosa', 'eliabiadaniel@yahoo.com.br', '(85) 9 8779-8074'),
(80, 3, 'Fabricio Fonseca de Sousa', 'fabriciocdap@hotmail.com', '(85) 9 8844-0769'),
(81, 18, 'Fernanda Q. Castelo Branco', NULL, NULL),
(82, 6, 'Haleson Barra', 'kleber_prainha1@hotmail.com', '(85) 9 8874-6588'),
(83, 6, 'Halison Ramos', 'alison2052@hotmail.com', '(85) 9 8749-5316'),
(84, 40, 'Magno Miranda de Souza', 'presidencia@taperadasartes.org.br', '(85) 9 8754-8496'),
(85, 28, 'Marcia Fontenele', 'marcia.fontenele@hotmail.com', '(85) 9 9633-1212'),
(86, 38, 'Mônica Feitosa Gondim', 'monica.gondim@stds.ce.gov.br', '(85) 9 9782-5950'),
(87, 9, 'Natanael Gomes Barbosa', 'natanaelbg@yahoo.com.br', '(85) 9 8515-7636'),
(88, 35, 'Pablo Rolim', 'pablo@pr1engenharia.com.br', NULL),
(89, 6, 'Renato Oliveira', 'kleber_prainha1@hotmail.com', '(85) 9 9927-7404'),
(90, 26, 'Talmaturgo Correia de Alencar Junio', 'talenca@iaps.org.br', '(85) 9 9987-6611'),
(91, 25, 'Thiago Carvalho Valraven da Cunha', 'thiagowalraven@gmail.com', '(85) 8 8528-4318'),
(92, 37, 'Vanda Deucila', 'vanda.deucila@saude.ce.gov.br', NULL),
(93, 2, 'Sávio Azevedo', 'savioaz@hotmail.com', '(85) 9 88227846'),
(94, 43, 'Francileudo Pascoal Moreira', 'francileudopascoal@hotmail.com', '(85) 9 86016789'),
(95, 43, 'Daniele Silva Freitas Pascoal', NULL, '(85) 9 86243267'),
(96, 24, 'José Daivet Silva', 'deivetsilva@yahoo.com.br', '(85) 9 986437050'),
(97, 24, 'Roberto Alves da Silva', 'robertoalves@hotmail.com', '(85) 9 88296362'),
(98, 45, 'Maria Aparecida Paixão', 'macidapaixao@gmail.com', '(85) 9 88954774'),
(99, 46, 'Jesus Miguel Clarindo Cunha', 'jesusmiguelcontabilidade@gamil.com', '(85) 9 88948774'),
(100, 46, 'Maria Gregório da Silva', NULL, '(85) 9 99843864'),
(101, 47, 'Maria Irisnelce Gadelha Martins', 'iris_gadelha@hotmail.com', '(85) 9 97262865'),
(102, 48, 'Maria Silvana Meneses', 'silvanameneses850@gmail.com', '(85) 9 88247628'),
(103, 48, 'Josafá Moreira Dantas', NULL, '(85) 9 85751142'),
(104, 10, 'Sidney', 'sidneygirao@hotmail.com', '(85) 9 88012019'),
(105, 24, 'Flávio Viana', 'jhflavio@globo.com', '(85) 9 88908110'),
(106, 24, 'Cristiane Jucá', 'cristju@yahoo.com.br', '(85) 9 89904552'),
(107, 11, 'Paulo José', 'pauloj.caritas@gmail.com', '(85) 9 87109390'),
(108, 49, 'Rodrigo Martins ', 'rodrigo.martins@casacivil.ce.gov.br', '(85)  3466 4880'),
(109, 50, 'Gilmaise', 'gilmaise@hotmail.com', NULL),
(110, 50, 'Luciane', NULL, NULL),
(111, 51, 'Tiago Alves ', 'tiago_rh@yahoo.com.br', '(85) 9 88304205'),
(112, 51, 'Erica Burlamaqui ', 'ericaburlamaqui@hotmail.com', NULL),
(113, 52, 'Narcélio Ferreira', 'narceliofer@hotmail.com', '(85) 9 87425801'),
(114, 53, 'Larissa Ribeiro', 'lara_baiana@hotmail.com', '(85) 9 87645844'),
(115, 55, 'Maria Tereza Augustinho Batista ', 'm.tereza80@yahoo.com', '(85) 9 87637136'),
(116, 20, 'João Carlos', 'jcslima13@gmail.com', '(85) 9  91320191'),
(117, 56, 'Demitri  Cruz', 'demitri.cruz@gabgov.ce.gov.br ', NULL),
(118, 56, 'Stella Maris', 'Stella.pacheco@gabgov.ce.gov.br', NULL),
(119, 19, 'Clara Germana Gonçalves Rocha', 'presidente@crc-ce.org.br', '(85) 9 87222717'),
(120, 57, 'Andréa', NULL, '(85) 9 86001074'),
(121, 57, 'Clécia', NULL, '(85) 9 88691180'),
(122, 59, 'Alberto Sullivan Estrela', 'sullivan.estrela@etice.ce.gov.br', '(85) 31080028'),
(123, 60, 'Jamile Mª de Melo Rodrigues', 'secretariado@fundacaopirata.org.br', '(85) 9 96824773'),
(124, 61, 'Lucia Pompeu de Vasconcelos Castro', 'lucia.pompeu@gabgov.ce.gov.br', '(85) 34664964'),
(125, 61, 'Carmem Cavalcante', 'carmem.cavalcante@gabgov.ce.gov.br', '(85) 9 88679241'),
(126, 26, 'Ana Paula ', '', '(85) 9 96171499'),
(127, 26, 'Sâmara Maciel', 'samaramaciel@hotmail.com', '(85) 9 89400124'),
(128, 62, 'Sulivan Mota', 'sulivan.mota@iprede.org.br', '(85) 9 87261454'),
(129, 63, 'Aldenor Alcides de Sousa', 'aldenor_sousa@yahoo.com.br', '(85) 9 99782170'),
(130, 64, 'Mônica Marques Ribeiro', 'monicamarques321@gmail.com', '(85) 9 87870909'),
(131, 65, 'Peter Thomas', 'psthomas2000@hotmail.com', '(85) 9 97960019'),
(132, 65, 'Jorge Antônio Macedo de Abreu', 'jorgejosy@hotmail.com', '(85) 9 86003802'),
(133, 66, 'Verônica', 'macivero@hotmail.com', '(85) 9 99948499'),
(134, 67, 'Terezinha Maria de Sousa Moraes', NULL, '(85) 9 88261606'),
(135, 68, 'Francerina Araújo ', 'cerinalac@yahoo.com.br', '(85) 9 96278491'),
(136, 68, 'Aurilene Vidal', 'aurilenevidal@gmail.com', '(85) 9 96165024'),
(137, 69, 'Ana Célia', 'anacelia@app.org.br', '(85) 9 99947393'),
(138, 69, 'Olga Maia', 'olga@app.org.br', NULL),
(139, 70, 'Mônica', NULL, '(85) 9 91231150'),
(140, 70, 'José Luiz', NULL, '(85) 9 91462230'),
(141, 71, 'Noélia', NULL, '(85) 30462482'),
(142, 71, 'Rose', 'rosinhamlima@gmail.com', '(85) 9 98832482'),
(143, 72, 'Flaviana Ferreira Pereira', 'flavianafp@yahoo.com.br', '(85) 31016449'),
(144, 72, 'Meire Celi', 'meire.celi@sct.ce.gov.br', NULL),
(145, 72, 'Bruna Dheingryd', 'bruna.dheingryd@sct.ce.gov.br', ''),
(146, 39, 'Sônia Gonçalves ', 'sonia@seduc.ce.gov.br', NULL),
(147, 73, 'Lidiane N. Rebouças', 'lidiane.reboucas@spd.ce.gov.br', NULL),
(148, 73, 'Cleoneide Félix', 'cleoneide.felix@spd.ce.gov.br', NULL),
(149, 37, 'Márcia Lessa', 'marcia.lessa@saude.ce.gov.br', ''),
(150, 74, 'Janete Venâncio', 'maria.janete@secult.ce.gov.br', NULL),
(151, 74, 'Raimunda Felix', 'ranefelix.rf@gmail.com', ''),
(152, 75, 'Francisco Adauto Vasconcelos Neto', 'adauto.neto@semace.ce.gov.br', '(85) 31015534'),
(153, 76, 'Nádia Reis', 'nadia.reis@seplag.ce.gov.br', NULL),
(154, 76, 'Lúcia Gurjão', 'lucia.gurjao@seplg.ce.gov.br', NULL),
(155, 77, 'Mayara Veras', 'mayaravgl@hotmail .com', NULL),
(156, 77, 'Socorro Leitão', 'socorro.leitao@esporte.ce.gov.br', NULL),
(157, 78, 'Socorro Câmara', 'socorro.camara@setur.ce.gov.br', NULL),
(158, 78, 'Osterne Feitosa F. Neto', 'osterne.feitosa@setur.ce.gov.br', NULL),
(159, 79, 'Juliana', NULL, '(85) 9 94449438'),
(160, 80, 'Émerson Pompeu', 'emersonpompeu@hotmail.com', NULL),
(161, 38, 'Heurenice Souza', 'heurenice.moura@stds.ce.gov.br', NULL),
(162, 40, 'Ritelza Cabral', 'ritelza.adm@gmail.com', NULL),
(163, 81, 'Anália', NULL, '(85) 9 87535262'),
(164, 17, 'Cristiane de Oliveira Dantas e Lima', 'josecris1@hotmail.com', NULL),
(165, 17, 'Francisco de Assis da Costa', NULL, NULL),
(166, 8, 'Maria Lucineide Nascimento da Silva', 'lucineidebb@hotmail.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inscricao`
--
ALTER TABLE `inscricao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idEvento_idx` (`id_evento`),
  ADD KEY `idConvidado_idx` (`id_convidado`);

--
-- Indexes for table `instituicao`
--
ALTER TABLE `instituicao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instituicao_convidado`
--
ALTER TABLE `instituicao_convidado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_intituicao_convidado_idx` (`id_instituicao`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `evento`
--
ALTER TABLE `evento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `inscricao`
--
ALTER TABLE `inscricao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `instituicao`
--
ALTER TABLE `instituicao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `instituicao_convidado`
--
ALTER TABLE `instituicao_convidado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `inscricao`
--
ALTER TABLE `inscricao`
  ADD CONSTRAINT `id_convidado` FOREIGN KEY (`id_convidado`) REFERENCES `instituicao_convidado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_evento` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `instituicao_convidado`
--
ALTER TABLE `instituicao_convidado`
  ADD CONSTRAINT `fk_intituicao_convidado` FOREIGN KEY (`id_instituicao`) REFERENCES `instituicao` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
