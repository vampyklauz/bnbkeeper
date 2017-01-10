-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2017 at 03:59 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bnbkeepers`
--

-- --------------------------------------------------------

--
-- Table structure for table `req_access`
--

CREATE TABLE `req_access` (
  `access_id` bigint(20) NOT NULL,
  `access_name` varchar(100) NOT NULL,
  `access_value` longtext NOT NULL,
  `access_status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `req_access`
--

INSERT INTO `req_access` (`access_id`, `access_name`, `access_value`, `access_status`) VALUES
(1, 'Super Admin', 'a:5:{i:0;a:4:{s:2:"id";s:2:"18";s:4:"name";s:6:"Orders";s:4:"icon";s:7:"fa-list";s:4:"link";s:6:"orders";}i:1;a:4:{s:2:"id";s:2:"23";s:4:"name";s:7:"Keepers";s:4:"icon";s:8:"fa-users";s:4:"link";s:6:"keeper";}i:2;a:4:{s:2:"id";s:2:"22";s:4:"name";s:5:"Hosts";s:4:"icon";s:18:"fa-pencil-square-o";s:4:"link";s:5:"host/";}i:3;a:5:{s:2:"id";s:2:"21";s:4:"name";s:12:"Global Admin";s:4:"icon";s:7:"fa-cogs";s:4:"link";s:11:"admin_tools";s:8:"children";a:2:{i:0;a:4:{s:2:"id";s:2:"26";s:4:"name";s:11:"Create user";s:4:"icon";s:0:"";s:4:"link";s:11:"admin_tools";}i:1;a:4:{s:2:"id";s:2:"24";s:4:"name";s:9:"Franchise";s:4:"icon";s:0:"";s:4:"link";s:15:"admin/franchise";}}}i:4;a:5:{s:2:"id";s:1:"4";s:4:"name";s:9:"Devlopers";s:4:"icon";s:10:"fa-desktop";s:4:"link";s:1:"#";s:8:"children";a:7:{i:0;a:4:{s:2:"id";s:1:"5";s:4:"name";s:18:"Dashboard Settings";s:4:"icon";s:0:"";s:4:"link";s:29:"developers/dashboard_settings";}i:1;a:4:{s:2:"id";s:1:"7";s:4:"name";s:14:"dropdown Menus";s:4:"icon";s:0:"";s:4:"link";s:25:"developers/dropdown_menus";}i:2;a:5:{s:2:"id";s:1:"9";s:4:"name";s:15:"JQuery Settings";s:4:"icon";s:0:"";s:4:"link";s:1:"#";s:8:"children";a:1:{i:0;a:4:{s:2:"id";s:1:"8";s:4:"name";s:6:"Modals";s:4:"icon";s:0:"";s:4:"link";s:17:"developers/modals";}}}i:3;a:4:{s:2:"id";s:2:"11";s:4:"name";s:6:"jqGrid";s:4:"icon";s:0:"";s:4:"link";s:17:"developers/jqGrid";}i:4;a:5:{s:2:"id";s:2:"13";s:4:"name";s:13:"PHP functions";s:4:"icon";s:0:"";s:4:"link";s:1:"#";s:8:"children";a:1:{i:0;a:4:{s:2:"id";s:2:"12";s:4:"name";s:11:"Audit Trail";s:4:"icon";s:0:"";s:4:"link";s:25:"php_functions/audit_trail";}}}i:5;a:4:{s:2:"id";s:2:"14";s:4:"name";s:20:"Javascript Functions";s:4:"icon";s:0:"";s:4:"link";s:1:"#";}i:6;a:4:{s:2:"id";s:2:"10";s:4:"name";s:13:"Documentation";s:4:"icon";s:7:"fa-book";s:4:"link";s:18:"function_reference";}}}}', 0),
(4, 'Host', 'a:3:{i:0;a:4:{s:2:"id";s:1:"2";s:4:"name";s:7:"Profile";s:4:"icon";s:7:"fa-user";s:4:"link";s:12:"host/profile";}i:1;a:4:{s:2:"id";s:1:"4";s:4:"name";s:7:"Keepers";s:4:"icon";s:8:"fa-users";s:4:"link";s:6:"keeper";}i:2;a:4:{s:2:"id";s:1:"3";s:4:"name";s:6:"Orders";s:4:"icon";s:7:"fa-list";s:4:"link";s:6:"orders";}}', 0),
(2, 'Admin', 'a:1:{i:0;a:4:{s:2:"id";s:1:"2";s:4:"name";s:11:"Admin Tools";s:4:"icon";s:8:"fa-gavel";s:4:"link";s:11:"admin_tools";}}', 0),
(3, 'Keeper', 'a:2:{i:0;a:4:{s:2:"id";s:1:"2";s:4:"name";s:7:"Profile";s:4:"icon";s:7:"fa-user";s:4:"link";s:14:"keeper/profile";}i:1;a:4:{s:2:"id";s:1:"3";s:4:"name";s:6:"Orders";s:4:"icon";s:7:"fa-list";s:4:"link";s:6:"orders";}}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `req_countries`
--

CREATE TABLE `req_countries` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `req_countries`
--

INSERT INTO `req_countries` (`id`, `name`, `code`) VALUES
(1, 'Andorra', 'ad'),
(2, 'United Arab Emirates', 'ae'),
(3, 'Afghanistan', 'af'),
(4, 'Antigua and Barbuda', 'ag'),
(5, 'Anguilla', 'ai'),
(6, 'Albania', 'al'),
(7, 'Armenia', 'am'),
(8, 'Netherlands Antilles', 'an'),
(9, 'Angola', 'ao'),
(10, 'Argentina', 'ar'),
(11, 'Austria', 'at'),
(12, 'Australia', 'au'),
(13, 'Aruba', 'aw'),
(14, 'Azerbaijan', 'az'),
(15, 'Bosnia and Herzegovina', 'ba'),
(16, 'Barbados', 'bb'),
(17, 'Bangladesh', 'bd'),
(18, 'Belgium', 'be'),
(19, 'Burkina Faso', 'bf'),
(20, 'Bulgaria', 'bg'),
(21, 'Bahrain', 'bh'),
(22, 'Burundi', 'bi'),
(23, 'Benin', 'bj'),
(24, 'Bermuda', 'bm'),
(25, 'Brunei Darussalam', 'bn'),
(26, 'Bolivia', 'bo'),
(27, 'Brazil', 'br'),
(28, 'Bahamas', 'bs'),
(29, 'Bhutan', 'bt'),
(30, 'Botswana', 'bw'),
(31, 'Belarus', 'by'),
(32, 'Belize', 'bz'),
(33, 'Canada', 'ca'),
(34, 'Cocos (Keeling) Islands', 'cc'),
(35, 'Democratic Republic of the Congo', 'cd'),
(36, 'Central African Republic', 'cf'),
(37, 'Congo', 'cg'),
(38, 'Switzerland', 'ch'),
(39, 'Cote D''Ivoire (Ivory Coast)', 'ci'),
(40, 'Cook Islands', 'ck'),
(41, 'Chile', 'cl'),
(42, 'Cameroon', 'cm'),
(43, 'China', 'cn'),
(44, 'Colombia', 'co'),
(45, 'Costa Rica', 'cr'),
(46, 'Cuba', 'cu'),
(47, 'Cape Verde', 'cv'),
(48, 'Christmas Island', 'cx'),
(49, 'Cyprus', 'cy'),
(50, 'Czech Republic', 'cz'),
(51, 'Germany', 'de'),
(52, 'Djibouti', 'dj'),
(53, 'Denmark', 'dk'),
(54, 'Dominica', 'dm'),
(55, 'Dominican Republic', 'do'),
(56, 'Algeria', 'dz'),
(57, 'Ecuador', 'ec'),
(58, 'Estonia', 'ee'),
(59, 'Egypt', 'eg'),
(60, 'Western Sahara', 'eh'),
(61, 'Eritrea', 'er'),
(62, 'Spain', 'es'),
(63, 'Ethiopia', 'et'),
(64, 'Finland', 'fi'),
(65, 'Fiji', 'fj'),
(66, 'Falkland Islands (Malvinas)', 'fk'),
(67, 'Federated States of Micronesia', 'fm'),
(68, 'Faroe Islands', 'fo'),
(69, 'France', 'fr'),
(70, 'Gabon', 'ga'),
(71, 'Great Britain (UK)', 'gb'),
(72, 'Grenada', 'gd'),
(73, 'Georgia', 'ge'),
(74, 'French Guiana', 'gf'),
(75, 'NULL', 'gg'),
(76, 'Ghana', 'gh'),
(77, 'Gibraltar', 'gi'),
(78, 'Greenland', 'gl'),
(79, 'Gambia', 'gm'),
(80, 'Guinea', 'gn'),
(81, 'Guadeloupe', 'gp'),
(82, 'Equatorial Guinea', 'gq'),
(83, 'Greece', 'gr'),
(84, 'S. Georgia and S. Sandwich Islands', 'gs'),
(85, 'Guatemala', 'gt'),
(86, 'Guinea-Bissau', 'gw'),
(87, 'Guyana', 'gy'),
(88, 'Hong Kong', 'hk'),
(89, 'Honduras', 'hn'),
(90, 'Croatia (Hrvatska)', 'hr'),
(91, 'Haiti', 'ht'),
(92, 'Hungary', 'hu'),
(93, 'Indonesia', 'id'),
(94, 'Ireland', 'ie'),
(95, 'Israel', 'il'),
(96, 'India', 'in'),
(97, 'Iraq', 'iq'),
(98, 'Iran', 'ir'),
(99, 'Iceland', 'is'),
(100, 'Italy', 'it'),
(101, 'Jamaica', 'jm'),
(102, 'Jordan', 'jo'),
(103, 'Japan', 'jp'),
(104, 'Kenya', 'ke'),
(105, 'Kyrgyzstan', 'kg'),
(106, 'Cambodia', 'kh'),
(107, 'Kiribati', 'ki'),
(108, 'Comoros', 'km'),
(109, 'Saint Kitts and Nevis', 'kn'),
(110, 'Korea (North)', 'kp'),
(111, 'Korea (South)', 'kr'),
(112, 'Kuwait', 'kw'),
(113, 'Cayman Islands', 'ky'),
(114, 'Kazakhstan', 'kz'),
(115, 'Laos', 'la'),
(116, 'Lebanon', 'lb'),
(117, 'Saint Lucia', 'lc'),
(118, 'Liechtenstein', 'li'),
(119, 'Sri Lanka', 'lk'),
(120, 'Liberia', 'lr'),
(121, 'Lesotho', 'ls'),
(122, 'Lithuania', 'lt'),
(123, 'Luxembourg', 'lu'),
(124, 'Latvia', 'lv'),
(125, 'Libya', 'ly'),
(126, 'Morocco', 'ma'),
(127, 'Monaco', 'mc'),
(128, 'Moldova', 'md'),
(129, 'Madagascar', 'mg'),
(130, 'Marshall Islands', 'mh'),
(131, 'Macedonia', 'mk'),
(132, 'Mali', 'ml'),
(133, 'Myanmar', 'mm'),
(134, 'Mongolia', 'mn'),
(135, 'Macao', 'mo'),
(136, 'Northern Mariana Islands', 'mp'),
(137, 'Martinique', 'mq'),
(138, 'Mauritania', 'mr'),
(139, 'Montserrat', 'ms'),
(140, 'Malta', 'mt'),
(141, 'Mauritius', 'mu'),
(142, 'Maldives', 'mv'),
(143, 'Malawi', 'mw'),
(144, 'Mexico', 'mx'),
(145, 'Malaysia', 'my'),
(146, 'Mozambique', 'mz'),
(147, 'Namibia', 'na'),
(148, 'New Caledonia', 'nc'),
(149, 'Niger', 'ne'),
(150, 'Norfolk Island', 'nf'),
(151, 'Nigeria', 'ng'),
(152, 'Nicaragua', 'ni'),
(153, 'Netherlands', 'nl'),
(154, 'Norway', 'no'),
(155, 'Nepal', 'np'),
(156, 'Nauru', 'nr'),
(157, 'Niue', 'nu'),
(158, 'New Zealand (Aotearoa)', 'nz'),
(159, 'Oman', 'om'),
(160, 'Panama', 'pa'),
(161, 'Peru', 'pe'),
(162, 'French Polynesia', 'pf'),
(163, 'Papua New Guinea', 'pg'),
(164, 'Philippines', 'ph'),
(165, 'Pakistan', 'pk'),
(166, 'Poland', 'pl'),
(167, 'Saint Pierre and Miquelon', 'pm'),
(168, 'Pitcairn', 'pn'),
(169, 'Palestinian Territory', 'ps'),
(170, 'Portugal', 'pt'),
(171, 'Palau', 'pw'),
(172, 'Paraguay', 'py'),
(173, 'Qatar', 'qa'),
(174, 'Reunion', 're'),
(175, 'Romania', 'ro'),
(176, 'Russian Federation', 'ru'),
(177, 'Rwanda', 'rw'),
(178, 'Saudi Arabia', 'sa'),
(179, 'Solomon Islands', 'sb'),
(180, 'Seychelles', 'sc'),
(181, 'Sudan', 'sd'),
(182, 'Sweden', 'se'),
(183, 'Singapore', 'sg'),
(184, 'Saint Helena', 'sh'),
(185, 'Slovenia', 'si'),
(186, 'Svalbard and Jan Mayen', 'sj'),
(187, 'Slovakia', 'sk'),
(188, 'Sierra Leone', 'sl'),
(189, 'San Marino', 'sm'),
(190, 'Senegal', 'sn'),
(191, 'Somalia', 'so'),
(192, 'Suriname', 'sr'),
(193, 'Sao Tome and Principe', 'st'),
(194, 'El Salvador', 'sv'),
(195, 'Syria', 'sy'),
(196, 'Swaziland', 'sz'),
(197, 'Turks and Caicos Islands', 'tc'),
(198, 'Chad', 'td'),
(199, 'French Southern Territories', 'tf'),
(200, 'Togo', 'tg'),
(201, 'Thailand', 'th'),
(202, 'Tajikistan', 'tj'),
(203, 'Tokelau', 'tk'),
(204, 'Turkmenistan', 'tm'),
(205, 'Tunisia', 'tn'),
(206, 'Tonga', 'to'),
(207, 'Turkey', 'tr'),
(208, 'Trinidad and Tobago', 'tt'),
(209, 'Tuvalu', 'tv'),
(210, 'Taiwan', 'tw'),
(211, 'Tanzania', 'tz'),
(212, 'Ukraine', 'ua'),
(213, 'Uganda', 'ug'),
(214, 'Uruguay', 'uy'),
(215, 'Uzbekistan', 'uz'),
(216, 'Saint Vincent and the Grenadines', 'vc'),
(217, 'Venezuela', 've'),
(218, 'Virgin Islands (British)', 'vg'),
(219, 'Virgin Islands (U.S.)', 'vi'),
(220, 'Viet Nam', 'vn'),
(221, 'Vanuatu', 'vu'),
(222, 'Wallis and Futuna', 'wf'),
(223, 'Samoa', 'ws'),
(224, 'Yemen', 'ye'),
(225, 'Mayotte', 'yt'),
(226, 'South Africa', 'za'),
(227, 'Zambia', 'zm'),
(228, 'Zaire (former)', 'zr'),
(229, 'Zimbabwe', 'zw'),
(230, 'United States of America', 'us');

-- --------------------------------------------------------

--
-- Table structure for table `req_franchise`
--

CREATE TABLE `req_franchise` (
  `franchise_id` int(11) NOT NULL,
  `franchise_name` varchar(125) NOT NULL,
  `franchise_status` tinyint(4) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `req_franchise`
--

INSERT INTO `req_franchise` (`franchise_id`, `franchise_name`, `franchise_status`, `updated_by`, `updated_date`, `created_date`) VALUES
(1, 'Sydney', 0, 1111, '2017-01-10 12:19:10', '0000-00-00 00:00:00'),
(2, 'sample', 0, 0, '2017-01-10 12:22:10', '2017-01-10 13:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `req_franchise_location`
--

CREATE TABLE `req_franchise_location` (
  `id` int(11) NOT NULL,
  `fl_id` int(11) NOT NULL,
  `fl_name` varchar(125) NOT NULL,
  `fl_code` varchar(125) NOT NULL,
  `fl_status` tinyint(4) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `req_franchise_location`
--

INSERT INTO `req_franchise_location` (`id`, `fl_id`, `fl_name`, `fl_code`, `fl_status`, `updated_by`, `updated_date`, `created_date`) VALUES
(1, 1, 'Sydney City', '2000', 0, 0, '2017-01-10 14:13:56', '2017-01-10 15:10:33'),
(2, 1, 'Ultimo', '2007', 0, 0, '2017-01-10 14:14:19', '2017-01-10 15:10:42'),
(3, 1, 'Chippendale', '2008', 0, 0, '2017-01-10 14:14:19', '2017-01-10 15:10:49'),
(4, 1, 'Pyrmont', '2009', 0, 0, '2017-01-10 14:14:19', '2017-01-10 15:10:55'),
(5, 1, 'Surry Hills', '2010', 0, 0, '2017-01-10 14:14:19', '2017-01-10 15:11:03'),
(6, 1, 'Kings Cross', '2011', 0, 0, '2017-01-10 14:14:19', '2017-01-10 15:11:11'),
(7, 1, 'Alexandria', '2015', 0, 0, '2017-01-10 14:14:19', '2017-01-10 15:11:18'),
(8, 1, 'Redfern', '2016', 0, 0, '2017-01-10 14:14:19', '2017-01-10 15:11:24'),
(9, 1, 'Waterloo', '2017', 0, 0, '2017-01-10 14:43:00', '2017-01-10 15:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `req_user_levels`
--

CREATE TABLE `req_user_levels` (
  `user_level_id` int(11) NOT NULL,
  `user_level_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `req_user_levels`
--

INSERT INTO `req_user_levels` (`user_level_id`, `user_level_name`) VALUES
(1, 'SuperAdmin'),
(2, 'Admin'),
(3, 'Keeper'),
(4, 'Host');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audit_login`
--

CREATE TABLE `tbl_audit_login` (
  `audit_id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` datetime NOT NULL,
  `ip_address` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_audit_login`
--

INSERT INTO `tbl_audit_login` (`audit_id`, `user_id`, `login`, `logout`, `ip_address`) VALUES
(1, 1, '2015-05-19 05:14:16', '2015-05-20 04:08:09', ''),
(2, 1, '2015-05-19 13:29:32', '2015-05-20 16:43:48', ''),
(3, 1, '2015-05-21 12:33:32', '2015-05-20 16:43:48', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audit_trail`
--

CREATE TABLE `tbl_audit_trail` (
  `audit_id` bigint(20) NOT NULL,
  `audit_name` varchar(60) DEFAULT NULL,
  `audit_table` varchar(60) DEFAULT NULL,
  `audit_data_id` bigint(20) DEFAULT NULL,
  `audit_data` text,
  `audit_by` int(11) DEFAULT NULL,
  `audit_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `audit_type` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_audit_trail`
--

INSERT INTO `tbl_audit_trail` (`audit_id`, `audit_name`, `audit_table`, `audit_data_id`, `audit_data`, `audit_by`, `audit_date`, `audit_type`) VALUES
(9, 'sample_employee', 'sample_employee', 2, 'a:3:{s:6:"f_name";a:2:{i:0;s:10:"old_sample";i:1;s:10:"new_sample";}s:6:"l_name";a:2:{i:0;s:8:"old_name";i:1;s:8:"new_name";}s:6:"status";a:2:{i:0;s:10:"old_status";i:1;s:10:"new_status";}}', 1, '2015-05-19 11:25:28', 'update'),
(10, 'sample_employee', 'sample_employee', 5, 'a:3:{s:6:"f_name";a:1:{i:0;s:10:"old_sample";}s:6:"l_name";a:1:{i:0;s:8:"old_name";}s:6:"status";a:1:{i:0;s:10:"old_status";}}', 1, '2015-05-19 12:38:40', 'insert'),
(13, 'sample_employee', 'sample_employee', 5, 'a:3:{s:6:"f_name";a:2:{i:0;s:10:"old_sample";i:1;s:10:"new_sample";}s:6:"l_name";a:2:{i:0;s:8:"old_name";i:1;s:8:"new_name";}s:6:"status";a:2:{i:0;s:10:"old_status";i:1;s:10:"new_status";}}', 1, '2015-05-21 12:38:40', 'delete'),
(11, 'sample_employee', 'sample_employee', 5, 'a:3:{s:6:"f_name";a:2:{i:0;s:10:"old_sample";i:1;s:10:"new_sample";}s:6:"l_name";a:2:{i:0;s:8:"old_name";i:1;s:8:"new_name";}s:6:"status";a:2:{i:0;s:10:"old_status";i:1;s:10:"new_status";}}', 1, '2015-05-19 16:38:40', 'delete'),
(14, 'sample_employee', 'sample_employee', 4, 'a:1:{s:6:"f_name";a:2:{i:0;s:3:"xxx";i:1;s:6:"asdxxx";}}', 1, '2015-05-21 15:38:25', 'update'),
(15, 'sample_employee', 'sample_employee', 1, 'a:3:{s:6:"f_name";a:2:{i:0;N;i:1;N;}s:6:"l_name";a:2:{i:0;N;i:1;N;}s:6:"status";a:2:{i:0;N;i:1;N;}}', 1, '2016-04-21 14:36:27', 'update'),
(16, 'sample_employee', 'sample_employee', 1, 'a:3:{s:6:"f_name";a:2:{i:0;N;i:1;N;}s:6:"l_name";a:2:{i:0;N;i:1;N;}s:6:"status";a:2:{i:0;N;i:1;N;}}', 1, '2016-04-21 14:49:10', 'update'),
(17, 'sample_employee', 'sample_employee', 1, 'a:3:{s:6:"f_name";a:2:{i:0;N;i:1;N;}s:6:"l_name";a:2:{i:0;N;i:1;N;}s:6:"status";a:2:{i:0;N;i:1;N;}}', 1, '2016-04-21 16:22:25', 'update'),
(18, 'sample_employee', 'sample_employee', 1, 'a:3:{s:6:"f_name";a:2:{i:0;N;i:1;N;}s:6:"l_name";a:2:{i:0;N;i:1;N;}s:6:"status";a:2:{i:0;N;i:1;N;}}', 1, '2016-04-21 16:36:41', 'update'),
(19, 'sample_employee', 'sample_employee', 1, 'a:3:{s:6:"f_name";a:2:{i:0;N;i:1;N;}s:6:"l_name";a:2:{i:0;N;i:1;N;}s:6:"status";a:2:{i:0;N;i:1;N;}}', 1, '2016-04-21 16:40:53', 'update'),
(20, 'sample_employee', 'sample_employee', 1, 'a:3:{s:6:"f_name";a:2:{i:0;N;i:1;N;}s:6:"l_name";a:2:{i:0;N;i:1;N;}s:6:"status";a:2:{i:0;N;i:1;N;}}', 1, '2016-04-21 16:41:45', 'update'),
(21, 'sample_employee', 'sample_employee', 1, 'a:3:{s:6:"f_name";a:2:{i:0;N;i:1;N;}s:6:"l_name";a:2:{i:0;N;i:1;N;}s:6:"status";a:2:{i:0;N;i:1;N;}}', 1, '2016-04-21 16:42:33', 'update'),
(22, 'sample_user', 'sample_user', 1, 'a:1:{s:10:"user_fname";a:2:{i:0;s:3:"asd";i:1;s:4:"asdx";}}', 1, '2016-04-21 16:50:21', 'update'),
(23, 'sample_user', 'sample_user', 1, 'a:1:{s:10:"user_fname";a:2:{i:0;s:8:"asdxdasd";i:1;s:6:"asdxda";}}', 1, '2016-04-21 20:06:47', 'update'),
(24, 'sample_user', 'sample_user', 1, 'a:1:{s:10:"user_fname";a:2:{i:0;s:6:"asdxda";i:1;s:5:"asdxd";}}', 1, '2016-04-21 20:07:01', 'update'),
(25, 'sample_user', 'sample_user', 1, 'a:1:{s:10:"user_fname";a:2:{i:0;s:7:"asdxdxx";i:1;s:2:"as";}}', 1, '2016-04-21 20:39:06', 'update'),
(26, 'sample_user', '', 1, 'a:1:{s:10:"user_fname";a:2:{i:0;s:2:"as";i:1;s:4:"asxx";}}', 1, '2016-04-22 14:22:06', 'update'),
(27, 'sample_user', '', 1, 'a:1:{s:10:"user_fname";a:2:{i:0;s:4:"asxx";i:1;s:6:"asxx==";}}', 1, '2016-04-22 14:30:15', 'update'),
(28, 'sample_user', '', 1, 'a:2:{s:10:"user_fname";a:2:{i:0;s:6:"asxx==";i:1;s:4:"asxx";}s:11:"middle_name";a:2:{i:0;s:1:"d";i:1;s:5:"dtest";}}', 1, '2016-04-22 14:55:16', 'update'),
(29, 'sample_user', NULL, 2, 'a:1:{s:10:"user_fname";a:2:{i:0;s:3:"asd";i:1;s:10:"asd sample";}}', 1, '2016-04-22 22:27:50', 'update'),
(30, 'sample_user', NULL, 1, 'a:4:{s:10:"user_fname";a:2:{i:0;N;i:1;s:8:"asdfasxx";}s:10:"user_lname";a:2:{i:0;N;i:1;s:1:"d";}s:10:"user_email";a:2:{i:0;N;i:1;s:11:"d@gmail.com";}s:11:"middle_name";a:2:{i:0;N;i:1;s:5:"dtest";}}', 1, '2016-04-22 22:29:21', 'update'),
(31, 'sample_user', NULL, 1, 'a:4:{s:10:"user_fname";a:2:{i:0;N;i:1;s:8:"asdfasxx";}s:10:"user_lname";a:2:{i:0;N;i:1;s:1:"d";}s:10:"user_email";a:2:{i:0;N;i:1;s:11:"d@gmail.com";}s:11:"middle_name";a:2:{i:0;N;i:1;s:5:"dtest";}}', 1, '2016-04-25 14:56:25', 'update'),
(32, 'sample_user', NULL, 1, 'a:4:{s:10:"user_fname";a:2:{i:0;N;i:1;s:8:"asdfasxx";}s:10:"user_lname";a:2:{i:0;N;i:1;s:1:"d";}s:10:"user_email";a:2:{i:0;N;i:1;s:11:"d@gmail.com";}s:11:"middle_name";a:2:{i:0;N;i:1;s:5:"dtest";}}', 1, '2016-04-25 15:09:49', 'update'),
(33, 'sample_user', NULL, 2, 'a:4:{s:10:"user_fname";a:2:{i:0;N;i:1;s:10:"asd sample";}s:10:"user_lname";a:2:{i:0;N;i:1;s:4:"wdkw";}s:10:"user_email";a:2:{i:0;N;i:1;s:14:"jdw@gmaill.com";}s:11:"middle_name";a:2:{i:0;N;i:1;s:1:"x";}}', 1, '2016-04-25 15:17:08', 'update'),
(34, 'sample_user', NULL, 2, 'a:1:{s:10:"user_fname";a:2:{i:0;s:10:"asd sample";i:1;s:11:"xasd sample";}}', 1, '2016-04-25 15:18:02', 'update'),
(35, 'sample_user', NULL, 1, 'a:1:{s:10:"user_fname";a:2:{i:0;s:8:"asdfasxx";i:1;s:4:"tews";}}', 1, '2016-04-25 15:18:14', 'update'),
(36, 'sample_user', NULL, 2, 'a:1:{s:10:"user_fname";a:2:{i:0;s:11:"xasd sample";i:1;s:2:"as";}}', 1, '2016-04-25 15:21:44', 'update'),
(37, 'sample_user', NULL, 1, 'a:4:{s:10:"user_fname";a:2:{i:0;N;i:1;s:4:"tews";}s:10:"user_lname";a:2:{i:0;N;i:1;s:1:"d";}s:10:"user_email";a:2:{i:0;N;i:1;s:11:"d@gmail.com";}s:11:"middle_name";a:2:{i:0;N;i:1;s:5:"dtest";}}', 1, '2016-04-25 15:48:21', 'update'),
(38, 'sample_user', NULL, 2, 'a:4:{s:10:"user_fname";a:2:{i:0;N;i:1;s:2:"as";}s:10:"user_lname";a:2:{i:0;N;i:1;s:4:"wdkw";}s:10:"user_email";a:2:{i:0;N;i:1;s:14:"jdw@gmaill.com";}s:11:"middle_name";a:2:{i:0;N;i:1;s:1:"x";}}', 1, '2016-04-25 15:52:45', 'update'),
(39, 'sample_user', NULL, 2, 'a:4:{s:10:"user_fname";a:2:{i:0;N;i:1;s:2:"as";}s:10:"user_lname";a:2:{i:0;N;i:1;s:4:"wdkw";}s:10:"user_email";a:2:{i:0;N;i:1;s:14:"jdw@gmaill.com";}s:11:"middle_name";a:2:{i:0;N;i:1;s:1:"x";}}', 1, '2016-04-25 16:04:57', 'update'),
(40, 'sample_user', NULL, 2, 'a:1:{s:10:"user_fname";a:2:{i:0;s:2:"as";i:1;s:4:"test";}}', 1, '2016-04-25 16:14:22', 'update'),
(41, 'sample_employee', NULL, 2, 'a:3:{s:6:"f_name";a:2:{i:0;N;i:1;N;}s:6:"l_name";a:2:{i:0;N;i:1;N;}s:6:"status";a:2:{i:0;N;i:1;N;}}', 1, '2016-04-25 16:27:11', 'update'),
(42, 'sample_user', NULL, 2, 'a:1:{s:10:"user_fname";a:2:{i:0;s:4:"test";i:1;s:5:"testx";}}', 1, '2016-04-25 16:27:37', 'update'),
(43, 'sample_user', NULL, 2, 'a:1:{s:10:"user_fname";a:2:{i:0;s:5:"testx";i:1;s:2:"sa";}}', 1, '2016-04-25 16:31:39', 'update'),
(44, 'sample_employee', NULL, 1, 'a:3:{s:6:"f_name";a:2:{i:0;N;i:1;N;}s:6:"l_name";a:2:{i:0;N;i:1;N;}s:6:"status";a:2:{i:0;N;i:1;s:1:"0";}}', 1, '2016-04-25 16:31:57', 'update'),
(45, 'sample_employee', NULL, 1, 'a:3:{s:6:"f_name";a:2:{i:0;N;i:1;N;}s:6:"l_name";a:2:{i:0;N;i:1;N;}s:6:"status";a:2:{i:0;N;i:1;s:1:"0";}}', 1, '2016-04-25 16:43:06', 'update'),
(46, 'sample_employee', NULL, 1, 'a:3:{s:6:"f_name";a:2:{i:0;N;i:1;N;}s:6:"l_name";a:2:{i:0;N;i:1;N;}s:6:"status";a:2:{i:0;N;i:1;s:7:"Pending";}}', 1, '2016-04-25 16:45:47', 'update'),
(47, 'sample_employee', NULL, 1, 'a:3:{s:6:"f_name";a:2:{i:0;N;i:1;N;}s:6:"l_name";a:2:{i:0;N;i:1;N;}s:6:"status";a:2:{i:0;N;i:1;s:4:"Done";}}', 1, '2016-04-25 16:45:51', 'update'),
(48, 'sample_employee', NULL, 3, 'a:3:{s:6:"f_name";a:2:{i:0;N;i:1;s:3:"ggg";}s:6:"l_name";a:2:{i:0;N;i:1;s:10:"2015-05-13";}s:6:"status";a:2:{i:0;N;i:1;s:1:"1";}}', 1, '2016-04-25 17:13:43', 'update'),
(49, 'sample_employee', NULL, 3, 'a:3:{s:6:"f_name";a:2:{i:0;N;i:1;s:3:"ggg";}s:6:"l_name";a:2:{i:0;N;i:1;s:10:"2015-05-13";}s:6:"status";a:2:{i:0;N;i:1;s:1:"1";}}', 1, '2016-04-25 17:14:15', 'update'),
(50, 'tbl_orders', NULL, 1, 'a:2:{s:10:"order_name";a:2:{i:0;N;i:1;s:11:"Test Orderx";}s:10:"order_type";a:2:{i:0;N;i:1;s:11:"Type orderd";}}', 1, '2017-01-03 06:15:18', 'update'),
(51, 'tbl_orders', NULL, 1, 'a:0:{}', 1, '2017-01-03 06:20:29', 'delete'),
(52, 'tbl_orders', NULL, 2, 'a:0:{}', 1, '2017-01-03 06:20:40', 'delete'),
(53, 'tbl_orders', NULL, 2, 'a:0:{}', 1, '2017-01-03 06:22:41', 'delete'),
(54, 'tbl_orders', NULL, 2, 'a:0:{}', 1, '2017-01-03 06:24:12', 'delete'),
(55, 'tbl_orders', NULL, 2, 'a:2:{s:6:"status";a:2:{i:0;N;i:1;i:1;}s:10:"updated_by";a:2:{i:0;N;i:1;s:4:"1000";}}', 1, '2017-01-03 06:31:15', 'delete'),
(56, 'tbl_orders', NULL, 2, 'a:2:{s:6:"status";a:2:{i:0;i:0;i:1;i:1;}s:10:"updated_by";a:2:{i:0;N;i:1;s:4:"1000";}}', 1, '2017-01-03 06:33:32', 'delete'),
(57, 'tbl_orders', NULL, 1, 'a:1:{s:10:"order_name";a:2:{i:0;s:4:"xxxx";i:1;s:7:"xxxxddd";}}', 1000, '2017-01-03 07:05:37', 'update'),
(58, 'tbl_orders', NULL, 1, 'a:2:{s:6:"status";a:2:{i:0;i:0;i:1;i:1;}s:10:"updated_by";a:2:{i:0;N;i:1;s:4:"1000";}}', 1000, '2017-01-03 07:05:50', 'delete'),
(59, 'tbl_orders', NULL, 1, 'a:1:{s:6:"status";a:2:{i:0;i:0;i:1;i:1;}}', 1000, '2017-01-03 07:06:17', 'delete'),
(60, 'tbl_orders', NULL, 1, 'a:1:{s:10:"order_name";a:2:{i:0;s:7:"xxxxddd";i:1;s:4:"Test";}}', 1000, '2017-01-03 07:08:30', 'update'),
(61, 'tbl_orders', NULL, 1, 'a:1:{s:6:"status";a:2:{i:0;i:0;i:1;i:1;}}', 1000, '2017-01-03 07:08:35', 'delete');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_function_reference`
--

CREATE TABLE `tbl_function_reference` (
  `function_id` bigint(20) NOT NULL,
  `function_name` varchar(55) DEFAULT NULL,
  `function_link` varchar(100) DEFAULT NULL,
  `function_location` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_function_reference`
--

INSERT INTO `tbl_function_reference` (`function_id`, `function_name`, `function_link`, `function_location`, `status`) VALUES
(1, '$.getBaseURL()', 'getBaseURL', 'js_helper.js', 0),
(2, '$.getFolder()', 'getFolder', 'js_helper.js', 0),
(3, '$.fn.goToByScroll()', 'goToByScroll', 'js_helper.js', 0),
(4, '$.fn.formItemsValidation()', 'formItemsValidation', 'js_helper.js', 0),
(5, '$.fn.refreshDropDown()', 'refreshDropDown', 'js_helper.js', 0),
(6, '$.fn.validateForm()', 'validateForm', 'js_helper.js', 0),
(7, '$.fn.aceAlert()', 'aceAlert', 'js_helper.js', 0),
(8, '$.fn.modalBox()', 'modalBox', 'js_helper.js', 0),
(9, 'get_template_part()', 'get_template_part', 'interface_helper.php', 0),
(10, 'dropDown()', 'dropDown', 'interface_helper.php', 0),
(11, '$.fn.refreshDropDownChosen()', 'refreshDropDownChosen', 'js_helper.js', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menus`
--

CREATE TABLE `tbl_menus` (
  `menu_id` bigint(20) NOT NULL,
  `menu_name` varchar(60) DEFAULT NULL,
  `menu_value` text,
  `menu_type` char(10) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_menus`
--

INSERT INTO `tbl_menus` (`menu_id`, `menu_name`, `menu_value`, `menu_type`, `status`) VALUES
(1, 'menus', 'a:5:{s:9:"menu_name";s:5:"menus";s:10:"table_name";s:9:"tbl_menus";s:10:"item_value";s:7:"menu_id";s:9:"item_name";s:9:"menu_name";s:10:"menu_where";s:24:"status=0,menu_type=table";}', 'table', 0),
(2, 'custom_menu', 'a:5:{s:9:"menu_name";s:11:"custom_menu";s:10:"table_name";s:9:"tbl_menus";s:10:"item_value";s:7:"menu_id";s:9:"item_name";s:9:"menu_name";s:10:"menu_where";s:25:"status=0,menu_type=custom";}', 'table', 0),
(3, 'main_dashboard', 'a:5:{s:9:"menu_name";s:14:"main_dashboard";s:10:"table_name";s:10:"req_access";s:10:"item_value";s:11:"access_name";s:9:"item_name";s:11:"access_name";s:10:"menu_where";s:15:"access_status=0";}', 'table', 0),
(4, 'access', 'a:5:{s:9:"menu_name";s:6:"access";s:10:"table_name";s:10:"req_access";s:10:"item_value";s:9:"access_id";s:9:"item_name";s:11:"access_name";s:10:"menu_where";s:15:"access_status=0";}', 'table', 0),
(5, 'Franchise', 'a:5:{s:9:"menu_name";s:9:"Franchise";s:10:"table_name";s:13:"req_franchise";s:10:"item_value";s:12:"franchise_id";s:9:"item_name";s:14:"franchise_name";s:10:"menu_where";s:18:"franchise_status=0";}', 'table', 0),
(6, 'Suburbs', 'a:5:{s:9:"menu_name";s:7:"Suburbs";s:10:"table_name";s:22:"req_franchise_location";s:10:"item_value";s:2:"id";s:9:"item_name";s:7:"fl_name";s:10:"menu_where";s:11:"fl_status=0";}', 'table', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_size` varchar(125) NOT NULL,
  `number_of_beds` tinyint(4) NOT NULL,
  `number_of_bathrooms` tinyint(4) NOT NULL,
  `unit_number` varchar(125) NOT NULL,
  `digit_code` varchar(125) NOT NULL,
  `wifi` varchar(10) NOT NULL,
  `wifi_name` varchar(125) NOT NULL,
  `wifi_password` varchar(225) NOT NULL,
  `garbage_chute` varchar(10) NOT NULL,
  `garbage_chute_location` varchar(225) NOT NULL,
  `amenities` text NOT NULL,
  `instructions` text NOT NULL,
  `services` text NOT NULL,
  `keeper_id` int(11) NOT NULL,
  `guest_first_name` varchar(125) NOT NULL,
  `guest_surname` varchar(125) NOT NULL,
  `guest_email` varchar(225) NOT NULL,
  `guest_phone` varchar(125) NOT NULL,
  `number_of_guests` tinyint(4) NOT NULL,
  `guest_nationality` varchar(125) NOT NULL,
  `guest_flight_number` varchar(125) NOT NULL,
  `guest_info` varchar(225) NOT NULL,
  `pick_up_date` datetime NOT NULL,
  `key_pick_up_from` datetime NOT NULL,
  `key_pick_up_to` datetime NOT NULL,
  `key_pick_up_details` text NOT NULL,
  `key_drop_off_date` datetime NOT NULL,
  `key_drop_off_date_details` text NOT NULL,
  `key_set` varchar(125) NOT NULL,
  `address_name` text NOT NULL,
  `address_route` text NOT NULL,
  `address_street_number` text NOT NULL,
  `address_postal_code` text NOT NULL,
  `address_locality` text NOT NULL,
  `address_sublocality` text NOT NULL,
  `address_country` text NOT NULL,
  `address_code` text NOT NULL,
  `address_administrative_area` text NOT NULL,
  `address_formatted_address` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_orders`
--

INSERT INTO `tbl_orders` (`order_id`, `user_id`, `property_size`, `number_of_beds`, `number_of_bathrooms`, `unit_number`, `digit_code`, `wifi`, `wifi_name`, `wifi_password`, `garbage_chute`, `garbage_chute_location`, `amenities`, `instructions`, `services`, `keeper_id`, `guest_first_name`, `guest_surname`, `guest_email`, `guest_phone`, `number_of_guests`, `guest_nationality`, `guest_flight_number`, `guest_info`, `pick_up_date`, `key_pick_up_from`, `key_pick_up_to`, `key_pick_up_details`, `key_drop_off_date`, `key_drop_off_date_details`, `key_set`, `address_name`, `address_route`, `address_street_number`, `address_postal_code`, `address_locality`, `address_sublocality`, `address_country`, `address_code`, `address_administrative_area`, `address_formatted_address`, `status`, `updated_by`, `updated_date`, `created_date`) VALUES
(1, 1126, 'windows', 0, 0, '', '', '', '', '', '', '', '', '', '["check_in","check_out"]', 1127, 'asdasd', 'gete', '', '', 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'pick_up', '', '', '', '', '', '', '', '', '', '', 0, 0, '2017-01-05 09:42:08', '2017-01-05 17:42:08'),
(2, 1127, 'windows', 0, 0, '', '', '', '', '', '', '', '["Rooftop","BBQ","Washing machine","Dryer","Dish washer","Coffee machine","Hairdryer","Iron","Air conditioning","Heater","Lift","Smoke detector","First aid kit","Smoking allowed","Pets allowed","Wheelchair accessible"]', '', '["check_in","check_out"]', 1128, 'asdasd', '', '', '', 1, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'drop_off', '', '', '', '', '', '', '', '', '', '', 0, 0, '2017-01-05 09:42:12', '2017-01-05 17:42:12'),
(3, 1129, 'windows', 0, 0, '', '', '', '', '', '', '', '["Rooftop","BBQ","Washing machine","Dryer","Dish washer","Coffee machine","Hairdryer","Iron","Air conditioning","Heater","Lift","Smoke detector","First aid kit","Smoking allowed","Pets allowed","Wheelchair accessible"]', '', '["check_in","check_out"]', 1130, 'asdasd', '', '', '', 1, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'drop_off', '', '', '', '', '', '', '', '', '', '', 0, 0, '2017-01-05 09:42:17', '2017-01-05 17:42:17'),
(4, 1130, 'linux', 3, 4, '2', '123', 'on', 'asdsadsa', 'asdasdas', 'on', 'some where', '["Rooftop","BBQ","Washing machine","Dryer","Dish washer","Coffee machine","Hairdryer","Iron","Gym","Smoke detector","First aid kit","Fire extinguisher","Pets allowed"]', 'asdddddddddddd asd asdasd\r\nasdf\r\nasdf\r\nasdf\r\nsdaf\r\nsad\r\nf\r\naslkjasdfklj laksjf klasdf', '["check_in","cleaning","loundry"]', 1131, 'Guest', 'aalsdkjfakls', 'gues@gmail.com', '(123) 123-1733', 3, 'Some', '12321jk', 'askldjfa skldfjask ldfjlaks djfalksjf alksdjf alksf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'pick_up', '', '', '', '', '', '', '', '', '', '', 0, 0, '2017-01-05 09:42:23', '2017-01-05 17:42:23'),
(5, 1130, '', 0, 0, '', '', '', '', '', '', '', '["Dryer","Hairdryer"]', '', '["check_in","cleaning"]', 1132, 'ewr', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'pick_up', '', '', '', '', '', '', '', '', '', '', 0, 0, '2017-01-05 09:42:27', '2017-01-05 17:42:27'),
(6, 1132, 'linux', 2, 3, '', '', '', '', '', '', '', '', '', '["check_in","cleaning"]', 1133, 'asd', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'pick_up', '', '', '', '', '', '', '', '', '', '', 0, 0, '2017-01-05 09:42:31', '2017-01-05 17:42:31'),
(7, 1133, 'linux', 2, 3, '', '', '', '', '', '', '', '', '', '["check_in","check_out"]', 1135, 'asd', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'pick_up', '', '', '', '', '', '', '', '', '', '', 0, 0, '2017-01-05 09:42:35', '2017-01-05 17:42:35'),
(8, 1134, 'linux', 2, 3, '', '', '', '', '', '', '', '["BBQ","Smoking allowed"]', '', '["check_in","cleaning"]', 1136, 'asd', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'pick_up', '', '', '', '', '', '', '', '', '', '', 0, 0, '2017-01-05 09:42:39', '2017-01-05 17:42:39'),
(9, 1133, '1', 0, 0, '', '', '', '', '', '', '', '', '', '["check_in","cleaning"]', 1138, 'asd', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'pick_up', '', '', '', '', '', '', '', '', '', '', 0, 0, '2017-01-05 09:42:44', '2017-01-05 17:42:44'),
(10, 1146, '1', 1, 1, '', '', '', '', '', '', '', '', '', '["check_in","check_out"]', 0, 'asdsa', '', '', '', 1, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'drop_off', '', '', '', '', '', '', '', '', '', '', 0, 0, '2017-01-05 14:18:22', '2017-01-05 22:18:22'),
(11, 1147, '1', 1, 1, '', '', '', '', '', '', '', '', '', '["check_in","cleaning"]', 1137, 'ASD', '', '', '', 1, '', '', '', '1970-01-01 01:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'pick_up', '', '', '', '', '', '', '', '', '', '', 0, 0, '2017-01-05 14:31:43', '2017-01-05 22:31:43'),
(12, 1148, '1', 1, 1, '', '', '', '', '', '', '', '', '', '["check_in","cleaning"]', 0, 'ASD', '', '', '', 1, '', '', '', '2017-01-19 22:33:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'drop_off', '', '', '', '', '', '', '', '', '', '', 0, 0, '2017-01-05 14:34:25', '2017-01-05 22:34:25'),
(13, 1111, '', 0, 0, '', '', '', '', '', '', '', '', '', '["check_in"]', 1137, 'asd', '', '', '', 1, '', '', '', '1970-01-01 01:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'drop_off', '', '', '', '', '', '', '', '', '', '', 0, 0, '2017-01-08 03:53:22', '2017-01-08 11:53:22'),
(14, 1111, '', 0, 0, '', '', '', '', '', '', '', '', '', '["check_in","cleaning"]', 0, 'asd', '', '', '', 1, '', '', '', '2017-01-25 12:23:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'pick_up', '', '', '', '', '', '', '', '', '', '', 0, 0, '2017-01-08 04:23:09', '2017-01-08 12:23:09'),
(15, 1111, '', 0, 0, '', '', '', '', '', '', '', '', '', '["check_in","cleaning"]', 1137, 'asd', '', '', '', 1, '', '', '', '2017-01-26 12:25:00', '2017-01-08 12:25:00', '2017-01-19 12:25:00', 'asd', '0000-00-00 00:00:00', '', 'pick_up', '', '', '', '', '', '', '', '', '', '', 0, 0, '2017-01-08 04:25:16', '2017-01-08 12:25:16'),
(16, 1139, '1', 1, 1, '', '', '', '', '', '', '', '', '', '["check_in","check_out"]', 0, 'asd', '', '', '', 1, '', '', '', '2017-01-04 21:46:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'pick_up', '', '', '', '', '', '', '', '', '', '', 0, 0, '2017-01-08 13:46:51', '2017-01-08 21:46:51'),
(17, 1140, '1', 1, 1, '', '', '', '', '', '', '', '', '', '["check_in","check_out"]', 0, 'asd', '', '', '', 1, '', '', '', '2017-02-28 21:49:00', '2017-01-25 21:49:00', '2017-01-23 21:49:00', 'asd', '0000-00-00 00:00:00', '', 'pick_up', '', '', '', '', '', '', '', '', '', '', 0, 0, '2017-01-08 13:49:58', '2017-01-08 21:49:58'),
(18, 1143, '1', 1, 1, '', '', '', '', '', '', '', '', '', '["check_in","check_out"]', 0, 'asd', '', '', '', 1, '', '', '', '2017-01-18 22:44:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '3333', 'drop_off', '192 Princes Hwy', 'Princes Highway', '192', '3284', 'Port Fairy', '', 'Australia', 'AU', 'Victoria', '192 Princes Hwy, Port Fairy VIC 3284, Australia', 0, 0, '2017-01-08 14:44:50', '2017-01-08 22:44:50'),
(19, 1144, '1', 1, 1, '', '', '', '', '', '', '', '["Dryer"]', '', '["check_in","check_out"]', 0, 'test', 'lkasdjflk', 'sample@gmail.com', '(123) 123-2131', 1, 'asd', 'asdasd', 'asdasd', '2017-01-11 22:53:00', '2017-01-04 22:53:00', '2017-01-19 22:53:00', '123213', '0000-00-00 00:00:00', '', 'pick_up', '192 Princes Hwy', 'Princes Highway', '192', '3284', 'Port Fairy', '', 'Australia', 'AU', 'Victoria', '192 Princes Hwy, Port Fairy VIC 3284, Australia', 0, 0, '2017-01-08 14:54:00', '2017-01-08 22:54:00'),
(20, 1144, '', 0, 0, '', '', '', '', '', '', '', '', '', '["check_in","check_out","cleaning","loundry"]', 0, 'ad', '', '', '', 1, '', '', '', '2017-01-31 22:58:00', '2017-01-18 22:58:00', '2017-01-16 22:58:00', 'asd', '0000-00-00 00:00:00', '', 'pick_up', '192 Princes Hwy', 'Princes Highway', '192', '3284', 'Port Fairy', '', 'Australia', 'AU', 'Victoria', '192 Princes Hwy, Port Fairy VIC 3284, Australia', 0, 0, '2017-01-08 14:58:58', '2017-01-08 22:58:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `settings_id` bigint(20) NOT NULL,
  `settings_name` varchar(100) DEFAULT NULL,
  `settings_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`settings_id`, `settings_name`, `settings_value`) VALUES
(1, 'main_dashboard', 'Super Admin'),
(2, 'prefix', 'wd_'),
(3, 'time_format', 'YY-mm-dd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` bigint(20) NOT NULL,
  `user_account` varchar(125) NOT NULL,
  `user_fname` varchar(64) DEFAULT NULL,
  `user_lname` varchar(64) DEFAULT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_pass` text,
  `user_salt` text NOT NULL,
  `user_access` varchar(30) DEFAULT NULL,
  `user_level` varchar(30) DEFAULT NULL,
  `user_franchise` int(11) NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_account`, `user_fname`, `user_lname`, `user_email`, `user_pass`, `user_salt`, `user_access`, `user_level`, `user_franchise`, `user_status`, `updated_by`, `updated_date`, `created_date`) VALUES
(1111, '', 'Super', 'Admin', 'superadmin@gmail.com', 'c2hhMjU2OjEwMDA=::JdStz+mnbtwo0ByMIoLXN2N53wb8zkbB', 'e5R3/fX8/48fFGbYXGtGDr/UbA8lAf+2', '1', '1', 0, 0, 0, '2017-01-09 09:01:30', '2017-01-09 17:01:30'),
(1000, '', 'Keeperasdasd', 'Test', 'Keeper@test.comx', 'c2hhMjU2OjEwMDA=::Httg0XnJ4qLHyX+Wqyc7e82UKw8YZR8H', 'OIHqyg6QMo10kon341zLgaTXC8cY5TVc', '3', '3', 0, 0, 1000, '2017-01-09 03:35:38', '2017-01-09 11:35:38'),
(1125, '', 'ete', 'asd', 'sample@gmail.com', 'c2hhMjU2OjEwMDA=::cvo8RGsQLFlh4xzfrIPlBdqMxW+yqkvI', 'zhDXniTLxBKFDcw26zlFF+D6esYZCsYY', '4', '3,4', 0, 0, 0, '2017-01-09 09:04:54', '2017-01-09 17:04:54'),
(1126, '', 'ete', 'asd', 'samplexx@gmail.com', 'c2hhMjU2OjEwMDA=::rS/acsYr19Iz7PIOcGEHJ2WB1JkpK2XU', '4fcKNIxonvZEyaXZBAXQlZMoLlRXDrQo', '4', '4,3', 0, 0, 0, '2017-01-09 08:55:16', '2017-01-09 16:55:16'),
(1127, '', 'asdasd', 'sxx', 'samplde@gmail.com', 'c2hhMjU2OjEwMDA=::sOzDiA02wq05cF+3l+J7RGmlZnDoFMGi', 'G3Gsnx4MurSUvO/TE4d9Wt8Nu8dScc6m', '2', '2,4', 0, 0, 0, '2017-01-09 08:55:34', '2017-01-09 16:55:34'),
(1128, '', 'sample', 'test', 'testsample@gmail.com', 'c2hhMjU2OjEwMDA=::Visg2dvEwADssJ3C4kh0vndlawXdC5ls', 'ZCZlVpe4I8RY3uUZgLXyv8QPSGl+5pcx', '2', '4,2', 0, 0, 0, '2017-01-09 09:01:33', '2017-01-09 17:01:33'),
(1129, '', 'asd', '', 'sa33mple@gmail.com', 'c2hhMjU2OjEwMDA=::ABxJbPGuEY7mKhb5Tl7OUaytgwAf9W8R', 'vVaJ4rInH+m6tLDWjiFctrJqncnGW1iD', '4', '4', 0, 0, 0, '2017-01-04 15:10:36', '2017-01-04 23:10:36'),
(1130, '', 'test', 'sample', 'test@gmail.com', 'c2hhMjU2OjEwMDA=::mdzfwoIv21Bu4uOLqc3l2J9jthK+0UdY', 'xCznCERVkpAHuC42lAa5kR8jm83ZHwV/', '4', '4', 0, 0, 0, '2017-01-05 06:41:30', '2017-01-05 14:41:30'),
(1131, '', 'test', 'sample', 'test3@gmail.com', 'c2hhMjU2OjEwMDA=::5/5tA/qGHBk8cQGJzKgAmfeOR2LB4U8M', '2sJhWQmdz+5bhWwL8taYfiwpa6tXB1M3', '4', '4', 0, 0, 0, '2017-01-04 15:25:57', '2017-01-04 23:25:57'),
(1132, '', 'you', 'anre', 'ggg@ggg.com', 'c2hhMjU2OjEwMDA=::2nAlCsSWmdVToawRbAvlgMjqBo/OA7mi', 'ygWbRLuoF/idT8UNfwHyLAWkrw39DViS', '4', '4', 0, 0, 0, '2017-01-04 15:27:36', '2017-01-04 23:27:36'),
(1133, '', 'ggg', 'sss', 'hhh@ggg.com', 'c2hhMjU2OjEwMDA=::eq1s39OLc5V+jwAI1CJv2P7eCBjy+nFa', 'gJJZxJtDwLFO93VhM86OAF5GNme6jS0L', '4', '4', 0, 0, 0, '2017-01-04 15:31:31', '2017-01-04 23:31:31'),
(1134, '', 'keeper', 'test', 'sample@test.com', 'c2hhMjU2OjEwMDA=::7thg7fdZuvnbKxw83XkM0fjb5E1FT9hh', 'BaUkvAGUUgHtc7czbiGRye4ppdc0zoFX', '4', '4', 0, 0, 0, '2017-01-05 06:40:04', '2017-01-05 14:40:04'),
(1135, '', 'keeper', 'test', 'keeper@test.com', 'c2hhMjU2OjEwMDA=::Gu4nuNBUVKY3fIuDlr/eUT3qc4Y/niWF', 'z0cUUJgJX2KXyXkhVlf8AMnY9GneGb1C', '3', '3', 0, 0, 0, '2017-01-05 04:17:04', '2017-01-05 12:17:04'),
(1136, '', 'keeper', 'test', 'ke3eper@test.com', 'c2hhMjU2OjEwMDA=::tYk1xoYv3AXcmMU54D6n3bsDpZISMZC1', 'fcZSk0n8qXBbTkpAEmbCpNP6wSIYya2V', '3', '3', 0, 0, 0, '2017-01-05 04:23:35', '2017-01-05 12:23:35'),
(1137, '', 'asdf', 'asdf', 'sjdfkl@askdjf.com', 'c2hhMjU2OjEwMDA=::tNyTYQvbUdhOMW15YVSx4leOfMS1WMZu', 'JQWc8fIDffUUdEPNMV0JdukQjnPhwdNL', '4', '4', 0, 0, 0, '2017-01-08 11:51:03', '2017-01-08 12:51:03'),
(1138, '', 'asdasd', 'dasd', 'sjdfkld@askdjf.com', 'c2hhMjU2OjEwMDA=::dWpKCmoIfiStY3Zs31a0MrgQWUPKUlrL', 'ab6hQ5+4mf66naYARto6JBRGTHxuz7+S', '4', '4', 0, 0, 0, '2017-01-08 11:53:31', '2017-01-08 12:53:31'),
(1139, '', 'test', 'sample', 'gggg@ggg.com', 'c2hhMjU2OjEwMDA=::rXvOh/NL6KrkPyvlkewnu8umebxodcgF', 'oHVdgvo1qcJsXKZ/fCfkHjIuzGlroco3', '4', '4', 0, 0, 0, '2017-01-08 13:46:51', '2017-01-08 21:46:51'),
(1140, '', 'test', 'sample', 'ddd@ddd.com', 'c2hhMjU2OjEwMDA=::GM2ZfGsnLgS5+uSiM+mTjj2eYkHJKLiD', 'R6IWWb24kye4jSkJSCPNJ4lyt/BAyaM9', '4', '4', 0, 0, 0, '2017-01-08 13:49:58', '2017-01-08 21:49:58'),
(1141, '', 'test', 'test', 'sample3@gmail.com', 'c2hhMjU2OjEwMDA=::RxTGh5IQo9GDBC+VLB6pa258UeIlKkC6', '0lFpBXKxuV+zxrYb7u/F6hwbqhllrdpz', '4', '4', 0, 0, 0, '2017-01-08 14:35:01', '2017-01-08 22:35:01'),
(1142, '', 'ggg', 'ss', 'rerer@sdf.com', 'c2hhMjU2OjEwMDA=::BJJ11BfynYaFnFspVKxY+0qDVPvv4Wty', 'SnN+F12zvRyfGC3zgej3MDMUbsT+K2bR', '4', '4', 0, 0, 0, '2017-01-08 14:44:20', '2017-01-08 22:44:20'),
(1143, '', 'ggg', 'ss', 'redder@sdf.com', 'c2hhMjU2OjEwMDA=::tLrFUsNg/Sc2YpJtbvoD6Ey3Ii9ZVTg4', 'TlmWfXaQqcH8/qDj21ffGoMITQHFWMky', '4', '4', 0, 0, 0, '2017-01-08 14:44:50', '2017-01-08 22:44:50'),
(1144, '', 'asdfjasdkl', 'klfjasdlkfj', 'slkdjfsdk@Jfkasdjf.com', 'c2hhMjU2OjEwMDA=::5pnxtN8YrMvnsHkvC+nfaqaEsNzQkKU6', 'Dd7vC/La6ENquLz42szkCdiU0EUUJRGX', '4', '4', 0, 0, 0, '2017-01-08 14:54:00', '2017-01-08 22:54:00'),
(1145, '', 'sample', 'test', 'fran@chise.com', 'c2hhMjU2OjEwMDA=::Dja0RHyDtZ1I73AdHRsLqNta+SZcYo/Q', 'kjfQ8BqcY5Aka78PDe/13zk7UgMFWnaP', '2', '2', 1, 0, 0, '2017-01-10 13:04:49', '2017-01-10 21:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_infos`
--

CREATE TABLE `tbl_user_infos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `avatar` varchar(125) NOT NULL,
  `location` text NOT NULL,
  `languages` varchar(125) NOT NULL,
  `about` text NOT NULL,
  `website` varchar(125) NOT NULL,
  `contact` varchar(125) NOT NULL,
  `zip` varchar(125) NOT NULL,
  `state` varchar(125) NOT NULL,
  `locality` varchar(125) NOT NULL,
  `certify` varchar(125) NOT NULL,
  `keeper_location` varchar(125) NOT NULL,
  `availability` varchar(125) NOT NULL,
  `way_of_travel` varchar(125) NOT NULL,
  `member_rental_website` varchar(10) NOT NULL,
  `visa_situation` varchar(125) NOT NULL,
  `introduction` text NOT NULL,
  `source` varchar(125) NOT NULL,
  `facebook` int(11) NOT NULL,
  `twitter` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_infos`
--

INSERT INTO `tbl_user_infos` (`id`, `user_id`, `avatar`, `location`, `languages`, `about`, `website`, `contact`, `zip`, `state`, `locality`, `certify`, `keeper_location`, `availability`, `way_of_travel`, `member_rental_website`, `visa_situation`, `introduction`, `source`, `facebook`, `twitter`, `status`, `updated_by`, `updated_at`, `created_at`) VALUES
(2, 1000, 'assets/uploads/profile-pic-1483531734.jpg', 'New Jersey xxx', 'English, test', 'resr', 'sample.com', 'skype: mySkype.id', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 1000, '2017-01-09 05:18:34', '2017-01-09 13:18:34'),
(3, 0, '', '', '', '', '', '(232) 132-1321', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2017-01-08 14:44:33', '2017-01-08 22:44:33'),
(4, 0, '', '', '', '', '', '(232) 132-1321', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2017-01-08 14:44:33', '2017-01-08 22:44:33'),
(5, 1132, '', '', '', '', '', '(438) 784-8743', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2017-01-04 15:27:36', '2017-01-04 23:27:36'),
(6, 1137, '', 'test', '["French","Spanish","Portuguese","Russian"]', '["I am working in hospitality","I work\\/worked in a travel company","I am just a travel addict","None of the above"]', 'test.com', '132', 'sample', 'ssdf', 'sadklfjalkd', 'on', 'Newcastle', 'Between 15 and 25 hours', '["Bike","Bus","Train","Ferry"]', 'on', 'Other', 'asdsad', 'Radio', 0, 0, 0, 1137, '2017-01-05 06:35:17', '2017-01-05 14:35:17'),
(7, 1130, 'assets/uploads/BMA-Coal-1483599447.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2017-01-05 06:57:27', '2017-01-05 07:57:27'),
(8, 1146, '', '', '', '', '', '(123) 213-2131', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2017-01-05 14:18:21', '2017-01-05 22:18:21'),
(9, 1147, '', '', '', '', '', '(123) 123-1231', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2017-01-05 14:31:43', '2017-01-05 22:31:43'),
(10, 1148, '', '', '', '', '', '(123) 123-1231', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2017-01-05 14:34:24', '2017-01-05 22:34:24'),
(11, 1139, '', '', '', '', '', '(123) 213-2132', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2017-01-08 13:46:51', '2017-01-08 21:46:51'),
(12, 1140, '', '', '', '', '', '(123) 213-1231', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2017-01-08 13:49:58', '2017-01-08 21:49:58'),
(13, 1141, '', '', '', '', '', '(123) 123-1232', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2017-01-08 14:35:01', '2017-01-08 22:35:01'),
(14, 1142, '', '', '', '', '', '(232) 132-1321', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2017-01-08 14:44:20', '2017-01-08 22:44:20'),
(15, 1143, '', '', '', '', '', '(232) 132-1321', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2017-01-08 14:44:50', '2017-01-08 22:44:50'),
(16, 1144, '', '', '', '', '', '(123) 123-2132', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2017-01-08 14:54:00', '2017-01-08 22:54:00'),
(17, 1125, '', 'sadsdxx', '', '', '', '', 'dd', 'sdsad', '', '', '', '', '', '', '', '', '', 0, 0, 0, 1125, '2017-01-08 15:16:59', '2017-01-08 23:16:59'),
(18, 1111, '', '', '', '', '', 'asdasd', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2017-01-09 06:19:14', '2017-01-09 07:19:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `req_access`
--
ALTER TABLE `req_access`
  ADD PRIMARY KEY (`access_id`);

--
-- Indexes for table `req_countries`
--
ALTER TABLE `req_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `req_franchise`
--
ALTER TABLE `req_franchise`
  ADD PRIMARY KEY (`franchise_id`);

--
-- Indexes for table `req_franchise_location`
--
ALTER TABLE `req_franchise_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `req_user_levels`
--
ALTER TABLE `req_user_levels`
  ADD PRIMARY KEY (`user_level_id`);

--
-- Indexes for table `tbl_audit_login`
--
ALTER TABLE `tbl_audit_login`
  ADD PRIMARY KEY (`audit_id`);

--
-- Indexes for table `tbl_audit_trail`
--
ALTER TABLE `tbl_audit_trail`
  ADD PRIMARY KEY (`audit_id`);

--
-- Indexes for table `tbl_function_reference`
--
ALTER TABLE `tbl_function_reference`
  ADD PRIMARY KEY (`function_id`);

--
-- Indexes for table `tbl_menus`
--
ALTER TABLE `tbl_menus`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_user_infos`
--
ALTER TABLE `tbl_user_infos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `req_access`
--
ALTER TABLE `req_access`
  MODIFY `access_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `req_countries`
--
ALTER TABLE `req_countries`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT for table `req_franchise`
--
ALTER TABLE `req_franchise`
  MODIFY `franchise_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `req_franchise_location`
--
ALTER TABLE `req_franchise_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `req_user_levels`
--
ALTER TABLE `req_user_levels`
  MODIFY `user_level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_audit_login`
--
ALTER TABLE `tbl_audit_login`
  MODIFY `audit_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_audit_trail`
--
ALTER TABLE `tbl_audit_trail`
  MODIFY `audit_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `tbl_function_reference`
--
ALTER TABLE `tbl_function_reference`
  MODIFY `function_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_menus`
--
ALTER TABLE `tbl_menus`
  MODIFY `menu_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `settings_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1146;
--
-- AUTO_INCREMENT for table `tbl_user_infos`
--
ALTER TABLE `tbl_user_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
