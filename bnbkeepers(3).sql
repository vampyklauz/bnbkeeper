-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2017 at 02:36 PM
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
(1, 'Super Admin', 'a:6:{i:0;a:4:{s:2:"id";s:2:"18";s:4:"name";s:6:"Orders";s:4:"icon";s:7:"fa-list";s:4:"link";s:6:"orders";}i:1;a:4:{s:2:"id";s:2:"23";s:4:"name";s:7:"Keepers";s:4:"icon";s:8:"fa-users";s:4:"link";s:6:"keeper";}i:2;a:4:{s:2:"id";s:2:"22";s:4:"name";s:5:"Hosts";s:4:"icon";s:18:"fa-pencil-square-o";s:4:"link";s:5:"host/";}i:3;a:5:{s:2:"id";s:2:"21";s:4:"name";s:12:"Global Admin";s:4:"icon";s:8:"fa-gavel";s:4:"link";s:11:"admin_tools";s:8:"children";a:2:{i:0;a:4:{s:2:"id";s:2:"26";s:4:"name";s:11:"Create user";s:4:"icon";s:0:"";s:4:"link";s:11:"admin_tools";}i:1;a:4:{s:2:"id";s:2:"24";s:4:"name";s:9:"Franchise";s:4:"icon";s:0:"";s:4:"link";s:15:"admin/franchise";}}}i:4;a:5:{s:2:"id";s:1:"4";s:4:"name";s:9:"Devlopers";s:4:"icon";s:10:"fa-desktop";s:4:"link";s:1:"#";s:8:"children";a:7:{i:0;a:4:{s:2:"id";s:1:"5";s:4:"name";s:18:"Dashboard Settings";s:4:"icon";s:0:"";s:4:"link";s:29:"developers/dashboard_settings";}i:1;a:4:{s:2:"id";s:1:"7";s:4:"name";s:14:"dropdown Menus";s:4:"icon";s:0:"";s:4:"link";s:25:"developers/dropdown_menus";}i:2;a:5:{s:2:"id";s:1:"9";s:4:"name";s:15:"JQuery Settings";s:4:"icon";s:0:"";s:4:"link";s:1:"#";s:8:"children";a:1:{i:0;a:4:{s:2:"id";s:1:"8";s:4:"name";s:6:"Modals";s:4:"icon";s:0:"";s:4:"link";s:17:"developers/modals";}}}i:3;a:4:{s:2:"id";s:2:"11";s:4:"name";s:6:"jqGrid";s:4:"icon";s:0:"";s:4:"link";s:17:"developers/jqGrid";}i:4;a:5:{s:2:"id";s:2:"13";s:4:"name";s:13:"PHP functions";s:4:"icon";s:0:"";s:4:"link";s:1:"#";s:8:"children";a:1:{i:0;a:4:{s:2:"id";s:2:"12";s:4:"name";s:11:"Audit Trail";s:4:"icon";s:0:"";s:4:"link";s:25:"php_functions/audit_trail";}}}i:5;a:4:{s:2:"id";s:2:"14";s:4:"name";s:20:"Javascript Functions";s:4:"icon";s:0:"";s:4:"link";s:1:"#";}i:6;a:4:{s:2:"id";s:2:"10";s:4:"name";s:13:"Documentation";s:4:"icon";s:7:"fa-book";s:4:"link";s:18:"function_reference";}}}i:5;a:5:{s:2:"id";s:2:"27";s:4:"name";s:8:"Settings";s:4:"icon";s:8:"fa-gears";s:4:"link";s:1:"#";s:8:"children";a:1:{i:0;a:4:{s:2:"id";s:2:"28";s:4:"name";s:8:"Services";s:4:"icon";s:0:"";s:4:"link";s:14:"admin/services";}}}}', 0),
(4, 'Host', 'a:3:{i:0;a:4:{s:2:"id";s:1:"2";s:4:"name";s:7:"Profile";s:4:"icon";s:7:"fa-user";s:4:"link";s:12:"host/profile";}i:1;a:4:{s:2:"id";s:1:"4";s:4:"name";s:7:"Keepers";s:4:"icon";s:8:"fa-users";s:4:"link";s:6:"keeper";}i:2;a:4:{s:2:"id";s:1:"3";s:4:"name";s:6:"Orders";s:4:"icon";s:7:"fa-list";s:4:"link";s:6:"orders";}}', 0),
(2, 'Admin', 'a:4:{i:0;a:4:{s:2:"id";s:1:"5";s:4:"name";s:6:"Orders";s:4:"icon";s:7:"fa-list";s:4:"link";s:6:"orders";}i:1;a:4:{s:2:"id";s:1:"6";s:4:"name";s:7:"Keepers";s:4:"icon";s:8:"fa-users";s:4:"link";s:6:"keeper";}i:2;a:4:{s:2:"id";s:1:"7";s:4:"name";s:5:"Hosts";s:4:"icon";s:18:"fa-pencil-square-o";s:4:"link";s:4:"host";}i:3;a:5:{s:2:"id";s:1:"4";s:4:"name";s:15:"Franchise Admin";s:4:"icon";s:8:"fa-gavel";s:4:"link";s:1:"#";s:8:"children";a:3:{i:0;a:4:{s:2:"id";s:1:"2";s:4:"name";s:11:"Create user";s:4:"icon";s:0:"";s:4:"link";s:11:"admin_tools";}i:1;a:4:{s:2:"id";s:1:"3";s:4:"name";s:7:"Suburbs";s:4:"icon";s:0:"";s:4:"link";s:13:"admin/suburbs";}i:2;a:4:{s:2:"id";s:1:"8";s:4:"name";s:8:"Services";s:4:"icon";s:0:"";s:4:"link";s:14:"admin/services";}}}}', 0),
(3, 'Keeper', 'a:2:{i:0;a:4:{s:2:"id";s:1:"2";s:4:"name";s:7:"Profile";s:4:"icon";s:7:"fa-user";s:4:"link";s:14:"keeper/profile";}i:1;a:4:{s:2:"id";s:1:"3";s:4:"name";s:6:"Orders";s:4:"icon";s:7:"fa-list";s:4:"link";s:6:"orders";}}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `req_cleaning`
--

CREATE TABLE `req_cleaning` (
  `id` int(11) NOT NULL,
  `franchise_id` int(11) NOT NULL,
  `name` varchar(125) NOT NULL,
  `value` varchar(125) NOT NULL,
  `sorting` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `req_cleaning`
--

INSERT INTO `req_cleaning` (`id`, `franchise_id`, `name`, `value`, `sorting`, `status`, `updated_by`, `updated_date`, `created_date`) VALUES
(1, 1, '< churva >', '33', 3, 1, 1111, '2017-01-22 11:49:04', '2017-01-22 12:47:44'),
(2, 1, '32', '55', 22, 1, 1111, '2017-01-23 12:43:35', '2017-01-22 12:46:25'),
(3, 2, 'gg', '12', 3, 0, 1111, '2017-01-22 11:46:34', '2017-01-22 12:46:34'),
(4, 1, '< 20m2', '40', 1, 0, 1111, '2017-01-23 12:44:03', '2017-01-23 13:44:03'),
(5, 1, '21-40m2', '60', 2, 0, 1111, '2017-01-23 12:44:13', '2017-01-23 13:44:13');

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
(1, 'Sydney', 0, 1111, '2017-01-22 11:12:39', '0000-00-00 00:00:00'),
(2, 'New', 0, 0, '2017-01-17 00:33:22', '2017-01-17 01:33:22');

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
(2, 2, 'Ultimo', '2007', 0, 0, '2017-01-16 14:57:43', '2017-01-10 15:10:42'),
(3, 1, 'Chippendale', '2008', 0, 0, '2017-01-10 14:14:19', '2017-01-10 15:10:49'),
(4, 1, 'Pyrmont', '2009', 0, 0, '2017-01-10 14:14:19', '2017-01-10 15:10:55'),
(5, 1, 'Surry Hills', '2010', 0, 0, '2017-01-10 14:14:19', '2017-01-10 15:11:03'),
(6, 1, 'Kings Cross', '2011', 0, 0, '2017-01-10 14:14:19', '2017-01-10 15:11:11'),
(7, 1, 'Alexandria', '2015', 0, 0, '2017-01-10 14:14:19', '2017-01-10 15:11:18'),
(8, 1, 'Redfern', '2016', 0, 0, '2017-01-10 14:14:19', '2017-01-10 15:11:24'),
(9, 1, 'Waterloo', '2017', 0, 0, '2017-01-10 14:43:00', '2017-01-10 15:43:00'),
(10, 1, 'test', 'new', 0, 0, '2017-01-17 00:32:04', '2017-01-17 01:32:04'),
(11, 2, 'test', 'sdf', 0, 0, '2017-01-17 00:35:05', '2017-01-17 01:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `req_services`
--

CREATE TABLE `req_services` (
  `service_id` int(11) NOT NULL,
  `franchise_id` int(11) NOT NULL,
  `service_name` varchar(125) NOT NULL,
  `service_price` double NOT NULL,
  `service_status` tinyint(4) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `req_services`
--

INSERT INTO `req_services` (`service_id`, `franchise_id`, `service_name`, `service_price`, `service_status`, `updated_by`, `updated_date`, `created_date`) VALUES
(2, 1, 'Check Out', 19.99, 0, 0, '2017-01-22 12:03:39', '0000-00-00 00:00:00'),
(3, 1, 'Loundry', 19.99, 0, 0, '2017-01-22 12:03:41', '0000-00-00 00:00:00'),
(7, 1, 'Check In', 33.22, 0, 0, '2017-01-22 14:06:33', '0000-00-00 00:00:00'),
(8, 2, 'Check In', 55.2, 0, 0, '2017-01-22 14:06:17', '0000-00-00 00:00:00'),
(9, 2, 'Check Out', 45.2, 0, 0, '2017-01-22 14:06:18', '0000-00-00 00:00:00'),
(11, 2, 'Loundry', 33, 0, 0, '2017-01-23 13:14:53', '0000-00-00 00:00:00'),
(12, 1, 'Saturdays', 40, 0, 0, '2017-01-23 13:18:57', '0000-00-00 00:00:00'),
(13, 2, 'Saturdays', 22, 0, 0, '2017-01-23 13:19:16', '0000-00-00 00:00:00'),
(14, 2, 'Night Bookings', 10, 0, 0, '2017-01-23 13:20:02', '0000-00-00 00:00:00'),
(15, 1, 'Night Bookings', 10, 0, 0, '2017-01-23 13:26:37', '0000-00-00 00:00:00'),
(16, 1, 'Saturdays', 20, 0, 0, '2017-01-23 13:26:49', '0000-00-00 00:00:00'),
(17, 1, 'Sundays', 40, 0, 0, '2017-01-23 13:26:50', '0000-00-00 00:00:00'),
(18, 1, 'Last Minute Booking less than 24h', 20, 0, 0, '2017-01-23 13:26:57', '0000-00-00 00:00:00'),
(19, 1, 'Last Minute Booking less than 72h', 10, 0, 0, '2017-01-23 13:27:00', '0000-00-00 00:00:00');

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
  `user_id` int(11) NOT NULL COMMENT 'host',
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
  `key_drop_off_details` text NOT NULL,
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
  `franchise` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ratings`
--

CREATE TABLE `tbl_ratings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rate_1` int(11) NOT NULL,
  `rate_2` int(11) NOT NULL,
  `rate_3` int(11) NOT NULL,
  `rate_4` int(11) NOT NULL,
  `rate_5` int(11) NOT NULL,
  `rated_by` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ratings`
--

INSERT INTO `tbl_ratings` (`id`, `user_id`, `rate_1`, `rate_2`, `rate_3`, `rate_4`, `rate_5`, `rated_by`) VALUES
(1, 1141, 0, 0, 0, 1, 0, '["1111"]');

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
(1112, '', 'Keeper', 'Account', 'keeper@mail.com', 'c2hhMjU2OjEwMDA=::Httg0XnJ4qLHyX+Wqyc7e82UKw8YZR8H', 'OIHqyg6QMo10kon341zLgaTXC8cY5TVc', '3', '3', 1, 0, 1000, '2017-01-16 12:06:59', '2017-01-16 20:06:59'),
(1113, '', 'Host', 'User', 'host@mail.com', 'c2hhMjU2OjEwMDA=::cvo8RGsQLFlh4xzfrIPlBdqMxW+yqkvI', 'zhDXniTLxBKFDcw26zlFF+D6esYZCsYY', '4', '3,4', 1, 0, 0, '2017-01-16 12:06:57', '2017-01-16 20:06:57'),
(1134, '', 'Franchise', 'Admin', 'Franchise@admin.com', 'c2hhMjU2OjEwMDA=::aq8TnAebNSXyIufjOUVgreKwRKj123uq', 'StmmCF7c438yDqZAOhH3xX5sgYLtR6G+', '2', '2', 1, 0, 0, '2017-01-16 14:03:33', '2017-01-16 22:03:33'),
(1135, '', 'Franchise', 'Admin', 'franchise@admin.com', 'c2hhMjU2OjEwMDA=::cvo8RGsQLFlh4xzfrIPlBdqMxW+yqkvI', 'zhDXniTLxBKFDcw26zlFF+D6esYZCsYY', '5', '5', 1, 0, 0, '2017-01-16 12:06:57', '2017-01-16 20:06:57'),
(1136, '', 'test', 'new', 'delete@after.com', 'c2hhMjU2OjEwMDA=::Z0qa7EGUvsVYHIeusV1HD60xqLf79ikG', 's907QAAj3wApTcj6z3LIywUniQ2s0dF6', '4', '4', 1, 0, 0, '2017-01-16 14:48:59', '2017-01-16 22:48:59'),
(1137, '', 'second', 'franchise', 'second@f.com', 'c2hhMjU2OjEwMDA=::YyKCkDzq+xTFtRuHJR6Ry35s1IY1SK4z', '/d7729Jx9+0RRKZYU1uZRq0WdDTPixJa', '2', '2', 2, 0, 0, '2017-01-17 00:33:49', '2017-01-17 08:33:49'),
(1141, '', 'new', 'keeper', 'new@keeper.comd', 'c2hhMjU2OjEwMDA=::menJW+OKfUVGiLj8/kY+a6wVdomANQsJ', 'AAuUzt+6PL1oFb6OVjMufmOBnoeCJctb', '3', '3', 1, 0, 1141, '2017-01-22 04:45:13', '2017-01-22 12:45:13'),
(1142, '', 'sample', 'test', 'new@pass.com', 'c2hhMjU2OjEwMDA=::YWAlDUOfyW7eSKv4nrXj9F7CaYaoOPMO', 'wAOue1frWhPoJj9g/hUy5dSdEr9GVLRe', '3', '3', 1, 3, 0, '2017-01-22 05:03:15', '2017-01-22 13:03:15'),
(1143, '', 'sample', 'test', 'nddew@pass.com', 'c2hhMjU2OjEwMDA=::DfMa97rVQwm2LrECFcl7O8Ay8K1uCShx', 'JLt9ggbMjJMZ8BKSNQW/EpVFKZIQL+RX', '3', '3', 1, 3, 0, '2017-01-22 05:03:31', '2017-01-22 13:03:31'),
(1144, '', 'sample', 'test', 'nddew@passss.com', 'c2hhMjU2OjEwMDA=::skFNQjcDtv1RJvgZk40Hz+ih9/nOVLMy', '7+lWCHp5V9rPYddI7603iY5pONJvHmV/', '3', '3', 1, 3, 0, '2017-01-22 05:09:04', '2017-01-22 13:09:04'),
(1145, '', 'sample', 'test', 'asddew@passss.com', 'c2hhMjU2OjEwMDA=::/eGlpydzVk2MtrGhLDs/e2x0G4taPRg5', 'E3crBdb4vZZm2tj+89cHt3M59MU5dPEI', '3', '3', 1, 3, 0, '2017-01-22 05:09:35', '2017-01-22 13:09:35'),
(1146, '', 'sample', 'test', 'asds2dew@passss.com', 'c2hhMjU2OjEwMDA=::n0wCXx3+yEkkMcsaEpm78tr29GyZ08hQ', 'IQ8C+mBL+pgG57oKoMhraF/rxoWfmg5f', '3', '3', 1, 3, 0, '2017-01-22 05:10:43', '2017-01-22 13:10:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_answer`
--

CREATE TABLE `tbl_user_answer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_1` text NOT NULL,
  `question_2` text NOT NULL,
  `question_3` text NOT NULL,
  `question_4` text NOT NULL,
  `question_5` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_answer`
--

INSERT INTO `tbl_user_answer` (`id`, `user_id`, `question_1`, `question_2`, `question_3`, `question_4`, `question_5`, `created_date`) VALUES
(2, 1141, '1', '["2","3","4","5","6"]', '1', 'on', '1', '2017-01-22 02:59:19'),
(3, 1144, '1', '["1","2"]', '', '', '', '2017-01-22 05:09:04'),
(4, 1145, '1', '["1","2"]', '', '', '', '2017-01-22 05:09:35'),
(5, 1146, '1', '["1","2"]', '', '', '', '2017-01-22 05:10:43');

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
  `keeper_location` varchar(125) NOT NULL COMMENT 'franchise_location',
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
(1, 1, '', 'sample', '["French","Italian","Portuguese","Russian","Mandarin","Cantonese","Japanese","Arabic","Bengali"]', '["I am a professional concierge","I am working in hospitality","I help my friends and families in their short term rentals","I am just a travel addict","I am a frequent user of short term rentals","None of the above","Other"]', '', '', 'sdf', 'asd', 'asd', 'on', '1', 'Less than 15 hours', '["Walk","Bike","Bus","Other"]', 'on', 'Australian/NZ citizen', ' asdasd  asdasd', 'Google', 0, 0, 0, 0, '2017-01-22 02:57:24', '2017-01-22 10:57:24'),
(2, 1141, '', 'asdf', '["French","Spanish","Portuguese","Russian","Mandarin","Cantonese","Hindi","Bengali"]', '["I am a professional concierge","I help my friends and families in their short term rentals","I work\\/worked in a travel company","I am a frequent user of short term rentals","None of the above","Other"]', '', '', 'asd', 'asdasd', 'asd', 'on', '1', 'Less than 15 hours', '["Bus"]', 'on', 'Australian/NZ citizen', ' asdasd ', 'Google', 0, 0, 0, 1141, '2017-01-22 04:45:27', '2017-01-22 12:45:27'),
(3, 1111, '', '', '["Italian"]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 1111, '2017-01-22 04:43:29', '2017-01-22 12:43:29'),
(4, 0, '', '', '', '', '', '', '', '', '', '', '', 'Less than 15 hours', '', '', '', '', '', 0, 0, 0, 0, '2017-01-22 04:47:26', '2017-01-22 05:47:26'),
(5, 1113, '', '', '', '', '', '21321321', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2017-01-22 04:50:02', '2017-01-22 05:50:02'),
(6, 1146, '', 'asdf', '["French","Portuguese","Cantonese","Japanese","Hindi","Arabic","Bengali"]', '["I am a professional concierge","I am working in hospitality","I help my friends and families in their short term rentals"]', '', '', 'asd', 'asd', 'asd', 'on', '1', 'Less than 15 hours', '["Walk","Bike","Bus","Train","Other"]', 'on', 'Australian/NZ citizen', 'asdasd', 'Newspaper', 0, 0, 0, 0, '2017-01-22 05:10:43', '2017-01-22 13:10:43'),
(7, 1136, '', '', '', '<strike><font color="#fa573c">Say something<br>asd<br></font></strike>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2017-01-22 05:16:16', '2017-01-22 06:16:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `req_access`
--
ALTER TABLE `req_access`
  ADD PRIMARY KEY (`access_id`);

--
-- Indexes for table `req_cleaning`
--
ALTER TABLE `req_cleaning`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `req_services`
--
ALTER TABLE `req_services`
  ADD PRIMARY KEY (`service_id`);

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
-- Indexes for table `tbl_ratings`
--
ALTER TABLE `tbl_ratings`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tbl_user_answer`
--
ALTER TABLE `tbl_user_answer`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `access_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `req_cleaning`
--
ALTER TABLE `req_cleaning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `req_services`
--
ALTER TABLE `req_services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
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
  MODIFY `audit_id` bigint(20) NOT NULL AUTO_INCREMENT;
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
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_ratings`
--
ALTER TABLE `tbl_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `settings_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1147;
--
-- AUTO_INCREMENT for table `tbl_user_answer`
--
ALTER TABLE `tbl_user_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_user_infos`
--
ALTER TABLE `tbl_user_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
