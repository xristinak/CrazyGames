-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 10, 2021 at 06:13 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unityserver`
--

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
CREATE TABLE IF NOT EXISTS `game` (
  `category` varchar(255) NOT NULL,
  `gameID` int(11) NOT NULL AUTO_INCREMENT,
  `gameName` varchar(255) NOT NULL,
  PRIMARY KEY (`gameID`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`category`, `gameID`, `gameName`) VALUES
('platformer', 1, 'super mario'),
('action ', 2, 'doom'),
('platformer', 3, 'limbo'),
('platformer', 4, 'super meat boy'),
('platformer', 5, 'celeste'),
('platformer', 6, 'hollow knight'),
('platformer', 7, 'crash'),
('puzzle', 8, 'tetris'),
('puzzle', 9, 'lemmings'),
('puzzle', 10, 'sudoku'),
('puzzle', 11, 'portal'),
('puzzle', 12, 'puzzle boble'),
('puzzle', 13, 'minesweeper'),
('puzzle', 14, '2048'),
('puzzle', 15, 'pipe mania'),
('puzzle', 16, 'braid'),
('puzzle', 17, 'brain age'),
('action', 18, 'iron blade'),
('action', 19, 'cover fire'),
('action', 20, 'kung fu'),
('action', 21, 'street fighter'),
('action', 22, 'overkill'),
('action', 23, 'tekken'),
('action', 24, 'mortal combat'),
('action', 25, 'prison escape'),
('action', 26, 'alien zone'),
('action', 27, 'shadow fight'),
('action', 28, 'zombies'),
('action', 29, 'ww2'),
('action', 30, 'stickman'),
('action', 31, 'swat'),
('action', 32, 'cod'),
('action', 33, 'metal gear solid'),
('action', 34, 'crash '),
('action', 35, 'rachet and clank'),
('action', 36, 'rocket league'),
('action', 37, 'final fantasy'),
('strategy', 38, 'tropico'),
('strategy', 39, 'mindustry'),
('strategy', 40, 'the escapist'),
('strategy', 41, 'civilization'),
('strategy', 43, 'civilization'),
('strategy', 44, 'tropico'),
(' strategy', 45, 'holedown'),
('strategy', 46, 'mindustry'),
('strategy', 47, 'the escapist'),
('strategy', 48, 'polytopia'),
('strategy', 49, 'xcom'),
('strategy', 50, 'mwars'),
('strategy', 51, 'fire emblem'),
('strategy', 52, 'pandemic'),
('rpg', 53, 'battle chasers'),
('rpg', 54, 'shaiya'),
('rpg', 55, '4story'),
('rpg', 56, 'lineage'),
('rpg', 57, 'chrono trigger'),
('rpg', 58, 'pokemon'),
('rpg', 59, 'evoland'),
('rpg', 60, 'quest battle'),
('rpg', 61, 'crashlands'),
('rpg', 62, 'pocket mortys'),
('sports', 63, 'nba2k'),
('sports', 64, 'nba jam'),
('sports', 65, 'mlb'),
('sports', 66, 'efootball'),
('sports', 67, 'pes'),
('sports', 68, 'fifa'),
('sports', 69, 'football manager'),
('sports', 70, 'kick hero'),
('sports', 71, 'motorball'),
('sports', 72, 'tennis'),
('adventure', 73, '80 days'),
('adventure', 74, 'crashlands'),
('adventure', 75, 'evoland'),
('adventure', 76, 'pokemon go'),
('adventure', 77, 'odmar'),
('adventure', 78, 'sky'),
('adventure', 79, 'kings'),
('adventure', 80, 'old sins'),
('adventure', 81, 'rusty lake'),
('adventure', 82, 'adventurers'),
('racing', 83, 'f1'),
('racing', 84, 'motogp'),
('racing', 85, 'nfs'),
('racing', 86, 'asphalt 9 '),
('racing', 87, 'eurotruck'),
('racing', 88, 'traffic rider'),
('racing', 89, 'mario kart'),
('racing', 90, 'gear.club'),
('racing', 91, 'hill climb'),
('racing', 92, 'real drift'),
('card', 93, 'AI factory'),
('card', 94, 'clash royale'),
('card', 95, 'clue'),
('card', 96, 'reigns'),
('card', 97, 'quizdom'),
('card', 98, 'cultistSim'),
('card', 99, 'say what'),
('card', 100, 'yu gi oh'),
('card', 101, 'hearthstone'),
('card', 102, 'exploding kittens');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
