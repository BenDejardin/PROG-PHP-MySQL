-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 18 Juin 2021 à 13:16
-- Version du serveur :  5.5.48
-- Version de PHP :  5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `MOSAIC_2.0`
--

-- --------------------------------------------------------

--
-- Structure de la table `canevas`
--

CREATE TABLE `canevas` (
  `id_canevas` int(11) NOT NULL,
  `nom_canevas` varchar(255) DEFAULT NULL,
  `date_creation_canevas` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `canevas`
--

INSERT INTO `canevas` (`id_canevas`, `nom_canevas`, `date_creation_canevas`) VALUES
(50, 'Presentation Generale', '2021-05-28'),
(52, 'SMI', '2021-05-28');

-- --------------------------------------------------------

--
-- Structure de la table `Contenu_Canevas`
--

CREATE TABLE `Contenu_Canevas` (
  `id_item` int(11) NOT NULL,
  `nom_canevas` varchar(255) DEFAULT NULL,
  `intitule` varchar(500) DEFAULT NULL,
  `animateur` varchar(100) DEFAULT NULL,
  `date_presentation_prevision` date DEFAULT NULL,
  `date_presentation_reelle` date DEFAULT NULL,
  `date_quiz` date DEFAULT NULL,
  `date_retour_quiz` date DEFAULT NULL,
  `commentaire` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Contenu_Canevas`
--

INSERT INTO `Contenu_Canevas` (`id_item`, `nom_canevas`, `intitule`, `animateur`, `date_presentation_prevision`, `date_presentation_reelle`, `date_quiz`, `date_retour_quiz`, `commentaire`) VALUES
(37, 'Presentation Generale', 'Lâ€™institution', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL),
(43, 'Presentation Generale', 'La DDSI et les sites de production', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL),
(45, 'Presentation Generale', 'Le CTI Melun', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL),
(46, 'Presentation Generale', 'Visite Ã  la CPAM de Melun', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL),
(47, 'Presentation Generale', 'Le S.I. de lâ€™Assurance Maladie', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL),
(48, 'SMI', 'Le SMI et dÃ©marche processus', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL),
(49, 'SMI', 'Visite du service MEP', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL),
(50, 'SMI', 'Visite du service Production', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ContexteEvaluation`
--

CREATE TABLE `ContexteEvaluation` (
  `NumAgent` int(11) NOT NULL,
  `ChoixContexte` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ContexteEvaluation`
--

INSERT INTO `ContexteEvaluation` (`NumAgent`, `ChoixContexte`) VALUES
(6666, 'Nouvel Emploie');

-- --------------------------------------------------------

--
-- Structure de la table `entretien`
--

CREATE TABLE `entretien` (
  `id` int(11) NOT NULL,
  `Nom_Candidat` varchar(30) DEFAULT NULL,
  `Prenom_Candidat` varchar(30) DEFAULT NULL,
  `Date_Debut_Entretien` date DEFAULT NULL,
  `Poste_id` int(11) DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `Nom_Personne_Presente` varchar(30) DEFAULT NULL,
  `Commentaires` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `entretien`
--

INSERT INTO `entretien` (`id`, `Nom_Candidat`, `Prenom_Candidat`, `Date_Debut_Entretien`, `Poste_id`, `Type`, `Nom_Personne_Presente`, `Commentaires`) VALUES
(156, 'Dejardins', 'Benjamins', '2021-06-15', 4, 'PrÃ©sentiel Direction', 'ALO,PIS', 'rigoureux'),
(157, 'Sow', 'Awa', '2021-06-14', 5, 'Telephonique', 'AMA', 'rigoureux'),
(173, 'Vinci', 'LoÃ©nard', '2021-06-17', 8, 'Telephonique', 'PIS', 'Rigoureux'),
(174, 'dcv', 'xc', '2021-06-17', 4, 'Telephonique', '', 'cgh'),
(175, 'vdf', 'fdv', '2021-06-17', 5, 'PrÃ©sentiel Direction', 'ALO,PIS,', 'sdvd');

-- --------------------------------------------------------

--
-- Structure de la table `P2I`
--

CREATE TABLE `P2I` (
  `id` int(11) NOT NULL,
  `numAgent` int(255) NOT NULL DEFAULT '0',
  `nom_canevas` varchar(255) DEFAULT NULL,
  `intitule` varchar(500) DEFAULT NULL,
  `animateur` varchar(255) DEFAULT NULL,
  `date_presentation_prevision` date DEFAULT NULL,
  `date_presentation_reelle` date DEFAULT NULL,
  `date_quiz` date DEFAULT NULL,
  `date_retour_quiz` date DEFAULT NULL,
  `commentaire` varchar(1000) DEFAULT NULL,
  `mois` int(10) DEFAULT NULL,
  `avancementCanevas` varchar(10) DEFAULT NULL,
  `tauxGlobal` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `P2I`
--

INSERT INTO `P2I` (`id`, `numAgent`, `nom_canevas`, `intitule`, `animateur`, `date_presentation_prevision`, `date_presentation_reelle`, `date_quiz`, `date_retour_quiz`, `commentaire`, `mois`, `avancementCanevas`, `tauxGlobal`) VALUES
(649, 1111, 'Presentation Generale', 'Lâ€™institution', 'test', '2020-01-01', '2020-01-01', '2020-01-01', '2020-01-01', NULL, 1, '20 %', ''),
(650, 1111, 'Presentation Generale', 'La DDSI et les sites de production', 'test', '2020-02-01', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '20 %', ''),
(651, 1111, 'Presentation Generale', 'Le CTI Melun', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '20 %', ''),
(652, 1111, 'Presentation Generale', 'Visite Ã  la CPAM de Melun', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '20 %', ''),
(653, 1111, 'Presentation Generale', 'Le S.I. de lâ€™Assurance Maladie', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '20 %', ''),
(654, 1111, 'SMI', 'Le SMI et dÃ©marche processus', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '0 %', ''),
(655, 1111, 'SMI', 'Visite du service MEP', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '0 %', ''),
(656, 1111, 'SMI', 'Visite du service Production', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '0 %', ''),
(742, 2222, 'Presentation Generale', 'Lâ€™institution', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '0 %', ''),
(743, 2222, 'Presentation Generale', 'La DDSI et les sites de production', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '0 %', ''),
(744, 2222, 'Presentation Generale', 'Le CTI Melun', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '0 %', ''),
(745, 2222, 'Presentation Generale', 'Visite Ã  la CPAM de Melun', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '0 %', ''),
(746, 2222, 'Presentation Generale', 'Le S.I. de lâ€™Assurance Maladie', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '0 %', ''),
(747, 2222, 'SMI', 'Le SMI et dÃ©marche processus', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '0 %', ''),
(748, 2222, 'SMI', 'Visite du service MEP', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '0 %', ''),
(749, 2222, 'SMI', 'Visite du service Production', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '0 %', ''),
(757, 3333, 'Presentation Generale', 'Lâ€™institution', 'test', '2021-06-23', '2021-06-09', '0000-00-00', '0000-00-00', NULL, 1, '0 %', ''),
(758, 3333, 'Presentation Generale', 'La DDSI et les sites de production', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '0 %', ''),
(759, 3333, 'Presentation Generale', 'Le CTI Melun', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '0 %', ''),
(760, 3333, 'Presentation Generale', 'Visite Ã  la CPAM de Melun', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '0 %', ''),
(761, 3333, 'Presentation Generale', 'Le S.I. de lâ€™Assurance Maladie', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '0 %', ''),
(764, 4444, 'SMI', 'Le SMI et dÃ©marche processus', 'test', '2020-01-12', '2020-01-12', '2020-01-12', '2020-01-12', NULL, 1, '33.33 %', ''),
(765, 4444, 'SMI', 'Visite du service MEP', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '33.33 %', ''),
(766, 4444, 'SMI', 'Visite du service Production', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '33.33 %', ''),
(767, 5555, 'Presentation Generale', 'Lâ€™institution', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '', ''),
(768, 5555, 'Presentation Generale', 'La DDSI et les sites de production', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '', ''),
(769, 5555, 'Presentation Generale', 'Le CTI Melun', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '', ''),
(770, 5555, 'Presentation Generale', 'Visite Ã  la CPAM de Melun', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '', ''),
(771, 5555, 'Presentation Generale', 'Le S.I. de lâ€™Assurance Maladie', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '', ''),
(772, 5555, 'SMI', 'Le SMI et dÃ©marche processus', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '', ''),
(773, 5555, 'SMI', 'Visite du service MEP', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '', ''),
(774, 5555, 'SMI', 'Visite du service Production', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '', ''),
(782, 1111, 'Presentation Generale', 'Lâ€™institution', 'test', '2020-01-01', '2020-01-01', '2020-01-01', '2020-01-01', NULL, 2, '40 %', ''),
(783, 1111, 'Presentation Generale', 'La DDSI et les sites de production', 'test', '2020-02-01', '2020-02-01', '2020-02-01', '2020-02-01', NULL, 2, '40 %', ''),
(784, 1111, 'Presentation Generale', 'Le CTI Melun', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 2, '40 %', ''),
(785, 1111, 'Presentation Generale', 'Visite Ã  la CPAM de Melun', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 2, '40 %', ''),
(786, 1111, 'Presentation Generale', 'Le S.I. de lâ€™Assurance Maladie', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 2, '40 %', ''),
(787, 1111, 'SMI', 'Le SMI et dÃ©marche processus', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 2, '0 %', ''),
(788, 1111, 'SMI', 'Visite du service MEP', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 2, '0 %', ''),
(789, 1111, 'SMI', 'Visite du service Production', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 2, '0 %', ''),
(797, 6666, 'SMI', 'Le SMI et dÃ©marche processus', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '0 %', ''),
(798, 6666, 'SMI', 'Visite du service MEP', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '0 %', ''),
(799, 6666, 'SMI', 'Visite du service Production', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, 1, '0 %', '');

-- --------------------------------------------------------

--
-- Structure de la table `personnePresente`
--

CREATE TABLE `personnePresente` (
  `id_Personne` int(11) NOT NULL,
  `Nom` varchar(30) DEFAULT NULL,
  `Prenom` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `personnePresente`
--

INSERT INTO `personnePresente` (`id_Personne`, `Nom`, `Prenom`) VALUES
(1, 'LOPEZ', 'Anthony'),
(2, 'ISAIA', 'Philippe'),
(3, 'FONTAINE', 'Didier'),
(4, 'DESJARDINS', 'Jessica'),
(5, 'MANGEOT', 'Arnaud'),
(6, 'LEMESLE', 'Steve');

-- --------------------------------------------------------

--
-- Structure de la table `postePouvoir`
--

CREATE TABLE `postePouvoir` (
  `id` int(11) NOT NULL,
  `Date_Creation` date DEFAULT NULL,
  `Libelle_Emploi` varchar(100) DEFAULT NULL,
  `Niveau_Qualification` varchar(100) DEFAULT NULL,
  `Profil_Recherche` varchar(5000) DEFAULT NULL,
  `Service` varchar(100) DEFAULT NULL,
  `Nombre_Entretien_Telephone` int(50) DEFAULT NULL,
  `Nombre_Entretien_Cadre` int(50) DEFAULT NULL,
  `Nombre_Entretien_Direction` int(50) DEFAULT NULL,
  `Etat` varchar(100) DEFAULT NULL,
  `Date_Modification` date DEFAULT NULL,
  `Expression_besoin` varchar(100) DEFAULT NULL,
  `Candidat_Retenu` varchar(100) DEFAULT NULL,
  `Motif_Poste` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `postePouvoir`
--

INSERT INTO `postePouvoir` (`id`, `Date_Creation`, `Libelle_Emploi`, `Niveau_Qualification`, `Profil_Recherche`, `Service`, `Nombre_Entretien_Telephone`, `Nombre_Entretien_Cadre`, `Nombre_Entretien_Direction`, `Etat`, `Date_Modification`, `Expression_besoin`, `Candidat_Retenu`, `Motif_Poste`) VALUES
(4, '2021-06-02', 'Integration', 'IVA', 'DiplÃ´me / :BAC +2 OU PLUS EN INFORMATIQUE', 'Service Mise en ProductionM. SONGADELE(Respons)', 0, 0, 0, 'AbandonnÃ©', '2021-06-17', '', '', ''),
(5, '2021-06-02', 'Analyste ', 'VB', 'BAC +2 OU PLUS EN INFORMATIQUE', 'Service ProductionMME MANDAR(Responsable)', 0, 0, 0, 'En cours', '2021-06-02', NULL, NULL, NULL),
(6, '2021-06-02', 'Production', 'VA', 'BAC +2 OU PLUS EN INFORMATIQUECompÃ©tent', 'Missions NationalesÂ« METEORe Â»M. RINGUET (Responsable)', 0, 0, 0, 'AffectÃ©', '2021-06-09', NULL, NULL, NULL),
(8, '2021-06-17', 'Cadre', 'VA', 'BAC +2 OU PLUS EN INFORMATIQUE', 'ARPEGE', 0, 0, 0, 'En cours', '2021-06-17', 'MaÃ®trise des outils $universe/univiewer, Sql', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `presentation_generale`
--

CREATE TABLE `presentation_generale` (
  `id` int(11) NOT NULL,
  `intitule` varchar(250) DEFAULT NULL,
  `animateur` varchar(100) DEFAULT NULL,
  `date_presentat_prevision` date DEFAULT NULL,
  `date_presentat_reelle` date DEFAULT NULL,
  `date_quiz` date DEFAULT NULL,
  `date_quiz_retour` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `presentation_generale`
--

INSERT INTO `presentation_generale` (`id`, `intitule`, `animateur`, `date_presentat_prevision`, `date_presentat_reelle`, `date_quiz`, `date_quiz_retour`) VALUES
(1, 'Lâ€™institutions', 'I Fischer', '2020-07-07', '2020-07-08', '2020-07-08', '2020-07-01'),
(2, 'La DDSI et les sites de production', 'I Fischer', '2020-07-09', '2020-07-09', '2020-07-01', '2020-07-09'),
(3, 'Le CTI Melun', 'I Fischer', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(4, 'Visite Ã  la CPAM de Melun', 'I Fischer', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(5, 'Le CTI Melun', 'I Fischer', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(6, 'Lâ€™institution', 'I Fischer', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(7, 'Le C.S.E.', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(8, 'test2', 'test2', '2020-01-01', '0000-00-00', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `qualification`
--

CREATE TABLE `qualification` (
  `id_Qualif` int(11) NOT NULL,
  `Niveau_Qualification` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `qualification`
--

INSERT INTO `qualification` (`id_Qualif`, `Niveau_Qualification`) VALUES
(1, 'IVA'),
(2, 'VB'),
(3, 'VA'),
(4, 'VI');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `idService` int(11) NOT NULL,
  `nomService` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `services`
--

INSERT INTO `services` (`idService`, `nomService`) VALUES
(1, 'Mise en Production'),
(2, 'Production'),
(3, 'METEORe'),
(4, 'ARPEGE');

-- --------------------------------------------------------

--
-- Structure de la table `suivi`
--

CREATE TABLE `suivi` (
  `numAgent` varchar(255) NOT NULL DEFAULT '',
  `typeSuivi` varchar(3) DEFAULT NULL,
  `noms_canevas` varchar(100) DEFAULT NULL,
  `dateCreation` date DEFAULT NULL,
  `nomAgent` varchar(100) DEFAULT NULL,
  `prenomAgent` varchar(100) DEFAULT NULL,
  `serviceAgent` varchar(255) DEFAULT NULL,
  `nomResponsable` varchar(100) DEFAULT NULL,
  `intituleEmploi` varchar(500) DEFAULT NULL,
  `dateDebutPerioddeEssai` date DEFAULT NULL,
  `dateFinPerioddeEssai` date DEFAULT NULL,
  `dateDebutStageProbatoire` date DEFAULT NULL,
  `dateFinStageProbatoire` date DEFAULT NULL,
  `dateCloture` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `suivi`
--

INSERT INTO `suivi` (`numAgent`, `typeSuivi`, `noms_canevas`, `dateCreation`, `nomAgent`, `prenomAgent`, `serviceAgent`, `nomResponsable`, `intituleEmploi`, `dateDebutPerioddeEssai`, `dateFinPerioddeEssai`, `dateDebutStageProbatoire`, `dateFinStageProbatoire`, `dateCloture`) VALUES
('1111', 'P2I', 'Presentation Generale|SMI', '2021-06-17', 'Dejardin', 'Benjamin', 'METEORe', 'P.Ringuet', 'Stage', '2021-05-17', '2021-06-25', '2021-05-17', '2021-06-25', NULL),
('2222', 'P2I', 'Presentation Generale|SMI', '2021-06-17', 'Sow', 'Awa', 'ARPEGE', 'A.Lopez', 'Stage', '0000-00-00', '0000-00-00', '2021-05-17', '2021-06-26', '2021-06-17'),
('3333', 'P2I', 'Presentation Generale', '2021-06-17', 'Anguille', 'ClÃ©ment', 'METEORe', 'P.Ringuet', 'Stage', '2021-06-17', '2021-06-19', '0000-00-00', '0000-00-00', '2021-06-17'),
('4444', 'P2I', 'SMI', '2021-06-17', 'Venezia', 'LorÃ©dana', 'Mise en Production', 'A.Lopez', 'Stage', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('5555', 'P2I', 'Presentation Generale|SMI', '2021-06-17', 'Elise', 'Axel', 'Production', 'A.Lopez', 'Stage', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('6666', 'P2I', 'SMI', '2021-06-18', 'ngf', 'fdhb', 'Mise en Production', 'fbd', 'fbgh', '2021-06-18', '2021-06-18', '2021-06-21', '2021-06-18', '0000-00-00');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `canevas`
--
ALTER TABLE `canevas`
  ADD PRIMARY KEY (`id_canevas`);

--
-- Index pour la table `Contenu_Canevas`
--
ALTER TABLE `Contenu_Canevas`
  ADD PRIMARY KEY (`id_item`);

--
-- Index pour la table `ContexteEvaluation`
--
ALTER TABLE `ContexteEvaluation`
  ADD PRIMARY KEY (`NumAgent`);

--
-- Index pour la table `entretien`
--
ALTER TABLE `entretien`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `P2I`
--
ALTER TABLE `P2I`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `personnePresente`
--
ALTER TABLE `personnePresente`
  ADD UNIQUE KEY `id_Personne` (`id_Personne`);

--
-- Index pour la table `postePouvoir`
--
ALTER TABLE `postePouvoir`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `presentation_generale`
--
ALTER TABLE `presentation_generale`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `qualification`
--
ALTER TABLE `qualification`
  ADD UNIQUE KEY `id_Qualif` (`id_Qualif`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`idService`);

--
-- Index pour la table `suivi`
--
ALTER TABLE `suivi`
  ADD PRIMARY KEY (`numAgent`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `canevas`
--
ALTER TABLE `canevas`
  MODIFY `id_canevas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT pour la table `Contenu_Canevas`
--
ALTER TABLE `Contenu_Canevas`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT pour la table `entretien`
--
ALTER TABLE `entretien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;
--
-- AUTO_INCREMENT pour la table `P2I`
--
ALTER TABLE `P2I`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=800;
--
-- AUTO_INCREMENT pour la table `personnePresente`
--
ALTER TABLE `personnePresente`
  MODIFY `id_Personne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `postePouvoir`
--
ALTER TABLE `postePouvoir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `presentation_generale`
--
ALTER TABLE `presentation_generale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `qualification`
--
ALTER TABLE `qualification`
  MODIFY `id_Qualif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `idService` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
