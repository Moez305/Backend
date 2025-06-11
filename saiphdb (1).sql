-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2025 at 01:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saiphdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ligne`
--

CREATE TABLE `ligne` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `zone_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ligne`
--

INSERT INTO `ligne` (`id`, `nom`, `zone_id`) VALUES
(44587, 'CP8-1', '9968'),
(44588, 'CP8-2', '9968'),
(445868, 'DPH 2', '9968'),
(446971, 'DPH', '9968'),
(449632, 'MAN', '9968'),
(449635, 'DPP', '9968'),
(449638, 'CAM', '9968'),
(449639, 'CP8-1', 'Z001');

-- --------------------------------------------------------

--
-- Table structure for table `planification`
--

CREATE TABLE `planification` (
  `id` int(11) NOT NULL,
  `produit_code` varchar(20) DEFAULT NULL,
  `ligne_id` int(11) DEFAULT NULL,
  `date_planif` date DEFAULT NULL,
  `ordre` int(11) DEFAULT NULL,
  `quantite_planifiee` int(11) DEFAULT NULL,
  `statut` enum('en cours','terminé','annulé') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `planification`
--

INSERT INTO `planification` (`id`, `produit_code`, `ligne_id`, `date_planif`, `ordre`, `quantite_planifiee`, `statut`) VALUES
(2, 'E11001', 44587, '2025-05-21', 1, 2000, 'en cours'),
(9, 'E11115', 44587, '2025-06-01', 1, 1000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

CREATE TABLE `produit` (
  `code` varchar(20) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `classe_therapeutique` varchar(100) DEFAULT NULL,
  `image_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`code`, `designation`, `classe_therapeutique`, `image_url`) VALUES
