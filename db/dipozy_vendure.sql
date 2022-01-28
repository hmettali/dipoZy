-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 26 jan. 2022 à 16:16
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dipozy_vendure`
--

use dipozy_vendure;

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

CREATE TABLE `address` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `fullName` varchar(255) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `streetLine1` varchar(255) NOT NULL,
  `streetLine2` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `province` varchar(255) NOT NULL DEFAULT '',
  `postalCode` varchar(255) NOT NULL DEFAULT '',
  `phoneNumber` varchar(255) NOT NULL DEFAULT '',
  `defaultShippingAddress` tinyint(4) NOT NULL DEFAULT 0,
  `defaultBillingAddress` tinyint(4) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `countryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `administrator`
--

CREATE TABLE `administrator` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `administrator`
--

INSERT INTO `administrator` (`createdAt`, `updatedAt`, `deletedAt`, `firstName`, `lastName`, `emailAddress`, `id`, `userId`) VALUES
('2022-01-19 12:20:41.478192', '2022-01-19 12:20:41.478192', NULL, 'Super', 'Admin', 'superadmin', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `asset`
--

CREATE TABLE `asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `mimeType` varchar(255) NOT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `fileSize` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `focalPoint` text DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `asset`
--

INSERT INTO `asset` (`createdAt`, `updatedAt`, `name`, `type`, `mimeType`, `width`, `height`, `fileSize`, `source`, `preview`, `focalPoint`, `id`) VALUES
('2022-01-19 12:20:44.150603', '2022-01-19 12:20:44.150603', 'derick-david-409858-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1200, 44525, 'source\\b6\\derick-david-409858-unsplash.jpg', 'preview\\71\\derick-david-409858-unsplash__preview.jpg', NULL, 1),
('2022-01-19 12:20:44.440388', '2022-01-19 12:20:44.440388', 'kelly-sikkema-685291-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 47714, 'source\\5a\\kelly-sikkema-685291-unsplash.jpg', 'preview\\b8\\kelly-sikkema-685291-unsplash__preview.jpg', NULL, 2),
('2022-01-19 12:20:44.505213', '2022-01-19 12:20:44.505213', 'oscar-ivan-esquivel-arteaga-687447-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1071, 76870, 'source\\0b\\oscar-ivan-esquivel-arteaga-687447-unsplash.jpg', 'preview\\a1\\oscar-ivan-esquivel-arteaga-687447-unsplash__preview.jpg', NULL, 3),
('2022-01-19 12:20:44.570106', '2022-01-19 12:20:44.570106', 'daniel-korpai-1302051-unsplash.jpg', 'IMAGE', 'image/jpeg', 1280, 1600, 201064, 'source\\28\\daniel-korpai-1302051-unsplash.jpg', 'preview\\d2\\daniel-korpai-1302051-unsplash__preview.jpg', NULL, 4),
('2022-01-19 12:20:44.619173', '2022-01-19 12:20:44.619173', 'alexandru-acea-686569-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 71196, 'source\\e8\\alexandru-acea-686569-unsplash.jpg', 'preview\\9c\\alexandru-acea-686569-unsplash__preview.jpg', NULL, 5),
('2022-01-19 12:20:44.707807', '2022-01-19 12:20:44.707807', 'liam-briese-1128307-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 120523, 'source\\2e\\liam-briese-1128307-unsplash.jpg', 'preview\\58\\liam-briese-1128307-unsplash__preview.jpg', NULL, 6),
('2022-01-19 12:20:44.803945', '2022-01-19 12:20:44.803945', 'florian-olivo-1166419-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 73904, 'source\\63\\florian-olivo-1166419-unsplash.jpg', 'preview\\5a\\florian-olivo-1166419-unsplash__preview.jpg', NULL, 7),
('2022-01-19 12:20:44.972795', '2022-01-19 12:20:44.972795', 'vincent-botta-736919-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1200, 87075, 'source\\59\\vincent-botta-736919-unsplash.jpg', 'preview\\96\\vincent-botta-736919-unsplash__preview.jpg', NULL, 8),
('2022-01-19 12:20:45.150977', '2022-01-19 12:20:45.150977', 'juan-gomez-674574-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1060, 60470, 'source\\b8\\juan-gomez-674574-unsplash.jpg', 'preview\\09\\juan-gomez-674574-unsplash__preview.jpg', NULL, 9),
('2022-01-19 12:20:45.183831', '2022-01-19 12:20:45.183831', 'thomas-q-1229169-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 94113, 'source\\86\\thomas-q-1229169-unsplash.jpg', 'preview\\7b\\thomas-q-1229169-unsplash__preview.jpg', NULL, 10),
('2022-01-19 12:20:45.211597', '2022-01-19 12:20:45.211597', 'adam-birkett-239153-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 17676, 'source\\3c\\adam-birkett-239153-unsplash.jpg', 'preview\\64\\adam-birkett-239153-unsplash__preview.jpg', NULL, 11),
('2022-01-19 12:20:45.237865', '2022-01-19 12:20:45.237865', 'eniko-kis-663725-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 42943, 'source\\1d\\eniko-kis-663725-unsplash.jpg', 'preview\\b5\\eniko-kis-663725-unsplash__preview.jpg', NULL, 12),
('2022-01-19 12:20:45.286507', '2022-01-19 12:20:45.286507', 'brandi-redd-104140-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1110, 91458, 'source\\21\\brandi-redd-104140-unsplash.jpg', 'preview\\9b\\brandi-redd-104140-unsplash__preview.jpg', NULL, 13),
('2022-01-19 12:20:45.331316', '2022-01-19 12:20:45.331316', 'jonathan-talbert-697262-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 103011, 'source\\69\\jonathan-talbert-697262-unsplash.jpg', 'preview\\3c\\jonathan-talbert-697262-unsplash__preview.jpg', NULL, 14),
('2022-01-19 12:20:45.366265', '2022-01-19 12:20:45.366265', 'zoltan-tasi-423051-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 49099, 'source\\92\\zoltan-tasi-423051-unsplash.jpg', 'preview\\21\\zoltan-tasi-423051-unsplash__preview.jpg', NULL, 15),
('2022-01-19 12:20:45.402359', '2022-01-19 12:20:45.402359', 'jakob-owens-274337-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 213089, 'source\\cf\\jakob-owens-274337-unsplash.jpg', 'preview\\5b\\jakob-owens-274337-unsplash__preview.jpg', NULL, 16),
('2022-01-19 12:20:45.441968', '2022-01-19 12:20:45.441968', 'patrick-brinksma-663044-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 190811, 'source\\0f\\patrick-brinksma-663044-unsplash.jpg', 'preview\\bc\\patrick-brinksma-663044-unsplash__preview.jpg', NULL, 17),
('2022-01-19 12:20:45.483035', '2022-01-19 12:20:45.483035', 'chuttersnap-324234-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1068, 118442, 'source\\df\\chuttersnap-324234-unsplash.jpg', 'preview\\95\\chuttersnap-324234-unsplash__preview.jpg', NULL, 18),
('2022-01-19 12:20:45.558752', '2022-01-19 12:20:45.558752', 'robert-shunev-528016-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 36204, 'source\\9e\\robert-shunev-528016-unsplash.jpg', 'preview\\9d\\robert-shunev-528016-unsplash__preview.jpg', NULL, 19),
('2022-01-19 12:20:45.587468', '2022-01-19 12:20:45.587468', 'alexander-andrews-260988-unsplash.jpg', 'IMAGE', 'image/jpeg', 1050, 1600, 65460, 'source\\f8\\alexander-andrews-260988-unsplash.jpg', 'preview\\ef\\alexander-andrews-260988-unsplash__preview.jpg', NULL, 20),
('2022-01-19 12:20:45.639619', '2022-01-19 12:20:45.639619', 'mikkel-bech-748940-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1130, 62785, 'source\\29\\mikkel-bech-748940-unsplash.jpg', 'preview\\2f\\mikkel-bech-748940-unsplash__preview.jpg', NULL, 21),
('2022-01-19 12:20:45.691346', '2022-01-19 12:20:45.691346', 'stoica-ionela-530966-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 50995, 'source\\b1\\stoica-ionela-530966-unsplash.jpg', 'preview\\34\\stoica-ionela-530966-unsplash__preview.jpg', NULL, 22),
('2022-01-19 12:20:45.747785', '2022-01-19 12:20:45.747785', 'neonbrand-428982-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1332, 169677, 'source\\3c\\neonbrand-428982-unsplash.jpg', 'preview\\4f\\neonbrand-428982-unsplash__preview.jpg', NULL, 23),
('2022-01-19 12:20:45.787480', '2022-01-19 12:20:45.787480', 'michael-guite-571169-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 240247, 'source\\ab\\michael-guite-571169-unsplash.jpg', 'preview\\96\\michael-guite-571169-unsplash__preview.jpg', NULL, 24),
('2022-01-19 12:20:45.815737', '2022-01-19 12:20:45.815737', 'max-tarkhov-737999-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1280, 192508, 'source\\ed\\max-tarkhov-737999-unsplash.jpg', 'preview\\35\\max-tarkhov-737999-unsplash__preview.jpg', NULL, 25),
('2022-01-19 12:20:45.843240', '2022-01-19 12:20:45.843240', 'nik-shuliahin-619349-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1020, 130437, 'source\\87\\nik-shuliahin-619349-unsplash.jpg', 'preview\\d6\\nik-shuliahin-619349-unsplash__preview.jpg', NULL, 26),
('2022-01-19 12:20:45.895651', '2022-01-19 12:20:45.895651', 'ben-hershey-574483-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1070, 77118, 'source\\f3\\ben-hershey-574483-unsplash.jpg', 'preview\\30\\ben-hershey-574483-unsplash__preview.jpg', NULL, 27),
('2022-01-19 12:20:45.942233', '2022-01-19 12:20:45.942233', 'tommy-bebo-600358-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 262335, 'source\\ac\\tommy-bebo-600358-unsplash.jpg', 'preview\\0f\\tommy-bebo-600358-unsplash__preview.jpg', NULL, 28),
('2022-01-19 12:20:45.972275', '2022-01-19 12:20:45.972275', 'chuttersnap-584518-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1068, 76330, 'source\\20\\chuttersnap-584518-unsplash.jpg', 'preview\\ed\\chuttersnap-584518-unsplash__preview.jpg', NULL, 29),
('2022-01-19 12:20:46.127074', '2022-01-19 12:20:46.127074', 'imani-clovis-234736-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 99111, 'source\\de\\imani-clovis-234736-unsplash.jpg', 'preview\\0f\\imani-clovis-234736-unsplash__preview.jpg', NULL, 30),
('2022-01-19 12:20:46.234969', '2022-01-19 12:20:46.234969', 'xavier-teo-469050-unsplash.jpg', 'IMAGE', 'image/jpeg', 1200, 1600, 167599, 'source\\5c\\xavier-teo-469050-unsplash.jpg', 'preview\\3c\\xavier-teo-469050-unsplash__preview.jpg', NULL, 31),
('2022-01-19 12:20:46.340078', '2022-01-19 12:20:46.340078', 'thomas-serer-420833-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1223, 78999, 'source\\55\\thomas-serer-420833-unsplash.jpg', 'preview\\a2\\thomas-serer-420833-unsplash__preview.jpg', NULL, 32),
('2022-01-19 12:20:46.443282', '2022-01-19 12:20:46.443282', 'nikolai-chernichenko-1299748-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 56282, 'source\\01\\nikolai-chernichenko-1299748-unsplash.jpg', 'preview\\00\\nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, 33),
('2022-01-19 12:20:46.552746', '2022-01-19 12:20:46.552746', 'mitch-lensink-256007-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 154988, 'source\\2b\\mitch-lensink-256007-unsplash.jpg', 'preview\\aa\\mitch-lensink-256007-unsplash__preview.jpg', NULL, 34),
('2022-01-19 12:20:46.683857', '2022-01-19 12:20:46.683857', 'charles-deluvio-695736-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 54419, 'source\\92\\charles-deluvio-695736-unsplash.jpg', 'preview\\78\\charles-deluvio-695736-unsplash__preview.jpg', NULL, 35),
('2022-01-19 12:20:46.765388', '2022-01-19 12:20:46.765388', 'natalia-y-345738-unsplash.jpg', 'IMAGE', 'image/jpeg', 900, 1600, 97819, 'source\\17\\natalia-y-345738-unsplash.jpg', 'preview\\14\\natalia-y-345738-unsplash__preview.jpg', NULL, 36),
('2022-01-19 12:20:46.813930', '2022-01-19 12:20:46.813930', 'alex-rodriguez-santibanez-200278-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 176280, 'source\\ff\\alex-rodriguez-santibanez-200278-unsplash.jpg', 'preview\\5b\\alex-rodriguez-santibanez-200278-unsplash__preview.jpg', NULL, 37),
('2022-01-19 12:20:46.841827', '2022-01-19 12:20:46.841827', 'silvia-agrasar-227575-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1063, 119654, 'source\\d5\\silvia-agrasar-227575-unsplash.jpg', 'preview\\29\\silvia-agrasar-227575-unsplash__preview.jpg', NULL, 38),
('2022-01-19 12:20:46.869253', '2022-01-19 12:20:46.869253', 'caleb-george-536388-unsplash.jpg', 'IMAGE', 'image/jpeg', 1200, 1600, 184968, 'source\\f0\\caleb-george-536388-unsplash.jpg', 'preview\\6d\\caleb-george-536388-unsplash__preview.jpg', NULL, 39),
('2022-01-19 12:20:46.914361', '2022-01-19 12:20:46.914361', 'annie-spratt-78044-unsplash.jpg', 'IMAGE', 'image/jpeg', 1115, 1600, 173536, 'source\\f1\\annie-spratt-78044-unsplash.jpg', 'preview\\81\\annie-spratt-78044-unsplash__preview.jpg', NULL, 40),
('2022-01-19 12:20:46.946351', '2022-01-19 12:20:46.946351', 'zoltan-kovacs-642412-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 72752, 'source\\e3\\zoltan-kovacs-642412-unsplash.jpg', 'preview\\88\\zoltan-kovacs-642412-unsplash__preview.jpg', NULL, 41),
('2022-01-19 12:20:46.988574', '2022-01-19 12:20:46.988574', 'mark-tegethoff-667351-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1200, 79857, 'source\\e6\\mark-tegethoff-667351-unsplash.jpg', 'preview\\f3\\mark-tegethoff-667351-unsplash__preview.jpg', NULL, 42),
('2022-01-19 12:20:47.015634', '2022-01-19 12:20:47.015634', 'vincent-liu-525429-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 77358, 'source\\10\\vincent-liu-525429-unsplash.jpg', 'preview\\44\\vincent-liu-525429-unsplash__preview.jpg', NULL, 43),
('2022-01-19 12:20:47.066617', '2022-01-19 12:20:47.066617', 'neslihan-gunaydin-3493-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 152486, 'source\\01\\neslihan-gunaydin-3493-unsplash.jpg', 'preview\\7d\\neslihan-gunaydin-3493-unsplash__preview.jpg', NULL, 44),
('2022-01-19 12:20:47.095405', '2022-01-19 12:20:47.095405', 'florian-klauer-14840-unsplash.jpg', 'IMAGE', 'image/jpeg', 800, 1200, 17149, 'source\\a9\\florian-klauer-14840-unsplash.jpg', 'preview\\ef\\florian-klauer-14840-unsplash__preview.jpg', NULL, 45),
('2022-01-19 12:20:47.122821', '2022-01-19 12:20:47.122821', 'nathan-fertig-249917-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 113855, 'source\\68\\nathan-fertig-249917-unsplash.jpg', 'preview\\69\\nathan-fertig-249917-unsplash__preview.jpg', NULL, 46),
('2022-01-19 12:20:47.149674', '2022-01-19 12:20:47.149674', 'paul-weaver-1120584-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 65612, 'source\\14\\paul-weaver-1120584-unsplash.jpg', 'preview\\3e\\paul-weaver-1120584-unsplash__preview.jpg', NULL, 47),
('2022-01-19 12:20:47.188922', '2022-01-19 12:20:47.188922', 'pierre-chatel-innocenti-483198-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 32036, 'source\\39\\pierre-chatel-innocenti-483198-unsplash.jpg', 'preview\\5f\\pierre-chatel-innocenti-483198-unsplash__preview.jpg', NULL, 48),
('2022-01-19 12:20:47.219400', '2022-01-19 12:20:47.219400', 'abel-y-costa-716024-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 103392, 'source\\46\\abel-y-costa-716024-unsplash.jpg', 'preview\\40\\abel-y-costa-716024-unsplash__preview.jpg', NULL, 49),
('2022-01-19 12:20:47.260255', '2022-01-19 12:20:47.260255', 'kari-shea-398668-unsplash.jpg', 'IMAGE', 'image/jpeg', 1048, 1500, 181352, 'source\\4f\\kari-shea-398668-unsplash.jpg', 'preview\\3b\\kari-shea-398668-unsplash__preview.jpg', NULL, 50),
('2022-01-19 12:20:47.294899', '2022-01-19 12:20:47.294899', 'andres-jasso-220776-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1104, 100927, 'source\\f1\\andres-jasso-220776-unsplash.jpg', 'preview\\09\\andres-jasso-220776-unsplash__preview.jpg', NULL, 51),
('2022-01-19 12:20:47.327774', '2022-01-19 12:20:47.327774', 'ruslan-bardash-351288-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 47113, 'source\\95\\ruslan-bardash-351288-unsplash.jpg', 'preview\\d0\\ruslan-bardash-351288-unsplash__preview.jpg', NULL, 52),
('2022-01-19 12:20:47.365149', '2022-01-19 12:20:47.365149', 'benjamin-voros-310026-unsplash.jpg', 'IMAGE', 'image/jpeg', 1200, 1600, 218391, 'source\\7a\\benjamin-voros-310026-unsplash.jpg', 'preview\\72\\benjamin-voros-310026-unsplash__preview.jpg', NULL, 53),
('2022-01-19 12:20:47.392808', '2022-01-19 12:20:47.392808', 'jean-philippe-delberghe-1400011-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 64529, 'source\\94\\jean-philippe-delberghe-1400011-unsplash.jpg', 'preview\\b1\\jean-philippe-delberghe-1400011-unsplash__preview.jpg', NULL, 54);

-- --------------------------------------------------------

--
-- Structure de la table `asset_channels_channel`
--

CREATE TABLE `asset_channels_channel` (
  `assetId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `asset_channels_channel`
--

INSERT INTO `asset_channels_channel` (`assetId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1);

-- --------------------------------------------------------

--
-- Structure de la table `asset_tags_tag`
--

CREATE TABLE `asset_tags_tag` (
  `assetId` int(11) NOT NULL,
  `tagId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `authentication_method`
--

CREATE TABLE `authentication_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `identifier` varchar(255) DEFAULT NULL,
  `passwordHash` varchar(255) DEFAULT NULL,
  `verificationToken` varchar(255) DEFAULT NULL,
  `passwordResetToken` varchar(255) DEFAULT NULL,
  `identifierChangeToken` varchar(255) DEFAULT NULL,
  `pendingIdentifier` varchar(255) DEFAULT NULL,
  `strategy` varchar(255) DEFAULT NULL,
  `externalIdentifier` varchar(255) DEFAULT NULL,
  `metadata` text DEFAULT NULL,
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `authentication_method`
--

INSERT INTO `authentication_method` (`createdAt`, `updatedAt`, `identifier`, `passwordHash`, `verificationToken`, `passwordResetToken`, `identifierChangeToken`, `pendingIdentifier`, `strategy`, `externalIdentifier`, `metadata`, `id`, `type`, `userId`) VALUES
('2022-01-19 12:20:41.457722', '2022-01-19 12:20:41.000000', 'superadmin', '$2b$12$9wFTIiiLPOrk.hE2WdAtZ.zWZ7L8Pxqj9SWKTjMgGJd/ydJEeav7q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'NativeAuthenticationMethod', 1);

-- --------------------------------------------------------

--
-- Structure de la table `channel`
--

CREATE TABLE `channel` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `defaultLanguageCode` varchar(255) NOT NULL,
  `currencyCode` varchar(255) NOT NULL,
  `pricesIncludeTax` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL,
  `defaultTaxZoneId` int(11) DEFAULT NULL,
  `defaultShippingZoneId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `channel`
--

INSERT INTO `channel` (`createdAt`, `updatedAt`, `code`, `token`, `defaultLanguageCode`, `currencyCode`, `pricesIncludeTax`, `id`, `defaultTaxZoneId`, `defaultShippingZoneId`) VALUES
('2022-01-19 12:20:41.135035', '2022-01-19 12:20:44.000000', '__default_channel__', 'xo8xxj5keuavelrm6b', 'en', 'USD', 0, 1, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `collection`
--

CREATE TABLE `collection` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `isRoot` tinyint(4) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL,
  `isPrivate` tinyint(4) NOT NULL DEFAULT 0,
  `filters` text NOT NULL,
  `id` int(11) NOT NULL,
  `featuredAssetId` int(11) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `collection`
--

INSERT INTO `collection` (`createdAt`, `updatedAt`, `isRoot`, `position`, `isPrivate`, `filters`, `id`, `featuredAssetId`, `parentId`) VALUES
('2022-01-19 12:20:47.510928', '2022-01-19 12:20:47.510928', 1, 0, 0, '[]', 1, NULL, NULL),
('2022-01-19 12:20:47.520759', '2022-01-19 12:20:47.520759', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[1]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 2, 16, 1),
('2022-01-19 12:20:47.559250', '2022-01-19 12:20:47.559250', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[2]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 3, 5, 2),
('2022-01-19 12:20:47.606128', '2022-01-19 12:20:47.606128', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[9]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 4, 12, 2),
('2022-01-19 12:20:47.641941', '2022-01-19 12:20:47.641941', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[30]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 5, 47, 1),
('2022-01-19 12:20:47.666131', '2022-01-19 12:20:47.666131', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[34]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 6, 46, 5),
('2022-01-19 12:20:47.688888', '2022-01-19 12:20:47.688888', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[31]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 7, 37, 5),
('2022-01-19 12:20:47.712716', '2022-01-19 12:20:47.712716', 0, 3, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[17]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 8, 24, 1),
('2022-01-19 12:20:47.737650', '2022-01-19 12:20:47.737650', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[18]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 9, 23, 8),
('2022-01-19 12:20:47.761542', '2022-01-19 12:20:47.761542', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[23]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 10, 32, 8);

-- --------------------------------------------------------

--
-- Structure de la table `collection_asset`
--

CREATE TABLE `collection_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `assetId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `collectionId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `collection_asset`
--

INSERT INTO `collection_asset` (`createdAt`, `updatedAt`, `assetId`, `position`, `collectionId`, `id`) VALUES
('2022-01-19 12:20:47.531523', '2022-01-19 12:20:47.531523', 16, 0, 2, 1),
('2022-01-19 12:20:47.567174', '2022-01-19 12:20:47.567174', 5, 0, 3, 2),
('2022-01-19 12:20:47.615806', '2022-01-19 12:20:47.615806', 12, 0, 4, 3),
('2022-01-19 12:20:47.651856', '2022-01-19 12:20:47.651856', 47, 0, 5, 4),
('2022-01-19 12:20:47.671225', '2022-01-19 12:20:47.671225', 46, 0, 6, 5),
('2022-01-19 12:20:47.695694', '2022-01-19 12:20:47.695694', 37, 0, 7, 6),
('2022-01-19 12:20:47.717989', '2022-01-19 12:20:47.717989', 24, 0, 8, 7),
('2022-01-19 12:20:47.743612', '2022-01-19 12:20:47.743612', 23, 0, 9, 8),
('2022-01-19 12:20:47.767638', '2022-01-19 12:20:47.767638', 32, 0, 10, 9);

-- --------------------------------------------------------

--
-- Structure de la table `collection_channels_channel`
--

CREATE TABLE `collection_channels_channel` (
  `collectionId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `collection_channels_channel`
--

INSERT INTO `collection_channels_channel` (`collectionId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `collection_product_variants_product_variant`
--

CREATE TABLE `collection_product_variants_product_variant` (
  `collectionId` int(11) NOT NULL,
  `productVariantId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `collection_product_variants_product_variant`
--

INSERT INTO `collection_product_variants_product_variant` (`collectionId`, `productVariantId`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(4, 26),
(4, 27),
(4, 28),
(4, 29),
(4, 30),
(4, 31),
(4, 32),
(4, 33),
(4, 34),
(5, 67),
(5, 68),
(5, 69),
(5, 70),
(5, 71),
(5, 72),
(5, 73),
(5, 74),
(5, 75),
(5, 76),
(5, 77),
(5, 78),
(5, 79),
(5, 80),
(5, 81),
(5, 82),
(5, 83),
(5, 84),
(5, 85),
(5, 86),
(5, 87),
(5, 88),
(6, 75),
(6, 77),
(6, 78),
(6, 79),
(6, 80),
(6, 81),
(6, 82),
(6, 83),
(6, 84),
(6, 85),
(6, 86),
(6, 87),
(6, 88),
(7, 67),
(7, 68),
(7, 69),
(7, 70),
(7, 71),
(7, 72),
(7, 73),
(7, 74),
(7, 76),
(8, 35),
(8, 36),
(8, 37),
(8, 38),
(8, 39),
(8, 40),
(8, 41),
(8, 42),
(8, 43),
(8, 44),
(8, 45),
(8, 46),
(8, 47),
(8, 48),
(8, 49),
(8, 50),
(8, 51),
(8, 52),
(8, 53),
(8, 54),
(8, 55),
(8, 56),
(8, 57),
(8, 58),
(8, 59),
(8, 60),
(8, 61),
(8, 62),
(8, 63),
(8, 64),
(8, 65),
(8, 66),
(9, 35),
(9, 36),
(9, 37),
(9, 38),
(9, 39),
(9, 40),
(9, 41),
(9, 42),
(10, 43),
(10, 44),
(10, 45),
(10, 46),
(10, 47),
(10, 48),
(10, 49),
(10, 50),
(10, 51),
(10, 52),
(10, 53),
(10, 54),
(10, 55),
(10, 56),
(10, 57),
(10, 58),
(10, 59),
(10, 60),
(10, 61),
(10, 62),
(10, 63),
(10, 64),
(10, 65),
(10, 66);

-- --------------------------------------------------------

--
-- Structure de la table `collection_translation`
--

CREATE TABLE `collection_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `collection_translation`
--

INSERT INTO `collection_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `slug`, `description`, `id`, `baseId`) VALUES
('2022-01-19 12:20:47.501391', '2022-01-19 12:20:47.000000', 'en', 'Electronics', 'electronics', '', 1, 2),
('2022-01-19 12:20:47.508200', '2022-01-19 12:20:47.000000', 'en', '__root_collection__', '__root_collection__', 'The root of the Collection tree.', 2, 1),
('2022-01-19 12:20:47.551858', '2022-01-19 12:20:47.000000', 'en', 'Computers', 'computers', '', 3, 3),
('2022-01-19 12:20:47.587323', '2022-01-19 12:20:47.000000', 'en', 'Camera & Photo', 'camera-photo', '', 4, 4),
('2022-01-19 12:20:47.632439', '2022-01-19 12:20:47.000000', 'en', 'Home & Garden', 'home-garden', '', 5, 5),
('2022-01-19 12:20:47.661037', '2022-01-19 12:20:47.000000', 'en', 'Furniture', 'furniture', '', 6, 6),
('2022-01-19 12:20:47.681952', '2022-01-19 12:20:47.000000', 'en', 'Plants', 'plants', '', 7, 7),
('2022-01-19 12:20:47.707208', '2022-01-19 12:20:47.000000', 'en', 'Sports & Outdoor', 'sports-outdoor', '', 8, 8),
('2022-01-19 12:20:47.730237', '2022-01-19 12:20:47.000000', 'en', 'Equipment', 'equipment', '', 9, 9),
('2022-01-19 12:20:47.755086', '2022-01-19 12:20:47.000000', 'en', 'Footwear', 'footwear', '', 10, 10);

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

CREATE TABLE `country` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `country`
--

INSERT INTO `country` (`createdAt`, `updatedAt`, `code`, `enabled`, `id`) VALUES
('2022-01-19 12:20:41.542880', '2022-01-19 12:20:41.542880', 'AF', 1, 1),
('2022-01-19 12:20:41.566203', '2022-01-19 12:20:41.566203', 'AX', 1, 2),
('2022-01-19 12:20:41.585884', '2022-01-19 12:20:41.585884', 'AL', 1, 3),
('2022-01-19 12:20:41.594150', '2022-01-19 12:20:41.594150', 'DZ', 1, 4),
('2022-01-19 12:20:41.612918', '2022-01-19 12:20:41.612918', 'AS', 1, 5),
('2022-01-19 12:20:41.630171', '2022-01-19 12:20:41.630171', 'AD', 1, 6),
('2022-01-19 12:20:41.640424', '2022-01-19 12:20:41.640424', 'AO', 1, 7),
('2022-01-19 12:20:41.647777', '2022-01-19 12:20:41.647777', 'AI', 1, 8),
('2022-01-19 12:20:41.665844', '2022-01-19 12:20:41.665844', 'AG', 1, 9),
('2022-01-19 12:20:41.676385', '2022-01-19 12:20:41.676385', 'AR', 1, 10),
('2022-01-19 12:20:41.686694', '2022-01-19 12:20:41.686694', 'AM', 1, 11),
('2022-01-19 12:20:41.698135', '2022-01-19 12:20:41.698135', 'AW', 1, 12),
('2022-01-19 12:20:41.709114', '2022-01-19 12:20:41.709114', 'AU', 1, 13),
('2022-01-19 12:20:41.720123', '2022-01-19 12:20:41.720123', 'AT', 1, 14),
('2022-01-19 12:20:41.731881', '2022-01-19 12:20:41.731881', 'AZ', 1, 15),
('2022-01-19 12:20:41.746367', '2022-01-19 12:20:41.746367', 'BS', 1, 16),
('2022-01-19 12:20:41.754529', '2022-01-19 12:20:41.754529', 'BH', 1, 17),
('2022-01-19 12:20:41.762724', '2022-01-19 12:20:41.762724', 'BD', 1, 18),
('2022-01-19 12:20:41.771810', '2022-01-19 12:20:41.771810', 'BB', 1, 19),
('2022-01-19 12:20:41.780063', '2022-01-19 12:20:41.780063', 'BY', 1, 20),
('2022-01-19 12:20:41.792228', '2022-01-19 12:20:41.792228', 'BE', 1, 21),
('2022-01-19 12:20:41.801801', '2022-01-19 12:20:41.801801', 'BZ', 1, 22),
('2022-01-19 12:20:41.811641', '2022-01-19 12:20:41.811641', 'BJ', 1, 23),
('2022-01-19 12:20:41.820570', '2022-01-19 12:20:41.820570', 'BM', 1, 24),
('2022-01-19 12:20:41.829903', '2022-01-19 12:20:41.829903', 'BT', 1, 25),
('2022-01-19 12:20:41.839269', '2022-01-19 12:20:41.839269', 'BO', 1, 26),
('2022-01-19 12:20:41.850577', '2022-01-19 12:20:41.850577', 'BQ', 1, 27),
('2022-01-19 12:20:41.860000', '2022-01-19 12:20:41.860000', 'BA', 1, 28),
('2022-01-19 12:20:41.867317', '2022-01-19 12:20:41.867317', 'BW', 1, 29),
('2022-01-19 12:20:41.875958', '2022-01-19 12:20:41.875958', 'BV', 1, 30),
('2022-01-19 12:20:41.885066', '2022-01-19 12:20:41.885066', 'BR', 1, 31),
('2022-01-19 12:20:41.894583', '2022-01-19 12:20:41.894583', 'IO', 1, 32),
('2022-01-19 12:20:41.903204', '2022-01-19 12:20:41.903204', 'BN', 1, 33),
('2022-01-19 12:20:41.911385', '2022-01-19 12:20:41.911385', 'BG', 1, 34),
('2022-01-19 12:20:41.920269', '2022-01-19 12:20:41.920269', 'BF', 1, 35),
('2022-01-19 12:20:41.929024', '2022-01-19 12:20:41.929024', 'BI', 1, 36),
('2022-01-19 12:20:41.937705', '2022-01-19 12:20:41.937705', 'CV', 1, 37),
('2022-01-19 12:20:41.947702', '2022-01-19 12:20:41.947702', 'KH', 1, 38),
('2022-01-19 12:20:41.957148', '2022-01-19 12:20:41.957148', 'CM', 1, 39),
('2022-01-19 12:20:41.965622', '2022-01-19 12:20:41.965622', 'CA', 1, 40),
('2022-01-19 12:20:41.973726', '2022-01-19 12:20:41.973726', 'KY', 1, 41),
('2022-01-19 12:20:41.981592', '2022-01-19 12:20:41.981592', 'CF', 1, 42),
('2022-01-19 12:20:41.988757', '2022-01-19 12:20:41.988757', 'TD', 1, 43),
('2022-01-19 12:20:41.995015', '2022-01-19 12:20:41.995015', 'CL', 1, 44),
('2022-01-19 12:20:42.004989', '2022-01-19 12:20:42.004989', 'CN', 1, 45),
('2022-01-19 12:20:42.012752', '2022-01-19 12:20:42.012752', 'CX', 1, 46),
('2022-01-19 12:20:42.021067', '2022-01-19 12:20:42.021067', 'CC', 1, 47),
('2022-01-19 12:20:42.029805', '2022-01-19 12:20:42.029805', 'CO', 1, 48),
('2022-01-19 12:20:42.037929', '2022-01-19 12:20:42.037929', 'KM', 1, 49),
('2022-01-19 12:20:42.045135', '2022-01-19 12:20:42.045135', 'CG', 1, 50),
('2022-01-19 12:20:42.053121', '2022-01-19 12:20:42.053121', 'CD', 1, 51),
('2022-01-19 12:20:42.061346', '2022-01-19 12:20:42.061346', 'CK', 1, 52),
('2022-01-19 12:20:42.070257', '2022-01-19 12:20:42.070257', 'CR', 1, 53),
('2022-01-19 12:20:42.077724', '2022-01-19 12:20:42.077724', 'CI', 1, 54),
('2022-01-19 12:20:42.084288', '2022-01-19 12:20:42.084288', 'HR', 1, 55),
('2022-01-19 12:20:42.092134', '2022-01-19 12:20:42.092134', 'CU', 1, 56),
('2022-01-19 12:20:42.100021', '2022-01-19 12:20:42.100021', 'CW', 1, 57),
('2022-01-19 12:20:42.110552', '2022-01-19 12:20:42.110552', 'CY', 1, 58),
('2022-01-19 12:20:42.117664', '2022-01-19 12:20:42.117664', 'CZ', 1, 59),
('2022-01-19 12:20:42.124986', '2022-01-19 12:20:42.124986', 'DK', 1, 60),
('2022-01-19 12:20:42.132366', '2022-01-19 12:20:42.132366', 'DJ', 1, 61),
('2022-01-19 12:20:42.140922', '2022-01-19 12:20:42.140922', 'DM', 1, 62),
('2022-01-19 12:20:42.151660', '2022-01-19 12:20:42.151660', 'DO', 1, 63),
('2022-01-19 12:20:42.159422', '2022-01-19 12:20:42.159422', 'EC', 1, 64),
('2022-01-19 12:20:42.168550', '2022-01-19 12:20:42.168550', 'EG', 1, 65),
('2022-01-19 12:20:42.176840', '2022-01-19 12:20:42.176840', 'SV', 1, 66),
('2022-01-19 12:20:42.186760', '2022-01-19 12:20:42.186760', 'GQ', 1, 67),
('2022-01-19 12:20:42.194121', '2022-01-19 12:20:42.194121', 'ER', 1, 68),
('2022-01-19 12:20:42.201592', '2022-01-19 12:20:42.201592', 'EE', 1, 69),
('2022-01-19 12:20:42.208754', '2022-01-19 12:20:42.208754', 'SZ', 1, 70),
('2022-01-19 12:20:42.217442', '2022-01-19 12:20:42.217442', 'ET', 1, 71),
('2022-01-19 12:20:42.225813', '2022-01-19 12:20:42.225813', 'FK', 1, 72),
('2022-01-19 12:20:42.234547', '2022-01-19 12:20:42.234547', 'FO', 1, 73),
('2022-01-19 12:20:42.242302', '2022-01-19 12:20:42.242302', 'FJ', 1, 74),
('2022-01-19 12:20:42.248687', '2022-01-19 12:20:42.248687', 'FI', 1, 75),
('2022-01-19 12:20:42.256225', '2022-01-19 12:20:42.256225', 'FR', 1, 76),
('2022-01-19 12:20:42.263758', '2022-01-19 12:20:42.263758', 'GF', 1, 77),
('2022-01-19 12:20:42.272233', '2022-01-19 12:20:42.272233', 'PF', 1, 78),
('2022-01-19 12:20:42.293510', '2022-01-19 12:20:42.293510', 'TF', 1, 79),
('2022-01-19 12:20:42.306165', '2022-01-19 12:20:42.306165', 'GA', 1, 80),
('2022-01-19 12:20:42.316906', '2022-01-19 12:20:42.316906', 'GM', 1, 81),
('2022-01-19 12:20:42.328205', '2022-01-19 12:20:42.328205', 'GE', 1, 82),
('2022-01-19 12:20:42.338148', '2022-01-19 12:20:42.338148', 'DE', 1, 83),
('2022-01-19 12:20:42.348264', '2022-01-19 12:20:42.348264', 'GH', 1, 84),
('2022-01-19 12:20:42.358633', '2022-01-19 12:20:42.358633', 'GI', 1, 85),
('2022-01-19 12:20:42.369963', '2022-01-19 12:20:42.369963', 'GR', 1, 86),
('2022-01-19 12:20:42.378704', '2022-01-19 12:20:42.378704', 'GL', 1, 87),
('2022-01-19 12:20:42.387206', '2022-01-19 12:20:42.387206', 'GD', 1, 88),
('2022-01-19 12:20:42.394950', '2022-01-19 12:20:42.394950', 'GP', 1, 89),
('2022-01-19 12:20:42.412011', '2022-01-19 12:20:42.412011', 'GU', 1, 90),
('2022-01-19 12:20:42.431786', '2022-01-19 12:20:42.431786', 'GT', 1, 91),
('2022-01-19 12:20:42.441776', '2022-01-19 12:20:42.441776', 'GG', 1, 92),
('2022-01-19 12:20:42.450378', '2022-01-19 12:20:42.450378', 'GN', 1, 93),
('2022-01-19 12:20:42.459166', '2022-01-19 12:20:42.459166', 'GW', 1, 94),
('2022-01-19 12:20:42.466924', '2022-01-19 12:20:42.466924', 'GY', 1, 95),
('2022-01-19 12:20:42.474445', '2022-01-19 12:20:42.474445', 'HT', 1, 96),
('2022-01-19 12:20:42.481660', '2022-01-19 12:20:42.481660', 'HM', 1, 97),
('2022-01-19 12:20:42.496540', '2022-01-19 12:20:42.496540', 'VA', 1, 98),
('2022-01-19 12:20:42.503274', '2022-01-19 12:20:42.503274', 'HN', 1, 99),
('2022-01-19 12:20:42.509286', '2022-01-19 12:20:42.509286', 'HK', 1, 100),
('2022-01-19 12:20:42.517862', '2022-01-19 12:20:42.517862', 'HU', 1, 101),
('2022-01-19 12:20:42.526956', '2022-01-19 12:20:42.526956', 'IS', 1, 102),
('2022-01-19 12:20:42.537439', '2022-01-19 12:20:42.537439', 'IN', 1, 103),
('2022-01-19 12:20:42.546581', '2022-01-19 12:20:42.546581', 'ID', 1, 104),
('2022-01-19 12:20:42.557489', '2022-01-19 12:20:42.557489', 'IR', 1, 105),
('2022-01-19 12:20:42.566542', '2022-01-19 12:20:42.566542', 'IQ', 1, 106),
('2022-01-19 12:20:42.575002', '2022-01-19 12:20:42.575002', 'IE', 1, 107),
('2022-01-19 12:20:42.583915', '2022-01-19 12:20:42.583915', 'IM', 1, 108),
('2022-01-19 12:20:42.592749', '2022-01-19 12:20:42.592749', 'IL', 1, 109),
('2022-01-19 12:20:42.602161', '2022-01-19 12:20:42.602161', 'IT', 1, 110),
('2022-01-19 12:20:42.610861', '2022-01-19 12:20:42.610861', 'JM', 1, 111),
('2022-01-19 12:20:42.619689', '2022-01-19 12:20:42.619689', 'JP', 1, 112),
('2022-01-19 12:20:42.628684', '2022-01-19 12:20:42.628684', 'JE', 1, 113),
('2022-01-19 12:20:42.637763', '2022-01-19 12:20:42.637763', 'JO', 1, 114),
('2022-01-19 12:20:42.645461', '2022-01-19 12:20:42.645461', 'KZ', 1, 115),
('2022-01-19 12:20:42.654388', '2022-01-19 12:20:42.654388', 'KE', 1, 116),
('2022-01-19 12:20:42.663328', '2022-01-19 12:20:42.663328', 'KI', 1, 117),
('2022-01-19 12:20:42.672271', '2022-01-19 12:20:42.672271', 'KP', 1, 118),
('2022-01-19 12:20:42.681672', '2022-01-19 12:20:42.681672', 'KR', 1, 119),
('2022-01-19 12:20:42.691556', '2022-01-19 12:20:42.691556', 'KW', 1, 120),
('2022-01-19 12:20:42.701553', '2022-01-19 12:20:42.701553', 'KG', 1, 121),
('2022-01-19 12:20:42.709997', '2022-01-19 12:20:42.709997', 'LA', 1, 122),
('2022-01-19 12:20:42.718820', '2022-01-19 12:20:42.718820', 'LV', 1, 123),
('2022-01-19 12:20:42.727730', '2022-01-19 12:20:42.727730', 'LB', 1, 124),
('2022-01-19 12:20:42.735556', '2022-01-19 12:20:42.735556', 'LS', 1, 125),
('2022-01-19 12:20:42.741615', '2022-01-19 12:20:42.741615', 'LR', 1, 126),
('2022-01-19 12:20:42.748050', '2022-01-19 12:20:42.748050', 'LY', 1, 127),
('2022-01-19 12:20:42.759642', '2022-01-19 12:20:42.759642', 'LI', 1, 128),
('2022-01-19 12:20:42.765721', '2022-01-19 12:20:42.765721', 'LT', 1, 129),
('2022-01-19 12:20:42.774038', '2022-01-19 12:20:42.774038', 'LU', 1, 130),
('2022-01-19 12:20:42.782477', '2022-01-19 12:20:42.782477', 'MO', 1, 131),
('2022-01-19 12:20:42.791438', '2022-01-19 12:20:42.791438', 'MK', 1, 132),
('2022-01-19 12:20:42.798881', '2022-01-19 12:20:42.798881', 'MG', 1, 133),
('2022-01-19 12:20:42.806521', '2022-01-19 12:20:42.806521', 'MW', 1, 134),
('2022-01-19 12:20:42.821790', '2022-01-19 12:20:42.821790', 'MY', 1, 135),
('2022-01-19 12:20:42.828269', '2022-01-19 12:20:42.828269', 'MV', 1, 136),
('2022-01-19 12:20:42.835890', '2022-01-19 12:20:42.835890', 'ML', 1, 137),
('2022-01-19 12:20:42.846408', '2022-01-19 12:20:42.846408', 'MT', 1, 138),
('2022-01-19 12:20:42.859031', '2022-01-19 12:20:42.859031', 'MH', 1, 139),
('2022-01-19 12:20:42.868535', '2022-01-19 12:20:42.868535', 'MQ', 1, 140),
('2022-01-19 12:20:42.879626', '2022-01-19 12:20:42.879626', 'MR', 1, 141),
('2022-01-19 12:20:42.887974', '2022-01-19 12:20:42.887974', 'MU', 1, 142),
('2022-01-19 12:20:42.893931', '2022-01-19 12:20:42.893931', 'YT', 1, 143),
('2022-01-19 12:20:42.901211', '2022-01-19 12:20:42.901211', 'MX', 1, 144),
('2022-01-19 12:20:42.908261', '2022-01-19 12:20:42.908261', 'FM', 1, 145),
('2022-01-19 12:20:42.916163', '2022-01-19 12:20:42.916163', 'MD', 1, 146),
('2022-01-19 12:20:42.925170', '2022-01-19 12:20:42.925170', 'MC', 1, 147),
('2022-01-19 12:20:42.932709', '2022-01-19 12:20:42.932709', 'MN', 1, 148),
('2022-01-19 12:20:42.960671', '2022-01-19 12:20:42.960671', 'ME', 1, 149),
('2022-01-19 12:20:42.973845', '2022-01-19 12:20:42.973845', 'MS', 1, 150),
('2022-01-19 12:20:42.981943', '2022-01-19 12:20:42.981943', 'MA', 1, 151),
('2022-01-19 12:20:42.989077', '2022-01-19 12:20:42.989077', 'MZ', 1, 152),
('2022-01-19 12:20:42.996913', '2022-01-19 12:20:42.996913', 'MM', 1, 153),
('2022-01-19 12:20:43.004315', '2022-01-19 12:20:43.004315', 'NA', 1, 154),
('2022-01-19 12:20:43.012325', '2022-01-19 12:20:43.012325', 'NR', 1, 155),
('2022-01-19 12:20:43.018144', '2022-01-19 12:20:43.018144', 'NP', 1, 156),
('2022-01-19 12:20:43.025565', '2022-01-19 12:20:43.025565', 'NL', 1, 157),
('2022-01-19 12:20:43.035361', '2022-01-19 12:20:43.035361', 'NC', 1, 158),
('2022-01-19 12:20:43.043644', '2022-01-19 12:20:43.043644', 'NZ', 1, 159),
('2022-01-19 12:20:43.053125', '2022-01-19 12:20:43.053125', 'NI', 1, 160),
('2022-01-19 12:20:43.062117', '2022-01-19 12:20:43.062117', 'NE', 1, 161),
('2022-01-19 12:20:43.071500', '2022-01-19 12:20:43.071500', 'NG', 1, 162),
('2022-01-19 12:20:43.078092', '2022-01-19 12:20:43.078092', 'NU', 1, 163),
('2022-01-19 12:20:43.084175', '2022-01-19 12:20:43.084175', 'NF', 1, 164),
('2022-01-19 12:20:43.091394', '2022-01-19 12:20:43.091394', 'MP', 1, 165),
('2022-01-19 12:20:43.098368', '2022-01-19 12:20:43.098368', 'NO', 1, 166),
('2022-01-19 12:20:43.105460', '2022-01-19 12:20:43.105460', 'OM', 1, 167),
('2022-01-19 12:20:43.112589', '2022-01-19 12:20:43.112589', 'PK', 1, 168),
('2022-01-19 12:20:43.120230', '2022-01-19 12:20:43.120230', 'PW', 1, 169),
('2022-01-19 12:20:43.127941', '2022-01-19 12:20:43.127941', 'PS', 1, 170),
('2022-01-19 12:20:43.136047', '2022-01-19 12:20:43.136047', 'PA', 1, 171),
('2022-01-19 12:20:43.143897', '2022-01-19 12:20:43.143897', 'PG', 1, 172),
('2022-01-19 12:20:43.152610', '2022-01-19 12:20:43.152610', 'PY', 1, 173),
('2022-01-19 12:20:43.162456', '2022-01-19 12:20:43.162456', 'PE', 1, 174),
('2022-01-19 12:20:43.169209', '2022-01-19 12:20:43.169209', 'PH', 1, 175),
('2022-01-19 12:20:43.175314', '2022-01-19 12:20:43.175314', 'PN', 1, 176),
('2022-01-19 12:20:43.181978', '2022-01-19 12:20:43.181978', 'PL', 1, 177),
('2022-01-19 12:20:43.188509', '2022-01-19 12:20:43.188509', 'PT', 1, 178),
('2022-01-19 12:20:43.194673', '2022-01-19 12:20:43.194673', 'PR', 1, 179),
('2022-01-19 12:20:43.201745', '2022-01-19 12:20:43.201745', 'QA', 1, 180),
('2022-01-19 12:20:43.209501', '2022-01-19 12:20:43.209501', 'RE', 1, 181),
('2022-01-19 12:20:43.218923', '2022-01-19 12:20:43.218923', 'RO', 1, 182),
('2022-01-19 12:20:43.227988', '2022-01-19 12:20:43.227988', 'RU', 1, 183),
('2022-01-19 12:20:43.234758', '2022-01-19 12:20:43.234758', 'RW', 1, 184),
('2022-01-19 12:20:43.242322', '2022-01-19 12:20:43.242322', 'BL', 1, 185),
('2022-01-19 12:20:43.249813', '2022-01-19 12:20:43.249813', 'SH', 1, 186),
('2022-01-19 12:20:43.257101', '2022-01-19 12:20:43.257101', 'KN', 1, 187),
('2022-01-19 12:20:43.265266', '2022-01-19 12:20:43.265266', 'LC', 1, 188),
('2022-01-19 12:20:43.272908', '2022-01-19 12:20:43.272908', 'MF', 1, 189),
('2022-01-19 12:20:43.280580', '2022-01-19 12:20:43.280580', 'PM', 1, 190),
('2022-01-19 12:20:43.287696', '2022-01-19 12:20:43.287696', 'VC', 1, 191),
('2022-01-19 12:20:43.294966', '2022-01-19 12:20:43.294966', 'WS', 1, 192),
('2022-01-19 12:20:43.302201', '2022-01-19 12:20:43.302201', 'SM', 1, 193),
('2022-01-19 12:20:43.311753', '2022-01-19 12:20:43.311753', 'ST', 1, 194),
('2022-01-19 12:20:43.319032', '2022-01-19 12:20:43.319032', 'SA', 1, 195),
('2022-01-19 12:20:43.325909', '2022-01-19 12:20:43.325909', 'SN', 1, 196),
('2022-01-19 12:20:43.333151', '2022-01-19 12:20:43.333151', 'RS', 1, 197),
('2022-01-19 12:20:43.340589', '2022-01-19 12:20:43.340589', 'SC', 1, 198),
('2022-01-19 12:20:43.347019', '2022-01-19 12:20:43.347019', 'SL', 1, 199),
('2022-01-19 12:20:43.353639', '2022-01-19 12:20:43.353639', 'SG', 1, 200),
('2022-01-19 12:20:43.360667', '2022-01-19 12:20:43.360667', 'SX', 1, 201),
('2022-01-19 12:20:43.367777', '2022-01-19 12:20:43.367777', 'SK', 1, 202),
('2022-01-19 12:20:43.373856', '2022-01-19 12:20:43.373856', 'SI', 1, 203),
('2022-01-19 12:20:43.380068', '2022-01-19 12:20:43.380068', 'SB', 1, 204),
('2022-01-19 12:20:43.386990', '2022-01-19 12:20:43.386990', 'SO', 1, 205),
('2022-01-19 12:20:43.393170', '2022-01-19 12:20:43.393170', 'ZA', 1, 206),
('2022-01-19 12:20:43.399537', '2022-01-19 12:20:43.399537', 'GS', 1, 207),
('2022-01-19 12:20:43.404485', '2022-01-19 12:20:43.404485', 'SS', 1, 208),
('2022-01-19 12:20:43.410047', '2022-01-19 12:20:43.410047', 'ES', 1, 209),
('2022-01-19 12:20:43.417090', '2022-01-19 12:20:43.417090', 'LK', 1, 210),
('2022-01-19 12:20:43.423884', '2022-01-19 12:20:43.423884', 'SD', 1, 211),
('2022-01-19 12:20:43.431611', '2022-01-19 12:20:43.431611', 'SR', 1, 212),
('2022-01-19 12:20:43.438946', '2022-01-19 12:20:43.438946', 'SJ', 1, 213),
('2022-01-19 12:20:43.447658', '2022-01-19 12:20:43.447658', 'SE', 1, 214),
('2022-01-19 12:20:43.456757', '2022-01-19 12:20:43.456757', 'CH', 1, 215),
('2022-01-19 12:20:43.463721', '2022-01-19 12:20:43.463721', 'SY', 1, 216),
('2022-01-19 12:20:43.471179', '2022-01-19 12:20:43.471179', 'TW', 1, 217),
('2022-01-19 12:20:43.477989', '2022-01-19 12:20:43.477989', 'TJ', 1, 218),
('2022-01-19 12:20:43.483571', '2022-01-19 12:20:43.483571', 'TZ', 1, 219),
('2022-01-19 12:20:43.489901', '2022-01-19 12:20:43.489901', 'TH', 1, 220),
('2022-01-19 12:20:43.496395', '2022-01-19 12:20:43.496395', 'TL', 1, 221),
('2022-01-19 12:20:43.502880', '2022-01-19 12:20:43.502880', 'TG', 1, 222),
('2022-01-19 12:20:43.512056', '2022-01-19 12:20:43.512056', 'TK', 1, 223),
('2022-01-19 12:20:43.518513', '2022-01-19 12:20:43.518513', 'TO', 1, 224),
('2022-01-19 12:20:43.525757', '2022-01-19 12:20:43.525757', 'TT', 1, 225),
('2022-01-19 12:20:43.532497', '2022-01-19 12:20:43.532497', 'TN', 1, 226),
('2022-01-19 12:20:43.539323', '2022-01-19 12:20:43.539323', 'TR', 1, 227),
('2022-01-19 12:20:43.545059', '2022-01-19 12:20:43.545059', 'TM', 1, 228),
('2022-01-19 12:20:43.550606', '2022-01-19 12:20:43.550606', 'TC', 1, 229),
('2022-01-19 12:20:43.556820', '2022-01-19 12:20:43.556820', 'TV', 1, 230),
('2022-01-19 12:20:43.562986', '2022-01-19 12:20:43.562986', 'UG', 1, 231),
('2022-01-19 12:20:43.570427', '2022-01-19 12:20:43.570427', 'UA', 1, 232),
('2022-01-19 12:20:43.578543', '2022-01-19 12:20:43.578543', 'AE', 1, 233),
('2022-01-19 12:20:43.586147', '2022-01-19 12:20:43.586147', 'GB', 1, 234),
('2022-01-19 12:20:43.593757', '2022-01-19 12:20:43.593757', 'US', 1, 235),
('2022-01-19 12:20:43.602518', '2022-01-19 12:20:43.602518', 'UM', 1, 236),
('2022-01-19 12:20:43.610037', '2022-01-19 12:20:43.610037', 'UY', 1, 237),
('2022-01-19 12:20:43.617180', '2022-01-19 12:20:43.617180', 'UZ', 1, 238),
('2022-01-19 12:20:43.624868', '2022-01-19 12:20:43.624868', 'VU', 1, 239),
('2022-01-19 12:20:43.633909', '2022-01-19 12:20:43.633909', 'VE', 1, 240),
('2022-01-19 12:20:43.641604', '2022-01-19 12:20:43.641604', 'VN', 1, 241),
('2022-01-19 12:20:43.648677', '2022-01-19 12:20:43.648677', 'VG', 1, 242),
('2022-01-19 12:20:43.657334', '2022-01-19 12:20:43.657334', 'VI', 1, 243),
('2022-01-19 12:20:43.665506', '2022-01-19 12:20:43.665506', 'WF', 1, 244),
('2022-01-19 12:20:43.672500', '2022-01-19 12:20:43.672500', 'EH', 1, 245),
('2022-01-19 12:20:43.679715', '2022-01-19 12:20:43.679715', 'YE', 1, 246),
('2022-01-19 12:20:43.687151', '2022-01-19 12:20:43.687151', 'ZM', 1, 247),
('2022-01-19 12:20:43.693769', '2022-01-19 12:20:43.693769', 'ZW', 1, 248);

-- --------------------------------------------------------

--
-- Structure de la table `country_translation`
--

CREATE TABLE `country_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `country_translation`
--

INSERT INTO `country_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2022-01-19 12:20:41.537931', '2022-01-19 12:20:41.000000', 'en', 'Afghanistan', 1, 1),
('2022-01-19 12:20:41.562425', '2022-01-19 12:20:41.000000', 'en', 'Åland Islands', 2, 2),
('2022-01-19 12:20:41.582511', '2022-01-19 12:20:41.000000', 'en', 'Albania', 3, 3),
('2022-01-19 12:20:41.590916', '2022-01-19 12:20:41.000000', 'en', 'Algeria', 4, 4),
('2022-01-19 12:20:41.609594', '2022-01-19 12:20:41.000000', 'en', 'American Samoa', 5, 5),
('2022-01-19 12:20:41.626629', '2022-01-19 12:20:41.000000', 'en', 'Andorra', 6, 6),
('2022-01-19 12:20:41.636154', '2022-01-19 12:20:41.000000', 'en', 'Angola', 7, 7),
('2022-01-19 12:20:41.645278', '2022-01-19 12:20:41.000000', 'en', 'Anguilla', 8, 8),
('2022-01-19 12:20:41.660999', '2022-01-19 12:20:41.000000', 'en', 'Antigua and Barbuda', 9, 9),
('2022-01-19 12:20:41.673389', '2022-01-19 12:20:41.000000', 'en', 'Argentina', 10, 10),
('2022-01-19 12:20:41.681789', '2022-01-19 12:20:41.000000', 'en', 'Armenia', 11, 11),
('2022-01-19 12:20:41.693141', '2022-01-19 12:20:41.000000', 'en', 'Aruba', 12, 12),
('2022-01-19 12:20:41.705099', '2022-01-19 12:20:41.000000', 'en', 'Australia', 13, 13),
('2022-01-19 12:20:41.715340', '2022-01-19 12:20:41.000000', 'en', 'Austria', 14, 14),
('2022-01-19 12:20:41.726448', '2022-01-19 12:20:41.000000', 'en', 'Azerbaijan', 15, 15),
('2022-01-19 12:20:41.742283', '2022-01-19 12:20:41.000000', 'en', 'Bahamas', 16, 16),
('2022-01-19 12:20:41.750814', '2022-01-19 12:20:41.000000', 'en', 'Bahrain', 17, 17),
('2022-01-19 12:20:41.759732', '2022-01-19 12:20:41.000000', 'en', 'Bangladesh', 18, 18),
('2022-01-19 12:20:41.769088', '2022-01-19 12:20:41.000000', 'en', 'Barbados', 19, 19),
('2022-01-19 12:20:41.776499', '2022-01-19 12:20:41.000000', 'en', 'Belarus', 20, 20),
('2022-01-19 12:20:41.786988', '2022-01-19 12:20:41.000000', 'en', 'Belgium', 21, 21),
('2022-01-19 12:20:41.797634', '2022-01-19 12:20:41.000000', 'en', 'Belize', 22, 22),
('2022-01-19 12:20:41.808315', '2022-01-19 12:20:41.000000', 'en', 'Benin', 23, 23),
('2022-01-19 12:20:41.816887', '2022-01-19 12:20:41.000000', 'en', 'Bermuda', 24, 24),
('2022-01-19 12:20:41.826400', '2022-01-19 12:20:41.000000', 'en', 'Bhutan', 25, 25),
('2022-01-19 12:20:41.835408', '2022-01-19 12:20:41.000000', 'en', 'Bolivia (Plurinational State of)', 26, 26),
('2022-01-19 12:20:41.847177', '2022-01-19 12:20:41.000000', 'en', 'Bonaire, Sint Eustatius and Saba', 27, 27),
('2022-01-19 12:20:41.856382', '2022-01-19 12:20:41.000000', 'en', 'Bosnia and Herzegovina', 28, 28),
('2022-01-19 12:20:41.864458', '2022-01-19 12:20:41.000000', 'en', 'Botswana', 29, 29),
('2022-01-19 12:20:41.872082', '2022-01-19 12:20:41.000000', 'en', 'Bouvet Island', 30, 30),
('2022-01-19 12:20:41.881413', '2022-01-19 12:20:41.000000', 'en', 'Brazil', 31, 31),
('2022-01-19 12:20:41.891589', '2022-01-19 12:20:41.000000', 'en', 'British Indian Ocean Territory', 32, 32),
('2022-01-19 12:20:41.899400', '2022-01-19 12:20:41.000000', 'en', 'Brunei Darussalam', 33, 33),
('2022-01-19 12:20:41.908090', '2022-01-19 12:20:41.000000', 'en', 'Bulgaria', 34, 34),
('2022-01-19 12:20:41.916578', '2022-01-19 12:20:41.000000', 'en', 'Burkina Faso', 35, 35),
('2022-01-19 12:20:41.925552', '2022-01-19 12:20:41.000000', 'en', 'Burundi', 36, 36),
('2022-01-19 12:20:41.934517', '2022-01-19 12:20:41.000000', 'en', 'Cabo Verde', 37, 37),
('2022-01-19 12:20:41.944084', '2022-01-19 12:20:41.000000', 'en', 'Cambodia', 38, 38),
('2022-01-19 12:20:41.953022', '2022-01-19 12:20:41.000000', 'en', 'Cameroon', 39, 39),
('2022-01-19 12:20:41.962367', '2022-01-19 12:20:41.000000', 'en', 'Canada', 40, 40),
('2022-01-19 12:20:41.970370', '2022-01-19 12:20:41.000000', 'en', 'Cayman Islands', 41, 41),
('2022-01-19 12:20:41.978201', '2022-01-19 12:20:41.000000', 'en', 'Central African Republic', 42, 42),
('2022-01-19 12:20:41.986521', '2022-01-19 12:20:41.000000', 'en', 'Chad', 43, 43),
('2022-01-19 12:20:41.992653', '2022-01-19 12:20:41.000000', 'en', 'Chile', 44, 44),
('2022-01-19 12:20:42.001494', '2022-01-19 12:20:42.000000', 'en', 'China', 45, 45),
('2022-01-19 12:20:42.009898', '2022-01-19 12:20:42.000000', 'en', 'Christmas Island', 46, 46),
('2022-01-19 12:20:42.017849', '2022-01-19 12:20:42.000000', 'en', 'Cocos (Keeling) Islands', 47, 47),
('2022-01-19 12:20:42.026155', '2022-01-19 12:20:42.000000', 'en', 'Colombia', 48, 48),
('2022-01-19 12:20:42.034698', '2022-01-19 12:20:42.000000', 'en', 'Comoros', 49, 49),
('2022-01-19 12:20:42.042234', '2022-01-19 12:20:42.000000', 'en', 'Congo', 50, 50),
('2022-01-19 12:20:42.049854', '2022-01-19 12:20:42.000000', 'en', 'Congo (Democratic Republic of the)', 51, 51),
('2022-01-19 12:20:42.058568', '2022-01-19 12:20:42.000000', 'en', 'Cook Islands', 52, 52),
('2022-01-19 12:20:42.066609', '2022-01-19 12:20:42.000000', 'en', 'Costa Rica', 53, 53),
('2022-01-19 12:20:42.075278', '2022-01-19 12:20:42.000000', 'en', 'Côte d\'Ivoire', 54, 54),
('2022-01-19 12:20:42.081549', '2022-01-19 12:20:42.000000', 'en', 'Croatia', 55, 55),
('2022-01-19 12:20:42.088584', '2022-01-19 12:20:42.000000', 'en', 'Cuba', 56, 56),
('2022-01-19 12:20:42.096907', '2022-01-19 12:20:42.000000', 'en', 'Curaçao', 57, 57),
('2022-01-19 12:20:42.107240', '2022-01-19 12:20:42.000000', 'en', 'Cyprus', 58, 58),
('2022-01-19 12:20:42.114701', '2022-01-19 12:20:42.000000', 'en', 'Czechia', 59, 59),
('2022-01-19 12:20:42.122252', '2022-01-19 12:20:42.000000', 'en', 'Denmark', 60, 60),
('2022-01-19 12:20:42.129458', '2022-01-19 12:20:42.000000', 'en', 'Djibouti', 61, 61),
('2022-01-19 12:20:42.137805', '2022-01-19 12:20:42.000000', 'en', 'Dominica', 62, 62),
('2022-01-19 12:20:42.147167', '2022-01-19 12:20:42.000000', 'en', 'Dominican Republic', 63, 63),
('2022-01-19 12:20:42.156645', '2022-01-19 12:20:42.000000', 'en', 'Ecuador', 64, 64),
('2022-01-19 12:20:42.165067', '2022-01-19 12:20:42.000000', 'en', 'Egypt', 65, 65),
('2022-01-19 12:20:42.174124', '2022-01-19 12:20:42.000000', 'en', 'El Salvador', 66, 66),
('2022-01-19 12:20:42.181718', '2022-01-19 12:20:42.000000', 'en', 'Equatorial Guinea', 67, 67),
('2022-01-19 12:20:42.191615', '2022-01-19 12:20:42.000000', 'en', 'Eritrea', 68, 68),
('2022-01-19 12:20:42.198221', '2022-01-19 12:20:42.000000', 'en', 'Estonia', 69, 69),
('2022-01-19 12:20:42.205967', '2022-01-19 12:20:42.000000', 'en', 'Eswatini', 70, 70),
('2022-01-19 12:20:42.214091', '2022-01-19 12:20:42.000000', 'en', 'Ethiopia', 71, 71),
('2022-01-19 12:20:42.222898', '2022-01-19 12:20:42.000000', 'en', 'Falkland Islands (Malvinas)', 72, 72),
('2022-01-19 12:20:42.231113', '2022-01-19 12:20:42.000000', 'en', 'Faroe Islands', 73, 73),
('2022-01-19 12:20:42.239838', '2022-01-19 12:20:42.000000', 'en', 'Fiji', 74, 74),
('2022-01-19 12:20:42.246179', '2022-01-19 12:20:42.000000', 'en', 'Finland', 75, 75),
('2022-01-19 12:20:42.253174', '2022-01-19 12:20:42.000000', 'en', 'France', 76, 76),
('2022-01-19 12:20:42.260650', '2022-01-19 12:20:42.000000', 'en', 'French Guiana', 77, 77),
('2022-01-19 12:20:42.267421', '2022-01-19 12:20:42.000000', 'en', 'French Polynesia', 78, 78),
('2022-01-19 12:20:42.286278', '2022-01-19 12:20:42.000000', 'en', 'French Southern Territories', 79, 79),
('2022-01-19 12:20:42.301610', '2022-01-19 12:20:42.000000', 'en', 'Gabon', 80, 80),
('2022-01-19 12:20:42.312386', '2022-01-19 12:20:42.000000', 'en', 'Gambia', 81, 81),
('2022-01-19 12:20:42.323897', '2022-01-19 12:20:42.000000', 'en', 'Georgia', 82, 82),
('2022-01-19 12:20:42.334547', '2022-01-19 12:20:42.000000', 'en', 'Germany', 83, 83),
('2022-01-19 12:20:42.344429', '2022-01-19 12:20:42.000000', 'en', 'Ghana', 84, 84),
('2022-01-19 12:20:42.355250', '2022-01-19 12:20:42.000000', 'en', 'Gibraltar', 85, 85),
('2022-01-19 12:20:42.366426', '2022-01-19 12:20:42.000000', 'en', 'Greece', 86, 86),
('2022-01-19 12:20:42.375212', '2022-01-19 12:20:42.000000', 'en', 'Greenland', 87, 87),
('2022-01-19 12:20:42.383775', '2022-01-19 12:20:42.000000', 'en', 'Grenada', 88, 88),
('2022-01-19 12:20:42.392163', '2022-01-19 12:20:42.000000', 'en', 'Guadeloupe', 89, 89),
('2022-01-19 12:20:42.400200', '2022-01-19 12:20:42.000000', 'en', 'Guam', 90, 90),
('2022-01-19 12:20:42.424804', '2022-01-19 12:20:42.000000', 'en', 'Guatemala', 91, 91),
('2022-01-19 12:20:42.438353', '2022-01-19 12:20:42.000000', 'en', 'Guernsey', 92, 92),
('2022-01-19 12:20:42.447346', '2022-01-19 12:20:42.000000', 'en', 'Guinea', 93, 93),
('2022-01-19 12:20:42.455980', '2022-01-19 12:20:42.000000', 'en', 'Guinea-Bissau', 94, 94),
('2022-01-19 12:20:42.463987', '2022-01-19 12:20:42.000000', 'en', 'Guyana', 95, 95),
('2022-01-19 12:20:42.471665', '2022-01-19 12:20:42.000000', 'en', 'Haiti', 96, 96),
('2022-01-19 12:20:42.478891', '2022-01-19 12:20:42.000000', 'en', 'Heard Island and McDonald Islands', 97, 97),
('2022-01-19 12:20:42.494292', '2022-01-19 12:20:42.000000', 'en', 'Holy See', 98, 98),
('2022-01-19 12:20:42.500867', '2022-01-19 12:20:42.000000', 'en', 'Honduras', 99, 99),
('2022-01-19 12:20:42.507116', '2022-01-19 12:20:42.000000', 'en', 'Hong Kong', 100, 100),
('2022-01-19 12:20:42.514260', '2022-01-19 12:20:42.000000', 'en', 'Hungary', 101, 101),
('2022-01-19 12:20:42.523671', '2022-01-19 12:20:42.000000', 'en', 'Iceland', 102, 102),
('2022-01-19 12:20:42.534278', '2022-01-19 12:20:42.000000', 'en', 'India', 103, 103),
('2022-01-19 12:20:42.542405', '2022-01-19 12:20:42.000000', 'en', 'Indonesia', 104, 104),
('2022-01-19 12:20:42.553957', '2022-01-19 12:20:42.000000', 'en', 'Iran (Islamic Republic of)', 105, 105),
('2022-01-19 12:20:42.562877', '2022-01-19 12:20:42.000000', 'en', 'Iraq', 106, 106),
('2022-01-19 12:20:42.571804', '2022-01-19 12:20:42.000000', 'en', 'Ireland', 107, 107),
('2022-01-19 12:20:42.580317', '2022-01-19 12:20:42.000000', 'en', 'Isle of Man', 108, 108),
('2022-01-19 12:20:42.589269', '2022-01-19 12:20:42.000000', 'en', 'Israel', 109, 109),
('2022-01-19 12:20:42.598162', '2022-01-19 12:20:42.000000', 'en', 'Italy', 110, 110),
('2022-01-19 12:20:42.607184', '2022-01-19 12:20:42.000000', 'en', 'Jamaica', 111, 111),
('2022-01-19 12:20:42.616447', '2022-01-19 12:20:42.000000', 'en', 'Japan', 112, 112),
('2022-01-19 12:20:42.624816', '2022-01-19 12:20:42.000000', 'en', 'Jersey', 113, 113),
('2022-01-19 12:20:42.633818', '2022-01-19 12:20:42.000000', 'en', 'Jordan', 114, 114),
('2022-01-19 12:20:42.642441', '2022-01-19 12:20:42.000000', 'en', 'Kazakhstan', 115, 115),
('2022-01-19 12:20:42.650274', '2022-01-19 12:20:42.000000', 'en', 'Kenya', 116, 116),
('2022-01-19 12:20:42.659744', '2022-01-19 12:20:42.000000', 'en', 'Kiribati', 117, 117),
('2022-01-19 12:20:42.668733', '2022-01-19 12:20:42.000000', 'en', 'Korea (Democratic People\'s Republic of)', 118, 118),
('2022-01-19 12:20:42.677362', '2022-01-19 12:20:42.000000', 'en', 'Korea (Republic of)', 119, 119),
('2022-01-19 12:20:42.687899', '2022-01-19 12:20:42.000000', 'en', 'Kuwait', 120, 120),
('2022-01-19 12:20:42.697845', '2022-01-19 12:20:42.000000', 'en', 'Kyrgyzstan', 121, 121),
('2022-01-19 12:20:42.706622', '2022-01-19 12:20:42.000000', 'en', 'Lao People\'s Democratic Republic', 122, 122),
('2022-01-19 12:20:42.715135', '2022-01-19 12:20:42.000000', 'en', 'Latvia', 123, 123),
('2022-01-19 12:20:42.724228', '2022-01-19 12:20:42.000000', 'en', 'Lebanon', 124, 124),
('2022-01-19 12:20:42.732528', '2022-01-19 12:20:42.000000', 'en', 'Lesotho', 125, 125),
('2022-01-19 12:20:42.739219', '2022-01-19 12:20:42.000000', 'en', 'Liberia', 126, 126),
('2022-01-19 12:20:42.745259', '2022-01-19 12:20:42.000000', 'en', 'Libya', 127, 127),
('2022-01-19 12:20:42.755686', '2022-01-19 12:20:42.000000', 'en', 'Liechtenstein', 128, 128),
('2022-01-19 12:20:42.763392', '2022-01-19 12:20:42.000000', 'en', 'Lithuania', 129, 129),
('2022-01-19 12:20:42.770480', '2022-01-19 12:20:42.000000', 'en', 'Luxembourg', 130, 130),
('2022-01-19 12:20:42.778528', '2022-01-19 12:20:42.000000', 'en', 'Macao', 131, 131),
('2022-01-19 12:20:42.787822', '2022-01-19 12:20:42.000000', 'en', 'Macedonia (the former Yugoslav Republic of)', 132, 132),
('2022-01-19 12:20:42.795688', '2022-01-19 12:20:42.000000', 'en', 'Madagascar', 133, 133),
('2022-01-19 12:20:42.803561', '2022-01-19 12:20:42.000000', 'en', 'Malawi', 134, 134),
('2022-01-19 12:20:42.817839', '2022-01-19 12:20:42.000000', 'en', 'Malaysia', 135, 135),
('2022-01-19 12:20:42.825683', '2022-01-19 12:20:42.000000', 'en', 'Maldives', 136, 136),
('2022-01-19 12:20:42.832845', '2022-01-19 12:20:42.000000', 'en', 'Mali', 137, 137),
('2022-01-19 12:20:42.841909', '2022-01-19 12:20:42.000000', 'en', 'Malta', 138, 138),
('2022-01-19 12:20:42.852745', '2022-01-19 12:20:42.000000', 'en', 'Marshall Islands', 139, 139),
('2022-01-19 12:20:42.864362', '2022-01-19 12:20:42.000000', 'en', 'Martinique', 140, 140),
('2022-01-19 12:20:42.876163', '2022-01-19 12:20:42.000000', 'en', 'Mauritania', 141, 141),
('2022-01-19 12:20:42.885774', '2022-01-19 12:20:42.000000', 'en', 'Mauritius', 142, 142),
('2022-01-19 12:20:42.891190', '2022-01-19 12:20:42.000000', 'en', 'Mayotte', 143, 143),
('2022-01-19 12:20:42.898156', '2022-01-19 12:20:42.000000', 'en', 'Mexico', 144, 144),
('2022-01-19 12:20:42.905553', '2022-01-19 12:20:42.000000', 'en', 'Micronesia (Federated States of)', 145, 145),
('2022-01-19 12:20:42.912711', '2022-01-19 12:20:42.000000', 'en', 'Moldova (Republic of)', 146, 146),
('2022-01-19 12:20:42.922689', '2022-01-19 12:20:42.000000', 'en', 'Monaco', 147, 147),
('2022-01-19 12:20:42.928394', '2022-01-19 12:20:42.000000', 'en', 'Mongolia', 148, 148),
('2022-01-19 12:20:42.951955', '2022-01-19 12:20:42.000000', 'en', 'Montenegro', 149, 149),
('2022-01-19 12:20:42.969058', '2022-01-19 12:20:42.000000', 'en', 'Montserrat', 150, 150),
('2022-01-19 12:20:42.979706', '2022-01-19 12:20:42.000000', 'en', 'Morocco', 151, 151),
('2022-01-19 12:20:42.986323', '2022-01-19 12:20:42.000000', 'en', 'Mozambique', 152, 152),
('2022-01-19 12:20:42.993493', '2022-01-19 12:20:42.000000', 'en', 'Myanmar', 153, 153),
('2022-01-19 12:20:43.001524', '2022-01-19 12:20:43.000000', 'en', 'Namibia', 154, 154),
('2022-01-19 12:20:43.009984', '2022-01-19 12:20:43.000000', 'en', 'Nauru', 155, 155),
('2022-01-19 12:20:43.016019', '2022-01-19 12:20:43.000000', 'en', 'Nepal', 156, 156),
('2022-01-19 12:20:43.022572', '2022-01-19 12:20:43.000000', 'en', 'Netherlands', 157, 157),
('2022-01-19 12:20:43.031029', '2022-01-19 12:20:43.000000', 'en', 'New Caledonia', 158, 158),
('2022-01-19 12:20:43.040216', '2022-01-19 12:20:43.000000', 'en', 'New Zealand', 159, 159),
('2022-01-19 12:20:43.048550', '2022-01-19 12:20:43.000000', 'en', 'Nicaragua', 160, 160),
('2022-01-19 12:20:43.058675', '2022-01-19 12:20:43.000000', 'en', 'Niger', 161, 161),
('2022-01-19 12:20:43.067204', '2022-01-19 12:20:43.000000', 'en', 'Nigeria', 162, 162),
('2022-01-19 12:20:43.075944', '2022-01-19 12:20:43.000000', 'en', 'Niue', 163, 163),
('2022-01-19 12:20:43.081731', '2022-01-19 12:20:43.000000', 'en', 'Norfolk Island', 164, 164),
('2022-01-19 12:20:43.088251', '2022-01-19 12:20:43.000000', 'en', 'Northern Mariana Islands', 165, 165),
('2022-01-19 12:20:43.095274', '2022-01-19 12:20:43.000000', 'en', 'Norway', 166, 166),
('2022-01-19 12:20:43.102762', '2022-01-19 12:20:43.000000', 'en', 'Oman', 167, 167),
('2022-01-19 12:20:43.109379', '2022-01-19 12:20:43.000000', 'en', 'Pakistan', 168, 168),
('2022-01-19 12:20:43.117367', '2022-01-19 12:20:43.000000', 'en', 'Palau', 169, 169),
('2022-01-19 12:20:43.125051', '2022-01-19 12:20:43.000000', 'en', 'Palestine, State of', 170, 170),
('2022-01-19 12:20:43.132943', '2022-01-19 12:20:43.000000', 'en', 'Panama', 171, 171),
('2022-01-19 12:20:43.141001', '2022-01-19 12:20:43.000000', 'en', 'Papua New Guinea', 172, 172),
('2022-01-19 12:20:43.149090', '2022-01-19 12:20:43.000000', 'en', 'Paraguay', 173, 173),
('2022-01-19 12:20:43.157927', '2022-01-19 12:20:43.000000', 'en', 'Peru', 174, 174),
('2022-01-19 12:20:43.167109', '2022-01-19 12:20:43.000000', 'en', 'Philippines', 175, 175),
('2022-01-19 12:20:43.173349', '2022-01-19 12:20:43.000000', 'en', 'Pitcairn', 176, 176),
('2022-01-19 12:20:43.179137', '2022-01-19 12:20:43.000000', 'en', 'Poland', 177, 177),
('2022-01-19 12:20:43.186170', '2022-01-19 12:20:43.000000', 'en', 'Portugal', 178, 178),
('2022-01-19 12:20:43.192140', '2022-01-19 12:20:43.000000', 'en', 'Puerto Rico', 179, 179),
('2022-01-19 12:20:43.199089', '2022-01-19 12:20:43.000000', 'en', 'Qatar', 180, 180),
('2022-01-19 12:20:43.205907', '2022-01-19 12:20:43.000000', 'en', 'Réunion', 181, 181),
('2022-01-19 12:20:43.215016', '2022-01-19 12:20:43.000000', 'en', 'Romania', 182, 182),
('2022-01-19 12:20:43.224654', '2022-01-19 12:20:43.000000', 'en', 'Russian Federation', 183, 183),
('2022-01-19 12:20:43.232517', '2022-01-19 12:20:43.000000', 'en', 'Rwanda', 184, 184),
('2022-01-19 12:20:43.238080', '2022-01-19 12:20:43.000000', 'en', 'Saint Barthélemy', 185, 185),
('2022-01-19 12:20:43.247194', '2022-01-19 12:20:43.000000', 'en', 'Saint Helena, Ascension and Tristan da Cunha', 186, 186),
('2022-01-19 12:20:43.253969', '2022-01-19 12:20:43.000000', 'en', 'Saint Kitts and Nevis', 187, 187),
('2022-01-19 12:20:43.262144', '2022-01-19 12:20:43.000000', 'en', 'Saint Lucia', 188, 188),
('2022-01-19 12:20:43.269564', '2022-01-19 12:20:43.000000', 'en', 'Saint Martin (French part)', 189, 189),
('2022-01-19 12:20:43.277505', '2022-01-19 12:20:43.000000', 'en', 'Saint Pierre and Miquelon', 190, 190),
('2022-01-19 12:20:43.284866', '2022-01-19 12:20:43.000000', 'en', 'Saint Vincent and the Grenadines', 191, 191),
('2022-01-19 12:20:43.292041', '2022-01-19 12:20:43.000000', 'en', 'Samoa', 192, 192),
('2022-01-19 12:20:43.299327', '2022-01-19 12:20:43.000000', 'en', 'San Marino', 193, 193),
('2022-01-19 12:20:43.309261', '2022-01-19 12:20:43.000000', 'en', 'Sao Tome and Principe', 194, 194),
('2022-01-19 12:20:43.316458', '2022-01-19 12:20:43.000000', 'en', 'Saudi Arabia', 195, 195),
('2022-01-19 12:20:43.323165', '2022-01-19 12:20:43.000000', 'en', 'Senegal', 196, 196),
('2022-01-19 12:20:43.330005', '2022-01-19 12:20:43.000000', 'en', 'Serbia', 197, 197),
('2022-01-19 12:20:43.338043', '2022-01-19 12:20:43.000000', 'en', 'Seychelles', 198, 198),
('2022-01-19 12:20:43.344406', '2022-01-19 12:20:43.000000', 'en', 'Sierra Leone', 199, 199),
('2022-01-19 12:20:43.350900', '2022-01-19 12:20:43.000000', 'en', 'Singapore', 200, 200),
('2022-01-19 12:20:43.358009', '2022-01-19 12:20:43.000000', 'en', 'Sint Maarten (Dutch part)', 201, 201),
('2022-01-19 12:20:43.364467', '2022-01-19 12:20:43.000000', 'en', 'Slovakia', 202, 202),
('2022-01-19 12:20:43.371664', '2022-01-19 12:20:43.000000', 'en', 'Slovenia', 203, 203),
('2022-01-19 12:20:43.377607', '2022-01-19 12:20:43.000000', 'en', 'Solomon Islands', 204, 204),
('2022-01-19 12:20:43.384461', '2022-01-19 12:20:43.000000', 'en', 'Somalia', 205, 205),
('2022-01-19 12:20:43.390867', '2022-01-19 12:20:43.000000', 'en', 'South Africa', 206, 206),
('2022-01-19 12:20:43.397234', '2022-01-19 12:20:43.000000', 'en', 'South Georgia and the South Sandwich Islands', 207, 207),
('2022-01-19 12:20:43.402617', '2022-01-19 12:20:43.000000', 'en', 'South Sudan', 208, 208),
('2022-01-19 12:20:43.407765', '2022-01-19 12:20:43.000000', 'en', 'Spain', 209, 209),
('2022-01-19 12:20:43.413914', '2022-01-19 12:20:43.000000', 'en', 'Sri Lanka', 210, 210),
('2022-01-19 12:20:43.421289', '2022-01-19 12:20:43.000000', 'en', 'Sudan', 211, 211),
('2022-01-19 12:20:43.428468', '2022-01-19 12:20:43.000000', 'en', 'Suriname', 212, 212),
('2022-01-19 12:20:43.436253', '2022-01-19 12:20:43.000000', 'en', 'Svalbard and Jan Mayen', 213, 213),
('2022-01-19 12:20:43.443537', '2022-01-19 12:20:43.000000', 'en', 'Sweden', 214, 214),
('2022-01-19 12:20:43.453366', '2022-01-19 12:20:43.000000', 'en', 'Switzerland', 215, 215),
('2022-01-19 12:20:43.461287', '2022-01-19 12:20:43.000000', 'en', 'Syrian Arab Republic', 216, 216),
('2022-01-19 12:20:43.467954', '2022-01-19 12:20:43.000000', 'en', 'Taiwan, Province of China', 217, 217),
('2022-01-19 12:20:43.475528', '2022-01-19 12:20:43.000000', 'en', 'Tajikistan', 218, 218),
('2022-01-19 12:20:43.481390', '2022-01-19 12:20:43.000000', 'en', 'Tanzania, United Republic of', 219, 219),
('2022-01-19 12:20:43.487310', '2022-01-19 12:20:43.000000', 'en', 'Thailand', 220, 220),
('2022-01-19 12:20:43.494072', '2022-01-19 12:20:43.000000', 'en', 'Timor-Leste', 221, 221),
('2022-01-19 12:20:43.500540', '2022-01-19 12:20:43.000000', 'en', 'Togo', 222, 222),
('2022-01-19 12:20:43.509863', '2022-01-19 12:20:43.000000', 'en', 'Tokelau', 223, 223),
('2022-01-19 12:20:43.515690', '2022-01-19 12:20:43.000000', 'en', 'Tonga', 224, 224),
('2022-01-19 12:20:43.522989', '2022-01-19 12:20:43.000000', 'en', 'Trinidad and Tobago', 225, 225),
('2022-01-19 12:20:43.529805', '2022-01-19 12:20:43.000000', 'en', 'Tunisia', 226, 226),
('2022-01-19 12:20:43.536333', '2022-01-19 12:20:43.000000', 'en', 'Turkey', 227, 227),
('2022-01-19 12:20:43.542759', '2022-01-19 12:20:43.000000', 'en', 'Turkmenistan', 228, 228),
('2022-01-19 12:20:43.548573', '2022-01-19 12:20:43.000000', 'en', 'Turks and Caicos Islands', 229, 229),
('2022-01-19 12:20:43.553627', '2022-01-19 12:20:43.000000', 'en', 'Tuvalu', 230, 230),
('2022-01-19 12:20:43.560439', '2022-01-19 12:20:43.000000', 'en', 'Uganda', 231, 231),
('2022-01-19 12:20:43.566960', '2022-01-19 12:20:43.000000', 'en', 'Ukraine', 232, 232),
('2022-01-19 12:20:43.574565', '2022-01-19 12:20:43.000000', 'en', 'United Arab Emirates', 233, 233),
('2022-01-19 12:20:43.583024', '2022-01-19 12:20:43.000000', 'en', 'United Kingdom', 234, 234),
('2022-01-19 12:20:43.590566', '2022-01-19 12:20:43.000000', 'en', 'United States of America', 235, 235),
('2022-01-19 12:20:43.598440', '2022-01-19 12:20:43.000000', 'en', 'United States Minor Outlying Islands', 236, 236),
('2022-01-19 12:20:43.606971', '2022-01-19 12:20:43.000000', 'en', 'Uruguay', 237, 237),
('2022-01-19 12:20:43.614497', '2022-01-19 12:20:43.000000', 'en', 'Uzbekistan', 238, 238),
('2022-01-19 12:20:43.621750', '2022-01-19 12:20:43.000000', 'en', 'Vanuatu', 239, 239),
('2022-01-19 12:20:43.629958', '2022-01-19 12:20:43.000000', 'en', 'Venezuela (Bolivarian Republic of)', 240, 240),
('2022-01-19 12:20:43.638453', '2022-01-19 12:20:43.000000', 'en', 'Viet Nam', 241, 241),
('2022-01-19 12:20:43.645755', '2022-01-19 12:20:43.000000', 'en', 'Virgin Islands (British)', 242, 242),
('2022-01-19 12:20:43.653511', '2022-01-19 12:20:43.000000', 'en', 'Virgin Islands (U.S.)', 243, 243),
('2022-01-19 12:20:43.661501', '2022-01-19 12:20:43.000000', 'en', 'Wallis and Futuna', 244, 244),
('2022-01-19 12:20:43.669866', '2022-01-19 12:20:43.000000', 'en', 'Western Sahara', 245, 245),
('2022-01-19 12:20:43.676473', '2022-01-19 12:20:43.000000', 'en', 'Yemen', 246, 246),
('2022-01-19 12:20:43.684522', '2022-01-19 12:20:43.000000', 'en', 'Zambia', 247, 247),
('2022-01-19 12:20:43.691139', '2022-01-19 12:20:43.000000', 'en', 'Zimbabwe', 248, 248);

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `customer_channels_channel`
--

CREATE TABLE `customer_channels_channel` (
  `customerId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `customer_group`
--

CREATE TABLE `customer_group` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `customer_groups_customer_group`
--

CREATE TABLE `customer_groups_customer_group` (
  `customerId` int(11) NOT NULL,
  `customerGroupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `facet`
--

CREATE TABLE `facet` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `isPrivate` tinyint(4) NOT NULL DEFAULT 0,
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `facet`
--

INSERT INTO `facet` (`createdAt`, `updatedAt`, `isPrivate`, `code`, `id`) VALUES
('2022-01-19 12:20:44.180778', '2022-01-19 12:20:44.180778', 0, 'category', 1),
('2022-01-19 12:20:44.228141', '2022-01-19 12:20:44.228141', 0, 'brand', 2),
('2022-01-19 12:20:46.001952', '2022-01-19 12:20:46.001952', 0, 'color', 3),
('2022-01-19 12:20:46.714085', '2022-01-19 12:20:46.714085', 0, 'plant-type', 4);

-- --------------------------------------------------------

--
-- Structure de la table `facet_channels_channel`
--

CREATE TABLE `facet_channels_channel` (
  `facetId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `facet_channels_channel`
--

INSERT INTO `facet_channels_channel` (`facetId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `facet_translation`
--

CREATE TABLE `facet_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `facet_translation`
--

INSERT INTO `facet_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2022-01-19 12:20:44.174508', '2022-01-19 12:20:44.000000', 'en', 'category', 1, 1),
('2022-01-19 12:20:44.224025', '2022-01-19 12:20:44.000000', 'en', 'brand', 2, 2),
('2022-01-19 12:20:45.996456', '2022-01-19 12:20:46.000000', 'en', 'color', 3, 3),
('2022-01-19 12:20:46.709366', '2022-01-19 12:20:46.000000', 'en', 'plant type', 4, 4);

-- --------------------------------------------------------

--
-- Structure de la table `facet_value`
--

CREATE TABLE `facet_value` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `facetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `facet_value`
--

INSERT INTO `facet_value` (`createdAt`, `updatedAt`, `code`, `id`, `facetId`) VALUES
('2022-01-19 12:20:44.198367', '2022-01-19 12:20:44.198367', 'electronics', 1, 1),
('2022-01-19 12:20:44.211686', '2022-01-19 12:20:44.211686', 'computers', 2, 1),
('2022-01-19 12:20:44.267869', '2022-01-19 12:20:44.267869', 'apple', 3, 2),
('2022-01-19 12:20:44.510306', '2022-01-19 12:20:44.510306', 'logitech', 4, 2),
('2022-01-19 12:20:44.579637', '2022-01-19 12:20:44.579637', 'samsung', 5, 2),
('2022-01-19 12:20:44.714809', '2022-01-19 12:20:44.714809', 'corsair', 6, 2),
('2022-01-19 12:20:44.811245', '2022-01-19 12:20:44.811245', 'admi', 7, 2),
('2022-01-19 12:20:44.980370', '2022-01-19 12:20:44.980370', 'seagate', 8, 2),
('2022-01-19 12:20:45.243830', '2022-01-19 12:20:45.243830', 'photo', 9, 1),
('2022-01-19 12:20:45.251145', '2022-01-19 12:20:45.251145', 'polaroid', 10, 2),
('2022-01-19 12:20:45.293077', '2022-01-19 12:20:45.293077', 'nikkon', 11, 2),
('2022-01-19 12:20:45.337129', '2022-01-19 12:20:45.337129', 'agfa', 12, 2),
('2022-01-19 12:20:45.372333', '2022-01-19 12:20:45.372333', 'manfrotto', 13, 2),
('2022-01-19 12:20:45.408918', '2022-01-19 12:20:45.408918', 'kodak', 14, 2),
('2022-01-19 12:20:45.447173', '2022-01-19 12:20:45.447173', 'sony', 15, 2),
('2022-01-19 12:20:45.592852', '2022-01-19 12:20:45.592852', 'rolleiflex', 16, 2),
('2022-01-19 12:20:45.646568', '2022-01-19 12:20:45.646568', 'sports-outdoor', 17, 1),
('2022-01-19 12:20:45.653528', '2022-01-19 12:20:45.653528', 'equipment', 18, 1),
('2022-01-19 12:20:45.660732', '2022-01-19 12:20:45.660732', 'pinarello', 19, 2),
('2022-01-19 12:20:45.697369', '2022-01-19 12:20:45.697369', 'everlast', 20, 2),
('2022-01-19 12:20:45.849285', '2022-01-19 12:20:45.849285', 'nike', 21, 2),
('2022-01-19 12:20:45.903786', '2022-01-19 12:20:45.903786', 'wilson', 22, 2),
('2022-01-19 12:20:45.979551', '2022-01-19 12:20:45.979551', 'footwear', 23, 1),
('2022-01-19 12:20:45.989230', '2022-01-19 12:20:45.989230', 'adidas', 24, 2),
('2022-01-19 12:20:46.011226', '2022-01-19 12:20:46.011226', 'blue', 25, 3),
('2022-01-19 12:20:46.019231', '2022-01-19 12:20:46.019231', 'pink', 26, 3),
('2022-01-19 12:20:46.132051', '2022-01-19 12:20:46.132051', 'black', 27, 3),
('2022-01-19 12:20:46.240032', '2022-01-19 12:20:46.240032', 'white', 28, 3),
('2022-01-19 12:20:46.560095', '2022-01-19 12:20:46.560095', 'converse', 29, 2),
('2022-01-19 12:20:46.692083', '2022-01-19 12:20:46.692083', 'home-garden', 30, 1),
('2022-01-19 12:20:46.701496', '2022-01-19 12:20:46.701496', 'plants', 31, 1),
('2022-01-19 12:20:46.729955', '2022-01-19 12:20:46.729955', 'indoor', 32, 4),
('2022-01-19 12:20:46.771602', '2022-01-19 12:20:46.771602', 'outdoor', 33, 4),
('2022-01-19 12:20:47.021615', '2022-01-19 12:20:47.021615', 'furniture', 34, 1),
('2022-01-19 12:20:47.033219', '2022-01-19 12:20:47.033219', 'gray', 35, 3),
('2022-01-19 12:20:47.155720', '2022-01-19 12:20:47.155720', 'brown', 36, 3),
('2022-01-19 12:20:47.226094', '2022-01-19 12:20:47.226094', 'wood', 37, 3),
('2022-01-19 12:20:47.433359', '2022-01-19 12:20:47.433359', 'yellow', 38, 3),
('2022-01-19 12:20:47.455750', '2022-01-19 12:20:47.455750', 'green', 39, 3);

-- --------------------------------------------------------

--
-- Structure de la table `facet_value_channels_channel`
--

CREATE TABLE `facet_value_channels_channel` (
  `facetValueId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `facet_value_channels_channel`
--

INSERT INTO `facet_value_channels_channel` (`facetValueId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1);

-- --------------------------------------------------------

--
-- Structure de la table `facet_value_translation`
--

CREATE TABLE `facet_value_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `facet_value_translation`
--

INSERT INTO `facet_value_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2022-01-19 12:20:44.192920', '2022-01-19 12:20:44.000000', 'en', 'Electronics', 1, 1),
('2022-01-19 12:20:44.208640', '2022-01-19 12:20:44.000000', 'en', 'Computers', 2, 2),
('2022-01-19 12:20:44.262719', '2022-01-19 12:20:44.000000', 'en', 'Apple', 3, 3),
('2022-01-19 12:20:44.507911', '2022-01-19 12:20:44.000000', 'en', 'Logitech', 4, 4),
('2022-01-19 12:20:44.574724', '2022-01-19 12:20:44.000000', 'en', 'Samsung', 5, 5),
('2022-01-19 12:20:44.711931', '2022-01-19 12:20:44.000000', 'en', 'Corsair', 6, 6),
('2022-01-19 12:20:44.807904', '2022-01-19 12:20:44.000000', 'en', 'ADMI', 7, 7),
('2022-01-19 12:20:44.977019', '2022-01-19 12:20:44.000000', 'en', 'Seagate', 8, 8),
('2022-01-19 12:20:45.241289', '2022-01-19 12:20:45.000000', 'en', 'Photo', 9, 9),
('2022-01-19 12:20:45.248337', '2022-01-19 12:20:45.000000', 'en', 'Polaroid', 10, 10),
('2022-01-19 12:20:45.290232', '2022-01-19 12:20:45.000000', 'en', 'Nikkon', 11, 11),
('2022-01-19 12:20:45.334626', '2022-01-19 12:20:45.000000', 'en', 'Agfa', 12, 12),
('2022-01-19 12:20:45.369657', '2022-01-19 12:20:45.000000', 'en', 'Manfrotto', 13, 13),
('2022-01-19 12:20:45.405944', '2022-01-19 12:20:45.000000', 'en', 'Kodak', 14, 14),
('2022-01-19 12:20:45.444580', '2022-01-19 12:20:45.000000', 'en', 'Sony', 15, 15),
('2022-01-19 12:20:45.590082', '2022-01-19 12:20:45.000000', 'en', 'Rolleiflex', 16, 16),
('2022-01-19 12:20:45.644296', '2022-01-19 12:20:45.000000', 'en', 'Sports & Outdoor', 17, 17),
('2022-01-19 12:20:45.651400', '2022-01-19 12:20:45.000000', 'en', 'Equipment', 18, 18),
('2022-01-19 12:20:45.658118', '2022-01-19 12:20:45.000000', 'en', 'Pinarello', 19, 19),
('2022-01-19 12:20:45.694740', '2022-01-19 12:20:45.000000', 'en', 'Everlast', 20, 20),
('2022-01-19 12:20:45.846408', '2022-01-19 12:20:45.000000', 'en', 'Nike', 21, 21),
('2022-01-19 12:20:45.900611', '2022-01-19 12:20:45.000000', 'en', 'Wilson', 22, 22),
('2022-01-19 12:20:45.976407', '2022-01-19 12:20:45.000000', 'en', 'Footwear', 23, 23),
('2022-01-19 12:20:45.986172', '2022-01-19 12:20:45.000000', 'en', 'Adidas', 24, 24),
('2022-01-19 12:20:46.008877', '2022-01-19 12:20:46.000000', 'en', 'blue', 25, 25),
('2022-01-19 12:20:46.016245', '2022-01-19 12:20:46.000000', 'en', 'pink', 26, 26),
('2022-01-19 12:20:46.129934', '2022-01-19 12:20:46.000000', 'en', 'black', 27, 27),
('2022-01-19 12:20:46.237782', '2022-01-19 12:20:46.000000', 'en', 'white', 28, 28),
('2022-01-19 12:20:46.556335', '2022-01-19 12:20:46.000000', 'en', 'Converse', 29, 29),
('2022-01-19 12:20:46.688341', '2022-01-19 12:20:46.000000', 'en', 'Home & Garden', 30, 30),
('2022-01-19 12:20:46.697677', '2022-01-19 12:20:46.000000', 'en', 'Plants', 31, 31),
('2022-01-19 12:20:46.726753', '2022-01-19 12:20:46.000000', 'en', 'Indoor', 32, 32),
('2022-01-19 12:20:46.768767', '2022-01-19 12:20:46.000000', 'en', 'Outdoor', 33, 33),
('2022-01-19 12:20:47.018329', '2022-01-19 12:20:47.000000', 'en', 'Furniture', 34, 34),
('2022-01-19 12:20:47.029914', '2022-01-19 12:20:47.000000', 'en', 'gray', 35, 35),
('2022-01-19 12:20:47.152970', '2022-01-19 12:20:47.000000', 'en', 'brown', 36, 36),
('2022-01-19 12:20:47.222868', '2022-01-19 12:20:47.000000', 'en', 'wood', 37, 37),
('2022-01-19 12:20:47.430431', '2022-01-19 12:20:47.000000', 'en', 'yellow', 38, 38),
('2022-01-19 12:20:47.453087', '2022-01-19 12:20:47.000000', 'en', 'green', 39, 39);

-- --------------------------------------------------------

--
-- Structure de la table `fulfillment`
--

CREATE TABLE `fulfillment` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `state` varchar(255) NOT NULL,
  `trackingCode` varchar(255) NOT NULL DEFAULT '',
  `method` varchar(255) NOT NULL,
  `handlerCode` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `global_settings`
--

CREATE TABLE `global_settings` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `availableLanguages` text NOT NULL,
  `trackInventory` tinyint(4) NOT NULL DEFAULT 1,
  `outOfStockThreshold` int(11) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `global_settings`
--

INSERT INTO `global_settings` (`createdAt`, `updatedAt`, `availableLanguages`, `trackInventory`, `outOfStockThreshold`, `id`) VALUES
('2022-01-19 12:20:41.126673', '2022-01-19 12:20:41.126673', 'en', 1, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `history_entry`
--

CREATE TABLE `history_entry` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `type` varchar(255) NOT NULL,
  `isPublic` tinyint(4) NOT NULL,
  `data` text NOT NULL,
  `id` int(11) NOT NULL,
  `discriminator` varchar(255) NOT NULL,
  `administratorId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `history_entry`
--

INSERT INTO `history_entry` (`createdAt`, `updatedAt`, `type`, `isPublic`, `data`, `id`, `discriminator`, `administratorId`, `customerId`, `orderId`) VALUES
('2022-01-19 13:51:26.585812', '2022-01-19 13:51:26.585812', 'ORDER_STATE_TRANSITION', 1, '{\"from\":\"Created\",\"to\":\"AddingItems\"}', 1, 'OrderHistoryEntry', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `job_record`
--

CREATE TABLE `job_record` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `queueName` varchar(255) NOT NULL,
  `data` text DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `progress` int(11) NOT NULL,
  `result` text DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `startedAt` datetime(6) DEFAULT NULL,
  `settledAt` datetime(6) DEFAULT NULL,
  `isSettled` tinyint(4) NOT NULL,
  `retries` int(11) NOT NULL,
  `attempts` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `job_record`
--

INSERT INTO `job_record` (`createdAt`, `updatedAt`, `queueName`, `data`, `state`, `progress`, `result`, `error`, `startedAt`, `settledAt`, `isSettled`, `retries`, `attempts`, `id`) VALUES
('2022-01-19 12:20:47.537459', '2022-01-19 12:20:47.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"xo8xxj5keuavelrm6b\",\"createdAt\":\"2022-01-19T12:20:41.135Z\",\"updatedAt\":\"2022-01-19T12:20:44.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[2]}', 'COMPLETED', 100, NULL, NULL, '2022-01-19 11:20:47.612000', '2022-01-19 11:20:47.645000', 1, 0, 1, 1),
('2022-01-19 12:20:47.571251', '2022-01-19 12:20:47.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"xo8xxj5keuavelrm6b\",\"createdAt\":\"2022-01-19T12:20:41.135Z\",\"updatedAt\":\"2022-01-19T12:20:44.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[3]}', 'COMPLETED', 100, NULL, NULL, '2022-01-19 11:20:47.823000', '2022-01-19 11:20:47.944000', 1, 0, 1, 2),
('2022-01-19 12:20:47.621141', '2022-01-19 12:20:48.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"xo8xxj5keuavelrm6b\",\"createdAt\":\"2022-01-19T12:20:41.135Z\",\"updatedAt\":\"2022-01-19T12:20:44.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[4]}', 'COMPLETED', 100, NULL, NULL, '2022-01-19 11:20:48.058000', '2022-01-19 11:20:48.122000', 1, 0, 1, 3),
('2022-01-19 12:20:47.654574', '2022-01-19 12:20:48.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"xo8xxj5keuavelrm6b\",\"createdAt\":\"2022-01-19T12:20:41.135Z\",\"updatedAt\":\"2022-01-19T12:20:44.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[5]}', 'COMPLETED', 100, NULL, NULL, '2022-01-19 11:20:48.297000', '2022-01-19 11:20:48.325000', 1, 0, 1, 4),
('2022-01-19 12:20:47.674158', '2022-01-19 12:20:48.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"xo8xxj5keuavelrm6b\",\"createdAt\":\"2022-01-19T12:20:41.135Z\",\"updatedAt\":\"2022-01-19T12:20:44.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[6]}', 'COMPLETED', 100, NULL, NULL, '2022-01-19 11:20:48.521000', '2022-01-19 11:20:48.602000', 1, 0, 1, 5),
('2022-01-19 12:20:47.696083', '2022-01-19 12:20:48.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"xo8xxj5keuavelrm6b\",\"createdAt\":\"2022-01-19T12:20:41.135Z\",\"updatedAt\":\"2022-01-19T12:20:44.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":34,\"timeTaken\":205}', NULL, '2022-01-19 11:20:47.821000', '2022-01-19 11:20:48.033000', 1, 0, 1, 6),
('2022-01-19 12:20:47.699226', '2022-01-19 12:20:48.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"xo8xxj5keuavelrm6b\",\"createdAt\":\"2022-01-19T12:20:41.135Z\",\"updatedAt\":\"2022-01-19T12:20:44.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[7]}', 'COMPLETED', 100, NULL, NULL, '2022-01-19 11:20:48.778000', '2022-01-19 11:20:48.842000', 1, 0, 1, 7),
('2022-01-19 12:20:47.721479', '2022-01-19 12:20:49.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"xo8xxj5keuavelrm6b\",\"createdAt\":\"2022-01-19T12:20:41.135Z\",\"updatedAt\":\"2022-01-19T12:20:44.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[8]}', 'COMPLETED', 100, NULL, NULL, '2022-01-19 11:20:49.030000', '2022-01-19 11:20:49.098000', 1, 0, 1, 8),
('2022-01-19 12:20:47.746943', '2022-01-19 12:20:49.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"xo8xxj5keuavelrm6b\",\"createdAt\":\"2022-01-19T12:20:41.135Z\",\"updatedAt\":\"2022-01-19T12:20:44.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[9]}', 'COMPLETED', 100, NULL, NULL, '2022-01-19 11:20:49.275000', '2022-01-19 11:20:49.354000', 1, 0, 1, 9),
('2022-01-19 12:20:47.770757', '2022-01-19 12:20:49.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"xo8xxj5keuavelrm6b\",\"createdAt\":\"2022-01-19T12:20:41.135Z\",\"updatedAt\":\"2022-01-19T12:20:44.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[10]}', 'COMPLETED', 100, NULL, NULL, '2022-01-19 11:20:49.546000', '2022-01-19 11:20:49.610000', 1, 0, 1, 10),
('2022-01-19 12:20:47.827609', '2022-01-19 12:20:48.000000', 'update-search-index', '{\"type\":\"reindex\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"xo8xxj5keuavelrm6b\",\"createdAt\":\"2022-01-19T12:20:41.135Z\",\"updatedAt\":\"2022-01-19T12:20:44.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false}}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":88,\"timeTaken\":355}', NULL, '2022-01-19 11:20:48.055000', '2022-01-19 11:20:48.421000', 1, 0, 1, 11),
('2022-01-19 12:20:47.997008', '2022-01-19 12:20:48.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"xo8xxj5keuavelrm6b\",\"createdAt\":\"2022-01-19T12:20:41.135Z\",\"updatedAt\":\"2022-01-19T12:20:44.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":25,\"timeTaken\":97}', NULL, '2022-01-19 11:20:48.512000', '2022-01-19 11:20:48.629000', 1, 0, 1, 12),
('2022-01-19 12:20:48.221327', '2022-01-19 12:20:48.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"xo8xxj5keuavelrm6b\",\"createdAt\":\"2022-01-19T12:20:41.135Z\",\"updatedAt\":\"2022-01-19T12:20:44.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[26,27,28,29,30,31,32,33,34]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":9,\"timeTaken\":91}', NULL, '2022-01-19 11:20:48.766000', '2022-01-19 11:20:48.882000', 1, 0, 1, 13),
('2022-01-19 12:20:48.376910', '2022-01-19 12:20:49.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"xo8xxj5keuavelrm6b\",\"createdAt\":\"2022-01-19T12:20:41.135Z\",\"updatedAt\":\"2022-01-19T12:20:44.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":22,\"timeTaken\":119}', NULL, '2022-01-19 11:20:49.025000', '2022-01-19 11:20:49.157000', 1, 0, 1, 14),
('2022-01-19 12:20:48.665498', '2022-01-19 12:20:49.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"xo8xxj5keuavelrm6b\",\"createdAt\":\"2022-01-19T12:20:41.135Z\",\"updatedAt\":\"2022-01-19T12:20:44.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[75,77,78,79,80,81,82,83,84,85,86,87,88]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":13,\"timeTaken\":85}', NULL, '2022-01-19 11:20:49.265000', '2022-01-19 11:20:49.372000', 1, 0, 1, 15),
('2022-01-19 12:20:48.900916', '2022-01-19 12:20:49.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"xo8xxj5keuavelrm6b\",\"createdAt\":\"2022-01-19T12:20:41.135Z\",\"updatedAt\":\"2022-01-19T12:20:44.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[67,68,69,70,71,72,73,74,76]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":9,\"timeTaken\":69}', NULL, '2022-01-19 11:20:49.534000', '2022-01-19 11:20:49.627000', 1, 0, 1, 16),
('2022-01-19 12:20:49.150614', '2022-01-19 12:21:23.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"xo8xxj5keuavelrm6b\",\"createdAt\":\"2022-01-19T12:20:41.135Z\",\"updatedAt\":\"2022-01-19T12:20:44.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":32,\"timeTaken\":386}', NULL, '2022-01-19 11:21:23.086000', '2022-01-19 11:21:23.489000', 1, 0, 1, 17),
('2022-01-19 12:20:49.416412', '2022-01-19 12:21:23.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"xo8xxj5keuavelrm6b\",\"createdAt\":\"2022-01-19T12:20:41.135Z\",\"updatedAt\":\"2022-01-19T12:20:44.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[35,36,37,38,39,40,41,42]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":8,\"timeTaken\":80}', NULL, '2022-01-19 11:21:23.586000', '2022-01-19 11:21:23.672000', 1, 0, 1, 18),
('2022-01-19 12:20:49.671393', '2022-01-19 12:21:24.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"xo8xxj5keuavelrm6b\",\"createdAt\":\"2022-01-19T12:20:41.135Z\",\"updatedAt\":\"2022-01-19T12:20:44.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-01-19T12:20:41.573Z\",\"updatedAt\":\"2022-01-19T12:20:41.573Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":24,\"timeTaken\":163}', NULL, '2022-01-19 11:21:23.825000', '2022-01-19 11:21:23.998000', 1, 0, 1, 19);

-- --------------------------------------------------------

--
-- Structure de la table `job_record_buffer`
--

CREATE TABLE `job_record_buffer` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `bufferId` varchar(255) NOT NULL,
  `job` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

CREATE TABLE `order` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `orderPlacedAt` datetime DEFAULT NULL,
  `couponCodes` text NOT NULL,
  `shippingAddress` text NOT NULL,
  `billingAddress` text NOT NULL,
  `currencyCode` varchar(255) NOT NULL,
  `subTotal` int(11) NOT NULL,
  `subTotalWithTax` int(11) NOT NULL,
  `shipping` int(11) NOT NULL DEFAULT 0,
  `shippingWithTax` int(11) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL,
  `taxZoneId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `order`
--

INSERT INTO `order` (`createdAt`, `updatedAt`, `code`, `state`, `active`, `orderPlacedAt`, `couponCodes`, `shippingAddress`, `billingAddress`, `currencyCode`, `subTotal`, `subTotalWithTax`, `shipping`, `shippingWithTax`, `id`, `taxZoneId`, `customerId`) VALUES
('2022-01-19 13:51:26.549281', '2022-01-19 13:51:26.000000', 'P9QDD16MR1SW1BFU', 'AddingItems', 1, NULL, '', '{}', '{}', 'USD', 219900, 263880, 0, 0, 1, 2, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `order_channels_channel`
--

CREATE TABLE `order_channels_channel` (
  `orderId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `order_channels_channel`
--

INSERT INTO `order_channels_channel` (`orderId`, `channelId`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `order_item`
--

CREATE TABLE `order_item` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `initialListPrice` int(11) DEFAULT NULL,
  `listPrice` int(11) NOT NULL,
  `listPriceIncludesTax` tinyint(4) NOT NULL,
  `adjustments` text NOT NULL,
  `taxLines` text NOT NULL,
  `cancelled` tinyint(4) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL,
  `lineId` int(11) NOT NULL,
  `refundId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `order_item`
--

INSERT INTO `order_item` (`createdAt`, `updatedAt`, `initialListPrice`, `listPrice`, `listPriceIncludesTax`, `adjustments`, `taxLines`, `cancelled`, `id`, `lineId`, `refundId`) VALUES
('2022-01-19 13:51:26.642863', '2022-01-19 13:51:26.657849', 219900, 219900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `order_item_fulfillments_fulfillment`
--

CREATE TABLE `order_item_fulfillments_fulfillment` (
  `orderItemId` int(11) NOT NULL,
  `fulfillmentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `order_line`
--

CREATE TABLE `order_line` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `id` int(11) NOT NULL,
  `productVariantId` int(11) DEFAULT NULL,
  `taxCategoryId` int(11) DEFAULT NULL,
  `featuredAssetId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `order_line`
--

INSERT INTO `order_line` (`createdAt`, `updatedAt`, `id`, `productVariantId`, `taxCategoryId`, `featuredAssetId`, `orderId`) VALUES
('2022-01-19 13:51:26.628253', '2022-01-19 13:51:26.628000', 1, 3, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `order_modification`
--

CREATE TABLE `order_modification` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `note` varchar(255) NOT NULL,
  `priceChange` int(11) NOT NULL,
  `shippingAddressChange` text DEFAULT NULL,
  `billingAddressChange` text DEFAULT NULL,
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `paymentId` int(11) DEFAULT NULL,
  `refundId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `order_modification_order_items_order_item`
--

CREATE TABLE `order_modification_order_items_order_item` (
  `orderModificationId` int(11) NOT NULL,
  `orderItemId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `order_promotions_promotion`
--

CREATE TABLE `order_promotions_promotion` (
  `orderId` int(11) NOT NULL,
  `promotionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `payment`
--

CREATE TABLE `payment` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `method` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `state` varchar(255) NOT NULL,
  `errorMessage` varchar(255) DEFAULT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `metadata` text NOT NULL,
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `payment_method`
--

CREATE TABLE `payment_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL DEFAULT '',
  `code` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `enabled` tinyint(4) NOT NULL,
  `checker` text DEFAULT NULL,
  `handler` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `payment_method`
--

INSERT INTO `payment_method` (`createdAt`, `updatedAt`, `name`, `code`, `description`, `enabled`, `checker`, `handler`, `id`) VALUES
('2022-01-19 12:20:44.041414', '2022-01-19 12:20:44.041414', 'Standard Payment', 'standard-payment', '', 1, NULL, '{\"code\":\"dummy-payment-handler\",\"args\":[{\"name\":\"automaticSettle\",\"value\":\"false\"}]}', 1);

-- --------------------------------------------------------

--
-- Structure de la table `payment_method_channels_channel`
--

CREATE TABLE `payment_method_channels_channel` (
  `paymentMethodId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `payment_method_channels_channel`
--

INSERT INTO `payment_method_channels_channel` (`paymentMethodId`, `channelId`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `id` int(11) NOT NULL,
  `featuredAssetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`createdAt`, `updatedAt`, `deletedAt`, `enabled`, `id`, `featuredAssetId`) VALUES
('2022-01-19 12:20:44.283509', '2022-01-19 12:20:44.283509', NULL, 1, 1, 1),
('2022-01-19 12:20:44.446234', '2022-01-19 12:20:44.446234', NULL, 1, 2, 2),
('2022-01-19 12:20:44.524867', '2022-01-19 12:20:44.524867', NULL, 1, 3, 3),
('2022-01-19 12:20:44.593068', '2022-01-19 12:20:44.593068', NULL, 1, 4, 4),
('2022-01-19 12:20:44.627665', '2022-01-19 12:20:44.627665', NULL, 1, 5, 5),
('2022-01-19 12:20:44.721242', '2022-01-19 12:20:44.721242', NULL, 1, 6, 6),
('2022-01-19 12:20:44.820254', '2022-01-19 12:20:44.820254', NULL, 1, 7, 7),
('2022-01-19 12:20:44.991992', '2022-01-19 12:20:44.991992', NULL, 1, 8, 8),
('2022-01-19 12:20:45.158380', '2022-01-19 12:20:45.158380', NULL, 1, 9, 9),
('2022-01-19 12:20:45.190065', '2022-01-19 12:20:45.190065', NULL, 1, 10, 10),
('2022-01-19 12:20:45.217318', '2022-01-19 12:20:45.217318', NULL, 1, 11, 11),
('2022-01-19 12:20:45.259918', '2022-01-19 12:20:45.259918', NULL, 1, 12, 12),
('2022-01-19 12:20:45.302615', '2022-01-19 12:20:45.302615', NULL, 1, 13, 13),
('2022-01-19 12:20:45.344954', '2022-01-19 12:20:45.344954', NULL, 1, 14, 14),
('2022-01-19 12:20:45.379337', '2022-01-19 12:20:45.379337', NULL, 1, 15, 15),
('2022-01-19 12:20:45.417236', '2022-01-19 12:20:45.417236', NULL, 1, 16, 16),
('2022-01-19 12:20:45.458216', '2022-01-19 12:20:45.458216', NULL, 1, 17, 17),
('2022-01-19 12:20:45.524691', '2022-01-19 12:20:45.524691', NULL, 1, 18, 18),
('2022-01-19 12:20:45.566953', '2022-01-19 12:20:45.566953', NULL, 1, 19, 19),
('2022-01-19 12:20:45.601531', '2022-01-19 12:20:45.601531', NULL, 1, 20, 20),
('2022-01-19 12:20:45.669848', '2022-01-19 12:20:45.669848', NULL, 1, 21, 21),
('2022-01-19 12:20:45.706326', '2022-01-19 12:20:45.706326', NULL, 1, 22, 22),
('2022-01-19 12:20:45.757993', '2022-01-19 12:20:45.757993', NULL, 1, 23, 23),
('2022-01-19 12:20:45.793774', '2022-01-19 12:20:45.793774', NULL, 1, 24, 24),
('2022-01-19 12:20:45.821546', '2022-01-19 12:20:45.821546', NULL, 1, 25, 25),
('2022-01-19 12:20:45.857293', '2022-01-19 12:20:45.857293', NULL, 1, 26, 26),
('2022-01-19 12:20:45.914299', '2022-01-19 12:20:45.914299', NULL, 1, 27, 27),
('2022-01-19 12:20:45.949030', '2022-01-19 12:20:45.949030', NULL, 1, 28, 28),
('2022-01-19 12:20:46.027686', '2022-01-19 12:20:46.027686', NULL, 1, 29, 29),
('2022-01-19 12:20:46.138538', '2022-01-19 12:20:46.138538', NULL, 1, 30, 30),
('2022-01-19 12:20:46.248064', '2022-01-19 12:20:46.248064', NULL, 1, 31, 31),
('2022-01-19 12:20:46.346534', '2022-01-19 12:20:46.346534', NULL, 1, 32, 32),
('2022-01-19 12:20:46.449088', '2022-01-19 12:20:46.449088', NULL, 1, 33, 33),
('2022-01-19 12:20:46.578280', '2022-01-19 12:20:46.578280', NULL, 1, 34, 34),
('2022-01-19 12:20:46.739299', '2022-01-19 12:20:46.739299', NULL, 1, 35, 35),
('2022-01-19 12:20:46.781739', '2022-01-19 12:20:46.781739', NULL, 1, 36, 36),
('2022-01-19 12:20:46.819905', '2022-01-19 12:20:46.819905', NULL, 1, 37, 37),
('2022-01-19 12:20:46.848550', '2022-01-19 12:20:46.848550', NULL, 1, 38, 38),
('2022-01-19 12:20:46.887196', '2022-01-19 12:20:46.887196', NULL, 1, 39, 39),
('2022-01-19 12:20:46.920751', '2022-01-19 12:20:46.920751', NULL, 1, 40, 40),
('2022-01-19 12:20:46.952959', '2022-01-19 12:20:46.952959', NULL, 1, 41, 41),
('2022-01-19 12:20:46.995458', '2022-01-19 12:20:46.995458', NULL, 1, 42, 42),
('2022-01-19 12:20:47.041539', '2022-01-19 12:20:47.041539', NULL, 1, 43, 43),
('2022-01-19 12:20:47.073823', '2022-01-19 12:20:47.073823', NULL, 1, 44, 44),
('2022-01-19 12:20:47.101305', '2022-01-19 12:20:47.101305', NULL, 1, 45, 45),
('2022-01-19 12:20:47.129762', '2022-01-19 12:20:47.129762', NULL, 1, 46, 46),
('2022-01-19 12:20:47.165727', '2022-01-19 12:20:47.165727', NULL, 1, 47, 47),
('2022-01-19 12:20:47.194712', '2022-01-19 12:20:47.194712', NULL, 1, 48, 48),
('2022-01-19 12:20:47.234932', '2022-01-19 12:20:47.234932', NULL, 1, 49, 49),
('2022-01-19 12:20:47.266198', '2022-01-19 12:20:47.266198', NULL, 1, 50, 50),
('2022-01-19 12:20:47.301947', '2022-01-19 12:20:47.301947', NULL, 1, 51, 51),
('2022-01-19 12:20:47.336225', '2022-01-19 12:20:47.336225', NULL, 1, 52, 52),
('2022-01-19 12:20:47.372592', '2022-01-19 12:20:47.372592', NULL, 1, 53, 53),
('2022-01-19 12:20:47.398313', '2022-01-19 12:20:47.398313', NULL, 1, 54, 54);

-- --------------------------------------------------------

--
-- Structure de la table `product_asset`
--

CREATE TABLE `product_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `assetId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product_asset`
--

INSERT INTO `product_asset` (`createdAt`, `updatedAt`, `assetId`, `position`, `productId`, `id`) VALUES
('2022-01-19 12:20:44.293737', '2022-01-19 12:20:44.293737', 1, 0, 1, 1),
('2022-01-19 12:20:44.451523', '2022-01-19 12:20:44.451523', 2, 0, 2, 2),
('2022-01-19 12:20:44.531901', '2022-01-19 12:20:44.531901', 3, 0, 3, 3),
('2022-01-19 12:20:44.597785', '2022-01-19 12:20:44.597785', 4, 0, 4, 4),
('2022-01-19 12:20:44.632117', '2022-01-19 12:20:44.632117', 5, 0, 5, 5),
('2022-01-19 12:20:44.725101', '2022-01-19 12:20:44.725101', 6, 0, 6, 6),
('2022-01-19 12:20:44.824941', '2022-01-19 12:20:44.824941', 7, 0, 7, 7),
('2022-01-19 12:20:45.000213', '2022-01-19 12:20:45.000213', 8, 0, 8, 8),
('2022-01-19 12:20:45.163323', '2022-01-19 12:20:45.163323', 9, 0, 9, 9),
('2022-01-19 12:20:45.194408', '2022-01-19 12:20:45.194408', 10, 0, 10, 10),
('2022-01-19 12:20:45.221001', '2022-01-19 12:20:45.221001', 11, 0, 11, 11),
('2022-01-19 12:20:45.265873', '2022-01-19 12:20:45.265873', 12, 0, 12, 12),
('2022-01-19 12:20:45.308101', '2022-01-19 12:20:45.308101', 13, 0, 13, 13),
('2022-01-19 12:20:45.348767', '2022-01-19 12:20:45.348767', 14, 0, 14, 14),
('2022-01-19 12:20:45.382887', '2022-01-19 12:20:45.382887', 15, 0, 15, 15),
('2022-01-19 12:20:45.421902', '2022-01-19 12:20:45.421902', 16, 0, 16, 16),
('2022-01-19 12:20:45.463472', '2022-01-19 12:20:45.463472', 17, 0, 17, 17),
('2022-01-19 12:20:45.532708', '2022-01-19 12:20:45.532708', 18, 0, 18, 18),
('2022-01-19 12:20:45.571460', '2022-01-19 12:20:45.571460', 19, 0, 19, 19),
('2022-01-19 12:20:45.606081', '2022-01-19 12:20:45.606081', 20, 0, 20, 20),
('2022-01-19 12:20:45.673903', '2022-01-19 12:20:45.673903', 21, 0, 21, 21),
('2022-01-19 12:20:45.710315', '2022-01-19 12:20:45.710315', 22, 0, 22, 22),
('2022-01-19 12:20:45.763483', '2022-01-19 12:20:45.763483', 23, 0, 23, 23),
('2022-01-19 12:20:45.798385', '2022-01-19 12:20:45.798385', 24, 0, 24, 24),
('2022-01-19 12:20:45.824962', '2022-01-19 12:20:45.824962', 25, 0, 25, 25),
('2022-01-19 12:20:45.862577', '2022-01-19 12:20:45.862577', 26, 0, 26, 26),
('2022-01-19 12:20:45.919121', '2022-01-19 12:20:45.919121', 27, 0, 27, 27),
('2022-01-19 12:20:45.953351', '2022-01-19 12:20:45.953351', 28, 0, 28, 28),
('2022-01-19 12:20:46.032382', '2022-01-19 12:20:46.032382', 29, 0, 29, 29),
('2022-01-19 12:20:46.142620', '2022-01-19 12:20:46.142620', 30, 0, 30, 30),
('2022-01-19 12:20:46.252152', '2022-01-19 12:20:46.252152', 31, 0, 31, 31),
('2022-01-19 12:20:46.350298', '2022-01-19 12:20:46.350298', 32, 0, 32, 32),
('2022-01-19 12:20:46.452612', '2022-01-19 12:20:46.452612', 33, 0, 33, 33),
('2022-01-19 12:20:46.582261', '2022-01-19 12:20:46.582261', 34, 0, 34, 34),
('2022-01-19 12:20:46.744697', '2022-01-19 12:20:46.744697', 35, 0, 35, 35),
('2022-01-19 12:20:46.787668', '2022-01-19 12:20:46.787668', 36, 0, 36, 36),
('2022-01-19 12:20:46.823934', '2022-01-19 12:20:46.823934', 37, 0, 37, 37),
('2022-01-19 12:20:46.851526', '2022-01-19 12:20:46.851526', 38, 0, 38, 38),
('2022-01-19 12:20:46.893575', '2022-01-19 12:20:46.893575', 39, 0, 39, 39),
('2022-01-19 12:20:46.924842', '2022-01-19 12:20:46.924842', 40, 0, 40, 40),
('2022-01-19 12:20:46.956063', '2022-01-19 12:20:46.956063', 41, 0, 41, 41),
('2022-01-19 12:20:46.999758', '2022-01-19 12:20:46.999758', 42, 0, 42, 42),
('2022-01-19 12:20:47.045751', '2022-01-19 12:20:47.045751', 43, 0, 43, 43),
('2022-01-19 12:20:47.077592', '2022-01-19 12:20:47.077592', 44, 0, 44, 44),
('2022-01-19 12:20:47.105150', '2022-01-19 12:20:47.105150', 45, 0, 45, 45),
('2022-01-19 12:20:47.134182', '2022-01-19 12:20:47.134182', 46, 0, 46, 46),
('2022-01-19 12:20:47.170499', '2022-01-19 12:20:47.170499', 47, 0, 47, 47),
('2022-01-19 12:20:47.198873', '2022-01-19 12:20:47.198873', 48, 0, 48, 48),
('2022-01-19 12:20:47.238639', '2022-01-19 12:20:47.238639', 49, 0, 49, 49),
('2022-01-19 12:20:47.271032', '2022-01-19 12:20:47.271032', 50, 0, 50, 50),
('2022-01-19 12:20:47.306244', '2022-01-19 12:20:47.306244', 51, 0, 51, 51),
('2022-01-19 12:20:47.341722', '2022-01-19 12:20:47.341722', 52, 0, 52, 52),
('2022-01-19 12:20:47.376905', '2022-01-19 12:20:47.376905', 53, 0, 53, 53),
('2022-01-19 12:20:47.402537', '2022-01-19 12:20:47.402537', 54, 0, 54, 54);

-- --------------------------------------------------------

--
-- Structure de la table `product_channels_channel`
--

CREATE TABLE `product_channels_channel` (
  `productId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product_channels_channel`
--

INSERT INTO `product_channels_channel` (`productId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1);

-- --------------------------------------------------------

--
-- Structure de la table `product_facet_values_facet_value`
--

CREATE TABLE `product_facet_values_facet_value` (
  `productId` int(11) NOT NULL,
  `facetValueId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product_facet_values_facet_value`
--

INSERT INTO `product_facet_values_facet_value` (`productId`, `facetValueId`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 4),
(4, 1),
(4, 2),
(4, 5),
(5, 1),
(5, 2),
(5, 5),
(6, 1),
(6, 2),
(6, 6),
(7, 1),
(7, 2),
(7, 7),
(8, 1),
(8, 2),
(8, 8),
(9, 1),
(9, 2),
(9, 6),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 9),
(12, 10),
(13, 1),
(13, 9),
(13, 11),
(14, 1),
(14, 9),
(14, 12),
(15, 1),
(15, 9),
(15, 13),
(16, 1),
(16, 9),
(16, 14),
(17, 1),
(17, 9),
(17, 15),
(18, 1),
(18, 9),
(18, 11),
(19, 1),
(19, 9),
(20, 1),
(20, 9),
(20, 16),
(21, 17),
(21, 18),
(21, 19),
(22, 17),
(22, 18),
(22, 20),
(23, 17),
(23, 18),
(23, 20),
(24, 17),
(24, 18),
(25, 17),
(25, 18),
(26, 17),
(26, 18),
(26, 21),
(27, 17),
(27, 18),
(27, 22),
(28, 17),
(28, 18),
(28, 22),
(29, 17),
(29, 23),
(29, 24),
(29, 25),
(29, 26),
(30, 17),
(30, 21),
(30, 23),
(30, 27),
(31, 17),
(31, 21),
(31, 23),
(31, 28),
(32, 17),
(32, 23),
(32, 24),
(32, 27),
(32, 28),
(33, 17),
(33, 23),
(33, 24),
(33, 27),
(34, 17),
(34, 23),
(34, 27),
(34, 29),
(35, 30),
(35, 31),
(35, 32),
(36, 30),
(36, 31),
(36, 32),
(36, 33),
(37, 30),
(37, 31),
(37, 33),
(38, 30),
(38, 31),
(38, 32),
(39, 30),
(39, 31),
(39, 33),
(40, 30),
(40, 31),
(40, 32),
(41, 30),
(41, 31),
(42, 30),
(42, 31),
(43, 30),
(43, 34),
(43, 35),
(44, 30),
(44, 31),
(45, 30),
(45, 34),
(46, 30),
(46, 34),
(46, 35),
(47, 30),
(47, 34),
(47, 36),
(48, 30),
(48, 34),
(49, 30),
(49, 34),
(49, 37),
(50, 30),
(50, 34),
(50, 35),
(51, 27),
(51, 30),
(51, 34),
(52, 30),
(52, 34),
(52, 37),
(53, 28),
(53, 30),
(53, 34),
(54, 30),
(54, 34);

-- --------------------------------------------------------

--
-- Structure de la table `product_option`
--

CREATE TABLE `product_option` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product_option`
--

INSERT INTO `product_option` (`createdAt`, `updatedAt`, `deletedAt`, `code`, `id`, `groupId`) VALUES
('2022-01-19 12:20:44.316291', '2022-01-19 12:20:44.316291', NULL, '13-inch', 1, 1),
('2022-01-19 12:20:44.326831', '2022-01-19 12:20:44.326831', NULL, '15-inch', 2, 1),
('2022-01-19 12:20:44.349623', '2022-01-19 12:20:44.349623', NULL, '8gb', 3, 2),
('2022-01-19 12:20:44.356438', '2022-01-19 12:20:44.356438', NULL, '16gb', 4, 2),
('2022-01-19 12:20:44.465659', '2022-01-19 12:20:44.465659', NULL, '32gb', 5, 3),
('2022-01-19 12:20:44.472498', '2022-01-19 12:20:44.472498', NULL, '128gb', 6, 3),
('2022-01-19 12:20:44.646534', '2022-01-19 12:20:44.646534', NULL, '24-inch', 7, 4),
('2022-01-19 12:20:44.653726', '2022-01-19 12:20:44.653726', NULL, '27-inch', 8, 4),
('2022-01-19 12:20:44.735232', '2022-01-19 12:20:44.735232', NULL, '4gb', 9, 5),
('2022-01-19 12:20:44.741999', '2022-01-19 12:20:44.741999', NULL, '8gb', 10, 5),
('2022-01-19 12:20:44.748822', '2022-01-19 12:20:44.748822', NULL, '16gb', 11, 5),
('2022-01-19 12:20:44.863772', '2022-01-19 12:20:44.863772', NULL, 'i7-8700', 12, 6),
('2022-01-19 12:20:44.872659', '2022-01-19 12:20:44.872659', NULL, 'r7-2700', 13, 6),
('2022-01-19 12:20:44.890089', '2022-01-19 12:20:44.890089', NULL, '240gb-ssd', 14, 7),
('2022-01-19 12:20:44.898837', '2022-01-19 12:20:44.898837', NULL, '120gb-ssd', 15, 7),
('2022-01-19 12:20:45.014185', '2022-01-19 12:20:45.014185', NULL, '1tb', 16, 8),
('2022-01-19 12:20:45.023536', '2022-01-19 12:20:45.023536', NULL, '2tb', 17, 8),
('2022-01-19 12:20:45.033927', '2022-01-19 12:20:45.033927', NULL, '3tb', 18, 8),
('2022-01-19 12:20:45.042677', '2022-01-19 12:20:45.042677', NULL, '4tb', 19, 8),
('2022-01-19 12:20:45.050656', '2022-01-19 12:20:45.050656', NULL, '6tb', 20, 8),
('2022-01-19 12:20:46.048152', '2022-01-19 12:20:46.048152', NULL, 'size-40', 21, 9),
('2022-01-19 12:20:46.055870', '2022-01-19 12:20:46.055870', NULL, 'size-42', 22, 9),
('2022-01-19 12:20:46.062481', '2022-01-19 12:20:46.062481', NULL, 'size-44', 23, 9),
('2022-01-19 12:20:46.067880', '2022-01-19 12:20:46.067880', NULL, 'size-46', 24, 9),
('2022-01-19 12:20:46.153928', '2022-01-19 12:20:46.153928', NULL, 'size-40', 25, 10),
('2022-01-19 12:20:46.160642', '2022-01-19 12:20:46.160642', NULL, 'size-42', 26, 10),
('2022-01-19 12:20:46.169534', '2022-01-19 12:20:46.169534', NULL, 'size-44', 27, 10),
('2022-01-19 12:20:46.175220', '2022-01-19 12:20:46.175220', NULL, 'size-46', 28, 10),
('2022-01-19 12:20:46.264901', '2022-01-19 12:20:46.264901', NULL, 'size-40', 29, 11),
('2022-01-19 12:20:46.269297', '2022-01-19 12:20:46.269297', NULL, 'size-42', 30, 11),
('2022-01-19 12:20:46.273576', '2022-01-19 12:20:46.273576', NULL, 'size-44', 31, 11),
('2022-01-19 12:20:46.278015', '2022-01-19 12:20:46.278015', NULL, 'size-46', 32, 11),
('2022-01-19 12:20:46.360534', '2022-01-19 12:20:46.360534', NULL, 'size-40', 33, 12),
('2022-01-19 12:20:46.365917', '2022-01-19 12:20:46.365917', NULL, 'size-42', 34, 12),
('2022-01-19 12:20:46.373243', '2022-01-19 12:20:46.373243', NULL, 'size-44', 35, 12),
('2022-01-19 12:20:46.380733', '2022-01-19 12:20:46.380733', NULL, 'size-46', 36, 12),
('2022-01-19 12:20:46.461006', '2022-01-19 12:20:46.461006', NULL, 'size-40', 37, 13),
('2022-01-19 12:20:46.467548', '2022-01-19 12:20:46.467548', NULL, 'size-42', 38, 13),
('2022-01-19 12:20:46.474744', '2022-01-19 12:20:46.474744', NULL, 'size-44', 39, 13),
('2022-01-19 12:20:46.481095', '2022-01-19 12:20:46.481095', NULL, 'size-46', 40, 13),
('2022-01-19 12:20:46.591239', '2022-01-19 12:20:46.591239', NULL, 'size-40', 41, 14),
('2022-01-19 12:20:46.596381', '2022-01-19 12:20:46.596381', NULL, 'size-42', 42, 14),
('2022-01-19 12:20:46.601835', '2022-01-19 12:20:46.601835', NULL, 'size-44', 43, 14),
('2022-01-19 12:20:46.608621', '2022-01-19 12:20:46.608621', NULL, 'size-46', 44, 14),
('2022-01-19 12:20:47.414017', '2022-01-19 12:20:47.414017', NULL, 'mustard', 45, 15),
('2022-01-19 12:20:47.420457', '2022-01-19 12:20:47.420457', NULL, 'mint', 46, 15),
('2022-01-19 12:20:47.425433', '2022-01-19 12:20:47.425433', NULL, 'pearl', 47, 15);

-- --------------------------------------------------------

--
-- Structure de la table `product_option_group`
--

CREATE TABLE `product_option_group` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product_option_group`
--

INSERT INTO `product_option_group` (`createdAt`, `updatedAt`, `deletedAt`, `code`, `id`, `productId`) VALUES
('2022-01-19 12:20:44.302954', '2022-01-19 12:20:44.000000', NULL, 'laptop-screen-size', 1, 1),
('2022-01-19 12:20:44.341310', '2022-01-19 12:20:44.000000', NULL, 'laptop-ram', 2, 1),
('2022-01-19 12:20:44.457441', '2022-01-19 12:20:44.000000', NULL, 'tablet-storage', 3, 2),
('2022-01-19 12:20:44.638605', '2022-01-19 12:20:44.000000', NULL, 'curvy-monitor-monitor-size', 4, 5),
('2022-01-19 12:20:44.729254', '2022-01-19 12:20:44.000000', NULL, 'high-performance-ram-size', 5, 6),
('2022-01-19 12:20:44.831864', '2022-01-19 12:20:44.000000', NULL, 'gaming-pc-cpu', 6, 7),
('2022-01-19 12:20:44.882646', '2022-01-19 12:20:44.000000', NULL, 'gaming-pc-hdd', 7, 7),
('2022-01-19 12:20:45.006468', '2022-01-19 12:20:45.000000', NULL, 'hard-drive-hdd', 8, 8),
('2022-01-19 12:20:46.038814', '2022-01-19 12:20:46.000000', NULL, 'ultraboost-running-shoe-size', 9, 29),
('2022-01-19 12:20:46.147700', '2022-01-19 12:20:46.000000', NULL, 'freerun-running-shoe-size', 10, 30),
('2022-01-19 12:20:46.258501', '2022-01-19 12:20:46.000000', NULL, 'hi-top-basketball-shoe-size', 11, 31),
('2022-01-19 12:20:46.354946', '2022-01-19 12:20:46.000000', NULL, 'pureboost-running-shoe-size', 12, 32),
('2022-01-19 12:20:46.456273', '2022-01-19 12:20:46.000000', NULL, 'runx-running-shoe-size', 13, 33),
('2022-01-19 12:20:46.586278', '2022-01-19 12:20:46.000000', NULL, 'allstar-sneakers-size', 14, 34),
('2022-01-19 12:20:47.407616', '2022-01-19 12:20:47.000000', NULL, 'modern-cafe-chair-color', 15, 54);

-- --------------------------------------------------------

--
-- Structure de la table `product_option_group_translation`
--

CREATE TABLE `product_option_group_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product_option_group_translation`
--

INSERT INTO `product_option_group_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2022-01-19 12:20:44.297280', '2022-01-19 12:20:44.000000', 'en', 'screen size', 1, 1),
('2022-01-19 12:20:44.336585', '2022-01-19 12:20:44.000000', 'en', 'RAM', 2, 2),
('2022-01-19 12:20:44.454268', '2022-01-19 12:20:44.000000', 'en', 'storage', 3, 3),
('2022-01-19 12:20:44.634988', '2022-01-19 12:20:44.000000', 'en', 'monitor size', 4, 4),
('2022-01-19 12:20:44.727072', '2022-01-19 12:20:44.000000', 'en', 'size', 5, 5),
('2022-01-19 12:20:44.827720', '2022-01-19 12:20:44.000000', 'en', 'cpu', 6, 6),
('2022-01-19 12:20:44.879366', '2022-01-19 12:20:44.000000', 'en', 'HDD', 7, 7),
('2022-01-19 12:20:45.003621', '2022-01-19 12:20:45.000000', 'en', 'HDD', 8, 8),
('2022-01-19 12:20:46.034584', '2022-01-19 12:20:46.000000', 'en', 'size', 9, 9),
('2022-01-19 12:20:46.144751', '2022-01-19 12:20:46.000000', 'en', 'size', 10, 10),
('2022-01-19 12:20:46.254942', '2022-01-19 12:20:46.000000', 'en', 'size', 11, 11),
('2022-01-19 12:20:46.352343', '2022-01-19 12:20:46.000000', 'en', 'size', 12, 12),
('2022-01-19 12:20:46.454442', '2022-01-19 12:20:46.000000', 'en', 'size', 13, 13),
('2022-01-19 12:20:46.584020', '2022-01-19 12:20:46.000000', 'en', 'size', 14, 14),
('2022-01-19 12:20:47.404622', '2022-01-19 12:20:47.000000', 'en', 'color', 15, 15);

-- --------------------------------------------------------

--
-- Structure de la table `product_option_translation`
--

CREATE TABLE `product_option_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product_option_translation`
--

INSERT INTO `product_option_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2022-01-19 12:20:44.310252', '2022-01-19 12:20:44.000000', 'en', '13 inch', 1, 1),
('2022-01-19 12:20:44.321692', '2022-01-19 12:20:44.000000', 'en', '15 inch', 2, 2),
('2022-01-19 12:20:44.346197', '2022-01-19 12:20:44.000000', 'en', '8GB', 3, 3),
('2022-01-19 12:20:44.353450', '2022-01-19 12:20:44.000000', 'en', '16GB', 4, 4),
('2022-01-19 12:20:44.461455', '2022-01-19 12:20:44.000000', 'en', '32GB', 5, 5),
('2022-01-19 12:20:44.469165', '2022-01-19 12:20:44.000000', 'en', '128GB', 6, 6),
('2022-01-19 12:20:44.642873', '2022-01-19 12:20:44.000000', 'en', '24 inch', 7, 7),
('2022-01-19 12:20:44.650617', '2022-01-19 12:20:44.000000', 'en', '27 inch', 8, 8),
('2022-01-19 12:20:44.732814', '2022-01-19 12:20:44.000000', 'en', '4GB', 9, 9),
('2022-01-19 12:20:44.739000', '2022-01-19 12:20:44.000000', 'en', '8GB', 10, 10),
('2022-01-19 12:20:44.745566', '2022-01-19 12:20:44.000000', 'en', '16GB', 11, 11),
('2022-01-19 12:20:44.860501', '2022-01-19 12:20:44.000000', 'en', 'i7-8700', 12, 12),
('2022-01-19 12:20:44.867656', '2022-01-19 12:20:44.000000', 'en', 'R7-2700', 13, 13),
('2022-01-19 12:20:44.886667', '2022-01-19 12:20:44.000000', 'en', '240GB SSD', 14, 14),
('2022-01-19 12:20:44.895229', '2022-01-19 12:20:44.000000', 'en', '120GB SSD', 15, 15),
('2022-01-19 12:20:45.009883', '2022-01-19 12:20:45.000000', 'en', '1TB', 16, 16),
('2022-01-19 12:20:45.018751', '2022-01-19 12:20:45.000000', 'en', '2TB', 17, 17),
('2022-01-19 12:20:45.029143', '2022-01-19 12:20:45.000000', 'en', '3TB', 18, 18),
('2022-01-19 12:20:45.038025', '2022-01-19 12:20:45.000000', 'en', '4TB', 19, 19),
('2022-01-19 12:20:45.046914', '2022-01-19 12:20:45.000000', 'en', '6TB', 20, 20),
('2022-01-19 12:20:46.043743', '2022-01-19 12:20:46.000000', 'en', 'Size 40', 21, 21),
('2022-01-19 12:20:46.053177', '2022-01-19 12:20:46.000000', 'en', 'Size 42', 22, 22),
('2022-01-19 12:20:46.059056', '2022-01-19 12:20:46.000000', 'en', 'Size 44', 23, 23),
('2022-01-19 12:20:46.065480', '2022-01-19 12:20:46.000000', 'en', 'Size 46', 24, 24),
('2022-01-19 12:20:46.150966', '2022-01-19 12:20:46.000000', 'en', 'Size 40', 25, 25),
('2022-01-19 12:20:46.157560', '2022-01-19 12:20:46.000000', 'en', 'Size 42', 26, 26),
('2022-01-19 12:20:46.166466', '2022-01-19 12:20:46.000000', 'en', 'Size 44', 27, 27),
('2022-01-19 12:20:46.172862', '2022-01-19 12:20:46.000000', 'en', 'Size 46', 28, 28),
('2022-01-19 12:20:46.262180', '2022-01-19 12:20:46.000000', 'en', 'Size 40', 29, 29),
('2022-01-19 12:20:46.267413', '2022-01-19 12:20:46.000000', 'en', 'Size 42', 30, 30),
('2022-01-19 12:20:46.271480', '2022-01-19 12:20:46.000000', 'en', 'Size 44', 31, 31),
('2022-01-19 12:20:46.275935', '2022-01-19 12:20:46.000000', 'en', 'Size 46', 32, 32),
('2022-01-19 12:20:46.358098', '2022-01-19 12:20:46.000000', 'en', 'Size 40', 33, 33),
('2022-01-19 12:20:46.363622', '2022-01-19 12:20:46.000000', 'en', 'Size 42', 34, 34),
('2022-01-19 12:20:46.370607', '2022-01-19 12:20:46.000000', 'en', 'Size 44', 35, 35),
('2022-01-19 12:20:46.377528', '2022-01-19 12:20:46.000000', 'en', 'Size 46', 36, 36),
('2022-01-19 12:20:46.458578', '2022-01-19 12:20:46.000000', 'en', 'Size 40', 37, 37),
('2022-01-19 12:20:46.464545', '2022-01-19 12:20:46.000000', 'en', 'Size 42', 38, 38),
('2022-01-19 12:20:46.471182', '2022-01-19 12:20:46.000000', 'en', 'Size 44', 39, 39),
('2022-01-19 12:20:46.477898', '2022-01-19 12:20:46.000000', 'en', 'Size 46', 40, 40),
('2022-01-19 12:20:46.589067', '2022-01-19 12:20:46.000000', 'en', 'Size 40', 41, 41),
('2022-01-19 12:20:46.594062', '2022-01-19 12:20:46.000000', 'en', 'Size 42', 42, 42),
('2022-01-19 12:20:46.598898', '2022-01-19 12:20:46.000000', 'en', 'Size 44', 43, 43),
('2022-01-19 12:20:46.605406', '2022-01-19 12:20:46.000000', 'en', 'Size 46', 44, 44),
('2022-01-19 12:20:47.411184', '2022-01-19 12:20:47.000000', 'en', 'mustard', 45, 45),
('2022-01-19 12:20:47.417985', '2022-01-19 12:20:47.000000', 'en', 'mint', 46, 46),
('2022-01-19 12:20:47.423059', '2022-01-19 12:20:47.000000', 'en', 'pearl', 47, 47);

-- --------------------------------------------------------

--
-- Structure de la table `product_translation`
--

CREATE TABLE `product_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product_translation`
--

INSERT INTO `product_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `slug`, `description`, `id`, `baseId`) VALUES
('2022-01-19 12:20:44.276195', '2022-01-19 12:20:44.000000', 'en', 'Laptop', 'laptop', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 1, 1),
('2022-01-19 12:20:44.443534', '2022-01-19 12:20:44.000000', 'en', 'Tablet', 'tablet', 'If the computer were invented today, what would it look like? It would be powerful enough for any task. So mobile you could take it everywhere. And so intuitive you could use it any way you wanted — with touch, a keyboard, or even a pencil. In other words, it wouldn’t really be a \"computer.\" It would be Tablet.', 2, 2),
('2022-01-19 12:20:44.515716', '2022-01-19 12:20:44.000000', 'en', 'Wireless Optical Mouse', 'cordless-mouse', 'The Logitech M185 Wireless Optical Mouse is a great device for any computer user, and as Logitech are the global market leaders for these devices, you are also guaranteed absolute reliability. A mouse to be reckoned with!', 3, 3),
('2022-01-19 12:20:44.590400', '2022-01-19 12:20:44.000000', 'en', '32-Inch Monitor', '32-inch-monitor', 'The UJ59 with Ultra HD resolution has 4x the pixels of Full HD, delivering more screen space and amazingly life-like images. That means you can view documents and webpages with less scrolling, work more comfortably with multiple windows and toolbars, and enjoy photos, videos and games in stunning 4K quality. Note: beverage not included.', 4, 4),
('2022-01-19 12:20:44.623683', '2022-01-19 12:20:44.000000', 'en', 'Curvy Monitor', 'curvy-monitor', 'Discover a truly immersive viewing experience with this monitor curved more deeply than any other. Wrapping around your field of vision the 1,800 R screencreates a wider field of view, enhances depth perception, and minimises peripheral distractions to draw you deeper in to your content.', 5, 5),
('2022-01-19 12:20:44.719058', '2022-01-19 12:20:44.000000', 'en', 'High Performance RAM', 'high-performance-ram', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 6, 6),
('2022-01-19 12:20:44.817316', '2022-01-19 12:20:44.000000', 'en', 'Gaming PC', 'gaming-pc', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 7, 7),
('2022-01-19 12:20:44.987711', '2022-01-19 12:20:44.000000', 'en', 'Hard Drive', 'hard-drive', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 8, 8),
('2022-01-19 12:20:45.155231', '2022-01-19 12:20:45.000000', 'en', 'Clacky Keyboard', 'clacky-keyboard', 'Let all your colleagues know that you are typing on this exclusive, colorful klicky-klacky keyboard. Huge travel on each keypress ensures maximum klack on each and every keystroke.', 9, 9),
('2022-01-19 12:20:45.187252', '2022-01-19 12:20:45.000000', 'en', 'Ethernet Cable', 'ethernet-cable', '5m (metres) Cat.6 network cable (upwards/downwards compatible) | Patch cable | 2 RJ-45 plug | plug with bend protection mantle. High transmission speeds due to operating frequency with up to 250 MHz (in comparison to Cat.5/Cat.5e cable bandwidth of 100 MHz).', 10, 10),
('2022-01-19 12:20:45.214685', '2022-01-19 12:20:45.000000', 'en', 'USB Cable', 'usb-cable', 'Solid conductors eliminate strand-interaction distortion and reduce jitter. As the surface is made of high-purity silver, the performance is very close to that of a solid silver cable, but priced much closer to solid copper cable.', 11, 11),
('2022-01-19 12:20:45.257156', '2022-01-19 12:20:45.000000', 'en', 'Instant Camera', 'instant-camera', 'With its nostalgic design and simple point-and-shoot functionality, the Instant Camera is the perfect pick to get started with instant photography.', 12, 12),
('2022-01-19 12:20:45.299633', '2022-01-19 12:20:45.000000', 'en', 'Camera Lens', 'camera-lens', 'This lens is a Di type lens using an optical system with improved multi-coating designed to function with digital SLR cameras as well as film cameras.', 13, 13),
('2022-01-19 12:20:45.342221', '2022-01-19 12:20:45.000000', 'en', 'Vintage Folding Camera', 'vintage-folding-camera', 'This vintage folding camera is so antiquated that you cannot possibly hope to produce actual photographs with it. However, it makes a wonderful decorative piece for the home or office.', 14, 14),
('2022-01-19 12:20:45.376931', '2022-01-19 12:20:45.000000', 'en', 'Tripod', 'tripod', 'Capture vivid, professional-style photographs with help from this lightweight tripod. The adjustable-height tripod makes it easy to achieve reliable stability and score just the right angle when going after that award-winning shot.', 15, 15),
('2022-01-19 12:20:45.414394', '2022-01-19 12:20:45.000000', 'en', 'Instamatic Camera', 'instamatic-camera', 'This inexpensive point-and-shoot camera uses easy-to-load 126 film cartridges. A built-in flash unit ensure great results, no matter the lighting conditions.', 16, 16),
('2022-01-19 12:20:45.454421', '2022-01-19 12:20:45.000000', 'en', 'Compact Digital Camera', 'compact-digital-camera', 'Unleash your creative potential with high-level performance and advanced features such as AI-powered Real-time Eye AF; new, high-precision Real-time Tracking; high-speed continuous shooting and 4K HDR movie-shooting. The camera\'s innovative AF quickly and reliably detects the position of the subject and then tracks the subject\'s motion, keeping it in sharp focus.', 17, 17),
('2022-01-19 12:20:45.519748', '2022-01-19 12:20:45.000000', 'en', 'Nikkormat SLR Camera', 'nikkormat-slr-camera', 'The Nikkormat FS was brought to market by Nikon in 1965. The lens is a 50mm f1.4 Nikkor. Nice glass, smooth focus and a working diaphragm. A UV filter and a Nikon front lens cap are included with the lens.', 18, 18),
('2022-01-19 12:20:45.562866', '2022-01-19 12:20:45.000000', 'en', 'Compact SLR Camera', 'compact-slr-camera', 'Retro styled, portable in size and built around a powerful 24-megapixel APS-C CMOS sensor, this digital camera is the ideal companion for creative everyday photography. Packed full of high spec features such as an advanced hybrid autofocus system able to keep pace with even the most active subjects, a speedy 6fps continuous-shooting mode, high-resolution electronic viewfinder and intuitive swivelling touchscreen, it brings professional image making into everyone’s grasp.', 19, 19),
('2022-01-19 12:20:45.598857', '2022-01-19 12:20:45.000000', 'en', 'Twin Lens Camera', 'twin-lens-camera', 'What makes a Rolleiflex TLR so special? Many things. To start, TLR stands for twin lens reflex. “Twin” because there are two lenses. And reflex means that the photographer looks through the lens to view the reflected image of an object or scene on the focusing screen. ', 20, 20),
('2022-01-19 12:20:45.667240', '2022-01-19 12:20:45.000000', 'en', 'Road Bike', 'road-bike', 'Featuring a full carbon chassis - complete with cyclocross-specific carbon fork - and a component setup geared for hard use on the race circuit, it\'s got the low weight, exceptional efficiency and brilliant handling you\'ll need to stay at the front of the pack.', 21, 21),
('2022-01-19 12:20:45.703791', '2022-01-19 12:20:45.000000', 'en', 'Skipping Rope', 'skipping-rope', 'When you\'re working out you need a quality rope that doesn\'t tangle at every couple of jumps and with this skipping rope you won\'t have this problem. The fact that it looks like a pair of tasty frankfurters is merely a bonus.', 22, 22),
('2022-01-19 12:20:45.753614', '2022-01-19 12:20:45.000000', 'en', 'Boxing Gloves', 'boxing-gloves', 'Training gloves designed for optimum training. Our gloves promote proper punching technique because they are conformed to the natural shape of your fist. Dense, innovative two-layer foam provides better shock absorbency and full padding on the front, back and wrist to promote proper punching technique.', 23, 23),
('2022-01-19 12:20:45.791402', '2022-01-19 12:20:45.000000', 'en', 'Tent', 'tent', 'With tons of space inside (for max. 4 persons), full head height throughout the entire tent and an unusual and striking shape, this tent offers you everything you need.', 24, 24),
('2022-01-19 12:20:45.819272', '2022-01-19 12:20:45.000000', 'en', 'Cruiser Skateboard', 'cruiser-skateboard', 'Based on the 1970s iconic shape, but made to a larger 69cm size, with updated, quality component, these skateboards are great for beginners to learn the foot spacing required, and are perfect for all-day cruising.', 25, 25),
('2022-01-19 12:20:45.854083', '2022-01-19 12:20:45.000000', 'en', 'Football', 'football', 'This football features high-contrast graphics for high-visibility during play, while its machine-stitched tpu casing offers consistent performance.', 26, 26),
('2022-01-19 12:20:45.910433', '2022-01-19 12:20:45.000000', 'en', 'Tennis Ball', 'tennis-ball', 'Our dog loves these tennis balls and they last for some time before they eventually either get lost in some field or bush or the covering comes off due to it being used most of the day every day.', 27, 27),
('2022-01-19 12:20:45.945682', '2022-01-19 12:20:45.000000', 'en', 'Basketball', 'basketball', 'The Wilson MVP ball is perfect for playing basketball, and improving your skill for hours on end. Designed for new players, it is created with a high-quality rubber suitable for courts, allowing you to get full use during your practices.', 28, 28),
('2022-01-19 12:20:46.024693', '2022-01-19 12:20:46.000000', 'en', 'Ultraboost Running Shoe', 'ultraboost-running-shoe', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 29, 29),
('2022-01-19 12:20:46.136137', '2022-01-19 12:20:46.000000', 'en', 'Freerun Running Shoe', 'freerun-running-shoe', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 30, 30),
('2022-01-19 12:20:46.244740', '2022-01-19 12:20:46.000000', 'en', 'Hi-Top Basketball Shoe', 'hi-top-basketball-shoe', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 31, 31),
('2022-01-19 12:20:46.343659', '2022-01-19 12:20:46.000000', 'en', 'Pureboost Running Shoe', 'pureboost-running-shoe', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 32, 32),
('2022-01-19 12:20:46.446539', '2022-01-19 12:20:46.000000', 'en', 'RunX Running Shoe', 'runx-running-shoe', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 33, 33),
('2022-01-19 12:20:46.576125', '2022-01-19 12:20:46.000000', 'en', 'Allstar Sneakers', 'allstar-sneakers', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 34, 34),
('2022-01-19 12:20:46.735843', '2022-01-19 12:20:46.000000', 'en', 'Spiky Cactus', 'spiky-cactus', 'A spiky yet elegant house cactus - perfect for the home or office. Origin and habitat: Probably native only to the Andes of Peru', 35, 35),
('2022-01-19 12:20:46.776636', '2022-01-19 12:20:46.000000', 'en', 'Tulip Pot', 'tulip-pot', 'Bright crimson red species tulip with black centers, the poppy-like flowers will open up in full sun. Ideal for rock gardens, pots and border edging.', 36, 36),
('2022-01-19 12:20:46.817246', '2022-01-19 12:20:46.000000', 'en', 'Hanging Plant', 'hanging-plant', 'Can be found in tropical and sub-tropical America where it grows on the branches of trees, but also on telephone wires and electricity cables and poles that sometimes topple with the weight of these plants. This plant loves a moist and warm air.', 37, 37),
('2022-01-19 12:20:46.845555', '2022-01-19 12:20:46.000000', 'en', 'Aloe Vera', 'aloe-vera', 'Decorative Aloe vera makes a lovely house plant. A really trendy plant, Aloe vera is just so easy to care for. Aloe vera sap has been renowned for its remarkable medicinal and cosmetic properties for many centuries and has been used to treat grazes, insect bites and sunburn - it really works.', 38, 38),
('2022-01-19 12:20:46.872675', '2022-01-19 12:20:46.000000', 'en', 'Fern Blechnum Gibbum', 'fern-blechnum-gibbum', 'Create a tropical feel in your home with this lush green tree fern, it has decorative leaves and will develop a short slender trunk in time.', 39, 39),
('2022-01-19 12:20:46.917778', '2022-01-19 12:20:46.000000', 'en', 'Assorted Indoor Succulents', 'assorted-succulents', 'These assorted succulents come in a variety of different shapes and colours - each with their own unique personality. Succulents grow best in plenty of light: a sunny windowsill would be the ideal spot for them to thrive!', 40, 40),
('2022-01-19 12:20:46.950576', '2022-01-19 12:20:46.000000', 'en', 'Orchid', 'orchid', 'Gloriously elegant. It can go along with any interior as it is a neutral color and the most popular Phalaenopsis overall. 2 to 3 foot stems host large white flowers that can last for over 2 months.', 41, 41),
('2022-01-19 12:20:46.993436', '2022-01-19 12:20:46.000000', 'en', 'Bonsai Tree', 'bonsai-tree', 'Excellent semi-evergreen bonsai. Indoors or out but needs some winter protection. All trees sent will leave the nursery in excellent condition and will be of equal quality or better than the photograph shown.', 42, 42),
('2022-01-19 12:20:47.038624', '2022-01-19 12:20:47.000000', 'en', 'Guardian Lion Statue', 'guardian-lion-statue', 'Placing it at home or office can bring you fortune and prosperity, guard your house and ward off ill fortune.', 43, 43),
('2022-01-19 12:20:47.070170', '2022-01-19 12:20:47.000000', 'en', 'Hand Trowel', 'hand-trowel', 'Hand trowel for garden cultivating hammer finish epoxy-coated head for improved resistance to rust, scratches, humidity and alkalines in the soil.', 44, 44),
('2022-01-19 12:20:47.098798', '2022-01-19 12:20:47.000000', 'en', 'Balloon Chair', 'balloon-chair', 'A charming vintage white wooden chair featuring an extremely spherical pink balloon. The balloon may be detached and used for other purposes, for example as a party decoration.', 45, 45),
('2022-01-19 12:20:47.126200', '2022-01-19 12:20:47.000000', 'en', 'Grey Fabric Sofa', 'grey-fabric-sofa', 'Seat cushions filled with high resilience foam and polyester fibre wadding give comfortable support for your body, and easily regain their shape when you get up. The cover is easy to keep clean as it is removable and can be machine washed.', 46, 46),
('2022-01-19 12:20:47.162238', '2022-01-19 12:20:47.000000', 'en', 'Leather Sofa', 'leather-sofa', 'This premium, tan-brown bonded leather seat is part of the \'chill\' sofa range. The lever activated recline feature makes it easy to adjust to any position. This smart, bustle back design with rounded tight padded arms has been designed with your comfort in mind. This well-padded chair has foam pocket sprung seat cushions and fibre-filled back cushions.', 47, 47),
('2022-01-19 12:20:47.192079', '2022-01-19 12:20:47.000000', 'en', 'Light Shade', 'light-shade', 'Modern tapered white polycotton pendant shade with a metallic silver chrome interior finish for maximum light reflection. Reversible gimble so it can be used as a ceiling shade or as a lamp shade.', 48, 48),
('2022-01-19 12:20:47.231987', '2022-01-19 12:20:47.000000', 'en', 'Wooden Side Desk', 'wooden-side-desk', 'Drawer stops prevent the drawers from being pulled out too far. Built-in cable management for collecting cables and cords; out of sight but close at hand.', 49, 49),
('2022-01-19 12:20:47.263687', '2022-01-19 12:20:47.000000', 'en', 'Comfy Padded Chair', 'comfy-padded-chair', 'You sit comfortably thanks to the shaped back. The chair frame is made of solid wood, which is a durable natural material.', 50, 50),
('2022-01-19 12:20:47.299238', '2022-01-19 12:20:47.000000', 'en', 'Black Eaves Chair', 'black-eaves-chair', 'Comfortable to sit on thanks to the bowl-shaped seat and rounded shape of the backrest. No tools are required to assemble the chair, you just click it together with a simple mechanism under the seat.', 51, 51),
('2022-01-19 12:20:47.331776', '2022-01-19 12:20:47.000000', 'en', 'Wooden Stool', 'wooden-stool', 'Solid wood is a hardwearing natural material, which can be sanded and surface treated as required.', 52, 52),
('2022-01-19 12:20:47.368390', '2022-01-19 12:20:47.000000', 'en', 'Bedside Table', 'bedside-table', 'Every table is unique, with varying grain pattern and natural colour shifts that are part of the charm of wood.', 53, 53),
('2022-01-19 12:20:47.395851', '2022-01-19 12:20:47.000000', 'en', 'Modern Cafe Chair', 'modern-cafe-chair', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 54, 54);

-- --------------------------------------------------------

--
-- Structure de la table `product_variant`
--

CREATE TABLE `product_variant` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `sku` varchar(255) NOT NULL,
  `stockOnHand` int(11) NOT NULL DEFAULT 0,
  `stockAllocated` int(11) NOT NULL DEFAULT 0,
  `outOfStockThreshold` int(11) NOT NULL DEFAULT 0,
  `useGlobalOutOfStockThreshold` tinyint(4) NOT NULL DEFAULT 1,
  `trackInventory` varchar(255) NOT NULL DEFAULT 'INHERIT',
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `featuredAssetId` int(11) DEFAULT NULL,
  `taxCategoryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product_variant`
--

INSERT INTO `product_variant` (`createdAt`, `updatedAt`, `deletedAt`, `enabled`, `sku`, `stockOnHand`, `stockAllocated`, `outOfStockThreshold`, `useGlobalOutOfStockThreshold`, `trackInventory`, `id`, `productId`, `featuredAssetId`, `taxCategoryId`) VALUES
('2022-01-19 12:20:44.368452', '2022-01-19 12:20:44.368452', NULL, 1, 'L2201308', 100, 0, 0, 1, 'INHERIT', 1, 1, NULL, 1),
('2022-01-19 12:20:44.392794', '2022-01-19 12:20:44.392794', NULL, 1, 'L2201508', 100, 0, 0, 1, 'INHERIT', 2, 1, NULL, 1),
('2022-01-19 12:20:44.410692', '2022-01-19 12:20:44.410692', NULL, 1, 'L2201316', 100, 0, 0, 1, 'INHERIT', 3, 1, NULL, 1),
('2022-01-19 12:20:44.425317', '2022-01-19 12:20:44.425317', NULL, 1, 'L2201516', 100, 0, 0, 1, 'INHERIT', 4, 1, NULL, 1),
('2022-01-19 12:20:44.478738', '2022-01-19 12:20:44.478738', NULL, 1, 'TBL200032', 100, 0, 0, 1, 'INHERIT', 5, 2, NULL, 1),
('2022-01-19 12:20:44.490391', '2022-01-19 12:20:44.490391', NULL, 1, 'TBL200128', 100, 0, 0, 1, 'INHERIT', 6, 2, NULL, 1),
('2022-01-19 12:20:44.547339', '2022-01-19 12:20:44.547339', NULL, 1, '834444', 100, 0, 0, 1, 'INHERIT', 7, 3, NULL, 1),
('2022-01-19 12:20:44.603218', '2022-01-19 12:20:44.603218', NULL, 1, 'LU32J590UQUXEN', 100, 0, 0, 1, 'INHERIT', 8, 4, NULL, 1),
('2022-01-19 12:20:44.666071', '2022-01-19 12:20:44.666071', NULL, 1, 'C24F390', 100, 0, 0, 1, 'INHERIT', 9, 5, NULL, 1),
('2022-01-19 12:20:44.692657', '2022-01-19 12:20:44.692657', NULL, 1, 'C27F390', 100, 0, 0, 1, 'INHERIT', 10, 5, NULL, 1),
('2022-01-19 12:20:44.759607', '2022-01-19 12:20:44.759607', NULL, 1, 'CMK32GX4M2AC04', 100, 0, 0, 1, 'INHERIT', 11, 6, NULL, 1),
('2022-01-19 12:20:44.775115', '2022-01-19 12:20:44.775115', NULL, 1, 'CMK32GX4M2AC08', 100, 0, 0, 1, 'INHERIT', 12, 6, NULL, 1),
('2022-01-19 12:20:44.789196', '2022-01-19 12:20:44.789196', NULL, 1, 'CMK32GX4M2AC16', 100, 0, 0, 1, 'INHERIT', 13, 6, NULL, 1),
('2022-01-19 12:20:44.907638', '2022-01-19 12:20:44.907638', NULL, 1, 'CGS480VR1063', 100, 0, 0, 1, 'INHERIT', 14, 7, NULL, 1),
('2022-01-19 12:20:44.924408', '2022-01-19 12:20:44.924408', NULL, 1, 'CGS480VR1064', 100, 0, 0, 1, 'INHERIT', 15, 7, NULL, 1),
('2022-01-19 12:20:44.939946', '2022-01-19 12:20:44.939946', NULL, 1, 'CGS480VR1065', 100, 0, 0, 1, 'INHERIT', 16, 7, NULL, 1),
('2022-01-19 12:20:44.955436', '2022-01-19 12:20:44.955436', NULL, 1, 'CGS480VR1066', 100, 0, 0, 1, 'INHERIT', 17, 7, NULL, 1),
('2022-01-19 12:20:45.062274', '2022-01-19 12:20:45.062274', NULL, 1, 'IHD455T1', 100, 0, 0, 1, 'INHERIT', 18, 8, NULL, 1),
('2022-01-19 12:20:45.078679', '2022-01-19 12:20:45.078679', NULL, 1, 'IHD455T2', 100, 0, 0, 1, 'INHERIT', 19, 8, NULL, 1),
('2022-01-19 12:20:45.095012', '2022-01-19 12:20:45.095012', NULL, 1, 'IHD455T3', 100, 0, 0, 1, 'INHERIT', 20, 8, NULL, 1),
('2022-01-19 12:20:45.112425', '2022-01-19 12:20:45.112425', NULL, 1, 'IHD455T4', 100, 0, 0, 1, 'INHERIT', 21, 8, NULL, 1),
('2022-01-19 12:20:45.132009', '2022-01-19 12:20:45.132009', NULL, 1, 'IHD455T6', 100, 0, 0, 1, 'INHERIT', 22, 8, NULL, 1),
('2022-01-19 12:20:45.168520', '2022-01-19 12:20:45.168520', NULL, 1, 'A4TKLA45535', 100, 0, 0, 1, 'INHERIT', 23, 9, NULL, 1),
('2022-01-19 12:20:45.198760', '2022-01-19 12:20:45.198760', NULL, 1, 'A23334x30', 100, 0, 0, 1, 'INHERIT', 24, 10, NULL, 1),
('2022-01-19 12:20:45.225347', '2022-01-19 12:20:45.225347', NULL, 1, 'USBCIN01.5MI', 100, 0, 0, 1, 'INHERIT', 25, 11, NULL, 1),
('2022-01-19 12:20:45.271304', '2022-01-19 12:20:45.271304', NULL, 1, 'IC22MWDD', 100, 0, 0, 1, 'INHERIT', 26, 12, NULL, 1),
('2022-01-19 12:20:45.315922', '2022-01-19 12:20:45.315922', NULL, 1, 'B0012UUP02', 100, 0, 0, 1, 'INHERIT', 27, 13, NULL, 1),
('2022-01-19 12:20:45.352929', '2022-01-19 12:20:45.352929', NULL, 1, 'B00AFC9099', 100, 0, 0, 1, 'INHERIT', 28, 14, NULL, 1),
('2022-01-19 12:20:45.387065', '2022-01-19 12:20:45.387065', NULL, 1, 'B00XI87KV8', 100, 0, 0, 1, 'INHERIT', 29, 15, NULL, 1),
('2022-01-19 12:20:45.428676', '2022-01-19 12:20:45.428676', NULL, 1, 'B07K1330LL', 100, 0, 0, 1, 'INHERIT', 30, 16, NULL, 1),
('2022-01-19 12:20:45.469258', '2022-01-19 12:20:45.469258', NULL, 1, 'B07D990021', 100, 0, 0, 1, 'INHERIT', 31, 17, NULL, 1),
('2022-01-19 12:20:45.539411', '2022-01-19 12:20:45.539411', NULL, 1, 'B07D33B334', 100, 0, 0, 1, 'INHERIT', 32, 18, NULL, 1),
('2022-01-19 12:20:45.576307', '2022-01-19 12:20:45.576307', NULL, 1, 'B07D75V44S', 100, 0, 0, 1, 'INHERIT', 33, 19, NULL, 1),
('2022-01-19 12:20:45.620005', '2022-01-19 12:20:45.620005', NULL, 1, 'B07D78JTLR', 100, 0, 0, 1, 'INHERIT', 34, 20, NULL, 1),
('2022-01-19 12:20:45.679190', '2022-01-19 12:20:45.679190', NULL, 1, 'RB000844334', 100, 0, 0, 1, 'INHERIT', 35, 21, NULL, 1),
('2022-01-19 12:20:45.716083', '2022-01-19 12:20:45.716083', NULL, 1, 'B07CNGXVXT', 100, 0, 0, 1, 'INHERIT', 36, 22, NULL, 1),
('2022-01-19 12:20:45.770079', '2022-01-19 12:20:45.770079', NULL, 1, 'B000ZYLPPU', 100, 0, 0, 1, 'INHERIT', 37, 23, NULL, 1),
('2022-01-19 12:20:45.802730', '2022-01-19 12:20:45.802730', NULL, 1, '2000023510', 100, 0, 0, 1, 'INHERIT', 38, 24, NULL, 1),
('2022-01-19 12:20:45.830088', '2022-01-19 12:20:45.830088', NULL, 1, '799872520', 100, 0, 0, 1, 'INHERIT', 39, 25, NULL, 1),
('2022-01-19 12:20:45.875416', '2022-01-19 12:20:45.875416', NULL, 1, 'SC3137-056', 100, 0, 0, 1, 'INHERIT', 40, 26, NULL, 1),
('2022-01-19 12:20:45.925177', '2022-01-19 12:20:45.925177', NULL, 1, 'WRT11752P', 100, 0, 0, 1, 'INHERIT', 41, 27, NULL, 1),
('2022-01-19 12:20:45.958395', '2022-01-19 12:20:45.958395', NULL, 1, 'WTB1418XB06', 100, 0, 0, 1, 'INHERIT', 42, 28, NULL, 1),
('2022-01-19 12:20:46.074869', '2022-01-19 12:20:46.074869', NULL, 1, 'RS0040', 100, 0, 0, 1, 'INHERIT', 43, 29, NULL, 1),
('2022-01-19 12:20:46.087666', '2022-01-19 12:20:46.087666', NULL, 1, 'RS0042', 100, 0, 0, 1, 'INHERIT', 44, 29, NULL, 1),
('2022-01-19 12:20:46.101288', '2022-01-19 12:20:46.101288', NULL, 1, 'RS0044', 100, 0, 0, 1, 'INHERIT', 45, 29, NULL, 1),
('2022-01-19 12:20:46.113014', '2022-01-19 12:20:46.113014', NULL, 1, 'RS0046', 100, 0, 0, 1, 'INHERIT', 46, 29, NULL, 1),
('2022-01-19 12:20:46.182549', '2022-01-19 12:20:46.182549', NULL, 1, 'AR4561-40', 100, 0, 0, 1, 'INHERIT', 47, 30, NULL, 1),
('2022-01-19 12:20:46.195173', '2022-01-19 12:20:46.195173', NULL, 1, 'AR4561-42', 100, 0, 0, 1, 'INHERIT', 48, 30, NULL, 1),
('2022-01-19 12:20:46.208701', '2022-01-19 12:20:46.208701', NULL, 1, 'AR4561-44', 100, 0, 0, 1, 'INHERIT', 49, 30, NULL, 1),
('2022-01-19 12:20:46.221525', '2022-01-19 12:20:46.221525', NULL, 1, 'AR4561-46', 100, 0, 0, 1, 'INHERIT', 50, 30, NULL, 1),
('2022-01-19 12:20:46.287222', '2022-01-19 12:20:46.287222', NULL, 1, 'AO7893-40', 100, 0, 0, 1, 'INHERIT', 51, 31, NULL, 1),
('2022-01-19 12:20:46.301444', '2022-01-19 12:20:46.301444', NULL, 1, 'AO7893-42', 100, 0, 0, 1, 'INHERIT', 52, 31, NULL, 1),
('2022-01-19 12:20:46.313240', '2022-01-19 12:20:46.313240', NULL, 1, 'AO7893-44', 100, 0, 0, 1, 'INHERIT', 53, 31, NULL, 1),
('2022-01-19 12:20:46.324780', '2022-01-19 12:20:46.324780', NULL, 1, 'AO7893-46', 100, 0, 0, 1, 'INHERIT', 54, 31, NULL, 1),
('2022-01-19 12:20:46.391169', '2022-01-19 12:20:46.391169', NULL, 1, 'F3578640', 100, 0, 0, 1, 'INHERIT', 55, 32, NULL, 1),
('2022-01-19 12:20:46.403096', '2022-01-19 12:20:46.403096', NULL, 1, 'F3578642', 100, 0, 0, 1, 'INHERIT', 56, 32, NULL, 1),
('2022-01-19 12:20:46.416869', '2022-01-19 12:20:46.416869', NULL, 1, 'F3578644', 100, 0, 0, 1, 'INHERIT', 57, 32, NULL, 1),
('2022-01-19 12:20:46.429221', '2022-01-19 12:20:46.429221', NULL, 1, 'F3578646', 100, 0, 0, 1, 'INHERIT', 58, 32, NULL, 1),
('2022-01-19 12:20:46.488836', '2022-01-19 12:20:46.488836', NULL, 1, 'F3633340', 100, 0, 0, 1, 'INHERIT', 59, 33, NULL, 1),
('2022-01-19 12:20:46.504730', '2022-01-19 12:20:46.504730', NULL, 1, 'F3633342', 100, 0, 0, 1, 'INHERIT', 60, 33, NULL, 1),
('2022-01-19 12:20:46.519155', '2022-01-19 12:20:46.519155', NULL, 1, 'F3633344', 100, 0, 0, 1, 'INHERIT', 61, 33, NULL, 1),
('2022-01-19 12:20:46.535745', '2022-01-19 12:20:46.535745', NULL, 1, 'F3633346', 100, 0, 0, 1, 'INHERIT', 62, 33, NULL, 1),
('2022-01-19 12:20:46.617415', '2022-01-19 12:20:46.617415', NULL, 1, 'CAS23340', 100, 0, 0, 1, 'INHERIT', 63, 34, NULL, 1),
('2022-01-19 12:20:46.638779', '2022-01-19 12:20:46.638779', NULL, 1, 'CAS23342', 100, 0, 0, 1, 'INHERIT', 64, 34, NULL, 1),
('2022-01-19 12:20:46.653875', '2022-01-19 12:20:46.653875', NULL, 1, 'CAS23344', 100, 0, 0, 1, 'INHERIT', 65, 34, NULL, 1),
('2022-01-19 12:20:46.669861', '2022-01-19 12:20:46.669861', NULL, 1, 'CAS23346', 100, 0, 0, 1, 'INHERIT', 66, 34, NULL, 1),
('2022-01-19 12:20:46.749906', '2022-01-19 12:20:46.749906', NULL, 1, 'SC011001', 100, 0, 0, 1, 'INHERIT', 67, 35, NULL, 1),
('2022-01-19 12:20:46.793832', '2022-01-19 12:20:46.793832', NULL, 1, 'A58477', 100, 0, 0, 1, 'INHERIT', 68, 36, NULL, 1),
('2022-01-19 12:20:46.829065', '2022-01-19 12:20:46.829065', NULL, 1, 'A44223', 100, 0, 0, 1, 'INHERIT', 69, 37, NULL, 1),
('2022-01-19 12:20:46.856369', '2022-01-19 12:20:46.856369', NULL, 1, 'A44352', 100, 0, 0, 1, 'INHERIT', 70, 38, NULL, 1),
('2022-01-19 12:20:46.899986', '2022-01-19 12:20:46.899986', NULL, 1, 'A04851', 100, 0, 0, 1, 'INHERIT', 71, 39, NULL, 1),
('2022-01-19 12:20:46.930590', '2022-01-19 12:20:46.930590', NULL, 1, 'A08593', 100, 0, 0, 1, 'INHERIT', 72, 40, NULL, 1),
('2022-01-19 12:20:46.959395', '2022-01-19 12:20:46.959395', NULL, 1, 'ROR00221', 100, 0, 0, 1, 'INHERIT', 73, 41, NULL, 1),
('2022-01-19 12:20:47.003541', '2022-01-19 12:20:47.003541', NULL, 1, 'B01MXFLUSV', 100, 0, 0, 1, 'INHERIT', 74, 42, NULL, 1),
('2022-01-19 12:20:47.050871', '2022-01-19 12:20:47.050871', NULL, 1, 'GL34LLW11', 100, 0, 0, 1, 'INHERIT', 75, 43, NULL, 1),
('2022-01-19 12:20:47.081978', '2022-01-19 12:20:47.081978', NULL, 1, '4058NB/09', 100, 0, 0, 1, 'INHERIT', 76, 44, NULL, 1),
('2022-01-19 12:20:47.108948', '2022-01-19 12:20:47.108948', NULL, 1, '34-BC82444', 100, 0, 0, 1, 'INHERIT', 77, 45, NULL, 1),
('2022-01-19 12:20:47.138488', '2022-01-19 12:20:47.138488', NULL, 1, 'CH00001-12', 100, 0, 0, 1, 'INHERIT', 78, 46, NULL, 1),
('2022-01-19 12:20:47.174763', '2022-01-19 12:20:47.174763', NULL, 1, 'CH00001-02', 100, 0, 0, 1, 'INHERIT', 79, 47, NULL, 1),
('2022-01-19 12:20:47.203048', '2022-01-19 12:20:47.203048', NULL, 1, 'B45809LSW', 100, 0, 0, 1, 'INHERIT', 80, 48, NULL, 1),
('2022-01-19 12:20:47.243711', '2022-01-19 12:20:47.243711', NULL, 1, '304.096.29', 100, 0, 0, 1, 'INHERIT', 81, 49, NULL, 1),
('2022-01-19 12:20:47.275772', '2022-01-19 12:20:47.275772', NULL, 1, '404.068.14', 100, 0, 0, 1, 'INHERIT', 82, 50, NULL, 1),
('2022-01-19 12:20:47.312629', '2022-01-19 12:20:47.312629', NULL, 1, '003.600.02', 100, 0, 0, 1, 'INHERIT', 83, 51, NULL, 1),
('2022-01-19 12:20:47.350603', '2022-01-19 12:20:47.350603', NULL, 1, '202.493.30', 100, 0, 0, 1, 'INHERIT', 84, 52, NULL, 1),
('2022-01-19 12:20:47.382038', '2022-01-19 12:20:47.382038', NULL, 1, '404.290.14', 100, 0, 0, 1, 'INHERIT', 85, 53, NULL, 1),
('2022-01-19 12:20:47.441627', '2022-01-19 12:20:47.441627', NULL, 1, '404.038.96', 100, 0, 0, 1, 'INHERIT', 86, 54, NULL, 1),
('2022-01-19 12:20:47.465685', '2022-01-19 12:20:47.465685', NULL, 1, '404.038.96', 100, 0, 0, 1, 'INHERIT', 87, 54, NULL, 1),
('2022-01-19 12:20:47.478584', '2022-01-19 12:20:47.478584', NULL, 1, '404.038.96', 100, 0, 0, 1, 'INHERIT', 88, 54, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `product_variant_asset`
--

CREATE TABLE `product_variant_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `assetId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `productVariantId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `product_variant_channels_channel`
--

CREATE TABLE `product_variant_channels_channel` (
  `productVariantId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product_variant_channels_channel`
--

INSERT INTO `product_variant_channels_channel` (`productVariantId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1);

-- --------------------------------------------------------

--
-- Structure de la table `product_variant_facet_values_facet_value`
--

CREATE TABLE `product_variant_facet_values_facet_value` (
  `productVariantId` int(11) NOT NULL,
  `facetValueId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product_variant_facet_values_facet_value`
--

INSERT INTO `product_variant_facet_values_facet_value` (`productVariantId`, `facetValueId`) VALUES
(86, 38),
(87, 39),
(88, 28);

-- --------------------------------------------------------

--
-- Structure de la table `product_variant_options_product_option`
--

CREATE TABLE `product_variant_options_product_option` (
  `productVariantId` int(11) NOT NULL,
  `productOptionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product_variant_options_product_option`
--

INSERT INTO `product_variant_options_product_option` (`productVariantId`, `productOptionId`) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 3),
(3, 1),
(3, 4),
(4, 2),
(4, 4),
(5, 5),
(6, 6),
(9, 7),
(10, 8),
(11, 9),
(12, 10),
(13, 11),
(14, 12),
(14, 14),
(15, 13),
(15, 14),
(16, 12),
(16, 15),
(17, 13),
(17, 15),
(18, 16),
(19, 17),
(20, 18),
(21, 19),
(22, 20),
(43, 21),
(44, 22),
(45, 23),
(46, 24),
(47, 25),
(48, 26),
(49, 27),
(50, 28),
(51, 29),
(52, 30),
(53, 31),
(54, 32),
(55, 33),
(56, 34),
(57, 35),
(58, 36),
(59, 37),
(60, 38),
(61, 39),
(62, 40),
(63, 41),
(64, 42),
(65, 43),
(66, 44),
(86, 45),
(87, 46),
(88, 47);

-- --------------------------------------------------------

--
-- Structure de la table `product_variant_price`
--

CREATE TABLE `product_variant_price` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `price` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `channelId` int(11) NOT NULL,
  `variantId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product_variant_price`
--

INSERT INTO `product_variant_price` (`createdAt`, `updatedAt`, `price`, `id`, `channelId`, `variantId`) VALUES
('2022-01-19 12:20:44.387520', '2022-01-19 12:20:44.387520', 129900, 1, 1, 1),
('2022-01-19 12:20:44.404469', '2022-01-19 12:20:44.404469', 139900, 2, 1, 2),
('2022-01-19 12:20:44.419657', '2022-01-19 12:20:44.419657', 219900, 3, 1, 3),
('2022-01-19 12:20:44.432795', '2022-01-19 12:20:44.432795', 229900, 4, 1, 4),
('2022-01-19 12:20:44.485297', '2022-01-19 12:20:44.485297', 32900, 5, 1, 5),
('2022-01-19 12:20:44.498199', '2022-01-19 12:20:44.498199', 44500, 6, 1, 6),
('2022-01-19 12:20:44.561981', '2022-01-19 12:20:44.561981', 1899, 7, 1, 7),
('2022-01-19 12:20:44.611172', '2022-01-19 12:20:44.611172', 31000, 8, 1, 8),
('2022-01-19 12:20:44.686642', '2022-01-19 12:20:44.686642', 14374, 9, 1, 9),
('2022-01-19 12:20:44.700762', '2022-01-19 12:20:44.700762', 16994, 10, 1, 10),
('2022-01-19 12:20:44.766828', '2022-01-19 12:20:44.766828', 13785, 11, 1, 11),
('2022-01-19 12:20:44.783713', '2022-01-19 12:20:44.783713', 14639, 12, 1, 12),
('2022-01-19 12:20:44.796915', '2022-01-19 12:20:44.796915', 28181, 13, 1, 13),
('2022-01-19 12:20:44.919000', '2022-01-19 12:20:44.919000', 108720, 14, 1, 14),
('2022-01-19 12:20:44.934046', '2022-01-19 12:20:44.934046', 109995, 15, 1, 15),
('2022-01-19 12:20:44.948960', '2022-01-19 12:20:44.948960', 93120, 16, 1, 16),
('2022-01-19 12:20:44.965046', '2022-01-19 12:20:44.965046', 94920, 17, 1, 17),
('2022-01-19 12:20:45.072550', '2022-01-19 12:20:45.072550', 3799, 18, 1, 18),
('2022-01-19 12:20:45.088357', '2022-01-19 12:20:45.088357', 5374, 19, 1, 19),
('2022-01-19 12:20:45.105386', '2022-01-19 12:20:45.105386', 7896, 20, 1, 20),
('2022-01-19 12:20:45.123729', '2022-01-19 12:20:45.123729', 9299, 21, 1, 21),
('2022-01-19 12:20:45.142247', '2022-01-19 12:20:45.142247', 13435, 22, 1, 22),
('2022-01-19 12:20:45.176449', '2022-01-19 12:20:45.176449', 7489, 23, 1, 23),
('2022-01-19 12:20:45.205521', '2022-01-19 12:20:45.205521', 597, 24, 1, 24),
('2022-01-19 12:20:45.231671', '2022-01-19 12:20:45.231671', 6900, 25, 1, 25),
('2022-01-19 12:20:45.278266', '2022-01-19 12:20:45.278266', 17499, 26, 1, 26),
('2022-01-19 12:20:45.323770', '2022-01-19 12:20:45.323770', 10400, 27, 1, 27),
('2022-01-19 12:20:45.358940', '2022-01-19 12:20:45.358940', 535000, 28, 1, 28),
('2022-01-19 12:20:45.394592', '2022-01-19 12:20:45.394592', 1498, 29, 1, 29),
('2022-01-19 12:20:45.435575', '2022-01-19 12:20:45.435575', 2000, 30, 1, 30),
('2022-01-19 12:20:45.475943', '2022-01-19 12:20:45.475943', 89999, 31, 1, 31),
('2022-01-19 12:20:45.552358', '2022-01-19 12:20:45.552358', 61500, 32, 1, 32),
('2022-01-19 12:20:45.582365', '2022-01-19 12:20:45.582365', 52100, 33, 1, 33),
('2022-01-19 12:20:45.633624', '2022-01-19 12:20:45.633624', 79900, 34, 1, 34),
('2022-01-19 12:20:45.685300', '2022-01-19 12:20:45.685300', 249900, 35, 1, 35),
('2022-01-19 12:20:45.733089', '2022-01-19 12:20:45.733089', 799, 36, 1, 36),
('2022-01-19 12:20:45.777876', '2022-01-19 12:20:45.777876', 3304, 37, 1, 37),
('2022-01-19 12:20:45.808569', '2022-01-19 12:20:45.808569', 21493, 38, 1, 38),
('2022-01-19 12:20:45.836620', '2022-01-19 12:20:45.836620', 2499, 39, 1, 39),
('2022-01-19 12:20:45.889171', '2022-01-19 12:20:45.889171', 5707, 40, 1, 40),
('2022-01-19 12:20:45.933364', '2022-01-19 12:20:45.933364', 1273, 41, 1, 41),
('2022-01-19 12:20:45.965275', '2022-01-19 12:20:45.965275', 3562, 42, 1, 42),
('2022-01-19 12:20:46.082896', '2022-01-19 12:20:46.082896', 9999, 43, 1, 43),
('2022-01-19 12:20:46.095641', '2022-01-19 12:20:46.095641', 9999, 44, 1, 44),
('2022-01-19 12:20:46.108626', '2022-01-19 12:20:46.108626', 9999, 45, 1, 45),
('2022-01-19 12:20:46.119974', '2022-01-19 12:20:46.119974', 9999, 46, 1, 46),
('2022-01-19 12:20:46.189484', '2022-01-19 12:20:46.189484', 16000, 47, 1, 47),
('2022-01-19 12:20:46.204343', '2022-01-19 12:20:46.204343', 16000, 48, 1, 48),
('2022-01-19 12:20:46.216112', '2022-01-19 12:20:46.216112', 16000, 49, 1, 49),
('2022-01-19 12:20:46.228074', '2022-01-19 12:20:46.228074', 16000, 50, 1, 50),
('2022-01-19 12:20:46.295613', '2022-01-19 12:20:46.295613', 14000, 51, 1, 51),
('2022-01-19 12:20:46.308124', '2022-01-19 12:20:46.308124', 14000, 52, 1, 52),
('2022-01-19 12:20:46.319880', '2022-01-19 12:20:46.319880', 14000, 53, 1, 53),
('2022-01-19 12:20:46.333019', '2022-01-19 12:20:46.333019', 14000, 54, 1, 54),
('2022-01-19 12:20:46.397903', '2022-01-19 12:20:46.397903', 9995, 55, 1, 55),
('2022-01-19 12:20:46.411324', '2022-01-19 12:20:46.411324', 9995, 56, 1, 56),
('2022-01-19 12:20:46.423850', '2022-01-19 12:20:46.423850', 9995, 57, 1, 57),
('2022-01-19 12:20:46.436755', '2022-01-19 12:20:46.436755', 9995, 58, 1, 58),
('2022-01-19 12:20:46.496831', '2022-01-19 12:20:46.496831', 4495, 59, 1, 59),
('2022-01-19 12:20:46.513428', '2022-01-19 12:20:46.513428', 4495, 60, 1, 60),
('2022-01-19 12:20:46.528429', '2022-01-19 12:20:46.528429', 4495, 61, 1, 61),
('2022-01-19 12:20:46.545366', '2022-01-19 12:20:46.545366', 4495, 62, 1, 62),
('2022-01-19 12:20:46.631614', '2022-01-19 12:20:46.631614', 6500, 63, 1, 63),
('2022-01-19 12:20:46.647481', '2022-01-19 12:20:46.647481', 6500, 64, 1, 64),
('2022-01-19 12:20:46.662795', '2022-01-19 12:20:46.662795', 6500, 65, 1, 65),
('2022-01-19 12:20:46.677438', '2022-01-19 12:20:46.677438', 6500, 66, 1, 66),
('2022-01-19 12:20:46.757415', '2022-01-19 12:20:46.757415', 1550, 67, 1, 67),
('2022-01-19 12:20:46.806280', '2022-01-19 12:20:46.806280', 675, 68, 1, 68),
('2022-01-19 12:20:46.835244', '2022-01-19 12:20:46.835244', 1995, 69, 1, 69),
('2022-01-19 12:20:46.863312', '2022-01-19 12:20:46.863312', 699, 70, 1, 70),
('2022-01-19 12:20:46.907425', '2022-01-19 12:20:46.907425', 895, 71, 1, 71),
('2022-01-19 12:20:46.937937', '2022-01-19 12:20:46.937937', 3250, 72, 1, 72),
('2022-01-19 12:20:46.964748', '2022-01-19 12:20:46.964748', 6500, 73, 1, 73),
('2022-01-19 12:20:47.009340', '2022-01-19 12:20:47.009340', 1999, 74, 1, 74),
('2022-01-19 12:20:47.058321', '2022-01-19 12:20:47.058321', 18853, 75, 1, 75),
('2022-01-19 12:20:47.088901', '2022-01-19 12:20:47.088901', 499, 76, 1, 76),
('2022-01-19 12:20:47.115725', '2022-01-19 12:20:47.115725', 6500, 77, 1, 77),
('2022-01-19 12:20:47.144098', '2022-01-19 12:20:47.144098', 29500, 78, 1, 78),
('2022-01-19 12:20:47.182221', '2022-01-19 12:20:47.182221', 124500, 79, 1, 79),
('2022-01-19 12:20:47.210845', '2022-01-19 12:20:47.210845', 2845, 80, 1, 80),
('2022-01-19 12:20:47.252022', '2022-01-19 12:20:47.252022', 12500, 81, 1, 81),
('2022-01-19 12:20:47.283826', '2022-01-19 12:20:47.283826', 13000, 82, 1, 82),
('2022-01-19 12:20:47.320896', '2022-01-19 12:20:47.320896', 7000, 83, 1, 83),
('2022-01-19 12:20:47.357427', '2022-01-19 12:20:47.357427', 1400, 84, 1, 84),
('2022-01-19 12:20:47.387684', '2022-01-19 12:20:47.387684', 13000, 85, 1, 85),
('2022-01-19 12:20:47.450875', '2022-01-19 12:20:47.450875', 10000, 86, 1, 86),
('2022-01-19 12:20:47.472974', '2022-01-19 12:20:47.472974', 10000, 87, 1, 87),
('2022-01-19 12:20:47.487096', '2022-01-19 12:20:47.487096', 10000, 88, 1, 88);

-- --------------------------------------------------------

--
-- Structure de la table `product_variant_translation`
--

CREATE TABLE `product_variant_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product_variant_translation`
--

INSERT INTO `product_variant_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2022-01-19 12:20:44.362606', '2022-01-19 12:20:44.000000', 'en', 'Laptop 13 inch 8GB', 1, 1),
('2022-01-19 12:20:44.390184', '2022-01-19 12:20:44.000000', 'en', 'Laptop 15 inch 8GB', 2, 2),
('2022-01-19 12:20:44.406853', '2022-01-19 12:20:44.000000', 'en', 'Laptop 13 inch 16GB', 3, 3),
('2022-01-19 12:20:44.422038', '2022-01-19 12:20:44.000000', 'en', 'Laptop 15 inch 16GB', 4, 4),
('2022-01-19 12:20:44.476471', '2022-01-19 12:20:44.000000', 'en', 'Tablet 32GB', 5, 5),
('2022-01-19 12:20:44.487471', '2022-01-19 12:20:44.000000', 'en', 'Tablet 128GB', 6, 6),
('2022-01-19 12:20:44.543840', '2022-01-19 12:20:44.000000', 'en', 'Wireless Optical Mouse', 7, 7),
('2022-01-19 12:20:44.600236', '2022-01-19 12:20:44.000000', 'en', '32-Inch Monitor', 8, 8),
('2022-01-19 12:20:44.661640', '2022-01-19 12:20:44.000000', 'en', 'Curvy Monitor 24 inch', 9, 9),
('2022-01-19 12:20:44.689965', '2022-01-19 12:20:44.000000', 'en', 'Curvy Monitor 27 inch', 10, 10),
('2022-01-19 12:20:44.756647', '2022-01-19 12:20:44.000000', 'en', 'High Performance RAM 4GB', 11, 11),
('2022-01-19 12:20:44.769115', '2022-01-19 12:20:44.000000', 'en', 'High Performance RAM 8GB', 12, 12),
('2022-01-19 12:20:44.785670', '2022-01-19 12:20:44.000000', 'en', 'High Performance RAM 16GB', 13, 13),
('2022-01-19 12:20:44.904377', '2022-01-19 12:20:44.000000', 'en', 'Gaming PC i7-8700 240GB SSD', 14, 14),
('2022-01-19 12:20:44.921427', '2022-01-19 12:20:44.000000', 'en', 'Gaming PC R7-2700 240GB SSD', 15, 15),
('2022-01-19 12:20:44.936884', '2022-01-19 12:20:44.000000', 'en', 'Gaming PC i7-8700 120GB SSD', 16, 16),
('2022-01-19 12:20:44.951707', '2022-01-19 12:20:44.000000', 'en', 'Gaming PC R7-2700 120GB SSD', 17, 17),
('2022-01-19 12:20:45.057741', '2022-01-19 12:20:45.000000', 'en', 'Hard Drive 1TB', 18, 18),
('2022-01-19 12:20:45.075150', '2022-01-19 12:20:45.000000', 'en', 'Hard Drive 2TB', 19, 19),
('2022-01-19 12:20:45.091592', '2022-01-19 12:20:45.000000', 'en', 'Hard Drive 3TB', 20, 20),
('2022-01-19 12:20:45.108186', '2022-01-19 12:20:45.000000', 'en', 'Hard Drive 4TB', 21, 21),
('2022-01-19 12:20:45.127361', '2022-01-19 12:20:45.000000', 'en', 'Hard Drive 6TB', 22, 22),
('2022-01-19 12:20:45.165573', '2022-01-19 12:20:45.000000', 'en', 'Clacky Keyboard', 23, 23),
('2022-01-19 12:20:45.196201', '2022-01-19 12:20:45.000000', 'en', 'Ethernet Cable', 24, 24),
('2022-01-19 12:20:45.222962', '2022-01-19 12:20:45.000000', 'en', 'USB Cable', 25, 25),
('2022-01-19 12:20:45.268208', '2022-01-19 12:20:45.000000', 'en', 'Instant Camera', 26, 26),
('2022-01-19 12:20:45.311292', '2022-01-19 12:20:45.000000', 'en', 'Camera Lens', 27, 27),
('2022-01-19 12:20:45.350396', '2022-01-19 12:20:45.000000', 'en', 'Vintage Folding Camera', 28, 28),
('2022-01-19 12:20:45.384593', '2022-01-19 12:20:45.000000', 'en', 'Tripod', 29, 29),
('2022-01-19 12:20:45.424677', '2022-01-19 12:20:45.000000', 'en', 'Instamatic Camera', 30, 30),
('2022-01-19 12:20:45.465975', '2022-01-19 12:20:45.000000', 'en', 'Compact Digital Camera', 31, 31),
('2022-01-19 12:20:45.535686', '2022-01-19 12:20:45.000000', 'en', 'Nikkormat SLR Camera', 32, 32),
('2022-01-19 12:20:45.573420', '2022-01-19 12:20:45.000000', 'en', 'Compact SLR Camera', 33, 33),
('2022-01-19 12:20:45.608161', '2022-01-19 12:20:45.000000', 'en', 'Twin Lens Camera', 34, 34),
('2022-01-19 12:20:45.676511', '2022-01-19 12:20:45.000000', 'en', 'Road Bike', 35, 35),
('2022-01-19 12:20:45.712939', '2022-01-19 12:20:45.000000', 'en', 'Skipping Rope', 36, 36),
('2022-01-19 12:20:45.766490', '2022-01-19 12:20:45.000000', 'en', 'Boxing Gloves', 37, 37),
('2022-01-19 12:20:45.800452', '2022-01-19 12:20:45.000000', 'en', 'Tent', 38, 38),
('2022-01-19 12:20:45.827096', '2022-01-19 12:20:45.000000', 'en', 'Cruiser Skateboard', 39, 39),
('2022-01-19 12:20:45.865927', '2022-01-19 12:20:45.000000', 'en', 'Football', 40, 40),
('2022-01-19 12:20:45.921648', '2022-01-19 12:20:45.000000', 'en', 'Tennis Ball', 41, 41),
('2022-01-19 12:20:45.955703', '2022-01-19 12:20:45.000000', 'en', 'Basketball', 42, 42),
('2022-01-19 12:20:46.072207', '2022-01-19 12:20:46.000000', 'en', 'Ultraboost Running Shoe Size 40', 43, 43),
('2022-01-19 12:20:46.084692', '2022-01-19 12:20:46.000000', 'en', 'Ultraboost Running Shoe Size 42', 44, 44),
('2022-01-19 12:20:46.098210', '2022-01-19 12:20:46.000000', 'en', 'Ultraboost Running Shoe Size 44', 45, 45),
('2022-01-19 12:20:46.110474', '2022-01-19 12:20:46.000000', 'en', 'Ultraboost Running Shoe Size 46', 46, 46),
('2022-01-19 12:20:46.179471', '2022-01-19 12:20:46.000000', 'en', 'Freerun Running Shoe Size 40', 47, 47),
('2022-01-19 12:20:46.191629', '2022-01-19 12:20:46.000000', 'en', 'Freerun Running Shoe Size 42', 48, 48),
('2022-01-19 12:20:46.206301', '2022-01-19 12:20:46.000000', 'en', 'Freerun Running Shoe Size 44', 49, 49),
('2022-01-19 12:20:46.218868', '2022-01-19 12:20:46.000000', 'en', 'Freerun Running Shoe Size 46', 50, 50),
('2022-01-19 12:20:46.284208', '2022-01-19 12:20:46.000000', 'en', 'Hi-Top Basketball Shoe Size 40', 51, 51),
('2022-01-19 12:20:46.298255', '2022-01-19 12:20:46.000000', 'en', 'Hi-Top Basketball Shoe Size 42', 52, 52),
('2022-01-19 12:20:46.310345', '2022-01-19 12:20:46.000000', 'en', 'Hi-Top Basketball Shoe Size 44', 53, 53),
('2022-01-19 12:20:46.321928', '2022-01-19 12:20:46.000000', 'en', 'Hi-Top Basketball Shoe Size 46', 54, 54),
('2022-01-19 12:20:46.388492', '2022-01-19 12:20:46.000000', 'en', 'Pureboost Running Shoe Size 40', 55, 55),
('2022-01-19 12:20:46.400154', '2022-01-19 12:20:46.000000', 'en', 'Pureboost Running Shoe Size 42', 56, 56),
('2022-01-19 12:20:46.413465', '2022-01-19 12:20:46.000000', 'en', 'Pureboost Running Shoe Size 44', 57, 57),
('2022-01-19 12:20:46.426208', '2022-01-19 12:20:46.000000', 'en', 'Pureboost Running Shoe Size 46', 58, 58),
('2022-01-19 12:20:46.486097', '2022-01-19 12:20:46.000000', 'en', 'RunX Running Shoe Size 40', 59, 59),
('2022-01-19 12:20:46.500406', '2022-01-19 12:20:46.000000', 'en', 'RunX Running Shoe Size 42', 60, 60),
('2022-01-19 12:20:46.516097', '2022-01-19 12:20:46.000000', 'en', 'RunX Running Shoe Size 44', 61, 61),
('2022-01-19 12:20:46.531694', '2022-01-19 12:20:46.000000', 'en', 'RunX Running Shoe Size 46', 62, 62),
('2022-01-19 12:20:46.613816', '2022-01-19 12:20:46.000000', 'en', 'Allstar Sneakers Size 40', 63, 63),
('2022-01-19 12:20:46.635641', '2022-01-19 12:20:46.000000', 'en', 'Allstar Sneakers Size 42', 64, 64),
('2022-01-19 12:20:46.650105', '2022-01-19 12:20:46.000000', 'en', 'Allstar Sneakers Size 44', 65, 65),
('2022-01-19 12:20:46.666070', '2022-01-19 12:20:46.000000', 'en', 'Allstar Sneakers Size 46', 66, 66),
('2022-01-19 12:20:46.746868', '2022-01-19 12:20:46.000000', 'en', 'Spiky Cactus', 67, 67),
('2022-01-19 12:20:46.790424', '2022-01-19 12:20:46.000000', 'en', 'Tulip Pot', 68, 68),
('2022-01-19 12:20:46.826280', '2022-01-19 12:20:46.000000', 'en', 'Hanging Plant', 69, 69),
('2022-01-19 12:20:46.853940', '2022-01-19 12:20:46.000000', 'en', 'Aloe Vera', 70, 70),
('2022-01-19 12:20:46.896966', '2022-01-19 12:20:46.000000', 'en', 'Fern Blechnum Gibbum', 71, 71),
('2022-01-19 12:20:46.927329', '2022-01-19 12:20:46.000000', 'en', 'Assorted Indoor Succulents', 72, 72),
('2022-01-19 12:20:46.957536', '2022-01-19 12:20:46.000000', 'en', 'Orchid', 73, 73),
('2022-01-19 12:20:47.001383', '2022-01-19 12:20:47.000000', 'en', 'Bonsai Tree', 74, 74),
('2022-01-19 12:20:47.048069', '2022-01-19 12:20:47.000000', 'en', 'Guardian Lion Statue', 75, 75),
('2022-01-19 12:20:47.079329', '2022-01-19 12:20:47.000000', 'en', 'Hand Trowel', 76, 76),
('2022-01-19 12:20:47.106888', '2022-01-19 12:20:47.000000', 'en', 'Balloon Chair', 77, 77),
('2022-01-19 12:20:47.136262', '2022-01-19 12:20:47.000000', 'en', 'Grey Fabric Sofa', 78, 78),
('2022-01-19 12:20:47.172129', '2022-01-19 12:20:47.000000', 'en', 'Leather Sofa', 79, 79),
('2022-01-19 12:20:47.200674', '2022-01-19 12:20:47.000000', 'en', 'Light Shade', 80, 80),
('2022-01-19 12:20:47.240882', '2022-01-19 12:20:47.000000', 'en', 'Wooden Side Desk', 81, 81),
('2022-01-19 12:20:47.273113', '2022-01-19 12:20:47.000000', 'en', 'Comfy Padded Chair', 82, 82),
('2022-01-19 12:20:47.309172', '2022-01-19 12:20:47.000000', 'en', 'Black Eaves Chair', 83, 83),
('2022-01-19 12:20:47.345442', '2022-01-19 12:20:47.000000', 'en', 'Wooden Stool', 84, 84),
('2022-01-19 12:20:47.379014', '2022-01-19 12:20:47.000000', 'en', 'Bedside Table', 85, 85),
('2022-01-19 12:20:47.438932', '2022-01-19 12:20:47.000000', 'en', 'Modern Cafe Chair mustard', 86, 86),
('2022-01-19 12:20:47.462722', '2022-01-19 12:20:47.000000', 'en', 'Modern Cafe Chair mint', 87, 87),
('2022-01-19 12:20:47.475138', '2022-01-19 12:20:47.000000', 'en', 'Modern Cafe Chair pearl', 88, 88);

-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--

CREATE TABLE `promotion` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `startsAt` datetime DEFAULT NULL,
  `endsAt` datetime DEFAULT NULL,
  `couponCode` varchar(255) DEFAULT NULL,
  `perCustomerUsageLimit` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `conditions` text NOT NULL,
  `actions` text NOT NULL,
  `priorityScore` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `promotion_channels_channel`
--

CREATE TABLE `promotion_channels_channel` (
  `promotionId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `refund`
--

CREATE TABLE `refund` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `items` int(11) NOT NULL,
  `shipping` int(11) NOT NULL,
  `adjustment` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `metadata` text NOT NULL,
  `id` int(11) NOT NULL,
  `paymentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`createdAt`, `updatedAt`, `code`, `description`, `permissions`, `id`) VALUES
('2022-01-19 12:20:41.158664', '2022-01-19 12:20:41.158664', '__super_admin_role__', 'SuperAdmin', 'Authenticated,SuperAdmin,UpdateGlobalSettings,CreateCatalog,ReadCatalog,UpdateCatalog,DeleteCatalog,CreateSettings,ReadSettings,UpdateSettings,DeleteSettings,CreateAdministrator,ReadAdministrator,UpdateAdministrator,DeleteAdministrator,CreateAsset,ReadAsset,UpdateAsset,DeleteAsset,CreateChannel,ReadChannel,UpdateChannel,DeleteChannel,CreateCollection,ReadCollection,UpdateCollection,DeleteCollection,CreateCountry,ReadCountry,UpdateCountry,DeleteCountry,CreateCustomer,ReadCustomer,UpdateCustomer,DeleteCustomer,CreateCustomerGroup,ReadCustomerGroup,UpdateCustomerGroup,DeleteCustomerGroup,CreateFacet,ReadFacet,UpdateFacet,DeleteFacet,CreateOrder,ReadOrder,UpdateOrder,DeleteOrder,CreatePaymentMethod,ReadPaymentMethod,UpdatePaymentMethod,DeletePaymentMethod,CreateProduct,ReadProduct,UpdateProduct,DeleteProduct,CreatePromotion,ReadPromotion,UpdatePromotion,DeletePromotion,CreateShippingMethod,ReadShippingMethod,UpdateShippingMethod,DeleteShippingMethod,CreateTag,ReadTag,UpdateTag,DeleteTag,CreateTaxCategory,ReadTaxCategory,UpdateTaxCategory,DeleteTaxCategory,CreateTaxRate,ReadTaxRate,UpdateTaxRate,DeleteTaxRate,CreateSystem,ReadSystem,UpdateSystem,DeleteSystem,CreateZone,ReadZone,UpdateZone,DeleteZone', 1),
('2022-01-19 12:20:41.168104', '2022-01-19 12:20:41.168104', '__customer_role__', 'Customer', 'Authenticated', 2),
('2022-01-19 12:20:44.067406', '2022-01-19 12:20:44.067406', 'administrator', 'Administrator', 'Authenticated,CreateCatalog,ReadCatalog,UpdateCatalog,DeleteCatalog,CreateSettings,ReadSettings,UpdateSettings,DeleteSettings,CreateCustomer,ReadCustomer,UpdateCustomer,DeleteCustomer,CreateCustomerGroup,ReadCustomerGroup,UpdateCustomerGroup,DeleteCustomerGroup,CreateOrder,ReadOrder,UpdateOrder,DeleteOrder,CreateSystem,ReadSystem,UpdateSystem,DeleteSystem', 3),
('2022-01-19 12:20:44.076437', '2022-01-19 12:20:44.076437', 'order-manager', 'Order manager', 'Authenticated,CreateOrder,ReadOrder,UpdateOrder,DeleteOrder,ReadCustomer,ReadPaymentMethod,ReadShippingMethod,ReadPromotion,ReadCountry,ReadZone', 4),
('2022-01-19 12:20:44.083280', '2022-01-19 12:20:44.083280', 'inventory-manager', 'Inventory manager', 'Authenticated,CreateCatalog,ReadCatalog,UpdateCatalog,DeleteCatalog,CreateTag,ReadTag,UpdateTag,DeleteTag,ReadCustomer', 5);

-- --------------------------------------------------------

--
-- Structure de la table `role_channels_channel`
--

CREATE TABLE `role_channels_channel` (
  `roleId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `role_channels_channel`
--

INSERT INTO `role_channels_channel` (`roleId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `search_index_item`
--

CREATE TABLE `search_index_item` (
  `languageCode` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productVariantName` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `priceWithTax` int(11) NOT NULL,
  `facetIds` text NOT NULL,
  `facetValueIds` text NOT NULL,
  `collectionIds` text NOT NULL,
  `collectionSlugs` text NOT NULL,
  `channelIds` text NOT NULL,
  `productPreview` varchar(255) NOT NULL,
  `productPreviewFocalPoint` text DEFAULT NULL,
  `productVariantPreview` varchar(255) NOT NULL,
  `productVariantPreviewFocalPoint` text DEFAULT NULL,
  `inStock` tinyint(4) NOT NULL DEFAULT 1,
  `productInStock` tinyint(4) NOT NULL DEFAULT 1,
  `productVariantId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productAssetId` int(11) DEFAULT NULL,
  `productVariantAssetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `search_index_item`
--

INSERT INTO `search_index_item` (`languageCode`, `enabled`, `productName`, `productVariantName`, `description`, `slug`, `sku`, `price`, `priceWithTax`, `facetIds`, `facetValueIds`, `collectionIds`, `collectionSlugs`, `channelIds`, `productPreview`, `productPreviewFocalPoint`, `productVariantPreview`, `productVariantPreviewFocalPoint`, `inStock`, `productInStock`, `productVariantId`, `channelId`, `productId`, `productAssetId`, `productVariantAssetId`) VALUES
('en', 1, 'Laptop', 'Laptop 13 inch 8GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201308', 129900, 155880, '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview\\71\\derick-david-409858-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 1, 1, 1, 1, NULL),
('en', 1, 'Laptop', 'Laptop 15 inch 8GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201508', 139900, 167880, '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview\\71\\derick-david-409858-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 2, 1, 1, 1, NULL),
('en', 1, 'Laptop', 'Laptop 13 inch 16GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201316', 219900, 263880, '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview\\71\\derick-david-409858-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 3, 1, 1, 1, NULL),
('en', 1, 'Laptop', 'Laptop 15 inch 16GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201516', 229900, 275880, '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview\\71\\derick-david-409858-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 4, 1, 1, 1, NULL),
('en', 1, 'Tablet', 'Tablet 32GB', 'If the computer were invented today, what would it look like? It would be powerful enough for any task. So mobile you could take it everywhere. And so intuitive you could use it any way you wanted — with touch, a keyboard, or even a pencil. In other words, it wouldn’t really be a \"computer.\" It would be Tablet.', 'tablet', 'TBL200032', 32900, 39480, '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview\\b8\\kelly-sikkema-685291-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 5, 1, 2, 2, NULL),
('en', 1, 'Tablet', 'Tablet 128GB', 'If the computer were invented today, what would it look like? It would be powerful enough for any task. So mobile you could take it everywhere. And so intuitive you could use it any way you wanted — with touch, a keyboard, or even a pencil. In other words, it wouldn’t really be a \"computer.\" It would be Tablet.', 'tablet', 'TBL200128', 44500, 53400, '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview\\b8\\kelly-sikkema-685291-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 6, 1, 2, 2, NULL),
('en', 1, 'Wireless Optical Mouse', 'Wireless Optical Mouse', 'The Logitech M185 Wireless Optical Mouse is a great device for any computer user, and as Logitech are the global market leaders for these devices, you are also guaranteed absolute reliability. A mouse to be reckoned with!', 'cordless-mouse', '834444', 1899, 2279, '1,2', '1,2,4', '2,3', 'electronics,computers', '1', 'preview\\a1\\oscar-ivan-esquivel-arteaga-687447-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 7, 1, 3, 3, NULL),
('en', 1, '32-Inch Monitor', '32-Inch Monitor', 'The UJ59 with Ultra HD resolution has 4x the pixels of Full HD, delivering more screen space and amazingly life-like images. That means you can view documents and webpages with less scrolling, work more comfortably with multiple windows and toolbars, and enjoy photos, videos and games in stunning 4K quality. Note: beverage not included.', '32-inch-monitor', 'LU32J590UQUXEN', 31000, 37200, '1,2', '1,2,5', '2,3', 'electronics,computers', '1', 'preview\\d2\\daniel-korpai-1302051-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 8, 1, 4, 4, NULL),
('en', 1, 'Curvy Monitor', 'Curvy Monitor 24 inch', 'Discover a truly immersive viewing experience with this monitor curved more deeply than any other. Wrapping around your field of vision the 1,800 R screencreates a wider field of view, enhances depth perception, and minimises peripheral distractions to draw you deeper in to your content.', 'curvy-monitor', 'C24F390', 14374, 17249, '1,2', '1,2,5', '2,3', 'electronics,computers', '1', 'preview\\9c\\alexandru-acea-686569-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 9, 1, 5, 5, NULL),
('en', 1, 'Curvy Monitor', 'Curvy Monitor 27 inch', 'Discover a truly immersive viewing experience with this monitor curved more deeply than any other. Wrapping around your field of vision the 1,800 R screencreates a wider field of view, enhances depth perception, and minimises peripheral distractions to draw you deeper in to your content.', 'curvy-monitor', 'C27F390', 16994, 20393, '1,2', '1,2,5', '2,3', 'electronics,computers', '1', 'preview\\9c\\alexandru-acea-686569-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 10, 1, 5, 5, NULL),
('en', 1, 'High Performance RAM', 'High Performance RAM 4GB', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 'high-performance-ram', 'CMK32GX4M2AC04', 13785, 16542, '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview\\58\\liam-briese-1128307-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 11, 1, 6, 6, NULL),
('en', 1, 'High Performance RAM', 'High Performance RAM 8GB', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 'high-performance-ram', 'CMK32GX4M2AC08', 14639, 17567, '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview\\58\\liam-briese-1128307-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 12, 1, 6, 6, NULL),
('en', 1, 'High Performance RAM', 'High Performance RAM 16GB', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 'high-performance-ram', 'CMK32GX4M2AC16', 28181, 33817, '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview\\58\\liam-briese-1128307-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 13, 1, 6, 6, NULL),
('en', 1, 'Gaming PC', 'Gaming PC i7-8700 240GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1063', 108720, 130464, '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview\\5a\\florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 14, 1, 7, 7, NULL),
('en', 1, 'Gaming PC', 'Gaming PC R7-2700 240GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1064', 109995, 131994, '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview\\5a\\florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 15, 1, 7, 7, NULL),
('en', 1, 'Gaming PC', 'Gaming PC i7-8700 120GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1065', 93120, 111744, '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview\\5a\\florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 16, 1, 7, 7, NULL),
('en', 1, 'Gaming PC', 'Gaming PC R7-2700 120GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1066', 94920, 113904, '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview\\5a\\florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 17, 1, 7, 7, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 1TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T1', 3799, 4559, '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview\\96\\vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 18, 1, 8, 8, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 2TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T2', 5374, 6449, '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview\\96\\vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 19, 1, 8, 8, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 3TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T3', 7896, 9475, '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview\\96\\vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 20, 1, 8, 8, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 4TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T4', 9299, 11159, '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview\\96\\vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 21, 1, 8, 8, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 6TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T6', 13435, 16122, '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview\\96\\vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 22, 1, 8, 8, NULL),
('en', 1, 'Clacky Keyboard', 'Clacky Keyboard', 'Let all your colleagues know that you are typing on this exclusive, colorful klicky-klacky keyboard. Huge travel on each keypress ensures maximum klack on each and every keystroke.', 'clacky-keyboard', 'A4TKLA45535', 7489, 8987, '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview\\09\\juan-gomez-674574-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 23, 1, 9, 9, NULL),
('en', 1, 'Ethernet Cable', 'Ethernet Cable', '5m (metres) Cat.6 network cable (upwards/downwards compatible) | Patch cable | 2 RJ-45 plug | plug with bend protection mantle. High transmission speeds due to operating frequency with up to 250 MHz (in comparison to Cat.5/Cat.5e cable bandwidth of 100 MHz).', 'ethernet-cable', 'A23334x30', 597, 716, '1', '1,2', '2,3', 'electronics,computers', '1', 'preview\\7b\\thomas-q-1229169-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 24, 1, 10, 10, NULL),
('en', 1, 'USB Cable', 'USB Cable', 'Solid conductors eliminate strand-interaction distortion and reduce jitter. As the surface is made of high-purity silver, the performance is very close to that of a solid silver cable, but priced much closer to solid copper cable.', 'usb-cable', 'USBCIN01.5MI', 6900, 8280, '1', '1,2', '2,3', 'electronics,computers', '1', 'preview\\64\\adam-birkett-239153-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 25, 1, 11, 11, NULL),
('en', 1, 'Instant Camera', 'Instant Camera', 'With its nostalgic design and simple point-and-shoot functionality, the Instant Camera is the perfect pick to get started with instant photography.', 'instant-camera', 'IC22MWDD', 17499, 20999, '1,2', '1,9,10', '2,4', 'electronics,camera-photo', '1', 'preview\\b5\\eniko-kis-663725-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 26, 1, 12, 12, NULL),
('en', 1, 'Camera Lens', 'Camera Lens', 'This lens is a Di type lens using an optical system with improved multi-coating designed to function with digital SLR cameras as well as film cameras.', 'camera-lens', 'B0012UUP02', 10400, 12480, '1,2', '1,9,11', '2,4', 'electronics,camera-photo', '1', 'preview\\9b\\brandi-redd-104140-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 27, 1, 13, 13, NULL),
('en', 1, 'Vintage Folding Camera', 'Vintage Folding Camera', 'This vintage folding camera is so antiquated that you cannot possibly hope to produce actual photographs with it. However, it makes a wonderful decorative piece for the home or office.', 'vintage-folding-camera', 'B00AFC9099', 535000, 642000, '1,2', '1,9,12', '2,4', 'electronics,camera-photo', '1', 'preview\\3c\\jonathan-talbert-697262-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 28, 1, 14, 14, NULL),
('en', 1, 'Tripod', 'Tripod', 'Capture vivid, professional-style photographs with help from this lightweight tripod. The adjustable-height tripod makes it easy to achieve reliable stability and score just the right angle when going after that award-winning shot.', 'tripod', 'B00XI87KV8', 1498, 1798, '1,2', '1,9,13', '2,4', 'electronics,camera-photo', '1', 'preview\\21\\zoltan-tasi-423051-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 29, 1, 15, 15, NULL),
('en', 1, 'Instamatic Camera', 'Instamatic Camera', 'This inexpensive point-and-shoot camera uses easy-to-load 126 film cartridges. A built-in flash unit ensure great results, no matter the lighting conditions.', 'instamatic-camera', 'B07K1330LL', 2000, 2400, '1,2', '1,9,14', '2,4', 'electronics,camera-photo', '1', 'preview\\5b\\jakob-owens-274337-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 30, 1, 16, 16, NULL),
('en', 1, 'Compact Digital Camera', 'Compact Digital Camera', 'Unleash your creative potential with high-level performance and advanced features such as AI-powered Real-time Eye AF; new, high-precision Real-time Tracking; high-speed continuous shooting and 4K HDR movie-shooting. The camera\'s innovative AF quickly and reliably detects the position of the subject and then tracks the subject\'s motion, keeping it in sharp focus.', 'compact-digital-camera', 'B07D990021', 89999, 107999, '1,2', '1,9,15', '2,4', 'electronics,camera-photo', '1', 'preview\\bc\\patrick-brinksma-663044-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 31, 1, 17, 17, NULL),
('en', 1, 'Nikkormat SLR Camera', 'Nikkormat SLR Camera', 'The Nikkormat FS was brought to market by Nikon in 1965. The lens is a 50mm f1.4 Nikkor. Nice glass, smooth focus and a working diaphragm. A UV filter and a Nikon front lens cap are included with the lens.', 'nikkormat-slr-camera', 'B07D33B334', 61500, 73800, '1,2', '1,9,11', '2,4', 'electronics,camera-photo', '1', 'preview\\95\\chuttersnap-324234-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 32, 1, 18, 18, NULL),
('en', 1, 'Compact SLR Camera', 'Compact SLR Camera', 'Retro styled, portable in size and built around a powerful 24-megapixel APS-C CMOS sensor, this digital camera is the ideal companion for creative everyday photography. Packed full of high spec features such as an advanced hybrid autofocus system able to keep pace with even the most active subjects, a speedy 6fps continuous-shooting mode, high-resolution electronic viewfinder and intuitive swivelling touchscreen, it brings professional image making into everyone’s grasp.', 'compact-slr-camera', 'B07D75V44S', 52100, 62520, '1', '1,9', '2,4', 'electronics,camera-photo', '1', 'preview\\9d\\robert-shunev-528016-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 33, 1, 19, 19, NULL),
('en', 1, 'Twin Lens Camera', 'Twin Lens Camera', 'What makes a Rolleiflex TLR so special? Many things. To start, TLR stands for twin lens reflex. “Twin” because there are two lenses. And reflex means that the photographer looks through the lens to view the reflected image of an object or scene on the focusing screen. ', 'twin-lens-camera', 'B07D78JTLR', 79900, 95880, '1,2', '1,9,16', '2,4', 'electronics,camera-photo', '1', 'preview\\ef\\alexander-andrews-260988-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 34, 1, 20, 20, NULL),
('en', 1, 'Road Bike', 'Road Bike', 'Featuring a full carbon chassis - complete with cyclocross-specific carbon fork - and a component setup geared for hard use on the race circuit, it\'s got the low weight, exceptional efficiency and brilliant handling you\'ll need to stay at the front of the pack.', 'road-bike', 'RB000844334', 249900, 299880, '1,2', '17,18,19', '8,9', 'sports-outdoor,equipment', '1', 'preview\\2f\\mikkel-bech-748940-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 35, 1, 21, 21, NULL),
('en', 1, 'Skipping Rope', 'Skipping Rope', 'When you\'re working out you need a quality rope that doesn\'t tangle at every couple of jumps and with this skipping rope you won\'t have this problem. The fact that it looks like a pair of tasty frankfurters is merely a bonus.', 'skipping-rope', 'B07CNGXVXT', 799, 959, '1,2', '17,18,20', '8,9', 'sports-outdoor,equipment', '1', 'preview\\34\\stoica-ionela-530966-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 36, 1, 22, 22, NULL),
('en', 1, 'Boxing Gloves', 'Boxing Gloves', 'Training gloves designed for optimum training. Our gloves promote proper punching technique because they are conformed to the natural shape of your fist. Dense, innovative two-layer foam provides better shock absorbency and full padding on the front, back and wrist to promote proper punching technique.', 'boxing-gloves', 'B000ZYLPPU', 3304, 3965, '1,2', '17,18,20', '8,9', 'sports-outdoor,equipment', '1', 'preview\\4f\\neonbrand-428982-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 37, 1, 23, 23, NULL),
('en', 1, 'Tent', 'Tent', 'With tons of space inside (for max. 4 persons), full head height throughout the entire tent and an unusual and striking shape, this tent offers you everything you need.', 'tent', '2000023510', 21493, 25792, '1', '17,18', '8,9', 'sports-outdoor,equipment', '1', 'preview\\96\\michael-guite-571169-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 38, 1, 24, 24, NULL),
('en', 1, 'Cruiser Skateboard', 'Cruiser Skateboard', 'Based on the 1970s iconic shape, but made to a larger 69cm size, with updated, quality component, these skateboards are great for beginners to learn the foot spacing required, and are perfect for all-day cruising.', 'cruiser-skateboard', '799872520', 2499, 2999, '1', '17,18', '8,9', 'sports-outdoor,equipment', '1', 'preview\\35\\max-tarkhov-737999-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 39, 1, 25, 25, NULL),
('en', 1, 'Football', 'Football', 'This football features high-contrast graphics for high-visibility during play, while its machine-stitched tpu casing offers consistent performance.', 'football', 'SC3137-056', 5707, 6848, '1,2', '17,18,21', '8,9', 'sports-outdoor,equipment', '1', 'preview\\d6\\nik-shuliahin-619349-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 40, 1, 26, 26, NULL),
('en', 1, 'Tennis Ball', 'Tennis Ball', 'Our dog loves these tennis balls and they last for some time before they eventually either get lost in some field or bush or the covering comes off due to it being used most of the day every day.', 'tennis-ball', 'WRT11752P', 1273, 1528, '1,2', '17,18,22', '8,9', 'sports-outdoor,equipment', '1', 'preview\\30\\ben-hershey-574483-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 41, 1, 27, 27, NULL),
('en', 1, 'Basketball', 'Basketball', 'The Wilson MVP ball is perfect for playing basketball, and improving your skill for hours on end. Designed for new players, it is created with a high-quality rubber suitable for courts, allowing you to get full use during your practices.', 'basketball', 'WTB1418XB06', 3562, 4274, '1,2', '17,18,22', '8,9', 'sports-outdoor,equipment', '1', 'preview\\0f\\tommy-bebo-600358-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 42, 1, 28, 28, NULL),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 40', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0040', 9999, 11999, '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview\\ed\\chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 43, 1, 29, 29, NULL),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 42', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0042', 9999, 11999, '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview\\ed\\chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 44, 1, 29, 29, NULL),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 44', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0044', 9999, 11999, '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview\\ed\\chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 45, 1, 29, 29, NULL),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 46', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0046', 9999, 11999, '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview\\ed\\chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 46, 1, 29, 29, NULL),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 40', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-40', 16000, 19200, '1,2,3', '17,21,23,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\0f\\imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 47, 1, 30, 30, NULL),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 42', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-42', 16000, 19200, '1,2,3', '17,21,23,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\0f\\imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 48, 1, 30, 30, NULL),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 44', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-44', 16000, 19200, '1,2,3', '17,21,23,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\0f\\imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 49, 1, 30, 30, NULL),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 46', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-46', 16000, 19200, '1,2,3', '17,21,23,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\0f\\imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 50, 1, 30, 30, NULL),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 40', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-40', 14000, 16800, '1,2,3', '17,21,23,28', '8,10', 'sports-outdoor,footwear', '1', 'preview\\3c\\xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 51, 1, 31, 31, NULL),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 42', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-42', 14000, 16800, '1,2,3', '17,21,23,28', '8,10', 'sports-outdoor,footwear', '1', 'preview\\3c\\xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 52, 1, 31, 31, NULL),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 44', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-44', 14000, 16800, '1,2,3', '17,21,23,28', '8,10', 'sports-outdoor,footwear', '1', 'preview\\3c\\xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 53, 1, 31, 31, NULL),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 46', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-46', 14000, 16800, '1,2,3', '17,21,23,28', '8,10', 'sports-outdoor,footwear', '1', 'preview\\3c\\xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 54, 1, 31, 31, NULL),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 40', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578640', 9995, 11994, '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview\\a2\\thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 55, 1, 32, 32, NULL),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 42', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578642', 9995, 11994, '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview\\a2\\thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 56, 1, 32, 32, NULL),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 44', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578644', 9995, 11994, '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview\\a2\\thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 57, 1, 32, 32, NULL),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 46', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578646', 9995, 11994, '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview\\a2\\thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 58, 1, 32, 32, NULL),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 40', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633340', 4495, 5394, '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\00\\nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 59, 1, 33, 33, NULL),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 42', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633342', 4495, 5394, '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\00\\nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 60, 1, 33, 33, NULL),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 44', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633344', 4495, 5394, '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\00\\nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 61, 1, 33, 33, NULL),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 46', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633346', 4495, 5394, '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\00\\nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 62, 1, 33, 33, NULL),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 40', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23340', 6500, 7800, '1,3,2', '17,23,27,29', '8,10', 'sports-outdoor,footwear', '1', 'preview\\aa\\mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 63, 1, 34, 34, NULL),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 42', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23342', 6500, 7800, '1,3,2', '17,23,27,29', '8,10', 'sports-outdoor,footwear', '1', 'preview\\aa\\mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 64, 1, 34, 34, NULL),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 44', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23344', 6500, 7800, '1,3,2', '17,23,27,29', '8,10', 'sports-outdoor,footwear', '1', 'preview\\aa\\mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 65, 1, 34, 34, NULL),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 46', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23346', 6500, 7800, '1,3,2', '17,23,27,29', '8,10', 'sports-outdoor,footwear', '1', 'preview\\aa\\mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 66, 1, 34, 34, NULL),
('en', 1, 'Spiky Cactus', 'Spiky Cactus', 'A spiky yet elegant house cactus - perfect for the home or office. Origin and habitat: Probably native only to the Andes of Peru', 'spiky-cactus', 'SC011001', 1550, 1860, '1,4', '30,31,32', '5,7', 'home-garden,plants', '1', 'preview\\78\\charles-deluvio-695736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 67, 1, 35, 35, NULL),
('en', 1, 'Tulip Pot', 'Tulip Pot', 'Bright crimson red species tulip with black centers, the poppy-like flowers will open up in full sun. Ideal for rock gardens, pots and border edging.', 'tulip-pot', 'A58477', 675, 810, '1,4', '30,31,32,33', '5,7', 'home-garden,plants', '1', 'preview\\14\\natalia-y-345738-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 68, 1, 36, 36, NULL),
('en', 1, 'Hanging Plant', 'Hanging Plant', 'Can be found in tropical and sub-tropical America where it grows on the branches of trees, but also on telephone wires and electricity cables and poles that sometimes topple with the weight of these plants. This plant loves a moist and warm air.', 'hanging-plant', 'A44223', 1995, 2394, '1,4', '30,31,33', '5,7', 'home-garden,plants', '1', 'preview\\5b\\alex-rodriguez-santibanez-200278-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 69, 1, 37, 37, NULL),
('en', 1, 'Aloe Vera', 'Aloe Vera', 'Decorative Aloe vera makes a lovely house plant. A really trendy plant, Aloe vera is just so easy to care for. Aloe vera sap has been renowned for its remarkable medicinal and cosmetic properties for many centuries and has been used to treat grazes, insect bites and sunburn - it really works.', 'aloe-vera', 'A44352', 699, 839, '1,4', '30,31,32', '5,7', 'home-garden,plants', '1', 'preview\\29\\silvia-agrasar-227575-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 70, 1, 38, 38, NULL),
('en', 1, 'Fern Blechnum Gibbum', 'Fern Blechnum Gibbum', 'Create a tropical feel in your home with this lush green tree fern, it has decorative leaves and will develop a short slender trunk in time.', 'fern-blechnum-gibbum', 'A04851', 895, 1074, '1,4', '30,31,33', '5,7', 'home-garden,plants', '1', 'preview\\6d\\caleb-george-536388-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 71, 1, 39, 39, NULL),
('en', 1, 'Assorted Indoor Succulents', 'Assorted Indoor Succulents', 'These assorted succulents come in a variety of different shapes and colours - each with their own unique personality. Succulents grow best in plenty of light: a sunny windowsill would be the ideal spot for them to thrive!', 'assorted-succulents', 'A08593', 3250, 3900, '1,4', '30,31,32', '5,7', 'home-garden,plants', '1', 'preview\\81\\annie-spratt-78044-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 72, 1, 40, 40, NULL),
('en', 1, 'Orchid', 'Orchid', 'Gloriously elegant. It can go along with any interior as it is a neutral color and the most popular Phalaenopsis overall. 2 to 3 foot stems host large white flowers that can last for over 2 months.', 'orchid', 'ROR00221', 6500, 7800, '1', '30,31', '5,7', 'home-garden,plants', '1', 'preview\\88\\zoltan-kovacs-642412-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 73, 1, 41, 41, NULL),
('en', 1, 'Bonsai Tree', 'Bonsai Tree', 'Excellent semi-evergreen bonsai. Indoors or out but needs some winter protection. All trees sent will leave the nursery in excellent condition and will be of equal quality or better than the photograph shown.', 'bonsai-tree', 'B01MXFLUSV', 1999, 2399, '1', '30,31', '5,7', 'home-garden,plants', '1', 'preview\\f3\\mark-tegethoff-667351-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 74, 1, 42, 42, NULL),
('en', 1, 'Guardian Lion Statue', 'Guardian Lion Statue', 'Placing it at home or office can bring you fortune and prosperity, guard your house and ward off ill fortune.', 'guardian-lion-statue', 'GL34LLW11', 18853, 22624, '1,3', '30,34,35', '5,6', 'home-garden,furniture', '1', 'preview\\44\\vincent-liu-525429-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 75, 1, 43, 43, NULL),
('en', 1, 'Hand Trowel', 'Hand Trowel', 'Hand trowel for garden cultivating hammer finish epoxy-coated head for improved resistance to rust, scratches, humidity and alkalines in the soil.', 'hand-trowel', '4058NB/09', 499, 599, '1', '30,31', '5,7', 'home-garden,plants', '1', 'preview\\7d\\neslihan-gunaydin-3493-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 76, 1, 44, 44, NULL),
('en', 1, 'Balloon Chair', 'Balloon Chair', 'A charming vintage white wooden chair featuring an extremely spherical pink balloon. The balloon may be detached and used for other purposes, for example as a party decoration.', 'balloon-chair', '34-BC82444', 6500, 7800, '1', '30,34', '5,6', 'home-garden,furniture', '1', 'preview\\ef\\florian-klauer-14840-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 77, 1, 45, 45, NULL),
('en', 1, 'Grey Fabric Sofa', 'Grey Fabric Sofa', 'Seat cushions filled with high resilience foam and polyester fibre wadding give comfortable support for your body, and easily regain their shape when you get up. The cover is easy to keep clean as it is removable and can be machine washed.', 'grey-fabric-sofa', 'CH00001-12', 29500, 35400, '1,3', '30,34,35', '5,6', 'home-garden,furniture', '1', 'preview\\69\\nathan-fertig-249917-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 78, 1, 46, 46, NULL),
('en', 1, 'Leather Sofa', 'Leather Sofa', 'This premium, tan-brown bonded leather seat is part of the \'chill\' sofa range. The lever activated recline feature makes it easy to adjust to any position. This smart, bustle back design with rounded tight padded arms has been designed with your comfort in mind. This well-padded chair has foam pocket sprung seat cushions and fibre-filled back cushions.', 'leather-sofa', 'CH00001-02', 124500, 149400, '1,3', '30,34,36', '5,6', 'home-garden,furniture', '1', 'preview\\3e\\paul-weaver-1120584-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 79, 1, 47, 47, NULL),
('en', 1, 'Light Shade', 'Light Shade', 'Modern tapered white polycotton pendant shade with a metallic silver chrome interior finish for maximum light reflection. Reversible gimble so it can be used as a ceiling shade or as a lamp shade.', 'light-shade', 'B45809LSW', 2845, 3414, '1', '30,34', '5,6', 'home-garden,furniture', '1', 'preview\\5f\\pierre-chatel-innocenti-483198-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 80, 1, 48, 48, NULL),
('en', 1, 'Wooden Side Desk', 'Wooden Side Desk', 'Drawer stops prevent the drawers from being pulled out too far. Built-in cable management for collecting cables and cords; out of sight but close at hand.', 'wooden-side-desk', '304.096.29', 12500, 15000, '1,3', '30,34,37', '5,6', 'home-garden,furniture', '1', 'preview\\40\\abel-y-costa-716024-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 81, 1, 49, 49, NULL),
('en', 1, 'Comfy Padded Chair', 'Comfy Padded Chair', 'You sit comfortably thanks to the shaped back. The chair frame is made of solid wood, which is a durable natural material.', 'comfy-padded-chair', '404.068.14', 13000, 15600, '1,3', '30,34,35', '5,6', 'home-garden,furniture', '1', 'preview\\3b\\kari-shea-398668-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 82, 1, 50, 50, NULL),
('en', 1, 'Black Eaves Chair', 'Black Eaves Chair', 'Comfortable to sit on thanks to the bowl-shaped seat and rounded shape of the backrest. No tools are required to assemble the chair, you just click it together with a simple mechanism under the seat.', 'black-eaves-chair', '003.600.02', 7000, 8400, '1,3', '30,34,27', '5,6', 'home-garden,furniture', '1', 'preview\\09\\andres-jasso-220776-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 83, 1, 51, 51, NULL),
('en', 1, 'Wooden Stool', 'Wooden Stool', 'Solid wood is a hardwearing natural material, which can be sanded and surface treated as required.', 'wooden-stool', '202.493.30', 1400, 1680, '1,3', '30,34,37', '5,6', 'home-garden,furniture', '1', 'preview\\d0\\ruslan-bardash-351288-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 84, 1, 52, 52, NULL),
('en', 1, 'Bedside Table', 'Bedside Table', 'Every table is unique, with varying grain pattern and natural colour shifts that are part of the charm of wood.', 'bedside-table', '404.290.14', 13000, 15600, '1,3', '30,34,28', '5,6', 'home-garden,furniture', '1', 'preview\\72\\benjamin-voros-310026-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 85, 1, 53, 53, NULL),
('en', 1, 'Modern Cafe Chair', 'Modern Cafe Chair mustard', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 'modern-cafe-chair', '404.038.96', 10000, 12000, '3,1', '38,30,34', '5,6', 'home-garden,furniture', '1', 'preview\\b1\\jean-philippe-delberghe-1400011-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 86, 1, 54, 54, NULL),
('en', 1, 'Modern Cafe Chair', 'Modern Cafe Chair mint', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 'modern-cafe-chair', '404.038.96', 10000, 12000, '3,1', '39,30,34', '5,6', 'home-garden,furniture', '1', 'preview\\b1\\jean-philippe-delberghe-1400011-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 87, 1, 54, 54, NULL),
('en', 1, 'Modern Cafe Chair', 'Modern Cafe Chair pearl', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 'modern-cafe-chair', '404.038.96', 10000, 12000, '3,1', '28,30,34', '5,6', 'home-garden,furniture', '1', 'preview\\b1\\jean-philippe-delberghe-1400011-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 88, 1, 54, 54, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `token` varchar(255) NOT NULL,
  `expires` datetime NOT NULL,
  `invalidated` tinyint(4) NOT NULL,
  `authenticationStrategy` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `activeOrderId` int(11) DEFAULT NULL,
  `activeChannelId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`createdAt`, `updatedAt`, `token`, `expires`, `invalidated`, `authenticationStrategy`, `id`, `activeOrderId`, `activeChannelId`, `type`, `userId`) VALUES
('2022-01-19 12:24:06.764898', '2022-01-19 12:24:06.000000', '8e6ae2998a47c502632b697ffa25a43cfd7827b386af7927250ff4f48809ce9c', '2023-01-19 17:24:06', 0, NULL, 1, NULL, 1, 'AnonymousSession', NULL),
('2022-01-19 12:24:06.840441', '2022-01-19 12:24:06.000000', 'e7e67fd02b9b0a2fc8fd4d4945e48e3146e1f6d6d5ed11e9c949a52becf93005', '2023-01-19 17:24:06', 0, NULL, 2, NULL, 1, 'AnonymousSession', NULL),
('2022-01-19 12:24:29.249672', '2022-01-19 12:24:29.000000', 'aea25774ca556c21d86bc3048becca1103e7c8f451fdd428a85ef84472674af2', '2023-01-19 17:24:29', 0, NULL, 3, NULL, 1, 'AnonymousSession', NULL),
('2022-01-19 12:24:31.799270', '2022-01-19 12:24:31.000000', 'f2c2ceb7a26c5d24a96ca9e86354eb395c9d19698c820c5904e439a8b9a9575b', '2023-01-19 17:24:31', 0, 'native', 4, NULL, 1, 'AuthenticatedSession', 1),
('2022-01-19 13:51:11.728703', '2022-01-19 13:51:11.000000', '85e99a925c694944a2ac3ac90ceac849b97136eaf982d537dab3224cdc31fdda', '2023-01-19 18:51:11', 0, NULL, 5, NULL, 1, 'AnonymousSession', NULL),
('2022-01-19 13:51:11.753913', '2022-01-19 13:51:11.000000', '7dd607d10f5cd9b6605a3b803e9e0c4e758bd3f2e06e4a2b918a9369e48a23dd', '2023-01-19 18:51:11', 0, NULL, 6, NULL, 1, 'AnonymousSession', NULL),
('2022-01-19 13:51:26.534192', '2022-01-19 13:51:26.000000', '49028054811da02e34c15fe09a688ded73f4b7403decb0c662ad0d68be13fb4f', '2023-01-19 18:51:26', 0, NULL, 7, 1, 1, 'AnonymousSession', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `shipping_line`
--

CREATE TABLE `shipping_line` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `listPrice` int(11) NOT NULL,
  `listPriceIncludesTax` tinyint(4) NOT NULL,
  `adjustments` text NOT NULL,
  `taxLines` text NOT NULL,
  `id` int(11) NOT NULL,
  `shippingMethodId` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `shipping_method`
--

CREATE TABLE `shipping_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `checker` text NOT NULL,
  `calculator` text NOT NULL,
  `fulfillmentHandlerCode` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `shipping_method`
--

INSERT INTO `shipping_method` (`createdAt`, `updatedAt`, `deletedAt`, `code`, `checker`, `calculator`, `fulfillmentHandlerCode`, `id`) VALUES
('2022-01-19 12:20:43.999504', '2022-01-19 12:20:43.999504', NULL, 'standard-shipping', '{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}', '{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"500\"},{\"name\":\"taxRate\",\"value\":\"0\"},{\"name\":\"includesTax\",\"value\":\"auto\"}]}', 'manual-fulfillment', 1),
('2022-01-19 12:20:44.026797', '2022-01-19 12:20:44.026797', NULL, 'express-shipping', '{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}', '{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"1000\"},{\"name\":\"taxRate\",\"value\":\"0\"},{\"name\":\"includesTax\",\"value\":\"auto\"}]}', 'manual-fulfillment', 2);

-- --------------------------------------------------------

--
-- Structure de la table `shipping_method_channels_channel`
--

CREATE TABLE `shipping_method_channels_channel` (
  `shippingMethodId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `shipping_method_channels_channel`
--

INSERT INTO `shipping_method_channels_channel` (`shippingMethodId`, `channelId`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `shipping_method_translation`
--

CREATE TABLE `shipping_method_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `shipping_method_translation`
--

INSERT INTO `shipping_method_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `description`, `id`, `baseId`) VALUES
('2022-01-19 12:20:43.992571', '2022-01-19 12:20:44.000000', 'en', 'Standard Shipping', '', 1, 1),
('2022-01-19 12:20:44.021644', '2022-01-19 12:20:44.000000', 'en', 'Express Shipping', '', 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `stock_movement`
--

CREATE TABLE `stock_movement` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `type` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `discriminator` varchar(255) NOT NULL,
  `productVariantId` int(11) DEFAULT NULL,
  `orderItemId` int(11) DEFAULT NULL,
  `orderLineId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `stock_movement`
--

INSERT INTO `stock_movement` (`createdAt`, `updatedAt`, `type`, `quantity`, `id`, `discriminator`, `productVariantId`, `orderItemId`, `orderLineId`) VALUES
('2022-01-19 12:20:44.383111', '2022-01-19 12:20:44.383111', 'ADJUSTMENT', 100, 1, 'StockAdjustment', 1, NULL, NULL),
('2022-01-19 12:20:44.401287', '2022-01-19 12:20:44.401287', 'ADJUSTMENT', 100, 2, 'StockAdjustment', 2, NULL, NULL),
('2022-01-19 12:20:44.416267', '2022-01-19 12:20:44.416267', 'ADJUSTMENT', 100, 3, 'StockAdjustment', 3, NULL, NULL),
('2022-01-19 12:20:44.429678', '2022-01-19 12:20:44.429678', 'ADJUSTMENT', 100, 4, 'StockAdjustment', 4, NULL, NULL),
('2022-01-19 12:20:44.482556', '2022-01-19 12:20:44.482556', 'ADJUSTMENT', 100, 5, 'StockAdjustment', 5, NULL, NULL),
('2022-01-19 12:20:44.495021', '2022-01-19 12:20:44.495021', 'ADJUSTMENT', 100, 6, 'StockAdjustment', 6, NULL, NULL),
('2022-01-19 12:20:44.553467', '2022-01-19 12:20:44.553467', 'ADJUSTMENT', 100, 7, 'StockAdjustment', 7, NULL, NULL),
('2022-01-19 12:20:44.607455', '2022-01-19 12:20:44.607455', 'ADJUSTMENT', 100, 8, 'StockAdjustment', 8, NULL, NULL),
('2022-01-19 12:20:44.680541', '2022-01-19 12:20:44.680541', 'ADJUSTMENT', 100, 9, 'StockAdjustment', 9, NULL, NULL),
('2022-01-19 12:20:44.697565', '2022-01-19 12:20:44.697565', 'ADJUSTMENT', 100, 10, 'StockAdjustment', 10, NULL, NULL),
('2022-01-19 12:20:44.764389', '2022-01-19 12:20:44.764389', 'ADJUSTMENT', 100, 11, 'StockAdjustment', 11, NULL, NULL),
('2022-01-19 12:20:44.779915', '2022-01-19 12:20:44.779915', 'ADJUSTMENT', 100, 12, 'StockAdjustment', 12, NULL, NULL),
('2022-01-19 12:20:44.793905', '2022-01-19 12:20:44.793905', 'ADJUSTMENT', 100, 13, 'StockAdjustment', 13, NULL, NULL),
('2022-01-19 12:20:44.915286', '2022-01-19 12:20:44.915286', 'ADJUSTMENT', 100, 14, 'StockAdjustment', 14, NULL, NULL),
('2022-01-19 12:20:44.929940', '2022-01-19 12:20:44.929940', 'ADJUSTMENT', 100, 15, 'StockAdjustment', 15, NULL, NULL),
('2022-01-19 12:20:44.945153', '2022-01-19 12:20:44.945153', 'ADJUSTMENT', 100, 16, 'StockAdjustment', 16, NULL, NULL),
('2022-01-19 12:20:44.961285', '2022-01-19 12:20:44.961285', 'ADJUSTMENT', 100, 17, 'StockAdjustment', 17, NULL, NULL),
('2022-01-19 12:20:45.067969', '2022-01-19 12:20:45.067969', 'ADJUSTMENT', 100, 18, 'StockAdjustment', 18, NULL, NULL),
('2022-01-19 12:20:45.084664', '2022-01-19 12:20:45.084664', 'ADJUSTMENT', 100, 19, 'StockAdjustment', 19, NULL, NULL),
('2022-01-19 12:20:45.101632', '2022-01-19 12:20:45.101632', 'ADJUSTMENT', 100, 20, 'StockAdjustment', 20, NULL, NULL),
('2022-01-19 12:20:45.118377', '2022-01-19 12:20:45.118377', 'ADJUSTMENT', 100, 21, 'StockAdjustment', 21, NULL, NULL),
('2022-01-19 12:20:45.137964', '2022-01-19 12:20:45.137964', 'ADJUSTMENT', 100, 22, 'StockAdjustment', 22, NULL, NULL),
('2022-01-19 12:20:45.173140', '2022-01-19 12:20:45.173140', 'ADJUSTMENT', 100, 23, 'StockAdjustment', 23, NULL, NULL),
('2022-01-19 12:20:45.202435', '2022-01-19 12:20:45.202435', 'ADJUSTMENT', 100, 24, 'StockAdjustment', 24, NULL, NULL),
('2022-01-19 12:20:45.228779', '2022-01-19 12:20:45.228779', 'ADJUSTMENT', 100, 25, 'StockAdjustment', 25, NULL, NULL),
('2022-01-19 12:20:45.274945', '2022-01-19 12:20:45.274945', 'ADJUSTMENT', 100, 26, 'StockAdjustment', 26, NULL, NULL),
('2022-01-19 12:20:45.319991', '2022-01-19 12:20:45.319991', 'ADJUSTMENT', 100, 27, 'StockAdjustment', 27, NULL, NULL),
('2022-01-19 12:20:45.356429', '2022-01-19 12:20:45.356429', 'ADJUSTMENT', 100, 28, 'StockAdjustment', 28, NULL, NULL),
('2022-01-19 12:20:45.391186', '2022-01-19 12:20:45.391186', 'ADJUSTMENT', 100, 29, 'StockAdjustment', 29, NULL, NULL),
('2022-01-19 12:20:45.432830', '2022-01-19 12:20:45.432830', 'ADJUSTMENT', 100, 30, 'StockAdjustment', 30, NULL, NULL),
('2022-01-19 12:20:45.473207', '2022-01-19 12:20:45.473207', 'ADJUSTMENT', 100, 31, 'StockAdjustment', 31, NULL, NULL),
('2022-01-19 12:20:45.549044', '2022-01-19 12:20:45.549044', 'ADJUSTMENT', 100, 32, 'StockAdjustment', 32, NULL, NULL),
('2022-01-19 12:20:45.580235', '2022-01-19 12:20:45.580235', 'ADJUSTMENT', 100, 33, 'StockAdjustment', 33, NULL, NULL),
('2022-01-19 12:20:45.629608', '2022-01-19 12:20:45.629608', 'ADJUSTMENT', 100, 34, 'StockAdjustment', 34, NULL, NULL),
('2022-01-19 12:20:45.682904', '2022-01-19 12:20:45.682904', 'ADJUSTMENT', 100, 35, 'StockAdjustment', 35, NULL, NULL),
('2022-01-19 12:20:45.722853', '2022-01-19 12:20:45.722853', 'ADJUSTMENT', 100, 36, 'StockAdjustment', 36, NULL, NULL),
('2022-01-19 12:20:45.774780', '2022-01-19 12:20:45.774780', 'ADJUSTMENT', 100, 37, 'StockAdjustment', 37, NULL, NULL),
('2022-01-19 12:20:45.806072', '2022-01-19 12:20:45.806072', 'ADJUSTMENT', 100, 38, 'StockAdjustment', 38, NULL, NULL),
('2022-01-19 12:20:45.834095', '2022-01-19 12:20:45.834095', 'ADJUSTMENT', 100, 39, 'StockAdjustment', 39, NULL, NULL),
('2022-01-19 12:20:45.884463', '2022-01-19 12:20:45.884463', 'ADJUSTMENT', 100, 40, 'StockAdjustment', 40, NULL, NULL),
('2022-01-19 12:20:45.929848', '2022-01-19 12:20:45.929848', 'ADJUSTMENT', 100, 41, 'StockAdjustment', 41, NULL, NULL),
('2022-01-19 12:20:45.962214', '2022-01-19 12:20:45.962214', 'ADJUSTMENT', 100, 42, 'StockAdjustment', 42, NULL, NULL),
('2022-01-19 12:20:46.080354', '2022-01-19 12:20:46.080354', 'ADJUSTMENT', 100, 43, 'StockAdjustment', 43, NULL, NULL),
('2022-01-19 12:20:46.092246', '2022-01-19 12:20:46.092246', 'ADJUSTMENT', 100, 44, 'StockAdjustment', 44, NULL, NULL),
('2022-01-19 12:20:46.105438', '2022-01-19 12:20:46.105438', 'ADJUSTMENT', 100, 45, 'StockAdjustment', 45, NULL, NULL),
('2022-01-19 12:20:46.116959', '2022-01-19 12:20:46.116959', 'ADJUSTMENT', 100, 46, 'StockAdjustment', 46, NULL, NULL),
('2022-01-19 12:20:46.186617', '2022-01-19 12:20:46.186617', 'ADJUSTMENT', 100, 47, 'StockAdjustment', 47, NULL, NULL),
('2022-01-19 12:20:46.201306', '2022-01-19 12:20:46.201306', 'ADJUSTMENT', 100, 48, 'StockAdjustment', 48, NULL, NULL),
('2022-01-19 12:20:46.213278', '2022-01-19 12:20:46.213278', 'ADJUSTMENT', 100, 49, 'StockAdjustment', 49, NULL, NULL),
('2022-01-19 12:20:46.225423', '2022-01-19 12:20:46.225423', 'ADJUSTMENT', 100, 50, 'StockAdjustment', 50, NULL, NULL),
('2022-01-19 12:20:46.291632', '2022-01-19 12:20:46.291632', 'ADJUSTMENT', 100, 51, 'StockAdjustment', 51, NULL, NULL),
('2022-01-19 12:20:46.305435', '2022-01-19 12:20:46.305435', 'ADJUSTMENT', 100, 52, 'StockAdjustment', 52, NULL, NULL),
('2022-01-19 12:20:46.317287', '2022-01-19 12:20:46.317287', 'ADJUSTMENT', 100, 53, 'StockAdjustment', 53, NULL, NULL),
('2022-01-19 12:20:46.329536', '2022-01-19 12:20:46.329536', 'ADJUSTMENT', 100, 54, 'StockAdjustment', 54, NULL, NULL),
('2022-01-19 12:20:46.394864', '2022-01-19 12:20:46.394864', 'ADJUSTMENT', 100, 55, 'StockAdjustment', 55, NULL, NULL),
('2022-01-19 12:20:46.408492', '2022-01-19 12:20:46.408492', 'ADJUSTMENT', 100, 56, 'StockAdjustment', 56, NULL, NULL),
('2022-01-19 12:20:46.420822', '2022-01-19 12:20:46.420822', 'ADJUSTMENT', 100, 57, 'StockAdjustment', 57, NULL, NULL),
('2022-01-19 12:20:46.433759', '2022-01-19 12:20:46.433759', 'ADJUSTMENT', 100, 58, 'StockAdjustment', 58, NULL, NULL),
('2022-01-19 12:20:46.493018', '2022-01-19 12:20:46.493018', 'ADJUSTMENT', 100, 59, 'StockAdjustment', 59, NULL, NULL),
('2022-01-19 12:20:46.509859', '2022-01-19 12:20:46.509859', 'ADJUSTMENT', 100, 60, 'StockAdjustment', 60, NULL, NULL),
('2022-01-19 12:20:46.524409', '2022-01-19 12:20:46.524409', 'ADJUSTMENT', 100, 61, 'StockAdjustment', 61, NULL, NULL),
('2022-01-19 12:20:46.541562', '2022-01-19 12:20:46.541562', 'ADJUSTMENT', 100, 62, 'StockAdjustment', 62, NULL, NULL),
('2022-01-19 12:20:46.626202', '2022-01-19 12:20:46.626202', 'ADJUSTMENT', 100, 63, 'StockAdjustment', 63, NULL, NULL),
('2022-01-19 12:20:46.643529', '2022-01-19 12:20:46.643529', 'ADJUSTMENT', 100, 64, 'StockAdjustment', 64, NULL, NULL),
('2022-01-19 12:20:46.659015', '2022-01-19 12:20:46.659015', 'ADJUSTMENT', 100, 65, 'StockAdjustment', 65, NULL, NULL),
('2022-01-19 12:20:46.674370', '2022-01-19 12:20:46.674370', 'ADJUSTMENT', 100, 66, 'StockAdjustment', 66, NULL, NULL),
('2022-01-19 12:20:46.753847', '2022-01-19 12:20:46.753847', 'ADJUSTMENT', 100, 67, 'StockAdjustment', 67, NULL, NULL),
('2022-01-19 12:20:46.800474', '2022-01-19 12:20:46.800474', 'ADJUSTMENT', 100, 68, 'StockAdjustment', 68, NULL, NULL),
('2022-01-19 12:20:46.832851', '2022-01-19 12:20:46.832851', 'ADJUSTMENT', 100, 69, 'StockAdjustment', 69, NULL, NULL),
('2022-01-19 12:20:46.860027', '2022-01-19 12:20:46.860027', 'ADJUSTMENT', 100, 70, 'StockAdjustment', 70, NULL, NULL),
('2022-01-19 12:20:46.904025', '2022-01-19 12:20:46.904025', 'ADJUSTMENT', 100, 71, 'StockAdjustment', 71, NULL, NULL),
('2022-01-19 12:20:46.934118', '2022-01-19 12:20:46.934118', 'ADJUSTMENT', 100, 72, 'StockAdjustment', 72, NULL, NULL),
('2022-01-19 12:20:46.962736', '2022-01-19 12:20:46.962736', 'ADJUSTMENT', 100, 73, 'StockAdjustment', 73, NULL, NULL),
('2022-01-19 12:20:47.007061', '2022-01-19 12:20:47.007061', 'ADJUSTMENT', 100, 74, 'StockAdjustment', 74, NULL, NULL),
('2022-01-19 12:20:47.055049', '2022-01-19 12:20:47.055049', 'ADJUSTMENT', 100, 75, 'StockAdjustment', 75, NULL, NULL),
('2022-01-19 12:20:47.086063', '2022-01-19 12:20:47.086063', 'ADJUSTMENT', 100, 76, 'StockAdjustment', 76, NULL, NULL),
('2022-01-19 12:20:47.112563', '2022-01-19 12:20:47.112563', 'ADJUSTMENT', 100, 77, 'StockAdjustment', 77, NULL, NULL),
('2022-01-19 12:20:47.141626', '2022-01-19 12:20:47.141626', 'ADJUSTMENT', 100, 78, 'StockAdjustment', 78, NULL, NULL),
('2022-01-19 12:20:47.178918', '2022-01-19 12:20:47.178918', 'ADJUSTMENT', 100, 79, 'StockAdjustment', 79, NULL, NULL),
('2022-01-19 12:20:47.207186', '2022-01-19 12:20:47.207186', 'ADJUSTMENT', 100, 80, 'StockAdjustment', 80, NULL, NULL),
('2022-01-19 12:20:47.248565', '2022-01-19 12:20:47.248565', 'ADJUSTMENT', 100, 81, 'StockAdjustment', 81, NULL, NULL),
('2022-01-19 12:20:47.280362', '2022-01-19 12:20:47.280362', 'ADJUSTMENT', 100, 82, 'StockAdjustment', 82, NULL, NULL),
('2022-01-19 12:20:47.317018', '2022-01-19 12:20:47.317018', 'ADJUSTMENT', 100, 83, 'StockAdjustment', 83, NULL, NULL),
('2022-01-19 12:20:47.354914', '2022-01-19 12:20:47.354914', 'ADJUSTMENT', 100, 84, 'StockAdjustment', 84, NULL, NULL),
('2022-01-19 12:20:47.385594', '2022-01-19 12:20:47.385594', 'ADJUSTMENT', 100, 85, 'StockAdjustment', 85, NULL, NULL),
('2022-01-19 12:20:47.448014', '2022-01-19 12:20:47.448014', 'ADJUSTMENT', 100, 86, 'StockAdjustment', 86, NULL, NULL),
('2022-01-19 12:20:47.470121', '2022-01-19 12:20:47.470121', 'ADJUSTMENT', 100, 87, 'StockAdjustment', 87, NULL, NULL),
('2022-01-19 12:20:47.484652', '2022-01-19 12:20:47.484652', 'ADJUSTMENT', 100, 88, 'StockAdjustment', 88, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `surcharge`
--

CREATE TABLE `surcharge` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `description` varchar(255) NOT NULL,
  `listPrice` int(11) NOT NULL,
  `listPriceIncludesTax` tinyint(4) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `taxLines` text NOT NULL,
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `orderModificationId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE `tag` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `value` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `tax_category`
--

CREATE TABLE `tax_category` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `isDefault` tinyint(4) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tax_category`
--

INSERT INTO `tax_category` (`createdAt`, `updatedAt`, `name`, `isDefault`, `id`) VALUES
('2022-01-19 12:20:43.804516', '2022-01-19 12:20:43.804516', 'Standard Tax', 0, 1),
('2022-01-19 12:20:43.872402', '2022-01-19 12:20:43.872402', 'Reduced Tax', 0, 2),
('2022-01-19 12:20:43.935414', '2022-01-19 12:20:43.935414', 'Zero Tax', 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `tax_rate`
--

CREATE TABLE `tax_rate` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `value` decimal(5,2) NOT NULL,
  `id` int(11) NOT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `zoneId` int(11) DEFAULT NULL,
  `customerGroupId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tax_rate`
--

INSERT INTO `tax_rate` (`createdAt`, `updatedAt`, `name`, `enabled`, `value`, `id`, `categoryId`, `zoneId`, `customerGroupId`) VALUES
('2022-01-19 12:20:43.818893', '2022-01-19 12:20:43.818893', 'Standard Tax Asia', 1, '20.00', 1, 1, 1, NULL),
('2022-01-19 12:20:43.831786', '2022-01-19 12:20:43.831786', 'Standard Tax Europe', 1, '20.00', 2, 1, 2, NULL),
('2022-01-19 12:20:43.840991', '2022-01-19 12:20:43.840991', 'Standard Tax Africa', 1, '20.00', 3, 1, 3, NULL),
('2022-01-19 12:20:43.851629', '2022-01-19 12:20:43.851629', 'Standard Tax Oceania', 1, '20.00', 4, 1, 4, NULL),
('2022-01-19 12:20:43.863300', '2022-01-19 12:20:43.863300', 'Standard Tax Americas', 1, '20.00', 5, 1, 5, NULL),
('2022-01-19 12:20:43.883735', '2022-01-19 12:20:43.883735', 'Reduced Tax Asia', 1, '10.00', 6, 2, 1, NULL),
('2022-01-19 12:20:43.896217', '2022-01-19 12:20:43.896217', 'Reduced Tax Europe', 1, '10.00', 7, 2, 2, NULL),
('2022-01-19 12:20:43.908683', '2022-01-19 12:20:43.908683', 'Reduced Tax Africa', 1, '10.00', 8, 2, 3, NULL),
('2022-01-19 12:20:43.919824', '2022-01-19 12:20:43.919824', 'Reduced Tax Oceania', 1, '10.00', 9, 2, 4, NULL),
('2022-01-19 12:20:43.928811', '2022-01-19 12:20:43.928811', 'Reduced Tax Americas', 1, '10.00', 10, 2, 5, NULL),
('2022-01-19 12:20:43.940903', '2022-01-19 12:20:43.940903', 'Zero Tax Asia', 1, '0.00', 11, 3, 1, NULL),
('2022-01-19 12:20:43.948752', '2022-01-19 12:20:43.948752', 'Zero Tax Europe', 1, '0.00', 12, 3, 2, NULL),
('2022-01-19 12:20:43.957162', '2022-01-19 12:20:43.957162', 'Zero Tax Africa', 1, '0.00', 13, 3, 3, NULL),
('2022-01-19 12:20:43.967696', '2022-01-19 12:20:43.967696', 'Zero Tax Oceania', 1, '0.00', 14, 3, 4, NULL),
('2022-01-19 12:20:43.983461', '2022-01-19 12:20:43.983461', 'Zero Tax Americas', 1, '0.00', 15, 3, 5, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `identifier` varchar(255) NOT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  `lastLogin` datetime DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`createdAt`, `updatedAt`, `deletedAt`, `identifier`, `verified`, `lastLogin`, `id`) VALUES
('2022-01-19 12:20:41.466598', '2022-01-19 12:24:31.000000', NULL, 'superadmin', 1, '2022-01-19 11:24:31', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_roles_role`
--

CREATE TABLE `user_roles_role` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user_roles_role`
--

INSERT INTO `user_roles_role` (`userId`, `roleId`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `zone`
--

CREATE TABLE `zone` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `zone`
--

INSERT INTO `zone` (`createdAt`, `updatedAt`, `name`, `id`) VALUES
('2022-01-19 12:20:41.552149', '2022-01-19 12:20:41.552149', 'Asia', 1),
('2022-01-19 12:20:41.573393', '2022-01-19 12:20:41.573393', 'Europe', 2),
('2022-01-19 12:20:41.601659', '2022-01-19 12:20:41.601659', 'Africa', 3),
('2022-01-19 12:20:41.618541', '2022-01-19 12:20:41.618541', 'Oceania', 4),
('2022-01-19 12:20:41.652019', '2022-01-19 12:20:41.652019', 'Americas', 5);

-- --------------------------------------------------------

--
-- Structure de la table `zone_members_country`
--

CREATE TABLE `zone_members_country` (
  `zoneId` int(11) NOT NULL,
  `countryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `zone_members_country`
--

INSERT INTO `zone_members_country` (`zoneId`, `countryId`) VALUES
(1, 1),
(1, 11),
(1, 15),
(1, 17),
(1, 18),
(1, 25),
(1, 33),
(1, 38),
(1, 45),
(1, 58),
(1, 82),
(1, 100),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 109),
(1, 112),
(1, 114),
(1, 115),
(1, 118),
(1, 119),
(1, 120),
(1, 121),
(1, 122),
(1, 124),
(1, 131),
(1, 135),
(1, 136),
(1, 148),
(1, 153),
(1, 156),
(1, 167),
(1, 168),
(1, 170),
(1, 175),
(1, 180),
(1, 195),
(1, 200),
(1, 210),
(1, 216),
(1, 217),
(1, 218),
(1, 220),
(1, 221),
(1, 227),
(1, 228),
(1, 233),
(1, 238),
(1, 241),
(1, 246),
(2, 2),
(2, 3),
(2, 6),
(2, 14),
(2, 20),
(2, 21),
(2, 28),
(2, 34),
(2, 55),
(2, 59),
(2, 60),
(2, 69),
(2, 73),
(2, 75),
(2, 76),
(2, 83),
(2, 85),
(2, 86),
(2, 92),
(2, 98),
(2, 101),
(2, 102),
(2, 107),
(2, 108),
(2, 110),
(2, 113),
(2, 123),
(2, 128),
(2, 129),
(2, 130),
(2, 132),
(2, 138),
(2, 146),
(2, 147),
(2, 149),
(2, 157),
(2, 166),
(2, 177),
(2, 178),
(2, 182),
(2, 183),
(2, 193),
(2, 197),
(2, 202),
(2, 203),
(2, 209),
(2, 213),
(2, 214),
(2, 215),
(2, 232),
(2, 234),
(3, 4),
(3, 7),
(3, 23),
(3, 29),
(3, 32),
(3, 35),
(3, 36),
(3, 37),
(3, 39),
(3, 42),
(3, 43),
(3, 49),
(3, 50),
(3, 51),
(3, 54),
(3, 61),
(3, 65),
(3, 67),
(3, 68),
(3, 70),
(3, 71),
(3, 79),
(3, 80),
(3, 81),
(3, 84),
(3, 93),
(3, 94),
(3, 116),
(3, 125),
(3, 126),
(3, 127),
(3, 133),
(3, 134),
(3, 137),
(3, 141),
(3, 142),
(3, 143),
(3, 151),
(3, 152),
(3, 154),
(3, 161),
(3, 162),
(3, 181),
(3, 184),
(3, 186),
(3, 194),
(3, 196),
(3, 198),
(3, 199),
(3, 205),
(3, 206),
(3, 208),
(3, 211),
(3, 219),
(3, 222),
(3, 226),
(3, 231),
(3, 245),
(3, 247),
(3, 248),
(4, 5),
(4, 13),
(4, 46),
(4, 47),
(4, 52),
(4, 74),
(4, 78),
(4, 90),
(4, 97),
(4, 117),
(4, 139),
(4, 145),
(4, 155),
(4, 158),
(4, 159),
(4, 163),
(4, 164),
(4, 165),
(4, 169),
(4, 172),
(4, 176),
(4, 192),
(4, 204),
(4, 223),
(4, 224),
(4, 230),
(4, 236),
(4, 239),
(4, 244),
(5, 8),
(5, 9),
(5, 10),
(5, 12),
(5, 16),
(5, 19),
(5, 22),
(5, 24),
(5, 26),
(5, 27),
(5, 30),
(5, 31),
(5, 40),
(5, 41),
(5, 44),
(5, 48),
(5, 53),
(5, 56),
(5, 57),
(5, 62),
(5, 63),
(5, 64),
(5, 66),
(5, 72),
(5, 77),
(5, 87),
(5, 88),
(5, 89),
(5, 91),
(5, 95),
(5, 96),
(5, 99),
(5, 111),
(5, 140),
(5, 144),
(5, 150),
(5, 160),
(5, 171),
(5, 173),
(5, 174),
(5, 179),
(5, 185),
(5, 187),
(5, 188),
(5, 189),
(5, 190),
(5, 191),
(5, 201),
(5, 207),
(5, 212),
(5, 225),
(5, 229),
(5, 235),
(5, 237),
(5, 240),
(5, 242),
(5, 243);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_dc34d382b493ade1f70e834c4d3` (`customerId`),
  ADD KEY `FK_d87215343c3a3a67e6a0b7f3ea9` (`countryId`);

--
-- Index pour la table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_154f5c538b1576ccc277b1ed63` (`emailAddress`),
  ADD UNIQUE KEY `REL_1966e18ce6a39a82b19204704d` (`userId`);

--
-- Index pour la table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `asset_channels_channel`
--
ALTER TABLE `asset_channels_channel`
  ADD PRIMARY KEY (`assetId`,`channelId`),
  ADD KEY `IDX_dc4e7435f9f5e9e6436bebd33b` (`assetId`),
  ADD KEY `IDX_16ca9151a5153f1169da5b7b7e` (`channelId`);

--
-- Index pour la table `asset_tags_tag`
--
ALTER TABLE `asset_tags_tag`
  ADD PRIMARY KEY (`assetId`,`tagId`),
  ADD KEY `IDX_9e412b00d4c6cee1a4b3d92071` (`assetId`),
  ADD KEY `IDX_fb5e800171ffbe9823f2cc727f` (`tagId`);

--
-- Index pour la table `authentication_method`
--
ALTER TABLE `authentication_method`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_a23445b2c942d8dfcae15b8de2` (`type`),
  ADD KEY `FK_00cbe87bc0d4e36758d61bd31d6` (`userId`);

--
-- Index pour la table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_06127ac6c6d913f4320759971d` (`code`),
  ADD UNIQUE KEY `IDX_842699fce4f3470a7d06d89de8` (`token`),
  ADD KEY `FK_afe9f917a1c82b9e9e69f7c6129` (`defaultTaxZoneId`),
  ADD KEY `FK_c9ca2f58d4517460435cbd8b4c9` (`defaultShippingZoneId`);

--
-- Index pour la table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_7256fef1bb42f1b38156b7449f5` (`featuredAssetId`),
  ADD KEY `FK_4257b61275144db89fa0f5dc059` (`parentId`);

--
-- Index pour la table `collection_asset`
--
ALTER TABLE `collection_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_51da53b26522dc0525762d2de8e` (`assetId`),
  ADD KEY `FK_1ed9e48dfbf74b5fcbb35d3d686` (`collectionId`);

--
-- Index pour la table `collection_channels_channel`
--
ALTER TABLE `collection_channels_channel`
  ADD PRIMARY KEY (`collectionId`,`channelId`),
  ADD KEY `IDX_cdbf33ffb5d451916125152008` (`collectionId`),
  ADD KEY `IDX_7216ab24077cf5cbece7857dbb` (`channelId`);

--
-- Index pour la table `collection_product_variants_product_variant`
--
ALTER TABLE `collection_product_variants_product_variant`
  ADD PRIMARY KEY (`collectionId`,`productVariantId`),
  ADD KEY `IDX_6faa7b72422d9c4679e2f186ad` (`collectionId`),
  ADD KEY `IDX_fb05887e2867365f236d7dd95e` (`productVariantId`);

--
-- Index pour la table `collection_translation`
--
ALTER TABLE `collection_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_e329f9036210d75caa1d8f2154a` (`baseId`);

--
-- Index pour la table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `country_translation`
--
ALTER TABLE `country_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_20958e5bdb4c996c18ca63d18e4` (`baseId`);

--
-- Index pour la table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_3f62b42ed23958b120c235f74d` (`userId`);

--
-- Index pour la table `customer_channels_channel`
--
ALTER TABLE `customer_channels_channel`
  ADD PRIMARY KEY (`customerId`,`channelId`),
  ADD KEY `IDX_a842c9fe8cd4c8ff31402d172d` (`customerId`),
  ADD KEY `IDX_dc9f69207a8867f83b0fd257e3` (`channelId`);

--
-- Index pour la table `customer_group`
--
ALTER TABLE `customer_group`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customer_groups_customer_group`
--
ALTER TABLE `customer_groups_customer_group`
  ADD PRIMARY KEY (`customerId`,`customerGroupId`),
  ADD KEY `IDX_b823a3c8bf3b78d3ed68736485` (`customerId`),
  ADD KEY `IDX_85feea3f0e5e82133605f78db0` (`customerGroupId`);

--
-- Index pour la table `facet`
--
ALTER TABLE `facet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_0c9a5d053fdf4ebb5f0490b40f` (`code`);

--
-- Index pour la table `facet_channels_channel`
--
ALTER TABLE `facet_channels_channel`
  ADD PRIMARY KEY (`facetId`,`channelId`),
  ADD KEY `IDX_ca796020c6d097e251e5d6d2b0` (`facetId`),
  ADD KEY `IDX_2a8ea404d05bf682516184db7d` (`channelId`);

--
-- Index pour la table `facet_translation`
--
ALTER TABLE `facet_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_eaea53f44bf9e97790d38a3d68f` (`baseId`);

--
-- Index pour la table `facet_value`
--
ALTER TABLE `facet_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_d101dc2265a7341be3d94968c5b` (`facetId`);

--
-- Index pour la table `facet_value_channels_channel`
--
ALTER TABLE `facet_value_channels_channel`
  ADD PRIMARY KEY (`facetValueId`,`channelId`),
  ADD KEY `IDX_ad690c1b05596d7f52e52ffeed` (`facetValueId`),
  ADD KEY `IDX_e1d54c0b9db3e2eb17faaf5919` (`channelId`);

--
-- Index pour la table `facet_value_translation`
--
ALTER TABLE `facet_value_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_3d6e45823b65de808a66cb1423b` (`baseId`);

--
-- Index pour la table `fulfillment`
--
ALTER TABLE `fulfillment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `history_entry`
--
ALTER TABLE `history_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_f3a761f6bcfabb474b11e1e51f` (`discriminator`),
  ADD KEY `FK_92f8c334ef06275f9586fd01832` (`administratorId`),
  ADD KEY `FK_43ac602f839847fdb91101f30ec` (`customerId`),
  ADD KEY `FK_3a05127e67435b4d2332ded7c9e` (`orderId`);

--
-- Index pour la table `job_record`
--
ALTER TABLE `job_record`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `job_record_buffer`
--
ALTER TABLE `job_record_buffer`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_124456e637cca7a415897dce659` (`customerId`);

--
-- Index pour la table `order_channels_channel`
--
ALTER TABLE `order_channels_channel`
  ADD PRIMARY KEY (`orderId`,`channelId`),
  ADD KEY `IDX_0d8e5c204480204a60e151e485` (`orderId`),
  ADD KEY `IDX_d0d16db872499e83b15999f8c7` (`channelId`);

--
-- Index pour la table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_69384323444206753f0cdeb64e0` (`lineId`),
  ADD KEY `FK_3e5161133689fba526377cbccd3` (`refundId`);

--
-- Index pour la table `order_item_fulfillments_fulfillment`
--
ALTER TABLE `order_item_fulfillments_fulfillment`
  ADD PRIMARY KEY (`orderItemId`,`fulfillmentId`),
  ADD KEY `IDX_a568a3d5aa7f237edab624960b` (`orderItemId`),
  ADD KEY `IDX_8132041a647c28eb27ecc1691f` (`fulfillmentId`);

--
-- Index pour la table `order_line`
--
ALTER TABLE `order_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_cbcd22193eda94668e84d33f185` (`productVariantId`),
  ADD KEY `FK_77be94ce9ec6504466179462275` (`taxCategoryId`),
  ADD KEY `FK_9f065453910ea77d4be8e92618f` (`featuredAssetId`),
  ADD KEY `FK_239cfca2a55b98b90b6bef2e44f` (`orderId`);

--
-- Index pour la table `order_modification`
--
ALTER TABLE `order_modification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_ad2991fa2933ed8b7f86a71633` (`paymentId`),
  ADD UNIQUE KEY `REL_cb66b63b6e97613013795eadbd` (`refundId`),
  ADD KEY `FK_1df5bc14a47ef24d2e681f45598` (`orderId`);

--
-- Index pour la table `order_modification_order_items_order_item`
--
ALTER TABLE `order_modification_order_items_order_item`
  ADD PRIMARY KEY (`orderModificationId`,`orderItemId`),
  ADD KEY `IDX_a48502a38aded69d087a8ec08a` (`orderModificationId`),
  ADD KEY `IDX_9d631d7bd3d44af50eca535d72` (`orderItemId`);

--
-- Index pour la table `order_promotions_promotion`
--
ALTER TABLE `order_promotions_promotion`
  ADD PRIMARY KEY (`orderId`,`promotionId`),
  ADD KEY `IDX_67be0e40122ab30a62a9817efe` (`orderId`),
  ADD KEY `IDX_2c26b988769c0e3b0120bdef31` (`promotionId`);

--
-- Index pour la table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_d09d285fe1645cd2f0db811e293` (`orderId`);

--
-- Index pour la table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payment_method_channels_channel`
--
ALTER TABLE `payment_method_channels_channel`
  ADD PRIMARY KEY (`paymentMethodId`,`channelId`),
  ADD KEY `IDX_5bcb569635ce5407eb3f264487` (`paymentMethodId`),
  ADD KEY `IDX_c00e36f667d35031087b382e61` (`channelId`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_91a19e6613534949a4ce6e76ff8` (`featuredAssetId`);

--
-- Index pour la table `product_asset`
--
ALTER TABLE `product_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_5888ac17b317b93378494a10620` (`assetId`),
  ADD KEY `FK_0d1294f5c22a56da7845ebab72c` (`productId`);

--
-- Index pour la table `product_channels_channel`
--
ALTER TABLE `product_channels_channel`
  ADD PRIMARY KEY (`productId`,`channelId`),
  ADD KEY `IDX_26d12be3b5fec6c4adb1d79284` (`productId`),
  ADD KEY `IDX_a51dfbd87c330c075c39832b6e` (`channelId`);

--
-- Index pour la table `product_facet_values_facet_value`
--
ALTER TABLE `product_facet_values_facet_value`
  ADD PRIMARY KEY (`productId`,`facetValueId`),
  ADD KEY `IDX_6a0558e650d75ae639ff38e413` (`productId`),
  ADD KEY `IDX_06e7d73673ee630e8ec50d0b29` (`facetValueId`);

--
-- Index pour la table `product_option`
--
ALTER TABLE `product_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_a6debf9198e2fbfa006aa10d710` (`groupId`);

--
-- Index pour la table `product_option_group`
--
ALTER TABLE `product_option_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_a6e91739227bf4d442f23c52c75` (`productId`);

--
-- Index pour la table `product_option_group_translation`
--
ALTER TABLE `product_option_group_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_93751abc1451972c02e033b766c` (`baseId`);

--
-- Index pour la table `product_option_translation`
--
ALTER TABLE `product_option_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_a79a443c1f7841f3851767faa6d` (`baseId`);

--
-- Index pour la table `product_translation`
--
ALTER TABLE `product_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_7dbc75cb4e8b002620c4dbfdac5` (`baseId`);

--
-- Index pour la table `product_variant`
--
ALTER TABLE `product_variant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_0e6f516053cf982b537836e21cf` (`featuredAssetId`),
  ADD KEY `FK_e38dca0d82fd64c7cf8aac8b8ef` (`taxCategoryId`),
  ADD KEY `FK_6e420052844edf3a5506d863ce6` (`productId`);

--
-- Index pour la table `product_variant_asset`
--
ALTER TABLE `product_variant_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_10b5a2e3dee0e30b1e26c32f5c7` (`assetId`),
  ADD KEY `FK_fa21412afac15a2304f3eb35feb` (`productVariantId`);

--
-- Index pour la table `product_variant_channels_channel`
--
ALTER TABLE `product_variant_channels_channel`
  ADD PRIMARY KEY (`productVariantId`,`channelId`),
  ADD KEY `IDX_beeb2b3cd800e589f2213ae99d` (`productVariantId`),
  ADD KEY `IDX_d194bff171b62357688a5d0f55` (`channelId`);

--
-- Index pour la table `product_variant_facet_values_facet_value`
--
ALTER TABLE `product_variant_facet_values_facet_value`
  ADD PRIMARY KEY (`productVariantId`,`facetValueId`),
  ADD KEY `IDX_69567bc225b6bbbd732d6c5455` (`productVariantId`),
  ADD KEY `IDX_0d641b761ed1dce4ef3cd33d55` (`facetValueId`);

--
-- Index pour la table `product_variant_options_product_option`
--
ALTER TABLE `product_variant_options_product_option`
  ADD PRIMARY KEY (`productVariantId`,`productOptionId`),
  ADD KEY `IDX_526f0131260eec308a3bd2b61b` (`productVariantId`),
  ADD KEY `IDX_e96a71affe63c97f7fa2f076da` (`productOptionId`);

--
-- Index pour la table `product_variant_price`
--
ALTER TABLE `product_variant_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_e6126cd268aea6e9b31d89af9ab` (`variantId`);

--
-- Index pour la table `product_variant_translation`
--
ALTER TABLE `product_variant_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_420f4d6fb75d38b9dca79bc43b4` (`baseId`);

--
-- Index pour la table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `promotion_channels_channel`
--
ALTER TABLE `promotion_channels_channel`
  ADD PRIMARY KEY (`promotionId`,`channelId`),
  ADD KEY `IDX_6d9e2c39ab12391aaa374bcdaa` (`promotionId`),
  ADD KEY `IDX_0eaaf0f4b6c69afde1e88ffb52` (`channelId`);

--
-- Index pour la table `refund`
--
ALTER TABLE `refund`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_1c6932a756108788a361e7d4404` (`paymentId`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role_channels_channel`
--
ALTER TABLE `role_channels_channel`
  ADD PRIMARY KEY (`roleId`,`channelId`),
  ADD KEY `IDX_bfd2a03e9988eda6a9d1176011` (`roleId`),
  ADD KEY `IDX_e09dfee62b158307404202b43a` (`channelId`);

--
-- Index pour la table `search_index_item`
--
ALTER TABLE `search_index_item`
  ADD PRIMARY KEY (`languageCode`,`productVariantId`,`channelId`);
ALTER TABLE `search_index_item` ADD FULLTEXT KEY `IDX_6fb55742e13e8082954d0436dc` (`productName`);
ALTER TABLE `search_index_item` ADD FULLTEXT KEY `IDX_d8791f444a8bf23fe4c1bc020c` (`productVariantName`);
ALTER TABLE `search_index_item` ADD FULLTEXT KEY `IDX_9a5a6a556f75c4ac7bfdd03410` (`description`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_232f8e85d7633bd6ddfad42169` (`token`),
  ADD KEY `IDX_e5598363000cab9d9116bd5835` (`type`),
  ADD KEY `FK_7a75399a4f4ffa48ee02e98c059` (`activeOrderId`),
  ADD KEY `FK_eb87ef1e234444728138302263b` (`activeChannelId`),
  ADD KEY `FK_3d2f174ef04fb312fdebd0ddc53` (`userId`);

--
-- Index pour la table `shipping_line`
--
ALTER TABLE `shipping_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_e2e7642e1e88167c1dfc827fdf3` (`shippingMethodId`),
  ADD KEY `FK_c9f34a440d490d1b66f6829b86c` (`orderId`);

--
-- Index pour la table `shipping_method`
--
ALTER TABLE `shipping_method`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `shipping_method_channels_channel`
--
ALTER TABLE `shipping_method_channels_channel`
  ADD PRIMARY KEY (`shippingMethodId`,`channelId`),
  ADD KEY `IDX_f0a17b94aa5a162f0d422920eb` (`shippingMethodId`),
  ADD KEY `IDX_f2b98dfb56685147bed509acc3` (`channelId`);

--
-- Index pour la table `shipping_method_translation`
--
ALTER TABLE `shipping_method_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_85ec26c71067ebc84adcd98d1a5` (`baseId`);

--
-- Index pour la table `stock_movement`
--
ALTER TABLE `stock_movement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_94e15d5f12d355d117390131ac` (`discriminator`),
  ADD KEY `FK_e65ba3882557cab4febb54809bb` (`productVariantId`),
  ADD KEY `FK_cbb0990e398bf7713aebdd38482` (`orderItemId`),
  ADD KEY `FK_d2c8d5fca981cc820131f81aa83` (`orderLineId`);

--
-- Index pour la table `surcharge`
--
ALTER TABLE `surcharge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_154eb685f9b629033bd266df7fa` (`orderId`),
  ADD KEY `FK_a49c5271c39cc8174a0535c8088` (`orderModificationId`);

--
-- Index pour la table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tax_category`
--
ALTER TABLE `tax_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_7ee3306d7638aa85ca90d672198` (`categoryId`),
  ADD KEY `FK_9872fc7de2f4e532fd3230d1915` (`zoneId`),
  ADD KEY `FK_8b5ab52fc8887c1a769b9276caf` (`customerGroupId`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_roles_role`
--
ALTER TABLE `user_roles_role`
  ADD PRIMARY KEY (`userId`,`roleId`),
  ADD KEY `IDX_5f9286e6c25594c6b88c108db7` (`userId`),
  ADD KEY `IDX_4be2f7adf862634f5f803d246b` (`roleId`);

--
-- Index pour la table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `zone_members_country`
--
ALTER TABLE `zone_members_country`
  ADD PRIMARY KEY (`zoneId`,`countryId`),
  ADD KEY `IDX_7350d77b6474313fbbaf4b094c` (`zoneId`),
  ADD KEY `IDX_7baeecaf955e54bec73f998b0d` (`countryId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pour la table `authentication_method`
--
ALTER TABLE `authentication_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `channel`
--
ALTER TABLE `channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `collection`
--
ALTER TABLE `collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `collection_asset`
--
ALTER TABLE `collection_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `collection_translation`
--
ALTER TABLE `collection_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT pour la table `country_translation`
--
ALTER TABLE `country_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `customer_group`
--
ALTER TABLE `customer_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `facet`
--
ALTER TABLE `facet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `facet_translation`
--
ALTER TABLE `facet_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `facet_value`
--
ALTER TABLE `facet_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `facet_value_translation`
--
ALTER TABLE `facet_value_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `fulfillment`
--
ALTER TABLE `fulfillment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `history_entry`
--
ALTER TABLE `history_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `job_record`
--
ALTER TABLE `job_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `job_record_buffer`
--
ALTER TABLE `job_record_buffer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `order_line`
--
ALTER TABLE `order_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `order_modification`
--
ALTER TABLE `order_modification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pour la table `product_asset`
--
ALTER TABLE `product_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pour la table `product_option`
--
ALTER TABLE `product_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `product_option_group`
--
ALTER TABLE `product_option_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `product_option_group_translation`
--
ALTER TABLE `product_option_group_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `product_option_translation`
--
ALTER TABLE `product_option_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `product_translation`
--
ALTER TABLE `product_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pour la table `product_variant`
--
ALTER TABLE `product_variant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT pour la table `product_variant_asset`
--
ALTER TABLE `product_variant_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product_variant_price`
--
ALTER TABLE `product_variant_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT pour la table `product_variant_translation`
--
ALTER TABLE `product_variant_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT pour la table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `refund`
--
ALTER TABLE `refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `shipping_line`
--
ALTER TABLE `shipping_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `shipping_method`
--
ALTER TABLE `shipping_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `shipping_method_translation`
--
ALTER TABLE `shipping_method_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `stock_movement`
--
ALTER TABLE `stock_movement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT pour la table `surcharge`
--
ALTER TABLE `surcharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tax_category`
--
ALTER TABLE `tax_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tax_rate`
--
ALTER TABLE `tax_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `zone`
--
ALTER TABLE `zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_d87215343c3a3a67e6a0b7f3ea9` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_dc34d382b493ade1f70e834c4d3` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `administrator`
--
ALTER TABLE `administrator`
  ADD CONSTRAINT `FK_1966e18ce6a39a82b19204704d7` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `asset_channels_channel`
--
ALTER TABLE `asset_channels_channel`
  ADD CONSTRAINT `FK_16ca9151a5153f1169da5b7b7e3` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_dc4e7435f9f5e9e6436bebd33bb` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `asset_tags_tag`
--
ALTER TABLE `asset_tags_tag`
  ADD CONSTRAINT `FK_9e412b00d4c6cee1a4b3d920716` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_fb5e800171ffbe9823f2cc727fd` FOREIGN KEY (`tagId`) REFERENCES `tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `authentication_method`
--
ALTER TABLE `authentication_method`
  ADD CONSTRAINT `FK_00cbe87bc0d4e36758d61bd31d6` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `channel`
--
ALTER TABLE `channel`
  ADD CONSTRAINT `FK_afe9f917a1c82b9e9e69f7c6129` FOREIGN KEY (`defaultTaxZoneId`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_c9ca2f58d4517460435cbd8b4c9` FOREIGN KEY (`defaultShippingZoneId`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `collection`
--
ALTER TABLE `collection`
  ADD CONSTRAINT `FK_4257b61275144db89fa0f5dc059` FOREIGN KEY (`parentId`) REFERENCES `collection` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_7256fef1bb42f1b38156b7449f5` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Contraintes pour la table `collection_asset`
--
ALTER TABLE `collection_asset`
  ADD CONSTRAINT `FK_1ed9e48dfbf74b5fcbb35d3d686` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_51da53b26522dc0525762d2de8e` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `collection_channels_channel`
--
ALTER TABLE `collection_channels_channel`
  ADD CONSTRAINT `FK_7216ab24077cf5cbece7857dbbd` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_cdbf33ffb5d4519161251520083` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `collection_product_variants_product_variant`
--
ALTER TABLE `collection_product_variants_product_variant`
  ADD CONSTRAINT `FK_6faa7b72422d9c4679e2f186ad1` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_fb05887e2867365f236d7dd95ee` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `collection_translation`
--
ALTER TABLE `collection_translation`
  ADD CONSTRAINT `FK_e329f9036210d75caa1d8f2154a` FOREIGN KEY (`baseId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `country_translation`
--
ALTER TABLE `country_translation`
  ADD CONSTRAINT `FK_20958e5bdb4c996c18ca63d18e4` FOREIGN KEY (`baseId`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_3f62b42ed23958b120c235f74df` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `customer_channels_channel`
--
ALTER TABLE `customer_channels_channel`
  ADD CONSTRAINT `FK_a842c9fe8cd4c8ff31402d172d7` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_dc9f69207a8867f83b0fd257e30` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `customer_groups_customer_group`
--
ALTER TABLE `customer_groups_customer_group`
  ADD CONSTRAINT `FK_85feea3f0e5e82133605f78db02` FOREIGN KEY (`customerGroupId`) REFERENCES `customer_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_b823a3c8bf3b78d3ed68736485c` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `facet_channels_channel`
--
ALTER TABLE `facet_channels_channel`
  ADD CONSTRAINT `FK_2a8ea404d05bf682516184db7d3` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ca796020c6d097e251e5d6d2b02` FOREIGN KEY (`facetId`) REFERENCES `facet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `facet_translation`
--
ALTER TABLE `facet_translation`
  ADD CONSTRAINT `FK_eaea53f44bf9e97790d38a3d68f` FOREIGN KEY (`baseId`) REFERENCES `facet` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `facet_value`
--
ALTER TABLE `facet_value`
  ADD CONSTRAINT `FK_d101dc2265a7341be3d94968c5b` FOREIGN KEY (`facetId`) REFERENCES `facet` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `facet_value_channels_channel`
--
ALTER TABLE `facet_value_channels_channel`
  ADD CONSTRAINT `FK_ad690c1b05596d7f52e52ffeedd` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_e1d54c0b9db3e2eb17faaf5919c` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `facet_value_translation`
--
ALTER TABLE `facet_value_translation`
  ADD CONSTRAINT `FK_3d6e45823b65de808a66cb1423b` FOREIGN KEY (`baseId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `history_entry`
--
ALTER TABLE `history_entry`
  ADD CONSTRAINT `FK_3a05127e67435b4d2332ded7c9e` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_43ac602f839847fdb91101f30ec` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_92f8c334ef06275f9586fd01832` FOREIGN KEY (`administratorId`) REFERENCES `administrator` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_124456e637cca7a415897dce659` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `order_channels_channel`
--
ALTER TABLE `order_channels_channel`
  ADD CONSTRAINT `FK_0d8e5c204480204a60e151e4853` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_d0d16db872499e83b15999f8c7a` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `FK_3e5161133689fba526377cbccd3` FOREIGN KEY (`refundId`) REFERENCES `refund` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_69384323444206753f0cdeb64e0` FOREIGN KEY (`lineId`) REFERENCES `order_line` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `order_item_fulfillments_fulfillment`
--
ALTER TABLE `order_item_fulfillments_fulfillment`
  ADD CONSTRAINT `FK_8132041a647c28eb27ecc1691fa` FOREIGN KEY (`fulfillmentId`) REFERENCES `fulfillment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_a568a3d5aa7f237edab624960b9` FOREIGN KEY (`orderItemId`) REFERENCES `order_item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `order_line`
--
ALTER TABLE `order_line`
  ADD CONSTRAINT `FK_239cfca2a55b98b90b6bef2e44f` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_77be94ce9ec6504466179462275` FOREIGN KEY (`taxCategoryId`) REFERENCES `tax_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_9f065453910ea77d4be8e92618f` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_cbcd22193eda94668e84d33f185` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `order_modification`
--
ALTER TABLE `order_modification`
  ADD CONSTRAINT `FK_1df5bc14a47ef24d2e681f45598` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ad2991fa2933ed8b7f86a716338` FOREIGN KEY (`paymentId`) REFERENCES `payment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_cb66b63b6e97613013795eadbd5` FOREIGN KEY (`refundId`) REFERENCES `refund` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `order_modification_order_items_order_item`
--
ALTER TABLE `order_modification_order_items_order_item`
  ADD CONSTRAINT `FK_9d631d7bd3d44af50eca535d728` FOREIGN KEY (`orderItemId`) REFERENCES `order_item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_a48502a38aded69d087a8ec08ad` FOREIGN KEY (`orderModificationId`) REFERENCES `order_modification` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `order_promotions_promotion`
--
ALTER TABLE `order_promotions_promotion`
  ADD CONSTRAINT `FK_2c26b988769c0e3b0120bdef31b` FOREIGN KEY (`promotionId`) REFERENCES `promotion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_67be0e40122ab30a62a9817efe0` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK_d09d285fe1645cd2f0db811e293` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `payment_method_channels_channel`
--
ALTER TABLE `payment_method_channels_channel`
  ADD CONSTRAINT `FK_5bcb569635ce5407eb3f264487d` FOREIGN KEY (`paymentMethodId`) REFERENCES `payment_method` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_c00e36f667d35031087b382e61b` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_91a19e6613534949a4ce6e76ff8` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Contraintes pour la table `product_asset`
--
ALTER TABLE `product_asset`
  ADD CONSTRAINT `FK_0d1294f5c22a56da7845ebab72c` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_5888ac17b317b93378494a10620` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `product_channels_channel`
--
ALTER TABLE `product_channels_channel`
  ADD CONSTRAINT `FK_26d12be3b5fec6c4adb1d792844` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_a51dfbd87c330c075c39832b6e7` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `product_facet_values_facet_value`
--
ALTER TABLE `product_facet_values_facet_value`
  ADD CONSTRAINT `FK_06e7d73673ee630e8ec50d0b29f` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_6a0558e650d75ae639ff38e413a` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `product_option`
--
ALTER TABLE `product_option`
  ADD CONSTRAINT `FK_a6debf9198e2fbfa006aa10d710` FOREIGN KEY (`groupId`) REFERENCES `product_option_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `product_option_group`
--
ALTER TABLE `product_option_group`
  ADD CONSTRAINT `FK_a6e91739227bf4d442f23c52c75` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `product_option_group_translation`
--
ALTER TABLE `product_option_group_translation`
  ADD CONSTRAINT `FK_93751abc1451972c02e033b766c` FOREIGN KEY (`baseId`) REFERENCES `product_option_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `product_option_translation`
--
ALTER TABLE `product_option_translation`
  ADD CONSTRAINT `FK_a79a443c1f7841f3851767faa6d` FOREIGN KEY (`baseId`) REFERENCES `product_option` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `product_translation`
--
ALTER TABLE `product_translation`
  ADD CONSTRAINT `FK_7dbc75cb4e8b002620c4dbfdac5` FOREIGN KEY (`baseId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `product_variant`
--
ALTER TABLE `product_variant`
  ADD CONSTRAINT `FK_0e6f516053cf982b537836e21cf` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_6e420052844edf3a5506d863ce6` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_e38dca0d82fd64c7cf8aac8b8ef` FOREIGN KEY (`taxCategoryId`) REFERENCES `tax_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `product_variant_asset`
--
ALTER TABLE `product_variant_asset`
  ADD CONSTRAINT `FK_10b5a2e3dee0e30b1e26c32f5c7` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_fa21412afac15a2304f3eb35feb` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `product_variant_channels_channel`
--
ALTER TABLE `product_variant_channels_channel`
  ADD CONSTRAINT `FK_beeb2b3cd800e589f2213ae99d6` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_d194bff171b62357688a5d0f559` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `product_variant_facet_values_facet_value`
--
ALTER TABLE `product_variant_facet_values_facet_value`
  ADD CONSTRAINT `FK_0d641b761ed1dce4ef3cd33d559` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_69567bc225b6bbbd732d6c5455b` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `product_variant_options_product_option`
--
ALTER TABLE `product_variant_options_product_option`
  ADD CONSTRAINT `FK_526f0131260eec308a3bd2b61b6` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_e96a71affe63c97f7fa2f076dac` FOREIGN KEY (`productOptionId`) REFERENCES `product_option` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `product_variant_price`
--
ALTER TABLE `product_variant_price`
  ADD CONSTRAINT `FK_e6126cd268aea6e9b31d89af9ab` FOREIGN KEY (`variantId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `product_variant_translation`
--
ALTER TABLE `product_variant_translation`
  ADD CONSTRAINT `FK_420f4d6fb75d38b9dca79bc43b4` FOREIGN KEY (`baseId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `promotion_channels_channel`
--
ALTER TABLE `promotion_channels_channel`
  ADD CONSTRAINT `FK_0eaaf0f4b6c69afde1e88ffb52d` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_6d9e2c39ab12391aaa374bcdaa4` FOREIGN KEY (`promotionId`) REFERENCES `promotion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `refund`
--
ALTER TABLE `refund`
  ADD CONSTRAINT `FK_1c6932a756108788a361e7d4404` FOREIGN KEY (`paymentId`) REFERENCES `payment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `role_channels_channel`
--
ALTER TABLE `role_channels_channel`
  ADD CONSTRAINT `FK_bfd2a03e9988eda6a9d11760119` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_e09dfee62b158307404202b43a5` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `FK_3d2f174ef04fb312fdebd0ddc53` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_7a75399a4f4ffa48ee02e98c059` FOREIGN KEY (`activeOrderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_eb87ef1e234444728138302263b` FOREIGN KEY (`activeChannelId`) REFERENCES `channel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `shipping_line`
--
ALTER TABLE `shipping_line`
  ADD CONSTRAINT `FK_c9f34a440d490d1b66f6829b86c` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_e2e7642e1e88167c1dfc827fdf3` FOREIGN KEY (`shippingMethodId`) REFERENCES `shipping_method` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `shipping_method_channels_channel`
--
ALTER TABLE `shipping_method_channels_channel`
  ADD CONSTRAINT `FK_f0a17b94aa5a162f0d422920eb2` FOREIGN KEY (`shippingMethodId`) REFERENCES `shipping_method` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_f2b98dfb56685147bed509acc3d` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `shipping_method_translation`
--
ALTER TABLE `shipping_method_translation`
  ADD CONSTRAINT `FK_85ec26c71067ebc84adcd98d1a5` FOREIGN KEY (`baseId`) REFERENCES `shipping_method` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `stock_movement`
--
ALTER TABLE `stock_movement`
  ADD CONSTRAINT `FK_cbb0990e398bf7713aebdd38482` FOREIGN KEY (`orderItemId`) REFERENCES `order_item` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_d2c8d5fca981cc820131f81aa83` FOREIGN KEY (`orderLineId`) REFERENCES `order_line` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_e65ba3882557cab4febb54809bb` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `surcharge`
--
ALTER TABLE `surcharge`
  ADD CONSTRAINT `FK_154eb685f9b629033bd266df7fa` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_a49c5271c39cc8174a0535c8088` FOREIGN KEY (`orderModificationId`) REFERENCES `order_modification` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD CONSTRAINT `FK_7ee3306d7638aa85ca90d672198` FOREIGN KEY (`categoryId`) REFERENCES `tax_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_8b5ab52fc8887c1a769b9276caf` FOREIGN KEY (`customerGroupId`) REFERENCES `customer_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_9872fc7de2f4e532fd3230d1915` FOREIGN KEY (`zoneId`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `user_roles_role`
--
ALTER TABLE `user_roles_role`
  ADD CONSTRAINT `FK_4be2f7adf862634f5f803d246b8` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_5f9286e6c25594c6b88c108db77` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `zone_members_country`
--
ALTER TABLE `zone_members_country`
  ADD CONSTRAINT `FK_7350d77b6474313fbbaf4b094c1` FOREIGN KEY (`zoneId`) REFERENCES `zone` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_7baeecaf955e54bec73f998b0d5` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
