-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2016 at 09:25 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ums`
--

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `title`, `content`, `protected`) VALUES
(1, ' Gloucestershire collapse leaves Essex scenting victory', ' A day of which some thought would confirm Essex as favourites to take Division Two''s single promotion place eventually did so but not without suggesting the type of resistance the leaders must overcome if they are to prevail.\r\n\r\nAfter a long day which warmed and brightened and even, at its best, confirmed the arrival of summer, Ryan ten Doeschate''s batsmen need another 197 runs with nine wickets in hand to clinch a victory that would give them a 23-point lead at the top of the table. Essex are in a dominant position but the loss of Jaik Mickleburgh''s wicket three overs before the close will have reminded the visitors that there is still serious work ahead of them.\r\n\r\nBut the rather pleasant state of affairs for supporters travelling from Colchester and Clacton followed two very fruitful sessions for home loyalists in which Gloucestershire''s batsmen had made light of a 78-run first-innings deficit and had themselves established a decent lead of 153 runs with seven wickets in hand at tea.\r\n\r\nGareth Roderick''s century and Chris Dent''s increasingly assured 72 had fortified the hopes of those frequenting the hopes of those in the Churchdown and Charlton Kings marquees that Essex might be set a stiff target on the final day of this match.\r\n\r\nHowever, once the openers were out, ten Doeschate''s bowlers greedily exploited the weakness of Gloucestershire''s later batsmen and the home side lost their last eight wickets for 62 runs with Matt Quinn removing four of the top seven batsmen to end with a match analysis of 11 for 63, comfortably the best of his career.\r\n\r\nGraham Napier also showed what a loss he will be to Essex when he retires at the end of the season by making short work of the Gloucestershire tailenders. The combination of Quinn''s hostility and Napier''s movement finally broke the home side.\r\n\r\nFoster took three catches off Napier and Quinn won a lively red-blooded exchange with Craig Miles, who whacked him for six over midwicket before giving a catch to ten Doeschate at leg slip next ball. Michael Klinger was left undefeated on 53 and three of Gloucestershire''s batsmen scored nearly 80% of their team''s runs  ', 1),
(2, '  CSA cuts Ackerman as host for awards ceremony', ' CSA has removed former South Africa batsman HD Ackerman as the host of its upcoming annual awards ceremony in a bid to to avoid "further potential negative comments" around his announcement that he was emigrating to Australia in September. Ackerman is the fourth South African involved in the country''s cricket structures to move to Australia or New Zealand in the last two months.\r\n\r\n"In view of certain negative comments on social media following HD''s Facebook post that he was leaving South Africa for Australia, we have decided to avoid any further potential negative comments around HD hosting the live CSA Awards," Altaaf Kazi, CSA spokesperson, told Sport24. "We decided to replace him and have no further comments to make in this regard."\r\n\r\nCSA has not revealed who it has appointed as Ackerman''s replacement.\r\n\r\nAckerman had announced his decision to emigrate through a post on Facebook: "It is with a heavy heart that I have to let all my friends know that Kerryn Ackerman, James, Tannah and I will be moving to Perth, Australia in September. It has caused many sleepless nights and even more tears but it is a decision that we have reached as a family and feel it is the best one we can make for our little ones at this time.    ', 0),
(5, 'à¤—à¤à¤°à¤¾à¤¤à¤¿à¤•à¥‹ à¤µà¤°à¥à¤·à¤¾à¤ªà¤›à¤¿ à¤¤à¤®à¥‹à¤° à¤¨à¤¦à¥€ à¤¥à¥à¤¨à¤¿à¤à¤°à¤•à¥‹ à¤', 'à¤¶à¥à¤°à¤¾à¤µà¤£ à¥§, à¥¨à¥¦à¥­à¥©- à¤¤à¤¾à¤ªà¥à¤²à¥‡à¤œà¥à¤™à¤•à¥‹ à¤¤à¤®à¥‹à¤° à¤¨à¤¦à¥€à¤®à¤¾ à¤—à¤à¤°à¤¾à¤¤à¤¿ à¤†à¤à¤•à¥‹ à¤¬à¤¾à¤¢à¥€à¤²à¥‡ à¤¦à¥‹à¤­à¤¾à¤¨ à¤¬à¤œà¤¾à¤°à¤®à¤¾ à¤¨à¤¿à¤°à¥à¤®à¤¾à¤£à¤¾à¤§à¥€à¤¨ à¤®à¥‹à¤Ÿà¤°à¥‡à¤¬à¤² à¤ªà¥à¤² à¤¬à¤—à¤¾à¤à¤•à¥‹ à¤› à¥¤ à¤°à¤¾à¤¤à¤¿ à¥§à¥¨ à¤¦à¥‡à¤–à¤¿ à¥§ à¤¬à¤œà¥‡à¤•à¥‹ à¤¬à¤¿à¤šà¤®à¤¾ à¤†à¤à¤•à¥‹ à¤¬à¤¾à¤¢à¥€à¤²à¥‡ à¤ªà¥‚à¤² à¤¬à¤—à¤¾à¤à¤•à¥‹ à¤¸à¥à¤¥à¤¾à¤¨à¥€à¤¯ à¤µà¥à¤¯à¤µà¤¸à¤¾à¤¯à¥€ à¤Ÿà¤‚à¤• à¤–à¤¤à¤¿à¤µà¤¡à¤¾à¤²à¥‡ à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€ à¤¦à¤¿à¤ à¥¤\r\n\r\nà¤¤à¤¾à¤ªà¥à¤²à¥‡à¤œà¥à¤™à¤•à¥‹ à¤•à¥à¤·à¥‡à¤¤à¥à¤° à¤¨à¤®à¥à¤¬à¤° à¥§ à¤° à¥¨ à¤œà¥‹à¤¡à¥à¤¨à¥‡ à¤‰à¤•à¥à¤¤ à¤ªà¥à¤²à¤•à¥‹ à¤µà¤¾à¤°à¤¿à¤ªà¤¾à¤°à¥€ à¤œà¥‹à¤¡à¥à¤¨à¥‡ à¤•à¤¾à¤® à¤¸à¤•à¤¿à¤à¤•à¥‹ à¤¥à¤¿à¤¯à¥‹ à¥¤ à¥§à¥¦ à¤•à¤°à¥‹à¤¡à¤•à¥‹ à¤²à¤¾à¤—à¤¤à¤®à¤¾ à¤¨à¤¿à¤°à¥à¤®à¤¾à¤£à¤¾à¤§à¥€à¤¨ à¤ªà¥à¤²à¤•à¥‹ à¥¯à¥¦ à¤ªà¥à¤°à¤¤à¤¿à¤¶à¤¤ à¤•à¤¾à¤® à¤¸à¤•à¤¿à¤à¤•à¥‹ à¤‰à¤¤à¥à¤¤à¤° à¤¦à¤•à¥à¤·à¤¿à¤£ à¤²à¥‹à¤•à¤®à¤¾à¤°à¥à¤— à¤†à¤¯à¥‹à¤œà¤¨à¤¾à¤•à¤¾ à¤ªà¥à¤°à¤®à¥‚à¤– à¤•à¥‚à¤¬à¥‡à¤° à¤¨à¥‡à¤ªà¤¾à¤²à¥€à¤²à¥‡ à¤¬à¤¤à¤¾à¤ à¥¤\r\n \r\nà¤¨à¤¦à¥€à¤®à¤¾ à¤ªà¤¾à¤¨à¥€à¤•à¥‹ à¤¸à¤¤à¤¹ à¤…à¤¹à¤¿à¤²à¥‡ à¤¬à¤¿à¤¹à¤¾à¤¨ à¤•à¥‡à¤¹à¥€ à¤˜à¤Ÿà¥‡à¤•à¥‹ à¤° à¤®à¤¾à¤¨à¤µà¥€à¤¯ à¤¬à¤¸à¥à¤¤à¤¿à¤²à¤¾à¤ˆ à¤…à¤¸à¤° à¤¨à¤ªà¤¾à¤°à¥‡à¤•à¥‹ à¤ªà¥à¤°à¤®à¥‚à¤– à¤œà¤¿à¤²à¥à¤²à¤¾ à¤…à¤§à¤¿à¤•à¤¾à¤°à¥€ à¤šà¤•à¥à¤°à¤ªà¤¾à¤£à¥€ à¤ªà¤¾à¤£à¥à¤¡à¥‡à¤²à¥‡ à¤¬à¤¤à¤¾à¤ à¥¤ à¤¸à¤°à¤•à¤¾à¤°à¥€ à¤Ÿà¥‹à¤²à¤¿ à¤…à¤§à¥à¤¯à¤¯à¤¨à¤•à¤¾à¤²à¤¾à¤—à¤¿ à¤…à¤¹à¤¿à¤²à¥‡ à¤¬à¤¿à¤¹à¤¾à¤¨ à¤ªà¥à¤² à¤¬à¤—à¤¾à¤à¤•à¥‹ à¤•à¥à¤·à¥‡à¤¤à¥à¤°à¤®à¤¾ à¤—à¤à¤•à¥‹ à¤› à¥¤\r\n \r\nà¤‰à¤¤à¤¾ à¤…à¤¸à¤¾à¤° à¥¨à¥« à¤—à¤¤à¥‡ à¤¸à¤¾à¤µà¤¾à¤¦à¤¿à¤¨à¤•à¥‹ à¤¨à¤¾à¤•à¥à¤²à¤¾ à¤­à¥€à¤° à¤«à¥à¤Ÿà¥‡à¤°  à¤®à¤¿à¤¤à¥à¤²à¥à¤™ à¤¬à¤œà¤¾à¤° à¤›à¥‡à¤‰à¤®à¤¾ à¤¬à¤¨à¥‡à¤•à¥‹ à¤¤à¤¾à¤² à¤…à¤à¥ˆ à¤¬à¤¢à¥‡à¤•à¥‹ à¤¸à¥à¤¥à¤¾à¤¨à¥€à¤¯à¤²à¥‡ à¤¬à¤¤à¤¾à¤à¤•à¤¾ à¤›à¤¨à¥ à¥¤ à¤—à¤à¤°à¤¾à¤¤à¤¿ à¤ªà¤¨à¤¿ à¤ªà¤¹à¤°à¥‹ à¤¥à¤ª à¤à¤°à¥‡à¤° à¤¤à¤¾à¤²à¤•à¥‹ à¤¸à¤¤à¤¹ à¤…à¤ à¤¬à¤¢à¤¾à¤à¤•à¥‹ à¤®à¤¿à¤¤à¥à¤²à¥à¤™à¤•à¤¾ à¤ªà¤µà¤¨ à¤¶à¥à¤°à¥‡à¤·à¥à¤ à¤²à¥‡ à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€ à¤¦à¤¿à¤ à¥¤', 1),
(6, ' à¤ªà¤¾à¤°à¤¸à¤•à¥‹ à¤ªà¥à¤°à¤­à¤¾à¤µ, à¤‡à¤™à¥à¤²à¥à¤¯à¤¾à¤¨à¥à¤¡ à¤­à¥à¤°à¤®à¤£à¤®à¤¾ à¤¨à¥‡à', '  à¤¯à¤¸à¤…à¤˜à¤¿ à¤¸à¥€à¤¸à¥€à¤¸à¥€à¤•à¥‹ à¤¸à¥à¤°à¥à¤†à¤¤ à¤ªà¤¨à¤¿ à¤°à¤¾à¤®à¥à¤°à¥‹ à¤¥à¤¿à¤¯à¥‹ à¥¤ à¤¸à¤¾à¤—à¤° à¤ªà¤Ÿà¥‡à¤²à¤²à¥‡ à¤° à¤•à¤¿à¤¶à¤¨ à¤¦à¤¾à¤¸à¤¸à¤à¤— à¤®à¤¿à¤²à¥‡à¤° à¤ªà¤¹à¤¿à¤²à¥‹ à¤µà¤¿à¤•à¥‡à¤Ÿà¤®à¤¾ à¥§à¥¦ à¤“à¤­à¤° à¤­à¤¿à¤¤à¥à¤° à¥©à¥« à¤°à¤¨ à¤œà¥‹à¤¡à¥‡ à¥¤ à¤•à¤¿à¤¶à¤¨ à¥§à¥« à¤°à¤¨ à¤¬à¤¨à¤¾à¤ˆ à¤•à¤°à¤£ à¤•à¥‡à¤¸à¥€à¤•à¥‹ à¤¬à¤²à¤®à¤¾ à¤†à¤‰à¤Ÿ à¤­à¤ à¥¤ à¤…à¤¹à¤®à¤¦ à¤‡à¤²à¥‡à¤šà¤²à¤¾à¤ˆ à¤ªà¤¾à¤°à¤¸à¤²à¥‡ à¥« à¤°à¤¨à¤®à¤¾ à¤¬à¥‹à¤²à¥à¤¡ à¤—à¤°à¥‡ à¥¤ à¤œà¥‡à¤®à¥à¤¸ à¤¸à¤¾à¤‰à¤¥à¤—à¥‡à¤Ÿ à¥§à¥« à¤°à¤¨ à¤¬à¤¨à¤¾à¤ˆ à¤¸à¤¨à¥à¤¦à¥€à¤ª à¤²à¤¾à¤®à¤¿à¤›à¤¾à¤¨à¥‡à¤•à¥‹ à¤¶à¤¿à¤•à¤¾à¤° à¤­à¤ à¥¤\r\n\r\nà¤¸à¤¾à¤—à¤° à¤° à¤¸à¥à¤Ÿà¤¿à¤­ à¤¸à¥‡à¤²à¤‰à¤¡à¤²à¥‡ à¤šà¥Œà¤¥à¥‹ à¤µà¤¿à¤•à¥‡à¤Ÿà¤®à¤¾ à¥«à¥¦ à¤°à¤¨ à¤œà¥‹à¤¡à¥‡ à¥¤ à¤¸à¤¨à¥à¤¦à¥€à¤ªà¤•à¥ˆ à¤¬à¤²à¤®à¤¾ à¤¸à¥à¤Ÿà¤®à¥à¤ª à¤¹à¥à¤¨à¥ à¤…à¤—à¤¾à¤¡à¥€ à¤¸à¤¾à¤—à¤°à¤²à¥‡ à¥®à¥¨ à¤¬à¤² à¤–à¥‡à¤²à¥€ à¥¬ à¤šà¥Œà¤•à¤¾ à¤° à¥§ à¤›à¤•à¥à¤•à¤¾à¤¸à¤¹à¤¿à¤¤ à¥¬à¥« à¤°à¤¨ à¤¬à¤¨à¤¾à¤ à¥¤\r\n\r\nà¤¡à¤°à¥à¤¬à¥€à¤¸à¤¾à¤¯à¤°à¤•à¤¾ à¤ªà¥‚à¤°à¥à¤µ à¤–à¥‡à¤²à¤¾à¤¡à¥€ à¤¸à¥‡à¤²à¤‰à¤¡à¤²à¥‡ à¥¬à¥­ à¤°à¤¨ à¤¬à¤¨à¤¾à¤ à¥¤ à¥­à¥© à¤¬à¤²à¤•à¥‹ à¤‡à¤¨à¤¿à¤™à¥à¤¸à¤®à¤¾ à¤‰à¤¨à¤²à¥‡ à¥« à¤šà¥Œà¤•à¤¾ à¤° à¥§ à¤›à¤•à¥à¤•à¤¾ à¤ªà¥à¤°à¤¹à¤¾à¤° à¤—à¤°à¥‡ à¥¤ à¤¸à¥‹à¤®à¤ªà¤¾à¤² à¤•à¤¾à¤®à¥€à¤²à¥‡ à¤‰à¤¨à¤²à¤¾à¤ˆ à¤†à¤‰à¤Ÿ à¤—à¤°à¥‡ à¥¤ à¤¸à¥‹à¤®à¤ªà¤¾à¤²à¤²à¥‡ à¤…à¤¨à¥à¤¤à¤¿à¤® à¤“à¤­à¤°à¤®à¤¾ à¤¨à¤¿à¤• à¤¸à¥à¤Ÿà¥‡à¤­à¤¨à¥à¤¸à¤²à¤¾à¤ˆ à¥¯ à¤°à¤¨à¤®à¤¾ à¤«à¥à¤²à¥‹ à¤¥à¥à¤°à¥à¤®à¤¾ à¤°à¤¨à¤†à¤‰à¤Ÿ à¤—à¤°à¥‡ à¤­à¤¨à¥‡ à¤à¤¨à¥à¤¡à¥à¤°à¥ à¤µà¥‡à¤¸à¥à¤Ÿà¤«à¤²à¤²à¤¾à¤ˆ à¤¶à¥à¤¨à¥à¤¯à¤®à¤¾ à¤¬à¥‹à¤²à¥à¤¡ à¤—à¤°à¥‡ à¥¤ à¤¸à¥‹à¤®à¤ªà¤¾à¤² à¤° à¤¸à¤¨à¥à¤¦à¥€à¤ªà¤²à¥‡ à¥§à¥¦ à¤“à¤­à¤° à¤ªà¥à¤°à¤¾ à¤¬à¤²à¤¿à¤™à¤®à¤¾ à¤•à¥à¤°à¤®à¤¶ à¥©à¥® à¤° à¥©à¥¬ à¤°à¤¨ à¤–à¤°à¥à¤šà¥‡ à¥¤ à¤ªà¤¾à¤°à¤¸ à¤° à¤•à¤°à¤£à¤²à¥‡ à¥¬ à¤“à¤­à¤°à¤®à¤¾ à¤•à¥à¤°à¤®à¤¶ à¥¨à¥« à¤° à¥©à¥« à¤°à¤¨ à¤¦à¤¿à¤ à¥¤ à¤¶à¤•à¥à¤¤à¤¿ à¤—à¥Œà¤šà¤¨ à¤° à¤¸à¤¾à¤—à¤°à¤²à¥‡ à¥­ à¤“à¤­à¤°à¤®à¤¾ à¤•à¥à¤°à¤®à¤¶ à¥¨à¥ª à¤° à¥©à¥ª à¤¤à¤¥à¤¾ à¤œà¥à¤žà¤¾à¤¨à¥‡à¤¨à¥à¤¦à¥à¤°à¤²à¥‡ à¥ª à¤“à¤­à¤°à¤®à¤¾ à¥¨à¥­ à¤°à¤¨ à¤–à¤°à¥à¤šà¥‡ à¥¤', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `user_type` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `user_type`) VALUES
('admin', 'admin', 'admin'),
('kishan', 'kishan', 'subadmin'),
('user', 'user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
