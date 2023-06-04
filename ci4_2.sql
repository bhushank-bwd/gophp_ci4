-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2023 at 12:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_url2`
--

CREATE TABLE `app_url2` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `group` int(255) DEFAULT NULL,
  `parent` int(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0=> Inactive, 1=>Active',
  `type` enum('1','0') NOT NULL DEFAULT '1' COMMENT '''0''=>dashboard, ''1''=>landing',
  `landing` varchar(255) DEFAULT NULL,
  `dashboard` varchar(255) DEFAULT NULL,
  `admin_panel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_url2`
--

INSERT INTO `app_url2` (`id`, `title`, `link`, `group`, `parent`, `image`, `status`, `type`, `landing`, `dashboard`, `admin_panel`) VALUES
(1, 'Social Applications', 'https://silocloud.com/cloud-user-interface#/?playlistId=0&videoId=0', NULL, 0, 'uploads/news/adminNews1677231939135.gif', '1', '1', NULL, NULL, NULL),
(3, 'Sidebar Applications', 'https://silocloud.com/app-list', NULL, 0, 'uploads/news/adminNews1677231950339.jpg', '0', '1', NULL, NULL, NULL),
(5, 'Silo Applications', 'https://silocloud.com/app-list', NULL, 0, 'assets/cloud/images/calender-placeholder.jpg', '1', '1', NULL, NULL, NULL),
(9, 'Persona OS', 'https://personaos.com/', 1, 0, 'uploads/sitemap/adminNews1679314665290.jpg', '1', '0', NULL, NULL, NULL),
(10, 'Persona Digest', 'https://personadigest.com/', 1, 0, 'uploads/sitemap/adminNews1679314704444.jpg', '0', '1', NULL, NULL, NULL),
(11, 'Persona Radio', 'https://personaradio.com//new_music', 1, 0, 'uploads/sitemap/adminNews1679314723153.jpg', '1', '1', NULL, NULL, NULL),
(12, 'Persona Post', 'https://personapost.com/', 1, 0, 'uploads/sitemap/adminNews1679314743481.jpg', '0', '1', NULL, NULL, NULL),
(13, 'Silo TV', 'https://tv.silocloud.org/', 1, 0, 'uploads/sitemap/adminNews1679314761139.jpg', '1', '1', NULL, NULL, NULL),
(14, 'Silo UGC', 'https://tv.silocloud.org/', 1, 0, 'uploads/sitemap/adminNews1679314776672.jpg', '1', '1', NULL, NULL, NULL),
(15, 'Dashboard', 'https://silocloud.com/normal-uers-dashboard', 3, 0, 'uploads/sitemap/adminNews167931478721.jpg', '1', '0', NULL, NULL, NULL),
(16, 'File Manager', 'https://silocloud.com/cloud-files', 3, 0, 'uploads/sitemap/adminNews1679314804847.jpg', '0', '0', NULL, NULL, NULL),
(17, 'Silo User Profile', 'https://silocloud.com/cloud-user-profiles', 3, 0, 'uploads/sitemap/adminNews167931486252.jpg', '1', '0', NULL, NULL, NULL),
(18, 'Silo Community', 'https://silocloud.com/cloud-community', 3, 0, 'uploads/sitemap/adminNews1679314946628.jpg', '1', '0', NULL, NULL, NULL),
(19, 'Silo Chat', 'http://localhost/persona/silocloud/chat-home#', 3, 0, 'uploads/sitemap/adminNews1679314959409.jpg', '1', '1', NULL, NULL, NULL),
(20, 'Silo Calendar', 'https://silocloud.com/cloud-calendar', 3, 0, 'uploads/sitemap/adminNews1679314975584.jpg', '1', '0', NULL, NULL, NULL),
(21, 'Silo Connect', 'https://silocloud.com/connect', 3, 0, 'uploads/sitemap/adminNews1680860557118.jpg', '1', '0', NULL, '', ''),
(22, 'Silo Streaming Deck', ' https://silocloud.com/admin-conference-channel-list', 5, 0, 'uploads/sitemap/adminNews1679314992617.jpg', '1', '0', NULL, NULL, NULL),
(23, 'Silo QR', ' https://silocloud.com/cloud-generate-qr-code', 5, 0, 'uploads/sitemap/adminNews1679315007989.jpg', '1', '0', NULL, NULL, NULL),
(24, 'Web Hosting ', ' https://silocloud.com/cloud-my-websites', 5, 0, 'uploads/sitemap/adminNews1679314918379.jpg', '1', '0', NULL, NULL, NULL),
(28, 'Silo Mail', 'https://silocloud.com/silo-cloud-mail', 5, 0, 'uploads/sitemap/adminNews1679314880572.jpg', '1', '0', NULL, NULL, NULL),
(29, 'Silo Suite', 'https://silosuite.com/', 5, 0, 'uploads/sitemap/adminNews1679315046353.jpg', '1', '1', NULL, NULL, NULL),
(30, 'Silo Canvas', 'https://silocloud.com/silo-canvas/edit-image', 5, 0, 'uploads/sitemap/adminNews167931507636.jpg', '1', '0', NULL, NULL, NULL),
(31, 'Silo NFT', 'https://silocloud.com/nft-home', 5, 0, 'uploads/sitemap/adminNews1679315095930.jpg', '1', '1', NULL, NULL, NULL),
(32, 'Silo Health', 'https://silocloud.com/silo4-2/silo-health', 5, 0, 'uploads/sitemap/adminNews1679315115621.jpg', '1', '0', NULL, NULL, NULL),
(35, 'Persona OS', NULL, 1, 9, 'uploads/news/adminNews1677927431412.jpg', '1', '0', 'https://personaos.com', 'https://personaos.com', 'https://personapost.com//admin-cp/'),
(36, 'Silo TV', 'https://tv.silocloud.org/', 1, 13, 'uploads/news/adminNews1677232213789.gif', '1', '1', '	\nhttps://tv.silocloud.org/', NULL, 'https://personapost.com//admin-cp/'),
(37, 'Persona Digest', 'https://personadigest.com', 1, 10, 'uploads/news/adminNews1677232229520.jpg', '1', '1', 'https://personadigest.com', NULL, 'https://personapost.com//admin-cp/'),
(38, 'Business', NULL, 1, 10, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personadigest.com/category/Business', 'https://personadigest.com/category/Business', 'https://personapost.com//admin-cp/'),
(39, 'Lifestyle', NULL, 1, 10, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personadigest.com/category/Lifestyle', 'https://personadigest.com/category/Lifestyle', 'https://personapost.com//admin-cp/'),
(40, 'Sports', NULL, 1, 10, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personadigest.com/category/Sports', 'https://personadigest.com/category/Sports', 'https://personapost.com//admin-cp/'),
(41, 'Technology', NULL, 1, 10, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personadigest.com/category/Technology', 'https://personadigest.com/category/Technology', 'https://personapost.com//admin-cp/'),
(42, 'International', NULL, 1, 10, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personadigest.com/category/International', 'https://personadigest.com/category/International', 'https://personapost.com//admin-cp/'),
(43, 'Travel', NULL, 1, 10, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personadigest.com/category/Travel', 'https://personadigest.com/category/Travel', 'https://personapost.com//admin-cp/'),
(44, 'Editor choice', NULL, 1, 10, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personadigest.com/category/Editor-Choice', 'https://personadigest.com/category/Editor-Choice', 'https://personapost.com//admin-cp/'),
(45, 'Health', NULL, 1, 10, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personadigest.com/category/Health', 'https://personadigest.com/category/Health', 'https://personapost.com//admin-cp/'),
(46, 'Science', NULL, 1, 10, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personadigest.com/category/science', 'https://personadigest.com/category/science', 'https://personapost.com//admin-cp/'),
(47, 'Persona Radio', 'https://personaradio.com', 1, 11, 'assets/cloud/images/calender-placeholder.jpg', '1', '1', 'https://personaradio.com', NULL, 'https://personapost.com//admin-cp/'),
(48, 'Discover ', NULL, 1, 11, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personaradio.com//discover', 'https://personaradio.com//discover', 'https://personapost.com//admin-cp/'),
(49, 'New Music', NULL, 1, 11, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personaradio.com//new_music', 'https://personaradio.com//new_music', 'https://personapost.com//admin-cp/'),
(50, 'Top Music', NULL, 1, 11, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personaradio.com//top_music', 'https://personaradio.com//top_music', 'https://personapost.com//admin-cp/'),
(51, 'Spoltlight', NULL, 1, 11, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personaradio.com//spotlight', 'https://personaradio.com//spotlight', 'https://personapost.com//admin-cp/'),
(52, 'Genres', NULL, 1, 11, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personaradio.com//genres', 'https://personaradio.com//genres', 'https://personapost.com//admin-cp/'),
(53, 'Playlist', NULL, 1, 11, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personaradio.com//playlists', 'https://personaradio.com//playlists', 'https://personapost.com//admin-cp/'),
(54, 'Browse', NULL, 1, 11, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personaradio.com//store/songs', 'https://personaradio.com//store/songs', 'https://personapost.com//admin-cp/'),
(55, 'Purchase', NULL, 1, 11, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personaradio.com//purchased', 'https://personaradio.com//purchased', 'https://personapost.com//admin-cp/'),
(56, 'Recently  Played', NULL, 1, 11, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personaradio.com//recently_played', 'https://personaradio.com//recently_played', 'https://personapost.com//admin-cp/'),
(57, 'My Playlists', NULL, 1, 11, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personaradio.com//my_playlists', 'https://personaradio.com//my_playlists', 'https://personapost.com//admin-cp/'),
(58, 'Favourites', NULL, 1, 11, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personaradio.com//favourites', 'https://personaradio.com//favourites', 'https://personapost.com//admin-cp/'),
(59, 'Persona Post', 'https://personapost.com', 1, 12, 'assets/cloud/images/calender-placeholder.jpg', '1', '1', 'https://personapost.com', NULL, 'https://personapost.com//admin-cp/'),
(60, 'Latest Videos ', NULL, 1, 12, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personapost.com//videos/latest?page_id=1', 'https://personapost.com//videos/latest?page_id=1', 'https://personapost.com//admin-cp/'),
(61, 'Top Videos', NULL, 1, 12, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personapost.com//videos/top?page_id=1', 'https://personapost.com//videos/top?page_id=1', 'https://personapost.com//admin-cp/'),
(62, 'Trending', NULL, 1, 12, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personapost.com//videos/trending?page_id=1', 'https://personapost.com//videos/trending?page_id=1', 'https://personapost.com//admin-cp/'),
(63, 'Articles', NULL, 1, 12, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personapost.com//articles', 'https://personapost.com//articles', 'https://personapost.com//admin-cp/'),
(64, 'Movies', NULL, 1, 12, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personapost.com//movies', 'https://personapost.com//movies', 'https://personapost.com//admin-cp/'),
(65, 'Popular Channels', NULL, 1, 12, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personapost.com//popular_channels?type=views&sort_type=all_time', 'https://personapost.com//popular_channels?type=views&sort_type=all_time', 'https://personapost.com//admin-cp/'),
(66, 'Stock Videos', NULL, 1, 12, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://personapost.com//videos/stock?page_id=1', 'https://personapost.com//videos/stock?page_id=1', 'https://personapost.com//admin-cp/'),
(67, 'Home', 'https://tv.silocloud.org/guest/home', 1, 13, 'assets/cloud/images/calender-placeholder.jpg', '1', '1', 'https://tv.silocloud.org/guest/home', NULL, 'https://personapost.com//admin-cp/'),
(68, 'Movies', 'https://tv.silocloud.org/guest/movies', 1, 13, 'assets/cloud/images/calender-placeholder.jpg', '1', '1', 'https://tv.silocloud.org/guest/movies', NULL, 'https://personapost.com//admin-cp/'),
(69, 'TV Series', 'https://tv.silocloud.org/guest/tv-series', 1, 13, 'assets/cloud/images/calender-placeholder.jpg', '1', '1', 'https://tv.silocloud.org/guest/tv-series\n', NULL, 'https://personapost.com//admin-cp/'),
(70, 'Live TV', 'https://tv.silocloud.org/guest/live-tv', 1, 13, 'assets/cloud/images/calender-placeholder.jpg', '1', '1', 'https://tv.silocloud.org/guest/live-tv', NULL, 'https://personapost.com//admin-cp/'),
(71, 'Silo UGC', 'https://silocloud.com/silo-cloud-user-tv', 1, 14, 'uploads/news/adminNews1679298578682.jpg', '1', '1', 'https://silocloud.com/silo-cloud-user-tv\n', NULL, 'https://personapost.com//admin-cp/'),
(72, 'User Dashboard', 'https://silocloud.com/normal-uers-dashboard', 3, 15, 'assets/cloud/images/calender-placeholder.jpg', '1', '1', 'https://silocloud.com/normal-uers-dashboard', NULL, 'https://personapost.com//admin-cp/'),
(74, 'File Explorer', NULL, 3, 16, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://silocloud.com/cloud-file-explorer', 'https://silocloud.com/cloud-file-explorer', 'https://personapost.com//admin-cp/'),
(75, 'Files', NULL, 3, 16, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://silocloud.com/cloud-files', 'https://silocloud.com/cloud-files', 'https://personapost.com//admin-cp/'),
(76, 'Home', NULL, 3, 16, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://silocloud.com/cloud-home', 'https://silocloud.com/cloud-home', 'https://personapost.com//admin-cp/'),
(77, 'Starred', NULL, 3, 16, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://silocloud.com/cloud-starred', 'https://silocloud.com/cloud-starred', 'https://personapost.com//admin-cp/'),
(78, 'Recover', NULL, 3, 16, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://silocloud.com/cloud-recovery', 'https://silocloud.com/cloud-recovery', 'https://personapost.com//admin-cp/'),
(79, 'Shared', NULL, 3, 16, 'assets/cloud/images/calender-placeholder.jpg', '1', '0', 'https://silocloud.com/cloud-shared', 'https://silocloud.com/cloud-shared', 'https://personapost.com//admin-cp/'),
(80, 'Setting', NULL, 3, 16, '', '1', '0', 'https://silocloud.com/cloud-settings', 'https://silocloud.com/cloud-settings', 'https://personapost.com//admin-cp/'),
(81, 'User Profiles', NULL, 3, 17, '', '1', '0', 'https://silocloud.com/cloud-user-profiles', 'https://silocloud.com/cloud-user-profiles', 'https://personapost.com//admin-cp/'),
(82, 'Silo Community', NULL, 3, 18, '', '1', '0', 'https://silocloud.com/cloud-community', 'https://silocloud.com/cloud-community', 'https://personapost.com//admin-cp/'),
(83, 'Chat User', 'https://silocloud.com/chat-home', 3, 19, '', '1', '1', 'https://silocloud.com/chat-home', NULL, 'https://personapost.com//admin-cp/'),
(84, 'Silo Calendar', NULL, 3, 20, '', '1', '0', 'https://silocloud.com/cloud-calendar', 'https://silocloud.com/cloud-calendar', 'https://personapost.com//admin-cp/'),
(85, 'Silo Connect', NULL, 3, 21, '', '1', '0', 'https://silocloud.com/connect', 'https://silocloud.com/connect', 'https://personapost.com//admin-cp/'),
(86, 'Silo Streaming deck', 'https://silocloud.com/silo-streaming', 5, 22, '', '1', '1', 'https://silocloud.com/silo-streaming', NULL, 'https://personapost.com//admin-cp/'),
(87, 'Silo QR', NULL, 5, 23, '', '1', '0', ' https://silocloud.com/cloud-generate-qr-code', ' https://silocloud.com/cloud-generate-qr-code', 'https://personapost.com//admin-cp/'),
(88, 'Generate QR', NULL, 5, 23, '', '1', '0', 'https://silocloud.com/cloud-generate-qr-code', 'https://silocloud.com/cloud-generate-qr-code', 'https://personapost.com//admin-cp/'),
(89, 'QR List', NULL, 5, 23, '', '1', '0', 'https://silocloud.com/cloud/qr-code-list', 'https://silocloud.com/cloud/qr-code-list', 'https://personapost.com//admin-cp/'),
(90, 'Silo Web Hosting', NULL, 5, 24, '', '1', '0', ' https://silocloud.com/cloud-my-websites', ' https://silocloud.com/cloud-my-websites', 'https://personapost.com//admin-cp/'),
(91, 'Site Builder', NULL, 5, 24, '', '1', '0', 'https://silocloud.com/site_builder/builder/', 'https://silocloud.com/site_builder/builder/', 'https://personapost.com//admin-cp/'),
(92, 'ERP', ' https://erp.silocloud.com/', 5, 29, '', '1', '1', 'https://erp.silocloud.com/', NULL, 'https://personapost.com//admin-cp/'),
(96, 'HRM', ' https://hrm.silocloud.com/', 5, 29, '', '1', '1', ' https://hrm.silocloud.com/', NULL, 'https://personapost.com//admin-cp/'),
(99, 'CRM', ' https://crm.silocloud.com/', 5, 29, '', '1', '1', ' https://crm.silocloud.com/', NULL, 'https://personapost.com//admin-cp/'),
(100, 'Mail', NULL, 5, 28, '', '1', '0', ' https://silocloud.com/silo-cloud-mail', ' https://silocloud.com/silo-cloud-mail', 'https://personapost.com//admin-cp/'),
(101, 'Inbox', NULL, 5, 28, '', '1', '0', 'https://silocloud.com/silo-cloud-mail#inbox', 'https://silocloud.com/silo-cloud-mail#inbox', 'https://personapost.com//admin-cp/'),
(102, 'Draft', NULL, 5, 28, '', '1', '0', 'https://silocloud.com/silo-cloud-mail#draft', 'https://silocloud.com/silo-cloud-mail#draft', 'https://personapost.com//admin-cp/'),
(103, 'Starred', NULL, 5, 28, '', '1', '0', 'https://silocloud.com/silo-cloud-mail#starred', 'https://silocloud.com/silo-cloud-mail#starred', 'https://personapost.com//admin-cp/'),
(104, 'Sent', NULL, 5, 28, '', '1', '0', 'https://silocloud.com/silo-cloud-mail#sent', 'https://silocloud.com/silo-cloud-mail#sent', 'https://personapost.com//admin-cp/'),
(105, 'Spam', NULL, 5, 28, '', '1', '0', 'https://silocloud.com/silo-cloud-mail#spam', 'https://silocloud.com/silo-cloud-mail#spam', 'https://personapost.com//admin-cp/'),
(106, 'Trash', NULL, 5, 28, '', '1', '0', 'https://silocloud.com/silo-cloud-mail#trash', 'https://silocloud.com/silo-cloud-mail#trash', 'https://personapost.com//admin-cp/'),
(107, 'Silo Suite', ' https://silosuite.com/', 5, 29, '', '1', '1', 'https://silosuite.com/', NULL, 'https://personapost.com//admin-cp/'),
(108, 'Silo Canvas', NULL, 5, 30, '', '1', '0', ' https://silocloud.com/silo-canvas/edit-image', ' https://silocloud.com/silo-canvas/edit-image', 'https://personapost.com//admin-cp/'),
(109, 'Silo NFT', NULL, 5, 31, '', '1', '0', ' https://silocloud.com/nft-home', ' https://silocloud.com/nft-home', 'https://personapost.com//admin-cp/'),
(110, 'Process', NULL, 5, 31, '', '1', '0', 'https://silocloud.com/nft-process', 'https://silocloud.com/nft-process', 'https://personapost.com//admin-cp/'),
(111, 'Live Auction', NULL, 5, 31, '', '1', '0', 'https://silocloud.com/live-auction', 'https://silocloud.com/live-auction', 'https://personapost.com//admin-cp/'),
(112, 'News', NULL, 5, 31, '', '1', '0', 'https://silocloud.com/nft-news', 'https://silocloud.com/nft-news', 'https://personapost.com//admin-cp/'),
(113, 'Connect Wallet', '', 5, 31, '', '1', '0', 'https://silocloud.com/connect-wallet', 'https://silocloud.com/connect-wallet', 'https://personapost.com//admin-cp/'),
(114, 'Silo Health', NULL, 5, 32, '', '1', '0', 'https://silocloud.com/silo4-2/silo-health', 'https://silocloud.com/silo4-2/silo-health', 'https://personapost.com//admin-cp/'),
(116, 'Knowlege Center', 'https://silocloud.com/cloud-user-interface#/?playlistId=0&videoId=0', NULL, 0, 'uploads/news/adminNews1677232660746.gif', '1', '1', 'https://silocloud.com/cloud-user-interface#/?playl...', NULL, 'https://personapost.com//admin-cp/'),
(117, 'silo Secure Data', ' https://silosecuredata.com/', 116, 0, 'uploads/sitemap/adminNews1679370409416.jpg', '1', '1', ' https://silosecuredata.com/', NULL, NULL),
(118, 'Overview', 'https://silocloud.com/silo4-2/welcome', 116, 0, 'uploads/sitemap/adminNews1679370213718.jpg', '1', '1', NULL, NULL, NULL),
(119, 'Video Tutorial', 'https://silocloud.com/silo4-2/video-tutorials', 116, 0, 'uploads/sitemap/adminNews1679370248749.jpg', '1', '1', NULL, NULL, NULL),
(120, 'Open World', 'https://silocloud.com/silo4-2/open-world', 116, 0, 'uploads/sitemap/adminNews1679370268205.jpg', '1', '1', NULL, NULL, NULL),
(121, 'Silocloud  Storage', 'https://silocloud.com/silo4-2/silocloud-storage', 116, 0, 'uploads/sitemap/adminNews1679370287696.jpg', '1', '1', NULL, NULL, NULL),
(122, 'Blockchain', 'https://silocloud.com/blockchain-home', 116, 0, 'uploads/sitemap/adminNews1679370301878.jpg', '1', '1', NULL, NULL, NULL),
(123, 'Communication', 'https://silocloud.com/connect', 116, 0, 'uploads/sitemap/adminNews1679370322557.jpg', '1', '1', NULL, NULL, NULL),
(124, 'Content Distributions', 'https://silocloud.com/silo-live-streaming-deck', 116, 0, 'uploads/sitemap/adminNews1679370343375.jpg', '1', '1', NULL, NULL, NULL),
(125, 'NFT Marketplace', 'https://silocloud.com/nft-home', 116, 0, 'uploads/sitemap/adminNews1679370362726.jpg', '1', '1', NULL, NULL, NULL),
(126, 'Productivity Tools', 'https://silosuite.com/', 116, 0, 'uploads/sitemap/adminNews1679370386980.jpg', '1', '1', NULL, NULL, NULL),
(127, 'Data Security', 'https://silocloud.com/cloud-file-explorer#elf_l1_Lw', 116, 0, 'uploads/sitemap/adminNews1679370437755.jpg', '1', '1', NULL, NULL, NULL),
(128, 'Explorer', '', 116, 127, '', '1', '0', 'https://silocloud.com/cloud-file-explorer#elf_l1_Lw', 'https://silocloud.com/cloud-file-explorer#elf_l1_Lw', 'https://personapost.com//admin-cp/'),
(129, 'Home', '', 116, 127, '', '1', '0', 'https://silocloud.com/cloud-home', 'https://silocloud.com/cloud-home', 'https://personapost.com//admin-cp/'),
(130, 'Files', '', 116, 127, '', '1', '0', 'https://silocloud.com/cloud-files', 'https://silocloud.com/cloud-files', 'https://personapost.com//admin-cp/'),
(131, 'Starred', '', 116, 127, '', '1', '0', 'https://silocloud.com/cloud-starred', 'https://silocloud.com/cloud-starred', 'https://personapost.com//admin-cp/'),
(132, 'Shared', '', 116, 127, '', '1', '0', 'https://silocloud.com/cloud-shared', 'https://silocloud.com/cloud-shared', 'https://personapost.com//admin-cp/'),
(133, 'Recovery', '', 116, 127, '', '1', '0', 'https://silocloud.com/cloud-recovery', 'https://silocloud.com/cloud-recovery', 'https://personapost.com//admin-cp/'),
(134, 'Setting', '', 116, 127, '', '1', '0', 'https://silocloud.com/cloud-settings', 'https://silocloud.com/cloud-settings', 'https://personapost.com//admin-cp/'),
(135, 'Silo Health', '', 116, 127, '', '1', '0', 'https://silocloud.com/cloud-silo-health', 'https://silocloud.com/cloud-silo-health', 'https://personapost.com//admin-cp/'),
(136, 'Silo NFT', '', 116, 127, '', '1', '0', 'https://silocloud.com/cloud-silo-nft', 'https://silocloud.com/cloud-silo-nft', 'https://personapost.com//admin-cp/'),
(137, 'Silo Overview', NULL, 116, 118, '', '1', '0', 'https://silocloud.com/silo4-2/welcome', 'https://silocloud.com/silo4-2/welcome', 'https://personapost.com//admin-cp/'),
(138, 'Video Tutorial', NULL, 116, 119, '', '1', '0', 'https://silocloud.com/silo4-2/video-tutorials', 'https://silocloud.com/silo4-2/video-tutorials', 'https://personapost.com//admin-cp/'),
(139, 'Open World', NULL, 116, 120, '', '1', '0', 'https://silocloud.com/silo4-2/open-world', 'https://silocloud.com/silo4-2/open-world', 'https://personapost.com//admin-cp/'),
(140, 'Silocloud Storage', NULL, 116, 121, '', '1', '0', 'https://silocloud.com/silo4-2/silocloud-storage', 'https://silocloud.com/silo4-2/silocloud-storage', 'https://personapost.com//admin-cp/'),
(141, 'Communication ', NULL, 116, 123, '', '1', '0', 'https://silocloud.com/connect', 'https://silocloud.com/connect', 'https://personapost.com//admin-cp/'),
(142, 'Persona', NULL, 116, 117, '', '1', '0', 'https://silosecuredata.com/#', 'https://silosecuredata.com/#', 'https://personapost.com//admin-cp/'),
(143, 'Silo Apps', NULL, 116, 117, '', '1', '0', 'https://silosecuredata.com/#', 'https://silosecuredata.com/#', 'https://personapost.com//admin-cp/'),
(144, 'Silocloud', NULL, 116, 117, '', '1', '0', 'https://silosecuredata.com/#', 'https://silosecuredata.com/#', 'https://personapost.com//admin-cp/'),
(145, 'Partners', NULL, 116, 117, '', '1', '0', 'https://silosecuredata.com/#', 'https://silosecuredata.com/#', 'https://personapost.com//admin-cp/'),
(146, 'Connect Distribution', NULL, 116, 124, '', '1', '0', 'https://silocloud.com/silo-live-streaming-deck', 'https://silocloud.com/silo-live-streaming-deck', 'https://personapost.com//admin-cp/'),
(147, 'Productivity Tools', NULL, 116, 126, '', '1', '0', 'https://silosuite.com/', 'https://silosuite.com/', 'https://personapost.com//admin-cp/'),
(148, 'Home', NULL, 116, 122, '', '1', '0', 'https://silocloud.com/blockchain-home', 'https://silocloud.com/blockchain-home', 'https://personapost.com//admin-cp/'),
(149, 'About Us', NULL, 116, 122, '', '1', '0', 'https://silocloud.com/blockchain-about', 'https://silocloud.com/blockchain-about', 'https://personapost.com//admin-cp/'),
(150, 'Wallet', '', 116, 122, '', '1', '0', 'https://silocloud.com/payment-settings2', 'https://silocloud.com/payment-settings2', 'https://personapost.com//admin-cp/'),
(151, 'Services', '', 116, 122, '', '1', '0', 'https://silocloud.com/blockchain-services', 'https://silocloud.com/blockchain-services', 'https://personapost.com//admin-cp/'),
(152, 'Pricing', '', 116, 122, '', '1', '0', 'https://silocloud.com/blockchain-pricing', 'https://silocloud.com/blockchain-pricing', 'https://personapost.com//admin-cp/'),
(153, 'Explorer', '', 116, 122, '', '1', '0', 'https://silocloud.com/enumblockchain-explorer ', 'https://silocloud.com/enumblockchain-explorer ', 'https://personapost.com//admin-cp/'),
(154, 'Contact ', '', 116, 122, '', '1', '0', 'https://silocloud.com/blockchain-contact', 'https://silocloud.com/blockchain-contact', 'https://personapost.com//admin-cp/'),
(155, 'NFT', '', 116, 122, '', '1', '0', 'https://silocloud.com/nft-home', 'https://silocloud.com/nft-home', 'https://personapost.com//admin-cp/'),
(156, 'Home', '', 116, 125, '', '1', '0', 'https://silocloud.com/nft-home', 'https://silocloud.com/nft-home', 'https://personapost.com//admin-cp/'),
(157, 'Process', '', 116, 125, '', '1', '0', 'https://silocloud.com/nft-process', 'https://silocloud.com/nft-process', 'https://personapost.com//admin-cp/'),
(158, 'Live Auction', '', 116, 125, '', '1', '0', 'https://silocloud.com/live-auction', 'https://silocloud.com/live-auction', 'https://personapost.com//admin-cp/'),
(159, 'News', '', 116, 125, '', '1', '0', 'https://silocloud.com/nft-news', 'https://silocloud.com/nft-news', 'https://personapost.com//admin-cp/'),
(160, 'Connect Wallet', '', 116, 125, '', '1', '0', 'https://silocloud.com/connect-wallet', 'https://silocloud.com/connect-wallet', 'https://personapost.com//admin-cp/'),
(161, 'Explorer Apps', '', 116, 125, '', '1', '0', 'https://silocloud.com/nft-home#', 'https://silocloud.com/nft-home#', 'https://personapost.com//admin-cp/'),
(180, 'Organization', 'https://silocloud.com/orgnization', 5, 23, NULL, '1', '1', 'https://silocloud.com/orgnization', NULL, 'https://personapost.com//admin-cp/'),
(181, 'Add Channel', NULL, 5, 22, NULL, '1', '0', 'https://silocloud.com/admin-channel-conference-create', 'https://silocloud.com/admin-channel-conference-create', 'https://personapost.com//admin-cp/'),
(182, 'Preview Channel', NULL, 5, 22, NULL, '1', '0', 'https://silocloud.com/silo-cloud-user-tv-free/mychannel', 'https://silocloud.com/silo-cloud-user-tv-free/mychannel', 'https://personapost.com//admin-cp/'),
(183, 'Document', 'https://silocloud.com/normal-uers-dashboard', 3, 0, 'uploads/sitemap/adminNews1679373592467.jpg', '1', '0', NULL, NULL, NULL),
(184, 'Admin Document', NULL, 3, 183, NULL, '1', '0', 'https://silocloud.com/normal-uers-dashboard', 'https://silocloud.com/normal-uers-dashboard', 'https://personapost.com//admin-cp/'),
(190, 'File Manager', 'https://silocloud.com/cloud-files', 3, 16, NULL, '1', '1', 'https://silocloud.com/cloud-files', '', 'https://personapost.com//admin-cp/'),
(191, 'calendar', 'https://silocloud.com/silo-calendar', 3, 20, NULL, '1', '1', 'https://silocloud.com/silo-calendar', '', 'https://personapost.com//admin-cp/'),
(192, 'QR', 'https://silocloud.com/silo-qr1', 5, 23, NULL, '0', '1', 'https://silocloud.com/silo-qr1', '', 'https://personapost.com//admin-cp/'),
(193, 'Web hosting', 'https://silocloud.com/silo-web-hosting1', 5, 24, NULL, '1', '1', 'https://silocloud.com/silo-web-hosting1', NULL, 'https://personapost.com//admin-cp/'),
(194, 'Canvas', 'https://silocloud.com/silo-canvas', 5, 30, NULL, '1', '', 'https://silocloud.com/silo-canvas', '', 'https://personapost.com//admin-cp/'),
(195, 'Health', 'https://siloadvantagehealth.com', 5, 32, NULL, '1', '1', 'https://siloadvantagehealth.com', '', 'https://personapost.com//admin-cp/'),
(196, 'Secure Data', 'https://silocloud.com/silo-secure-data', 116, 117, NULL, '1', '1', 'https://silocloud.com/silo-secure-data\n', NULL, 'https://personapost.com//admin-cp/'),
(197, 'Community', 'https://silocloud.com/silo-community', 3, 18, NULL, '1', '1', 'https://silocloud.com/silo-community', '', 'https://personapost.com//admin-cp/'),
(198, 'Connect', 'https://silocloud.com/connect', 3, 21, NULL, '1', '1', 'https://silocloud.com/connect', '', 'https://personapost.com//admin-cp/'),
(199, 'Communication', 'https://silocloud.com/connect', 116, 123, NULL, '1', '1', 'https://silocloud.com/connect', '', 'https://personapost.com//admin-cp/'),
(200, 'Blockchain', 'https://silocloud.com/silo-blockchain', 116, 122, NULL, '1', '1', 'https://silocloud.com/silo-blockchain', '', 'https://personapost.com//admin-cp/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_url2`
--
ALTER TABLE `app_url2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_url2`
--
ALTER TABLE `app_url2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
