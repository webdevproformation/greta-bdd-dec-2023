-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 21 Décembre 2023 à 15:00
-- Version du serveur :  5.7.33-0ubuntu0.16.04.1
-- Version de PHP :  7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `final`
--

-- --------------------------------------------------------

--
-- Structure de la table `a`
--

CREATE TABLE `a` (
  `id` int(11) NOT NULL,
  `nom` varchar(5) COLLATE utf8mb4_croatian_ci NOT NULL,
  `dt_creation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Contenu de la table `a`
--

INSERT INTO `a` (`id`, `nom`, `dt_creation`) VALUES
(6, 'elem', '2023-12-27'),
(12, 'zorro', '2023-12-12');

-- --------------------------------------------------------

--
-- Structure de la table `b`
--

CREATE TABLE `b` (
  `id` int(11) NOT NULL,
  `prix` decimal(10,3) NOT NULL,
  `id_a` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Contenu de la table `b`
--

INSERT INTO `b` (`id`, `prix`, `id_a`) VALUES
(5, '10.000', NULL),
(6, '30.000', NULL),
(7, '40.000', 12),
(8, '12.000', 12);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_croatian_ci NOT NULL,
  `id_exo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

-- --------------------------------------------------------

--
-- Structure de la table `exo`
--

CREATE TABLE `exo` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) COLLATE utf8mb4_croatian_ci NOT NULL,
  `description` text COLLATE utf8mb4_croatian_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `dt_creation` datetime NOT NULL,
  `prix` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Contenu de la table `exo`
--

INSERT INTO `exo` (`id`, `nom`, `description`, `active`, `dt_creation`, `prix`) VALUES
(2, 'Céline', 'bonjour céline', 0, '2023-12-21 13:21:25', '200.00'),
(3, 'Denis', 'COucou Denis', 0, '2023-12-12 13:26:29', '50.00'),
(4, 'Zorro', 'coucou', 1, '2023-12-21 13:28:27', '40.52');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `a`
--
ALTER TABLE `a`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `b`
--
ALTER TABLE `b`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_a` (`id_a`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_exo` (`id_exo`),
  ADD KEY `id_exo_2` (`id_exo`);

--
-- Index pour la table `exo`
--
ALTER TABLE `exo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `a`
--
ALTER TABLE `a`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `b`
--
ALTER TABLE `b`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `exo`
--
ALTER TABLE `exo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `b`
--
ALTER TABLE `b`
  ADD CONSTRAINT `b_ibfk_1` FOREIGN KEY (`id_a`) REFERENCES `a` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `etudiant_ibfk_1` FOREIGN KEY (`id_exo`) REFERENCES `exo` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
