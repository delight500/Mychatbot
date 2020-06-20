-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2020 at 12:41 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatbot_hints`
--

CREATE TABLE `chatbot_hints` (
  `id` int(11) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reply` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatbot_hints`
--

INSERT INTO `chatbot_hints` (`id`, `question`, `reply`) VALUES
(1, 'HI||Hello||Hola', 'Hello, how are you.'),
(2, 'How are you', 'Good to see you again!'),
(3, 'what is your name||whats your name', 'My name is Delight\'s Bot'),
(4, 'what should I call you', 'You can call me Delight Bot'),
(5, 'Where are your from', 'I was built in Nigeria'),
(6, 'Bye||See you later||Have a Good Day', 'Sad to see you are going. Have a nice day'),
(7, 'Who designed you', 'i was built by God\'s delight Iworima'),
(8, 'Are you my friend', 'Yes I am and I am here to assist you'),
(9, 'I am fine||fine and you||great', 'Good to know'),
(10, 'help', 'For now these are the commands i understand\r\n1. what is covid19 - to view all what covid19 is about.'),
(11, 'What language were you built with', 'I was built with PHP'),
(12, 'how smart are you', 'I am still been developed at the moment, cant really say'),
(13, 'what is covid19', 'Coronavirus disease 2019 (COVID-19) is an infectious disease caused by severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2). It was first identified in December 2019 in Wuhan, China, and has resulted in an ongoing pandemic.'),
(14, 'Thanks||thanks||thank you||Thank you||Thanks a lot||thanks a lot', 'You are welcome.'),
(15, 'covid19 help', 'comming soon...'),
(16, 'ok||Ok||alright||Alright||i see||Why||why', 'Thanks for your understanding');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `message`, `added_on`, `type`) VALUES
(1, 'Hi i am delight\'s chatbot, for a list of commands i can respond to enter help', '2020-04-22 12:41:04', 'bot'),
(214, 'fine and you', '2020-06-21 12:36:13', 'user'),
(215, 'Good to know', '2020-06-21 12:36:13', 'bot'),
(216, 'help', '2020-06-21 12:37:08', 'user'),
(217, '\r\n	For now these are the commands i understand\r\n	<br>\r\n	1. what is covid19 - to view all what covid19 is about.\r\n	<br>\r\n	2. How are you.\r\n	<br>\r\n	3. what is your name.\r\n	<br>\r\n	4. Where are your from.\r\n	<br>\r\n	\r\n	5. Who designed you.\r\n	<br>\r\n	6. Are you my friend.\r\n	<br>\r\n	7. What language were you built with.\r\n	<br>\r\n	8. how smart are you.\r\n	', '2020-06-21 12:37:08', 'bot'),
(218, 'how smart are you', '2020-06-21 12:37:33', 'user'),
(219, 'I am still been developed at the moment, cant really say', '2020-06-21 12:37:33', 'bot');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatbot_hints`
--
ALTER TABLE `chatbot_hints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatbot_hints`
--
ALTER TABLE `chatbot_hints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