('E11001', 'ADOL 1000 MG B/8 CPS', 'Antalgique', NULL),
('E11002', 'ADOL 500 MG B/15 CPS', 'Antalgique', NULL),
('E11003', 'ALBUTOL 2 MG B/30 CPS', 'Pneumologie', NULL),
('E11004', 'ANGIOTEC 20 MG B/30 CPS', 'Cardiologie', NULL),
('E11005', 'ANGIOTEC 5 MG B/30 CPS', 'Cardiologie', NULL),
('E11006', 'ANGIOZIDE 20/12,5 MG B/30 CPS', 'Cardiologie', NULL),
('E11008', 'ARADEUX 150 MG B/90 CPS', 'Cardiologie', NULL),
('E11009', 'ARADEUX 150 MG B/30 CPS', 'Cardiologie', NULL),
('E11010', 'ARADEUX 300 MG B/30 CPS', 'Cardiologie', NULL),
('E11011', 'ARADEUX 300 MG B/90 CPS', 'Cardiologie', NULL),
('E11013', 'BIOGYL B/10 CPS', 'Infectiologie', NULL),
('E11014', 'BIOGYL B/20 CPS', 'Infectiologie', NULL),
('E11015', 'BRAVAL 10 MG B/30 CPS', 'Neurologie psychiatrie', NULL),
('E11016', 'BRAVAL 5 MG B/30 CPS', 'Neurologie psychiatrie', NULL),
('E11017', 'CAPOCARD 25 MG B/30 CPS', 'Cardiologie', NULL),
('E11018', 'CAPOCARD 50 MG B/30 CPS', 'Cardiologie', NULL),
('E11019', 'CINCOR 10 MG B/30 CPS', 'Cardiologie', NULL),
('E11021', 'CINCOR 2,5 MG B/30 CPS', 'Cardiologie', NULL),
('E11022', 'CLOPIX 75 MG B/30 CPS', 'Cardiologie', NULL),
('E11023', 'CLOPIX 75 MG B/90 CPS', 'Cardiologie', NULL),
('E11025', 'COARADEUX 150/12.5MG B/30 CPS', 'Cardiologie', NULL),
('E11027', 'COARADEUX 300/25MG B/30 CPS', 'Cardiologie', NULL),
('E11029', 'COARADEUX 300/25MG B/30 CPS', 'Cardiologie', NULL),
('E11030', 'COTRIMOX 480 MG B/20 CPS', NULL, NULL),
('E11034', 'DILACOR 2 MG B/90 CPS', 'Cardiologie', NULL),
('E11035', 'DILACOR 2 MG B/30 CPS', 'Cardiologie', NULL),
('E11036', 'DILACOR 4 MG B/30 CPS', 'Cardiologie', NULL),
('E11037', 'DILACOR 4 MG B/90 CPS', 'Cardiologie', NULL),
('E11038', 'DOPANORE 250 MG B/30 CPS', NULL, NULL),
('E11040', 'GLITRA 1 MG B/30 CPS', 'Métabolisme', NULL),
('E11042', 'GLITRA 2 MG B/30 CPS', 'Métabolisme', NULL),
('E11043', 'GLITRA 2 MG B/90 CPS', 'Métabolisme', NULL),
('E11044', 'GLITRA 3 MG B/30 CPS', 'Métabolisme', NULL),
('E11045', 'GLITRA 3 MG B/90 CPS', 'Métabolisme', NULL),
('E11046', 'GLITRA 4 MG B/30 CPS', 'Métabolisme', NULL),
('E11047', 'GLITRA 4 MG B/90 CPS', 'Métabolisme', NULL),
('E11048', 'HUMOXAT 20 MG B/28 CPS', 'Neurologie psychiatrie', NULL),
('E11049', 'LEVOFOR 500 MG B/10 CPS', 'Infectiologie', NULL),
('E11050', 'LEVOFOR 500 MG B/5 CPS', 'Infectiologie', NULL),
('E11051', 'METFORAL 850 MG B/30 CPS', 'Métabolisme', NULL),
('E11052', 'NETRAL 50 MG B/30 CPS', 'Neurologie psychiatrie', NULL),
('E11053', 'NORACIN 400 MG B/14 CPS', NULL, NULL),
('E11055', 'OGYL 750MU/125MG B/20 CPS', 'Infectiologie', NULL),
('E11056', 'OXIMAL 15 MG B/14 CPS', 'Antiinflammatoires', NULL),
('E11057', 'OXIMAL 15 MG B/7 CPS', 'Antiinflammatoires', NULL),
('E11058', 'PIZOFEN 0.5 MG B/30 CPS', 'Neurologie psychiatrie', NULL),
('E11059', 'POLAR 10 MG B/30 CPS', 'Neurologie psychiatrie', NULL),
('E11061', 'POLAR 5 MG B/30 CPS', 'Neurologie psychiatrie', NULL),
('E11063', 'RAXIDONE 2 MG B/30 CPS', 'Neurologie psychiatrie', NULL),
('E11064', 'RAXIDONE 2 MG B/60 CPS', 'Neurologie psychiatrie', NULL),
('E11065', 'RAZON 20 MG B/30 CPS', 'Gastro', NULL),
('E11066', 'RAZON 20 MG B/10 CPS', 'Gastro', NULL),
('E11067', 'RAZON 20 MG B/20 CPS', 'Gastro', NULL),
('E11068', 'RAZON 40 MG B/28 CPS', 'Gastro', NULL),
('E11069', 'RAZON 40 MG B/14 CPS', 'Gastro', NULL),
('E11070', 'RAZON 40 MG B/7 CPS', 'Gastro', NULL),
('E11071', 'RHINOSTOP B/20 CPS', 'Antalgique', NULL),
('E11072', 'TENSIOL 200 MG B/30 CPS', 'Cardiologie', NULL),
('E11073', 'TENSIOL 400 MG B/30 CPS', 'Cardiologie', NULL),
('E11074', 'TORVA 10 MG B/30 CPS', 'Métabolisme', NULL),
('E11075', 'TORVA 10 MG B/90 CPS', 'Métabolisme', NULL),
('E11076', 'TORVA 20 MG B/30 CPS', 'Métabolisme', NULL),
('E11077', 'TORVA 20 MG B/90 CPS', 'Métabolisme', NULL),
('E11078', 'TORVA 40 MG B/30 CPS', 'Métabolisme', NULL),
('E11079', 'TORVA 40 MG B/90 CPS', 'Métabolisme', NULL),
('E11080', 'ULDINE 40 MG B/10 CPS', 'Gastro', NULL),
('E11081', 'ULDINE 40 MG B/30 CPS', 'Gastro', NULL),
('E11082', 'ZECLAR 250 MG B/10 CPS', 'Infectiologie', NULL),
('E11083', 'ZECLAR 250 MG B/14 CPS', 'Infectiologie', NULL),
('E11084', 'ZECLAR 500 MG B/14 CPS', 'Infectiologie', NULL),
('E11088', 'CELOXX 200 MG B/10 GEL', 'Antiinflammatoires', NULL),
('E11089', 'CELOXX 200 MG B/20 GEL', 'Antiinflammatoires', NULL),
('E11090', 'CELOXX 200 MG B/30 GEL', 'Antiinflammatoires', NULL),
('E11094', 'COARADEUX 300/12.5MG B/30 CPS', 'Cardiologie', NULL),
('E11097', 'NETRAL 100 MG B/30 CPS', 'Neurologie psychiatrie', NULL),
('E11103', 'CINCOR 5 MG B/30 CPS', 'Cardiologie', NULL),
('E11106', 'HUMOXAT 20 MG B/30 CPS', 'Neurologie psychiatrie', NULL),
('E11107', 'DIABITOS 850 MG B/30 CPS', 'Métabolisme', NULL),
('E11108', 'DIABITOS 1000 MG B/30 CPS', 'Métabolisme', NULL),
('E11109', 'COARADEUX 150/12.5MG B/90 CPS', 'Cardiologie', NULL),
('E11110', 'NORACTONE 50 MG B/30 CPS', 'Cardiologie', NULL),
('E11111', 'ROZUVIE 5 MG B/30 CPS', 'Cardiovasculaire', NULL),
('E11112', 'ROZUVIE 10 MG B/30 CPS', 'Cardiovasculaire', NULL),
('E11113', 'ROZUVIE 20 MG B/30 CPS', 'Cardiovasculaire', NULL),
('E11114', 'ACARLYSE 50MG B/90 CPS', 'Métabolisme', NULL),
('E11115', 'ACARLYSE 100 MG B/90 CPS', 'Métabolisme', NULL),
('E11116', 'COLOCALM 80MG B/20 CPS', NULL, NULL),
('E11117', 'COLOCALM 160MG B/15 CPS', NULL, NULL),
('E11118', 'DYSFEN 100MG B/20', NULL, NULL),
('E11119', 'TADAPLUS 5MG B/30 CPS', 'Néphrologie', NULL),
('E11120', 'TADAPLUS 10MG B/4 CPS', 'Néphrologie', NULL),
('E11121', 'TADAPLUS 10MG B/8 CPS', 'Néphrologie', NULL),
('E11122', 'TADAPLUS 20MG B/4 CPS', 'Néphrologie', NULL),
('E11123', 'TADAPLUS 20MG B/8 CPS', 'Néphrologie', NULL),
('E11124', 'CTOLERGE 10MG B/20 CP', 'Allergologie', NULL),
('E11125', 'STAGID 700MG B/30 CPS', 'Métabolisme', NULL),
('E11129', 'CIPROSAIPH 500 MG B/14 CPS ECH', 'Infectiologie', NULL),
('E11147', 'DIABITOS 850 MG B/60 CPS', 'Métabolisme', NULL),
('E11148', 'DIABITOS 850 MG B/90 CPS', 'Métabolisme', NULL),
('E11149', 'RAXIDONE 4 MG B/30 CPS', 'Neurologie psychiatrie', NULL),
('E11150', 'TORVA 80 MG B/30 CPS', 'Métabolisme', NULL),
('E11151', 'TADAPLUS SAIPH 5MG B/30 CPS', 'Néphrologie', NULL),
('E11152', 'TADAPLUS SAIPH 10MG B/4 CPS', 'Néphrologie', NULL),
('E11153', 'TADAPLUS SAIPH 10MG B/8 CPS', 'Néphrologie', NULL),
('E11154', 'TADAPLUS SAIPH 20MG B/4 CPS', 'Néphrologie', NULL),
('E11155', 'TADAPLUS SAIPH 20MG B/8 CPS', 'Néphrologie', NULL),
('E11164', 'GALVINE 50MG B/28CPS', NULL, NULL),
('E11165', 'BIGALVINE 50/1000 B/60 CPS', 'Métabolisme', NULL),
('E11166', 'BIGALVINE 50/850 B/60 CPS', 'Métabolisme', NULL),
('E11167', 'BIGALVINE 50/500 B/60 CPS', 'Métabolisme', NULL),
('E11168', 'VALUE PLUS 160/5MG B/30 CPS', NULL, NULL),
('E11169', 'VALUE PLUS 80/5MG B/30 CPS', NULL, NULL),
('E11170', 'VALUE PLUS 160/10MG B/30 CPS', NULL, NULL),
('E11172', 'ARADEUX PLUS 300/5 B/30 CPS', 'Cardiologie', NULL),
('E11173', 'ARADEUX PLUS 300/5 B/90 CPS', 'Cardiologie', NULL),
('E11174', 'ARADEUX PLUS 150/5 B/30 CPS', 'Cardiologie', NULL),
('E11175', 'ARADEUX PLUS 150/5 B/90 CPS', 'Cardiologie', NULL),
('E11176', 'ARADEUX PLUS 300/10 B/90 CPS', 'Cardiologie', NULL),
('E11177', 'ARADEUX PLUS 300/10 B/30 CPS', 'Cardiologie', NULL),
('E11178', 'LORADIP 10MG B/30 CPS', NULL, NULL),
('E11179', 'LORADIP 20MG B/30 CPS', NULL, NULL),
('E11180', 'MONTELUKAST 10MG B/30 CPS', NULL, NULL),
('E11181', 'GLINORM 0.5MG B/30 CPS', 'Métabolisme', NULL),
('E11182', 'GLINORM 0.5MG B/90 CPS', 'Métabolisme', NULL),
('E11183', 'GLINORM 1MG B/30 CPS', 'Métabolisme', NULL),
('E11184', 'GLINORM 2MG B/30 CPS', 'Métabolisme', NULL),
('E11188', 'CTOLERGE 10MG B/10 CP', 'Allergologie', NULL),
('E11189', 'CTOLERGE 10MG B/30 CP', 'Allergologie', NULL),
('E11190', 'HCQ SAIPH 200 MG CPS B/10', NULL, NULL),
('E11191', 'HCQ SAIPH 200 MG CPS B/30', NULL, NULL),
('E11192', 'ZELID 250 MG B/14 CPS', 'Infectiologie', NULL),
('E11193', 'ZELID 500 MG B/14 CPS', 'Infectiologie', NULL),
('E11198', 'ADOL EXTRA 500/65 MG B/20', 'Antalgique', NULL),
('E11200', 'TRIPAKINE SAIPH LP 500 B/30 CP', NULL, NULL),
('E11201', 'ROZUVIE 10 MG B/90 CPS', 'Cardiovasculaire', NULL),
('E11202', 'ROZUVIE 20 MG B/90 CPS', 'Cardiovasculaire', NULL),
('E11203', 'POLAR 5 MG B/90 CPS', 'Neurologie psychiatrie', NULL),
('E11204', 'POLAR 10 MG B/90 CPS', 'Neurologie psychiatrie', NULL),
('E11216', 'SILAPLUS SAIPH 50 MG B/4 CPS', 'Néphrologie', NULL),
('E11217', 'SILAPLUS SAIPH 50 MG B/8 CPS', 'Néphrologie', NULL),
('E11218', 'SILAPLUS SAIPH 100 MG B/4 CPS', 'Néphrologie', NULL),
('E11232', 'ZELID 500 MG B/28 CPS', NULL, NULL),
('E12001', 'ANTILIP 200 MG B/30 GEL', 'Métabolisme', NULL),
('E12009', 'LOWRAC 10 MG B/30 GEL', 'Cardiologie', NULL),
('E12010', 'LOWRAC 10 MG B/90 GEL', 'Cardiologie', NULL),
('E12011', 'LOWRAC 5 MG B/30 GEL', 'Cardiologie', NULL),
('E12012', 'LOWRAC 5 MG B/90 GEL', 'Cardiologie', NULL),
('E12013', 'OMEZOL 10 MG B/14 GEL', 'Gastro', NULL),
('E12014', 'OMEZOL 10 MG B/7 GEL', 'Gastro', NULL),
('E12015', 'OMEZOL 20 MG B/28 GEL', 'Gastro', NULL),
('E12016', 'OMEZOL 20 MG B/7 GEL', 'Gastro', NULL),
('E12017', 'OMEZOL 20 MG B/14 GEL', 'Gastro', NULL),
('E12018', 'ROXAM 20 MG B/15 GEL', 'Antiinflammatoires', NULL),
('E12024', 'DOLICASAIPH 75 MG B/15 GEL', 'Neurologie psychiatrie', NULL),
('E12025', 'DOLICASAIPH 150 MG B/60 GEL', 'Neurologie psychiatrie', NULL),
('E12029', 'FLINZOL 150 MG B/1 GEL', 'Infectiologie', NULL),
('E12031', 'RGeO 20 MG B/14 GEL ECH', 'Gastro', NULL),
('E12032', 'RGeO 40 MG B/14 GEL ECH', 'Gastro', NULL),
('E12033', 'DOLICASAIPH 75 MG B/30 GEL', 'Neurologie psychiatrie', NULL),
('E12034', 'DOLICASAIPH 75 MG B/60 GEL', 'Neurologie psychiatrie', NULL),
('E12038', 'FLINZOL 150 MG B/2 GEL', 'Infectiologie', NULL),
('E12039', 'FLINZOL 150 MG B/4 GEL', 'Infectiologie', NULL),
('E12040', 'FLINZOL 150 MG B/12 GEL', 'Infectiologie', NULL),
('E12041', 'RGeO 20 MG B/7 GEL ECH', 'Gastro', NULL),
('E12042', 'RGeO 40 MG B/28 GEL ECH', 'Gastro', NULL),
('E12043', 'RGeO 20 MG B/28 GEL ECH', 'Gastro', NULL),
('E12044', 'RGeO 40 MG B/7 GEL ECH', 'Gastro', NULL),
('E13002', 'ROXAM 20 MG B/8 SACHETS', 'Antiinflammatoires', NULL),
('E13003', 'CALCIBOIZE 500MG B/20 SACHETS', 'Métabolisme', NULL),
('E13004', 'CALCIBOIZE 500MG B/24 SACHETS', 'Métabolisme', NULL),
('E15001', 'ZECLAR 25 MG/ML B/1 SS', 'Infectiologie', NULL),
('E15002', 'ZECLAR 50 MG/ML B/1 SS', 'Infectiologie', NULL),
('E15004', 'RAXIDONE 1 MG SB FL/30ML', 'Neurologie psychiatrie', NULL),
('E15005', 'RAXIDONE 1MG SB FL/60ML', 'Neurologie psychiatrie', NULL),
('E16007', 'FLUTICA 50µG/DOSE FL/15ML', NULL, NULL),
('E31101', 'ROZUVIE 5 MG B/30 CPS', 'Cardiovasculaire', NULL),
('E31102', 'ROZUVIE 10 MG B/30 CPS', 'Cardiovasculaire', NULL),
('E31103', 'ROZUVIE 20 MG B/30 CPS', 'Cardiovasculaire', NULL),
('F31001', 'ROZUVIE 5 MG B/30 CPS', 'Cardiovasculaire', NULL),
('F31002', 'ROZUVIE 10 MG B/30 CPS', 'Cardiovasculaire', NULL),
('F31003', 'ROZUVIE 20 MG B/30 CPS', 'Cardiovasculaire', NULL),
('H11002', 'ADOL 500 MG B/150 CPS', 'Antalgique', NULL),
('H11003', 'ALBUTOL 2 MG B/120 CPS', 'Pneumologie', NULL),
('H11004', 'ANGIOTEC 20 MG B/30 CPS', 'Cardiologie', NULL),
('H11005', 'ANGIOTEC 5 MG B/30 CPS', 'Cardiologie', NULL),
('H11006', 'ANGIOZIDE 20/12,5 MG B/30 CPS', 'Cardiologie', NULL),
('H11008', 'ARADEUX 150 MG B/90 CPS', 'Cardiologie', NULL),
('H11011', 'ARADEUX 300 MG B/90 CPS', 'Cardiologie', NULL),
('H11012', 'BACTALL 500 MG B/14 CPS', 'Infectiologie', NULL),
('H11014', 'BIOGYL B/20 CPS', 'Infectiologie', NULL),
('H11015', 'BRAVAL 10 MG B/30 CPS', 'Neurologie psychiatrie', NULL),
('H11016', 'BRAVAL 5 MG B/30 CPS', 'Neurologie psychiatrie', NULL),
('H11017', 'CAPOCARD 25 MG B/150 CPS', 'Cardiologie', NULL),
('H11018', 'CAPOCARD 50 MG B/150 CPS', 'Cardiologie', NULL),
('H11019', 'CINCOR 10 MG B/30 CPS', 'Cardiologie', NULL),
('H11021', 'CINCOR 2,5 MG B/30 CPS', 'Cardiologie', NULL),
('H11022', 'CLOPIX 75 MG B/30 CPS', 'Cardiologie', NULL),
('H11023', 'CLOPIX 75 MG B/90 CPS', 'Cardiologie', NULL),
('H11025', 'COARADEUX 150/12.5MG B/30 CPS', 'Cardiologie', NULL),
('H11030', 'COTRIMOX 480 MG B/150 CPS', NULL, NULL),
('H11034', 'DILACOR 2 MG B/90 CPS', 'Cardiologie', NULL),
('H11035', 'DILACOR 2 MG B/30 CPS', 'Cardiologie', NULL),
('H11036', 'DILACOR 4 MG B/30 CPS', 'Cardiologie', NULL),
('H11037', 'DILACOR 4 MG B/90 CPS', 'Cardiologie', NULL),
('H11038', 'DOPANORE 250 MG B/150 CPS', NULL, NULL),
('H11040', 'GLITRA 1 MG B/30 CPS', 'Métabolisme', NULL),
('H11042', 'GLITRA 2 MG B/30 CPS', 'Métabolisme', NULL),
('H11043', 'GLITRA 2 MG B/90 CPS', 'Métabolisme', NULL),
('H11044', 'GLITRA 3 MG B/30 CPS', 'Métabolisme', NULL),
('H11045', 'GLITRA 3 MG B/90 CPS', 'Métabolisme', NULL),
('H11046', 'GLITRA 4 MG B/30 CPS', 'Métabolisme', NULL),
('H11047', 'GLITRA 4 MG B/90 CPS', 'Métabolisme', NULL),
('H11049', 'LEVOFOR 500 MG B/10 CPS', 'Infectiologie', NULL),
('H11051', 'METFORAL 850 MG B/105 CPS', 'Métabolisme', NULL),
('H11054', 'NORACTONE 100 MG B/100 CPS', 'Cardiologie', NULL),
('H11055', 'OGYL 750MU/125MG B/20 CPS', 'Infectiologie', NULL),
('H11059', 'POLAR 10 MG B/30 CPS', 'Neurologie psychiatrie', NULL),
('H11061', 'POLAR 5 MG B/30 CPS', 'Neurologie psychiatrie', NULL),
('H11064', 'RAXIDONE 2 MG B/60 CPS', 'Neurologie psychiatrie', NULL),
('H11065', 'RAZON 20 MG B/30 CPS', 'Gastro', NULL),
('H11068', 'RAZON 40 MG B/28 CPS', 'Gastro', NULL),
('H11071', 'RHINOSTOP B/20 CPS', 'Antalgique', NULL),
('H11073', 'TENSIOL 400 MG B/30 CPS', 'Cardiologie', NULL),
('H11075', 'TORVA 10 MG B/90 CPS', 'Métabolisme', NULL),
('H11077', 'TORVA 20 MG B/90 CPS', 'Métabolisme', NULL),
('H11079', 'TORVA 40 MG B/90 CPS', 'Métabolisme', NULL),
('H11081', 'ULDINE 40 MG B/360 CPS', 'Gastro', NULL),
('H11084', 'ZECLAR 500 MG B/14 CPS', 'Infectiologie', NULL),
('H11088', 'CELOXX 200 MG B/10 GEL', 'Antiinflammatoires', NULL),
('H11091', 'CIRCULAID LP 400 MG B/30 CPS', NULL, NULL),
('H11095', 'HUMOXAT 20 MG B/60 CPS', NULL, NULL),
('H11107', 'DIABITOS 850 MG B/105 CPS', 'Métabolisme', NULL),
('H11108', 'DIABITOS 1000 MG B/30 CPS', 'Métabolisme', NULL),
('H11109', 'COARADEUX 150/12.5MG B/90 CPS', 'Cardiologie', NULL),
('H11147', 'DIABITOS 850 MG B/60 CPS', 'Métabolisme', NULL),
('H11148', 'DIABITOS 850 MG B/90 CPS', 'Métabolisme', NULL),
('H11149', 'RAXIDONE 4 MG B/30 CPS', 'Neurologie psychiatrie', NULL),
('H11150', 'TORVA 80 MG B/30 CPS', 'Métabolisme', NULL),
('H11189', 'CTOLERGE 10MG B/30 CP', 'Allergologie', NULL),
('H11190', 'HCQ SAIPH 200 MG CPS B/10', NULL, NULL),
('H11191', 'HCQ SAIPH 200 MG CPS B/30', NULL, NULL),
('H11192', 'ZELID 250 MG B/14 CPS DPH HOP', 'Infectiologie', NULL),
('H11199', 'ANAERYL 250 MG CPS B/20', NULL, NULL),
('H12001', 'ANTILIP 200 MG B/30 GEL', 'Métabolisme', NULL),
('H12010', 'LOWRAC 10 MG B/90 GEL', 'Cardiologie', NULL),
('H12012', 'LOWRAC 5 MG B/90 GEL', 'Cardiologie', NULL),
('H12013', 'OMEZOL 10 MG B/14 GEL', 'Gastro', NULL),
('H12015', 'OMEZOL 20 MG B/28 GEL', 'Gastro', NULL),
('H12018', 'ROXAM 20 MG B/15 GEL', 'Antiinflammatoires', NULL),
('N13001', 'TRIADE H B/20 SACHETS', NULL, NULL),
('SF0038', 'GELULES VRAC DOXYLAG 100MG', NULL, NULL),
('X11003', 'ALBUTOL 2 MG B/30 CPS IRAQ', 'Pneumologie', NULL),
('X11004', 'ANGIOTEC 20 MG B/30 CPS', 'Cardiologie', NULL),
('X11005', 'ANGIOTEC 5 MG B/30 CPS', 'Cardiologie', NULL),
('X11006', 'ANGIOZIDE 20/12,5 MG B/30 CPS', 'Cardiologie', NULL),
('X11012', 'BACTALL 500 MG B/14 CPS LYB', 'Infectiologie', NULL),
('X11013', 'BIOGYL B/10 CPS', 'Infectiologie', NULL),
('X11014', 'BIOGYL B/20 CPS', 'Infectiologie', NULL),
('X11015', 'BRAVAL 10 MG B/30 CPS IRAQ', 'Neurologie psychiatrie', NULL),
('X11016', 'BRAVAL 5 MG B/30 CPS IRAQ', 'Neurologie psychiatrie', NULL),
('X11019', 'CINCOR 10 MG B/30 CPS LYB', 'Cardiologie', NULL),
('X11021', 'CINCOR 2,5 MG B/30 CPS LYB', 'Cardiologie', NULL),
('X11022', 'CLOPIX 75 MG B/30 CPS', 'Cardiologie', NULL),
('X11030', 'COTRIMOX 480 MG B/20 CPS', NULL, NULL),
('X11031', 'COTRIMOX 480 MG B/150 CPS', NULL, NULL),
('X11035', 'DILACOR 2 MG B/30 CPS', 'Cardiologie', NULL),
('X11036', 'DILACOR 4 MG B/30 CPS', 'Cardiologie', NULL),
('X11038', 'DOPANORE 250 MG B/30 CPS', NULL, NULL),
('X11039', 'DOPANORE 250MG B/30 COTE IVOIR', NULL, NULL),
('X11040', 'GLITRA 1 MG B/30 CPS', 'Métabolisme', NULL),
('X11042', 'GLITRA 2 MG B/30 CPS', 'Métabolisme', NULL),
('X11044', 'GLITRA 3 MG B/30 CPS', 'Métabolisme', NULL),
('X11046', 'GLITRA 4 MG B/30 CPS', 'Métabolisme', NULL),
('X11050', 'LEVOFOR 500 MG B/5 CPS LYB', 'Infectiologie', NULL),
('X11053', 'NORACIN 400 MG B/14 CPS', NULL, NULL),
('X11054', 'NORACTONE 100 MG B/10 CPS', 'Cardiologie', NULL),
('X11055', 'OGYL 750MU/125MG B/20 CPS', 'Infectiologie', NULL),
('X11056', 'OXIMAL 15 MG B/14 CPS', 'Antiinflammatoires', NULL),
('X11057', 'OXIMAL 15 MG B/7 CPS', 'Antiinflammatoires', NULL),
('X11058', 'PIZOFEN 0.5 MG B/30 CPS', 'Neurologie psychiatrie', NULL),
('X11059', 'POLAR 10 MG B/30 CPS IRAQ', 'Neurologie psychiatrie', NULL),
('X11061', 'POLAR 5 MG B/30 CPS IRAQ', 'Neurologie psychiatrie', NULL),
('X11065', 'RAZON 20 MG B/30 CPS', 'Gastro', NULL),
('X11066', 'RAZON 20 MG B/10 CPS', 'Gastro', NULL),
('X11069', 'RAZON 40 MG B/14 CPS', 'Gastro', NULL),
('X11070', 'RAZON 40 MG B/7 CPS', 'Gastro', NULL),
('X11071', 'RHINOSTOP B/20 CPS', 'Antalgique', NULL),
('X11074', 'TORVA 10 MG B/30 CPS', 'Métabolisme', NULL),
('X11076', 'TORVA 20 MG B/30 CPS', 'Métabolisme', NULL),
('X11078', 'TORVA 40 MG B/30 CPS', 'Métabolisme', NULL),
('X11088', 'CELOXX 200 MG B/10 GEL LYB', 'Antiinflammatoires', NULL),
('X11102', 'NORACTONE 100 MG B/100 CPS', 'Cardiologie', NULL),
('X11103', 'CINCOR 5 MG B/30 CPS LYB', 'Cardiologie', NULL),
('X11112', 'ROZUVIE 10 MG B/30 CPS IRAQ', 'Cardiovasculaire', NULL),
('X11113', 'ROZUVIE 20 MG B/30 CPS IRAQ', 'Cardiovasculaire', NULL),
('X11119', 'TADAPLUS 5MG B/30 CPS', 'Néphrologie', NULL),
('X11122', 'TADAPLUS 20MG B/4 CPS', 'Néphrologie', NULL),
('X11124', 'CTOLERGE 10MG B/20 CP IRAQ', 'Allergologie', NULL),
('X11126', 'SADOL 1000 MG B/8 CPS EXP IRAQ', 'Antalgique', NULL),
('X11127', 'SADOL EXTRA B/20 CPS EXP IRAQ', 'Antalgique', NULL),
('X11128', 'ALBUTOL 2 MG B/30 CPS LYB', 'Pneumologie', NULL),
('X11129', 'CIPROSAIPH 500 MG B/14 CP IRAQ', 'Infectiologie', NULL),
('X11130', 'BRAVAL 10 MG B/30 CPS LYB', 'Neurologie psychiatrie', NULL),
('X11131', 'BRAVAL 5 MG B/30 CPS LYB', 'Neurologie psychiatrie', NULL),
('X11132', 'CTOLERGE 10MG B/20 CP LYBIE', 'Allergologie', NULL),
('X11133', 'LEVOFOR 500 MG B/5 CPS IRAQ', 'Infectiologie', NULL),
('X11134', 'SPIRAMET 750MU/125MG B/20 IRAQ', NULL, NULL),
('X11135', 'LOXIMAL 15 MG B/14 CPS IRAQ', 'Antiinflammatoires', NULL),
('X11136', 'POLAR 10 MG B/30 CPS LYB', 'Neurologie psychiatrie', NULL),
('X11137', 'POLAR 5 MG B/30 CPS LYB', 'Neurologie psychiatrie', NULL),
('X11138', 'PANTOSAIPH 20 MG B/10 CPS IRAQ', NULL, NULL),
('X11139', 'PANTOSAIPH 40 MG B/14 CPS IRAQ', NULL, NULL),
('X11140', 'TADAPLUS 20MG B/4 CPS IRAQ', 'Néphrologie', NULL),
('X11141', 'TADAPLUS 5MG B/30 CPS IRAQ', 'Néphrologie', NULL),
('X11142', 'LIPOSAIPH 10 MG B/30 CPS IRAQ', NULL, NULL),
('X11143', 'LIPOSAIPH 20 MG B/30 CPS IRAQ', NULL, NULL),
('X11144', 'LIPOSAIPH 40 MG B/30 CPS IRAQ', NULL, NULL),
('X11151', 'TADAPLUS SAIPH 5MG B30 CP IRAQ', 'Néphrologie', NULL),
('X11154', 'TADAPLUS SAIPH 20MG B4 CP IRAQ', 'Néphrologie', NULL),
('X11156', 'ARIFY 10MG B/30 CPS IRAQ', NULL, NULL),
('X11157', 'ARIFY 15MG B/30 CPS IRAQ', NULL, NULL),
('X11158', 'ESCITAPUR 10MG B/30 CPS IRAQ', NULL, NULL),
('X11159', 'ESCITAPUR 20MG B/30 CPS IRAQ', NULL, NULL),
('X11160', 'VOMISTOP 10MG B/40 CPS IRAQ', NULL, NULL),
('X11161', 'ERLUS 5MG B/30 CPS IRAQ', NULL, NULL),
('X11162', 'ERLUS 5MG B/15 CPS IRAQ', NULL, NULL),
('X11163', 'STATINE PLUS 10MG B/30CPS IRAQ', NULL, NULL),
('X11164', 'GALVINE 50MG B/28CPS IRAQ', NULL, NULL),
('X11165', 'BIGALVINE 50/1000 B/60CPSIRAQ', 'Métabolisme', NULL),
('X11166', 'BIGALVINE 50/850 B/60CPSIRAQ', 'Métabolisme', NULL),
('X11167', 'BIGALVINE 50/500 B/60CPS IRAQ', 'Métabolisme', NULL),
('X11168', 'VALUE PLUS 160/5MG B/30CP IRAQ', NULL, NULL),
('X11169', 'VALUE PLUS 80/5MG B/30CPS IRAQ', NULL, NULL),
('X11170', 'VALUE PLUS 160/10MGB/30CP IRAQ', NULL, NULL),
('X11171', 'LEVOFOR 500 MG B/10 CPS IRAQ', 'Infectiologie', NULL),
('X11172', 'ARADEUX PLUS 300/5 B/30 CPS', 'Cardiologie', NULL),
('X11185', 'GLITIMET 50/1000 MG CP B/56', NULL, NULL),
('X11186', 'GLITIMET 50/500 MG CP B/56', NULL, NULL),
('X11187', 'GLITIVIA 100 MG CP B/30', NULL, NULL),
('X11190', 'HCQ SAIPH 200 MG CPS B/10', NULL, NULL),
('X11195', 'ALLERGYFAST 120MG B/15 CPS', 'Allergologie', NULL),
('X11196', 'ALLERGYFAST 180 MG B/15 CPS', 'Allergologie', NULL),
('X11199', 'ANAERYL 250 MG CPS B/20', NULL, NULL),
('X11216', 'SILAPLUS SAIPH 50 B4 COTE IVOI', 'Néphrologie', NULL),
('X11217', 'SILAPLUS SAIPH 50 B8 COTE IVOI', 'Néphrologie', NULL),
('X11218', 'SILAPLUS SAIPH 100 B4 COTE IVO', 'Néphrologie', NULL),
('X11219', 'SADOL 1000MG B/8 COTE D\'IVOIRE', 'Antalgique', NULL),
('X11220', 'SADOL EXTRA B/20 COTE D\'IVOIRE', 'Antalgique', NULL),
('X11222', 'DIABITOS 1000 MG CP B/30 LYBIE', NULL, NULL),
('X11233', 'SILAPLUS SAIPH 50 MG B/4 IRAQ', 'Néphrologie', NULL),
('X11234', 'SILAPLUS SAIPH 100 MG B/4 IRAQ', 'Néphrologie', NULL),
('X12001', 'ANTILIP 200 MG B/30 GEL LYB', 'Métabolisme', NULL),
('X12009', 'LOWRAC 10 MG B/30 GEL', 'Cardiologie', NULL),
('X12011', 'LOWRAC 5 MG B/30 GEL', 'Cardiologie', NULL),
('X12015', 'OMEZOL 20 MG B/28 GEL', 'Gastro', NULL),
('X12017', 'OMEZOL 20 MG B/14 GEL IRAQ', 'Gastro', NULL),
('X12018', 'ROXAM 20 MG B/15 GEL', 'Antiinflammatoires', NULL),
('X12026', 'DOLICASAIPH 75 MG B/15 GE IRAQ', 'Neurologie psychiatrie', NULL),
('X12027', 'DOLICASAIPH 150 MG B/60GE IRAQ', 'Neurologie psychiatrie', NULL),
('X12029', 'FLINZOL 150 MG B/1 GEL IRAQ', 'Infectiologie', NULL),
('X12030', 'OMEZOL 20 MG B/14 GEL LYB', 'Gastro', NULL),
('X12031', 'RGEO 20MG B/14 IRAQ', 'Gastro', NULL),
('X12032', 'RGEO 40MG B/14 IRAQ', 'Gastro', NULL),
('X12035', 'CELOXX SAIPH 200 B/10 GEL IRAQ', 'Antiinflammatoires', NULL),
('X12036', 'CELOXX SAIPH 200 B/30 GEL IRAQ', 'Antiinflammatoires', NULL),
('X12040', 'FLINZOL 150 MG B/1 GEL LYB', 'Infectiologie', NULL),
('X12091', 'ANTILIP 200 MG B/30 GEL IRAQ', 'Métabolisme', NULL),
('X12092', 'CELOXX 200 MG B/10 GEL IRAQ', 'Antiinflammatoires', NULL),
('X12093', 'DOLICASAIPH 75 MG B/15 GE LYB', 'Neurologie psychiatrie', NULL),
('X12095', 'CELOXX 200 MG B/30 GEL IRAQ', 'Antiinflammatoires', NULL),
('X13002', 'ROXAM 20 MG B/8 SACHETS', 'Antiinflammatoires', NULL),
('X16001', 'VOMISTOP 10MG/10MLFL200ML IRAQ', NULL, NULL),
('X16002', 'ERLUS 0.5MG/ML FL 60ML IRAQ', NULL, NULL),
('X16003', 'SADOL 250MG/5ML FL100ML IRAQ', 'Antalgique', NULL),
('X16004', 'SADOL 120MG/5ML FL100ML IRAQ', 'Antalgique', NULL),
('X16005', 'NEOFEN 100MG/5ML FL125ML IRAQ', NULL, NULL),
('X16007', 'FLUTICA 50µG/DOSE FL/15ML', NULL, NULL),
('X81001', 'GYNO M 200MG B/7', NULL, NULL),
('X81002', 'GYNO M 400MG B/3', NULL, NULL),
('X81003', 'NEOFEN 400MG B/20 IRAQ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `realisation`
--

CREATE TABLE `realisation` (
  `id` int(11) NOT NULL,
  `planification_id` int(11) DEFAULT NULL,
  `quantite_realisee` int(11) DEFAULT NULL,
  `date_realisation` date DEFAULT NULL,
  `commentaire` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `nom_utilisateur` varchar(50) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `role` enum('admin','chef de ligne','visiteur') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom_utilisateur`, `mot_de_passe`, `role`) VALUES
(1, 'chef2', '$2b$10$n5MSeWYPuW.shb5SBdwacugi0e1za7G2X6dp6uw5eZ.l.41w5v4hW', 'chef de ligne'),
(2, 'admin1', '$2b$10$KaN1Y6KxmlOTA2U8efgaJu7Q5zsmmrBHL3dFtnqD0FZ0qEzU9QGyK', 'admin'),
(3, 'admin1', '$2b$10$569SYOiR9DBqgEYKLl0fveRJemOY5co5VTOQxB2zknrfv0oNY/0fC', ''),
(4, 'admin3', '$2b$10$tUjnylxaHpa8UtZW/HBJPenvjaZfiT1c0TGD.OrtQSg3mGId46/9W', ''),
(5, 'admin5', '$2b$10$CUNp4bNynd2UkyiGj7VEFuwtknlLtrKkAFNAgwEdmhxanCrz4wC6a', 'admin'),
(6, 'chef1', '$2b$10$nxAWp5L1/60TLea6AtFm4.51G3bGOEXXcsPgv1ATiklNfByQJxAuK', 'chef de ligne'),
(7, 'chef5', '$2b$10$kcoSN4zJv6/QT64W8QQjM.jT7wwsRy44fLQEduT.UMtsPrmfiUBdi', 'chef de ligne');

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `id` varchar(10) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`id`, `nom`) VALUES
('9968', 'A1'),
('Z001', 'Zone Centrale');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ligne`
--
ALTER TABLE `ligne`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ligne_zone` (`zone_id`);

--
-- Indexes for table `planification`
--
ALTER TABLE `planification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produit_code` (`produit_code`),
  ADD KEY `ligne_id` (`ligne_id`);

--
-- Indexes for table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `realisation`
--
ALTER TABLE `realisation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planification_id` (`planification_id`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ligne`
--
ALTER TABLE `ligne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=449640;

--
-- AUTO_INCREMENT for table `planification`
--
ALTER TABLE `planification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `realisation`
--
ALTER TABLE `realisation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ligne`
--
ALTER TABLE `ligne`
  ADD CONSTRAINT `fk_ligne_zone` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`id`);

--
-- Constraints for table `planification`
--
ALTER TABLE `planification`
  ADD CONSTRAINT `planification_ibfk_1` FOREIGN KEY (`produit_code`) REFERENCES `produit` (`code`),
  ADD CONSTRAINT `planification_ibfk_2` FOREIGN KEY (`ligne_id`) REFERENCES `ligne` (`id`);

--
-- Constraints for table `realisation`
--
ALTER TABLE `realisation`
  ADD CONSTRAINT `realisation_ibfk_1` FOREIGN KEY (`planification_id`) REFERENCES `planification` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
