-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 27 mars 2025 à 12:10
-- Version du serveur : 5.7.24
-- Version de PHP : 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `manga`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `id` int(10) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `date de naissance` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id`, `nom`, `date de naissance`) VALUES
 (1, 'Miura', '6 mai 2021'),
 (5, 'Urasawa', '2 janvier 1960'),
 (2, 'Araki', '7 juin 1960'),
 (3, 'Inoue', '12 janvier 1967'),
 (4, 'Oda', '1 janvier 1975');

-- --------------------------------------------------------

--
-- Structure de la table `manga`
--

CREATE TABLE `manga` (
  `id` int(10) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `annee de pub` int(10) NOT NULL,
  `note` int(10) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `manga`
--

INSERT INTO `manga` (`id`, `titre`, `annee de pub`, `note`, `description`) VALUES
    (1, 'Berserk', 1989, 9, 'Guts, a former mercenary now known as the Black Swordsman, is out for revenge. After a tumultuous childhood, he finally finds someone he respects and believes he can trust, only to have everything fall apart when this person takes away everything important to Guts for the purpose of fulfilling his own desires. Now marked for death, Guts becomes condemned to a fate in which he is relentlessly pursued by demonic beings.'),
    (2, 'Jojo part 7', 2004, 9, 'In the American Old West, the world''s greatest race is about to begin. Thousands line up in San Diego to travel over six thousand kilometers for a chance to win the grand prize of fifty million dollars. With the era of the horse reaching its end, contestants are allowed to use any kind of vehicle they wish. Competitors will have to endure grueling conditions, traveling up to a hundred kilometers a day through uncharted wastelands. The Steel Ball Run is truly a one-of-a-kind event.'),
    (3, 'Vagabond', 1998, 9, 'In 16th-century Japan, Shinmen Takezou is a wild, rough young man in both his appearance and his actions.'),
    (4, 'One piece', 1997, 9, 'Gol D. Roger, a man referred to as the King of the Pirates, is set to be executed by the World Government. But just before his demise, he confirms the existence of a great treasure, One Piece, located somewhere within the vast ocean known as the Grand Line. Announcing that One Piece can be claimed by anyone worthy enough to reach it, the King of the Pirates is executed and the Great Age of Pirates begins.'
    (5, 'Monster', 1994, 9, 'Kenzou Tenma, a renowned Japanese neurosurgeon working in post-war Germany, faces a difficult choice: to operate on Johan Liebert, an orphan boy on the verge of death, or on the mayor of Düsseldorf. In the end, Tenma decides to gamble his reputation by saving Johan, effectively leaving the mayor for dead.');



-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE `personnage` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

--
-- Déchargement des données de la table `personnage`
--

INSERT INTO `personnage` (`id`, `nom`, `description`) VALUES
  (1, 'Guts', 'Guts is the protagonist of the story. He is a tall, muscular man with a huge sword called the Dragon Slayer,'),
  (2, 'Casca', 'Casca was the only female soldier in the original Band of the Hawk and is behind only to Guts and Griffith in swordsmanship.'),
  (3, 'Brando', 'Diego is a famous professional jockey from England participating in the Steel Ball Run race across North America.'),
  (4, 'jojo', 'Johnny Joestar, also known as \"Joe Kid\" or \"JoJo\", was a racing prodigy'),
  (5, 'Sasaki Koujiro', 'Hedonist and childhood friend of Musashi. Assumes Sasaki Kojiro\'s identity after a dying Tenki entrusts Kojiro\'s swordsmanship certificates to him.'),
  (6, 'Shinmen Takezo', 'Shinmen Takezo (his birth name) at a very young age embarked on a journey to become the strongest samurai only after being exiled from his own village.'),
  (7, 'Luffy', 'Luffy is the captain of the Straw Hat Pirates and is best friends with all of them and values them over all else.'),
  (8, 'rorona zoro', 'Zoro was the first crew member to be recruited by Luffy. Zoro is a skilled swordsman who fights with his own unique sword style known as santoryu (three katana fighting style).'),
  (9, 'anna liebert', 'Johan\'s twin sister and the only unharmed survivor of the night when both her parents and her brother were shot in what appeared to be a botched burglary. '),
  (10, 'Johan liebert', 'Johan Liebert is the namesake of monster of the story and the mystery of his past is the focus of the plot. He has been called a monster, the next Adolf Hitler and even the devil himself.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
