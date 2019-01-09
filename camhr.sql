-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2019 at 04:39 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `camhr`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_access`
--

CREATE TABLE `tb_access` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `id_group` int(11) DEFAULT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `has_child` int(2) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_class_action`
--

CREATE TABLE `tb_class_action` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `has_child` int(2) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_communes`
--

CREATE TABLE `tb_communes` (
  `id` int(11) NOT NULL,
  `communes` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `id_district` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `has_child` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_communes`
--

INSERT INTO `tb_communes` (`id`, `communes`, `title`, `id_district`, `description`, `has_child`) VALUES
(1, '		Chong Cheach	', NULL, 188, NULL, 1),
(2, '		Dambae	', NULL, 188, NULL, 1),
(3, '		Kouk Srok	', NULL, 188, NULL, 1),
(4, '		Neang Teut	', NULL, 188, NULL, 1),
(5, '		Seda	', NULL, 188, NULL, 1),
(6, '		Tuek Chrov	', NULL, 188, NULL, 1),
(7, '		Trapeang Pring	', NULL, 188, NULL, 1),
(8, '		Chhuk	', NULL, 189, NULL, 1),
(9, '		Chumnik	', NULL, 189, NULL, 1),
(10, '		Kampong Treas	', NULL, 189, NULL, 1),
(11, '		Kaoh Pir	', NULL, 189, NULL, 1),
(12, '		Krouch Chhmar	', NULL, 189, NULL, 1),
(13, '		Peus Muoy	', NULL, 189, NULL, 1),
(14, '		Peus Pir	', NULL, 189, NULL, 1),
(15, '		Preaek a Chi	', NULL, 189, NULL, 1),
(16, '		Roka Khnor	', NULL, 189, NULL, 1),
(17, '		Svay Khleang	', NULL, 189, NULL, 1),
(18, '		Trea	', NULL, 189, NULL, 1),
(19, '		Tuol Snuol	', NULL, 189, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_country`
--

CREATE TABLE `tb_country` (
  `id` int(11) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `id_region` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `has_child` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_country`
--

INSERT INTO `tb_country` (`id`, `country`, `title`, `id_region`, `description`, `has_child`) VALUES
(1, '	Afghanistan 	', NULL, 1, NULL, NULL),
(2, '	Albania 	', NULL, 2, NULL, NULL),
(3, '	Algeria 	', NULL, 3, NULL, NULL),
(4, '	American Samoa 	', NULL, 4, NULL, NULL),
(5, '	Andorra 	', NULL, 5, NULL, NULL),
(6, '	Angola 	', NULL, 6, NULL, NULL),
(7, '	Anguilla 	', NULL, 7, NULL, NULL),
(8, '	Antigua & Barbuda 	', NULL, 8, NULL, NULL),
(9, '	Argentina 	', NULL, 9, NULL, NULL),
(10, '	Armenia 	', NULL, 10, NULL, NULL),
(11, '	Aruba 	', NULL, 11, NULL, NULL),
(12, '	Australia 	', NULL, 12, NULL, NULL),
(13, '	Austria 	', NULL, 13, NULL, NULL),
(14, '	Azerbaijan 	', NULL, 14, NULL, NULL),
(15, '	Bahamas, The 	', NULL, 15, NULL, NULL),
(16, '	Bahrain 	', NULL, 16, NULL, NULL),
(17, '	Bangladesh 	', NULL, 17, NULL, NULL),
(18, '	Barbados 	', NULL, 18, NULL, NULL),
(19, '	Belarus 	', NULL, 19, NULL, NULL),
(20, '	Belgium 	', NULL, 20, NULL, NULL),
(21, '	Belize 	', NULL, 21, NULL, NULL),
(22, '	Benin 	', NULL, 22, NULL, NULL),
(23, '	Bermuda 	', NULL, 23, NULL, NULL),
(24, '	Bhutan 	', NULL, 24, NULL, NULL),
(25, '	Bolivia 	', NULL, 25, NULL, NULL),
(26, '	Bosnia & Herzegovina 	', NULL, 26, NULL, NULL),
(27, '	Botswana 	', NULL, 27, NULL, NULL),
(28, '	Brazil 	', NULL, 28, NULL, NULL),
(29, '	British Virgin Is. 	', NULL, 29, NULL, NULL),
(30, '	Brunei 	', NULL, 30, NULL, NULL),
(31, '	Bulgaria 	', NULL, 31, NULL, NULL),
(32, '	Burkina Faso 	', NULL, 32, NULL, NULL),
(33, '	Burma 	', NULL, 33, NULL, NULL),
(34, '	Burundi 	', NULL, 34, NULL, NULL),
(35, '	Cambodia 	', NULL, 35, NULL, 1),
(36, '	Cameroon 	', NULL, 36, NULL, NULL),
(37, '	Canada 	', NULL, 37, NULL, NULL),
(38, '	Cape Verde 	', NULL, 38, NULL, NULL),
(39, '	Cayman Islands 	', NULL, 39, NULL, NULL),
(40, '	Central African Rep. 	', NULL, 40, NULL, NULL),
(41, '	Chad 	', NULL, 41, NULL, NULL),
(42, '	Chile 	', NULL, 42, NULL, NULL),
(43, '	China 	', NULL, 43, NULL, NULL),
(44, '	Colombia 	', NULL, 44, NULL, NULL),
(45, '	Comoros 	', NULL, 45, NULL, NULL),
(46, '	Congo, Dem. Rep. 	', NULL, 46, NULL, NULL),
(47, '	Congo, Repub. of the 	', NULL, 47, NULL, NULL),
(48, '	Cook Islands 	', NULL, 48, NULL, NULL),
(49, '	Costa Rica 	', NULL, 49, NULL, NULL),
(50, '	Cote d\'Ivoire 	', NULL, 50, NULL, NULL),
(51, '	Croatia 	', NULL, 51, NULL, NULL),
(52, '	Cuba 	', NULL, 52, NULL, NULL),
(53, '	Cyprus 	', NULL, 53, NULL, NULL),
(54, '	Czech Republic 	', NULL, 54, NULL, NULL),
(55, '	Denmark 	', NULL, 55, NULL, NULL),
(56, '	Djibouti 	', NULL, 56, NULL, NULL),
(57, '	Dominica 	', NULL, 57, NULL, NULL),
(58, '	Dominican Republic 	', NULL, 58, NULL, NULL),
(59, '	East Timor 	', NULL, 59, NULL, NULL),
(60, '	Ecuador 	', NULL, 60, NULL, NULL),
(61, '	Egypt 	', NULL, 61, NULL, NULL),
(62, '	El Salvador 	', NULL, 62, NULL, NULL),
(63, '	Equatorial Guinea 	', NULL, 63, NULL, NULL),
(64, '	Eritrea 	', NULL, 64, NULL, NULL),
(65, '	Estonia 	', NULL, 65, NULL, NULL),
(66, '	Ethiopia 	', NULL, 66, NULL, NULL),
(67, '	Faroe Islands 	', NULL, 67, NULL, NULL),
(68, '	Fiji 	', NULL, 68, NULL, NULL),
(69, '	Finland 	', NULL, 69, NULL, NULL),
(70, '	France 	', NULL, 70, NULL, NULL),
(71, '	French Guiana 	', NULL, 71, NULL, NULL),
(72, '	French Polynesia 	', NULL, 72, NULL, NULL),
(73, '	Gabon 	', NULL, 73, NULL, NULL),
(74, '	Gambia, The 	', NULL, 74, NULL, NULL),
(75, '	Gaza Strip 	', NULL, 75, NULL, NULL),
(76, '	Georgia 	', NULL, 76, NULL, NULL),
(77, '	Germany 	', NULL, 77, NULL, NULL),
(78, '	Ghana 	', NULL, 78, NULL, NULL),
(79, '	Gibraltar 	', NULL, 79, NULL, NULL),
(80, '	Greece 	', NULL, 80, NULL, NULL),
(81, '	Greenland 	', NULL, 81, NULL, NULL),
(82, '	Grenada 	', NULL, 82, NULL, NULL),
(83, '	Guadeloupe 	', NULL, 83, NULL, NULL),
(84, '	Guam 	', NULL, 84, NULL, NULL),
(85, '	Guatemala 	', NULL, 85, NULL, NULL),
(86, '	Guernsey 	', NULL, 86, NULL, NULL),
(87, '	Guinea 	', NULL, 87, NULL, NULL),
(88, '	Guinea-Bissau 	', NULL, 88, NULL, NULL),
(89, '	Guyana 	', NULL, 89, NULL, NULL),
(90, '	Haiti 	', NULL, 90, NULL, NULL),
(91, '	Honduras 	', NULL, 91, NULL, NULL),
(92, '	Hong Kong 	', NULL, 92, NULL, NULL),
(93, '	Hungary 	', NULL, 93, NULL, NULL),
(94, '	Iceland 	', NULL, 94, NULL, NULL),
(95, '	India 	', NULL, 95, NULL, NULL),
(96, '	Indonesia 	', NULL, 96, NULL, NULL),
(97, '	Iran 	', NULL, 97, NULL, NULL),
(98, '	Iraq 	', NULL, 98, NULL, NULL),
(99, '	Ireland 	', NULL, 99, NULL, NULL),
(100, '	Isle of Man 	', NULL, 100, NULL, NULL),
(101, '	Israel 	', NULL, 101, NULL, NULL),
(102, '	Italy 	', NULL, 102, NULL, NULL),
(103, '	Jamaica 	', NULL, 103, NULL, NULL),
(104, '	Japan 	', NULL, 104, NULL, NULL),
(105, '	Jersey 	', NULL, 105, NULL, NULL),
(106, '	Jordan 	', NULL, 106, NULL, NULL),
(107, '	Kazakhstan 	', NULL, 107, NULL, NULL),
(108, '	Kenya 	', NULL, 108, NULL, NULL),
(109, '	Kiribati 	', NULL, 109, NULL, NULL),
(110, '	Korea, North 	', NULL, 110, NULL, NULL),
(111, '	Korea, South 	', NULL, 111, NULL, NULL),
(112, '	Kuwait 	', NULL, 112, NULL, NULL),
(113, '	Kyrgyzstan 	', NULL, 113, NULL, NULL),
(114, '	Laos 	', NULL, 114, NULL, NULL),
(115, '	Latvia 	', NULL, 115, NULL, NULL),
(116, '	Lebanon 	', NULL, 116, NULL, NULL),
(117, '	Lesotho 	', NULL, 117, NULL, NULL),
(118, '	Liberia 	', NULL, 118, NULL, NULL),
(119, '	Libya 	', NULL, 119, NULL, NULL),
(120, '	Liechtenstein 	', NULL, 120, NULL, NULL),
(121, '	Lithuania 	', NULL, 121, NULL, NULL),
(122, '	Luxembourg 	', NULL, 122, NULL, NULL),
(123, '	Macau 	', NULL, 123, NULL, NULL),
(124, '	Macedonia 	', NULL, 124, NULL, NULL),
(125, '	Madagascar 	', NULL, 125, NULL, NULL),
(126, '	Malawi 	', NULL, 126, NULL, NULL),
(127, '	Malaysia 	', NULL, 127, NULL, NULL),
(128, '	Maldives 	', NULL, 128, NULL, NULL),
(129, '	Mali 	', NULL, 129, NULL, NULL),
(130, '	Malta 	', NULL, 130, NULL, NULL),
(131, '	Marshall Islands 	', NULL, 131, NULL, NULL),
(132, '	Martinique 	', NULL, 132, NULL, NULL),
(133, '	Mauritania 	', NULL, 133, NULL, NULL),
(134, '	Mauritius 	', NULL, 134, NULL, NULL),
(135, '	Mayotte 	', NULL, 135, NULL, NULL),
(136, '	Mexico 	', NULL, 136, NULL, NULL),
(137, '	Micronesia, Fed. St. 	', NULL, 137, NULL, NULL),
(138, '	Moldova 	', NULL, 138, NULL, NULL),
(139, '	Monaco 	', NULL, 139, NULL, NULL),
(140, '	Mongolia 	', NULL, 140, NULL, NULL),
(141, '	Montserrat 	', NULL, 141, NULL, NULL),
(142, '	Morocco 	', NULL, 142, NULL, NULL),
(143, '	Mozambique 	', NULL, 143, NULL, NULL),
(144, '	Namibia 	', NULL, 144, NULL, NULL),
(145, '	Nauru 	', NULL, 145, NULL, NULL),
(146, '	Nepal 	', NULL, 146, NULL, NULL),
(147, '	Netherlands 	', NULL, 147, NULL, NULL),
(148, '	Netherlands Antilles 	', NULL, 148, NULL, NULL),
(149, '	New Caledonia 	', NULL, 149, NULL, NULL),
(150, '	New Zealand 	', NULL, 150, NULL, NULL),
(151, '	Nicaragua 	', NULL, 151, NULL, NULL),
(152, '	Niger 	', NULL, 152, NULL, NULL),
(153, '	Nigeria 	', NULL, 153, NULL, NULL),
(154, '	N. Mariana Islands 	', NULL, 154, NULL, NULL),
(155, '	Norway 	', NULL, 155, NULL, NULL),
(156, '	Oman 	', NULL, 156, NULL, NULL),
(157, '	Pakistan 	', NULL, 157, NULL, NULL),
(158, '	Palau 	', NULL, 158, NULL, NULL),
(159, '	Panama 	', NULL, 159, NULL, NULL),
(160, '	Papua New Guinea 	', NULL, 160, NULL, NULL),
(161, '	Paraguay 	', NULL, 161, NULL, NULL),
(162, '	Peru 	', NULL, 162, NULL, NULL),
(163, '	Philippines 	', NULL, 163, NULL, NULL),
(164, '	Poland 	', NULL, 164, NULL, NULL),
(165, '	Portugal 	', NULL, 165, NULL, NULL),
(166, '	Puerto Rico 	', NULL, 166, NULL, NULL),
(167, '	Qatar 	', NULL, 167, NULL, NULL),
(168, '	Reunion 	', NULL, 168, NULL, NULL),
(169, '	Romania 	', NULL, 169, NULL, NULL),
(170, '	Russia 	', NULL, 170, NULL, NULL),
(171, '	Rwanda 	', NULL, 171, NULL, NULL),
(172, '	Saint Helena 	', NULL, 172, NULL, NULL),
(173, '	Saint Kitts & Nevis 	', NULL, 173, NULL, NULL),
(174, '	Saint Lucia 	', NULL, 174, NULL, NULL),
(175, '	St Pierre & Miquelon 	', NULL, 175, NULL, NULL),
(176, '	Saint Vincent and the Grenadines 	', NULL, 176, NULL, NULL),
(177, '	Samoa 	', NULL, 177, NULL, NULL),
(178, '	San Marino 	', NULL, 178, NULL, NULL),
(179, '	Sao Tome & Principe 	', NULL, 179, NULL, NULL),
(180, '	Saudi Arabia 	', NULL, 180, NULL, NULL),
(181, '	Senegal 	', NULL, 181, NULL, NULL),
(182, '	Serbia 	', NULL, 182, NULL, NULL),
(183, '	Seychelles 	', NULL, 183, NULL, NULL),
(184, '	Sierra Leone 	', NULL, 184, NULL, NULL),
(185, '	Singapore 	', NULL, 185, NULL, NULL),
(186, '	Slovakia 	', NULL, 186, NULL, NULL),
(187, '	Slovenia 	', NULL, 187, NULL, NULL),
(188, '	Solomon Islands 	', NULL, 188, NULL, NULL),
(189, '	Somalia 	', NULL, 189, NULL, NULL),
(190, '	South Africa 	', NULL, 190, NULL, NULL),
(191, '	Spain 	', NULL, 191, NULL, NULL),
(192, '	Sri Lanka 	', NULL, 192, NULL, NULL),
(193, '	Sudan 	', NULL, 193, NULL, NULL),
(194, '	Suriname 	', NULL, 194, NULL, NULL),
(195, '	Swaziland 	', NULL, 195, NULL, NULL),
(196, '	Sweden 	', NULL, 196, NULL, NULL),
(197, '	Switzerland 	', NULL, 197, NULL, NULL),
(198, '	Syria 	', NULL, 198, NULL, NULL),
(199, '	Taiwan 	', NULL, 199, NULL, NULL),
(200, '	Tajikistan 	', NULL, 200, NULL, NULL),
(201, '	Tanzania 	', NULL, 201, NULL, NULL),
(202, '	Thailand 	', NULL, 202, NULL, NULL),
(203, '	Togo 	', NULL, 203, NULL, NULL),
(204, '	Tonga 	', NULL, 204, NULL, NULL),
(205, '	Trinidad & Tobago 	', NULL, 205, NULL, NULL),
(206, '	Tunisia 	', NULL, 206, NULL, NULL),
(207, '	Turkey 	', NULL, 207, NULL, NULL),
(208, '	Turkmenistan 	', NULL, 208, NULL, NULL),
(209, '	Turks & Caicos Is 	', NULL, 209, NULL, NULL),
(210, '	Tuvalu 	', NULL, 210, NULL, NULL),
(211, '	Uganda 	', NULL, 211, NULL, NULL),
(212, '	Ukraine 	', NULL, 212, NULL, NULL),
(213, '	United Arab Emirates 	', NULL, 213, NULL, NULL),
(214, '	United Kingdom 	', NULL, 214, NULL, NULL),
(215, '	United States 	', NULL, 215, NULL, NULL),
(216, '	Uruguay 	', NULL, 216, NULL, NULL),
(217, '	Uzbekistan 	', NULL, 217, NULL, NULL),
(218, '	Vanuatu 	', NULL, 218, NULL, NULL),
(219, '	Venezuela 	', NULL, 219, NULL, NULL),
(220, '	Vietnam 	', NULL, 220, NULL, NULL),
(221, '	Virgin Islands 	', NULL, 221, NULL, NULL),
(222, '	Wallis and Futuna 	', NULL, 222, NULL, NULL),
(223, '	West Bank 	', NULL, 223, NULL, NULL),
(224, '	Western Sahara 	', NULL, 224, NULL, NULL),
(225, '	Yemen 	', NULL, 225, NULL, NULL),
(226, '	Zambia 	', NULL, 226, NULL, NULL),
(227, '	Zimbabwe 	', NULL, 227, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_district`
--

CREATE TABLE `tb_district` (
  `id` int(11) NOT NULL,
  `district` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `id_province` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `has_child` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_district`
--

INSERT INTO `tb_district` (`id`, `district`, `title`, `id_province`, `description`, `has_child`) VALUES
(1, '	Chamkar Mon	', NULL, 15, NULL, NULL),
(2, '	Doun Penh Section 	', NULL, 15, NULL, NULL),
(3, '	Prampir Meakkakra	', NULL, 15, NULL, NULL),
(4, '	Tuol Kouk 	', NULL, 15, NULL, NULL),
(5, '	Dangkao 	', NULL, 15, NULL, NULL),
(6, '	Mean Chey 	', NULL, 15, NULL, NULL),
(7, '	Russey Keo 	', NULL, 15, NULL, NULL),
(8, '	Sen Sok 	', NULL, 15, NULL, NULL),
(9, '	Pou Senchey 	', NULL, 15, NULL, NULL),
(10, '	Chrouy Changvar 	', NULL, 15, NULL, NULL),
(11, '	Preaek Pnov 	', NULL, 15, NULL, NULL),
(12, '	Chbar Ampov	', NULL, 15, NULL, NULL),
(13, '	Mongkol Borei	', NULL, 1, NULL, NULL),
(14, '	Phnum Srok	', NULL, 1, NULL, NULL),
(15, '	Preah Netr Preah	', NULL, 1, NULL, NULL),
(16, '	Ou Chrov	', NULL, 1, NULL, NULL),
(17, '	Serei Saophoan	', NULL, 1, NULL, NULL),
(18, '	Thma Puok	', NULL, 1, NULL, NULL),
(19, '	Svay Chek	', NULL, 1, NULL, NULL),
(20, '	Malai	', NULL, 1, NULL, NULL),
(21, '	Paoy Paet Municipality	', NULL, 1, NULL, NULL),
(22, '	Banan	', NULL, 2, NULL, NULL),
(23, '	Thma Koul	', NULL, 2, NULL, NULL),
(24, '	Battambang Municipality	', NULL, 2, NULL, NULL),
(25, '	Bavel	', NULL, 2, NULL, NULL),
(26, '	Ek Phnom	', NULL, 2, NULL, NULL),
(27, '	Moung Ruessi	', NULL, 2, NULL, NULL),
(28, '	Rotanak Mondol	', NULL, 2, NULL, NULL),
(29, '	Sangkae	', NULL, 2, NULL, NULL),
(30, '	Samlout	', NULL, 2, NULL, NULL),
(31, '	Sampov Loun	', NULL, 2, NULL, NULL),
(32, '	Phnum Proek	', NULL, 2, NULL, NULL),
(33, '	Kamrieng	', NULL, 2, NULL, NULL),
(34, '	Koas Krala	', NULL, 2, NULL, NULL),
(35, '	Rukhak Kiri	', NULL, 2, NULL, NULL),
(36, '	Batheay	', NULL, 3, NULL, NULL),
(37, '	Chamkar Leu	', NULL, 3, NULL, NULL),
(38, '	Cheung Prey	', NULL, 3, NULL, NULL),
(39, '	Kampong Cham	', NULL, 3, NULL, NULL),
(40, '	Kampong Siem	', NULL, 3, NULL, NULL),
(41, '	Kang Meas	', NULL, 3, NULL, NULL),
(42, '	Koh Sotin	', NULL, 3, NULL, NULL),
(43, '	Prey Chhor	', NULL, 3, NULL, NULL),
(44, '	Srey Santhor	', NULL, 3, NULL, NULL),
(45, '	Stueng Trang	', NULL, 3, NULL, NULL),
(46, '	Baribour	', NULL, 4, NULL, NULL),
(47, '	Chol Kiri	', NULL, 4, NULL, NULL),
(48, '	Kampong Chhnang	', NULL, 4, NULL, NULL),
(49, '	Kampong Leaeng	', NULL, 4, NULL, NULL),
(50, '	Kampong Tralach	', NULL, 4, NULL, NULL),
(51, '	Rolea B\'ier	', NULL, 4, NULL, NULL),
(52, '	Sameakki Mean Chey	', NULL, 4, NULL, NULL),
(53, '	Tuek Phos	', NULL, 4, NULL, NULL),
(54, '	Basedth	', NULL, 5, NULL, NULL),
(55, '	Chbar Mon	', NULL, 5, NULL, NULL),
(56, '	Kong Pisei	', NULL, 5, NULL, NULL),
(57, '	Aoral	', NULL, 5, NULL, NULL),
(58, '	Odongk	', NULL, 5, NULL, NULL),
(59, '	Phnom Sruoch	', NULL, 5, NULL, NULL),
(60, '	Samraong Tong	', NULL, 5, NULL, NULL),
(61, '	Thpong	', NULL, 5, NULL, NULL),
(62, '	Baray	', NULL, 6, NULL, NULL),
(63, '	Kampong Svay	', NULL, 6, NULL, NULL),
(64, '	Stueng Saen	', NULL, 6, NULL, NULL),
(65, '	Prasat Balangk	', NULL, 6, NULL, NULL),
(66, '	Prasat Sambour	', NULL, 6, NULL, NULL),
(67, '	Sandaan	', NULL, 6, NULL, NULL),
(68, '	Santuk	', NULL, 6, NULL, NULL),
(69, '	Stoung 	', NULL, 6, NULL, NULL),
(70, '	Angkor Chey	', NULL, 7, NULL, NULL),
(71, '	Banteay Meas	', NULL, 7, NULL, NULL),
(72, '	Chhuk	', NULL, 7, NULL, NULL),
(73, '	Chum Kiri	', NULL, 7, NULL, NULL),
(74, '	Dang Tong	', NULL, 7, NULL, NULL),
(75, '	Kampong Trach	', NULL, 7, NULL, NULL),
(76, '	Tuek Chhou	', NULL, 7, NULL, NULL),
(77, '	Kampot	', NULL, 7, NULL, NULL),
(78, '	Kandal Stueng 	', NULL, 8, NULL, NULL),
(79, '	Kien Svay 	', NULL, 8, NULL, NULL),
(80, '	Khsach Kandal	', NULL, 8, NULL, NULL),
(81, '	Kaoh Thum	', NULL, 8, NULL, NULL),
(82, '	Leuk Daek	', NULL, 8, NULL, NULL),
(83, '	Lvea Aem	', NULL, 8, NULL, NULL),
(84, '	Mukh Kampul	', NULL, 8, NULL, NULL),
(85, '	Angk Snuol	', NULL, 8, NULL, NULL),
(86, '	Ponhea Lueu	', NULL, 8, NULL, NULL),
(87, '	S\'ang	', NULL, 8, NULL, NULL),
(88, '	Ta Khmau	', NULL, 8, NULL, NULL),
(89, '	Damnak Chang\'aeur)	', NULL, 9, NULL, NULL),
(90, '	Kep	', NULL, 9, NULL, NULL),
(91, '	Botum Sakor	', NULL, 10, NULL, NULL),
(92, '	Kiri Sakor	', NULL, 10, NULL, NULL),
(93, '	Khemara Phoumin	', NULL, 10, NULL, NULL),
(94, '	Smach Mean Chey	', NULL, 10, NULL, NULL),
(95, '	Mondol Seima	', NULL, 10, NULL, NULL),
(96, '	Srae Ambel	', NULL, 10, NULL, NULL),
(97, '	Thma Bang	', NULL, 10, NULL, NULL),
(98, '	Chhloung 	', NULL, 11, NULL, NULL),
(99, '	Kratié	', NULL, 11, NULL, NULL),
(100, '	Preaek Prasab	', NULL, 11, NULL, NULL),
(101, '	Sambour	', NULL, 11, NULL, NULL),
(102, '	Snuol	', NULL, 11, NULL, NULL),
(103, '	Chitr Borie	', NULL, 11, NULL, NULL),
(104, '	Kaev Seima 	', NULL, 12, NULL, NULL),
(105, '	Kaoh Nheaek	', NULL, 12, NULL, NULL),
(106, '	Ou Reang 	', NULL, 12, NULL, NULL),
(107, '	Pechr Chenda 	', NULL, 12, NULL, NULL),
(108, '	Saen Monourom	', NULL, 12, NULL, NULL),
(109, '	Anlong Veaeng 	', NULL, 13, NULL, NULL),
(110, '	Banteay Ampil 	', NULL, 13, NULL, NULL),
(111, '	Chong Kal 	', NULL, 13, NULL, NULL),
(112, '	Samraong 	', NULL, 13, NULL, NULL),
(113, '	Trapeang Prasat	', NULL, 13, NULL, NULL),
(114, '	Pailin Municipality	', NULL, 14, NULL, NULL),
(115, '	Sala Krau	', NULL, 14, NULL, NULL),
(116, '	Chey Saen	', NULL, 17, NULL, NULL),
(117, '	Chhaeb	', NULL, 17, NULL, NULL),
(118, '	Choam Khsant	', NULL, 17, NULL, NULL),
(119, '	Kuleaen	', NULL, 17, NULL, NULL),
(120, '	Rovieng	', NULL, 17, NULL, NULL),
(121, '	Sangkom Thmei	', NULL, 17, NULL, NULL),
(122, '	Tbaeng Mean Chey	', NULL, 17, NULL, NULL),
(123, '	Bakan	', NULL, 19, NULL, NULL),
(124, '	Kandieng	', NULL, 19, NULL, NULL),
(125, '	Krakor	', NULL, 19, NULL, NULL),
(126, '	Phnum Kravanh	', NULL, 19, NULL, NULL),
(127, '	Pursat Municipality	', NULL, 19, NULL, NULL),
(128, '	Veal Veaeng	', NULL, 19, NULL, NULL),
(129, '	Ba Phnum	', NULL, 18, NULL, NULL),
(130, '	Kamchay Mear	', NULL, 18, NULL, NULL),
(131, '	Kampong Trabaek 	', NULL, 18, NULL, NULL),
(132, '	Kanhchriech 	', NULL, 18, NULL, NULL),
(133, '	Me Sang 	', NULL, 18, NULL, NULL),
(134, '	Peam Chor 	', NULL, 18, NULL, NULL),
(135, '	Peam Ro	', NULL, 18, NULL, NULL),
(136, '	Pea Reang 	', NULL, 18, NULL, NULL),
(137, '	Preah Sdach	', NULL, 18, NULL, NULL),
(138, '	Prey Veaeng	', NULL, 18, NULL, NULL),
(139, '	Kampong Leav	', NULL, 18, NULL, NULL),
(140, '	Sithor Kandal	', NULL, 18, NULL, NULL),
(141, '	Pea Reang	', NULL, 18, NULL, NULL),
(142, '	Andoung Meas	', NULL, 20, NULL, NULL),
(143, '	Banlung	', NULL, 20, NULL, NULL),
(144, '	Bar Kaev	', NULL, 20, NULL, NULL),
(145, '	Koun Mom	', NULL, 20, NULL, NULL),
(146, '	Lumphat	', NULL, 20, NULL, NULL),
(147, '	Ou Chum	', NULL, 20, NULL, NULL),
(148, '	Ou Ya Dav	', NULL, 20, NULL, NULL),
(149, '	Ta Veaeng	', NULL, 20, NULL, NULL),
(150, '	Veun Sai	', NULL, 20, NULL, NULL),
(151, '	Angkor Chum	', NULL, 21, NULL, NULL),
(152, '	Angkor Thom	', NULL, 21, NULL, NULL),
(153, '	Banteay Srei	', NULL, 21, NULL, NULL),
(154, '	Chi Kraeng	', NULL, 21, NULL, NULL),
(155, '	Kralanh	', NULL, 21, NULL, NULL),
(156, '	Puok	', NULL, 21, NULL, NULL),
(157, '	Prasat Bakong	', NULL, 21, NULL, NULL),
(158, '	Siem Reap	', NULL, 21, NULL, NULL),
(159, '	Sout Nikom	', NULL, 21, NULL, NULL),
(160, '	Srei Snam	', NULL, 21, NULL, NULL),
(161, '	Svay Leu	', NULL, 21, NULL, NULL),
(162, '	Varin	', NULL, 21, NULL, NULL),
(163, '	Preah Sihanouk	', NULL, 16, NULL, NULL),
(164, '	Prey Nob	', NULL, 16, NULL, NULL),
(165, '	Stueng Hav	', NULL, 16, NULL, NULL),
(166, '	Kampong Seila	', NULL, 16, NULL, NULL),
(167, '	Sesan	', NULL, 22, NULL, NULL),
(168, '	Siem Bouk	', NULL, 22, NULL, NULL),
(169, '	Siem Pang	', NULL, 22, NULL, NULL),
(170, '	Stung Treng	', NULL, 22, NULL, NULL),
(171, '	Thala Barivat	', NULL, 22, NULL, NULL),
(172, '	Chantrea	', NULL, 23, NULL, NULL),
(173, '	Kampong Rou	', NULL, 23, NULL, NULL),
(174, '	Rumduol	', NULL, 23, NULL, NULL),
(175, '	Romeas Haek	', NULL, 23, NULL, NULL),
(176, '	Svay Chrum	', NULL, 23, NULL, NULL),
(177, '	Svay Rieng	', NULL, 23, NULL, NULL),
(178, '	Svay Teab	', NULL, 23, NULL, NULL),
(179, '	Bavet	', NULL, 23, NULL, NULL),
(180, '	Angkor Borei 	', NULL, 24, NULL, NULL),
(181, '	Bati 	', NULL, 24, NULL, NULL),
(182, '	Bourei Cholsar	', NULL, 24, NULL, NULL),
(183, '	Kiri Vong	', NULL, 24, NULL, NULL),
(184, '	Kaoh Andaet	', NULL, 24, NULL, NULL),
(185, '	Prey Kabbas	', NULL, 24, NULL, NULL),
(186, '	Samraong	', NULL, 24, NULL, NULL),
(187, '	Doun Kaev	', NULL, 24, NULL, NULL),
(188, '	Dambae	', NULL, 25, NULL, 1),
(189, '	Krouch Chhmar	', NULL, 25, NULL, NULL),
(190, '	Memot	', NULL, 25, NULL, NULL),
(191, '	Ou Reang Ov	', NULL, 25, NULL, NULL),
(192, '	Ponhea Kraek	', NULL, 25, NULL, NULL),
(193, '	Tboung Khmum	', NULL, 25, NULL, NULL),
(194, '	Suong	', NULL, 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_group`
--

CREATE TABLE `tb_group` (
  `id` int(11) NOT NULL,
  `group` varchar(150) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(150) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `id_class` int(11) DEFAULT NULL,
  `id_class_action` int(11) DEFAULT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `id_group` int(11) DEFAULT NULL,
  `id_staff` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_province`
--

CREATE TABLE `tb_province` (
  `id` int(11) NOT NULL,
  `province` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `id_country` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `has_child` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_province`
--

INSERT INTO `tb_province` (`id`, `province`, `title`, `id_country`, `description`, `has_child`) VALUES
(1, '	Banteay Meanchey	', NULL, 35, NULL, 1),
(2, '	Battambang	', NULL, 35, NULL, 1),
(3, '	Kampong Cham	', NULL, 35, NULL, 1),
(4, '	Kampong Chhnang	', NULL, 35, NULL, 1),
(5, '	Kampong Speu	', NULL, 35, NULL, 1),
(6, '	Kampong Thom	', NULL, 35, NULL, 1),
(7, '	Kampot	', NULL, 35, NULL, 1),
(8, '	Kandal	', NULL, 35, NULL, 1),
(9, '	Kep	', NULL, 35, NULL, 1),
(10, '	Koh Kong	', NULL, 35, NULL, 1),
(11, '	Kratie	', NULL, 35, NULL, 1),
(12, '	Mondul Kiri	', NULL, 35, NULL, 1),
(13, '	Otdar Meanchey	', NULL, 35, NULL, 1),
(14, '	Pailin	', NULL, 35, NULL, 1),
(15, '	Phnom Penh	', NULL, 35, NULL, 1),
(16, '	Preah Sihanouk	', NULL, 35, NULL, 1),
(17, '	Preah Vihear	', NULL, 35, NULL, 1),
(18, '	Prey Veng	', NULL, 35, NULL, 1),
(19, '	Pursat	', NULL, 35, NULL, 1),
(20, '	Ratanak Kiri	', NULL, 35, NULL, 1),
(21, '	Siem Reap	', NULL, 35, NULL, 1),
(22, '	Stung Treng	', NULL, 35, NULL, 1),
(23, '	Svay Rieng	', NULL, 35, NULL, 1),
(24, '	Takeo	', NULL, 35, NULL, 1),
(25, 'Tboung Khmum', NULL, 35, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_region`
--

CREATE TABLE `tb_region` (
  `id` int(11) NOT NULL,
  `region` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `id_region_parent` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_region`
--

INSERT INTO `tb_region` (`id`, `region`, `title`, `id_region_parent`, `description`) VALUES
(1, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(2, '	EASTERN EUROPE                     	', NULL, NULL, NULL),
(3, '	NORTHERN AFRICA                    	', NULL, NULL, NULL),
(4, '	OCEANIA                            	', NULL, NULL, NULL),
(5, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(6, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(7, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(8, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(9, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(10, '	C.W. OF IND. STATES 	', NULL, NULL, NULL),
(11, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(12, '	OCEANIA                            	', NULL, NULL, NULL),
(13, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(14, '	C.W. OF IND. STATES 	', NULL, NULL, NULL),
(15, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(16, '	NEAR EAST                          	', NULL, NULL, NULL),
(17, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(18, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(19, '	C.W. OF IND. STATES 	', NULL, NULL, NULL),
(20, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(21, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(22, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(23, '	NORTHERN AMERICA                   	', NULL, NULL, NULL),
(24, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(25, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(26, '	EASTERN EUROPE                     	', NULL, NULL, NULL),
(27, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(28, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(29, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(30, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(31, '	EASTERN EUROPE                     	', NULL, NULL, NULL),
(32, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(33, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(34, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(35, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(36, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(37, '	NORTHERN AMERICA                   	', NULL, NULL, NULL),
(38, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(39, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(40, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(41, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(42, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(43, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(44, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(45, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(46, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(47, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(48, '	OCEANIA                            	', NULL, NULL, NULL),
(49, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(50, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(51, '	EASTERN EUROPE                     	', NULL, NULL, NULL),
(52, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(53, '	NEAR EAST                          	', NULL, NULL, NULL),
(54, '	EASTERN EUROPE                     	', NULL, NULL, NULL),
(55, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(56, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(57, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(58, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(59, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(60, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(61, '	NORTHERN AFRICA                    	', NULL, NULL, NULL),
(62, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(63, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(64, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(65, '	BALTICS                            	', NULL, NULL, NULL),
(66, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(67, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(68, '	OCEANIA                            	', NULL, NULL, NULL),
(69, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(70, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(71, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(72, '	OCEANIA                            	', NULL, NULL, NULL),
(73, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(74, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(75, '	NEAR EAST                          	', NULL, NULL, NULL),
(76, '	C.W. OF IND. STATES 	', NULL, NULL, NULL),
(77, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(78, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(79, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(80, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(81, '	NORTHERN AMERICA                   	', NULL, NULL, NULL),
(82, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(83, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(84, '	OCEANIA                            	', NULL, NULL, NULL),
(85, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(86, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(87, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(88, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(89, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(90, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(91, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(92, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(93, '	EASTERN EUROPE                     	', NULL, NULL, NULL),
(94, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(95, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(96, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(97, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(98, '	NEAR EAST                          	', NULL, NULL, NULL),
(99, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(100, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(101, '	NEAR EAST                          	', NULL, NULL, NULL),
(102, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(103, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(104, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(105, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(106, '	NEAR EAST                          	', NULL, NULL, NULL),
(107, '	C.W. OF IND. STATES 	', NULL, NULL, NULL),
(108, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(109, '	OCEANIA                            	', NULL, NULL, NULL),
(110, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(111, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(112, '	NEAR EAST                          	', NULL, NULL, NULL),
(113, '	C.W. OF IND. STATES 	', NULL, NULL, NULL),
(114, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(115, '	BALTICS                            	', NULL, NULL, NULL),
(116, '	NEAR EAST                          	', NULL, NULL, NULL),
(117, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(118, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(119, '	NORTHERN AFRICA                    	', NULL, NULL, NULL),
(120, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(121, '	BALTICS                            	', NULL, NULL, NULL),
(122, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(123, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(124, '	EASTERN EUROPE                     	', NULL, NULL, NULL),
(125, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(126, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(127, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(128, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(129, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(130, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(131, '	OCEANIA                            	', NULL, NULL, NULL),
(132, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(133, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(134, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(135, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(136, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(137, '	OCEANIA                            	', NULL, NULL, NULL),
(138, '	C.W. OF IND. STATES 	', NULL, NULL, NULL),
(139, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(140, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(141, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(142, '	NORTHERN AFRICA                    	', NULL, NULL, NULL),
(143, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(144, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(145, '	OCEANIA                            	', NULL, NULL, NULL),
(146, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(147, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(148, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(149, '	OCEANIA                            	', NULL, NULL, NULL),
(150, '	OCEANIA                            	', NULL, NULL, NULL),
(151, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(152, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(153, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(154, '	OCEANIA                            	', NULL, NULL, NULL),
(155, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(156, '	NEAR EAST                          	', NULL, NULL, NULL),
(157, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(158, '	OCEANIA                            	', NULL, NULL, NULL),
(159, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(160, '	OCEANIA                            	', NULL, NULL, NULL),
(161, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(162, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(163, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(164, '	EASTERN EUROPE                     	', NULL, NULL, NULL),
(165, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(166, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(167, '	NEAR EAST                          	', NULL, NULL, NULL),
(168, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(169, '	EASTERN EUROPE                     	', NULL, NULL, NULL),
(170, '	C.W. OF IND. STATES 	', NULL, NULL, NULL),
(171, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(172, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(173, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(174, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(175, '	NORTHERN AMERICA                   	', NULL, NULL, NULL),
(176, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(177, '	OCEANIA                            	', NULL, NULL, NULL),
(178, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(179, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(180, '	NEAR EAST                          	', NULL, NULL, NULL),
(181, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(182, '	EASTERN EUROPE                     	', NULL, NULL, NULL),
(183, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(184, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(185, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(186, '	EASTERN EUROPE                     	', NULL, NULL, NULL),
(187, '	EASTERN EUROPE                     	', NULL, NULL, NULL),
(188, '	OCEANIA                            	', NULL, NULL, NULL),
(189, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(190, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(191, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(192, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(193, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(194, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(195, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(196, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(197, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(198, '	NEAR EAST                          	', NULL, NULL, NULL),
(199, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(200, '	C.W. OF IND. STATES 	', NULL, NULL, NULL),
(201, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(202, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(203, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(204, '	OCEANIA                            	', NULL, NULL, NULL),
(205, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(206, '	NORTHERN AFRICA                    	', NULL, NULL, NULL),
(207, '	NEAR EAST                          	', NULL, NULL, NULL),
(208, '	C.W. OF IND. STATES 	', NULL, NULL, NULL),
(209, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(210, '	OCEANIA                            	', NULL, NULL, NULL),
(211, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(212, '	C.W. OF IND. STATES 	', NULL, NULL, NULL),
(213, '	NEAR EAST                          	', NULL, NULL, NULL),
(214, '	WESTERN EUROPE                     	', NULL, NULL, NULL),
(215, '	NORTHERN AMERICA                   	', NULL, NULL, NULL),
(216, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(217, '	C.W. OF IND. STATES 	', NULL, NULL, NULL),
(218, '	OCEANIA                            	', NULL, NULL, NULL),
(219, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(220, '	ASIA (EX. NEAR EAST)         	', NULL, NULL, NULL),
(221, '	LATIN AMER. & CARIB    	', NULL, NULL, NULL),
(222, '	OCEANIA                            	', NULL, NULL, NULL),
(223, '	NEAR EAST                          	', NULL, NULL, NULL),
(224, '	NORTHERN AFRICA                    	', NULL, NULL, NULL),
(225, '	NEAR EAST                          	', NULL, NULL, NULL),
(226, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL),
(227, '	SUB-SAHARAN AFRICA                 	', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_staff`
--

CREATE TABLE `tb_staff` (
  `id` int(11) NOT NULL,
  `id_code` varchar(11) DEFAULT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `release_at` varchar(255) DEFAULT NULL,
  `del` int(2) NOT NULL,
  `description` varchar(200) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `old_password` varchar(200) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_staff`
--

INSERT INTO `tb_staff` (`id`, `id_code`, `firstname`, `lastname`, `email`, `dob`, `date_create`, `update_at`, `release_at`, `del`, `description`, `password`, `old_password`, `token`) VALUES
(1, 'CAM0001', 'theng', 'moak', 'theng2moak@gmail.com', '1990-01-05 00:00:00', '2018-12-30 00:00:00', NULL, NULL, 0, '', '202cb962ac59075b964b07152d234b70', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_villages`
--

CREATE TABLE `tb_villages` (
  `id` int(11) NOT NULL,
  `villages` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `id_commune` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `has_child` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_villages`
--

INSERT INTO `tb_villages` (`id`, `villages`, `title`, `id_commune`, `description`, `has_child`) VALUES
(1, '		Kouk Sralau	', NULL, 1, NULL, NULL),
(2, '		Ta Ream	', NULL, 1, NULL, NULL),
(3, '		Ta Meakh Chas	', NULL, 1, NULL, NULL),
(4, '		Ta Meakh Thmei	', NULL, 1, NULL, NULL),
(5, '		Cheach Kaeut	', NULL, 1, NULL, NULL),
(6, '		Cheach Cheung	', NULL, 1, NULL, NULL),
(7, '		Cheach Thum	', NULL, 1, NULL, NULL),
(8, '		Trapeang Chrey	', NULL, 1, NULL, NULL),
(9, '		Koun Trom	', NULL, 1, NULL, NULL),
(10, '		Stueng Ta Thok	', NULL, 1, NULL, NULL),
(11, '		Char Thum	', NULL, 1, NULL, NULL),
(12, '		Svay Pak	', NULL, 1, NULL, NULL),
(13, '		Ponleak	', NULL, 1, NULL, NULL),
(14, '		Dambae	', NULL, 2, NULL, NULL),
(15, '		Chrey Phluk	', NULL, 2, NULL, NULL),
(16, '		Kakaoh	', NULL, 2, NULL, NULL),
(17, '		Trapeang Ruessei	', NULL, 2, NULL, NULL),
(18, '		Khcheay	', NULL, 2, NULL, NULL),
(19, '		Svay Popeah	', NULL, 2, NULL, NULL),
(20, '		Thnal	', NULL, 2, NULL, NULL),
(21, '		Chey Sambatt	', NULL, 2, NULL, NULL),
(22, '		Sieng Khveang	', NULL, 3, NULL, NULL),
(23, '		Kouk Char	', NULL, 3, NULL, NULL),
(24, '		Trapeang Srangae	', NULL, 3, NULL, NULL),
(25, '		Kouk Srok	', NULL, 3, NULL, NULL),
(26, '		Chheu Teal Chrum	', NULL, 3, NULL, NULL),
(27, '		Trapeang Ruessei	', NULL, 3, NULL, NULL),
(28, '		Veal Andaeuk	', NULL, 3, NULL, NULL),
(29, '		Trapeang Chhuk	', NULL, 3, NULL, NULL),
(30, '		SomBor Meas	', NULL, 3, NULL, NULL),
(31, '		Khnor	', NULL, 4, NULL, NULL),
(32, '		Pongro	', NULL, 4, NULL, NULL),
(33, '		Chambak	', NULL, 4, NULL, NULL),
(34, '		Neang Teut	', NULL, 4, NULL, NULL),
(35, '		Sangkom	', NULL, 4, NULL, NULL),
(36, '		Kampong Reang	', NULL, 5, NULL, NULL),
(37, '		Veal Touch	', NULL, 5, NULL, NULL),
(38, '		Svay Kambet	', NULL, 5, NULL, NULL),
(39, '		Krasang	', NULL, 5, NULL, NULL),
(40, '		Sampoar	', NULL, 5, NULL, NULL),
(41, '		Andoung Lngieng	', NULL, 5, NULL, NULL),
(42, '		Ta Kaev	', NULL, 5, NULL, NULL),
(43, '		Tuol Pras	', NULL, 5, NULL, NULL),
(44, '		Chi Theang	', NULL, 5, NULL, NULL),
(45, '		Chhung Ta Sau	', NULL, 5, NULL, NULL),
(46, '		Srerksach	', NULL, 5, NULL, NULL),
(47, '		Keangthmey	', NULL, 5, NULL, NULL),
(48, '		BreakChorChomren	', NULL, 5, NULL, NULL),
(49, '		Bengthmey	', NULL, 5, NULL, NULL),
(50, '		Sethaseanchey	', NULL, 5, NULL, NULL),
(51, '		Donghar	', NULL, 5, NULL, NULL),
(52, '		Hompark	', NULL, 5, NULL, NULL),
(53, '		Trabaek	', NULL, 6, NULL, NULL),
(54, '		Tuek Chrov	', NULL, 6, NULL, NULL),
(55, '		Me Sar	', NULL, 6, NULL, NULL),
(56, '		Khley	', NULL, 6, NULL, NULL),
(57, '		Ph\'av	', NULL, 6, NULL, NULL),
(58, '		Srama	', NULL, 6, NULL, NULL),
(59, '		Choam Trakuon	', NULL, 6, NULL, NULL),
(60, '		Krasang	', NULL, 6, NULL, NULL),
(61, '		Srae Veaeng	', NULL, 6, NULL, NULL),
(62, '		Banghaeur Khlaeng	', NULL, 7, NULL, NULL),
(63, '		Srae Kak	', NULL, 7, NULL, NULL),
(64, '		Chambak	', NULL, 7, NULL, NULL),
(65, '		Pralaoh	', NULL, 7, NULL, NULL),
(66, '		Trapeang Pring	', NULL, 7, NULL, NULL),
(67, '		Kampraeus	', NULL, 7, NULL, NULL),
(68, '		Srae Prang	', NULL, 7, NULL, NULL),
(69, '		Bos Khnor	', NULL, 7, NULL, NULL),
(70, '		Chi Trun	', NULL, 7, NULL, NULL),
(71, '		Tuol Sambour	', NULL, 7, NULL, NULL),
(72, '		Cheysoksan	', NULL, 7, NULL, NULL),
(73, '		Sarmarkom 16 	', NULL, 7, NULL, NULL),
(74, '		Senmornorrom	', NULL, 7, NULL, NULL),
(75, '		Chhuk	', NULL, 8, NULL, NULL),
(76, '		Phka Doung	', NULL, 8, NULL, NULL),
(77, '		Krabei Kreak	', NULL, 8, NULL, NULL),
(78, '		Chravak Daek	', NULL, 8, NULL, NULL),
(79, '		Baray	', NULL, 8, NULL, NULL),
(80, '		Ruom Vinh	', NULL, 8, NULL, NULL),
(81, '		Srah	', NULL, 8, NULL, NULL),
(82, '		Bos Svay	', NULL, 8, NULL, NULL),
(83, '	Preaek Ta Hok	', NULL, 9, NULL, NULL),
(84, '	Chumnik	', NULL, 9, NULL, NULL),
(85, '	Svay Damnak	', NULL, 9, NULL, NULL),
(86, 'Phum Muoy', NULL, 10, NULL, NULL),
(87, 'Phum Pir', NULL, 10, NULL, NULL),
(88, 'Phum Bei', NULL, 10, NULL, NULL),
(89, 'Phum Buon', NULL, 10, NULL, NULL),
(90, 'Phum Pram', NULL, 10, NULL, NULL),
(91, 'Phum Prammuoy', NULL, 10, NULL, NULL),
(92, 'Beipey', NULL, 11, NULL, NULL),
(93, 'Kaoh Traeng', NULL, 11, NULL, NULL),
(94, 'Kaoh Meun Nong', NULL, 11, NULL, NULL),
(95, 'Chuor Kandal', NULL, 11, NULL, NULL),
(96, 'Samraong', NULL, 12, NULL, NULL),
(97, 'Daeum Chrey', NULL, 12, NULL, NULL),
(98, 'Krouch Chhmar Leu', NULL, 12, NULL, NULL),
(99, 'Krouch Chhmar Kraom', NULL, 12, NULL, NULL),
(100, 'Khsach Prachheh Leu', NULL, 12, NULL, NULL),
(101, 'Khsach Prachheh Kandal', NULL, 12, NULL, NULL),
(102, 'Khsach Prachheh Kraom', NULL, 12, NULL, NULL),
(103, '	Tuol Ok	', NULL, 19, NULL, NULL),
(104, '	Mukh Phnum	', NULL, 19, NULL, NULL),
(105, '	Tuol Roka	', NULL, 19, NULL, NULL),
(106, '	Ta Kao	', NULL, 19, NULL, NULL),
(107, '	Tuol Snuol	', NULL, 19, NULL, NULL),
(108, '	Tuol Trach	', NULL, 19, NULL, NULL),
(109, '	Sangkom Mean Chey	', NULL, 19, NULL, NULL),
(110, '	Cheung Chrang	', NULL, 19, NULL, NULL),
(111, '	Ta Pav	', NULL, 19, NULL, NULL),
(112, '	Thnal Bei Maetr	', NULL, 19, NULL, NULL),
(113, '	Chamraeun	', NULL, 19, NULL, NULL),
(114, '	Phop Thmei 	', NULL, 19, NULL, NULL),
(115, '	Kdol Leu	', NULL, 18, NULL, NULL),
(116, '	Kdol Kandal	', NULL, 18, NULL, NULL),
(117, '	Ti Muoy	', NULL, 18, NULL, NULL),
(118, '	Ti Pir	', NULL, 18, NULL, NULL),
(119, '	Ti Bei	', NULL, 18, NULL, NULL),
(120, '	Ti Buon	', NULL, 18, NULL, NULL),
(121, '	Ti Pram	', NULL, 18, NULL, NULL),
(122, '	Kdol Kraom	', NULL, 18, NULL, NULL),
(123, '	Phum Ti Muoy	', NULL, 17, NULL, NULL),
(124, '	Phum Ti Pir	', NULL, 17, NULL, NULL),
(125, '	Phum Ti Bei	', NULL, 17, NULL, NULL),
(126, '	Phum Ti Buon	', NULL, 17, NULL, NULL),
(127, '	Phum Ti Pram	', NULL, 17, NULL, NULL),
(128, '	Phum Ti Prammuoy	', NULL, 17, NULL, NULL),
(129, '	Phum Ti Muoy	', NULL, 16, NULL, NULL),
(130, '	Phum Ti Pir	', NULL, 16, NULL, NULL),
(131, '	Phum Ti Bei	', NULL, 16, NULL, NULL),
(132, '	Phum Ti Buon	', NULL, 16, NULL, NULL),
(133, '	Phum Ti Pram	', NULL, 16, NULL, NULL),
(134, '	Phum Ti Prammuoy	', NULL, 16, NULL, NULL),
(135, '	Phum Ti Prampir	', NULL, 16, NULL, NULL),
(136, '	Phum Ti Muoy	', NULL, 15, NULL, NULL),
(137, '	Phum Ti Pir	', NULL, 15, NULL, NULL),
(138, '	Phum Ti Bei	', NULL, 15, NULL, NULL),
(139, '	Phum Ti Buon	', NULL, 15, NULL, NULL),
(140, '	Phum Ti Pram	', NULL, 15, NULL, NULL),
(141, '	Phum Ti Prammuoy	', NULL, 15, NULL, NULL),
(142, '	Ampil	', NULL, 14, NULL, NULL),
(143, '	Poes	', NULL, 14, NULL, NULL),
(144, '	Dei Doh	', NULL, 14, NULL, NULL),
(145, '	Tuol Sambatt 	', NULL, 14, NULL, NULL),
(146, '	Saoy Muoy	', NULL, 13, NULL, NULL),
(147, '	Saoy Pir	', NULL, 13, NULL, NULL),
(148, '	Preaek Krouch	', NULL, 13, NULL, NULL),
(149, '	Ampil	', NULL, 13, NULL, NULL),
(150, '	Kaoh Phal 	', NULL, 13, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_access`
--
ALTER TABLE `tb_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_class_action`
--
ALTER TABLE `tb_class_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_communes`
--
ALTER TABLE `tb_communes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_country`
--
ALTER TABLE `tb_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_district`
--
ALTER TABLE `tb_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_group`
--
ALTER TABLE `tb_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_province`
--
ALTER TABLE `tb_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_region`
--
ALTER TABLE `tb_region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_staff`
--
ALTER TABLE `tb_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_villages`
--
ALTER TABLE `tb_villages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_access`
--
ALTER TABLE `tb_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_class_action`
--
ALTER TABLE `tb_class_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_communes`
--
ALTER TABLE `tb_communes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_country`
--
ALTER TABLE `tb_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `tb_district`
--
ALTER TABLE `tb_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `tb_group`
--
ALTER TABLE `tb_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_province`
--
ALTER TABLE `tb_province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_region`
--
ALTER TABLE `tb_region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `tb_staff`
--
ALTER TABLE `tb_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_villages`
--
ALTER TABLE `tb_villages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
