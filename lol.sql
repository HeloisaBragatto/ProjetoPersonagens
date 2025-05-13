-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/10/2024 às 03:57
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lol`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `personagens`
--

CREATE TABLE `personagens` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `regiao` varchar(100) NOT NULL,
  `historia` varchar(500) NOT NULL,
  `hc` varchar(300) NOT NULL,
  `nivel` int(10) NOT NULL,
  `lancamento` date NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `personagens`
--

INSERT INTO `personagens` (`id`, `nome`, `descricao`, `tipo`, `regiao`, `historia`, `hc`, `nivel`, `lancamento`, `img`) VALUES
(1, 'Mulan', 'Mulan é corajosa e auto-suficiente. Ela não se encaixa com as expectativas de uma jovem chinesa da época, apesar de sua beleza, ela é desajeitada, sem rodeios, silenciosa e recatada. Sua coragem, inteligência e determinação também ajudam ela através de suas aventuras. ', 'lutador', 'China', 'Fa Mulan é baseada no personagem Hua Mulan do poema épico The Ballad of Mulan. Hua Mulan se tornou uma figura lendária. Como pouca evidência existe que não seja o poema, não se sabe se ela foi uma figura real. Hua Mulan parece ser mais mal-humorada, certa de si mesma, socialmente graciosa e sem esforço para talentoso. Fa Mulan é uma adolescente que luta para encontrar seu caminho.', 'Mulan é ágil e possui habilidade com a espada (spadachim) e em kung-fu', 7, '1998-01-01', 'mulan.jpg'),
(2, 'Pocahontas', 'Pocahontas é a filha do Chefe Powhatan, o chefe da tribo dos Powhatans. Ela é uma jovem de 18 anos, magra, de pele bronzeada, longos cabelos negros, e com uma tatuagem avermelhada no braço direito. Como uma índia, ela tem um corpo esbelto. Pocahontas tem boca vermelha e olhos castanhos.', 'magos', 'Matoaka', 'Pocahontas é mostrada como uma mulher altamente espiritual. Ela expressa uma sabedoria além de seus anos e oferece carinho e orientação para aqueles ao seu redor. Ela adora aventura e natureza.', ' Ela possui poderes xamânicos sendo capaz de se comunicar com a natureza, falar com espíritos, ter empatia com animais, e entender línguas desconhecidas.', 7, '1995-02-02', 'pocahontas.jpg'),
(3, 'Elsa', 'Elsa é uma jovem belíssima com uma figura esguia, cabelo platinado loiro, olhos azuis e pele pálida, com um pouquinho de sardas (um traço que ela divide com sua irmã, Anna). Em seu estado pré-Rainha da Neve, ela usava um vestido da cerceta com um corpete com laço bronze, luvas pretas e capa magenta, e seu cabelo estava retido em um coque elaborado. Ela também usava luvas o tempo todo para conter seus poderes. Ela tem o rosto de sua mãe, como durante sua coroação, ela deu uma notável semelhança c', 'magos', 'Arendelle', 'Como rainha, Elsa age calma, reservada e régio, bem experiente na graça e equilíbrio. Quando era mais nova, ela se preocupava fortemente com Anna e, embora fosse a mais madura das duas, ela era muito brincalhona. No entanto, desde que a sua magia quase causou a morte de sua irmã, Elsa tinha vivido com medo em uma grande parte de sua vida, muito nervosa para deixar seus poderes aparecerem. Como resultado, Elsa desejou isolamento de todos que ela se preocupava, incluindo Anna, por medo de que ela ', 'Ela possui completo e total sobre o elemento de gelo e neve.', 9, '2013-02-13', 'elsa.jpg'),
(4, 'Stitch', 'Stitch é a experiência 626 criada por Jumba , Stitch possui 4 braços, antenas e o que pode ser considerado três espinhos saindo de suas costas.', 'assassino', 'Hawai', 'Ele é o mascote de Lilo ,foi adotado por Lilo como um cachorro, mas ao descobrir que Stitch era um alienígena, Lilo passou a gostar ainda mais dele', 'Ele possui superforça e invulnerabilidade, além de ser especialista em escalada.', 10, '2002-06-28', 'stitch.jpg'),
(5, 'Mate', 'Sir Tom Mate, conhecido simplesmente como Mate, de sotaque \"caipira\" e nomeado, por ele mesmo, como o \"maior motorista de ré\" de todos os tempos, é um velho caminhão de reboque enferrujado.', 'tanque', 'Radiator Springs.', 'Mater sempre trabalhou como guincho, ajudando os carros da cidade. Sua aparência desleixada reflete o tempo que ele passou fora de serviço Ao longo das aventuras, Mater prova que, embora possa parecer ingênuo e desastrado, sua sabedoria e bondade o tornam um heroi improvável.', 'Sua experiência e habilidades mecânicas são inigualáveis.', 6, '2006-06-30', 'mate.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
