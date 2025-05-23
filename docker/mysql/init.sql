-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Aug 06, 2024 at 10:30 AM
-- Server version: 11.4.2-MariaDB-ubu2404
-- PHP Version: 8.2.8
ALTER DATABASE crystalforum_
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crystalforum_`
--

-- --------------------------------------------------------

--
-- Table structure for table `DATABASECHANGELOG`
--

CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `DATABASECHANGELOG`
--

INSERT INTO `DATABASECHANGELOG` (`ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`, `DEPLOYMENT_ID`) VALUES
('1737906077484-1', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:32', 1, 'EXECUTED', '9:e87c99fb569bdc0e6b4ec37368220f81', 'createTable tableName=mybb_adminlog', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-2', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:32', 2, 'EXECUTED', '9:854d92802551178867ea3ccb11e797f2', 'createTable tableName=mybb_adminoptions', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-3', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:32', 3, 'EXECUTED', '9:7e5e79498212b63994a797eb44078fed', 'createTable tableName=mybb_adminsessions', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-4', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:32', 4, 'EXECUTED', '9:bf09f006ed65024b4a400e4195601fa3', 'createTable tableName=mybb_adminviews', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-5', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 5, 'EXECUTED', '9:2a8deb869194ca34f12bdb709333d6b2', 'createTable tableName=mybb_announcements', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-6', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 6, 'EXECUTED', '9:0548fe5fe3647f16f2deb97cb9fcccd7', 'createTable tableName=mybb_attachments', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-7', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 7, 'EXECUTED', '9:d9269e026fdeaff1239d692cdae4d16e', 'createTable tableName=mybb_attachtypes', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-8', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 8, 'EXECUTED', '9:d56046fe1d22eb78e4b01a65f7cfe413', 'createTable tableName=mybb_awaitingactivation', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-9', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 9, 'EXECUTED', '9:c69e379d50fb99d7e29521a1c7b3312d', 'createTable tableName=mybb_badwords', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-10', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 10, 'EXECUTED', '9:d96588d3e98787e5fc4379d37737796e', 'createTable tableName=mybb_banfilters', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-11', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 11, 'EXECUTED', '9:092d8eb489e9e00bdb794a31c01fadf1', 'createTable tableName=mybb_banned', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-12', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 12, 'EXECUTED', '9:115242d5b6f32ea8813ca61fdf5438d2', 'createTable tableName=mybb_buddyrequests', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-13', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 13, 'EXECUTED', '9:3547bce2b16d0e3fbb0736444e5f6728', 'createTable tableName=mybb_calendarpermissions', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-14', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 14, 'EXECUTED', '9:91aaf6517b24e4671cdb6011f72bf6ad', 'createTable tableName=mybb_calendars', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-15', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 15, 'EXECUTED', '9:7188147130700aba411330ad45bb94b4', 'createTable tableName=mybb_captcha', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-16', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 16, 'EXECUTED', '9:1169947b12bda5e586e8d936225e6b97', 'createTable tableName=mybb_datacache', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-17', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 17, 'EXECUTED', '9:48e38cd18608fca57c51d031d4a66612', 'createTable tableName=mybb_delayedmoderation', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-18', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 18, 'EXECUTED', '9:f503b13ef3407c72a16675f74e957711', 'createTable tableName=mybb_events', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-19', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 19, 'EXECUTED', '9:00bfcd52c233034a0772fa698ce903ce', 'createTable tableName=mybb_forumpermissions', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-20', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 20, 'EXECUTED', '9:dc233d83d9182251c3dbb41bf7915179', 'createTable tableName=mybb_forums', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-21', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 21, 'EXECUTED', '9:2d42f71e58956409915c5bf75a6e3245', 'createTable tableName=mybb_forumsread', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-22', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 22, 'EXECUTED', '9:3d573c63bde39de306bbefa2c8ea03f9', 'createTable tableName=mybb_forumsubscriptions', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-23', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 23, 'EXECUTED', '9:e468e4a756ec02c02fca2d873b2e626c', 'createTable tableName=mybb_groupleaders', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-24', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 24, 'EXECUTED', '9:c3f0cca5b976173e919deeeceb5ea91a', 'createTable tableName=mybb_helpdocs', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-25', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 25, 'EXECUTED', '9:0af10de964c26f89aa6aa057a1caddf9', 'createTable tableName=mybb_helpsections', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-26', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 26, 'EXECUTED', '9:d98ca42d10b21c977b09992a86aa6511', 'createTable tableName=mybb_hidecontent', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-27', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 27, 'EXECUTED', '9:54b3e6997909ccc610cbcbeedfb51459', 'createTable tableName=mybb_icons', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-28', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 28, 'EXECUTED', '9:461e0778a0ca29a3e812f7c55a3aca63', 'createTable tableName=mybb_joinrequests', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-29', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 29, 'EXECUTED', '9:a6d64c3d61c392c1611401fbb1979ead', 'createTable tableName=mybb_mailerrors', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-30', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 30, 'EXECUTED', '9:9d0d74327a7e09f0321bf7824ec806d2', 'createTable tableName=mybb_maillogs', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-31', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 31, 'EXECUTED', '9:ba318347b0f374a6ffed571a56eb74c3', 'createTable tableName=mybb_mailqueue', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-32', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 32, 'EXECUTED', '9:893b80dc8d4443c18e220033683c9cb6', 'createTable tableName=mybb_massemails', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-33', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 33, 'EXECUTED', '9:eb2fab793a7a42279750e2d79a114cc6', 'createTable tableName=mybb_moderatorlog', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-34', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 34, 'EXECUTED', '9:ac36728292d4561a8b58f7d5220ae653', 'createTable tableName=mybb_moderators', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-35', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 35, 'EXECUTED', '9:4b7f865852a584694b4bfc387fc1475d', 'createTable tableName=mybb_modtools', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-36', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 36, 'EXECUTED', '9:41fe1de7992dba15bd7c3a479396c474', 'createTable tableName=mybb_mycode', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-37', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 37, 'EXECUTED', '9:529a6165fdcbad01e8a4330489fd26cd', 'createTable tableName=mybb_polls', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-38', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 38, 'EXECUTED', '9:b21219953f1600c2f294564ec61ddac9', 'createTable tableName=mybb_pollvotes', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-39', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 39, 'EXECUTED', '9:791c86fac3cdadcf7b96bd75f334d74c', 'createTable tableName=mybb_posts', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-40', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 40, 'EXECUTED', '9:e366e03a4f9f61273c365d30439a7e91', 'createTable tableName=mybb_privatemessages', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-41', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 41, 'EXECUTED', '9:53b912d9ac45ce18e54ef2c5d10a7a96', 'createTable tableName=mybb_profilefields', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-42', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 42, 'EXECUTED', '9:f3b2efffec042a46a01ac64ed8a55ad5', 'createTable tableName=mybb_promotionlogs', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-43', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 43, 'EXECUTED', '9:89a020adf5ec5258cf4cc451b55be85e', 'createTable tableName=mybb_promotions', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-44', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 44, 'EXECUTED', '9:66854c289d3d7717356007b55a5fdcb3', 'createTable tableName=mybb_questions', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-45', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 45, 'EXECUTED', '9:23bc3edf6c49b129b0ea3a97d34dd7e1', 'createTable tableName=mybb_questionsessions', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-46', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 46, 'EXECUTED', '9:8d6599d3d4caffacc3960531d4637292', 'createTable tableName=mybb_reportedcontent', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-47', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 47, 'EXECUTED', '9:00e8bb159656f2bc9a49d3405cb69b1f', 'createTable tableName=mybb_reportreasons', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-48', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 48, 'EXECUTED', '9:40ccc233144367953d1692e627156752', 'createTable tableName=mybb_reputation', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-49', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 49, 'EXECUTED', '9:4f3ca1942e377b917149cfa6f93f9444', 'createTable tableName=mybb_searchlog', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-50', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 50, 'EXECUTED', '9:bac5173d2a17744e204a0361a1e8be02', 'createTable tableName=mybb_sessions', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-51', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 51, 'EXECUTED', '9:a4359addfe098f3a66cb170baca90b60', 'createTable tableName=mybb_settinggroups', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-52', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 52, 'EXECUTED', '9:0c35d92e0473a36aa3931723e75dc50d', 'createTable tableName=mybb_settings', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-53', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 53, 'EXECUTED', '9:3660533a530ba5afc98fc280c84c1727', 'createTable tableName=mybb_smilies', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-54', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 54, 'EXECUTED', '9:529f0425faf32066008c778ed1e0816d', 'createTable tableName=mybb_spamlog', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-55', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 55, 'EXECUTED', '9:3a5d3f8237b1beafce0b6c5fb2a9219f', 'createTable tableName=mybb_spiders', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-56', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 56, 'EXECUTED', '9:bdff0285ba1f787fe5869b23cc6532c4', 'createTable tableName=mybb_stats', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-57', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 57, 'EXECUTED', '9:9b10c60821debd919c9f18bab6528ee6', 'createTable tableName=mybb_tasklog', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-58', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 58, 'EXECUTED', '9:51da62631e9ffacfc72e862c462c29dc', 'createTable tableName=mybb_tasks', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-59', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 59, 'EXECUTED', '9:ccde09ce9ae4e486506bf985ca23299c', 'createTable tableName=mybb_templategroups', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-60', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 60, 'EXECUTED', '9:26f27636114e7d9f5ed01f3acb277faa', 'createTable tableName=mybb_templates', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-61', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 61, 'EXECUTED', '9:ec819cec6819dd85a49fd75df01c7588', 'createTable tableName=mybb_templatesets', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-62', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 62, 'EXECUTED', '9:154c856aeea0d6f75935ceb2fe563d62', 'createTable tableName=mybb_themes', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-63', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 63, 'EXECUTED', '9:6e1fb4f4216e4e001d86784e257a794a', 'createTable tableName=mybb_themestylesheets', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-64', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 64, 'EXECUTED', '9:2fd72c148286372a3ea39a902c60d98d', 'createTable tableName=mybb_threadprefixes', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-65', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 65, 'EXECUTED', '9:58d1f1223d1052bb1feb78c438108954', 'createTable tableName=mybb_threadratings', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-66', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 66, 'EXECUTED', '9:1e25b44465f4bdd283497f53182db4db', 'createTable tableName=mybb_threads', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-67', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 67, 'EXECUTED', '9:c56604fa5c23a4860460d36d162a1c44', 'createTable tableName=mybb_threadsread', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-68', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 68, 'EXECUTED', '9:e0e1b59dcc76f3de67b61083278e23fe', 'createTable tableName=mybb_threadsubscriptions', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-69', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 69, 'EXECUTED', '9:428d9d6d2751e7d9162afbf715758db6', 'createTable tableName=mybb_threadviews', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-70', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 70, 'EXECUTED', '9:dfd350e2e196c694d821f5ffab8d6374', 'createTable tableName=mybb_userfields', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-71', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 71, 'EXECUTED', '9:572a4cdf17f76b91d9201aca5c248f9b', 'createTable tableName=mybb_usergroups', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-72', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 72, 'EXECUTED', '9:c514296d1ee950a444cff3d61b1a3d80', 'createTable tableName=mybb_users', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-73', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 73, 'EXECUTED', '9:345ad1e721990e2d596e3506c07654d6', 'createTable tableName=mybb_usertitles', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-74', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 74, 'EXECUTED', '9:1d0950d2306fc5d6503c9d119e787431', 'createTable tableName=mybb_warninglevels', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-75', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 75, 'EXECUTED', '9:471f9465c02d023b5a6939d76510218b', 'createTable tableName=mybb_warnings', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-76', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 76, 'EXECUTED', '9:ddb99fea14e51c591db6c94f49dc7892', 'createTable tableName=mybb_warningtypes', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-77', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 77, 'EXECUTED', '9:ff554059010695422ebe454f33b4c9e3', 'addUniqueConstraint constraintName=fid, tableName=mybb_forumsread', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-78', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 78, 'EXECUTED', '9:89ba465b5ac580f2921754df0ad65866', 'addUniqueConstraint constraintName=tid, tableName=mybb_threadsread', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-79', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 79, 'EXECUTED', '9:04c71ab401bf5f18021318e6726c3488', 'createIndex indexName=cid, tableName=mybb_events', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-80', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 80, 'EXECUTED', '9:8edadf39ebfb3c91239c08e8dcd8b29f', 'createIndex indexName=dateline, tableName=mybb_banned', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-81', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 81, 'EXECUTED', '9:8505817ea310d27878481c7d1c8aa3d9', 'createIndex indexName=dateline, tableName=mybb_captcha', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-82', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 82, 'EXECUTED', '9:4f905178f0ef7ac5c8ca353a8dd3f438', 'createIndex indexName=dateline, tableName=mybb_forumsread', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-83', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 83, 'EXECUTED', '9:b4a3984c831327cdfc6a4049ff650f68', 'createIndex indexName=dateline, tableName=mybb_posts', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-84', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 84, 'EXECUTED', '9:bd3a652e5802247f477b20d0a69f05fe', 'createIndex indexName=dateline, tableName=mybb_threads', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-85', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 85, 'EXECUTED', '9:779a7c9a6214002a812c642e899824ad', 'createIndex indexName=dateline, tableName=mybb_threadsread', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-86', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 86, 'EXECUTED', '9:472893c8bd55b655c1002f69a48be55a', 'createIndex indexName=daterange, tableName=mybb_events', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-87', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 87, 'EXECUTED', '9:a1790e86ea433895a3b12439ebb74a55', 'createIndex indexName=fid, tableName=mybb_announcements', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-88', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 88, 'EXECUTED', '9:521bea22e31d6402b675e45e73397057', 'createIndex indexName=fid, tableName=mybb_forumpermissions', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-89', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 89, 'EXECUTED', '9:d2e2403cbba5a901f0d287ebeeda1f45', 'createIndex indexName=fid, tableName=mybb_moderatorlog', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-90', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 90, 'EXECUTED', '9:977519881ae5e1d2134f5675dac0f130', 'createIndex indexName=fid, tableName=mybb_threads', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-91', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 91, 'EXECUTED', '9:3c02eeaaf84211a1ce69430cce19bcdf', 'createIndex indexName=firstpost, tableName=mybb_threads', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-92', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 92, 'EXECUTED', '9:bd20ba45f12654adb2cdc562974e55d6', 'createIndex indexName=gid, tableName=mybb_settings', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-93', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 93, 'EXECUTED', '9:f18376e6783b4b88b57de935674958aa', 'createIndex indexName=imagehash, tableName=mybb_captcha', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-94', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 94, 'EXECUTED', '9:4c316f2a5d8b98304f7ea32f00fde3ab', 'createIndex indexName=ip, tableName=mybb_sessions', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-95', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 95, 'EXECUTED', '9:fd4bb46cd701b68d316734a19abbb492', 'createIndex indexName=ipaddress, tableName=mybb_posts', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-96', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 96, 'EXECUTED', '9:086f52a4fa60d2e9928b8053c1f98d4b', 'createIndex indexName=lastip, tableName=mybb_users', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-97', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 97, 'EXECUTED', '9:44cf79a8844ddbcfbf638a4606625da0', 'createIndex indexName=lastpost, tableName=mybb_threads', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-98', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 98, 'EXECUTED', '9:445d5672529240b908d40cebffebdb4e', 'createIndex indexName=lastreport, tableName=mybb_reportedcontent', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-99', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 99, 'EXECUTED', '9:70e6aa8733944f00350a8965d4999af2', 'createIndex indexName=location, tableName=mybb_sessions', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-100', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 100, 'EXECUTED', '9:aea2b5c03af4d13398c813460dd2e768', 'createIndex indexName=message, tableName=mybb_posts', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-101', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 101, 'EXECUTED', '9:979d2b5d32e526b94351bb342716a732', 'createIndex indexName=module, tableName=mybb_adminlog', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-102', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 102, 'EXECUTED', '9:7686b309c17e7c242b171f2d448f30b2', 'createIndex indexName=pid, tableName=mybb_attachments', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-103', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 103, 'EXECUTED', '9:e4e7ddb27343527feff7cf38533557d3', 'createIndex indexName=pid, tableName=mybb_hidecontent', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-104', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 104, 'EXECUTED', '9:0466aa412606361940f5c53eee2ffcad', 'createIndex indexName=pid, tableName=mybb_pollvotes', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-105', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 105, 'EXECUTED', '9:7cfe9e4b14d54d94adb735619c00dea0', 'createIndex indexName=private, tableName=mybb_events', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-106', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 106, 'EXECUTED', '9:7afcc8d485d8b0d4b3ab142f5352ab24', 'createIndex indexName=regip, tableName=mybb_users', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-107', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 107, 'EXECUTED', '9:01d6fd698cf7e85ecf3a9a9b07506fd7', 'createIndex indexName=reportstatus, tableName=mybb_reportedcontent', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-108', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 108, 'EXECUTED', '9:de491358041746e73503ca5ed2800ff2', 'createIndex indexName=sid, tableName=mybb_templates', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-109', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 109, 'EXECUTED', '9:fd2b3fedaf120694f8b948f50a012dbc', 'createIndex indexName=subject, tableName=mybb_threads', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-110', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 110, 'EXECUTED', '9:c220843b683e1daafeb5de078f80f9cb', 'createIndex indexName=tid, tableName=mybb_moderatorlog', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-111', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 111, 'EXECUTED', '9:dee8f7769ae8befb6f04517cf06a9052', 'createIndex indexName=tid, tableName=mybb_polls', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-112', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 112, 'EXECUTED', '9:06ed5c5071f1e99acf805a76c06a0f2c', 'createIndex indexName=tid, tableName=mybb_posts', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-113', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 113, 'EXECUTED', '9:aea326276e8e210731d3445ca6c60b8f', 'createIndex indexName=tid, tableName=mybb_themestylesheets', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-114', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 114, 'EXECUTED', '9:50e3e3b2890a3c7c10d4547b41d1576f', 'createIndex indexName=tid, tableName=mybb_threadratings', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-115', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 115, 'EXECUTED', '9:520d27daa3d0d28e6b2a6fa2e8d270b9', 'createIndex indexName=tid, tableName=mybb_threadsubscriptions', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-116', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 116, 'EXECUTED', '9:bde24dad14a69eebcded1863e4d79d17', 'createIndex indexName=tid, tableName=mybb_threadviews', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-117', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 117, 'EXECUTED', '9:4efe2eab62e54c4179612605b334dd3e', 'createIndex indexName=tiddate, tableName=mybb_posts', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-118', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 118, 'EXECUTED', '9:e868776c7e882b0a524a504d16f86bee', 'createIndex indexName=time, tableName=mybb_sessions', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-119', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 119, 'EXECUTED', '9:c3d465c62eb60ca2744626028aa86ca4', 'createIndex indexName=toid, tableName=mybb_privatemessages', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-120', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 120, 'EXECUTED', '9:ab389bd87c2aa752bb69e06c1abd6329', 'createIndex indexName=touid, tableName=mybb_buddyrequests', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-121', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 121, 'EXECUTED', '9:88b351cd416842d742851484a4d71d49', 'createIndex indexName=type, tableName=mybb_banfilters', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-122', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 122, 'EXECUTED', '9:e70986c536be58e6c4c9a76ff7553801', 'createIndex indexName=uid, tableName=mybb_adminlog', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-123', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 123, 'EXECUTED', '9:b84fda7132a1fb4ceb0200c30467bc3d', 'createIndex indexName=uid, tableName=mybb_attachments', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-124', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:33', 124, 'EXECUTED', '9:f2969db212cf28a65086cce08663fef5', 'createIndex indexName=uid, tableName=mybb_banned', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-125', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:34', 125, 'EXECUTED', '9:2c100494d20fe6ba4649d01200d7937a', 'createIndex indexName=uid, tableName=mybb_buddyrequests', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-126', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:34', 126, 'EXECUTED', '9:7d7ae509736449d608eb9e0e0ec0634a', 'createIndex indexName=uid, tableName=mybb_forumsubscriptions', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-127', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:34', 127, 'EXECUTED', '9:65f2dfcac3ec6058d96ffb0a294d569d', 'createIndex indexName=uid, tableName=mybb_hidecontent', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-128', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:34', 128, 'EXECUTED', '9:01ac0bff1ca4f46aa828e6f45f261376', 'createIndex indexName=uid, tableName=mybb_moderatorlog', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-129', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:34', 129, 'EXECUTED', '9:70dc196e668eb4a57cf0b658733cd46f', 'createIndex indexName=uid, tableName=mybb_moderators', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-130', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:34', 130, 'EXECUTED', '9:56a75ef90d54ee5551a8d1e0193dc740', 'createIndex indexName=uid, tableName=mybb_posts', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-131', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:34', 131, 'EXECUTED', '9:09d6ab2c141b557a5c5618923f50a371', 'createIndex indexName=uid, tableName=mybb_privatemessages', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-132', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:34', 132, 'EXECUTED', '9:bc6ac50d8c442911c9c6a3b308d5ca58', 'createIndex indexName=uid, tableName=mybb_reputation', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-133', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:34', 133, 'EXECUTED', '9:4ff1aeb46adc480fca8d556cf99f96c0', 'createIndex indexName=uid, tableName=mybb_sessions', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-134', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:34', 134, 'EXECUTED', '9:c02aacacd21779d34e481a0373cd6518', 'createIndex indexName=uid, tableName=mybb_threads', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-135', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:34', 135, 'EXECUTED', '9:ca955ea60b207315945a52b88d2b7d9a', 'createIndex indexName=uid, tableName=mybb_threadsubscriptions', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-136', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:34', 136, 'EXECUTED', '9:64d62cb1d49dc28904faa7f69a5146b9', 'createIndex indexName=uid, tableName=mybb_warnings', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-137', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:34', 137, 'EXECUTED', '9:93848dd1ed6214e7b5b901769fd73036', 'createIndex indexName=usergroup, tableName=mybb_users', '', NULL, '4.31.0', NULL, NULL, '7906211173'),
('1737906077484-138', 'liquibase (generated)', 'changelog/db.changelog.xml', '2025-01-26 15:43:34', 138, 'EXECUTED', '9:143b2a78699578f5972ea3f74735716a', 'createIndex indexName=visible, tableName=mybb_posts', '', NULL, '4.31.0', NULL, NULL, '7906211173');

-- --------------------------------------------------------

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` tinyint(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

INSERT INTO `DATABASECHANGELOGLOCK` (`ID`, `LOCKED`, `LOCKGRANTED`, `LOCKEDBY`) VALUES
(1, 0, NULL, NULL);

-- --------------------------------------------------------
--
-- Table structure for table `mybb_adminlog`
--

CREATE TABLE `mybb_adminlog` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ipaddress` varbinary(16) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `module` varchar(50) NOT NULL DEFAULT '',
  `action` varchar(50) NOT NULL DEFAULT '',
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_adminlog`
--

INSERT INTO `mybb_adminlog` (`uid`, `ipaddress`, `dateline`, `module`, `action`, `data`) VALUES
(1, 0x521f689c, 1719341733, 'user-users', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:13:\"Administrator\";}'),
(1, 0x521f689c, 1719341800, 'user-users', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:13:\"Administrator\";}'),
(1, 0x521f689c, 1719341853, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1719342046, 'config-plugins', 'activate', 'a:2:{i:0;s:8:\"avatarep\";i:1;b:0;}'),
(1, 0x521f689c, 1719342049, 'config-plugins', 'activate', 'a:2:{i:0;s:16:\"defaultavatarfix\";i:1;b:0;}'),
(1, 0x521f689c, 1719342051, 'config-plugins', 'activate', 'a:2:{i:0;s:5:\"tpref\";i:1;b:0;}'),
(1, 0x521f689c, 1719342077, 'style-themes', 'import', 'a:1:{i:0;i:3;}'),
(1, 0x521f689c, 1719342090, 'style-themes', 'set_default', 'a:2:{i:0;s:1:\"3\";i:1;s:15:\"Inspired (Dark)\";}'),
(1, 0x521f689c, 1719342156, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:15:\"Inspired (Dark)\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719342842, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:15:\"Inspired (Dark)\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719342867, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:15:\"Inspired (Dark)\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719381605, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:15:\"Inspired (Dark)\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719381634, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:15:\"Inspired (Dark)\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719381656, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:15:\"Inspired (Dark)\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719381670, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:15:\"Inspired (Dark)\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719381742, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:15:\"Inspired (Dark)\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719381839, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:15:\"Inspired (Dark)\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719381902, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:15:\"Inspired (Dark)\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719381933, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:15:\"Inspired (Dark)\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719382078, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:15:\"Inspired (Dark)\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719383171, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1115\";i:1;s:15:\"index_statspage\";i:2;i:2;i:3;s:25:\"Inspired (Dark) Templates\";}'),
(1, 0x521f689c, 1719383181, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1115\";i:1;s:15:\"index_statspage\";i:2;i:2;i:3;s:25:\"Inspired (Dark) Templates\";}'),
(1, 0x521f689c, 1719383202, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1116\";i:1;s:16:\"index_whosonline\";i:2;i:2;i:3;s:25:\"Inspired (Dark) Templates\";}'),
(1, 0x521f689c, 1719383209, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1116\";i:1;s:16:\"index_whosonline\";i:2;i:2;i:3;s:25:\"Inspired (Dark) Templates\";}'),
(1, 0x521f689c, 1719383218, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1114\";i:1;s:11:\"index_stats\";i:2;i:2;i:3;s:25:\"Inspired (Dark) Templates\";}'),
(1, 0x521f689c, 1719383227, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1114\";i:1;s:11:\"index_stats\";i:2;i:2;i:3;s:25:\"Inspired (Dark) Templates\";}'),
(1, 0x521f689c, 1719383255, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1110\";i:1;s:5:\"index\";i:2;i:2;i:3;s:25:\"Inspired (Dark) Templates\";}'),
(1, 0x521f689c, 1719383271, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1110\";i:1;s:5:\"index\";i:2;i:2;i:3;s:25:\"Inspired (Dark) Templates\";}'),
(1, 0x521f689c, 1719383281, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1110\";i:1;s:5:\"index\";i:2;i:2;i:3;s:25:\"Inspired (Dark) Templates\";}'),
(1, 0x521f689c, 1719383308, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1044\";i:1;s:6:\"footer\";i:2;i:2;i:3;s:25:\"Inspired (Dark) Templates\";}'),
(1, 0x521f689c, 1719383495, 'forum-management', 'edit', 'a:2:{i:0;i:1;i:1;s:11:\"My Category\";}'),
(1, 0x521f689c, 1719383508, 'forum-management', 'edit', 'a:2:{i:0;i:2;i:1;s:8:\"My Forum\";}'),
(1, 0x521f689c, 1719383529, 'forum-management', 'edit', 'a:2:{i:0;i:1;i:1;s:11:\"My Category\";}'),
(1, 0x521f689c, 1719383551, 'forum-management', 'add', 'a:2:{i:0;i:3;i:1;s:7:\"Forum 2\";}'),
(1, 0x521f689c, 1719383571, 'forum-management', 'add', 'a:2:{i:0;i:4;i:1;s:9:\"Poddział\";}'),
(1, 0x521f689c, 1719383583, 'forum-management', 'add', 'a:2:{i:0;i:5;i:1;s:11:\"Poddział 2\";}'),
(1, 0x521f689c, 1719383847, 'style-themes', 'import', 'a:1:{i:0;i:4;}'),
(1, 0x521f689c, 1719383855, 'style-themes', 'set_default', 'a:2:{i:0;s:1:\"4\";i:1;s:12:\"Emerald Dark\";}'),
(1, 0x521f689c, 1719384093, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1664\";i:1;s:5:\"index\";i:2;i:3;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719384135, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1664\";i:1;s:5:\"index\";i:2;i:3;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719384196, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1658\";i:1;s:6:\"header\";i:2;i:3;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719384547, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1658\";i:1;s:6:\"header\";i:2;i:3;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719384579, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1658\";i:1;s:6:\"header\";i:2;i:3;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719384601, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1658\";i:1;s:6:\"header\";i:2;i:3;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719384641, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1658\";i:1;s:6:\"header\";i:2;i:3;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719384667, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1658\";i:1;s:6:\"header\";i:2;i:3;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719384700, 'style-themes', 'delete', 'a:2:{i:0;s:1:\"4\";i:1;s:12:\"Emerald Dark\";}'),
(1, 0x521f689c, 1719384716, 'style-themes', 'import', 'a:1:{i:0;i:5;}'),
(1, 0x521f689c, 1719384722, 'style-themes', 'set_default', 'a:2:{i:0;s:1:\"5\";i:1;s:12:\"Emerald Dark\";}'),
(1, 0x521f689c, 1719384742, 'style-templates', 'delete_set', 'a:2:{i:0;s:1:\"3\";i:1;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719384772, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719384792, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719384817, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719384863, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719384887, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719384897, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719384931, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719384941, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719384970, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719385045, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719385117, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719385183, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719385200, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719385308, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719385366, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719385444, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719385518, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719385549, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719385565, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719385695, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719385707, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719385850, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719385921, 'config-plugins', 'deactivate', 'a:2:{i:0;s:16:\"defaultavatarfix\";i:1;b:0;}'),
(1, 0x521f689c, 1719386001, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719386044, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719386457, 'config-plugins', 'activate', 'a:2:{i:0;s:16:\"defaultavatarfix\";i:1;b:0;}'),
(1, 0x521f689c, 1719395026, 'forum-management', 'add', 'a:2:{i:0;i:6;i:1;s:10:\"Category 2\";}'),
(1, 0x521f689c, 1719396892, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719397008, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719397124, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719397230, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719397261, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719397274, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719397286, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719397409, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719397420, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719397655, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719397705, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1719398435, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1719398480, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1719398524, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1719398537, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1719398564, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1719398587, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1719398612, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719398634, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1719398766, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1719398874, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1719398952, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1719399025, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1719399090, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1719399120, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1719399187, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1719399228, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1719399453, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719399465, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719399479, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719399508, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719399518, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719402967, 'style-templates', 'edit_template', 'a:4:{i:0;i:1944;i:1;s:18:\"forumbit_subforums\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719402987, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1944\";i:1;s:18:\"forumbit_subforums\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719403101, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1719403310, 'config-smilies', 'delete', 'a:2:{i:0;s:1:\"1\";i:1;s:5:\"Smile\";}'),
(1, 0x521f689c, 1719403335, 'config-smilies', 'mass_edit', 'a:0:{}'),
(1, 0x521f689c, 1719404196, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719404262, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719404280, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719404326, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719404426, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719405195, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719405271, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719405333, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719405353, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719405393, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719405421, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719405502, 'forum-management', 'edit', 'a:2:{i:0;i:3;i:1;s:7:\"Forum 2\";}'),
(1, 0x521f689c, 1719405649, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719405682, 'forum-management', 'edit', 'a:2:{i:0;i:5;i:1;s:11:\"Poddział 2\";}'),
(1, 0x521f689c, 1719405771, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719405856, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719405994, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719406044, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719406059, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719406203, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719406213, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719410024, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719410160, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719410331, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719410451, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719410476, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719410501, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719410872, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719410923, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719411054, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719411182, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719411358, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719411566, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719411622, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719411666, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719411708, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719411845, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719411902, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719411995, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719412231, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719412255, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719412279, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719412301, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719412320, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719412345, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719412458, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719412519, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719412559, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719412623, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719412893, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719412924, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719413281, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719413343, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719413355, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719413394, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719415560, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719415580, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719415639, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719415652, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719415692, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719415731, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719415769, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719415801, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1797\";i:1;s:19:\"forumbit_depth2_cat\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719415852, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1797\";i:1;s:19:\"forumbit_depth2_cat\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719415870, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1795\";i:1;s:19:\"forumbit_depth1_cat\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719416086, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719416128, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719416171, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719416224, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719416242, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719416272, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719416318, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719416360, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719417591, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1795\";i:1;s:19:\"forumbit_depth1_cat\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719417893, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719418016, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719418043, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719418211, 'config-plugins', 'deactivate', 'a:2:{i:0;s:16:\"defaultavatarfix\";i:1;b:0;}'),
(1, 0x521f689c, 1719418220, 'config-plugins', 'activate', 'a:2:{i:0;s:16:\"defaultavatarfix\";i:1;b:0;}'),
(1, 0x521f689c, 1719418272, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719418290, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719419558, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719419600, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719419614, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719427046, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719427154, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719427299, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719427505, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719427563, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719428107, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719428231, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719428363, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719428374, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719428477, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719428617, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719428782, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719428890, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719429037, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719429309, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719429348, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719429414, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719429816, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719429917, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719429957, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1795\";i:1;s:19:\"forumbit_depth1_cat\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719429995, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1795\";i:1;s:19:\"forumbit_depth1_cat\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719430131, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719430159, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719430181, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719430296, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719430818, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1795\";i:1;s:19:\"forumbit_depth1_cat\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719430951, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719430990, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719431019, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719431084, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719431123, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719431341, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719431390, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719431426, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719431459, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719431504, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719431558, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719431582, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719431603, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719431734, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719431776, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719431804, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719431821, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719431837, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719431866, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719431902, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719431940, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719432529, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719432599, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719432707, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"extra.css\";}'),
(1, 0x521f689c, 1719432962, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719433002, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719433024, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719433142, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719433240, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719433280, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719433305, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719433334, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719433368, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719433396, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719433431, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719433527, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719433647, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719433853, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719434317, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719434342, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719434447, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719434475, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719434513, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719434547, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719434690, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719434717, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719434760, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719434773, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719434888, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719434897, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719434937, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719434959, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719435516, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719435553, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719435595, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719435623, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719435669, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719435710, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719435734, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719435759, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719435780, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719435792, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719435806, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719435819, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719435836, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719435850, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719435881, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719435939, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719436442, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719436469, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719436495, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719436512, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719436528, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719436551, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719436634, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719436708, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719436735, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719436758, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719436782, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719436802, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719436822, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719436835, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719436857, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719437003, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719437035, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719437056, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719437278, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719437388, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719437442, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719437459, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719437483, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719437500, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719437528, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719437828, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719438033, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719438064, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719438253, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719438345, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719438359, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719438379, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719438487, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719438561, 'forum-management', 'edit', 'a:2:{i:0;i:3;i:1;s:37:\"Polskie znaki ą ę ć ś ł ó ż ź\";}'),
(1, 0x521f689c, 1719438629, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719438659, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719439093, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719439127, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719439153, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719439171, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719439206, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719439880, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719439908, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719439960, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719439973, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719440054, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719440414, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719440449, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719440468, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719440482, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719440518, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719440554, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719440580, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719440597, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719440645, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719440696, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719440737, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719440781, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719440797, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719440829, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719441557, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719441620, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719441806, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719441836, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719441851, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719444009, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1944\";i:1;s:18:\"forumbit_subforums\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719444028, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1944\";i:1;s:18:\"forumbit_subforums\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719446221, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719470585, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719470597, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719470624, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719470645, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719470696, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719470737, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719471462, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719471508, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719471633, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719471851, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719471859, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719471897, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719471947, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719471982, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}');
INSERT INTO `mybb_adminlog` (`uid`, `ipaddress`, `dateline`, `module`, `action`, `data`) VALUES
(1, 0x521f689c, 1719472069, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719472112, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719472144, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719472151, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719472186, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719472256, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719472278, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719472288, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719472312, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719472331, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719472350, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719472368, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719472385, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719472401, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719472411, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719472477, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719472492, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719472509, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719473042, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719473104, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719473425, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719473471, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719474008, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719474041, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719474132, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719474188, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719474232, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719474305, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719474323, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719474352, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719474514, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719474551, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719474605, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719474699, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719474802, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719474866, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719474916, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719474935, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719475054, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719475072, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719475100, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719475108, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719475260, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719475334, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719475436, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719475484, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719475497, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719475531, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719475551, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719475872, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719476017, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1804\";i:1;s:22:\"forumdisplay_subforums\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719476133, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719476168, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719476181, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719476269, 'style-templates', 'edit_template', 'a:4:{i:0;i:1945;i:1;s:36:\"forumbit_depth2_forum_lastpost_never\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719476303, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1945\";i:1;s:36:\"forumbit_depth2_forum_lastpost_never\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719476314, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1945\";i:1;s:36:\"forumbit_depth2_forum_lastpost_never\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719476341, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1945\";i:1;s:36:\"forumbit_depth2_forum_lastpost_never\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719476476, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719476531, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719476554, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719476679, 'style-themes', 'set_default', 'a:2:{i:0;s:1:\"3\";i:1;s:15:\"Inspired (Dark)\";}'),
(1, 0x521f689c, 1719476711, 'style-themes', 'set_default', 'a:2:{i:0;s:1:\"5\";i:1;s:12:\"Emerald Dark\";}'),
(1, 0x521f689c, 1719476878, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719477613, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719477699, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719477747, 'style-themes', 'set_default', 'a:2:{i:0;s:1:\"2\";i:1;s:7:\"Default\";}'),
(1, 0x521f689c, 1719477790, 'config-plugins', 'deactivate', 'a:2:{i:0;s:16:\"defaultavatarfix\";i:1;b:0;}'),
(1, 0x521f689c, 1719477798, 'config-plugins', 'activate', 'a:2:{i:0;s:16:\"defaultavatarfix\";i:1;b:0;}'),
(1, 0x521f689c, 1719478028, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719478368, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1719478503, 'style-themes', 'set_default', 'a:2:{i:0;s:1:\"3\";i:1;s:15:\"Inspired (Dark)\";}'),
(1, 0x521f689c, 1719478518, 'style-themes', 'set_default', 'a:2:{i:0;s:1:\"5\";i:1;s:12:\"Emerald Dark\";}'),
(1, 0x521f689c, 1719478576, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719478700, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719478725, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719478788, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719478834, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719478933, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:12:\"avatarep.css\";}'),
(1, 0x521f689c, 1719479050, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:12:\"avatarep.css\";}'),
(1, 0x521f689c, 1719479115, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:12:\"avatarep.css\";}'),
(1, 0x521f689c, 1719479135, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:12:\"avatarep.css\";}'),
(1, 0x521f689c, 1719479159, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:12:\"avatarep.css\";}'),
(1, 0x521f689c, 1719479189, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:12:\"avatarep.css\";}'),
(1, 0x521f689c, 1719479207, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719479253, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:12:\"avatarep.css\";}'),
(1, 0x521f689c, 1719479293, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1799\";i:1;s:30:\"forumbit_depth2_forum_lastpost\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719479316, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1945\";i:1;s:36:\"forumbit_depth2_forum_lastpost_never\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719479713, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1850\";i:1;s:3:\"nav\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719479726, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1850\";i:1;s:3:\"nav\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719479745, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1850\";i:1;s:3:\"nav\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719479780, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719479826, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1719479906, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719479929, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719479967, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719480084, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1945\";i:1;s:36:\"forumbit_depth2_forum_lastpost_never\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719480104, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1945\";i:1;s:36:\"forumbit_depth2_forum_lastpost_never\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719480123, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1945\";i:1;s:36:\"forumbit_depth2_forum_lastpost_never\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719480217, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1945\";i:1;s:36:\"forumbit_depth2_forum_lastpost_never\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719480232, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1945\";i:1;s:36:\"forumbit_depth2_forum_lastpost_never\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719480242, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1945\";i:1;s:36:\"forumbit_depth2_forum_lastpost_never\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719480278, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1945\";i:1;s:36:\"forumbit_depth2_forum_lastpost_never\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719480440, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719480520, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719480542, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719480742, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:12:\"avatarep.css\";}'),
(1, 0x521f689c, 1719480806, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:12:\"avatarep.css\";}'),
(1, 0x521f689c, 1719480873, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:12:\"avatarep.css\";}'),
(1, 0x521f689c, 1719480887, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:12:\"avatarep.css\";}'),
(1, 0x521f689c, 1719481022, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:12:\"avatarep.css\";}'),
(1, 0x521f689c, 1719481161, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719481193, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719481226, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719481372, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719481571, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719481639, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719481707, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719484439, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1719495331, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1803\";i:1;s:22:\"forumdisplay_newthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719495358, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1803\";i:1;s:22:\"forumdisplay_newthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719495386, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1803\";i:1;s:22:\"forumdisplay_newthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719495402, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1803\";i:1;s:22:\"forumdisplay_newthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719495942, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1803\";i:1;s:22:\"forumdisplay_newthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719496079, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1803\";i:1;s:22:\"forumdisplay_newthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719496115, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1803\";i:1;s:22:\"forumdisplay_newthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719496127, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1803\";i:1;s:22:\"forumdisplay_newthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719496492, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719496566, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719496585, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719496691, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719496734, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719496791, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719497131, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719497898, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719498062, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719498096, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719498138, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719498555, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719498603, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719498680, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719498740, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719498765, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719499094, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719499160, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719499218, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719499287, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719499317, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719499465, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719500208, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719500248, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719500267, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719500419, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719500443, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719500520, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719500540, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719500555, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719500593, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719500615, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719500662, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719500759, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719500832, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719500964, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719501004, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1719501044, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1719501181, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719501192, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719501308, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719501333, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719501362, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719501382, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719501398, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719501449, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719501477, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719501523, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719501547, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719501569, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719501668, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719501705, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719501730, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719501763, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719501797, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719501814, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719501839, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719501867, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719501887, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719501911, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719502713, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719502787, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719503194, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1945\";i:1;s:36:\"forumbit_depth2_forum_lastpost_never\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719503274, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1945\";i:1;s:36:\"forumbit_depth2_forum_lastpost_never\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719503470, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719503514, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719503571, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719503804, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719506552, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719506585, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719506598, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719506636, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719506675, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719506717, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719506827, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719506976, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719507073, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719507084, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719507097, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1806\";i:1;s:23:\"forumdisplay_threadlist\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719507798, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719507826, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719507843, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1805\";i:1;s:19:\"forumdisplay_thread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719507874, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719507898, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1805\";i:1;s:19:\"forumdisplay_thread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719507932, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1805\";i:1;s:19:\"forumdisplay_thread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719508057, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719508150, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719508177, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719508206, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719508235, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719508342, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719508424, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719510124, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719510153, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719510245, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719510581, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719510589, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719510705, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719510830, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719510884, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719510948, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719511008, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719511030, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719511064, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719511300, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719511311, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719511411, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719511648, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719511687, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719511710, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719511722, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719511766, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719511809, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719511840, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719512031, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719512187, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1719512633, 'config-post_icons', 'delete', 'a:2:{i:0;s:1:\"7\";i:1;s:8:\"Big Grin\";}'),
(1, 0x521f689c, 1719512636, 'config-post_icons', 'delete', 'a:2:{i:0;s:1:\"9\";i:1;s:5:\"Brick\";}'),
(1, 0x521f689c, 1719512639, 'config-post_icons', 'delete', 'a:2:{i:0;s:1:\"1\";i:1;s:3:\"Bug\";}'),
(1, 0x521f689c, 1719512643, 'config-post_icons', 'delete', 'a:2:{i:0;s:1:\"2\";i:1;s:11:\"Exclamation\";}'),
(1, 0x521f689c, 1719512646, 'config-post_icons', 'delete', 'a:2:{i:0;s:2:\"10\";i:1;s:5:\"Heart\";}'),
(1, 0x521f689c, 1719512649, 'config-post_icons', 'delete', 'a:2:{i:0;s:2:\"11\";i:1;s:11:\"Information\";}'),
(1, 0x521f689c, 1719512675, 'config-post_icons', 'delete', 'a:2:{i:0;s:2:\"12\";i:1;s:9:\"Lightbulb\";}'),
(1, 0x521f689c, 1719512678, 'config-post_icons', 'delete', 'a:2:{i:0;s:2:\"13\";i:1;s:5:\"Music\";}'),
(1, 0x521f689c, 1719512683, 'config-post_icons', 'delete', 'a:2:{i:0;s:2:\"14\";i:1;s:5:\"Photo\";}'),
(1, 0x521f689c, 1719512686, 'config-post_icons', 'delete', 'a:2:{i:0;s:1:\"3\";i:1;s:8:\"Question\";}'),
(1, 0x521f689c, 1719512688, 'config-post_icons', 'delete', 'a:2:{i:0;s:2:\"15\";i:1;s:7:\"Rainbow\";}'),
(1, 0x521f689c, 1719512691, 'config-post_icons', 'delete', 'a:2:{i:0;s:1:\"5\";i:1;s:3:\"Sad\";}'),
(1, 0x521f689c, 1719512693, 'config-post_icons', 'delete', 'a:2:{i:0;s:2:\"16\";i:1;s:7:\"Shocked\";}'),
(1, 0x521f689c, 1719512695, 'config-post_icons', 'delete', 'a:2:{i:0;s:1:\"4\";i:1;s:5:\"Smile\";}'),
(1, 0x521f689c, 1719512698, 'config-post_icons', 'delete', 'a:2:{i:0;s:2:\"17\";i:1;s:4:\"Star\";}'),
(1, 0x521f689c, 1719512700, 'config-post_icons', 'delete', 'a:2:{i:0;s:2:\"18\";i:1;s:11:\"Thumbs Down\";}'),
(1, 0x521f689c, 1719512702, 'config-post_icons', 'delete', 'a:2:{i:0;s:2:\"19\";i:1;s:9:\"Thumbs Up\";}'),
(1, 0x521f689c, 1719512705, 'config-post_icons', 'delete', 'a:2:{i:0;s:1:\"8\";i:1;s:6:\"Tongue\";}'),
(1, 0x521f689c, 1719512707, 'config-post_icons', 'delete', 'a:2:{i:0;s:2:\"20\";i:1;s:5:\"Video\";}'),
(1, 0x521f689c, 1719512709, 'config-post_icons', 'delete', 'a:2:{i:0;s:1:\"6\";i:1;s:4:\"Wink\";}'),
(1, 0x521f689c, 1719512967, 'config-post_icons', 'add', 'a:2:{i:0;i:21;i:1;s:5:\"Heart\";}'),
(1, 0x521f689c, 1719512974, 'config-post_icons', 'edit', 'a:2:{i:0;s:2:\"21\";i:1;s:5:\"Heart\";}'),
(1, 0x521f689c, 1719513009, 'config-post_icons', 'add', 'a:2:{i:0;i:22;i:1;s:8:\"Amethyst\";}'),
(1, 0x521f689c, 1719513034, 'config-post_icons', 'add', 'a:2:{i:0;i:23;i:1;s:12:\"Angel Quartz\";}'),
(1, 0x521f689c, 1719513062, 'config-post_icons', 'add', 'a:2:{i:0;i:24;i:1;s:10:\"Aventurine\";}'),
(1, 0x521f689c, 1719513082, 'config-post_icons', 'add', 'a:2:{i:0;i:25;i:1;s:9:\"Celestite\";}'),
(1, 0x521f689c, 1719513097, 'config-post_icons', 'add', 'a:2:{i:0;i:26;i:1;s:7:\"Citrine\";}'),
(1, 0x521f689c, 1719513121, 'config-post_icons', 'add', 'a:2:{i:0;i:27;i:1;s:14:\"Rainbow Quartz\";}'),
(1, 0x521f689c, 1719513143, 'config-post_icons', 'add', 'a:2:{i:0;i:28;i:1;s:11:\"Rose Quartz\";}'),
(1, 0x521f689c, 1719513175, 'config-post_icons', 'add', 'a:2:{i:0;i:29;i:1;s:12:\"Smoky Quartz\";}'),
(1, 0x521f689c, 1719513493, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719513514, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719513664, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1794\";i:1;s:6:\"footer\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719513789, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1794\";i:1;s:6:\"footer\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719513821, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1794\";i:1;s:6:\"footer\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719513885, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719513907, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1794\";i:1;s:6:\"footer\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719513915, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719514181, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1794\";i:1;s:6:\"footer\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719514220, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1794\";i:1;s:6:\"footer\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719514297, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1794\";i:1;s:6:\"footer\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719514317, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1794\";i:1;s:6:\"footer\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719514340, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1794\";i:1;s:6:\"footer\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719514369, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719514402, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1794\";i:1;s:6:\"footer\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719514435, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1794\";i:1;s:6:\"footer\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719514488, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"footer.css\";}'),
(1, 0x521f689c, 1719514516, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"footer.css\";}'),
(1, 0x521f689c, 1719514537, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"footer.css\";}'),
(1, 0x521f689c, 1719514551, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"footer.css\";}'),
(1, 0x521f689c, 1719514570, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"footer.css\";}'),
(1, 0x521f689c, 1719514644, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1794\";i:1;s:6:\"footer\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719514658, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1794\";i:1;s:6:\"footer\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719514685, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1794\";i:1;s:6:\"footer\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719514697, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1794\";i:1;s:6:\"footer\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719514755, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1794\";i:1;s:6:\"footer\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719514783, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1794\";i:1;s:6:\"footer\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719515213, 'style-templates', 'edit_template', 'a:4:{i:0;i:1946;i:1;s:37:\"header_welcomeblock_guest_login_modal\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719515241, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1946\";i:1;s:37:\"header_welcomeblock_guest_login_modal\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719515545, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1794\";i:1;s:6:\"footer\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719515564, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1794\";i:1;s:6:\"footer\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719515807, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"footer.css\";}'),
(1, 0x521f689c, 1719515846, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"footer.css\";}'),
(1, 0x521f689c, 1719515908, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"footer.css\";}'),
(1, 0x521f689c, 1719515968, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"footer.css\";}'),
(1, 0x521f689c, 1719515988, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"footer.css\";}'),
(1, 0x521f689c, 1719516461, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719516574, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"footer.css\";}'),
(1, 0x521f689c, 1719516598, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"footer.css\";}'),
(1, 0x521f689c, 1719516715, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"footer.css\";}'),
(1, 0x521f689c, 1719516740, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"footer.css\";}'),
(1, 0x521f689c, 1719518130, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1805\";i:1;s:19:\"forumdisplay_thread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719518160, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1805\";i:1;s:19:\"forumdisplay_thread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719518183, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1805\";i:1;s:19:\"forumdisplay_thread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719567959, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719567973, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719569113, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1719569148, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1719569215, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1719868954, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1850\";i:1;s:3:\"nav\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719869018, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1850\";i:1;s:3:\"nav\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719869048, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1850\";i:1;s:3:\"nav\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719869074, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1850\";i:1;s:3:\"nav\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719869108, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1852\";i:1;s:14:\"nav_bit_active\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719869143, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1852\";i:1;s:14:\"nav_bit_active\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719869194, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719869223, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719871239, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719871269, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719871338, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719871354, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719871408, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719871433, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719871457, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1719951866, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719951887, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719953115, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719953542, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719953574, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719953605, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719953615, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719991563, 'style-themes', 'add_stylesheet', 'a:4:{i:0;i:61;i:1;s:13:\"variables.css\";i:2;s:1:\"5\";i:3;s:12:\"Emerald Dark\";}'),
(1, 0x521f689c, 1719991634, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719991691, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719991744, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1719991801, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719991894, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1719991926, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719991986, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1719992330, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1719992340, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719992374, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}');
INSERT INTO `mybb_adminlog` (`uid`, `ipaddress`, `dateline`, `module`, `action`, `data`) VALUES
(1, 0x521f689c, 1719992386, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719992493, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1719992516, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719993141, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719993256, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719993258, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1719993328, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719993362, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1719993435, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719996300, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719996329, 'style-themes', 'add_stylesheet', 'a:4:{i:0;i:62;i:1;s:10:\"mycode.css\";i:2;s:1:\"5\";i:3;s:12:\"Emerald Dark\";}'),
(1, 0x521f689c, 1719996355, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1719996438, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1719996514, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1719996542, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719996544, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1719996593, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1719996644, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719996647, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719996650, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719996864, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1719996937, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1719996988, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1719997077, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1719997139, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719997439, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1719997485, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1719997523, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719997644, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719997803, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719997876, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719998001, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719998035, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719998321, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1719998341, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1719998579, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1719998593, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719998664, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719998825, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"extra.css\";}'),
(1, 0x521f689c, 1719998868, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"extra.css\";}'),
(1, 0x521f689c, 1719999204, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1719999488, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1719999552, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:17:\"thread_status.css\";}'),
(1, 0x521f689c, 1719999897, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1719999921, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1719999961, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1719999992, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720000014, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720000659, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720000665, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720000695, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720000718, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720000753, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720000771, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720001729, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720001820, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720001934, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720002043, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720002088, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720002382, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720002453, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720002766, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720002802, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720003669, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720003690, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720003724, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720003778, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720004469, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720004479, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720004568, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720004838, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720004895, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720004911, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720005059, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720005142, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720005150, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720005328, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1805\";i:1;s:19:\"forumdisplay_thread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720005631, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720005700, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720005727, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720005761, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720005784, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720005811, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720005825, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720005891, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720005928, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720005973, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720006002, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720006034, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720006064, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720006100, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720006424, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720006602, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720006681, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720006693, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1720006760, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720006870, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720006901, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720006912, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720006984, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720006994, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720007007, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720007052, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720007064, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720007115, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720007133, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720007139, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720007254, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720007297, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720007325, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720007350, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720007383, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720007463, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720007524, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720007563, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720009291, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720009676, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720009738, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720009787, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720009842, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720018560, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720018577, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720018623, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720018676, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720018697, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720018840, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720018874, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720018904, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720019478, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720019550, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720019625, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720019656, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720030642, 'style-themes', 'edit', 'a:2:{i:0;s:1:\"5\";i:1;s:12:\"Emerald Dark\";}'),
(1, 0x521f689c, 1720030657, 'style-themes', 'edit', 'a:2:{i:0;s:1:\"5\";i:1;s:12:\"Emerald Dark\";}'),
(1, 0x521f689c, 1720030671, 'style-themes', 'edit', 'a:2:{i:0;s:1:\"5\";i:1;s:12:\"Emerald Dark\";}'),
(1, 0x521f689c, 1720030683, 'style-themes', 'edit', 'a:2:{i:0;s:1:\"5\";i:1;s:12:\"Emerald Dark\";}'),
(1, 0x521f689c, 1720030693, 'style-themes', 'edit', 'a:2:{i:0;s:1:\"5\";i:1;s:12:\"Emerald Dark\";}'),
(1, 0x521f689c, 1720030791, 'style-themes', 'edit', 'a:2:{i:0;s:1:\"5\";i:1;s:12:\"Emerald Dark\";}'),
(1, 0x521f689c, 1720034516, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720034650, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720035119, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1720035154, 'user-users', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:13:\"Administrator\";}'),
(1, 0x521f689c, 1720035618, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1720035759, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1720035797, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1720035870, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720035912, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720035970, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720036036, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720036103, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720036111, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720036263, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720036288, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720036305, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0xd9a3720a, 1720526441, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720610921, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720611017, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720611039, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720611072, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1911\";i:1;s:19:\"showthread_newreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720611107, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1911\";i:1;s:19:\"showthread_newreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720611123, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1911\";i:1;s:19:\"showthread_newreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720611452, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1911\";i:1;s:19:\"showthread_newreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720611579, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720611607, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720611639, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720611650, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720611717, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720611748, 'style-themes', 'add_stylesheet', 'a:4:{i:0;i:63;i:1;s:13:\"post_view.css\";i:2;s:1:\"5\";i:3;s:12:\"Emerald Dark\";}'),
(1, 0x521f689c, 1720611769, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720611825, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720611839, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720611932, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720612012, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720612064, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720612086, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720612121, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720612131, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720612154, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720612175, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720612195, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720612264, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720612299, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720612308, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720612323, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720612334, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720612356, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720612393, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720612410, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720612518, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720612552, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720612567, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720612577, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720612631, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720612684, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720612718, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720612747, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720612770, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720612779, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720612794, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720612809, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720612877, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720612891, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720612998, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720613074, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720613246, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"post_view.css\";}'),
(1, 0x521f689c, 1720613257, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720613266, 'style-themes', 'delete_stylesheet', 'a:4:{i:0;s:2:\"63\";i:1;s:13:\"post_view.css\";i:2;s:1:\"5\";i:3;s:12:\"Emerald Dark\";}'),
(1, 0x521f689c, 1720613308, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720613342, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720613400, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720613413, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720613453, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720613459, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720613475, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720613526, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720613546, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720613555, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720613570, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720613583, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720613625, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720613639, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720613667, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720613694, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720613767, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720613803, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720614026, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720614046, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720614086, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720614142, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720614304, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720614403, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720614509, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720615276, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720615326, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720615369, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720615425, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720615476, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720615501, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720615550, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720615589, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720615654, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720615818, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720615905, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720616007, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720616062, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720616300, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720616351, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720616412, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720616602, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720616721, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720616798, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720616813, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720616848, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617004, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617041, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617101, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617125, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617173, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617192, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617207, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617233, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617251, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617267, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617283, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617308, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617328, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617385, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617439, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617458, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617560, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617656, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617657, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617751, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720617984, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720618033, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720618072, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720618102, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720618123, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720618155, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720618270, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720618335, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720618443, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720618542, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720618561, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720618578, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720618606, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720620197, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720620486, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720620512, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720620534, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720620623, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720620702, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720620720, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720620740, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720620826, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720620844, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720620866, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720620926, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720621042, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720621223, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720621257, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720621313, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720621346, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720621410, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720621461, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720621576, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720621604, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720621640, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720621681, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720621742, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720621757, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720621770, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720621800, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720621850, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720621879, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720621897, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720621936, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720621979, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720622034, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720622078, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720622123, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720622142, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720622161, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720622229, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720622344, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720622660, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720622706, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720622745, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720622811, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:12:\"avatarep.css\";}'),
(1, 0x521f689c, 1720622861, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:12:\"avatarep.css\";}'),
(1, 0x521f689c, 1720622906, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:12:\"avatarep.css\";}'),
(1, 0x521f689c, 1720622967, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:12:\"avatarep.css\";}'),
(1, 0x521f689c, 1720623014, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720623119, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720623183, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720623299, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720623355, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720623378, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720623697, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720623771, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720623853, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720623894, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720623949, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720623994, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624012, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624050, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624079, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624098, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624139, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624188, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624221, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624258, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624306, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624335, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624366, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720624391, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720624416, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624441, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624502, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624526, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624544, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624556, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624591, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720624611, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624637, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720624661, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624690, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720624723, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720624750, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720624780, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624791, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624811, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624840, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720624862, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720625406, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720625837, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720625883, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720625915, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720625978, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720626007, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720626024, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720626060, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720626455, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720626474, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720626509, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720626970, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}');
INSERT INTO `mybb_adminlog` (`uid`, `ipaddress`, `dateline`, `module`, `action`, `data`) VALUES
(1, 0x521f689c, 1720627023, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720627048, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720627098, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720627141, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720627177, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720627192, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720627267, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720627319, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720627342, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720627371, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720627396, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720628709, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720628762, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720628848, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720628884, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720628919, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720628943, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720629030, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720629062, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720629594, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720629636, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720629655, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720629723, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720629750, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720629784, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720629843, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720629867, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720629910, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720630065, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720630334, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720630421, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720630455, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720632547, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720632595, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720632703, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720632747, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720632881, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720633020, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720633063, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720633241, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720633319, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720633343, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720633359, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720633373, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720633384, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720633407, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720633512, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720633599, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720633718, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720633740, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720633775, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720633789, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720634131, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720634163, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720634194, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720634246, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720634263, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720634297, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720634317, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720634356, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720634385, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720634399, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720634430, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720634513, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720634538, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720634613, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720634728, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720634793, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720634820, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720634871, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720634900, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720634975, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720634991, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720635005, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720635207, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720635275, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720635301, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720635358, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720635375, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720635433, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720635455, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720635482, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720635506, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720635562, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720635593, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720635661, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720635667, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720635709, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720635731, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720635752, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720635793, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720635820, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720635849, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720635896, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720635982, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720636171, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720636228, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1720636319, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720636337, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720636481, 'user-users', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:30:\"Administrator ąężźćółń\";}'),
(1, 0x521f689c, 1720636515, 'user-users', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:13:\"Administrator\";}'),
(1, 0x521f689c, 1720636749, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720636817, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720636915, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720636964, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720637025, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720637045, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720637081, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720637110, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1720637142, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720646677, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1720681924, 'user-users', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:15:\"Administrator y\";}'),
(1, 0xd9a3720a, 1720681939, 'user-users', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:13:\"Administrator\";}'),
(1, 0xd9a3720a, 1720682403, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1720682433, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1720682620, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1720682636, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1720683008, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1720683435, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1720683452, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1720683477, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1720683535, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1720683553, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0xd9a3720a, 1720683614, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0xd9a3720a, 1720683640, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0xd9a3720a, 1720683667, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0xd9a3720a, 1720683689, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0xd9a3720a, 1720683708, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0xd9a3720a, 1720683757, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0xd9a3720a, 1720683782, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0xd9a3720a, 1720683992, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1720684073, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0xd9a3720a, 1720684098, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0xd9a3720a, 1720684132, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1720684195, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1720684291, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0xd9a3720a, 1720684439, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0xd9a3720a, 1720684462, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1720684645, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0xd9a3720a, 1720684669, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1720684743, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1720684768, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1720684797, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1720685026, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0xd9a3720a, 1720685038, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(2, 0xb22aba5a, 1720805998, 'user-users', 'inline_usergroup', 'a:1:{i:0;i:1;}'),
(2, 0xb22aba5a, 1720806606, 'tools-php_info', 'phpinfo', 'a:0:{}'),
(1, 0x521f689c, 1720806627, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1720806665, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1720807570, 'config-settings', 'change', 'a:0:{}'),
(2, 0xb22aba5a, 1720810339, 'user-users', 'edit', 'a:2:{i:0;s:1:\"2\";i:1;s:25:\"Tajemnicza Zielona Fasola\";}'),
(1, 0x521f689c, 1720907625, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720907712, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720907787, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720964026, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720964040, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720964055, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720964075, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1720964127, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:12:\"avatarep.css\";}'),
(1, 0x521f689c, 1720964162, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720964197, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720964260, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720964328, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720964354, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720964385, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720964436, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720964484, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1720969431, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721169132, 'forum-management', 'add', 'a:2:{i:0;i:7;i:1;s:6:\"Tester\";}'),
(1, 0x521f689c, 1721169330, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721169351, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721169362, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721169372, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721169382, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721169441, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721169452, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721169488, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721169502, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721169519, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721169531, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721169540, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721169559, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721169573, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1798\";i:1;s:21:\"forumbit_depth2_forum\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721408719, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721408820, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721408821, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721408936, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721409127, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721409234, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721409292, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721409761, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1911\";i:1;s:19:\"showthread_newreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721409801, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721410676, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1795\";i:1;s:19:\"forumbit_depth1_cat\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721410791, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1795\";i:1;s:19:\"forumbit_depth1_cat\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721410889, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1795\";i:1;s:19:\"forumbit_depth1_cat\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721410962, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1795\";i:1;s:19:\"forumbit_depth1_cat\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721411074, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1795\";i:1;s:19:\"forumbit_depth1_cat\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721411636, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1795\";i:1;s:19:\"forumbit_depth1_cat\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721411966, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721411999, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721412023, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721412034, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721412269, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721412719, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721412744, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1795\";i:1;s:19:\"forumbit_depth1_cat\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721412755, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721412781, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1795\";i:1;s:19:\"forumbit_depth1_cat\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721412794, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1795\";i:1;s:19:\"forumbit_depth1_cat\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721412805, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721412855, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721413266, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721413334, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721413404, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721413495, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721413510, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721413618, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721413623, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721413659, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721413670, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721416822, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721416848, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721417089, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721417182, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721417215, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721417245, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721417271, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721417331, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721417390, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721417413, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721417443, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721417462, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721417621, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721417643, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721417685, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721418058, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721418176, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721418197, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721418203, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721418217, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721418234, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721418258, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721418325, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721418343, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721418357, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721418366, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721418378, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721418390, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721418445, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721418607, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721418659, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721418691, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721418711, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721418736, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721418770, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721418792, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721418812, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721418829, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721418855, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721418874, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721418920, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721418949, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721418970, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721419001, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419013, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419025, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721419034, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419056, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419070, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419093, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419121, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419141, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419160, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419199, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419262, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419282, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419303, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419315, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419337, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419356, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419369, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419388, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419404, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419438, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419454, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419468, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419481, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419496, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419512, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419534, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419545, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419559, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419569, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419579, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419599, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419625, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419636, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419659, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419681, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419713, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419751, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419771, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721419823, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419854, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721419892, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419924, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721419939, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721420135, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721420201, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721420292, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721420307, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721420327, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721420412, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721420460, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721420487, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721420508, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721420530, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721420549, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721420571, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721420598, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721420644, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721420675, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721420713, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721420765, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721420826, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721420883, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721420954, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721421025, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721421241, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721421269, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721421290, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721421332, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721421410, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721421452, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721421695, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721421721, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721421763, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721422710, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721422739, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721422760, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721422808, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721422835, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721422890, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721422932, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721422971, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721422995, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423020, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423041, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423063, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423118, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423170, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423394, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423424, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423446, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423459, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423491, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423506, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423530, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423555, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423595, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423645, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423695, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423734, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423752, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423782, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423813, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721423832, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721469773, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721469803, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721469845, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721469851, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721469916, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721470015, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721470115, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721470208, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721470379, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721470415, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721470605, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}');
INSERT INTO `mybb_adminlog` (`uid`, `ipaddress`, `dateline`, `module`, `action`, `data`) VALUES
(1, 0x521f689c, 1721470665, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721470757, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721470817, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721470868, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721471338, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721471380, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721471393, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721471549, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721471566, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721471605, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721471626, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721471789, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721471820, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721471913, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721471937, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721471950, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721471988, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721472149, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721472187, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721472203, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721472457, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721472676, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1914\";i:1;s:21:\"showthread_quickreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721472745, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721472769, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721472834, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721472858, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721472892, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721472946, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721472987, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721473010, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721473035, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721473074, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721473097, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721481580, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721482739, 'config-badwords', 'add', 'a:2:{i:0;i:1;i:1;s:35:\"http://localhost/*\";}'),
(1, 0x521f689c, 1721482785, 'config-badwords', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:32:\"http://localhost/*\";}'),
(1, 0x521f689c, 1721482933, 'config-badwords', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:32:\"http://localhost/*\";}'),
(1, 0x521f689c, 1721482964, 'config-badwords', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:31:\"http://localhost/\";}'),
(1, 0x521f689c, 1721483057, 'config-badwords', 'delete', 'a:2:{i:0;s:1:\"1\";i:1;s:31:\"http://localhost/\";}'),
(1, 0x521f689c, 1721483083, 'config-badwords', 'add', 'a:2:{i:0;i:2;i:1;s:31:\"http://localhost/\";}'),
(1, 0x521f689c, 1721489501, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721489529, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721489549, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721489582, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721489601, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721599199, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721599224, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721599237, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721599251, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721599366, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721599391, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721599534, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721599537, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721599607, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721599661, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721599729, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721599739, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721599742, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721599754, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721599763, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721599776, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721599788, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721599882, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721599960, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600010, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600039, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600180, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600281, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600347, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600378, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600449, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600463, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600482, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600517, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600537, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600654, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600686, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600709, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600726, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600744, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600761, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600786, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600827, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600892, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721600965, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721601066, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721601162, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721601238, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721601281, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721601338, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721601401, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721601429, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721601476, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721601559, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1721639824, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721639892, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721639920, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721639946, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721640028, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721640080, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721640173, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721640203, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721640252, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721640310, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721640321, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721640337, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721640422, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721640516, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721640562, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721640582, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721640610, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721643794, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721643957, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721644452, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721644689, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721644954, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721645000, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721645087, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721645285, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721645316, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721645442, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721645513, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721645625, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721645702, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721645716, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721645768, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721645929, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721645948, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721647194, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721647215, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721648203, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721648217, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721648235, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721648335, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721648461, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721648496, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721648622, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721648809, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721648852, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721648888, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721649012, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721649030, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721649059, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721649085, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721649124, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721649216, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721649231, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721649270, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721649284, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721649472, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721649484, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721649502, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721649585, 'forum-management', 'edit', 'a:2:{i:0;i:1;i:1;s:11:\"My Category\";}'),
(1, 0x521f689c, 1721649598, 'forum-management', 'edit', 'a:2:{i:0;i:2;i:1;s:8:\"My Forum\";}'),
(1, 0x521f689c, 1721649623, 'forum-management', 'edit', 'a:2:{i:0;i:4;i:1;s:9:\"Poddział\";}'),
(1, 0x521f689c, 1721649629, 'forum-management', 'edit', 'a:2:{i:0;i:5;i:1;s:11:\"Poddział 2\";}'),
(1, 0x521f689c, 1721649691, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721649795, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721649818, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721650018, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721650092, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721650864, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721650896, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721650968, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721651036, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721651072, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721651137, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721651192, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721651210, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721651217, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721652117, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721652348, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721652533, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721652624, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721652708, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721652753, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721652808, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721653398, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721653428, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721653441, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721653469, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721653561, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721654230, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721654541, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721654555, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721655110, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721655146, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721655451, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721655482, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721655505, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721655520, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721655586, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721655609, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721655672, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721655709, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721655721, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721655743, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721655757, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721655790, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721655815, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721655830, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721655854, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721656028, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721656087, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721656144, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721656186, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721656256, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721656465, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721656508, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721656549, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721656679, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721656784, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721656823, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721656868, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721656887, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721656919, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721656933, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721656948, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721656984, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721657024, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721657090, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721657135, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721657157, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721657245, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721657299, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721657324, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721657379, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721657587, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721657610, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721657624, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721657640, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721657681, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721657729, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721657763, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721657780, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721657935, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721657954, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721658004, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721658023, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721658115, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721658149, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721658193, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721658244, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721658270, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721658440, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721658592, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721658658, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721658684, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721658699, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721658785, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721658817, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721658842, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721658865, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721658886, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721658937, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721658986, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721659011, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721659327, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721659344, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721659400, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721659469, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721659538, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721659551, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721659578, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721659591, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721659599, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721659674, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721659736, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721660056, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721660080, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721660101, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721660116, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721660274, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721660290, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721660720, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721660741, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721660838, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721660878, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721660892, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721661154, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721661176, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721661208, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721661238, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721661964, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721667681, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721672501, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721672549, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721673033, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721673065, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721673103, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721673120, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721673141, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721673198, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721673211, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721673255, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721673282, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721673300, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721674195, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721674222, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721674246, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721674282, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721674384, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721674428, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721674475, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721674505, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721674578, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721674773, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721674815, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721674839, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721674854, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721674868, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721674882, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721674940, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721674951, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721674980, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721675034, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721675056, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721675074, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721675186, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721675223, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721675679, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721675734, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721675748, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721675759, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721675789, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721675811, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721675822, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721675877, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721675905, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721675984, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676015, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676036, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676076, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676089, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676135, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676289, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676313, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676325, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676354, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676377, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676412, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676424, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676479, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676498, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676556, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676608, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676631, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676684, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676716, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676801, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676876, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676891, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721676927, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721677094, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721677115, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721677210, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721677238, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721677265, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721677281, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721677306, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721677326, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721677627, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721677686, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721677716, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721677909, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721678840, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721678960, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721679174, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721679305, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721679347, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721679370, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721679531, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721679681, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0xd9a3720a, 1721737646, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1721737660, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1721737697, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1721738005, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1721738110, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1721738123, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1721738140, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1721738170, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1721738190, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}');
INSERT INTO `mybb_adminlog` (`uid`, `ipaddress`, `dateline`, `module`, `action`, `data`) VALUES
(1, 0xd9a3720a, 1721738213, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1721738226, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1721738237, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1721738248, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1721743414, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1721743558, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1721743582, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1721743598, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0xd9a3720a, 1721744362, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721751009, 'forum-management', 'edit', 'a:2:{i:0;i:1;i:1;s:12:\"Wprowadzenie\";}'),
(1, 0x521f689c, 1721751032, 'forum-management', 'edit', 'a:2:{i:0;i:6;i:1;s:9:\"Rozgrywka\";}'),
(1, 0x521f689c, 1721751053, 'forum-management', 'add', 'a:2:{i:0;i:8;i:1;s:9:\"Poza grą\";}'),
(1, 0x521f689c, 1721751071, 'forum-management', 'edit', 'a:2:{i:0;i:8;i:1;s:9:\"Poza grą\";}'),
(1, 0x521f689c, 1721751439, 'forum-management', 'add', 'a:2:{i:0;i:9;i:1;s:7:\"Off-top\";}'),
(1, 0x521f689c, 1721751448, 'forum-management', 'edit', 'a:2:{i:0;i:9;i:1;s:7:\"Off-top\";}'),
(1, 0x521f689c, 1721751473, 'forum-management', 'add', 'a:2:{i:0;i:10;i:1;s:8:\"Archiwum\";}'),
(1, 0x521f689c, 1721751481, 'forum-management', 'edit', 'a:2:{i:0;i:10;i:1;s:8:\"Archiwum\";}'),
(1, 0x521f689c, 1721751486, 'forum-management', 'edit', 'a:2:{i:0;i:7;i:1;s:6:\"Tester\";}'),
(1, 0x521f689c, 1721751493, 'forum-management', 'edit', 'a:2:{i:0;i:3;i:1;s:37:\"Polskie znaki ą ę ć ś ł ó ż ź\";}'),
(1, 0x521f689c, 1721751500, 'forum-management', 'edit', 'a:2:{i:0;i:2;i:1;s:8:\"My Forum\";}'),
(1, 0x521f689c, 1721751592, 'forum-management', 'edit', 'a:2:{i:0;i:10;i:1;s:8:\"Archiwum\";}'),
(1, 0x521f689c, 1721764123, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721764259, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721764423, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721764433, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721764470, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721764482, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721764549, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721764948, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721764960, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721765003, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721765240, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721765267, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721765282, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721765293, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721765305, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721765418, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721765456, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721765506, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721765550, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721765582, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721765617, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721765798, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721765813, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721765827, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721765847, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721765908, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721766006, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721766036, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721766080, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721766134, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721766146, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721766182, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721766198, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721766248, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721766276, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721766286, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721766561, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721766637, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721766692, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721767539, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721767582, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721767603, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721767619, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721767666, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721767696, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721767710, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721767753, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721767774, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721767877, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721767958, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721768022, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721768125, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721768146, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721768168, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721768205, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721768266, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721768437, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721768500, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721768601, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721768707, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721768744, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721768838, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721768906, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721768978, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721769012, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721769041, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721769097, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721769138, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721769209, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721769240, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721769312, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721769414, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721769478, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721769566, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721769614, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721769643, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721769719, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721769761, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721769787, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721769888, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721769989, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770065, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770084, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770106, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770178, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770249, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770266, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770360, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770395, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770425, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770489, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770550, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770572, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770595, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770615, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770641, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770667, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770777, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770794, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770818, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770837, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721770911, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721771023, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721771159, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721771183, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721771213, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721771228, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721771250, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721771300, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721771327, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721771443, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721771466, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721772235, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721772409, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721772492, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721773067, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721773084, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721773371, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721773423, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721774060, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721774446, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721774525, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721774736, 'config-mycode', 'add', 'a:2:{i:0;i:1;i:1;s:7:\"Spoiler\";}'),
(1, 0x521f689c, 1721775006, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721775386, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1721776810, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721776867, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721776953, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721776999, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721777006, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721777101, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721777109, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721778499, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721778518, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721778541, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721778651, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721778666, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721778688, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721778702, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721779132, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721779150, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1866\";i:1;s:14:\"postbit_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721779162, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1865\";i:1;s:19:\"postbit_author_user\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721779183, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1865\";i:1;s:19:\"postbit_author_user\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721779194, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721779660, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721779723, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721780567, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721780671, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721780757, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721780850, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721780871, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721805087, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721805101, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721805269, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721805297, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721806098, 'config-plugins', 'activate', 'a:2:{i:0;s:11:\"hidecontent\";i:1;b:1;}'),
(1, 0x521f689c, 1721806137, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1721807147, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721814678, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721814784, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721814852, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721814877, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721814905, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721814923, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721814985, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(2, 0xd1ce060a, 1721818178, 'config-mycode', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:7:\"Spoiler\";}'),
(2, 0xd1ce060a, 1721818305, 'config-mycode', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:7:\"Spoiler\";}'),
(2, 0xd1ce060a, 1721818467, 'config-mycode', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:18:\"Spoiler with title\";}'),
(2, 0xd1ce060a, 1721818492, 'config-mycode', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:18:\"Spoiler with title\";}'),
(2, 0xd1ce060a, 1721818553, 'config-mycode', 'add', 'a:2:{i:0;i:2;i:1;s:6:\"Spoile\";}'),
(2, 0xd1ce060a, 1721818560, 'config-mycode', 'edit', 'a:2:{i:0;s:1:\"2\";i:1;s:7:\"Spoiler\";}'),
(2, 0xd1ce060a, 1721818578, 'config-mycode', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:18:\"Spoiler with title\";}'),
(2, 0xd1ce060a, 1721818618, 'config-mycode', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:18:\"Spoiler with title\";}'),
(2, 0xd1ce060a, 1721819024, 'config-mycode', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:18:\"Spoiler with title\";}'),
(1, 0x521f689c, 1721819820, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721819839, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721819916, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721819992, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721820020, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721820172, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721831276, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721831313, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721831369, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721832112, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721832584, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721832787, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721833218, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721833308, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721833531, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721833637, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721833732, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721833772, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721833840, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721833905, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721833952, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721833992, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721834061, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721834096, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721834125, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721834155, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721834271, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721834554, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721834618, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721834796, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721834958, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721835109, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721835248, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721836392, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721842017, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1721843687, 'user-groups', 'add', 'a:2:{i:0;i:8;i:1;s:14:\"Mistrzowie Gry\";}'),
(1, 0x521f689c, 1721844105, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"8\";i:1;s:14:\"Mistrzowie Gry\";}'),
(1, 0x521f689c, 1721845497, 'user-groups', 'add', 'a:2:{i:0;i:9;i:1;s:7:\"Grupa 1\";}'),
(1, 0x521f689c, 1721845557, 'user-groups', 'add', 'a:2:{i:0;i:10;i:1;s:7:\"Grupa 2\";}'),
(1, 0x521f689c, 1721845575, 'user-groups', 'add', 'a:2:{i:0;i:11;i:1;s:7:\"Grupa 3\";}'),
(1, 0x521f689c, 1721845613, 'user-groups', 'add', 'a:2:{i:0;i:12;i:1;s:7:\"Grupa 4\";}'),
(1, 0x521f689c, 1721845643, 'user-groups', 'add', 'a:2:{i:0;i:13;i:1;s:7:\"Grupa 5\";}'),
(1, 0x521f689c, 1721845660, 'user-groups', 'add', 'a:2:{i:0;i:14;i:1;s:7:\"Grupa 6\";}'),
(1, 0x521f689c, 1721845690, 'user-groups', 'add', 'a:2:{i:0;i:15;i:1;s:7:\"Grupa 7\";}'),
(1, 0x521f689c, 1721845711, 'user-groups', 'add', 'a:2:{i:0;i:16;i:1;s:7:\"Grupa 8\";}'),
(1, 0x521f689c, 1721845739, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"2\";i:1;s:14:\"Zarejestrowani\";}'),
(1, 0x521f689c, 1721845758, 'user-groups', 'add', 'a:2:{i:0;i:17;i:1;s:10:\"Nieaktywni\";}'),
(1, 0x521f689c, 1721845792, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"7\";i:1;s:9:\"Zbanowani\";}'),
(1, 0x521f689c, 1721845819, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:6:\"Guests\";}'),
(1, 0x521f689c, 1721845830, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"5\";i:1;s:19:\"Awaiting Activation\";}'),
(1, 0x521f689c, 1721845854, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721845867, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"8\";i:1;s:14:\"Mistrzowie Gry\";}'),
(1, 0x521f689c, 1721846435, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721846821, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721846880, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721846932, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721846982, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721847150, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721847386, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721847433, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721847453, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721847468, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721847515, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721847526, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721847544, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721847567, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"2\";i:1;s:14:\"Zarejestrowani\";}'),
(1, 0x521f689c, 1721847595, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721847689, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"2\";i:1;s:14:\"Zarejestrowani\";}'),
(1, 0x521f689c, 1721847777, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721847786, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721847847, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721847886, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721847914, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721847960, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721847988, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721848001, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721848023, 'user-groups', 'edit', 'a:2:{i:0;s:2:\"17\";i:1;s:10:\"Nieaktywni\";}'),
(1, 0x521f689c, 1721848049, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721848079, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721848120, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721848150, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721848175, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"7\";i:1;s:9:\"Zbanowani\";}'),
(1, 0x521f689c, 1721848209, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721848245, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721848256, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721848304, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721848385, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"9\";i:1;s:7:\"Grupa 1\";}'),
(1, 0x521f689c, 1721848392, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721848405, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721848435, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721848467, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721848555, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1721848587, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1721848645, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721848708, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721848785, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721848844, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721848896, 'user-groups', 'edit', 'a:2:{i:0;s:2:\"10\";i:1;s:7:\"Grupa 2\";}'),
(1, 0x521f689c, 1721848906, 'user-groups', 'edit', 'a:2:{i:0;s:2:\"11\";i:1;s:7:\"Grupa 3\";}'),
(1, 0x521f689c, 1721848923, 'user-groups', 'edit', 'a:2:{i:0;s:2:\"12\";i:1;s:7:\"Grupa 4\";}'),
(1, 0x521f689c, 1721848924, 'user-groups', 'edit', 'a:2:{i:0;s:2:\"12\";i:1;s:7:\"Grupa 4\";}'),
(1, 0x521f689c, 1721848942, 'user-groups', 'edit', 'a:2:{i:0;s:2:\"13\";i:1;s:7:\"Grupa 5\";}'),
(1, 0x521f689c, 1721848952, 'user-groups', 'edit', 'a:2:{i:0;s:2:\"14\";i:1;s:7:\"Grupa 6\";}'),
(1, 0x521f689c, 1721848962, 'user-groups', 'edit', 'a:2:{i:0;s:2:\"15\";i:1;s:7:\"Grupa 7\";}'),
(1, 0x521f689c, 1721848971, 'user-groups', 'edit', 'a:2:{i:0;s:2:\"16\";i:1;s:7:\"Grupa 8\";}'),
(1, 0x521f689c, 1721849181, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721849224, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721849249, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721849266, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721849302, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721849375, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721849408, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721849427, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721849441, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721849463, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721849478, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721849493, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721849508, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721849525, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721849589, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721849652, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721849721, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721849729, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721849770, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721849831, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721849857, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721849902, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721849928, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721849957, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721849981, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721850053, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721850081, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1721850300, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721851520, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721852118, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721852338, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721852374, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721852467, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721852518, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721852537, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721852598, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721852614, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721852656, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721852693, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721852711, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721852938, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721853028, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721853900, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721853950, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721853987, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721854020, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721854053, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721854078, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721856632, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721856673, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721856762, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721858377, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1816\";i:1;s:5:\"index\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721858417, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721858482, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721858588, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721858963, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721858977, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1721859090, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721859192, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721859447, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721859466, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721859639, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721901121, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721902163, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721902188, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1721902198, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721902278, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1721904694, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721904819, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721905013, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721905032, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721905172, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721905207, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721905340, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721905491, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721905643, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721906108, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721906837, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1721906888, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721907011, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721907066, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721907079, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721907096, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721907146, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721907159, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721907218, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721907232, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721907242, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721907301, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721907431, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721907454, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721907484, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721907511, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721907684, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721907768, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721907816, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721907850, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721908563, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721908583, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721908919, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721908984, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721909016, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721909064, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721910102, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721911946, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721913097, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721913231, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"mycode.css\";}'),
(1, 0x521f689c, 1721940426, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721940631, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1721941388, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}');
INSERT INTO `mybb_adminlog` (`uid`, `ipaddress`, `dateline`, `module`, `action`, `data`) VALUES
(1, 0x521f689c, 1722030213, 'style-templates', 'edit_template', 'a:4:{i:0;i:1947;i:1;s:15:\"showthread_poll\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722030266, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722030287, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1947\";i:1;s:15:\"showthread_poll\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722030328, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722030380, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1947\";i:1;s:15:\"showthread_poll\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722030405, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1947\";i:1;s:15:\"showthread_poll\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722030430, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1947\";i:1;s:15:\"showthread_poll\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722030443, 'style-templates', 'edit_template', 'a:4:{i:0;i:1948;i:1;s:22:\"showthread_poll_option\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722030508, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722030536, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722030597, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722030625, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722030763, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722030776, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1948\";i:1;s:22:\"showthread_poll_option\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722030907, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722030922, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722030950, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722030986, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722031074, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722031092, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722031164, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1947\";i:1;s:15:\"showthread_poll\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722031212, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1947\";i:1;s:15:\"showthread_poll\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722031224, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1947\";i:1;s:15:\"showthread_poll\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722031324, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722031415, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722031443, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722031462, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722031492, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1948\";i:1;s:22:\"showthread_poll_option\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722031501, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1948\";i:1;s:22:\"showthread_poll_option\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722031567, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722031608, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1947\";i:1;s:15:\"showthread_poll\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722031663, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1947\";i:1;s:15:\"showthread_poll\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722031744, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1947\";i:1;s:15:\"showthread_poll\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722031779, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1947\";i:1;s:15:\"showthread_poll\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722031815, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1947\";i:1;s:15:\"showthread_poll\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722031825, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1947\";i:1;s:15:\"showthread_poll\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722031837, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1947\";i:1;s:15:\"showthread_poll\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722031860, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1947\";i:1;s:15:\"showthread_poll\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722031890, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1947\";i:1;s:15:\"showthread_poll\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722031923, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1947\";i:1;s:15:\"showthread_poll\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722031948, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1947\";i:1;s:15:\"showthread_poll\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032112, 'style-templates', 'edit_template', 'a:4:{i:0;i:1949;i:1;s:23:\"showthread_poll_results\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032170, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1949\";i:1;s:23:\"showthread_poll_results\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032219, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1949\";i:1;s:23:\"showthread_poll_results\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032245, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1949\";i:1;s:23:\"showthread_poll_results\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032269, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1949\";i:1;s:23:\"showthread_poll_results\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032300, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1949\";i:1;s:23:\"showthread_poll_results\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032332, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1949\";i:1;s:23:\"showthread_poll_results\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032375, 'style-templates', 'edit_template', 'a:4:{i:0;i:1950;i:1;s:25:\"showthread_poll_resultbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032433, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1950\";i:1;s:25:\"showthread_poll_resultbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032469, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1950\";i:1;s:25:\"showthread_poll_resultbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032489, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1950\";i:1;s:25:\"showthread_poll_resultbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032499, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1950\";i:1;s:25:\"showthread_poll_resultbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032594, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1950\";i:1;s:25:\"showthread_poll_resultbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032674, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1950\";i:1;s:25:\"showthread_poll_resultbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032687, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1950\";i:1;s:25:\"showthread_poll_resultbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032703, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1950\";i:1;s:25:\"showthread_poll_resultbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032733, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722032747, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1949\";i:1;s:23:\"showthread_poll_results\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032894, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1950\";i:1;s:25:\"showthread_poll_resultbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032904, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1950\";i:1;s:25:\"showthread_poll_resultbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032921, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1949\";i:1;s:23:\"showthread_poll_results\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032934, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1949\";i:1;s:23:\"showthread_poll_results\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032951, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1949\";i:1;s:23:\"showthread_poll_results\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722032964, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1949\";i:1;s:23:\"showthread_poll_results\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722033047, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722033092, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722033119, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722033150, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1950\";i:1;s:25:\"showthread_poll_resultbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722033201, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722033281, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722033336, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722033345, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722033412, 'style-templates', 'edit_template', 'a:4:{i:0;i:1951;i:1;s:27:\"polls_showresults_resultbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722033445, 'style-templates', 'edit_template', 'a:4:{i:0;i:1952;i:1;s:17:\"polls_showresults\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722033471, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722033491, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722033574, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1952\";i:1;s:17:\"polls_showresults\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722033997, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722034055, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722034081, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722034100, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722034110, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722034160, 'style-templates', 'edit_template', 'a:4:{i:0;i:1953;i:1;s:24:\"showthread_usersbrowsing\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722034175, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1953\";i:1;s:24:\"showthread_usersbrowsing\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722034189, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1953\";i:1;s:24:\"showthread_usersbrowsing\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722034215, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1953\";i:1;s:24:\"showthread_usersbrowsing\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722034234, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722034248, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1953\";i:1;s:24:\"showthread_usersbrowsing\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722034257, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722034304, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722034336, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722034368, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1953\";i:1;s:24:\"showthread_usersbrowsing\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722034392, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1953\";i:1;s:24:\"showthread_usersbrowsing\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722034412, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1953\";i:1;s:24:\"showthread_usersbrowsing\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722034424, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722034471, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722034494, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722034610, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722034626, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722034669, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722034718, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722041887, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1722041944, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1722079567, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1722080134, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722080138, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722373717, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1914\";i:1;s:21:\"showthread_quickreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722373781, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722373845, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1914\";i:1;s:21:\"showthread_quickreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722373885, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722373933, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1914\";i:1;s:21:\"showthread_quickreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722373949, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722373966, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1914\";i:1;s:21:\"showthread_quickreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722374007, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1914\";i:1;s:21:\"showthread_quickreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722374075, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1914\";i:1;s:21:\"showthread_quickreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722374098, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1914\";i:1;s:21:\"showthread_quickreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722374164, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1914\";i:1;s:21:\"showthread_quickreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722374241, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722374291, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722374317, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1914\";i:1;s:21:\"showthread_quickreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722374335, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1914\";i:1;s:21:\"showthread_quickreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722374352, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722374367, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722374386, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722374448, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722374465, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722374485, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722374509, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722374544, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722374619, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722374634, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722374669, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722374712, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1914\";i:1;s:21:\"showthread_quickreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722374772, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722374789, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722374807, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722374822, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722374967, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722375077, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722375138, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1914\";i:1;s:21:\"showthread_quickreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722375159, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722375228, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722375249, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1914\";i:1;s:21:\"showthread_quickreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722375292, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1914\";i:1;s:21:\"showthread_quickreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722375334, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1914\";i:1;s:21:\"showthread_quickreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722375357, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1914\";i:1;s:21:\"showthread_quickreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722375373, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1914\";i:1;s:21:\"showthread_quickreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722375444, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722375497, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722375532, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722375558, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722375594, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722375615, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722375654, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722375668, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722422751, 'style-templates', 'edit_template', 'a:4:{i:0;i:1954;i:1;s:26:\"newreply_threadreview_post\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722422809, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1954\";i:1;s:26:\"newreply_threadreview_post\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722422896, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1954\";i:1;s:26:\"newreply_threadreview_post\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722423014, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1954\";i:1;s:26:\"newreply_threadreview_post\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722423111, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1856\";i:1;s:8:\"newreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722423154, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1954\";i:1;s:26:\"newreply_threadreview_post\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722423215, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1954\";i:1;s:26:\"newreply_threadreview_post\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722423282, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1954\";i:1;s:26:\"newreply_threadreview_post\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722423598, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1954\";i:1;s:26:\"newreply_threadreview_post\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722423859, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1954\";i:1;s:26:\"newreply_threadreview_post\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722423987, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1954\";i:1;s:26:\"newreply_threadreview_post\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722424044, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1954\";i:1;s:26:\"newreply_threadreview_post\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722424099, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722424182, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722424229, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1954\";i:1;s:26:\"newreply_threadreview_post\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722424365, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1856\";i:1;s:8:\"newreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722424398, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722424473, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1858\";i:1;s:20:\"newreply_postoptions\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722424549, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1857\";i:1;s:19:\"newreply_modoptions\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722424677, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1858\";i:1;s:20:\"newreply_postoptions\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722424686, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1857\";i:1;s:19:\"newreply_modoptions\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722424785, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1856\";i:1;s:8:\"newreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722424826, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722424864, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722424896, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722424938, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722424954, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722424980, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722425132, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722425169, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722425203, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722425223, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722425279, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722425547, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722429914, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722429976, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722430011, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722430395, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722430484, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722430499, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722430539, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722430592, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722430630, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722434328, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722435889, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722435911, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722435929, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722438639, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1722438707, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722438823, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1722438858, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:13:\"variables.css\";}'),
(1, 0x521f689c, 1722439160, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722439236, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722439306, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722440933, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1856\";i:1;s:8:\"newreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722440992, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1856\";i:1;s:8:\"newreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722441023, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722441048, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722441072, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1856\";i:1;s:8:\"newreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722441106, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1856\";i:1;s:8:\"newreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722443185, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1954\";i:1;s:26:\"newreply_threadreview_post\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722443199, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1954\";i:1;s:26:\"newreply_threadreview_post\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722443423, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1856\";i:1;s:8:\"newreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722443450, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722443487, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722443506, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722443515, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1856\";i:1;s:8:\"newreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722443547, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722443567, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722443617, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722444092, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1859\";i:1;s:9:\"newthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722444124, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1859\";i:1;s:9:\"newthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722444352, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1899\";i:1;s:12:\"private_send\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722444448, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1899\";i:1;s:12:\"private_send\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722444708, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722447200, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722447235, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722447288, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722447300, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1899\";i:1;s:12:\"private_send\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722447324, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722447340, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722447376, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722447390, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722447404, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722447432, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1856\";i:1;s:8:\"newreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722447651, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722447676, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722447724, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722447747, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722447812, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1914\";i:1;s:21:\"showthread_quickreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722447843, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722447915, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722447964, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722448031, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722448067, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722448087, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722448128, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:14:\"showthread.css\";}'),
(1, 0x521f689c, 1722465927, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722465948, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722465981, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722466028, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722466064, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722466110, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722466126, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722466145, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722466163, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722466188, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722466264, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722466285, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722466315, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722466352, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722466399, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722466410, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722466470, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722466485, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722466499, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722466521, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722466564, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1810\";i:1;s:6:\"header\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722466690, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1850\";i:1;s:3:\"nav\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722466705, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1850\";i:1;s:3:\"nav\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722467148, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722467174, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722467340, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1722467379, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1722467428, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722467484, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722467534, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722467571, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722467616, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722467638, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722467651, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722467709, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722467736, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722467755, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722467814, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722467854, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722468116, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1722468133, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1722468161, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722468182, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722468205, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722468308, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1722468387, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1722468401, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1722468477, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722468535, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1722468576, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1722468592, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1722470412, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1899\";i:1;s:12:\"private_send\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722470482, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1891\";i:1;s:7:\"private\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722470587, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1900\";i:1;s:16:\"private_tracking\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722470616, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1891\";i:1;s:7:\"private\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722470639, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1891\";i:1;s:7:\"private\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722470652, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1891\";i:1;s:7:\"private\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722470762, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1895\";i:1;s:15:\"private_folders\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722470802, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1722470853, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:8:\"css3.css\";}'),
(1, 0x521f689c, 1722470916, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1891\";i:1;s:7:\"private\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722470961, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1895\";i:1;s:15:\"private_folders\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722471045, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1937\";i:1;s:14:\"usercp_profile\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722471082, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1924\";i:1;s:17:\"usercp_changename\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722471117, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1936\";i:1;s:15:\"usercp_password\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722471157, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1929\";i:1;s:12:\"usercp_email\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722471204, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1920\";i:1;s:13:\"usercp_avatar\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722471263, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1928\";i:1;s:14:\"usercp_editsig\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722471312, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1935\";i:1;s:14:\"usercp_options\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722471393, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1939\";i:1;s:17:\"usercp_usergroups\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722471441, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1927\";i:1;s:16:\"usercp_editlists\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722471488, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1926\";i:1;s:13:\"usercp_drafts\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722471528, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1938\";i:1;s:20:\"usercp_subscriptions\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722471570, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1930\";i:1;s:25:\"usercp_forumsubscriptions\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722471742, 'config-badwords', 'delete', 'a:2:{i:0;s:1:\"2\";i:1;s:31:\"http://localhost/\";}'),
(1, 0x521f689c, 1722472761, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1722535057, 'config-profile_fields', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:8:\"Location\";}'),
(1, 0x521f689c, 1722535678, 'tools-php_info', 'phpinfo', 'a:0:{}'),
(1, 0x521f689c, 1722535800, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1722536924, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1722537147, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1722537184, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1722537379, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1722537398, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1722552492, 'config-profile_fields', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:9:\"Test edit\";}'),
(1, 0x521f689c, 1722552540, 'config-profile_fields', 'add', 'a:2:{i:0;i:4;i:1;s:9:\"Test nowy\";}'),
(1, 0x521f689c, 1722554345, 'config-profile_fields', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:9:\"Test nowy\";}'),
(1, 0x521f689c, 1722554386, 'config-profile_fields', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:9:\"Test nowy\";}'),
(1, 0x521f689c, 1722683037, 'config-profile_fields', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:17:\"Obrazek sygnatury\";}'),
(1, 0x521f689c, 1722683153, 'style-templates', 'edit_template', 'a:4:{i:0;i:1955;i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722683184, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722683220, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722683658, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722683686, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722683704, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722683739, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}');
INSERT INTO `mybb_adminlog` (`uid`, `ipaddress`, `dateline`, `module`, `action`, `data`) VALUES
(1, 0x521f689c, 1722683820, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722683842, 'config-profile_fields', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:17:\"Obrazek sygnatury\";}'),
(1, 0x521f689c, 1722683854, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722683894, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722684017, 'config-profile_fields', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:17:\"Obrazek sygnatury\";}'),
(1, 0x521f689c, 1722684134, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722684148, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722686202, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722686214, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722686276, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1822\";i:1;s:14:\"member_profile\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722686288, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1822\";i:1;s:14:\"member_profile\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722686295, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722700780, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722700876, 'style-themes', 'add_stylesheet', 'a:4:{i:0;i:64;i:1;s:9:\"posts.css\";i:2;s:1:\"5\";i:3;s:12:\"Emerald Dark\";}'),
(1, 0x521f689c, 1722700879, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722701021, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722701069, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722701090, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722701109, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722701125, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722701164, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722701183, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722701217, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722701256, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722701314, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722701336, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722701348, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722701628, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722701684, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722701897, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722701957, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702007, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702053, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702085, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722702146, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702165, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722702210, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702244, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722702278, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702301, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702359, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722702382, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722702442, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702483, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702503, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702549, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702601, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702693, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702705, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702718, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702736, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702781, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702817, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702842, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702864, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722702953, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722702975, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722703009, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722703040, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722703064, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722703081, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722703137, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722703161, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722703194, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722703211, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722703252, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722703371, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722703697, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722703724, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722703736, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722703783, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722703797, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722703810, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722703829, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722703855, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722703923, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722703968, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722704038, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722704052, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:9:\"posts.css\";}'),
(1, 0x521f689c, 1722704061, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722704086, 'style-themes', 'delete_stylesheet', 'a:4:{i:0;s:2:\"64\";i:1;s:9:\"posts.css\";i:2;s:1:\"5\";i:3;s:12:\"Emerald Dark\";}'),
(1, 0x521f689c, 1722704132, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722704176, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722704190, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722704277, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722704319, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722704358, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722704387, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722704422, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722704442, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722705420, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722705518, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722705551, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722705643, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722705699, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722705741, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722705766, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722705787, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722705821, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722705835, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722705849, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722705876, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722705904, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722705916, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722706026, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722706063, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722706088, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722706192, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722706269, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722706322, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722706561, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722706602, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722706684, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722708603, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722708632, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1911\";i:1;s:19:\"showthread_newreply\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722708658, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722708684, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722708725, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1910\";i:1;s:10:\"showthread\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722708824, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722708916, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722708925, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722708961, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722708976, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722708999, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722709014, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722709050, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722709071, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722709113, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722709152, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722709185, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722709243, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722709287, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722709312, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722709340, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722709360, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722709383, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722709396, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722709418, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722709444, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722709469, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722709569, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722709793, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722709805, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722709963, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722710103, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722710145, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722710174, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722710205, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722711092, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722711195, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1877\";i:1;s:10:\"postbit_pm\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722711237, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722711266, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722711330, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722711385, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722711395, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722711442, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722711576, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722711732, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1874\";i:1;s:18:\"postbit_multiquote\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722711749, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1874\";i:1;s:18:\"postbit_multiquote\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722711776, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1879\";i:1;s:19:\"postbit_quickdelete\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722711798, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1881\";i:1;s:13:\"postbit_quote\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722711879, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1881\";i:1;s:13:\"postbit_quote\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722711907, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1886\";i:1;s:18:\"postbit_rep_button\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722711928, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1886\";i:1;s:18:\"postbit_rep_button\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722711973, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1888\";i:1;s:12:\"postbit_warn\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722712051, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1884\";i:1;s:14:\"postbit_report\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722712084, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1869\";i:1;s:12:\"postbit_edit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722712203, 'config-profile_fields', 'edit', 'a:2:{i:0;s:1:\"2\";i:1;s:14:\"Korespondencja\";}'),
(1, 0x521f689c, 1722712230, 'config-profile_fields', 'edit', 'a:2:{i:0;s:1:\"3\";i:1;s:20:\"Miejsce zamieszkania\";}'),
(1, 0x521f689c, 1722712253, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722719676, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722720686, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722720692, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722720729, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722720960, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722721007, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1722721036, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1722721147, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722721180, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1722721848, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722721868, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722721911, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722721931, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1722721990, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722722455, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722722481, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722722551, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722722581, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722722609, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722722718, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722722767, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722722892, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722722915, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722722978, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722722991, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722723051, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722723133, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722723169, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722723186, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722723261, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722723291, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722723317, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722723345, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722723504, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722723564, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722723806, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722723831, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722723899, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722723974, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722723997, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722724015, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722724077, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722724112, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722724134, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722724174, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722724196, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722724259, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722724468, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722724846, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722724861, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722724890, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722724905, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722725023, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722728453, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722728566, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722728609, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722728729, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722728769, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722728783, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722728825, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722757200, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722757249, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722757306, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722757520, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722757647, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722757796, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722757853, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722757880, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722757942, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722757988, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722758049, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722758079, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722758154, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722758215, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722758233, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722758255, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722758345, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722758461, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722758518, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722758589, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722758612, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722758686, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722758838, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722759017, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722759061, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722759097, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722759421, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722759491, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722759533, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722759590, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722759637, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722759668, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722759699, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722759728, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722759742, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722759979, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722759997, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722760019, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722760150, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722760183, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722760224, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1811\";i:1;s:13:\"headerinclude\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722777004, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722777123, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722777686, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722777801, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722777962, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722778331, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722778770, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722778852, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1722778870, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1722846958, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722847848, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722847920, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722848057, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722848132, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722848861, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722848884, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722849208, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722849345, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722849420, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722849493, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722849516, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722849601, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722849724, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1722849772, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1722849956, 'config-plugins', 'activate', 'a:2:{i:0;s:6:\"phptpl\";i:1;b:0;}'),
(1, 0x521f689c, 1722850163, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722850258, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722855576, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722855669, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722855791, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722855862, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722855885, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722855897, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722855912, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722855949, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722855991, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722856049, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722856062, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722856083, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722856106, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722856130, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722856158, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722856185, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722856320, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722856359, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722856708, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722856726, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722856774, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722856815, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722856893, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722856939, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722856985, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722856993, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722857018, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722857053, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722857078, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722857146, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722857161, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722857200, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722857246, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722857262, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722857281, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722857298, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722857617, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722857681, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722857723, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722857751, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722857779, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722857813, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722857838, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722857882, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1722857900, 'user-groups', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:14:\"Administrators\";}'),
(1, 0x521f689c, 1722857991, 'config-mycode', 'add', 'a:2:{i:0;i:3;i:1;s:12:\"Pusta spacja\";}'),
(1, 0x521f689c, 1722858120, 'config-mycode', 'add', 'a:2:{i:0;i:4;i:1;s:23:\"Brak stylu w sygnaturze\";}'),
(1, 0x521f689c, 1722859197, 'config-mycode', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:23:\"Brak stylu w sygnaturze\";}'),
(1, 0x521f689c, 1722859289, 'config-mycode', 'add', 'a:2:{i:0;i:5;i:1;s:37:\"Brak stylu w sygnaturze ale z linkami\";}'),
(1, 0x521f689c, 1722859348, 'config-mycode', 'edit', 'a:2:{i:0;s:1:\"5\";i:1;s:37:\"Brak stylu w sygnaturze ale z linkami\";}'),
(1, 0x521f689c, 1722860140, 'config-mycode', 'delete', 'a:2:{i:0;s:1:\"5\";i:1;s:37:\"Brak stylu w sygnaturze ale z linkami\";}'),
(1, 0x521f689c, 1722860215, 'config-mycode', 'add', 'a:2:{i:0;i:6;i:1;s:37:\"Brak stylu w sygnaturze ale z linkami\";}'),
(1, 0x521f689c, 1722862284, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722862316, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722862354, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722862951, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}');
INSERT INTO `mybb_adminlog` (`uid`, `ipaddress`, `dateline`, `module`, `action`, `data`) VALUES
(1, 0x521f689c, 1722862962, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722871028, 'config-profile_fields', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:24:\"Aktualizacje mechaniczne\";}'),
(1, 0x521f689c, 1722871717, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1864\";i:1;s:7:\"postbit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722872442, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722872465, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722872811, 'style-templates', 'edit_template', 'a:4:{i:0;i:1956;i:1;s:15:\"global_pm_alert\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722872833, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1956\";i:1;s:15:\"global_pm_alert\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722872864, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1956\";i:1;s:15:\"global_pm_alert\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722872909, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1956\";i:1;s:15:\"global_pm_alert\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722872970, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1956\";i:1;s:15:\"global_pm_alert\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722873114, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1956\";i:1;s:15:\"global_pm_alert\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722873142, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1956\";i:1;s:15:\"global_pm_alert\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722873153, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1956\";i:1;s:15:\"global_pm_alert\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722873203, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722873244, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1956\";i:1;s:15:\"global_pm_alert\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722873262, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1956\";i:1;s:15:\"global_pm_alert\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722873299, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1956\";i:1;s:15:\"global_pm_alert\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722873331, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1956\";i:1;s:15:\"global_pm_alert\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722873391, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1956\";i:1;s:15:\"global_pm_alert\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722873428, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1956\";i:1;s:15:\"global_pm_alert\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722873453, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1956\";i:1;s:15:\"global_pm_alert\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722873475, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1956\";i:1;s:15:\"global_pm_alert\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722873981, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1896\";i:1;s:18:\"private_messagebit\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722876849, 'config-settings', 'change', 'a:0:{}'),
(1, 0x521f689c, 1722877035, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"usercp.css\";}'),
(1, 0x521f689c, 1722877051, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"usercp.css\";}'),
(1, 0x521f689c, 1722877079, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"usercp.css\";}'),
(1, 0x521f689c, 1722877097, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"usercp.css\";}'),
(1, 0x521f689c, 1722877114, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"usercp.css\";}'),
(1, 0x521f689c, 1722887048, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722887067, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722888715, 'config-profile_fields', 'add', 'a:2:{i:0;i:5;i:1;s:9:\"Playlista\";}'),
(1, 0x521f689c, 1722888732, 'config-profile_fields', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:24:\"Aktualizacje mechaniczne\";}'),
(1, 0x521f689c, 1722888740, 'config-profile_fields', 'edit', 'a:2:{i:0;s:1:\"3\";i:1;s:20:\"Miejsce zamieszkania\";}'),
(1, 0x521f689c, 1722888767, 'config-profile_fields', 'edit', 'a:2:{i:0;s:1:\"2\";i:1;s:14:\"Korespondencja\";}'),
(1, 0x521f689c, 1722888782, 'config-profile_fields', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:17:\"Obrazek sygnatury\";}'),
(1, 0x521f689c, 1722888814, 'config-profile_fields', 'edit', 'a:2:{i:0;s:1:\"5\";i:1;s:9:\"Playlista\";}'),
(1, 0x521f689c, 1722888835, 'config-profile_fields', 'edit', 'a:2:{i:0;s:1:\"2\";i:1;s:14:\"Korespondencja\";}'),
(1, 0x521f689c, 1722888845, 'config-profile_fields', 'edit', 'a:2:{i:0;s:1:\"3\";i:1;s:20:\"Miejsce zamieszkania\";}'),
(1, 0x521f689c, 1722888862, 'config-profile_fields', 'edit', 'a:2:{i:0;s:1:\"4\";i:1;s:24:\"Aktualizacje mechaniczne\";}'),
(1, 0x521f689c, 1722889064, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722889148, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722889168, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722889401, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1955\";i:1;s:17:\"postbit_signature\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722890604, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722890642, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722890707, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722890737, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722890774, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722890803, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722890853, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722890860, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722890893, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722890917, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722890931, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722890953, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722891689, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722891811, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722891851, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722891919, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722892833, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722892886, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722893002, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722893025, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722893051, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722893269, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722893299, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722893322, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722893352, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722893452, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722893573, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722893603, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722893636, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722893659, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722893683, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722893703, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722893722, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722894054, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722894075, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722894088, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722894102, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722894140, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722894272, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722894294, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722894305, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722894434, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722894439, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722894462, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722894473, 'style-themes', 'edit_stylesheet', 'a:2:{i:0;s:12:\"Emerald Dark\";i:1;s:10:\"global.css\";}'),
(1, 0x521f689c, 1722894500, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1917\";i:1;s:6:\"usercp\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722894548, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1921\";i:1;s:21:\"usercp_avatar_current\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722894562, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1921\";i:1;s:21:\"usercp_avatar_current\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722894578, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1921\";i:1;s:21:\"usercp_avatar_current\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722898845, 'style-templates', 'edit_template', 'a:4:{i:0;i:1957;i:1;s:16:\"usercp_referrals\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722898858, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1957\";i:1;s:16:\"usercp_referrals\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0x521f689c, 1722898877, 'style-templates', 'edit_template', 'a:4:{i:0;s:4:\"1957\";i:1;s:16:\"usercp_referrals\";i:2;i:4;i:3;s:22:\"Emerald Dark Templates\";}'),
(1, 0xac1c0001, 1722940112, 'config-settings', 'change', 'a:0:{}'),
(1, 0xac1c0001, 1722940153, 'user-users', 'inline_delete', 'a:1:{i:0;i:1;}'),
(1, 0xac1c0001, 1722940166, 'user-users', 'edit', 'a:2:{i:0;s:1:\"1\";i:1;s:13:\"Administrator\";}'),
(1, 0xac1c0001, 1722940194, 'user-users', 'add', 'a:2:{i:0;i:3;i:1;s:4:\"User\";}');

-- --------------------------------------------------------

--
-- Table structure for table `mybb_adminoptions`
--

CREATE TABLE `mybb_adminoptions` (
  `uid` int(11) NOT NULL DEFAULT 0,
  `cpstyle` varchar(50) NOT NULL DEFAULT '',
  `cplanguage` varchar(50) NOT NULL DEFAULT '',
  `codepress` tinyint(1) NOT NULL DEFAULT 1,
  `notes` text NOT NULL,
  `permissions` text NOT NULL,
  `defaultviews` text NOT NULL,
  `loginattempts` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `loginlockoutexpiry` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authsecret` varchar(16) NOT NULL DEFAULT '',
  `recovery_codes` varchar(177) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_adminoptions`
--

INSERT INTO `mybb_adminoptions` (`uid`, `cpstyle`, `cplanguage`, `codepress`, `notes`, `permissions`, `defaultviews`, `loginattempts`, `loginlockoutexpiry`, `authsecret`, `recovery_codes`) VALUES
(0, '', '', 1, '', 'a:5:{s:6:\"config\";a:19:{s:3:\"tab\";s:1:\"0\";s:8:\"settings\";s:1:\"0\";s:7:\"banning\";s:1:\"0\";s:14:\"profile_fields\";s:1:\"0\";s:7:\"smilies\";s:1:\"0\";s:8:\"badwords\";s:1:\"0\";s:6:\"mycode\";s:1:\"0\";s:9:\"languages\";s:1:\"0\";s:10:\"post_icons\";s:1:\"0\";s:14:\"help_documents\";s:1:\"0\";s:7:\"plugins\";s:1:\"0\";s:16:\"attachment_types\";s:1:\"0\";s:9:\"mod_tools\";s:1:\"0\";s:7:\"spiders\";s:1:\"0\";s:9:\"calendars\";s:1:\"0\";s:7:\"warning\";s:1:\"0\";s:15:\"thread_prefixes\";s:1:\"0\";s:9:\"questions\";s:1:\"0\";s:14:\"report_reasons\";s:1:\"0\";}s:5:\"forum\";a:5:{s:3:\"tab\";s:1:\"0\";s:10:\"management\";s:1:\"0\";s:13:\"announcements\";s:1:\"0\";s:16:\"moderation_queue\";s:1:\"0\";s:11:\"attachments\";s:1:\"0\";}s:5:\"style\";a:3:{s:3:\"tab\";s:1:\"0\";s:6:\"themes\";s:1:\"0\";s:9:\"templates\";s:1:\"0\";}s:5:\"tools\";a:16:{s:3:\"tab\";s:1:\"0\";s:13:\"system_health\";s:1:\"0\";s:5:\"cache\";s:1:\"0\";s:5:\"tasks\";s:1:\"0\";s:8:\"backupdb\";s:1:\"0\";s:10:\"optimizedb\";s:1:\"0\";s:8:\"adminlog\";s:1:\"0\";s:6:\"modlog\";s:1:\"0\";s:15:\"recount_rebuild\";s:1:\"0\";s:8:\"php_info\";s:1:\"1\";s:7:\"spamlog\";s:1:\"0\";s:8:\"maillogs\";s:1:\"0\";s:10:\"mailerrors\";s:1:\"0\";s:10:\"warninglog\";s:1:\"0\";s:10:\"statistics\";s:1:\"0\";s:17:\"file_verification\";s:1:\"0\";}s:4:\"user\";a:9:{s:3:\"tab\";s:1:\"0\";s:5:\"users\";s:1:\"0\";s:19:\"awaiting_activation\";s:1:\"0\";s:6:\"groups\";s:1:\"0\";s:6:\"titles\";s:1:\"0\";s:7:\"banning\";s:1:\"0\";s:17:\"admin_permissions\";s:1:\"0\";s:9:\"mass_mail\";s:1:\"0\";s:16:\"group_promotions\";s:1:\"0\";}}', 'a:1:{s:4:\"user\";s:1:\"1\";}', 0, 0, '', ''),
(-4, '', '', 1, '', 'a:5:{s:6:\"config\";a:19:{s:3:\"tab\";s:1:\"1\";s:8:\"settings\";s:1:\"1\";s:7:\"banning\";s:1:\"1\";s:14:\"profile_fields\";s:1:\"1\";s:7:\"smilies\";s:1:\"1\";s:8:\"badwords\";s:1:\"1\";s:6:\"mycode\";s:1:\"1\";s:9:\"languages\";s:1:\"1\";s:10:\"post_icons\";s:1:\"1\";s:14:\"help_documents\";s:1:\"1\";s:7:\"plugins\";s:1:\"1\";s:16:\"attachment_types\";s:1:\"1\";s:9:\"mod_tools\";s:1:\"1\";s:7:\"spiders\";s:1:\"1\";s:9:\"calendars\";s:1:\"1\";s:7:\"warning\";s:1:\"1\";s:15:\"thread_prefixes\";s:1:\"1\";s:9:\"questions\";s:1:\"1\";s:14:\"report_reasons\";s:1:\"1\";}s:5:\"forum\";a:5:{s:3:\"tab\";s:1:\"1\";s:10:\"management\";s:1:\"1\";s:13:\"announcements\";s:1:\"1\";s:16:\"moderation_queue\";s:1:\"1\";s:11:\"attachments\";s:1:\"1\";}s:5:\"style\";a:3:{s:3:\"tab\";s:1:\"1\";s:6:\"themes\";s:1:\"1\";s:9:\"templates\";s:1:\"1\";}s:5:\"tools\";a:16:{s:3:\"tab\";s:1:\"1\";s:13:\"system_health\";s:1:\"1\";s:5:\"cache\";s:1:\"1\";s:5:\"tasks\";s:1:\"1\";s:8:\"backupdb\";s:1:\"1\";s:10:\"optimizedb\";s:1:\"1\";s:8:\"adminlog\";s:1:\"1\";s:6:\"modlog\";s:1:\"1\";s:15:\"recount_rebuild\";s:1:\"1\";s:8:\"php_info\";s:1:\"1\";s:7:\"spamlog\";s:1:\"1\";s:8:\"maillogs\";s:1:\"1\";s:10:\"mailerrors\";s:1:\"1\";s:10:\"warninglog\";s:1:\"1\";s:10:\"statistics\";s:1:\"1\";s:17:\"file_verification\";s:1:\"1\";}s:4:\"user\";a:9:{s:3:\"tab\";s:1:\"1\";s:5:\"users\";s:1:\"1\";s:19:\"awaiting_activation\";s:1:\"1\";s:6:\"groups\";s:1:\"1\";s:6:\"titles\";s:1:\"1\";s:7:\"banning\";s:1:\"1\";s:17:\"admin_permissions\";s:1:\"1\";s:9:\"mass_mail\";s:1:\"1\";s:16:\"group_promotions\";s:1:\"1\";}}', 'a:1:{s:4:\"user\";s:1:\"1\";}', 0, 0, '', ''),
(1, '', 'polish', 1, '', 'a:5:{s:6:\"config\";a:19:{s:3:\"tab\";s:1:\"1\";s:8:\"settings\";s:1:\"1\";s:7:\"banning\";s:1:\"1\";s:14:\"profile_fields\";s:1:\"1\";s:7:\"smilies\";s:1:\"1\";s:8:\"badwords\";s:1:\"1\";s:6:\"mycode\";s:1:\"1\";s:9:\"languages\";s:1:\"1\";s:10:\"post_icons\";s:1:\"1\";s:14:\"help_documents\";s:1:\"1\";s:7:\"plugins\";s:1:\"1\";s:16:\"attachment_types\";s:1:\"1\";s:9:\"mod_tools\";s:1:\"1\";s:7:\"spiders\";s:1:\"1\";s:9:\"calendars\";s:1:\"1\";s:7:\"warning\";s:1:\"1\";s:15:\"thread_prefixes\";s:1:\"1\";s:9:\"questions\";s:1:\"1\";s:14:\"report_reasons\";s:1:\"1\";}s:5:\"forum\";a:5:{s:3:\"tab\";s:1:\"1\";s:10:\"management\";s:1:\"1\";s:13:\"announcements\";s:1:\"1\";s:16:\"moderation_queue\";s:1:\"1\";s:11:\"attachments\";s:1:\"1\";}s:5:\"style\";a:3:{s:3:\"tab\";s:1:\"1\";s:6:\"themes\";s:1:\"1\";s:9:\"templates\";s:1:\"1\";}s:5:\"tools\";a:16:{s:3:\"tab\";s:1:\"1\";s:13:\"system_health\";s:1:\"1\";s:5:\"cache\";s:1:\"1\";s:5:\"tasks\";s:1:\"1\";s:8:\"backupdb\";s:1:\"1\";s:10:\"optimizedb\";s:1:\"1\";s:15:\"recount_rebuild\";s:1:\"1\";s:8:\"php_info\";s:1:\"1\";s:8:\"adminlog\";s:1:\"1\";s:6:\"modlog\";s:1:\"1\";s:7:\"spamlog\";s:1:\"1\";s:8:\"maillogs\";s:1:\"1\";s:10:\"mailerrors\";s:1:\"1\";s:10:\"warninglog\";s:1:\"1\";s:10:\"statistics\";s:1:\"1\";s:17:\"file_verification\";s:1:\"1\";}s:4:\"user\";a:9:{s:3:\"tab\";s:1:\"1\";s:5:\"users\";s:1:\"1\";s:19:\"awaiting_activation\";s:1:\"1\";s:6:\"groups\";s:1:\"1\";s:6:\"titles\";s:1:\"1\";s:7:\"banning\";s:1:\"1\";s:17:\"admin_permissions\";s:1:\"1\";s:9:\"mass_mail\";s:1:\"1\";s:16:\"group_promotions\";s:1:\"1\";}}', 'a:1:{s:4:\"user\";s:1:\"1\";}', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mybb_adminsessions`
--

CREATE TABLE `mybb_adminsessions` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `loginkey` varchar(50) NOT NULL DEFAULT '',
  `ip` varbinary(16) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastactive` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `useragent` varchar(200) NOT NULL DEFAULT '',
  `authenticated` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_adminsessions`
--

INSERT INTO `mybb_adminsessions` (`sid`, `uid`, `loginkey`, `ip`, `dateline`, `lastactive`, `data`, `useragent`, `authenticated`) VALUES
('4610da51eed09354b7a19d83839bed91', 1, 'txOkcKzy9DA29hw1cV411J529D2xRJNowtc2O1ygfjfKaWoLpD', 0xac1c0001, 1722940171, 1722940194, 'a:2:{s:14:\"last_users_url\";s:33:\"index.php?module=user-users&vid=1\";s:13:\"flash_message\";s:0:\"\";}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_adminviews`
--

CREATE TABLE `mybb_adminviews` (
  `vid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(6) NOT NULL DEFAULT '',
  `visibility` tinyint(1) NOT NULL DEFAULT 0,
  `fields` text NOT NULL,
  `conditions` text NOT NULL,
  `custom_profile_fields` text NOT NULL,
  `sortby` varchar(20) NOT NULL DEFAULT '',
  `sortorder` varchar(4) NOT NULL DEFAULT '',
  `perpage` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `view_type` varchar(6) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_adminviews`
--

INSERT INTO `mybb_adminviews` (`vid`, `uid`, `title`, `type`, `visibility`, `fields`, `conditions`, `custom_profile_fields`, `sortby`, `sortorder`, `perpage`, `view_type`) VALUES
(1, 0, 'All Users', 'user', 2, 'a:7:{i:0;s:6:\"avatar\";i:1;s:8:\"username\";i:2;s:5:\"email\";i:3;s:7:\"regdate\";i:4;s:10:\"lastactive\";i:5;s:7:\"postnum\";i:6;s:8:\"controls\";}', 'a:0:{}', 'a:0:{}', 'username', 'asc', 20, 'card');

-- --------------------------------------------------------

--
-- Table structure for table `mybb_announcements`
--

CREATE TABLE `mybb_announcements` (
  `aid` int(10) UNSIGNED NOT NULL,
  `fid` int(11) NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(120) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `startdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `enddate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `allowhtml` tinyint(1) NOT NULL DEFAULT 0,
  `allowmycode` tinyint(1) NOT NULL DEFAULT 0,
  `allowsmilies` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_attachments`
--

CREATE TABLE `mybb_attachments` (
  `aid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `posthash` varchar(50) NOT NULL DEFAULT '',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filetype` varchar(120) NOT NULL DEFAULT '',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `attachname` varchar(255) NOT NULL DEFAULT '',
  `downloads` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dateuploaded` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `visible` tinyint(1) NOT NULL DEFAULT 0,
  `thumbnail` varchar(120) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_attachtypes`
--

CREATE TABLE `mybb_attachtypes` (
  `atid` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL DEFAULT '',
  `mimetype` varchar(120) NOT NULL DEFAULT '',
  `extension` varchar(10) NOT NULL DEFAULT '',
  `maxsize` int(15) UNSIGNED NOT NULL DEFAULT 0,
  `icon` varchar(100) NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `forcedownload` tinyint(1) NOT NULL DEFAULT 0,
  `groups` text NOT NULL,
  `forums` text NOT NULL,
  `avatarfile` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_attachtypes`
--

INSERT INTO `mybb_attachtypes` (`atid`, `name`, `mimetype`, `extension`, `maxsize`, `icon`, `enabled`, `forcedownload`, `groups`, `forums`, `avatarfile`) VALUES
(1, 'ZIP File', 'application/zip', 'zip', 1024, 'images/attachtypes/zip.png', 1, 0, '-1', '-1', 0),
(2, 'JPG Image', 'image/jpeg', 'jpg', 500, 'images/attachtypes/image.png', 1, 0, '-1', '-1', 1),
(3, 'Text Document', 'text/plain', 'txt', 200, 'images/attachtypes/txt.png', 1, 0, '-1', '-1', 0),
(4, 'GIF Image', 'image/gif', 'gif', 500, 'images/attachtypes/image.png', 1, 0, '-1', '-1', 1),
(5, 'Adobe Photoshop File', 'application/x-photoshop', 'psd', 1024, 'images/attachtypes/psd.png', 1, 0, '-1', '-1', 0),
(6, 'PHP File', 'application/x-httpd-php', 'php', 500, 'images/attachtypes/php.png', 1, 0, '-1', '-1', 0),
(7, 'PNG Image', 'image/png', 'png', 500, 'images/attachtypes/image.png', 1, 0, '-1', '-1', 1),
(8, 'Microsoft Word Document', 'application/msword', 'doc', 1024, 'images/attachtypes/doc.png', 1, 0, '-1', '-1', 0),
(9, 'HTM File', 'text/html', 'htm', 100, 'images/attachtypes/html.png', 1, 0, '-1', '-1', 0),
(10, 'HTML File', 'text/html', 'html', 100, 'images/attachtypes/html.png', 1, 0, '-1', '-1', 0),
(11, 'JPEG Image', 'image/jpeg', 'jpeg', 500, 'images/attachtypes/image.png', 1, 0, '-1', '-1', 1),
(12, 'GZIP Compressed File', 'application/x-gzip', 'gz', 1024, 'images/attachtypes/tar.png', 1, 0, '-1', '-1', 0),
(13, 'TAR Compressed File', 'application/x-tar', 'tar', 1024, 'images/attachtypes/tar.png', 1, 0, '-1', '-1', 0),
(14, 'CSS Stylesheet', 'text/css', 'css', 100, 'images/attachtypes/css.png', 1, 0, '-1', '-1', 0),
(15, 'Adobe Acrobat PDF', 'application/pdf', 'pdf', 2048, 'images/attachtypes/pdf.png', 1, 0, '-1', '-1', 0),
(16, 'Bitmap Image', 'image/bmp', 'bmp', 500, 'images/attachtypes/image.png', 1, 0, '-1', '-1', 0),
(17, 'Microsoft Word 2007 Document', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'docx', 1024, 'images/attachtypes/doc.png', 1, 0, '-1', '-1', 0),
(18, 'Microsoft Excel Document', 'application/vnd.ms-excel', 'xls', 1024, 'images/attachtypes/xls.png', 1, 0, '-1', '-1', 0),
(19, 'Microsoft Excel 2007 Document', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'xlsx', 1024, 'images/attachtypes/xls.png', 1, 0, '-1', '-1', 0),
(20, 'Microsoft PowerPoint Document', 'application/vnd.ms-powerpoint', 'ppt', 1024, 'images/attachtypes/ppt.png', 1, 0, '-1', '-1', 0),
(21, 'Microsoft PowerPoint 2007 Document', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 'pptx', 1024, 'images/attachtypes/ppt.png', 1, 0, '-1', '-1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_awaitingactivation`
--

CREATE TABLE `mybb_awaitingactivation` (
  `aid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `code` varchar(100) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT '',
  `validated` tinyint(1) NOT NULL DEFAULT 0,
  `misc` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_badwords`
--

CREATE TABLE `mybb_badwords` (
  `bid` int(10) UNSIGNED NOT NULL,
  `badword` varchar(100) NOT NULL DEFAULT '',
  `regex` tinyint(1) NOT NULL DEFAULT 0,
  `replacement` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_banfilters`
--

CREATE TABLE `mybb_banfilters` (
  `fid` int(10) UNSIGNED NOT NULL,
  `filter` varchar(200) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `lastuse` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_banned`
--

CREATE TABLE `mybb_banned` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `oldgroup` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `oldadditionalgroups` text NOT NULL,
  `olddisplaygroup` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `admin` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bantime` varchar(50) NOT NULL DEFAULT '',
  `lifted` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reason` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_buddyrequests`
--

CREATE TABLE `mybb_buddyrequests` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `touid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_calendarpermissions`
--

CREATE TABLE `mybb_calendarpermissions` (
  `cid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `canviewcalendar` tinyint(1) NOT NULL DEFAULT 0,
  `canaddevents` tinyint(1) NOT NULL DEFAULT 0,
  `canbypasseventmod` tinyint(1) NOT NULL DEFAULT 0,
  `canmoderateevents` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_calendars`
--

CREATE TABLE `mybb_calendars` (
  `cid` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `disporder` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `startofweek` tinyint(1) NOT NULL DEFAULT 0,
  `showbirthdays` tinyint(1) NOT NULL DEFAULT 0,
  `eventlimit` smallint(3) UNSIGNED NOT NULL DEFAULT 0,
  `moderation` tinyint(1) NOT NULL DEFAULT 0,
  `allowhtml` tinyint(1) NOT NULL DEFAULT 0,
  `allowmycode` tinyint(1) NOT NULL DEFAULT 0,
  `allowimgcode` tinyint(1) NOT NULL DEFAULT 0,
  `allowvideocode` tinyint(1) NOT NULL DEFAULT 0,
  `allowsmilies` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_calendars`
--

INSERT INTO `mybb_calendars` (`cid`, `name`, `disporder`, `startofweek`, `showbirthdays`, `eventlimit`, `moderation`, `allowhtml`, `allowmycode`, `allowimgcode`, `allowvideocode`, `allowsmilies`) VALUES
(1, 'Default Calendar', 1, 0, 1, 4, 0, 0, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_captcha`
--

CREATE TABLE `mybb_captcha` (
  `imagehash` varchar(32) NOT NULL DEFAULT '',
  `imagestring` varchar(8) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `used` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_captcha`
--

INSERT INTO `mybb_captcha` (`imagehash`, `imagestring`, `dateline`, `used`) VALUES
('9eb79514863e10541111c5d6826e82dc', 's0DuK', 1722886516, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_datacache`
--

CREATE TABLE `mybb_datacache` (
  `title` varchar(50) NOT NULL DEFAULT '',
  `cache` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_datacache`
--

INSERT INTO `mybb_datacache` (`title`, `cache`) VALUES
('default_theme', 'a:4:{s:4:\"name\";s:12:\"Emerald Dark\";s:3:\"tid\";s:1:\"1\";s:10:\"properties\";s:572:\"a:8:{s:11:\"templateset\";i:4;s:11:\"editortheme\";s:13:\"shortcake.css\";s:6:\"imgdir\";s:14:\"images/emerald\";s:4:\"logo\";s:23:\"images/emerald/logo.png\";s:10:\"tablespace\";i:7;s:11:\"borderwidth\";i:0;s:5:\"color\";s:0:\"\";s:9:\"disporder\";a:14:{s:9:\"modcp.css\";i:1;s:14:\"showthread.css\";i:2;s:16:\"star_ratings.css\";i:3;s:15:\"latestposts.css\";i:4;s:12:\"avatarep.css\";i:5;s:10:\"global.css\";i:6;s:9:\"extra.css\";i:7;s:8:\"css3.css\";i:8;s:10:\"footer.css\";i:9;s:10:\"usercp.css\";i:10;s:17:\"thread_status.css\";i:11;s:16:\"responsivity.css\";i:12;s:13:\"variables.css\";i:13;s:10:\"mycode.css\";i:14;}}\";s:11:\"stylesheets\";s:1527:\"a:12:{s:6:\"global\";a:1:{s:6:\"global\";a:8:{i:0;s:30:\"cache/themes/theme5/footer.css\";i:1;s:28:\"cache/themes/theme5/css3.css\";i:2;s:29:\"cache/themes/theme5/extra.css\";i:3;s:30:\"cache/themes/theme5/global.css\";i:4;s:35:\"cache/themes/theme5/latestposts.css\";i:5;s:32:\"cache/themes/theme5/avatarep.css\";i:6;s:30:\"cache/themes/theme5/mycode.css\";i:7;s:33:\"cache/themes/theme5/variables.css\";}}s:9:\"modcp.php\";a:1:{s:6:\"global\";a:1:{i:0;s:29:\"cache/themes/theme5/modcp.css\";}}s:14:\"showthread.php\";a:1:{s:6:\"global\";a:2:{i:0;s:34:\"cache/themes/theme5/showthread.css\";i:1;s:36:\"cache/themes/theme5/star_ratings.css\";}}s:10:\"usercp.php\";a:1:{s:6:\"global\";a:2:{i:0;s:30:\"cache/themes/theme5/usercp.css\";i:1;s:37:\"cache/themes/theme5/thread_status.css\";}}s:11:\"usercp2.php\";a:1:{s:6:\"global\";a:1:{i:0;s:30:\"cache/themes/theme5/usercp.css\";}}s:11:\"private.php\";a:1:{s:6:\"global\";a:1:{i:0;s:30:\"cache/themes/theme5/usercp.css\";}}s:16:\"forumdisplay.php\";a:1:{s:6:\"global\";a:2:{i:0;s:37:\"cache/themes/theme5/thread_status.css\";i:1;s:36:\"cache/themes/theme5/star_ratings.css\";}}s:10:\"search.php\";a:1:{s:6:\"global\";a:1:{i:0;s:37:\"cache/themes/theme5/thread_status.css\";}}s:11:\"newpost.php\";a:1:{s:6:\"global\";a:1:{i:0;s:36:\"cache/themes/theme5/responsivity.css\";}}s:13:\"newthread.php\";a:1:{s:6:\"global\";a:1:{i:0;s:36:\"cache/themes/theme5/responsivity.css\";}}s:12:\"editpost.php\";a:1:{s:6:\"global\";a:1:{i:0;s:36:\"cache/themes/theme5/responsivity.css\";}}s:12:\"newreply.php\";a:1:{s:6:\"global\";a:1:{i:0;s:36:\"cache/themes/theme5/responsivity.css\";}}}\";}'),
('version', 'a:2:{s:7:\"version\";s:6:\"1.8.38\";s:12:\"version_code\";i:1838;}'),
('attachtypes', 'a:21:{s:3:\"zip\";a:11:{s:4:\"atid\";s:1:\"1\";s:4:\"name\";s:8:\"ZIP File\";s:8:\"mimetype\";s:15:\"application/zip\";s:9:\"extension\";s:3:\"zip\";s:7:\"maxsize\";s:4:\"1024\";s:4:\"icon\";s:26:\"images/attachtypes/zip.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"0\";}s:3:\"jpg\";a:11:{s:4:\"atid\";s:1:\"2\";s:4:\"name\";s:9:\"JPG Image\";s:8:\"mimetype\";s:10:\"image/jpeg\";s:9:\"extension\";s:3:\"jpg\";s:7:\"maxsize\";s:3:\"500\";s:4:\"icon\";s:28:\"images/attachtypes/image.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"1\";}s:3:\"txt\";a:11:{s:4:\"atid\";s:1:\"3\";s:4:\"name\";s:13:\"Text Document\";s:8:\"mimetype\";s:10:\"text/plain\";s:9:\"extension\";s:3:\"txt\";s:7:\"maxsize\";s:3:\"200\";s:4:\"icon\";s:26:\"images/attachtypes/txt.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"0\";}s:3:\"gif\";a:11:{s:4:\"atid\";s:1:\"4\";s:4:\"name\";s:9:\"GIF Image\";s:8:\"mimetype\";s:9:\"image/gif\";s:9:\"extension\";s:3:\"gif\";s:7:\"maxsize\";s:3:\"500\";s:4:\"icon\";s:28:\"images/attachtypes/image.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"1\";}s:3:\"psd\";a:11:{s:4:\"atid\";s:1:\"5\";s:4:\"name\";s:20:\"Adobe Photoshop File\";s:8:\"mimetype\";s:23:\"application/x-photoshop\";s:9:\"extension\";s:3:\"psd\";s:7:\"maxsize\";s:4:\"1024\";s:4:\"icon\";s:26:\"images/attachtypes/psd.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"0\";}s:3:\"php\";a:11:{s:4:\"atid\";s:1:\"6\";s:4:\"name\";s:8:\"PHP File\";s:8:\"mimetype\";s:23:\"application/x-httpd-php\";s:9:\"extension\";s:3:\"php\";s:7:\"maxsize\";s:3:\"500\";s:4:\"icon\";s:26:\"images/attachtypes/php.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"0\";}s:3:\"png\";a:11:{s:4:\"atid\";s:1:\"7\";s:4:\"name\";s:9:\"PNG Image\";s:8:\"mimetype\";s:9:\"image/png\";s:9:\"extension\";s:3:\"png\";s:7:\"maxsize\";s:3:\"500\";s:4:\"icon\";s:28:\"images/attachtypes/image.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"1\";}s:3:\"doc\";a:11:{s:4:\"atid\";s:1:\"8\";s:4:\"name\";s:23:\"Microsoft Word Document\";s:8:\"mimetype\";s:18:\"application/msword\";s:9:\"extension\";s:3:\"doc\";s:7:\"maxsize\";s:4:\"1024\";s:4:\"icon\";s:26:\"images/attachtypes/doc.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"0\";}s:3:\"htm\";a:11:{s:4:\"atid\";s:1:\"9\";s:4:\"name\";s:8:\"HTM File\";s:8:\"mimetype\";s:9:\"text/html\";s:9:\"extension\";s:3:\"htm\";s:7:\"maxsize\";s:3:\"100\";s:4:\"icon\";s:27:\"images/attachtypes/html.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"0\";}s:4:\"html\";a:11:{s:4:\"atid\";s:2:\"10\";s:4:\"name\";s:9:\"HTML File\";s:8:\"mimetype\";s:9:\"text/html\";s:9:\"extension\";s:4:\"html\";s:7:\"maxsize\";s:3:\"100\";s:4:\"icon\";s:27:\"images/attachtypes/html.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"0\";}s:4:\"jpeg\";a:11:{s:4:\"atid\";s:2:\"11\";s:4:\"name\";s:10:\"JPEG Image\";s:8:\"mimetype\";s:10:\"image/jpeg\";s:9:\"extension\";s:4:\"jpeg\";s:7:\"maxsize\";s:3:\"500\";s:4:\"icon\";s:28:\"images/attachtypes/image.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"1\";}s:2:\"gz\";a:11:{s:4:\"atid\";s:2:\"12\";s:4:\"name\";s:20:\"GZIP Compressed File\";s:8:\"mimetype\";s:18:\"application/x-gzip\";s:9:\"extension\";s:2:\"gz\";s:7:\"maxsize\";s:4:\"1024\";s:4:\"icon\";s:26:\"images/attachtypes/tar.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"0\";}s:3:\"tar\";a:11:{s:4:\"atid\";s:2:\"13\";s:4:\"name\";s:19:\"TAR Compressed File\";s:8:\"mimetype\";s:17:\"application/x-tar\";s:9:\"extension\";s:3:\"tar\";s:7:\"maxsize\";s:4:\"1024\";s:4:\"icon\";s:26:\"images/attachtypes/tar.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"0\";}s:3:\"css\";a:11:{s:4:\"atid\";s:2:\"14\";s:4:\"name\";s:14:\"CSS Stylesheet\";s:8:\"mimetype\";s:8:\"text/css\";s:9:\"extension\";s:3:\"css\";s:7:\"maxsize\";s:3:\"100\";s:4:\"icon\";s:26:\"images/attachtypes/css.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"0\";}s:3:\"pdf\";a:11:{s:4:\"atid\";s:2:\"15\";s:4:\"name\";s:17:\"Adobe Acrobat PDF\";s:8:\"mimetype\";s:15:\"application/pdf\";s:9:\"extension\";s:3:\"pdf\";s:7:\"maxsize\";s:4:\"2048\";s:4:\"icon\";s:26:\"images/attachtypes/pdf.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"0\";}s:3:\"bmp\";a:11:{s:4:\"atid\";s:2:\"16\";s:4:\"name\";s:12:\"Bitmap Image\";s:8:\"mimetype\";s:9:\"image/bmp\";s:9:\"extension\";s:3:\"bmp\";s:7:\"maxsize\";s:3:\"500\";s:4:\"icon\";s:28:\"images/attachtypes/image.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"0\";}s:4:\"docx\";a:11:{s:4:\"atid\";s:2:\"17\";s:4:\"name\";s:28:\"Microsoft Word 2007 Document\";s:8:\"mimetype\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\";s:9:\"extension\";s:4:\"docx\";s:7:\"maxsize\";s:4:\"1024\";s:4:\"icon\";s:26:\"images/attachtypes/doc.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"0\";}s:3:\"xls\";a:11:{s:4:\"atid\";s:2:\"18\";s:4:\"name\";s:24:\"Microsoft Excel Document\";s:8:\"mimetype\";s:24:\"application/vnd.ms-excel\";s:9:\"extension\";s:3:\"xls\";s:7:\"maxsize\";s:4:\"1024\";s:4:\"icon\";s:26:\"images/attachtypes/xls.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"0\";}s:4:\"xlsx\";a:11:{s:4:\"atid\";s:2:\"19\";s:4:\"name\";s:29:\"Microsoft Excel 2007 Document\";s:8:\"mimetype\";s:65:\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\";s:9:\"extension\";s:4:\"xlsx\";s:7:\"maxsize\";s:4:\"1024\";s:4:\"icon\";s:26:\"images/attachtypes/xls.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"0\";}s:3:\"ppt\";a:11:{s:4:\"atid\";s:2:\"20\";s:4:\"name\";s:29:\"Microsoft PowerPoint Document\";s:8:\"mimetype\";s:29:\"application/vnd.ms-powerpoint\";s:9:\"extension\";s:3:\"ppt\";s:7:\"maxsize\";s:4:\"1024\";s:4:\"icon\";s:26:\"images/attachtypes/ppt.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"0\";}s:4:\"pptx\";a:11:{s:4:\"atid\";s:2:\"21\";s:4:\"name\";s:34:\"Microsoft PowerPoint 2007 Document\";s:8:\"mimetype\";s:73:\"application/vnd.openxmlformats-officedocument.presentationml.presentation\";s:9:\"extension\";s:4:\"pptx\";s:7:\"maxsize\";s:4:\"1024\";s:4:\"icon\";s:26:\"images/attachtypes/ppt.png\";s:7:\"enabled\";s:1:\"1\";s:13:\"forcedownload\";s:1:\"0\";s:6:\"groups\";s:2:\"-1\";s:6:\"forums\";s:2:\"-1\";s:10:\"avatarfile\";s:1:\"0\";}}'),
('smilies', 'a:0:{}'),
('badwords', 'a:0:{}');
INSERT INTO `mybb_datacache` (`title`, `cache`) VALUES
('usergroups', 'a:17:{i:1;a:91:{s:3:\"gid\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:5:\"title\";s:6:\"Guests\";s:11:\"description\";s:11:\"Jasny szary\";s:9:\"namestyle\";s:10:\"{username}\";s:9:\"usertitle\";s:12:\"Unregistered\";s:5:\"stars\";s:1:\"0\";s:9:\"starimage\";s:0:\"\";s:5:\"image\";s:0:\"\";s:9:\"disporder\";s:1:\"0\";s:13:\"isbannedgroup\";s:1:\"0\";s:7:\"canview\";s:1:\"1\";s:14:\"canviewthreads\";s:1:\"1\";s:15:\"canviewprofiles\";s:1:\"1\";s:16:\"candlattachments\";s:1:\"0\";s:18:\"canviewboardclosed\";s:1:\"0\";s:14:\"canpostthreads\";s:1:\"0\";s:13:\"canpostreplys\";s:1:\"0\";s:18:\"canpostattachments\";s:1:\"0\";s:14:\"canratethreads\";s:1:\"0\";s:8:\"modposts\";s:1:\"0\";s:10:\"modthreads\";s:1:\"0\";s:14:\"mod_edit_posts\";s:1:\"0\";s:14:\"modattachments\";s:1:\"0\";s:12:\"caneditposts\";s:1:\"0\";s:14:\"candeleteposts\";s:1:\"0\";s:16:\"candeletethreads\";s:1:\"0\";s:18:\"caneditattachments\";s:1:\"0\";s:21:\"canviewdeletionnotice\";s:1:\"0\";s:12:\"canpostpolls\";s:1:\"0\";s:12:\"canvotepolls\";s:1:\"0\";s:12:\"canundovotes\";s:1:\"0\";s:9:\"canusepms\";s:1:\"0\";s:10:\"cansendpms\";s:1:\"0\";s:11:\"cantrackpms\";s:1:\"0\";s:17:\"candenypmreceipts\";s:1:\"0\";s:7:\"pmquota\";s:1:\"0\";s:15:\"maxpmrecipients\";s:1:\"5\";s:12:\"cansendemail\";s:1:\"0\";s:20:\"cansendemailoverride\";s:1:\"0\";s:9:\"maxemails\";s:1:\"5\";s:14:\"emailfloodtime\";s:1:\"5\";s:17:\"canviewmemberlist\";s:1:\"1\";s:15:\"canviewcalendar\";s:1:\"1\";s:12:\"canaddevents\";s:1:\"0\";s:17:\"canbypasseventmod\";s:1:\"0\";s:17:\"canmoderateevents\";s:1:\"0\";s:13:\"canviewonline\";s:1:\"1\";s:15:\"canviewwolinvis\";s:1:\"0\";s:16:\"canviewonlineips\";s:1:\"0\";s:5:\"cancp\";s:1:\"0\";s:10:\"issupermod\";s:1:\"0\";s:9:\"cansearch\";s:1:\"1\";s:9:\"canusercp\";s:1:\"0\";s:16:\"canuploadavatars\";s:1:\"0\";s:14:\"canratemembers\";s:1:\"0\";s:13:\"canchangename\";s:1:\"0\";s:13:\"canbereported\";s:1:\"0\";s:14:\"canbeinvisible\";s:1:\"1\";s:16:\"canchangewebsite\";s:1:\"0\";s:13:\"showforumteam\";s:1:\"0\";s:19:\"usereputationsystem\";s:1:\"0\";s:18:\"cangivereputations\";s:1:\"0\";s:20:\"candeletereputations\";s:1:\"0\";s:15:\"reputationpower\";s:1:\"0\";s:17:\"maxreputationsday\";s:1:\"0\";s:21:\"maxreputationsperuser\";s:1:\"0\";s:23:\"maxreputationsperthread\";s:1:\"0\";s:15:\"candisplaygroup\";s:1:\"1\";s:11:\"attachquota\";s:1:\"0\";s:14:\"cancustomtitle\";s:1:\"0\";s:12:\"canwarnusers\";s:1:\"0\";s:18:\"canreceivewarnings\";s:1:\"0\";s:14:\"maxwarningsday\";s:1:\"0\";s:8:\"canmodcp\";s:1:\"0\";s:18:\"showinbirthdaylist\";s:1:\"0\";s:13:\"canoverridepm\";s:1:\"0\";s:9:\"canusesig\";s:1:\"0\";s:15:\"canusesigxposts\";s:1:\"0\";s:11:\"signofollow\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:8:\"maxposts\";s:1:\"0\";s:14:\"showmemberlist\";s:1:\"0\";s:17:\"canmanageannounce\";s:1:\"0\";s:17:\"canmanagemodqueue\";s:1:\"0\";s:24:\"canmanagereportedcontent\";s:1:\"0\";s:14:\"canviewmodlogs\";s:1:\"0\";s:15:\"caneditprofiles\";s:1:\"0\";s:11:\"canbanusers\";s:1:\"0\";s:15:\"canviewwarnlogs\";s:1:\"0\";s:14:\"canuseipsearch\";s:1:\"0\";}i:2;a:91:{s:3:\"gid\";s:1:\"2\";s:4:\"type\";s:1:\"1\";s:5:\"title\";s:14:\"Zarejestrowani\";s:11:\"description\";s:11:\"Jasny szary\";s:9:\"namestyle\";s:73:\"<span class=\"username\" style=\"color: var(--registered)\">{username}</span>\";s:9:\"usertitle\";s:0:\"\";s:5:\"stars\";s:1:\"0\";s:9:\"starimage\";s:15:\"images/star.png\";s:5:\"image\";s:0:\"\";s:9:\"disporder\";s:1:\"0\";s:13:\"isbannedgroup\";s:1:\"0\";s:7:\"canview\";s:1:\"1\";s:14:\"canviewthreads\";s:1:\"1\";s:15:\"canviewprofiles\";s:1:\"1\";s:16:\"candlattachments\";s:1:\"1\";s:18:\"canviewboardclosed\";s:1:\"0\";s:14:\"canpostthreads\";s:1:\"1\";s:13:\"canpostreplys\";s:1:\"1\";s:18:\"canpostattachments\";s:1:\"1\";s:14:\"canratethreads\";s:1:\"1\";s:8:\"modposts\";s:1:\"0\";s:10:\"modthreads\";s:1:\"0\";s:14:\"mod_edit_posts\";s:1:\"0\";s:14:\"modattachments\";s:1:\"0\";s:12:\"caneditposts\";s:1:\"1\";s:14:\"candeleteposts\";s:1:\"1\";s:16:\"candeletethreads\";s:1:\"1\";s:18:\"caneditattachments\";s:1:\"1\";s:21:\"canviewdeletionnotice\";s:1:\"1\";s:12:\"canpostpolls\";s:1:\"1\";s:12:\"canvotepolls\";s:1:\"1\";s:12:\"canundovotes\";s:1:\"0\";s:9:\"canusepms\";s:1:\"1\";s:10:\"cansendpms\";s:1:\"1\";s:11:\"cantrackpms\";s:1:\"1\";s:17:\"candenypmreceipts\";s:1:\"1\";s:7:\"pmquota\";s:3:\"200\";s:15:\"maxpmrecipients\";s:1:\"5\";s:12:\"cansendemail\";s:1:\"1\";s:20:\"cansendemailoverride\";s:1:\"0\";s:9:\"maxemails\";s:1:\"5\";s:14:\"emailfloodtime\";s:1:\"5\";s:17:\"canviewmemberlist\";s:1:\"1\";s:15:\"canviewcalendar\";s:1:\"1\";s:12:\"canaddevents\";s:1:\"1\";s:17:\"canbypasseventmod\";s:1:\"0\";s:17:\"canmoderateevents\";s:1:\"0\";s:13:\"canviewonline\";s:1:\"1\";s:15:\"canviewwolinvis\";s:1:\"0\";s:16:\"canviewonlineips\";s:1:\"0\";s:5:\"cancp\";s:1:\"0\";s:10:\"issupermod\";s:1:\"0\";s:9:\"cansearch\";s:1:\"1\";s:9:\"canusercp\";s:1:\"1\";s:16:\"canuploadavatars\";s:1:\"1\";s:14:\"canratemembers\";s:1:\"1\";s:13:\"canchangename\";s:1:\"0\";s:13:\"canbereported\";s:1:\"1\";s:14:\"canbeinvisible\";s:1:\"1\";s:16:\"canchangewebsite\";s:1:\"1\";s:13:\"showforumteam\";s:1:\"0\";s:19:\"usereputationsystem\";s:1:\"1\";s:18:\"cangivereputations\";s:1:\"1\";s:20:\"candeletereputations\";s:1:\"1\";s:15:\"reputationpower\";s:1:\"1\";s:17:\"maxreputationsday\";s:1:\"5\";s:21:\"maxreputationsperuser\";s:1:\"0\";s:23:\"maxreputationsperthread\";s:1:\"0\";s:15:\"candisplaygroup\";s:1:\"1\";s:11:\"attachquota\";s:1:\"0\";s:14:\"cancustomtitle\";s:1:\"1\";s:12:\"canwarnusers\";s:1:\"0\";s:18:\"canreceivewarnings\";s:1:\"1\";s:14:\"maxwarningsday\";s:1:\"0\";s:8:\"canmodcp\";s:1:\"0\";s:18:\"showinbirthdaylist\";s:1:\"1\";s:13:\"canoverridepm\";s:1:\"0\";s:9:\"canusesig\";s:1:\"1\";s:15:\"canusesigxposts\";s:1:\"0\";s:11:\"signofollow\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:8:\"maxposts\";s:1:\"0\";s:14:\"showmemberlist\";s:1:\"1\";s:17:\"canmanageannounce\";s:1:\"0\";s:17:\"canmanagemodqueue\";s:1:\"0\";s:24:\"canmanagereportedcontent\";s:1:\"0\";s:14:\"canviewmodlogs\";s:1:\"0\";s:15:\"caneditprofiles\";s:1:\"0\";s:11:\"canbanusers\";s:1:\"0\";s:15:\"canviewwarnlogs\";s:1:\"0\";s:14:\"canuseipsearch\";s:1:\"0\";}i:17;a:91:{s:3:\"gid\";s:2:\"17\";s:4:\"type\";s:1:\"2\";s:5:\"title\";s:10:\"Nieaktywni\";s:11:\"description\";s:12:\"Ciemny szary\";s:9:\"namestyle\";s:73:\"<span class=\"username\" style=\"color: var(--not-active)\">{username}</span>\";s:9:\"usertitle\";s:0:\"\";s:5:\"stars\";s:1:\"0\";s:9:\"starimage\";s:15:\"images/star.png\";s:5:\"image\";s:0:\"\";s:9:\"disporder\";s:1:\"0\";s:13:\"isbannedgroup\";s:1:\"0\";s:7:\"canview\";s:1:\"1\";s:14:\"canviewthreads\";s:1:\"1\";s:15:\"canviewprofiles\";s:1:\"1\";s:16:\"candlattachments\";s:1:\"1\";s:18:\"canviewboardclosed\";s:1:\"0\";s:14:\"canpostthreads\";s:1:\"1\";s:13:\"canpostreplys\";s:1:\"1\";s:18:\"canpostattachments\";s:1:\"1\";s:14:\"canratethreads\";s:1:\"1\";s:8:\"modposts\";s:1:\"0\";s:10:\"modthreads\";s:1:\"0\";s:14:\"mod_edit_posts\";s:1:\"0\";s:14:\"modattachments\";s:1:\"0\";s:12:\"caneditposts\";s:1:\"1\";s:14:\"candeleteposts\";s:1:\"1\";s:16:\"candeletethreads\";s:1:\"1\";s:18:\"caneditattachments\";s:1:\"1\";s:21:\"canviewdeletionnotice\";s:1:\"1\";s:12:\"canpostpolls\";s:1:\"1\";s:12:\"canvotepolls\";s:1:\"1\";s:12:\"canundovotes\";s:1:\"0\";s:9:\"canusepms\";s:1:\"1\";s:10:\"cansendpms\";s:1:\"1\";s:11:\"cantrackpms\";s:1:\"1\";s:17:\"candenypmreceipts\";s:1:\"1\";s:7:\"pmquota\";s:3:\"200\";s:15:\"maxpmrecipients\";s:1:\"5\";s:12:\"cansendemail\";s:1:\"1\";s:20:\"cansendemailoverride\";s:1:\"0\";s:9:\"maxemails\";s:1:\"5\";s:14:\"emailfloodtime\";s:1:\"5\";s:17:\"canviewmemberlist\";s:1:\"1\";s:15:\"canviewcalendar\";s:1:\"1\";s:12:\"canaddevents\";s:1:\"1\";s:17:\"canbypasseventmod\";s:1:\"0\";s:17:\"canmoderateevents\";s:1:\"0\";s:13:\"canviewonline\";s:1:\"1\";s:15:\"canviewwolinvis\";s:1:\"0\";s:16:\"canviewonlineips\";s:1:\"0\";s:5:\"cancp\";s:1:\"0\";s:10:\"issupermod\";s:1:\"0\";s:9:\"cansearch\";s:1:\"1\";s:9:\"canusercp\";s:1:\"1\";s:16:\"canuploadavatars\";s:1:\"1\";s:14:\"canratemembers\";s:1:\"1\";s:13:\"canchangename\";s:1:\"0\";s:13:\"canbereported\";s:1:\"1\";s:14:\"canbeinvisible\";s:1:\"1\";s:16:\"canchangewebsite\";s:1:\"1\";s:13:\"showforumteam\";s:1:\"0\";s:19:\"usereputationsystem\";s:1:\"1\";s:18:\"cangivereputations\";s:1:\"1\";s:20:\"candeletereputations\";s:1:\"1\";s:15:\"reputationpower\";s:1:\"1\";s:17:\"maxreputationsday\";s:1:\"5\";s:21:\"maxreputationsperuser\";s:1:\"0\";s:23:\"maxreputationsperthread\";s:1:\"0\";s:15:\"candisplaygroup\";s:1:\"1\";s:11:\"attachquota\";s:1:\"0\";s:14:\"cancustomtitle\";s:1:\"1\";s:12:\"canwarnusers\";s:1:\"0\";s:18:\"canreceivewarnings\";s:1:\"1\";s:14:\"maxwarningsday\";s:1:\"0\";s:8:\"canmodcp\";s:1:\"0\";s:18:\"showinbirthdaylist\";s:1:\"1\";s:13:\"canoverridepm\";s:1:\"0\";s:9:\"canusesig\";s:1:\"1\";s:15:\"canusesigxposts\";s:1:\"0\";s:11:\"signofollow\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:8:\"maxposts\";s:1:\"0\";s:14:\"showmemberlist\";s:1:\"1\";s:17:\"canmanageannounce\";s:1:\"0\";s:17:\"canmanagemodqueue\";s:1:\"0\";s:24:\"canmanagereportedcontent\";s:1:\"0\";s:14:\"canviewmodlogs\";s:1:\"0\";s:15:\"caneditprofiles\";s:1:\"0\";s:11:\"canbanusers\";s:1:\"0\";s:15:\"canviewwarnlogs\";s:1:\"0\";s:14:\"canuseipsearch\";s:1:\"0\";}i:3;a:91:{s:3:\"gid\";s:1:\"3\";s:4:\"type\";s:1:\"1\";s:5:\"title\";s:16:\"Super Moderators\";s:11:\"description\";s:35:\"These users can moderate any forum.\";s:9:\"namestyle\";s:64:\"<span style=\"color: #CC00CC;\"><strong>{username}</strong></span>\";s:9:\"usertitle\";s:15:\"Super Moderator\";s:5:\"stars\";s:1:\"6\";s:9:\"starimage\";s:15:\"images/star.png\";s:5:\"image\";s:0:\"\";s:9:\"disporder\";s:1:\"2\";s:13:\"isbannedgroup\";s:1:\"0\";s:7:\"canview\";s:1:\"1\";s:14:\"canviewthreads\";s:1:\"1\";s:15:\"canviewprofiles\";s:1:\"1\";s:16:\"candlattachments\";s:1:\"1\";s:18:\"canviewboardclosed\";s:1:\"0\";s:14:\"canpostthreads\";s:1:\"1\";s:13:\"canpostreplys\";s:1:\"1\";s:18:\"canpostattachments\";s:1:\"1\";s:14:\"canratethreads\";s:1:\"1\";s:8:\"modposts\";s:1:\"0\";s:10:\"modthreads\";s:1:\"0\";s:14:\"mod_edit_posts\";s:1:\"0\";s:14:\"modattachments\";s:1:\"0\";s:12:\"caneditposts\";s:1:\"1\";s:14:\"candeleteposts\";s:1:\"1\";s:16:\"candeletethreads\";s:1:\"1\";s:18:\"caneditattachments\";s:1:\"1\";s:21:\"canviewdeletionnotice\";s:1:\"1\";s:12:\"canpostpolls\";s:1:\"1\";s:12:\"canvotepolls\";s:1:\"1\";s:12:\"canundovotes\";s:1:\"1\";s:9:\"canusepms\";s:1:\"1\";s:10:\"cansendpms\";s:1:\"1\";s:11:\"cantrackpms\";s:1:\"1\";s:17:\"candenypmreceipts\";s:1:\"1\";s:7:\"pmquota\";s:3:\"250\";s:15:\"maxpmrecipients\";s:1:\"5\";s:12:\"cansendemail\";s:1:\"1\";s:20:\"cansendemailoverride\";s:1:\"0\";s:9:\"maxemails\";s:2:\"10\";s:14:\"emailfloodtime\";s:1:\"5\";s:17:\"canviewmemberlist\";s:1:\"1\";s:15:\"canviewcalendar\";s:1:\"1\";s:12:\"canaddevents\";s:1:\"1\";s:17:\"canbypasseventmod\";s:1:\"1\";s:17:\"canmoderateevents\";s:1:\"1\";s:13:\"canviewonline\";s:1:\"1\";s:15:\"canviewwolinvis\";s:1:\"1\";s:16:\"canviewonlineips\";s:1:\"1\";s:5:\"cancp\";s:1:\"0\";s:10:\"issupermod\";s:1:\"1\";s:9:\"cansearch\";s:1:\"1\";s:9:\"canusercp\";s:1:\"1\";s:16:\"canuploadavatars\";s:1:\"1\";s:14:\"canratemembers\";s:1:\"1\";s:13:\"canchangename\";s:1:\"1\";s:13:\"canbereported\";s:1:\"0\";s:14:\"canbeinvisible\";s:1:\"1\";s:16:\"canchangewebsite\";s:1:\"1\";s:13:\"showforumteam\";s:1:\"1\";s:19:\"usereputationsystem\";s:1:\"1\";s:18:\"cangivereputations\";s:1:\"1\";s:20:\"candeletereputations\";s:1:\"1\";s:15:\"reputationpower\";s:1:\"1\";s:17:\"maxreputationsday\";s:2:\"10\";s:21:\"maxreputationsperuser\";s:1:\"0\";s:23:\"maxreputationsperthread\";s:1:\"0\";s:15:\"candisplaygroup\";s:1:\"1\";s:11:\"attachquota\";s:1:\"0\";s:14:\"cancustomtitle\";s:1:\"1\";s:12:\"canwarnusers\";s:1:\"1\";s:18:\"canreceivewarnings\";s:1:\"1\";s:14:\"maxwarningsday\";s:1:\"3\";s:8:\"canmodcp\";s:1:\"1\";s:18:\"showinbirthdaylist\";s:1:\"1\";s:13:\"canoverridepm\";s:1:\"0\";s:9:\"canusesig\";s:1:\"1\";s:15:\"canusesigxposts\";s:1:\"0\";s:11:\"signofollow\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:8:\"maxposts\";s:1:\"0\";s:14:\"showmemberlist\";s:1:\"1\";s:17:\"canmanageannounce\";s:1:\"1\";s:17:\"canmanagemodqueue\";s:1:\"1\";s:24:\"canmanagereportedcontent\";s:1:\"1\";s:14:\"canviewmodlogs\";s:1:\"1\";s:15:\"caneditprofiles\";s:1:\"1\";s:11:\"canbanusers\";s:1:\"1\";s:15:\"canviewwarnlogs\";s:1:\"1\";s:14:\"canuseipsearch\";s:1:\"1\";}i:4;a:91:{s:3:\"gid\";s:1:\"4\";s:4:\"type\";s:1:\"1\";s:5:\"title\";s:14:\"Administrators\";s:11:\"description\";s:3:\"NPC\";s:9:\"namestyle\";s:83:\"<span class=\"username\" style=\"color: var(--npc)\"><strong>{username}</strong></span>\";s:9:\"usertitle\";s:13:\"Administrator\";s:5:\"stars\";s:1:\"7\";s:9:\"starimage\";s:15:\"images/star.png\";s:5:\"image\";s:0:\"\";s:9:\"disporder\";s:1:\"1\";s:13:\"isbannedgroup\";s:1:\"0\";s:7:\"canview\";s:1:\"1\";s:14:\"canviewthreads\";s:1:\"1\";s:15:\"canviewprofiles\";s:1:\"1\";s:16:\"candlattachments\";s:1:\"1\";s:18:\"canviewboardclosed\";s:1:\"1\";s:14:\"canpostthreads\";s:1:\"1\";s:13:\"canpostreplys\";s:1:\"1\";s:18:\"canpostattachments\";s:1:\"1\";s:14:\"canratethreads\";s:1:\"1\";s:8:\"modposts\";s:1:\"0\";s:10:\"modthreads\";s:1:\"0\";s:14:\"mod_edit_posts\";s:1:\"0\";s:14:\"modattachments\";s:1:\"0\";s:12:\"caneditposts\";s:1:\"1\";s:14:\"candeleteposts\";s:1:\"1\";s:16:\"candeletethreads\";s:1:\"1\";s:18:\"caneditattachments\";s:1:\"1\";s:21:\"canviewdeletionnotice\";s:1:\"1\";s:12:\"canpostpolls\";s:1:\"1\";s:12:\"canvotepolls\";s:1:\"1\";s:12:\"canundovotes\";s:1:\"1\";s:9:\"canusepms\";s:1:\"1\";s:10:\"cansendpms\";s:1:\"1\";s:11:\"cantrackpms\";s:1:\"1\";s:17:\"candenypmreceipts\";s:1:\"1\";s:7:\"pmquota\";s:1:\"0\";s:15:\"maxpmrecipients\";s:1:\"0\";s:12:\"cansendemail\";s:1:\"1\";s:20:\"cansendemailoverride\";s:1:\"0\";s:9:\"maxemails\";s:1:\"0\";s:14:\"emailfloodtime\";s:1:\"0\";s:17:\"canviewmemberlist\";s:1:\"1\";s:15:\"canviewcalendar\";s:1:\"1\";s:12:\"canaddevents\";s:1:\"1\";s:17:\"canbypasseventmod\";s:1:\"1\";s:17:\"canmoderateevents\";s:1:\"1\";s:13:\"canviewonline\";s:1:\"1\";s:15:\"canviewwolinvis\";s:1:\"1\";s:16:\"canviewonlineips\";s:1:\"1\";s:5:\"cancp\";s:1:\"1\";s:10:\"issupermod\";s:1:\"1\";s:9:\"cansearch\";s:1:\"1\";s:9:\"canusercp\";s:1:\"1\";s:16:\"canuploadavatars\";s:1:\"1\";s:14:\"canratemembers\";s:1:\"1\";s:13:\"canchangename\";s:1:\"1\";s:13:\"canbereported\";s:1:\"0\";s:14:\"canbeinvisible\";s:1:\"1\";s:16:\"canchangewebsite\";s:1:\"1\";s:13:\"showforumteam\";s:1:\"1\";s:19:\"usereputationsystem\";s:1:\"1\";s:18:\"cangivereputations\";s:1:\"1\";s:20:\"candeletereputations\";s:1:\"1\";s:15:\"reputationpower\";s:1:\"2\";s:17:\"maxreputationsday\";s:1:\"0\";s:21:\"maxreputationsperuser\";s:1:\"0\";s:23:\"maxreputationsperthread\";s:1:\"0\";s:15:\"candisplaygroup\";s:1:\"1\";s:11:\"attachquota\";s:1:\"0\";s:14:\"cancustomtitle\";s:1:\"1\";s:12:\"canwarnusers\";s:1:\"1\";s:18:\"canreceivewarnings\";s:1:\"1\";s:14:\"maxwarningsday\";s:1:\"0\";s:8:\"canmodcp\";s:1:\"1\";s:18:\"showinbirthdaylist\";s:1:\"1\";s:13:\"canoverridepm\";s:1:\"0\";s:9:\"canusesig\";s:1:\"1\";s:15:\"canusesigxposts\";s:1:\"0\";s:11:\"signofollow\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:8:\"maxposts\";s:1:\"0\";s:14:\"showmemberlist\";s:1:\"1\";s:17:\"canmanageannounce\";s:1:\"1\";s:17:\"canmanagemodqueue\";s:1:\"1\";s:24:\"canmanagereportedcontent\";s:1:\"1\";s:14:\"canviewmodlogs\";s:1:\"1\";s:15:\"caneditprofiles\";s:1:\"1\";s:11:\"canbanusers\";s:1:\"1\";s:15:\"canviewwarnlogs\";s:1:\"1\";s:14:\"canuseipsearch\";s:1:\"1\";}i:5;a:91:{s:3:\"gid\";s:1:\"5\";s:4:\"type\";s:1:\"1\";s:5:\"title\";s:19:\"Awaiting Activation\";s:11:\"description\";s:11:\"Jasny szary\";s:9:\"namestyle\";s:10:\"{username}\";s:9:\"usertitle\";s:21:\"Account not Activated\";s:5:\"stars\";s:1:\"0\";s:9:\"starimage\";s:15:\"images/star.png\";s:5:\"image\";s:0:\"\";s:9:\"disporder\";s:1:\"0\";s:13:\"isbannedgroup\";s:1:\"0\";s:7:\"canview\";s:1:\"1\";s:14:\"canviewthreads\";s:1:\"1\";s:15:\"canviewprofiles\";s:1:\"1\";s:16:\"candlattachments\";s:1:\"0\";s:18:\"canviewboardclosed\";s:1:\"0\";s:14:\"canpostthreads\";s:1:\"0\";s:13:\"canpostreplys\";s:1:\"0\";s:18:\"canpostattachments\";s:1:\"0\";s:14:\"canratethreads\";s:1:\"0\";s:8:\"modposts\";s:1:\"0\";s:10:\"modthreads\";s:1:\"0\";s:14:\"mod_edit_posts\";s:1:\"0\";s:14:\"modattachments\";s:1:\"0\";s:12:\"caneditposts\";s:1:\"0\";s:14:\"candeleteposts\";s:1:\"0\";s:16:\"candeletethreads\";s:1:\"0\";s:18:\"caneditattachments\";s:1:\"0\";s:21:\"canviewdeletionnotice\";s:1:\"0\";s:12:\"canpostpolls\";s:1:\"0\";s:12:\"canvotepolls\";s:1:\"0\";s:12:\"canundovotes\";s:1:\"0\";s:9:\"canusepms\";s:1:\"0\";s:10:\"cansendpms\";s:1:\"0\";s:11:\"cantrackpms\";s:1:\"0\";s:17:\"candenypmreceipts\";s:1:\"0\";s:7:\"pmquota\";s:2:\"20\";s:15:\"maxpmrecipients\";s:1:\"5\";s:12:\"cansendemail\";s:1:\"0\";s:20:\"cansendemailoverride\";s:1:\"0\";s:9:\"maxemails\";s:1:\"5\";s:14:\"emailfloodtime\";s:1:\"5\";s:17:\"canviewmemberlist\";s:1:\"1\";s:15:\"canviewcalendar\";s:1:\"1\";s:12:\"canaddevents\";s:1:\"0\";s:17:\"canbypasseventmod\";s:1:\"0\";s:17:\"canmoderateevents\";s:1:\"0\";s:13:\"canviewonline\";s:1:\"1\";s:15:\"canviewwolinvis\";s:1:\"0\";s:16:\"canviewonlineips\";s:1:\"0\";s:5:\"cancp\";s:1:\"0\";s:10:\"issupermod\";s:1:\"0\";s:9:\"cansearch\";s:1:\"1\";s:9:\"canusercp\";s:1:\"1\";s:16:\"canuploadavatars\";s:1:\"0\";s:14:\"canratemembers\";s:1:\"0\";s:13:\"canchangename\";s:1:\"0\";s:13:\"canbereported\";s:1:\"1\";s:14:\"canbeinvisible\";s:1:\"1\";s:16:\"canchangewebsite\";s:1:\"0\";s:13:\"showforumteam\";s:1:\"0\";s:19:\"usereputationsystem\";s:1:\"0\";s:18:\"cangivereputations\";s:1:\"0\";s:20:\"candeletereputations\";s:1:\"0\";s:15:\"reputationpower\";s:1:\"0\";s:17:\"maxreputationsday\";s:1:\"0\";s:21:\"maxreputationsperuser\";s:1:\"0\";s:23:\"maxreputationsperthread\";s:1:\"0\";s:15:\"candisplaygroup\";s:1:\"1\";s:11:\"attachquota\";s:1:\"0\";s:14:\"cancustomtitle\";s:1:\"0\";s:12:\"canwarnusers\";s:1:\"0\";s:18:\"canreceivewarnings\";s:1:\"0\";s:14:\"maxwarningsday\";s:1:\"0\";s:8:\"canmodcp\";s:1:\"0\";s:18:\"showinbirthdaylist\";s:1:\"1\";s:13:\"canoverridepm\";s:1:\"0\";s:9:\"canusesig\";s:1:\"0\";s:15:\"canusesigxposts\";s:1:\"0\";s:11:\"signofollow\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:8:\"maxposts\";s:1:\"0\";s:14:\"showmemberlist\";s:1:\"1\";s:17:\"canmanageannounce\";s:1:\"0\";s:17:\"canmanagemodqueue\";s:1:\"0\";s:24:\"canmanagereportedcontent\";s:1:\"0\";s:14:\"canviewmodlogs\";s:1:\"0\";s:15:\"caneditprofiles\";s:1:\"0\";s:11:\"canbanusers\";s:1:\"0\";s:15:\"canviewwarnlogs\";s:1:\"0\";s:14:\"canuseipsearch\";s:1:\"0\";}i:6;a:91:{s:3:\"gid\";s:1:\"6\";s:4:\"type\";s:1:\"1\";s:5:\"title\";s:10:\"Moderators\";s:11:\"description\";s:37:\"These users moderate specific forums.\";s:9:\"namestyle\";s:64:\"<span style=\"color: #CC00CC;\"><strong>{username}</strong></span>\";s:9:\"usertitle\";s:9:\"Moderator\";s:5:\"stars\";s:1:\"5\";s:9:\"starimage\";s:15:\"images/star.png\";s:5:\"image\";s:0:\"\";s:9:\"disporder\";s:1:\"3\";s:13:\"isbannedgroup\";s:1:\"0\";s:7:\"canview\";s:1:\"1\";s:14:\"canviewthreads\";s:1:\"1\";s:15:\"canviewprofiles\";s:1:\"1\";s:16:\"candlattachments\";s:1:\"1\";s:18:\"canviewboardclosed\";s:1:\"0\";s:14:\"canpostthreads\";s:1:\"1\";s:13:\"canpostreplys\";s:1:\"1\";s:18:\"canpostattachments\";s:1:\"1\";s:14:\"canratethreads\";s:1:\"1\";s:8:\"modposts\";s:1:\"0\";s:10:\"modthreads\";s:1:\"0\";s:14:\"mod_edit_posts\";s:1:\"0\";s:14:\"modattachments\";s:1:\"0\";s:12:\"caneditposts\";s:1:\"1\";s:14:\"candeleteposts\";s:1:\"1\";s:16:\"candeletethreads\";s:1:\"1\";s:18:\"caneditattachments\";s:1:\"1\";s:21:\"canviewdeletionnotice\";s:1:\"1\";s:12:\"canpostpolls\";s:1:\"1\";s:12:\"canvotepolls\";s:1:\"1\";s:12:\"canundovotes\";s:1:\"0\";s:9:\"canusepms\";s:1:\"1\";s:10:\"cansendpms\";s:1:\"1\";s:11:\"cantrackpms\";s:1:\"1\";s:17:\"candenypmreceipts\";s:1:\"1\";s:7:\"pmquota\";s:3:\"250\";s:15:\"maxpmrecipients\";s:1:\"5\";s:12:\"cansendemail\";s:1:\"1\";s:20:\"cansendemailoverride\";s:1:\"0\";s:9:\"maxemails\";s:1:\"5\";s:14:\"emailfloodtime\";s:1:\"5\";s:17:\"canviewmemberlist\";s:1:\"1\";s:15:\"canviewcalendar\";s:1:\"1\";s:12:\"canaddevents\";s:1:\"0\";s:17:\"canbypasseventmod\";s:1:\"0\";s:17:\"canmoderateevents\";s:1:\"0\";s:13:\"canviewonline\";s:1:\"1\";s:15:\"canviewwolinvis\";s:1:\"0\";s:16:\"canviewonlineips\";s:1:\"0\";s:5:\"cancp\";s:1:\"0\";s:10:\"issupermod\";s:1:\"0\";s:9:\"cansearch\";s:1:\"1\";s:9:\"canusercp\";s:1:\"1\";s:16:\"canuploadavatars\";s:1:\"1\";s:14:\"canratemembers\";s:1:\"1\";s:13:\"canchangename\";s:1:\"1\";s:13:\"canbereported\";s:1:\"0\";s:14:\"canbeinvisible\";s:1:\"1\";s:16:\"canchangewebsite\";s:1:\"1\";s:13:\"showforumteam\";s:1:\"1\";s:19:\"usereputationsystem\";s:1:\"1\";s:18:\"cangivereputations\";s:1:\"1\";s:20:\"candeletereputations\";s:1:\"1\";s:15:\"reputationpower\";s:1:\"1\";s:17:\"maxreputationsday\";s:2:\"10\";s:21:\"maxreputationsperuser\";s:1:\"0\";s:23:\"maxreputationsperthread\";s:1:\"0\";s:15:\"candisplaygroup\";s:1:\"1\";s:11:\"attachquota\";s:1:\"0\";s:14:\"cancustomtitle\";s:1:\"1\";s:12:\"canwarnusers\";s:1:\"1\";s:18:\"canreceivewarnings\";s:1:\"1\";s:14:\"maxwarningsday\";s:1:\"3\";s:8:\"canmodcp\";s:1:\"1\";s:18:\"showinbirthdaylist\";s:1:\"1\";s:13:\"canoverridepm\";s:1:\"0\";s:9:\"canusesig\";s:1:\"1\";s:15:\"canusesigxposts\";s:1:\"0\";s:11:\"signofollow\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:8:\"maxposts\";s:1:\"0\";s:14:\"showmemberlist\";s:1:\"1\";s:17:\"canmanageannounce\";s:1:\"1\";s:17:\"canmanagemodqueue\";s:1:\"1\";s:24:\"canmanagereportedcontent\";s:1:\"1\";s:14:\"canviewmodlogs\";s:1:\"1\";s:15:\"caneditprofiles\";s:1:\"1\";s:11:\"canbanusers\";s:1:\"1\";s:15:\"canviewwarnlogs\";s:1:\"1\";s:14:\"canuseipsearch\";s:1:\"1\";}i:7;a:91:{s:3:\"gid\";s:1:\"7\";s:4:\"type\";s:1:\"1\";s:5:\"title\";s:9:\"Zbanowani\";s:11:\"description\";s:38:\"Coś pomiędzy jasnym a ciemnym szarym\";s:9:\"namestyle\";s:76:\"<span class=\"username\" style=\"color: var(--banned)\"><s>{username}</s></span>\";s:9:\"usertitle\";s:6:\"Banned\";s:5:\"stars\";s:1:\"0\";s:9:\"starimage\";s:15:\"images/star.png\";s:5:\"image\";s:0:\"\";s:9:\"disporder\";s:1:\"0\";s:13:\"isbannedgroup\";s:1:\"1\";s:7:\"canview\";s:1:\"0\";s:14:\"canviewthreads\";s:1:\"0\";s:15:\"canviewprofiles\";s:1:\"0\";s:16:\"candlattachments\";s:1:\"0\";s:18:\"canviewboardclosed\";s:1:\"0\";s:14:\"canpostthreads\";s:1:\"0\";s:13:\"canpostreplys\";s:1:\"0\";s:18:\"canpostattachments\";s:1:\"0\";s:14:\"canratethreads\";s:1:\"0\";s:8:\"modposts\";s:1:\"0\";s:10:\"modthreads\";s:1:\"0\";s:14:\"mod_edit_posts\";s:1:\"0\";s:14:\"modattachments\";s:1:\"0\";s:12:\"caneditposts\";s:1:\"0\";s:14:\"candeleteposts\";s:1:\"0\";s:16:\"candeletethreads\";s:1:\"0\";s:18:\"caneditattachments\";s:1:\"0\";s:21:\"canviewdeletionnotice\";s:1:\"0\";s:12:\"canpostpolls\";s:1:\"0\";s:12:\"canvotepolls\";s:1:\"0\";s:12:\"canundovotes\";s:1:\"0\";s:9:\"canusepms\";s:1:\"1\";s:10:\"cansendpms\";s:1:\"0\";s:11:\"cantrackpms\";s:1:\"0\";s:17:\"candenypmreceipts\";s:1:\"0\";s:7:\"pmquota\";s:1:\"0\";s:15:\"maxpmrecipients\";s:1:\"0\";s:12:\"cansendemail\";s:1:\"0\";s:20:\"cansendemailoverride\";s:1:\"0\";s:9:\"maxemails\";s:1:\"5\";s:14:\"emailfloodtime\";s:1:\"5\";s:17:\"canviewmemberlist\";s:1:\"0\";s:15:\"canviewcalendar\";s:1:\"0\";s:12:\"canaddevents\";s:1:\"0\";s:17:\"canbypasseventmod\";s:1:\"0\";s:17:\"canmoderateevents\";s:1:\"0\";s:13:\"canviewonline\";s:1:\"0\";s:15:\"canviewwolinvis\";s:1:\"0\";s:16:\"canviewonlineips\";s:1:\"0\";s:5:\"cancp\";s:1:\"0\";s:10:\"issupermod\";s:1:\"0\";s:9:\"cansearch\";s:1:\"0\";s:9:\"canusercp\";s:1:\"0\";s:16:\"canuploadavatars\";s:1:\"0\";s:14:\"canratemembers\";s:1:\"0\";s:13:\"canchangename\";s:1:\"0\";s:13:\"canbereported\";s:1:\"0\";s:14:\"canbeinvisible\";s:1:\"1\";s:16:\"canchangewebsite\";s:1:\"0\";s:13:\"showforumteam\";s:1:\"0\";s:19:\"usereputationsystem\";s:1:\"0\";s:18:\"cangivereputations\";s:1:\"0\";s:20:\"candeletereputations\";s:1:\"0\";s:15:\"reputationpower\";s:1:\"0\";s:17:\"maxreputationsday\";s:1:\"0\";s:21:\"maxreputationsperuser\";s:1:\"0\";s:23:\"maxreputationsperthread\";s:1:\"0\";s:15:\"candisplaygroup\";s:1:\"1\";s:11:\"attachquota\";s:1:\"0\";s:14:\"cancustomtitle\";s:1:\"0\";s:12:\"canwarnusers\";s:1:\"0\";s:18:\"canreceivewarnings\";s:1:\"0\";s:14:\"maxwarningsday\";s:1:\"0\";s:8:\"canmodcp\";s:1:\"0\";s:18:\"showinbirthdaylist\";s:1:\"0\";s:13:\"canoverridepm\";s:1:\"0\";s:9:\"canusesig\";s:1:\"0\";s:15:\"canusesigxposts\";s:1:\"0\";s:11:\"signofollow\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:8:\"maxposts\";s:1:\"0\";s:14:\"showmemberlist\";s:1:\"1\";s:17:\"canmanageannounce\";s:1:\"0\";s:17:\"canmanagemodqueue\";s:1:\"0\";s:24:\"canmanagereportedcontent\";s:1:\"0\";s:14:\"canviewmodlogs\";s:1:\"0\";s:15:\"caneditprofiles\";s:1:\"0\";s:11:\"canbanusers\";s:1:\"0\";s:15:\"canviewwarnlogs\";s:1:\"0\";s:14:\"canuseipsearch\";s:1:\"0\";}i:8;a:91:{s:3:\"gid\";s:1:\"8\";s:4:\"type\";s:1:\"2\";s:5:\"title\";s:14:\"Mistrzowie Gry\";s:11:\"description\";s:3:\"NPC\";s:9:\"namestyle\";s:10:\"{username}\";s:9:\"usertitle\";s:10:\"Mistrz Gry\";s:5:\"stars\";s:1:\"0\";s:9:\"starimage\";s:15:\"images/star.png\";s:5:\"image\";s:0:\"\";s:9:\"disporder\";s:1:\"4\";s:13:\"isbannedgroup\";s:1:\"0\";s:7:\"canview\";s:1:\"1\";s:14:\"canviewthreads\";s:1:\"1\";s:15:\"canviewprofiles\";s:1:\"1\";s:16:\"candlattachments\";s:1:\"1\";s:18:\"canviewboardclosed\";s:1:\"1\";s:14:\"canpostthreads\";s:1:\"1\";s:13:\"canpostreplys\";s:1:\"1\";s:18:\"canpostattachments\";s:1:\"1\";s:14:\"canratethreads\";s:1:\"1\";s:8:\"modposts\";s:1:\"0\";s:10:\"modthreads\";s:1:\"0\";s:14:\"mod_edit_posts\";s:1:\"0\";s:14:\"modattachments\";s:1:\"0\";s:12:\"caneditposts\";s:1:\"1\";s:14:\"candeleteposts\";s:1:\"1\";s:16:\"candeletethreads\";s:1:\"1\";s:18:\"caneditattachments\";s:1:\"1\";s:21:\"canviewdeletionnotice\";s:1:\"1\";s:12:\"canpostpolls\";s:1:\"1\";s:12:\"canvotepolls\";s:1:\"1\";s:12:\"canundovotes\";s:1:\"0\";s:9:\"canusepms\";s:1:\"1\";s:10:\"cansendpms\";s:1:\"1\";s:11:\"cantrackpms\";s:1:\"1\";s:17:\"candenypmreceipts\";s:1:\"1\";s:7:\"pmquota\";s:3:\"100\";s:15:\"maxpmrecipients\";s:1:\"5\";s:12:\"cansendemail\";s:1:\"1\";s:20:\"cansendemailoverride\";s:1:\"1\";s:9:\"maxemails\";s:1:\"4\";s:14:\"emailfloodtime\";s:1:\"5\";s:17:\"canviewmemberlist\";s:1:\"1\";s:15:\"canviewcalendar\";s:1:\"1\";s:12:\"canaddevents\";s:1:\"1\";s:17:\"canbypasseventmod\";s:1:\"0\";s:17:\"canmoderateevents\";s:1:\"0\";s:13:\"canviewonline\";s:1:\"1\";s:15:\"canviewwolinvis\";s:1:\"1\";s:16:\"canviewonlineips\";s:1:\"0\";s:5:\"cancp\";s:1:\"0\";s:10:\"issupermod\";s:1:\"0\";s:9:\"cansearch\";s:1:\"1\";s:9:\"canusercp\";s:1:\"1\";s:16:\"canuploadavatars\";s:1:\"1\";s:14:\"canratemembers\";s:1:\"1\";s:13:\"canchangename\";s:1:\"0\";s:13:\"canbereported\";s:1:\"1\";s:14:\"canbeinvisible\";s:1:\"1\";s:16:\"canchangewebsite\";s:1:\"1\";s:13:\"showforumteam\";s:1:\"1\";s:19:\"usereputationsystem\";s:1:\"1\";s:18:\"cangivereputations\";s:1:\"1\";s:20:\"candeletereputations\";s:1:\"1\";s:15:\"reputationpower\";s:1:\"1\";s:17:\"maxreputationsday\";s:1:\"5\";s:21:\"maxreputationsperuser\";s:1:\"0\";s:23:\"maxreputationsperthread\";s:1:\"0\";s:15:\"candisplaygroup\";s:1:\"0\";s:11:\"attachquota\";s:4:\"5000\";s:14:\"cancustomtitle\";s:1:\"0\";s:12:\"canwarnusers\";s:1:\"1\";s:18:\"canreceivewarnings\";s:1:\"1\";s:14:\"maxwarningsday\";s:1:\"0\";s:8:\"canmodcp\";s:1:\"0\";s:18:\"showinbirthdaylist\";s:1:\"0\";s:13:\"canoverridepm\";s:1:\"1\";s:9:\"canusesig\";s:1:\"1\";s:15:\"canusesigxposts\";s:1:\"0\";s:11:\"signofollow\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:8:\"maxposts\";s:1:\"0\";s:14:\"showmemberlist\";s:1:\"1\";s:17:\"canmanageannounce\";s:1:\"0\";s:17:\"canmanagemodqueue\";s:1:\"0\";s:24:\"canmanagereportedcontent\";s:1:\"0\";s:14:\"canviewmodlogs\";s:1:\"0\";s:15:\"caneditprofiles\";s:1:\"0\";s:11:\"canbanusers\";s:1:\"0\";s:15:\"canviewwarnlogs\";s:1:\"0\";s:14:\"canuseipsearch\";s:1:\"0\";}i:9;a:91:{s:3:\"gid\";s:1:\"9\";s:4:\"type\";s:1:\"2\";s:5:\"title\";s:7:\"Grupa 1\";s:11:\"description\";s:16:\"Biały kryształ\";s:9:\"namestyle\";s:84:\"<span class=\"username\" style=\"color: var(--opal)\"><strong>{username}</strong></span>\";s:9:\"usertitle\";s:0:\"\";s:5:\"stars\";s:1:\"0\";s:9:\"starimage\";s:15:\"images/star.png\";s:5:\"image\";s:0:\"\";s:9:\"disporder\";s:1:\"0\";s:13:\"isbannedgroup\";s:1:\"0\";s:7:\"canview\";s:1:\"1\";s:14:\"canviewthreads\";s:1:\"1\";s:15:\"canviewprofiles\";s:1:\"1\";s:16:\"candlattachments\";s:1:\"1\";s:18:\"canviewboardclosed\";s:1:\"0\";s:14:\"canpostthreads\";s:1:\"1\";s:13:\"canpostreplys\";s:1:\"1\";s:18:\"canpostattachments\";s:1:\"1\";s:14:\"canratethreads\";s:1:\"1\";s:8:\"modposts\";s:1:\"0\";s:10:\"modthreads\";s:1:\"0\";s:14:\"mod_edit_posts\";s:1:\"0\";s:14:\"modattachments\";s:1:\"0\";s:12:\"caneditposts\";s:1:\"1\";s:14:\"candeleteposts\";s:1:\"1\";s:16:\"candeletethreads\";s:1:\"1\";s:18:\"caneditattachments\";s:1:\"1\";s:21:\"canviewdeletionnotice\";s:1:\"1\";s:12:\"canpostpolls\";s:1:\"1\";s:12:\"canvotepolls\";s:1:\"1\";s:12:\"canundovotes\";s:1:\"0\";s:9:\"canusepms\";s:1:\"1\";s:10:\"cansendpms\";s:1:\"1\";s:11:\"cantrackpms\";s:1:\"1\";s:17:\"candenypmreceipts\";s:1:\"1\";s:7:\"pmquota\";s:3:\"200\";s:15:\"maxpmrecipients\";s:1:\"5\";s:12:\"cansendemail\";s:1:\"1\";s:20:\"cansendemailoverride\";s:1:\"0\";s:9:\"maxemails\";s:1:\"5\";s:14:\"emailfloodtime\";s:1:\"5\";s:17:\"canviewmemberlist\";s:1:\"1\";s:15:\"canviewcalendar\";s:1:\"1\";s:12:\"canaddevents\";s:1:\"1\";s:17:\"canbypasseventmod\";s:1:\"0\";s:17:\"canmoderateevents\";s:1:\"0\";s:13:\"canviewonline\";s:1:\"1\";s:15:\"canviewwolinvis\";s:1:\"0\";s:16:\"canviewonlineips\";s:1:\"0\";s:5:\"cancp\";s:1:\"0\";s:10:\"issupermod\";s:1:\"0\";s:9:\"cansearch\";s:1:\"1\";s:9:\"canusercp\";s:1:\"1\";s:16:\"canuploadavatars\";s:1:\"1\";s:14:\"canratemembers\";s:1:\"1\";s:13:\"canchangename\";s:1:\"0\";s:13:\"canbereported\";s:1:\"1\";s:14:\"canbeinvisible\";s:1:\"1\";s:16:\"canchangewebsite\";s:1:\"1\";s:13:\"showforumteam\";s:1:\"0\";s:19:\"usereputationsystem\";s:1:\"1\";s:18:\"cangivereputations\";s:1:\"1\";s:20:\"candeletereputations\";s:1:\"1\";s:15:\"reputationpower\";s:1:\"1\";s:17:\"maxreputationsday\";s:1:\"5\";s:21:\"maxreputationsperuser\";s:1:\"0\";s:23:\"maxreputationsperthread\";s:1:\"0\";s:15:\"candisplaygroup\";s:1:\"1\";s:11:\"attachquota\";s:1:\"0\";s:14:\"cancustomtitle\";s:1:\"1\";s:12:\"canwarnusers\";s:1:\"0\";s:18:\"canreceivewarnings\";s:1:\"1\";s:14:\"maxwarningsday\";s:1:\"0\";s:8:\"canmodcp\";s:1:\"0\";s:18:\"showinbirthdaylist\";s:1:\"1\";s:13:\"canoverridepm\";s:1:\"0\";s:9:\"canusesig\";s:1:\"1\";s:15:\"canusesigxposts\";s:1:\"0\";s:11:\"signofollow\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:8:\"maxposts\";s:1:\"0\";s:14:\"showmemberlist\";s:1:\"1\";s:17:\"canmanageannounce\";s:1:\"0\";s:17:\"canmanagemodqueue\";s:1:\"0\";s:24:\"canmanagereportedcontent\";s:1:\"0\";s:14:\"canviewmodlogs\";s:1:\"0\";s:15:\"caneditprofiles\";s:1:\"0\";s:11:\"canbanusers\";s:1:\"0\";s:15:\"canviewwarnlogs\";s:1:\"0\";s:14:\"canuseipsearch\";s:1:\"0\";}i:10;a:91:{s:3:\"gid\";s:2:\"10\";s:4:\"type\";s:1:\"2\";s:5:\"title\";s:7:\"Grupa 2\";s:11:\"description\";s:17:\"Zółty kryształ\";s:9:\"namestyle\";s:87:\"<span class=\"username\" style=\"color: var(--citrine)\"><strong>{username}</strong></span>\";s:9:\"usertitle\";s:0:\"\";s:5:\"stars\";s:1:\"0\";s:9:\"starimage\";s:15:\"images/star.png\";s:5:\"image\";s:0:\"\";s:9:\"disporder\";s:1:\"0\";s:13:\"isbannedgroup\";s:1:\"0\";s:7:\"canview\";s:1:\"1\";s:14:\"canviewthreads\";s:1:\"1\";s:15:\"canviewprofiles\";s:1:\"1\";s:16:\"candlattachments\";s:1:\"1\";s:18:\"canviewboardclosed\";s:1:\"0\";s:14:\"canpostthreads\";s:1:\"1\";s:13:\"canpostreplys\";s:1:\"1\";s:18:\"canpostattachments\";s:1:\"1\";s:14:\"canratethreads\";s:1:\"1\";s:8:\"modposts\";s:1:\"0\";s:10:\"modthreads\";s:1:\"0\";s:14:\"mod_edit_posts\";s:1:\"0\";s:14:\"modattachments\";s:1:\"0\";s:12:\"caneditposts\";s:1:\"1\";s:14:\"candeleteposts\";s:1:\"1\";s:16:\"candeletethreads\";s:1:\"1\";s:18:\"caneditattachments\";s:1:\"1\";s:21:\"canviewdeletionnotice\";s:1:\"1\";s:12:\"canpostpolls\";s:1:\"1\";s:12:\"canvotepolls\";s:1:\"1\";s:12:\"canundovotes\";s:1:\"0\";s:9:\"canusepms\";s:1:\"1\";s:10:\"cansendpms\";s:1:\"1\";s:11:\"cantrackpms\";s:1:\"1\";s:17:\"candenypmreceipts\";s:1:\"1\";s:7:\"pmquota\";s:3:\"200\";s:15:\"maxpmrecipients\";s:1:\"5\";s:12:\"cansendemail\";s:1:\"1\";s:20:\"cansendemailoverride\";s:1:\"0\";s:9:\"maxemails\";s:1:\"5\";s:14:\"emailfloodtime\";s:1:\"5\";s:17:\"canviewmemberlist\";s:1:\"1\";s:15:\"canviewcalendar\";s:1:\"1\";s:12:\"canaddevents\";s:1:\"1\";s:17:\"canbypasseventmod\";s:1:\"0\";s:17:\"canmoderateevents\";s:1:\"0\";s:13:\"canviewonline\";s:1:\"1\";s:15:\"canviewwolinvis\";s:1:\"0\";s:16:\"canviewonlineips\";s:1:\"0\";s:5:\"cancp\";s:1:\"0\";s:10:\"issupermod\";s:1:\"0\";s:9:\"cansearch\";s:1:\"1\";s:9:\"canusercp\";s:1:\"1\";s:16:\"canuploadavatars\";s:1:\"1\";s:14:\"canratemembers\";s:1:\"1\";s:13:\"canchangename\";s:1:\"0\";s:13:\"canbereported\";s:1:\"1\";s:14:\"canbeinvisible\";s:1:\"1\";s:16:\"canchangewebsite\";s:1:\"1\";s:13:\"showforumteam\";s:1:\"0\";s:19:\"usereputationsystem\";s:1:\"1\";s:18:\"cangivereputations\";s:1:\"1\";s:20:\"candeletereputations\";s:1:\"1\";s:15:\"reputationpower\";s:1:\"1\";s:17:\"maxreputationsday\";s:1:\"5\";s:21:\"maxreputationsperuser\";s:1:\"0\";s:23:\"maxreputationsperthread\";s:1:\"0\";s:15:\"candisplaygroup\";s:1:\"1\";s:11:\"attachquota\";s:1:\"0\";s:14:\"cancustomtitle\";s:1:\"1\";s:12:\"canwarnusers\";s:1:\"0\";s:18:\"canreceivewarnings\";s:1:\"1\";s:14:\"maxwarningsday\";s:1:\"0\";s:8:\"canmodcp\";s:1:\"0\";s:18:\"showinbirthdaylist\";s:1:\"1\";s:13:\"canoverridepm\";s:1:\"0\";s:9:\"canusesig\";s:1:\"1\";s:15:\"canusesigxposts\";s:1:\"0\";s:11:\"signofollow\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:8:\"maxposts\";s:1:\"0\";s:14:\"showmemberlist\";s:1:\"1\";s:17:\"canmanageannounce\";s:1:\"0\";s:17:\"canmanagemodqueue\";s:1:\"0\";s:24:\"canmanagereportedcontent\";s:1:\"0\";s:14:\"canviewmodlogs\";s:1:\"0\";s:15:\"caneditprofiles\";s:1:\"0\";s:11:\"canbanusers\";s:1:\"0\";s:15:\"canviewwarnlogs\";s:1:\"0\";s:14:\"canuseipsearch\";s:1:\"0\";}i:11;a:91:{s:3:\"gid\";s:2:\"11\";s:4:\"type\";s:1:\"2\";s:5:\"title\";s:7:\"Grupa 3\";s:11:\"description\";s:17:\"Zielony Kryształ\";s:9:\"namestyle\";s:90:\"<span class=\"username\" style=\"color: var(--aventurine)\"><strong>{username}</strong></span>\";s:9:\"usertitle\";s:0:\"\";s:5:\"stars\";s:1:\"0\";s:9:\"starimage\";s:15:\"images/star.png\";s:5:\"image\";s:0:\"\";s:9:\"disporder\";s:1:\"0\";s:13:\"isbannedgroup\";s:1:\"0\";s:7:\"canview\";s:1:\"1\";s:14:\"canviewthreads\";s:1:\"1\";s:15:\"canviewprofiles\";s:1:\"1\";s:16:\"candlattachments\";s:1:\"1\";s:18:\"canviewboardclosed\";s:1:\"0\";s:14:\"canpostthreads\";s:1:\"1\";s:13:\"canpostreplys\";s:1:\"1\";s:18:\"canpostattachments\";s:1:\"1\";s:14:\"canratethreads\";s:1:\"1\";s:8:\"modposts\";s:1:\"0\";s:10:\"modthreads\";s:1:\"0\";s:14:\"mod_edit_posts\";s:1:\"0\";s:14:\"modattachments\";s:1:\"0\";s:12:\"caneditposts\";s:1:\"1\";s:14:\"candeleteposts\";s:1:\"1\";s:16:\"candeletethreads\";s:1:\"1\";s:18:\"caneditattachments\";s:1:\"1\";s:21:\"canviewdeletionnotice\";s:1:\"1\";s:12:\"canpostpolls\";s:1:\"1\";s:12:\"canvotepolls\";s:1:\"1\";s:12:\"canundovotes\";s:1:\"0\";s:9:\"canusepms\";s:1:\"1\";s:10:\"cansendpms\";s:1:\"1\";s:11:\"cantrackpms\";s:1:\"1\";s:17:\"candenypmreceipts\";s:1:\"1\";s:7:\"pmquota\";s:3:\"200\";s:15:\"maxpmrecipients\";s:1:\"5\";s:12:\"cansendemail\";s:1:\"1\";s:20:\"cansendemailoverride\";s:1:\"0\";s:9:\"maxemails\";s:1:\"5\";s:14:\"emailfloodtime\";s:1:\"5\";s:17:\"canviewmemberlist\";s:1:\"1\";s:15:\"canviewcalendar\";s:1:\"1\";s:12:\"canaddevents\";s:1:\"1\";s:17:\"canbypasseventmod\";s:1:\"0\";s:17:\"canmoderateevents\";s:1:\"0\";s:13:\"canviewonline\";s:1:\"1\";s:15:\"canviewwolinvis\";s:1:\"0\";s:16:\"canviewonlineips\";s:1:\"0\";s:5:\"cancp\";s:1:\"0\";s:10:\"issupermod\";s:1:\"0\";s:9:\"cansearch\";s:1:\"1\";s:9:\"canusercp\";s:1:\"1\";s:16:\"canuploadavatars\";s:1:\"1\";s:14:\"canratemembers\";s:1:\"1\";s:13:\"canchangename\";s:1:\"0\";s:13:\"canbereported\";s:1:\"1\";s:14:\"canbeinvisible\";s:1:\"1\";s:16:\"canchangewebsite\";s:1:\"1\";s:13:\"showforumteam\";s:1:\"0\";s:19:\"usereputationsystem\";s:1:\"1\";s:18:\"cangivereputations\";s:1:\"1\";s:20:\"candeletereputations\";s:1:\"1\";s:15:\"reputationpower\";s:1:\"1\";s:17:\"maxreputationsday\";s:1:\"5\";s:21:\"maxreputationsperuser\";s:1:\"0\";s:23:\"maxreputationsperthread\";s:1:\"0\";s:15:\"candisplaygroup\";s:1:\"1\";s:11:\"attachquota\";s:1:\"0\";s:14:\"cancustomtitle\";s:1:\"1\";s:12:\"canwarnusers\";s:1:\"0\";s:18:\"canreceivewarnings\";s:1:\"1\";s:14:\"maxwarningsday\";s:1:\"0\";s:8:\"canmodcp\";s:1:\"0\";s:18:\"showinbirthdaylist\";s:1:\"1\";s:13:\"canoverridepm\";s:1:\"0\";s:9:\"canusesig\";s:1:\"1\";s:15:\"canusesigxposts\";s:1:\"0\";s:11:\"signofollow\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:8:\"maxposts\";s:1:\"0\";s:14:\"showmemberlist\";s:1:\"1\";s:17:\"canmanageannounce\";s:1:\"0\";s:17:\"canmanagemodqueue\";s:1:\"0\";s:24:\"canmanagereportedcontent\";s:1:\"0\";s:14:\"canviewmodlogs\";s:1:\"0\";s:15:\"caneditprofiles\";s:1:\"0\";s:11:\"canbanusers\";s:1:\"0\";s:15:\"canviewwarnlogs\";s:1:\"0\";s:14:\"canuseipsearch\";s:1:\"0\";}i:12;a:91:{s:3:\"gid\";s:2:\"12\";s:4:\"type\";s:1:\"2\";s:5:\"title\";s:7:\"Grupa 4\";s:11:\"description\";s:19:\"Niebieski kryształ\";s:9:\"namestyle\";s:88:\"<span class=\"username\" style=\"color: var(--sapphire)\"><strong>{username}</strong></span>\";s:9:\"usertitle\";s:0:\"\";s:5:\"stars\";s:1:\"0\";s:9:\"starimage\";s:15:\"images/star.png\";s:5:\"image\";s:0:\"\";s:9:\"disporder\";s:1:\"0\";s:13:\"isbannedgroup\";s:1:\"0\";s:7:\"canview\";s:1:\"1\";s:14:\"canviewthreads\";s:1:\"1\";s:15:\"canviewprofiles\";s:1:\"1\";s:16:\"candlattachments\";s:1:\"1\";s:18:\"canviewboardclosed\";s:1:\"0\";s:14:\"canpostthreads\";s:1:\"1\";s:13:\"canpostreplys\";s:1:\"1\";s:18:\"canpostattachments\";s:1:\"1\";s:14:\"canratethreads\";s:1:\"1\";s:8:\"modposts\";s:1:\"0\";s:10:\"modthreads\";s:1:\"0\";s:14:\"mod_edit_posts\";s:1:\"0\";s:14:\"modattachments\";s:1:\"0\";s:12:\"caneditposts\";s:1:\"1\";s:14:\"candeleteposts\";s:1:\"1\";s:16:\"candeletethreads\";s:1:\"1\";s:18:\"caneditattachments\";s:1:\"1\";s:21:\"canviewdeletionnotice\";s:1:\"1\";s:12:\"canpostpolls\";s:1:\"1\";s:12:\"canvotepolls\";s:1:\"1\";s:12:\"canundovotes\";s:1:\"0\";s:9:\"canusepms\";s:1:\"1\";s:10:\"cansendpms\";s:1:\"1\";s:11:\"cantrackpms\";s:1:\"1\";s:17:\"candenypmreceipts\";s:1:\"1\";s:7:\"pmquota\";s:3:\"200\";s:15:\"maxpmrecipients\";s:1:\"5\";s:12:\"cansendemail\";s:1:\"1\";s:20:\"cansendemailoverride\";s:1:\"0\";s:9:\"maxemails\";s:1:\"5\";s:14:\"emailfloodtime\";s:1:\"5\";s:17:\"canviewmemberlist\";s:1:\"1\";s:15:\"canviewcalendar\";s:1:\"1\";s:12:\"canaddevents\";s:1:\"1\";s:17:\"canbypasseventmod\";s:1:\"0\";s:17:\"canmoderateevents\";s:1:\"0\";s:13:\"canviewonline\";s:1:\"1\";s:15:\"canviewwolinvis\";s:1:\"0\";s:16:\"canviewonlineips\";s:1:\"0\";s:5:\"cancp\";s:1:\"0\";s:10:\"issupermod\";s:1:\"0\";s:9:\"cansearch\";s:1:\"1\";s:9:\"canusercp\";s:1:\"1\";s:16:\"canuploadavatars\";s:1:\"1\";s:14:\"canratemembers\";s:1:\"1\";s:13:\"canchangename\";s:1:\"0\";s:13:\"canbereported\";s:1:\"1\";s:14:\"canbeinvisible\";s:1:\"1\";s:16:\"canchangewebsite\";s:1:\"1\";s:13:\"showforumteam\";s:1:\"0\";s:19:\"usereputationsystem\";s:1:\"1\";s:18:\"cangivereputations\";s:1:\"1\";s:20:\"candeletereputations\";s:1:\"1\";s:15:\"reputationpower\";s:1:\"1\";s:17:\"maxreputationsday\";s:1:\"5\";s:21:\"maxreputationsperuser\";s:1:\"0\";s:23:\"maxreputationsperthread\";s:1:\"0\";s:15:\"candisplaygroup\";s:1:\"1\";s:11:\"attachquota\";s:1:\"0\";s:14:\"cancustomtitle\";s:1:\"1\";s:12:\"canwarnusers\";s:1:\"0\";s:18:\"canreceivewarnings\";s:1:\"1\";s:14:\"maxwarningsday\";s:1:\"0\";s:8:\"canmodcp\";s:1:\"0\";s:18:\"showinbirthdaylist\";s:1:\"1\";s:13:\"canoverridepm\";s:1:\"0\";s:9:\"canusesig\";s:1:\"1\";s:15:\"canusesigxposts\";s:1:\"0\";s:11:\"signofollow\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:8:\"maxposts\";s:1:\"0\";s:14:\"showmemberlist\";s:1:\"1\";s:17:\"canmanageannounce\";s:1:\"0\";s:17:\"canmanagemodqueue\";s:1:\"0\";s:24:\"canmanagereportedcontent\";s:1:\"0\";s:14:\"canviewmodlogs\";s:1:\"0\";s:15:\"caneditprofiles\";s:1:\"0\";s:11:\"canbanusers\";s:1:\"0\";s:15:\"canviewwarnlogs\";s:1:\"0\";s:14:\"canuseipsearch\";s:1:\"0\";}i:13;a:91:{s:3:\"gid\";s:2:\"13\";s:4:\"type\";s:1:\"2\";s:5:\"title\";s:7:\"Grupa 5\";s:11:\"description\";s:19:\"Fioletowy kryształ\";s:9:\"namestyle\";s:88:\"<span class=\"username\" style=\"color: var(--amethyst)\"><strong>{username}</strong></span>\";s:9:\"usertitle\";s:0:\"\";s:5:\"stars\";s:1:\"0\";s:9:\"starimage\";s:15:\"images/star.png\";s:5:\"image\";s:0:\"\";s:9:\"disporder\";s:1:\"0\";s:13:\"isbannedgroup\";s:1:\"0\";s:7:\"canview\";s:1:\"1\";s:14:\"canviewthreads\";s:1:\"1\";s:15:\"canviewprofiles\";s:1:\"1\";s:16:\"candlattachments\";s:1:\"1\";s:18:\"canviewboardclosed\";s:1:\"0\";s:14:\"canpostthreads\";s:1:\"1\";s:13:\"canpostreplys\";s:1:\"1\";s:18:\"canpostattachments\";s:1:\"1\";s:14:\"canratethreads\";s:1:\"1\";s:8:\"modposts\";s:1:\"0\";s:10:\"modthreads\";s:1:\"0\";s:14:\"mod_edit_posts\";s:1:\"0\";s:14:\"modattachments\";s:1:\"0\";s:12:\"caneditposts\";s:1:\"1\";s:14:\"candeleteposts\";s:1:\"1\";s:16:\"candeletethreads\";s:1:\"1\";s:18:\"caneditattachments\";s:1:\"1\";s:21:\"canviewdeletionnotice\";s:1:\"1\";s:12:\"canpostpolls\";s:1:\"1\";s:12:\"canvotepolls\";s:1:\"1\";s:12:\"canundovotes\";s:1:\"0\";s:9:\"canusepms\";s:1:\"1\";s:10:\"cansendpms\";s:1:\"1\";s:11:\"cantrackpms\";s:1:\"1\";s:17:\"candenypmreceipts\";s:1:\"1\";s:7:\"pmquota\";s:3:\"200\";s:15:\"maxpmrecipients\";s:1:\"5\";s:12:\"cansendemail\";s:1:\"1\";s:20:\"cansendemailoverride\";s:1:\"0\";s:9:\"maxemails\";s:1:\"5\";s:14:\"emailfloodtime\";s:1:\"5\";s:17:\"canviewmemberlist\";s:1:\"1\";s:15:\"canviewcalendar\";s:1:\"1\";s:12:\"canaddevents\";s:1:\"1\";s:17:\"canbypasseventmod\";s:1:\"0\";s:17:\"canmoderateevents\";s:1:\"0\";s:13:\"canviewonline\";s:1:\"1\";s:15:\"canviewwolinvis\";s:1:\"0\";s:16:\"canviewonlineips\";s:1:\"0\";s:5:\"cancp\";s:1:\"0\";s:10:\"issupermod\";s:1:\"0\";s:9:\"cansearch\";s:1:\"1\";s:9:\"canusercp\";s:1:\"1\";s:16:\"canuploadavatars\";s:1:\"1\";s:14:\"canratemembers\";s:1:\"1\";s:13:\"canchangename\";s:1:\"0\";s:13:\"canbereported\";s:1:\"1\";s:14:\"canbeinvisible\";s:1:\"1\";s:16:\"canchangewebsite\";s:1:\"1\";s:13:\"showforumteam\";s:1:\"0\";s:19:\"usereputationsystem\";s:1:\"1\";s:18:\"cangivereputations\";s:1:\"1\";s:20:\"candeletereputations\";s:1:\"1\";s:15:\"reputationpower\";s:1:\"1\";s:17:\"maxreputationsday\";s:1:\"5\";s:21:\"maxreputationsperuser\";s:1:\"0\";s:23:\"maxreputationsperthread\";s:1:\"0\";s:15:\"candisplaygroup\";s:1:\"1\";s:11:\"attachquota\";s:1:\"0\";s:14:\"cancustomtitle\";s:1:\"1\";s:12:\"canwarnusers\";s:1:\"0\";s:18:\"canreceivewarnings\";s:1:\"1\";s:14:\"maxwarningsday\";s:1:\"0\";s:8:\"canmodcp\";s:1:\"0\";s:18:\"showinbirthdaylist\";s:1:\"1\";s:13:\"canoverridepm\";s:1:\"0\";s:9:\"canusesig\";s:1:\"1\";s:15:\"canusesigxposts\";s:1:\"0\";s:11:\"signofollow\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:8:\"maxposts\";s:1:\"0\";s:14:\"showmemberlist\";s:1:\"1\";s:17:\"canmanageannounce\";s:1:\"0\";s:17:\"canmanagemodqueue\";s:1:\"0\";s:24:\"canmanagereportedcontent\";s:1:\"0\";s:14:\"canviewmodlogs\";s:1:\"0\";s:15:\"caneditprofiles\";s:1:\"0\";s:11:\"canbanusers\";s:1:\"0\";s:15:\"canviewwarnlogs\";s:1:\"0\";s:14:\"canuseipsearch\";s:1:\"0\";}i:14;a:91:{s:3:\"gid\";s:2:\"14\";s:4:\"type\";s:1:\"2\";s:5:\"title\";s:7:\"Grupa 6\";s:11:\"description\";s:18:\"Różowy kryształ\";s:9:\"namestyle\";s:91:\"<span class=\"username\" style=\"color: var(--rose-quartz)\"><strong>{username}</strong></span>\";s:9:\"usertitle\";s:0:\"\";s:5:\"stars\";s:1:\"0\";s:9:\"starimage\";s:15:\"images/star.png\";s:5:\"image\";s:0:\"\";s:9:\"disporder\";s:1:\"0\";s:13:\"isbannedgroup\";s:1:\"0\";s:7:\"canview\";s:1:\"1\";s:14:\"canviewthreads\";s:1:\"1\";s:15:\"canviewprofiles\";s:1:\"1\";s:16:\"candlattachments\";s:1:\"1\";s:18:\"canviewboardclosed\";s:1:\"1\";s:14:\"canpostthreads\";s:1:\"1\";s:13:\"canpostreplys\";s:1:\"1\";s:18:\"canpostattachments\";s:1:\"1\";s:14:\"canratethreads\";s:1:\"1\";s:8:\"modposts\";s:1:\"0\";s:10:\"modthreads\";s:1:\"0\";s:14:\"mod_edit_posts\";s:1:\"0\";s:14:\"modattachments\";s:1:\"0\";s:12:\"caneditposts\";s:1:\"1\";s:14:\"candeleteposts\";s:1:\"1\";s:16:\"candeletethreads\";s:1:\"1\";s:18:\"caneditattachments\";s:1:\"1\";s:21:\"canviewdeletionnotice\";s:1:\"1\";s:12:\"canpostpolls\";s:1:\"1\";s:12:\"canvotepolls\";s:1:\"1\";s:12:\"canundovotes\";s:1:\"0\";s:9:\"canusepms\";s:1:\"1\";s:10:\"cansendpms\";s:1:\"1\";s:11:\"cantrackpms\";s:1:\"1\";s:17:\"candenypmreceipts\";s:1:\"1\";s:7:\"pmquota\";s:3:\"100\";s:15:\"maxpmrecipients\";s:1:\"5\";s:12:\"cansendemail\";s:1:\"1\";s:20:\"cansendemailoverride\";s:1:\"0\";s:9:\"maxemails\";s:1:\"4\";s:14:\"emailfloodtime\";s:1:\"5\";s:17:\"canviewmemberlist\";s:1:\"1\";s:15:\"canviewcalendar\";s:1:\"1\";s:12:\"canaddevents\";s:1:\"1\";s:17:\"canbypasseventmod\";s:1:\"0\";s:17:\"canmoderateevents\";s:1:\"0\";s:13:\"canviewonline\";s:1:\"1\";s:15:\"canviewwolinvis\";s:1:\"0\";s:16:\"canviewonlineips\";s:1:\"0\";s:5:\"cancp\";s:1:\"0\";s:10:\"issupermod\";s:1:\"0\";s:9:\"cansearch\";s:1:\"1\";s:9:\"canusercp\";s:1:\"1\";s:16:\"canuploadavatars\";s:1:\"1\";s:14:\"canratemembers\";s:1:\"1\";s:13:\"canchangename\";s:1:\"0\";s:13:\"canbereported\";s:1:\"0\";s:14:\"canbeinvisible\";s:1:\"1\";s:16:\"canchangewebsite\";s:1:\"1\";s:13:\"showforumteam\";s:1:\"0\";s:19:\"usereputationsystem\";s:1:\"1\";s:18:\"cangivereputations\";s:1:\"1\";s:20:\"candeletereputations\";s:1:\"1\";s:15:\"reputationpower\";s:1:\"1\";s:17:\"maxreputationsday\";s:1:\"5\";s:21:\"maxreputationsperuser\";s:1:\"0\";s:23:\"maxreputationsperthread\";s:1:\"0\";s:15:\"candisplaygroup\";s:1:\"0\";s:11:\"attachquota\";s:4:\"5000\";s:14:\"cancustomtitle\";s:1:\"0\";s:12:\"canwarnusers\";s:1:\"0\";s:18:\"canreceivewarnings\";s:1:\"1\";s:14:\"maxwarningsday\";s:1:\"0\";s:8:\"canmodcp\";s:1:\"0\";s:18:\"showinbirthdaylist\";s:1:\"0\";s:13:\"canoverridepm\";s:1:\"0\";s:9:\"canusesig\";s:1:\"0\";s:15:\"canusesigxposts\";s:1:\"0\";s:11:\"signofollow\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:8:\"maxposts\";s:1:\"0\";s:14:\"showmemberlist\";s:1:\"1\";s:17:\"canmanageannounce\";s:1:\"0\";s:17:\"canmanagemodqueue\";s:1:\"0\";s:24:\"canmanagereportedcontent\";s:1:\"0\";s:14:\"canviewmodlogs\";s:1:\"0\";s:15:\"caneditprofiles\";s:1:\"0\";s:11:\"canbanusers\";s:1:\"0\";s:15:\"canviewwarnlogs\";s:1:\"0\";s:14:\"canuseipsearch\";s:1:\"0\";}i:15;a:91:{s:3:\"gid\";s:2:\"15\";s:4:\"type\";s:1:\"2\";s:5:\"title\";s:7:\"Grupa 7\";s:11:\"description\";s:18:\"Czerwony kryształ\";s:9:\"namestyle\";s:84:\"<span class=\"username\" style=\"color: var(--ruby)\"><strong>{username}</strong></span>\";s:9:\"usertitle\";s:0:\"\";s:5:\"stars\";s:1:\"0\";s:9:\"starimage\";s:15:\"images/star.png\";s:5:\"image\";s:0:\"\";s:9:\"disporder\";s:1:\"0\";s:13:\"isbannedgroup\";s:1:\"0\";s:7:\"canview\";s:1:\"1\";s:14:\"canviewthreads\";s:1:\"1\";s:15:\"canviewprofiles\";s:1:\"1\";s:16:\"candlattachments\";s:1:\"1\";s:18:\"canviewboardclosed\";s:1:\"1\";s:14:\"canpostthreads\";s:1:\"1\";s:13:\"canpostreplys\";s:1:\"1\";s:18:\"canpostattachments\";s:1:\"1\";s:14:\"canratethreads\";s:1:\"1\";s:8:\"modposts\";s:1:\"0\";s:10:\"modthreads\";s:1:\"0\";s:14:\"mod_edit_posts\";s:1:\"0\";s:14:\"modattachments\";s:1:\"0\";s:12:\"caneditposts\";s:1:\"1\";s:14:\"candeleteposts\";s:1:\"1\";s:16:\"candeletethreads\";s:1:\"1\";s:18:\"caneditattachments\";s:1:\"1\";s:21:\"canviewdeletionnotice\";s:1:\"1\";s:12:\"canpostpolls\";s:1:\"1\";s:12:\"canvotepolls\";s:1:\"1\";s:12:\"canundovotes\";s:1:\"0\";s:9:\"canusepms\";s:1:\"1\";s:10:\"cansendpms\";s:1:\"1\";s:11:\"cantrackpms\";s:1:\"1\";s:17:\"candenypmreceipts\";s:1:\"1\";s:7:\"pmquota\";s:3:\"100\";s:15:\"maxpmrecipients\";s:1:\"5\";s:12:\"cansendemail\";s:1:\"1\";s:20:\"cansendemailoverride\";s:1:\"0\";s:9:\"maxemails\";s:1:\"4\";s:14:\"emailfloodtime\";s:1:\"5\";s:17:\"canviewmemberlist\";s:1:\"1\";s:15:\"canviewcalendar\";s:1:\"1\";s:12:\"canaddevents\";s:1:\"1\";s:17:\"canbypasseventmod\";s:1:\"0\";s:17:\"canmoderateevents\";s:1:\"0\";s:13:\"canviewonline\";s:1:\"1\";s:15:\"canviewwolinvis\";s:1:\"0\";s:16:\"canviewonlineips\";s:1:\"0\";s:5:\"cancp\";s:1:\"0\";s:10:\"issupermod\";s:1:\"0\";s:9:\"cansearch\";s:1:\"1\";s:9:\"canusercp\";s:1:\"1\";s:16:\"canuploadavatars\";s:1:\"1\";s:14:\"canratemembers\";s:1:\"1\";s:13:\"canchangename\";s:1:\"0\";s:13:\"canbereported\";s:1:\"0\";s:14:\"canbeinvisible\";s:1:\"1\";s:16:\"canchangewebsite\";s:1:\"1\";s:13:\"showforumteam\";s:1:\"0\";s:19:\"usereputationsystem\";s:1:\"1\";s:18:\"cangivereputations\";s:1:\"1\";s:20:\"candeletereputations\";s:1:\"1\";s:15:\"reputationpower\";s:1:\"1\";s:17:\"maxreputationsday\";s:1:\"5\";s:21:\"maxreputationsperuser\";s:1:\"0\";s:23:\"maxreputationsperthread\";s:1:\"0\";s:15:\"candisplaygroup\";s:1:\"0\";s:11:\"attachquota\";s:4:\"5000\";s:14:\"cancustomtitle\";s:1:\"0\";s:12:\"canwarnusers\";s:1:\"0\";s:18:\"canreceivewarnings\";s:1:\"1\";s:14:\"maxwarningsday\";s:1:\"0\";s:8:\"canmodcp\";s:1:\"0\";s:18:\"showinbirthdaylist\";s:1:\"0\";s:13:\"canoverridepm\";s:1:\"0\";s:9:\"canusesig\";s:1:\"0\";s:15:\"canusesigxposts\";s:1:\"0\";s:11:\"signofollow\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:8:\"maxposts\";s:1:\"0\";s:14:\"showmemberlist\";s:1:\"1\";s:17:\"canmanageannounce\";s:1:\"0\";s:17:\"canmanagemodqueue\";s:1:\"0\";s:24:\"canmanagereportedcontent\";s:1:\"0\";s:14:\"canviewmodlogs\";s:1:\"0\";s:15:\"caneditprofiles\";s:1:\"0\";s:11:\"canbanusers\";s:1:\"0\";s:15:\"canviewwarnlogs\";s:1:\"0\";s:14:\"canuseipsearch\";s:1:\"0\";}i:16;a:91:{s:3:\"gid\";s:2:\"16\";s:4:\"type\";s:1:\"2\";s:5:\"title\";s:7:\"Grupa 8\";s:11:\"description\";s:12:\"Inni - brąz\";s:9:\"namestyle\";s:85:\"<span class=\"username\" style=\"color: var(--amber)\"><strong>{username}</strong></span>\";s:9:\"usertitle\";s:0:\"\";s:5:\"stars\";s:1:\"0\";s:9:\"starimage\";s:15:\"images/star.png\";s:5:\"image\";s:0:\"\";s:9:\"disporder\";s:1:\"0\";s:13:\"isbannedgroup\";s:1:\"0\";s:7:\"canview\";s:1:\"1\";s:14:\"canviewthreads\";s:1:\"1\";s:15:\"canviewprofiles\";s:1:\"1\";s:16:\"candlattachments\";s:1:\"1\";s:18:\"canviewboardclosed\";s:1:\"1\";s:14:\"canpostthreads\";s:1:\"1\";s:13:\"canpostreplys\";s:1:\"1\";s:18:\"canpostattachments\";s:1:\"1\";s:14:\"canratethreads\";s:1:\"1\";s:8:\"modposts\";s:1:\"0\";s:10:\"modthreads\";s:1:\"0\";s:14:\"mod_edit_posts\";s:1:\"0\";s:14:\"modattachments\";s:1:\"0\";s:12:\"caneditposts\";s:1:\"1\";s:14:\"candeleteposts\";s:1:\"1\";s:16:\"candeletethreads\";s:1:\"1\";s:18:\"caneditattachments\";s:1:\"1\";s:21:\"canviewdeletionnotice\";s:1:\"1\";s:12:\"canpostpolls\";s:1:\"1\";s:12:\"canvotepolls\";s:1:\"1\";s:12:\"canundovotes\";s:1:\"0\";s:9:\"canusepms\";s:1:\"1\";s:10:\"cansendpms\";s:1:\"1\";s:11:\"cantrackpms\";s:1:\"1\";s:17:\"candenypmreceipts\";s:1:\"1\";s:7:\"pmquota\";s:3:\"100\";s:15:\"maxpmrecipients\";s:1:\"5\";s:12:\"cansendemail\";s:1:\"1\";s:20:\"cansendemailoverride\";s:1:\"0\";s:9:\"maxemails\";s:1:\"4\";s:14:\"emailfloodtime\";s:1:\"5\";s:17:\"canviewmemberlist\";s:1:\"1\";s:15:\"canviewcalendar\";s:1:\"1\";s:12:\"canaddevents\";s:1:\"1\";s:17:\"canbypasseventmod\";s:1:\"0\";s:17:\"canmoderateevents\";s:1:\"0\";s:13:\"canviewonline\";s:1:\"1\";s:15:\"canviewwolinvis\";s:1:\"0\";s:16:\"canviewonlineips\";s:1:\"0\";s:5:\"cancp\";s:1:\"0\";s:10:\"issupermod\";s:1:\"0\";s:9:\"cansearch\";s:1:\"1\";s:9:\"canusercp\";s:1:\"1\";s:16:\"canuploadavatars\";s:1:\"1\";s:14:\"canratemembers\";s:1:\"1\";s:13:\"canchangename\";s:1:\"0\";s:13:\"canbereported\";s:1:\"0\";s:14:\"canbeinvisible\";s:1:\"1\";s:16:\"canchangewebsite\";s:1:\"1\";s:13:\"showforumteam\";s:1:\"0\";s:19:\"usereputationsystem\";s:1:\"1\";s:18:\"cangivereputations\";s:1:\"1\";s:20:\"candeletereputations\";s:1:\"1\";s:15:\"reputationpower\";s:1:\"1\";s:17:\"maxreputationsday\";s:1:\"5\";s:21:\"maxreputationsperuser\";s:1:\"0\";s:23:\"maxreputationsperthread\";s:1:\"0\";s:15:\"candisplaygroup\";s:1:\"0\";s:11:\"attachquota\";s:4:\"5000\";s:14:\"cancustomtitle\";s:1:\"0\";s:12:\"canwarnusers\";s:1:\"0\";s:18:\"canreceivewarnings\";s:1:\"1\";s:14:\"maxwarningsday\";s:1:\"0\";s:8:\"canmodcp\";s:1:\"0\";s:18:\"showinbirthdaylist\";s:1:\"0\";s:13:\"canoverridepm\";s:1:\"0\";s:9:\"canusesig\";s:1:\"0\";s:15:\"canusesigxposts\";s:1:\"0\";s:11:\"signofollow\";s:1:\"0\";s:13:\"edittimelimit\";s:1:\"0\";s:8:\"maxposts\";s:1:\"0\";s:14:\"showmemberlist\";s:1:\"1\";s:17:\"canmanageannounce\";s:1:\"0\";s:17:\"canmanagemodqueue\";s:1:\"0\";s:24:\"canmanagereportedcontent\";s:1:\"0\";s:14:\"canviewmodlogs\";s:1:\"0\";s:15:\"caneditprofiles\";s:1:\"0\";s:11:\"canbanusers\";s:1:\"0\";s:15:\"canviewwarnlogs\";s:1:\"0\";s:14:\"canuseipsearch\";s:1:\"0\";}}');
INSERT INTO `mybb_datacache` (`title`, `cache`) VALUES
('stats', 'a:9:{s:10:\"numthreads\";i:7;s:20:\"numunapprovedthreads\";s:1:\"0\";s:8:\"numposts\";i:11;s:18:\"numunapprovedposts\";s:1:\"0\";s:8:\"numusers\";i:2;s:15:\"numdeletedposts\";i:0;s:17:\"numdeletedthreads\";s:1:\"0\";s:7:\"lastuid\";s:1:\"3\";s:12:\"lastusername\";s:4:\"User\";}'),
('statistics', 'a:4:{s:4:\"time\";i:1719340827;s:12:\"top_referrer\";a:0:{}s:10:\"top_poster\";a:0:{}s:7:\"posters\";s:1:\"0\";}'),
('forums', 'a:10:{i:1;a:30:{s:3:\"fid\";s:1:\"1\";s:4:\"name\";s:12:\"Wprowadzenie\";s:11:\"description\";s:0:\"\";s:6:\"linkto\";s:0:\"\";s:4:\"type\";s:1:\"c\";s:3:\"pid\";s:1:\"0\";s:10:\"parentlist\";s:1:\"1\";s:9:\"disporder\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:4:\"open\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"1\";s:11:\"allowmycode\";s:1:\"1\";s:12:\"allowsmilies\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowvideocode\";s:1:\"1\";s:11:\"allowpicons\";s:1:\"1\";s:13:\"allowtratings\";s:1:\"1\";s:13:\"usepostcounts\";s:1:\"1\";s:15:\"usethreadcounts\";s:1:\"1\";s:13:\"requireprefix\";s:1:\"0\";s:8:\"password\";s:0:\"\";s:10:\"showinjump\";s:1:\"1\";s:5:\"style\";s:1:\"0\";s:13:\"overridestyle\";s:1:\"0\";s:9:\"rulestype\";s:1:\"0\";s:10:\"rulestitle\";s:0:\"\";s:5:\"rules\";s:0:\"\";s:14:\"defaultdatecut\";s:1:\"0\";s:13:\"defaultsortby\";s:0:\"\";s:16:\"defaultsortorder\";s:0:\"\";}i:6;a:30:{s:3:\"fid\";s:1:\"6\";s:4:\"name\";s:9:\"Rozgrywka\";s:11:\"description\";s:0:\"\";s:6:\"linkto\";s:0:\"\";s:4:\"type\";s:1:\"c\";s:3:\"pid\";s:1:\"0\";s:10:\"parentlist\";s:1:\"6\";s:9:\"disporder\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:4:\"open\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"1\";s:11:\"allowmycode\";s:1:\"1\";s:12:\"allowsmilies\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowvideocode\";s:1:\"1\";s:11:\"allowpicons\";s:1:\"1\";s:13:\"allowtratings\";s:1:\"1\";s:13:\"usepostcounts\";s:1:\"1\";s:15:\"usethreadcounts\";s:1:\"1\";s:13:\"requireprefix\";s:1:\"0\";s:8:\"password\";s:0:\"\";s:10:\"showinjump\";s:1:\"1\";s:5:\"style\";s:1:\"0\";s:13:\"overridestyle\";s:1:\"0\";s:9:\"rulestype\";s:1:\"0\";s:10:\"rulestitle\";s:0:\"\";s:5:\"rules\";s:0:\"\";s:14:\"defaultdatecut\";s:1:\"0\";s:13:\"defaultsortby\";s:0:\"\";s:16:\"defaultsortorder\";s:0:\"\";}i:8;a:30:{s:3:\"fid\";s:1:\"8\";s:4:\"name\";s:9:\"Poza grą\";s:11:\"description\";s:0:\"\";s:6:\"linkto\";s:0:\"\";s:4:\"type\";s:1:\"c\";s:3:\"pid\";s:1:\"0\";s:10:\"parentlist\";s:1:\"8\";s:9:\"disporder\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:4:\"open\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"1\";s:11:\"allowmycode\";s:1:\"1\";s:12:\"allowsmilies\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowvideocode\";s:1:\"1\";s:11:\"allowpicons\";s:1:\"1\";s:13:\"allowtratings\";s:1:\"1\";s:13:\"usepostcounts\";s:1:\"1\";s:15:\"usethreadcounts\";s:1:\"1\";s:13:\"requireprefix\";s:1:\"0\";s:8:\"password\";s:0:\"\";s:10:\"showinjump\";s:1:\"1\";s:5:\"style\";s:1:\"0\";s:13:\"overridestyle\";s:1:\"0\";s:9:\"rulestype\";s:1:\"0\";s:10:\"rulestitle\";s:0:\"\";s:5:\"rules\";s:0:\"\";s:14:\"defaultdatecut\";s:1:\"0\";s:13:\"defaultsortby\";s:0:\"\";s:16:\"defaultsortorder\";s:0:\"\";}i:2;a:30:{s:3:\"fid\";s:1:\"2\";s:4:\"name\";s:8:\"My Forum\";s:11:\"description\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";s:6:\"linkto\";s:0:\"\";s:4:\"type\";s:1:\"f\";s:3:\"pid\";s:1:\"1\";s:10:\"parentlist\";s:3:\"1,2\";s:9:\"disporder\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:4:\"open\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"1\";s:11:\"allowmycode\";s:1:\"1\";s:12:\"allowsmilies\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowvideocode\";s:1:\"1\";s:11:\"allowpicons\";s:1:\"1\";s:13:\"allowtratings\";s:1:\"1\";s:13:\"usepostcounts\";s:1:\"1\";s:15:\"usethreadcounts\";s:1:\"1\";s:13:\"requireprefix\";s:1:\"0\";s:8:\"password\";s:0:\"\";s:10:\"showinjump\";s:1:\"1\";s:5:\"style\";s:1:\"0\";s:13:\"overridestyle\";s:1:\"0\";s:9:\"rulestype\";s:1:\"0\";s:10:\"rulestitle\";s:0:\"\";s:5:\"rules\";s:0:\"\";s:14:\"defaultdatecut\";s:1:\"0\";s:13:\"defaultsortby\";s:0:\"\";s:16:\"defaultsortorder\";s:0:\"\";}i:3;a:30:{s:3:\"fid\";s:1:\"3\";s:4:\"name\";s:37:\"Polskie znaki ą ę ć ś ł ó ż ź\";s:11:\"description\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";s:6:\"linkto\";s:0:\"\";s:4:\"type\";s:1:\"f\";s:3:\"pid\";s:1:\"1\";s:10:\"parentlist\";s:3:\"1,3\";s:9:\"disporder\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:4:\"open\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"1\";s:11:\"allowmycode\";s:1:\"1\";s:12:\"allowsmilies\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowvideocode\";s:1:\"1\";s:11:\"allowpicons\";s:1:\"1\";s:13:\"allowtratings\";s:1:\"1\";s:13:\"usepostcounts\";s:1:\"1\";s:15:\"usethreadcounts\";s:1:\"1\";s:13:\"requireprefix\";s:1:\"0\";s:8:\"password\";s:0:\"\";s:10:\"showinjump\";s:1:\"1\";s:5:\"style\";s:1:\"0\";s:13:\"overridestyle\";s:1:\"0\";s:9:\"rulestype\";s:1:\"0\";s:10:\"rulestitle\";s:0:\"\";s:5:\"rules\";s:0:\"\";s:14:\"defaultdatecut\";s:1:\"0\";s:13:\"defaultsortby\";s:0:\"\";s:16:\"defaultsortorder\";s:0:\"\";}i:4;a:30:{s:3:\"fid\";s:1:\"4\";s:4:\"name\";s:9:\"Poddział\";s:11:\"description\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";s:6:\"linkto\";s:0:\"\";s:4:\"type\";s:1:\"f\";s:3:\"pid\";s:1:\"2\";s:10:\"parentlist\";s:5:\"1,2,4\";s:9:\"disporder\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:4:\"open\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"1\";s:11:\"allowmycode\";s:1:\"1\";s:12:\"allowsmilies\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowvideocode\";s:1:\"1\";s:11:\"allowpicons\";s:1:\"1\";s:13:\"allowtratings\";s:1:\"1\";s:13:\"usepostcounts\";s:1:\"1\";s:15:\"usethreadcounts\";s:1:\"1\";s:13:\"requireprefix\";s:1:\"0\";s:8:\"password\";s:0:\"\";s:10:\"showinjump\";s:1:\"1\";s:5:\"style\";s:1:\"0\";s:13:\"overridestyle\";s:1:\"0\";s:9:\"rulestype\";s:1:\"0\";s:10:\"rulestitle\";s:0:\"\";s:5:\"rules\";s:0:\"\";s:14:\"defaultdatecut\";s:1:\"0\";s:13:\"defaultsortby\";s:0:\"\";s:16:\"defaultsortorder\";s:0:\"\";}i:5;a:30:{s:3:\"fid\";s:1:\"5\";s:4:\"name\";s:11:\"Poddział 2\";s:11:\"description\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";s:6:\"linkto\";s:0:\"\";s:4:\"type\";s:1:\"f\";s:3:\"pid\";s:1:\"2\";s:10:\"parentlist\";s:5:\"1,2,5\";s:9:\"disporder\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:4:\"open\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"1\";s:11:\"allowmycode\";s:1:\"1\";s:12:\"allowsmilies\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowvideocode\";s:1:\"1\";s:11:\"allowpicons\";s:1:\"1\";s:13:\"allowtratings\";s:1:\"1\";s:13:\"usepostcounts\";s:1:\"1\";s:15:\"usethreadcounts\";s:1:\"1\";s:13:\"requireprefix\";s:1:\"0\";s:8:\"password\";s:0:\"\";s:10:\"showinjump\";s:1:\"1\";s:5:\"style\";s:1:\"0\";s:13:\"overridestyle\";s:1:\"0\";s:9:\"rulestype\";s:1:\"0\";s:10:\"rulestitle\";s:0:\"\";s:5:\"rules\";s:0:\"\";s:14:\"defaultdatecut\";s:1:\"0\";s:13:\"defaultsortby\";s:0:\"\";s:16:\"defaultsortorder\";s:0:\"\";}i:7;a:30:{s:3:\"fid\";s:1:\"7\";s:4:\"name\";s:6:\"Tester\";s:11:\"description\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";s:6:\"linkto\";s:0:\"\";s:4:\"type\";s:1:\"f\";s:3:\"pid\";s:1:\"6\";s:10:\"parentlist\";s:3:\"6,7\";s:9:\"disporder\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:4:\"open\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"1\";s:11:\"allowmycode\";s:1:\"1\";s:12:\"allowsmilies\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowvideocode\";s:1:\"1\";s:11:\"allowpicons\";s:1:\"1\";s:13:\"allowtratings\";s:1:\"1\";s:13:\"usepostcounts\";s:1:\"1\";s:15:\"usethreadcounts\";s:1:\"1\";s:13:\"requireprefix\";s:1:\"0\";s:8:\"password\";s:0:\"\";s:10:\"showinjump\";s:1:\"1\";s:5:\"style\";s:1:\"0\";s:13:\"overridestyle\";s:1:\"0\";s:9:\"rulestype\";s:1:\"0\";s:10:\"rulestitle\";s:0:\"\";s:5:\"rules\";s:0:\"\";s:14:\"defaultdatecut\";s:1:\"0\";s:13:\"defaultsortby\";s:0:\"\";s:16:\"defaultsortorder\";s:0:\"\";}i:9;a:30:{s:3:\"fid\";s:1:\"9\";s:4:\"name\";s:7:\"Off-top\";s:11:\"description\";s:0:\"\";s:6:\"linkto\";s:0:\"\";s:4:\"type\";s:1:\"f\";s:3:\"pid\";s:1:\"8\";s:10:\"parentlist\";s:3:\"8,9\";s:9:\"disporder\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:4:\"open\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"1\";s:11:\"allowmycode\";s:1:\"1\";s:12:\"allowsmilies\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowvideocode\";s:1:\"1\";s:11:\"allowpicons\";s:1:\"1\";s:13:\"allowtratings\";s:1:\"1\";s:13:\"usepostcounts\";s:1:\"1\";s:15:\"usethreadcounts\";s:1:\"1\";s:13:\"requireprefix\";s:1:\"0\";s:8:\"password\";s:0:\"\";s:10:\"showinjump\";s:1:\"1\";s:5:\"style\";s:1:\"0\";s:13:\"overridestyle\";s:1:\"0\";s:9:\"rulestype\";s:1:\"0\";s:10:\"rulestitle\";s:0:\"\";s:5:\"rules\";s:0:\"\";s:14:\"defaultdatecut\";s:1:\"0\";s:13:\"defaultsortby\";s:0:\"\";s:16:\"defaultsortorder\";s:0:\"\";}i:10;a:30:{s:3:\"fid\";s:2:\"10\";s:4:\"name\";s:8:\"Archiwum\";s:11:\"description\";s:0:\"\";s:6:\"linkto\";s:0:\"\";s:4:\"type\";s:1:\"f\";s:3:\"pid\";s:1:\"8\";s:10:\"parentlist\";s:4:\"8,10\";s:9:\"disporder\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:4:\"open\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"1\";s:11:\"allowmycode\";s:1:\"1\";s:12:\"allowsmilies\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowvideocode\";s:1:\"1\";s:11:\"allowpicons\";s:1:\"1\";s:13:\"allowtratings\";s:1:\"1\";s:13:\"usepostcounts\";s:1:\"1\";s:15:\"usethreadcounts\";s:1:\"1\";s:13:\"requireprefix\";s:1:\"0\";s:8:\"password\";s:0:\"\";s:10:\"showinjump\";s:1:\"1\";s:5:\"style\";s:1:\"0\";s:13:\"overridestyle\";s:1:\"0\";s:9:\"rulestype\";s:1:\"0\";s:10:\"rulestitle\";s:0:\"\";s:5:\"rules\";s:0:\"\";s:14:\"defaultdatecut\";s:1:\"0\";s:13:\"defaultsortby\";s:0:\"\";s:16:\"defaultsortorder\";s:0:\"\";}}'),
('moderators', 'a:11:{i:0;i:0;i:1;a:0:{}i:2;a:0:{}i:4;a:0:{}i:5;a:0:{}i:3;a:0:{}i:6;a:0:{}i:7;a:0:{}i:8;a:0:{}i:9;a:0:{}i:10;a:0:{}}'),
('usertitles', 'a:5:{i:0;a:5:{s:4:\"utid\";s:1:\"5\";s:5:\"posts\";s:3:\"750\";s:5:\"title\";s:13:\"Posting Freak\";s:5:\"stars\";s:1:\"5\";s:9:\"starimage\";s:0:\"\";}i:1;a:5:{s:4:\"utid\";s:1:\"4\";s:5:\"posts\";s:3:\"250\";s:5:\"title\";s:13:\"Senior Member\";s:5:\"stars\";s:1:\"4\";s:9:\"starimage\";s:0:\"\";}i:2;a:5:{s:4:\"utid\";s:1:\"3\";s:5:\"posts\";s:2:\"50\";s:5:\"title\";s:6:\"Member\";s:5:\"stars\";s:1:\"3\";s:9:\"starimage\";s:0:\"\";}i:3;a:5:{s:4:\"utid\";s:1:\"2\";s:5:\"posts\";s:1:\"1\";s:5:\"title\";s:13:\"Junior Member\";s:5:\"stars\";s:1:\"2\";s:9:\"starimage\";s:0:\"\";}i:4;a:5:{s:4:\"utid\";s:1:\"1\";s:5:\"posts\";s:1:\"0\";s:5:\"title\";s:6:\"Newbie\";s:5:\"stars\";s:1:\"1\";s:9:\"starimage\";s:0:\"\";}}'),
('reportedcontent', 'a:3:{s:6:\"unread\";s:1:\"0\";s:5:\"total\";s:1:\"0\";s:12:\"lastdateline\";N;}'),
('awaitingactivation', 'a:2:{s:5:\"users\";i:0;s:4:\"time\";i:1722940153;}'),
('mycode', 'a:5:{i:0;a:2:{s:5:\"regex\";s:34:\"\\[spoiler=(.*?)\\](.*?)\\[/spoiler\\]\";s:11:\"replacement\";s:85:\"<div class=\"spoiler\">\r\n<button>$1</button><div class=\"spoiler_content\">$2</div></div>\";}i:1;a:2:{s:5:\"regex\";s:28:\"\\[spoiler\\](.*?)\\[/spoiler\\]\";s:11:\"replacement\";s:90:\"<div class=\"spoiler\">\r\n<button>Spoiler</button><div class=\"spoiler_content\">$1</div></div>\";}i:2;a:2:{s:5:\"regex\";s:9:\"\\[pusto\\]\";s:11:\"replacement\";s:6:\"&nbsp;\";}i:3;a:2:{s:5:\"regex\";s:13:\"\\[sygnatura\\]\";s:11:\"replacement\";s:256:\"[quote_color=transparent][urls_color=transparent][img_border_color=transparent][shadow_bg_color=trasnparent][shadow_bg_color=transparent][signature_bg_image=none][signature_box_shadow=none][signature_border=none][shadow_box_shadow=none][shadow_border=none]\";}i:4;a:2:{s:5:\"regex\";s:7:\"\\[syg\\]\";s:11:\"replacement\";s:232:\"[quote_color=transparent][img_border_color=transparent][shadow_bg_color=trasnparent][shadow_bg_color=transparent][signature_bg_image=none][signature_box_shadow=none][signature_border=none][shadow_box_shadow=none][shadow_border=none]\";}}'),
('profilefields', 'a:5:{i:0;a:20:{s:3:\"fid\";s:1:\"1\";s:4:\"name\";s:17:\"Obrazek sygnatury\";s:11:\"description\";s:98:\"Uzupełnij tylko, jeżeli chcesz skorzystać z odgórnie wygenerowanego kodu dla Twojej sygnatury.\";s:9:\"disporder\";s:1:\"1\";s:4:\"type\";s:4:\"text\";s:5:\"regex\";s:0:\"\";s:6:\"length\";s:1:\"0\";s:9:\"maxlength\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"registration\";s:1:\"0\";s:7:\"profile\";s:1:\"1\";s:7:\"postbit\";s:1:\"1\";s:10:\"viewableby\";s:2:\"-1\";s:10:\"editableby\";s:2:\"-1\";s:7:\"postnum\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"0\";s:11:\"allowmycode\";s:1:\"0\";s:12:\"allowsmilies\";s:1:\"0\";s:12:\"allowimgcode\";s:1:\"0\";s:14:\"allowvideocode\";s:1:\"0\";}i:1;a:20:{s:3:\"fid\";s:1:\"2\";s:4:\"name\";s:14:\"Korespondencja\";s:11:\"description\";s:22:\"Link do korespondencji\";s:9:\"disporder\";s:1:\"2\";s:4:\"type\";s:4:\"text\";s:5:\"regex\";s:0:\"\";s:6:\"length\";s:1:\"0\";s:9:\"maxlength\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"registration\";s:1:\"0\";s:7:\"profile\";s:1:\"1\";s:7:\"postbit\";s:1:\"1\";s:10:\"viewableby\";s:2:\"-1\";s:10:\"editableby\";s:5:\"3,4,6\";s:7:\"postnum\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"0\";s:11:\"allowmycode\";s:1:\"0\";s:12:\"allowsmilies\";s:1:\"0\";s:12:\"allowimgcode\";s:1:\"0\";s:14:\"allowvideocode\";s:1:\"0\";}i:2;a:20:{s:3:\"fid\";s:1:\"3\";s:4:\"name\";s:20:\"Miejsce zamieszkania\";s:11:\"description\";s:29:\"Link do miejsca zamieszkania.\";s:9:\"disporder\";s:1:\"3\";s:4:\"type\";s:4:\"text\";s:5:\"regex\";s:0:\"\";s:6:\"length\";s:1:\"0\";s:9:\"maxlength\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"registration\";s:1:\"0\";s:7:\"profile\";s:1:\"1\";s:7:\"postbit\";s:1:\"1\";s:10:\"viewableby\";s:2:\"-1\";s:10:\"editableby\";s:5:\"3,4,6\";s:7:\"postnum\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"0\";s:11:\"allowmycode\";s:1:\"0\";s:12:\"allowsmilies\";s:1:\"0\";s:12:\"allowimgcode\";s:1:\"0\";s:14:\"allowvideocode\";s:1:\"0\";}i:3;a:20:{s:3:\"fid\";s:1:\"4\";s:4:\"name\";s:24:\"Aktualizacje mechaniczne\";s:11:\"description\";s:45:\"Link do tematu z aktualizacjami mechanicznymi\";s:9:\"disporder\";s:1:\"4\";s:4:\"type\";s:4:\"text\";s:5:\"regex\";s:0:\"\";s:6:\"length\";s:1:\"0\";s:9:\"maxlength\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"registration\";s:1:\"0\";s:7:\"profile\";s:1:\"1\";s:7:\"postbit\";s:1:\"1\";s:10:\"viewableby\";s:2:\"-1\";s:10:\"editableby\";s:5:\"3,4,6\";s:7:\"postnum\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"0\";s:11:\"allowmycode\";s:1:\"0\";s:12:\"allowsmilies\";s:1:\"0\";s:12:\"allowimgcode\";s:1:\"0\";s:14:\"allowvideocode\";s:1:\"0\";}i:4;a:20:{s:3:\"fid\";s:1:\"5\";s:4:\"name\";s:9:\"Playlista\";s:11:\"description\";s:33:\"Link do playlisty bądź piosenki\";s:9:\"disporder\";s:1:\"5\";s:4:\"type\";s:4:\"text\";s:5:\"regex\";s:0:\"\";s:6:\"length\";s:1:\"0\";s:9:\"maxlength\";s:1:\"0\";s:8:\"required\";s:1:\"0\";s:12:\"registration\";s:1:\"0\";s:7:\"profile\";s:1:\"1\";s:7:\"postbit\";s:1:\"1\";s:10:\"viewableby\";s:2:\"-1\";s:10:\"editableby\";s:2:\"-1\";s:7:\"postnum\";s:1:\"0\";s:9:\"allowhtml\";s:1:\"0\";s:11:\"allowmycode\";s:1:\"0\";s:12:\"allowsmilies\";s:1:\"0\";s:12:\"allowimgcode\";s:1:\"0\";s:14:\"allowvideocode\";s:1:\"0\";}}'),
('posticons', 'a:9:{i:26;a:3:{s:3:\"iid\";s:2:\"26\";s:4:\"name\";s:7:\"Citrine\";s:4:\"path\";s:24:\"images/icons/citrine.png\";}i:21;a:3:{s:3:\"iid\";s:2:\"21\";s:4:\"name\";s:5:\"Heart\";s:4:\"path\";s:30:\"images/icons/crystal-heart.png\";}i:23;a:3:{s:3:\"iid\";s:2:\"23\";s:4:\"name\";s:12:\"Angel Quartz\";s:4:\"path\";s:29:\"images/icons/angel-quartz.png\";}i:29;a:3:{s:3:\"iid\";s:2:\"29\";s:4:\"name\";s:12:\"Smoky Quartz\";s:4:\"path\";s:29:\"images/icons/smoky-quartz.png\";}i:28;a:3:{s:3:\"iid\";s:2:\"28\";s:4:\"name\";s:11:\"Rose Quartz\";s:4:\"path\";s:28:\"images/icons/rose-quartz.png\";}i:27;a:3:{s:3:\"iid\";s:2:\"27\";s:4:\"name\";s:14:\"Rainbow Quartz\";s:4:\"path\";s:31:\"images/icons/rainbow-quartz.png\";}i:25;a:3:{s:3:\"iid\";s:2:\"25\";s:4:\"name\";s:9:\"Celestite\";s:4:\"path\";s:26:\"images/icons/celestite.png\";}i:24;a:3:{s:3:\"iid\";s:2:\"24\";s:4:\"name\";s:10:\"Aventurine\";s:4:\"path\";s:27:\"images/icons/aventurine.png\";}i:22;a:3:{s:3:\"iid\";s:2:\"22\";s:4:\"name\";s:8:\"Amethyst\";s:4:\"path\";s:25:\"images/icons/amethyst.png\";}}'),
('spiders', 'a:15:{i:7;a:4:{s:3:\"sid\";s:1:\"7\";s:4:\"name\";s:8:\"Facebook\";s:9:\"useragent\";s:19:\"facebookexternalhit\";s:9:\"usergroup\";s:1:\"0\";}i:13;a:4:{s:3:\"sid\";s:2:\"13\";s:4:\"name\";s:7:\"Pingdom\";s:9:\"useragent\";s:15:\"Pingdom.com_bot\";s:9:\"usergroup\";s:1:\"0\";}i:9;a:4:{s:3:\"sid\";s:1:\"9\";s:4:\"name\";s:16:\"Internet Archive\";s:9:\"useragent\";s:15:\"archive.org_bot\";s:9:\"usergroup\";s:1:\"0\";}i:15;a:4:{s:3:\"sid\";s:2:\"15\";s:4:\"name\";s:11:\"UptimeRobot\";s:9:\"useragent\";s:11:\"UptimeRobot\";s:9:\"usergroup\";s:1:\"0\";}i:14;a:4:{s:3:\"sid\";s:2:\"14\";s:4:\"name\";s:10:\"DuckDuckGo\";s:9:\"useragent\";s:11:\"DuckDuckBot\";s:9:\"usergroup\";s:1:\"0\";}i:3;a:4:{s:3:\"sid\";s:1:\"3\";s:4:\"name\";s:14:\"Alexa Internet\";s:9:\"useragent\";s:11:\"ia_archiver\";s:9:\"usergroup\";s:1:\"0\";}i:5;a:4:{s:3:\"sid\";s:1:\"5\";s:4:\"name\";s:5:\"Baidu\";s:9:\"useragent\";s:11:\"Baiduspider\";s:9:\"usergroup\";s:1:\"0\";}i:10;a:4:{s:3:\"sid\";s:2:\"10\";s:4:\"name\";s:7:\"Discord\";s:9:\"useragent\";s:10:\"Discordbot\";s:9:\"usergroup\";s:1:\"0\";}i:8;a:4:{s:3:\"sid\";s:1:\"8\";s:4:\"name\";s:7:\"Twitter\";s:9:\"useragent\";s:10:\"Twitterbot\";s:9:\"usergroup\";s:1:\"0\";}i:6;a:4:{s:3:\"sid\";s:1:\"6\";s:4:\"name\";s:6:\"Yandex\";s:9:\"useragent\";s:9:\"YandexBot\";s:9:\"usergroup\";s:1:\"0\";}i:12;a:4:{s:3:\"sid\";s:2:\"12\";s:4:\"name\";s:9:\"CheckHost\";s:9:\"useragent\";s:9:\"CheckHost\";s:9:\"usergroup\";s:1:\"0\";}i:1;a:4:{s:3:\"sid\";s:1:\"1\";s:4:\"name\";s:6:\"Google\";s:9:\"useragent\";s:9:\"Googlebot\";s:9:\"usergroup\";s:1:\"0\";}i:11;a:4:{s:3:\"sid\";s:2:\"11\";s:4:\"name\";s:8:\"Applebot\";s:9:\"useragent\";s:8:\"Applebot\";s:9:\"usergroup\";s:1:\"0\";}i:2;a:4:{s:3:\"sid\";s:1:\"2\";s:4:\"name\";s:4:\"Bing\";s:9:\"useragent\";s:7:\"bingbot\";s:9:\"usergroup\";s:1:\"0\";}i:4;a:4:{s:3:\"sid\";s:1:\"4\";s:4:\"name\";s:7:\"Ask.com\";s:9:\"useragent\";s:5:\"Teoma\";s:9:\"usergroup\";s:1:\"0\";}}'),
('bannedips', 'a:0:{}'),
('bannedemails', 'a:0:{}'),
('birthdays', 'a:0:{}'),
('groupleaders', 'a:0:{}'),
('threadprefixes', 'a:0:{}'),
('forumsdisplay', 'a:0:{}'),
('plugins', 'a:1:{s:6:\"active\";a:5:{s:8:\"avatarep\";s:8:\"avatarep\";s:5:\"tpref\";s:5:\"tpref\";s:16:\"defaultavatarfix\";s:16:\"defaultavatarfix\";s:11:\"hidecontent\";s:11:\"hidecontent\";s:6:\"phptpl\";s:6:\"phptpl\";}}'),
('mostonline', 'a:2:{s:8:\"numusers\";i:9;s:4:\"time\";i:1719475489;}'),
('internal_settings', 'a:1:{s:14:\"encryption_key\";s:32:\"nT6BEcTRNrZVuDCHrtnHdxaYfD6pbfy9\";}'),
('avatarep_threads_cache', 'a:1:{i:7;a:4:{s:4:\"date\";s:10:\"1721910238\";s:7:\"avatars\";s:94:\"{\"1\":\"images\\/default_avatar.png\",\"2\":\".\\/uploads\\/avatars\\/avatar_2.png?dateline=1720806788\"}\";s:9:\"usernames\";s:53:\"{\"1\":\"Administrator\",\"2\":\"Tajemnicza Zielona Fasola\"}\";s:12:\"participants\";i:2;}}'),
('most_replied_threads', 'a:7:{i:0;a:5:{s:3:\"tid\";s:1:\"7\";s:7:\"subject\";s:7:\"Ankieta\";s:7:\"replies\";s:1:\"4\";s:3:\"fid\";s:1:\"2\";s:3:\"uid\";s:1:\"1\";}i:1;a:5:{s:3:\"tid\";s:1:\"4\";s:7:\"subject\";s:27:\"to będzie przypięty temat\";s:7:\"replies\";s:1:\"1\";s:3:\"fid\";s:1:\"2\";s:3:\"uid\";s:1:\"1\";}i:2;a:5:{s:3:\"tid\";s:1:\"6\";s:7:\"subject\";s:20:\"Taki tam nowy wątek\";s:7:\"replies\";s:1:\"1\";s:3:\"fid\";s:1:\"2\";s:3:\"uid\";s:1:\"1\";}i:3;a:5:{s:3:\"tid\";s:1:\"1\";s:7:\"subject\";s:6:\"Tytuł\";s:7:\"replies\";s:1:\"0\";s:3:\"fid\";s:1:\"3\";s:3:\"uid\";s:1:\"1\";}i:4;a:5:{s:3:\"tid\";s:1:\"2\";s:7:\"subject\";s:44:\"Bardzo długi tytuł hehe hehe hehe hheheheh\";s:7:\"replies\";s:1:\"0\";s:3:\"fid\";s:1:\"2\";s:3:\"uid\";s:1:\"1\";}i:5;a:5:{s:3:\"tid\";s:1:\"3\";s:7:\"subject\";s:17:\"Jakiś tam tytuł\";s:7:\"replies\";s:1:\"0\";s:3:\"fid\";s:1:\"4\";s:3:\"uid\";s:1:\"1\";}i:6;a:5:{s:3:\"tid\";s:1:\"5\";s:7:\"subject\";s:17:\"Jakiś tester elo\";s:7:\"replies\";s:1:\"0\";s:3:\"fid\";s:1:\"3\";s:3:\"uid\";s:1:\"1\";}}'),
('most_viewed_threads', 'a:7:{i:0;a:5:{s:3:\"tid\";s:1:\"7\";s:7:\"subject\";s:7:\"Ankieta\";s:5:\"views\";s:4:\"1948\";s:3:\"fid\";s:1:\"2\";s:3:\"uid\";s:1:\"1\";}i:1;a:5:{s:3:\"tid\";s:1:\"6\";s:7:\"subject\";s:20:\"Taki tam nowy wątek\";s:5:\"views\";s:2:\"79\";s:3:\"fid\";s:1:\"2\";s:3:\"uid\";s:1:\"1\";}i:2;a:5:{s:3:\"tid\";s:1:\"4\";s:7:\"subject\";s:27:\"to będzie przypięty temat\";s:5:\"views\";s:2:\"50\";s:3:\"fid\";s:1:\"2\";s:3:\"uid\";s:1:\"1\";}i:3;a:5:{s:3:\"tid\";s:1:\"2\";s:7:\"subject\";s:44:\"Bardzo długi tytuł hehe hehe hehe hheheheh\";s:5:\"views\";s:2:\"16\";s:3:\"fid\";s:1:\"2\";s:3:\"uid\";s:1:\"1\";}i:4;a:5:{s:3:\"tid\";s:1:\"1\";s:7:\"subject\";s:6:\"Tytuł\";s:5:\"views\";s:2:\"14\";s:3:\"fid\";s:1:\"3\";s:3:\"uid\";s:1:\"1\";}i:5;a:5:{s:3:\"tid\";s:1:\"3\";s:7:\"subject\";s:17:\"Jakiś tam tytuł\";s:5:\"views\";s:1:\"6\";s:3:\"fid\";s:1:\"4\";s:3:\"uid\";s:1:\"1\";}i:6;a:5:{s:3:\"tid\";s:1:\"5\";s:7:\"subject\";s:17:\"Jakiś tester elo\";s:5:\"views\";s:1:\"4\";s:3:\"fid\";s:1:\"3\";s:3:\"uid\";s:1:\"1\";}}'),
('forumpermissions', 'a:1:{i:0;i:0;}'),
('reportreasons', 'a:3:{s:4:\"post\";a:5:{i:0;a:3:{s:3:\"rid\";s:1:\"2\";s:5:\"title\";s:26:\"<lang:report_reason_rules>\";s:5:\"extra\";s:1:\"0\";}i:1;a:3:{s:3:\"rid\";s:1:\"3\";s:5:\"title\";s:24:\"<lang:report_reason_bad>\";s:5:\"extra\";s:1:\"0\";}i:2;a:3:{s:3:\"rid\";s:1:\"4\";s:5:\"title\";s:25:\"<lang:report_reason_spam>\";s:5:\"extra\";s:1:\"0\";}i:3;a:3:{s:3:\"rid\";s:1:\"5\";s:5:\"title\";s:26:\"<lang:report_reason_wrong>\";s:5:\"extra\";s:1:\"0\";}i:4;a:3:{s:3:\"rid\";s:1:\"1\";s:5:\"title\";s:26:\"<lang:report_reason_other>\";s:5:\"extra\";s:1:\"1\";}}s:7:\"profile\";a:4:{i:0;a:3:{s:3:\"rid\";s:1:\"2\";s:5:\"title\";s:26:\"<lang:report_reason_rules>\";s:5:\"extra\";s:1:\"0\";}i:1;a:3:{s:3:\"rid\";s:1:\"3\";s:5:\"title\";s:24:\"<lang:report_reason_bad>\";s:5:\"extra\";s:1:\"0\";}i:2;a:3:{s:3:\"rid\";s:1:\"4\";s:5:\"title\";s:25:\"<lang:report_reason_spam>\";s:5:\"extra\";s:1:\"0\";}i:3;a:3:{s:3:\"rid\";s:1:\"1\";s:5:\"title\";s:26:\"<lang:report_reason_other>\";s:5:\"extra\";s:1:\"1\";}}s:10:\"reputation\";a:4:{i:0;a:3:{s:3:\"rid\";s:1:\"2\";s:5:\"title\";s:26:\"<lang:report_reason_rules>\";s:5:\"extra\";s:1:\"0\";}i:1;a:3:{s:3:\"rid\";s:1:\"3\";s:5:\"title\";s:24:\"<lang:report_reason_bad>\";s:5:\"extra\";s:1:\"0\";}i:2;a:3:{s:3:\"rid\";s:1:\"4\";s:5:\"title\";s:25:\"<lang:report_reason_spam>\";s:5:\"extra\";s:1:\"0\";}i:3;a:3:{s:3:\"rid\";s:1:\"1\";s:5:\"title\";s:26:\"<lang:report_reason_other>\";s:5:\"extra\";s:1:\"1\";}}}'),
('version_history', 'a:59:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";i:6;s:1:\"7\";i:7;s:1:\"8\";i:8;s:1:\"9\";i:9;s:2:\"10\";i:10;s:2:\"11\";i:11;s:2:\"12\";i:12;s:2:\"13\";i:13;s:2:\"14\";i:14;s:2:\"15\";i:15;s:2:\"16\";i:16;s:2:\"17\";i:17;s:2:\"18\";i:18;s:2:\"19\";i:19;s:2:\"20\";i:20;s:2:\"21\";i:21;s:2:\"22\";i:22;s:2:\"23\";i:23;s:2:\"24\";i:24;s:2:\"25\";i:25;s:2:\"26\";i:26;s:2:\"27\";i:27;s:2:\"28\";i:28;s:2:\"29\";i:29;s:2:\"30\";i:30;s:2:\"31\";i:31;s:2:\"32\";i:32;s:2:\"33\";i:33;s:2:\"34\";i:34;s:2:\"35\";i:35;s:2:\"36\";i:36;s:2:\"37\";i:37;s:2:\"38\";i:38;s:2:\"39\";i:39;s:2:\"40\";i:40;s:2:\"41\";i:41;s:2:\"42\";i:42;s:2:\"43\";i:43;s:2:\"44\";i:44;s:2:\"45\";i:45;s:2:\"46\";i:46;s:2:\"47\";i:47;s:2:\"48\";i:48;s:2:\"49\";i:49;s:2:\"50\";i:50;s:2:\"51\";i:51;s:2:\"52\";i:52;s:2:\"53\";i:53;s:2:\"54\";i:54;s:2:\"55\";i:55;s:2:\"56\";i:56;s:2:\"57\";i:57;s:2:\"58\";i:58;s:2:\"59\";}'),
('update_check', 'a:2:{s:10:\"last_check\";i:1722940132;s:4:\"news\";a:3:{i:0;a:5:{s:5:\"title\";s:26:\"Exponential Project Update\";s:11:\"description\";s:0:\"\";s:4:\"link\";s:60:\"https://blog.mybb.com/2024/07/03/exponential-project-update/\";s:6:\"author\";s:9:\"MyBB Team\";s:8:\"dateline\";i:1720032990;}i:1;a:5:{s:5:\"title\";s:55:\"MyBB 1.8.38 Released — Security & Maintenance Release\";s:11:\"description\";s:426:\"MyBB 1.8.38 is now available, and is a security &#38; maintenance release. Administrators of installed boards should update the existing configuration (inc/config.php) to include all addresses blocked by default in Disallowed Remote Addresses. 2 security vulnerabilities addressed: Low risk: Incomplete disallowed remote addresses list SSRF (advisory) &#8212; reported by shin24 Low risk: Backups directory .htaccess [&#8230;]\";s:4:\"link\";s:83:\"https://blog.mybb.com/2024/04/30/mybb-1-8-38-released-security-maintenance-release/\";s:6:\"author\";s:9:\"MyBB Team\";s:8:\"dateline\";i:1714493086;}i:2;a:5:{s:5:\"title\";s:55:\"MyBB 1.8.37 Released — Security & Maintenance Release\";s:11:\"description\";s:411:\"MyBB 1.8.37 is now available, and is a security &#38; maintenance release. This version includes improvements for compatibility with mailing configurations and recent PHP versions. 2 security vulnerabilities addressed: Medium risk: Visual editor size code persistent XSS (advisory) &#8212; reported by Paulos Yibelo (Octagon Networks) Low risk: ACP Themes persistent XSS (advisory) &#8212; reported by [&#8230;]\";s:4:\"link\";s:83:\"https://blog.mybb.com/2023/11/04/mybb-1-8-37-released-security-maintenance-release/\";s:6:\"author\";s:9:\"MyBB Team\";s:8:\"dateline\";i:1699118910;}}}'),
('tasks', 'a:1:{s:7:\"nextrun\";s:10:\"1722940260\";}'),
('mailqueue', 'a:3:{s:10:\"queue_size\";s:1:\"0\";s:6:\"locked\";i:0;s:8:\"last_run\";i:1722872346;}');

-- --------------------------------------------------------

--
-- Table structure for table `mybb_delayedmoderation`
--

CREATE TABLE `mybb_delayedmoderation` (
  `did` int(10) UNSIGNED NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `delaydateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `tids` text NOT NULL,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `inputs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_events`
--

CREATE TABLE `mybb_events` (
  `eid` int(10) UNSIGNED NOT NULL,
  `cid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(120) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 0,
  `private` tinyint(1) NOT NULL DEFAULT 0,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `timezone` varchar(5) NOT NULL DEFAULT '',
  `ignoretimezone` tinyint(1) NOT NULL DEFAULT 0,
  `usingtime` tinyint(1) NOT NULL DEFAULT 0,
  `repeats` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_forumpermissions`
--

CREATE TABLE `mybb_forumpermissions` (
  `pid` int(10) UNSIGNED NOT NULL,
  `fid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `canview` tinyint(1) NOT NULL DEFAULT 0,
  `canviewthreads` tinyint(1) NOT NULL DEFAULT 0,
  `canonlyviewownthreads` tinyint(1) NOT NULL DEFAULT 0,
  `candlattachments` tinyint(1) NOT NULL DEFAULT 0,
  `canpostthreads` tinyint(1) NOT NULL DEFAULT 0,
  `canpostreplys` tinyint(1) NOT NULL DEFAULT 0,
  `canonlyreplyownthreads` tinyint(1) NOT NULL DEFAULT 0,
  `canpostattachments` tinyint(1) NOT NULL DEFAULT 0,
  `canratethreads` tinyint(1) NOT NULL DEFAULT 0,
  `caneditposts` tinyint(1) NOT NULL DEFAULT 0,
  `candeleteposts` tinyint(1) NOT NULL DEFAULT 0,
  `candeletethreads` tinyint(1) NOT NULL DEFAULT 0,
  `caneditattachments` tinyint(1) NOT NULL DEFAULT 0,
  `canviewdeletionnotice` tinyint(1) NOT NULL DEFAULT 0,
  `modposts` tinyint(1) NOT NULL DEFAULT 0,
  `modthreads` tinyint(1) NOT NULL DEFAULT 0,
  `mod_edit_posts` tinyint(1) NOT NULL DEFAULT 0,
  `modattachments` tinyint(1) NOT NULL DEFAULT 0,
  `canpostpolls` tinyint(1) NOT NULL DEFAULT 0,
  `canvotepolls` tinyint(1) NOT NULL DEFAULT 0,
  `cansearch` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_forums`
--

CREATE TABLE `mybb_forums` (
  `fid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `linkto` varchar(180) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT '',
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `parentlist` text NOT NULL,
  `disporder` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `open` tinyint(1) NOT NULL DEFAULT 0,
  `threads` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `posts` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastpost` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastposter` varchar(120) NOT NULL DEFAULT '',
  `lastposteruid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastposttid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastpostsubject` varchar(120) NOT NULL DEFAULT '',
  `allowhtml` tinyint(1) NOT NULL DEFAULT 0,
  `allowmycode` tinyint(1) NOT NULL DEFAULT 0,
  `allowsmilies` tinyint(1) NOT NULL DEFAULT 0,
  `allowimgcode` tinyint(1) NOT NULL DEFAULT 0,
  `allowvideocode` tinyint(1) NOT NULL DEFAULT 0,
  `allowpicons` tinyint(1) NOT NULL DEFAULT 0,
  `allowtratings` tinyint(1) NOT NULL DEFAULT 0,
  `usepostcounts` tinyint(1) NOT NULL DEFAULT 0,
  `usethreadcounts` tinyint(1) NOT NULL DEFAULT 0,
  `requireprefix` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(50) NOT NULL DEFAULT '',
  `showinjump` tinyint(1) NOT NULL DEFAULT 0,
  `style` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `overridestyle` tinyint(1) NOT NULL DEFAULT 0,
  `rulestype` tinyint(1) NOT NULL DEFAULT 0,
  `rulestitle` varchar(200) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `unapprovedthreads` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unapprovedposts` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deletedthreads` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deletedposts` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `defaultdatecut` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `defaultsortby` varchar(10) NOT NULL DEFAULT '',
  `defaultsortorder` varchar(4) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_forums`
--

INSERT INTO `mybb_forums` (`fid`, `name`, `description`, `linkto`, `type`, `pid`, `parentlist`, `disporder`, `active`, `open`, `threads`, `posts`, `lastpost`, `lastposter`, `lastposteruid`, `lastposttid`, `lastpostsubject`, `allowhtml`, `allowmycode`, `allowsmilies`, `allowimgcode`, `allowvideocode`, `allowpicons`, `allowtratings`, `usepostcounts`, `usethreadcounts`, `requireprefix`, `password`, `showinjump`, `style`, `overridestyle`, `rulestype`, `rulestitle`, `rules`, `unapprovedthreads`, `unapprovedposts`, `deletedthreads`, `deletedposts`, `defaultdatecut`, `defaultsortby`, `defaultsortorder`) VALUES
(1, 'Wprowadzenie', '', '', 'c', 0, '1', 1, 1, 1, 0, 0, 0, '0', 0, 0, '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '', 1, 0, 0, 0, '', '', 0, 0, 0, 0, 0, '', ''),
(2, 'My Forum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 'f', 1, '1,2', 1, 1, 1, 4, 8, 1721910238, 'Administrator', 1, 7, 'Ankieta', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '', 1, 0, 0, 0, '', '', 0, 0, 0, 0, 0, '', ''),
(3, 'Polskie znaki ą ę ć ś ł ó ż ź', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 'f', 1, '1,3', 1, 1, 0, 2, 2, 1719507196, 'Administrator', 1, 5, 'Jakiś tester elo', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '', 1, 0, 0, 0, '', '', 0, 0, 0, 0, 0, '', ''),
(4, 'Poddział', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 'f', 2, '1,2,4', 1, 1, 1, 1, 1, 1719479431, 'Administrator', 1, 3, 'Jakiś tam tytuł', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '', 1, 0, 0, 0, '', '', 0, 0, 0, 0, 0, '', ''),
(5, 'Poddział 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 'f', 2, '1,2,5', 1, 1, 0, 0, 0, 0, '', 0, 0, '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '', 1, 0, 0, 0, '', '', 0, 0, 0, 0, 0, '', ''),
(6, 'Rozgrywka', '', '', 'c', 0, '6', 1, 1, 1, 0, 0, 0, '', 0, 0, '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '', 1, 0, 0, 0, '', '', 0, 0, 0, 0, 0, '', ''),
(7, 'Tester', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 'f', 6, '6,7', 1, 1, 1, 0, 0, 0, '', 0, 0, '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '', 1, 0, 0, 0, '', '', 0, 0, 0, 0, 0, '', ''),
(8, 'Poza grą', '', '', 'c', 0, '8', 1, 1, 1, 0, 0, 0, '', 0, 0, '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '', 1, 0, 0, 0, '', '', 0, 0, 0, 0, 0, '', ''),
(9, 'Off-top', '', '', 'f', 8, '8,9', 1, 1, 1, 0, 0, 0, '', 0, 0, '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '', 1, 0, 0, 0, '', '', 0, 0, 0, 0, 0, '', ''),
(10, 'Archiwum', '', '', 'f', 8, '8,10', 1, 1, 0, 0, 0, 0, '', 0, 0, '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '', 1, 0, 0, 0, '', '', 0, 0, 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mybb_forumsread`
--

CREATE TABLE `mybb_forumsread` (
  `fid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_forumsread`
--

INSERT INTO `mybb_forumsread` (`fid`, `uid`, `dateline`) VALUES
(2, 1, 1722929930),
(9, 1, 1722794517),
(3, 1, 1722894156),
(4, 1, 1722537194),
(6, 1, 1722894167);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_forumsubscriptions`
--

CREATE TABLE `mybb_forumsubscriptions` (
  `fsid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_groupleaders`
--

CREATE TABLE `mybb_groupleaders` (
  `lid` smallint(5) UNSIGNED NOT NULL,
  `gid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `canmanagemembers` tinyint(1) NOT NULL DEFAULT 0,
  `canmanagerequests` tinyint(1) NOT NULL DEFAULT 0,
  `caninvitemembers` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_helpdocs`
--

CREATE TABLE `mybb_helpdocs` (
  `hid` smallint(5) UNSIGNED NOT NULL,
  `sid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(120) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `document` text NOT NULL,
  `usetranslation` tinyint(1) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `disporder` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_helpdocs`
--

INSERT INTO `mybb_helpdocs` (`hid`, `sid`, `name`, `description`, `document`, `usetranslation`, `enabled`, `disporder`) VALUES
(1, 1, 'User Registration', 'Perks and privileges to user registration.', 'Some parts of this forum may require you to be logged in and registered. Registration is free and takes a few minutes to complete.<br />\r\n<br />\r\nYou are encouraged to register; once you register you will be able to post messages, set your own preferences, and maintain a profile.<br />\r\n<br />\r\nSome of the features that generally require registration are subscriptions, changing of styles, accessing of your Personal Pad (simple notepad) and emailing forum members.', 1, 1, 1),
(2, 1, 'Updating Profile', 'Changing your data currently on record.', 'At some point during your stay, you may decide you need to update some information such as your instant messenger information, your password, or perhaps you need to change your email address. You may change any of this information from your user control panel. To access this control panel, simply click on the link in the upper right hand corner of most any page entitled \"user cp\". From there, simply choose \"Edit Profile\" and change or update any desired items, then proceed to click the submit button located at the bottom of the page for changes to take effect.', 1, 1, 2),
(3, 1, 'Use of Cookies on myBB', 'myBB uses cookies to store certain information about your registration.', 'myBulletinBoard makes use of cookies to store your login information if you are registered, and your last visit if you are not.<br />\r\n<br />\r\nCookies are small text documents stored on your computer; the cookies set by this forum can only be used on this website and pose no security risk.<br />\r\n<br />\r\nCookies on this forum also track the specific topics you have read and when you last read them.<br />\r\n<br />\r\nTo clear all cookies set by this forum, you can click <a href=\"misc.php?action=clearcookies&amp;my_post_key={1}\">here</a>.', 1, 1, 3),
(4, 1, 'Logging In and Out', 'How to login and log out.', 'When you login, you set a cookie on your machine so that you can browse the forums without having to enter in your username and password each time. Logging out clears that cookie to ensure nobody else can browse the forum as you.<br />\r\n<br />\r\nTo login, simply click the login link at the top right hand corner of the forum. To log out, click the log out link in the same place. In the event you cannot log out, clearing cookies on your machine will take the same effect.', 1, 1, 4),
(5, 2, 'Posting a New Topic', 'Starting a new thread in a forum.', 'When you go to a forum you are interested in and you wish to create a new topic (or thread), simply choose the button at the top and bottom of the forums entitled \"New topic\". Please take note that you may not have permission to post a new topic in every forum as your administrator may have restricted posting in that forum to staff or archived the forum entirely.', 1, 1, 1),
(6, 2, 'Posting a Reply', 'Replying to a topic within a forum.', 'During the course of your visit, you may encounter a thread to which you would like to make a reply. To do so, simply click the \"Post reply\" button at the bottom or top of the thread. Please take note that your administrator may have restricted posting to certain individuals in that particular forum.<br />\r\n<br />\r\nAdditionally, a moderator of a forum may have closed a thread meaning that users cannot reply to it. There is no way for a user to open such a thread without the help of a moderator or administrator.', 1, 1, 2),
(7, 2, 'MyCode', 'Learn how to use MyCode to enhance your posts.', 'You can use MyCode, a simplified version of HTML, in your posts to create certain effects.\r\n<p><br />\r\n[b]This text is bold[/b]<br />\r\n&nbsp;&nbsp;&nbsp;<b>This text is bold</b>\r\n<p>\r\n[i]This text is italicized[/i]<br />\r\n&nbsp;&nbsp;&nbsp;<i>This text is italicized</i>\r\n<p>\r\n[u]This text is underlined[/u]<br />\r\n&nbsp;&nbsp;&nbsp;<u>This text is underlined</u>\r\n<p><br />\r\n[url]http://www.example.com/[/url]<br />\r\n&nbsp;&nbsp;&nbsp;<a href=\"http://www.example.com/\">http://www.example.com/</a>\r\n<p>\r\n[url=http://www.example.com/]Example.com[/url]<br />\r\n&nbsp;&nbsp;&nbsp;<a href=\"http://www.example.com/\">Example.com</a>\r\n<p>\r\n[email]example@example.com[/email]<br />\r\n&nbsp;&nbsp;&nbsp;<a href=\"mailto:example@example.com\">example@example.com</a>\r\n<p>\r\n[email=example@example.com]E-mail Me![/email]<br />\r\n&nbsp;&nbsp;&nbsp;<a href=\"mailto:example@example.com\">E-mail Me!</a>\r\n<p>\r\n[email=example@example.com?subject=spam]E-mail with subject[/email]<br />\r\n&nbsp;&nbsp;&nbsp;<a href=\"mailto:example@example.com?subject=spam\">E-mail with subject</a>\r\n<p><br />\r\n[quote]Quoted text will be here[/quote]<br />\r\n&nbsp;&nbsp;&nbsp;<quote>Quoted text will be here</quote>\r\n<p>\r\n[code]Text with preserved formatting[/code]<br />\r\n&nbsp;&nbsp;&nbsp;<code>Text with preserved formatting</code>\r\n<p><br />\r\n[img]https://secure.php.net/images/php.gif[/img]<br />\r\n&nbsp;&nbsp;&nbsp;<img src=\"https://secure.php.net/images/php.gif\">\r\n<p>\r\n[img=50x50]https://secure.php.net/images/php.gif[/img]<br />\r\n&nbsp;&nbsp;&nbsp;<img src=\"https://secure.php.net/images/php.gif\" width=\"50\" height=\"50\">\r\n<p><br />\r\n[color=red]This text is red[/color]<br />\r\n&nbsp;&nbsp;&nbsp;<font color=\"red\">This text is red</font>\r\n<p>\r\n[size=3]This text is size 3[/size]<br />\r\n&nbsp;&nbsp;&nbsp;<font size=\"3\">This text is size 3</font>\r\n<p>\r\n[font=Tahoma]This font is Tahoma[/font]<br />\r\n&nbsp;&nbsp;&nbsp;<font face=\"Tahoma\">This font is Tahoma</font>\r\n<p><br />\r\n[align=center]This is centered[/align]<div align=\"center\">This is centered</div>\r\n<p>\r\n[align=right]This is right-aligned[/align]<div align=\"right\">This is right-aligned</div>\r\n<p><br />\r\n[list]<br />\r\n[*]List Item #1<br />\r\n[*]List Item #2<br />\r\n[*]List Item #3<br />\r\n[/list]<br />\r\n<ul>\r\n<li>List item #1</li>\r\n<li>List item #2</li>\r\n<li>List Item #3</li>\r\n</ul><p><font size=1>You can make an ordered list by using [list=1] for a numbered, and [list=a] for an alphabetical list.</font>', 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_helpsections`
--

CREATE TABLE `mybb_helpsections` (
  `sid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `usetranslation` tinyint(1) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `disporder` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_helpsections`
--

INSERT INTO `mybb_helpsections` (`sid`, `name`, `description`, `usetranslation`, `enabled`, `disporder`) VALUES
(1, 'User Maintenance', 'Basic instructions for maintaining a forum account.', 1, 1, 1),
(2, 'Posting', 'Posting, replying, and basic usage of forum.', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_hidecontent`
--

CREATE TABLE `mybb_hidecontent` (
  `id` bigint(30) UNSIGNED NOT NULL,
  `uid` int(10) NOT NULL,
  `pid` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_icons`
--

CREATE TABLE `mybb_icons` (
  `iid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL DEFAULT '',
  `path` varchar(220) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_icons`
--

INSERT INTO `mybb_icons` (`iid`, `name`, `path`) VALUES
(26, 'Citrine', 'images/icons/citrine.png'),
(21, 'Heart', 'images/icons/crystal-heart.png'),
(23, 'Angel Quartz', 'images/icons/angel-quartz.png'),
(29, 'Smoky Quartz', 'images/icons/smoky-quartz.png'),
(28, 'Rose Quartz', 'images/icons/rose-quartz.png'),
(27, 'Rainbow Quartz', 'images/icons/rainbow-quartz.png'),
(25, 'Celestite', 'images/icons/celestite.png'),
(24, 'Aventurine', 'images/icons/aventurine.png'),
(22, 'Amethyst', 'images/icons/amethyst.png');

-- --------------------------------------------------------

--
-- Table structure for table `mybb_joinrequests`
--

CREATE TABLE `mybb_joinrequests` (
  `rid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `reason` varchar(250) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `invite` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_mailerrors`
--

CREATE TABLE `mybb_mailerrors` (
  `eid` int(10) UNSIGNED NOT NULL,
  `subject` varchar(200) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `toaddress` varchar(150) NOT NULL DEFAULT '',
  `fromaddress` varchar(150) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `error` text NOT NULL,
  `smtperror` varchar(200) NOT NULL DEFAULT '',
  `smtpcode` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_mailerrors`
--

INSERT INTO `mybb_mailerrors` (`eid`, `subject`, `message`, `toaddress`, `fromaddress`, `dateline`, `error`, `smtperror`, `smtpcode`) VALUES
(1, 'Aktywacja konta na forum Crystallicum', 'Tajemnicza Zielona Fasola,\r\n\r\nAby zakończyć proces rejestracji na forum Crystallicum, musisz odwiedzić poniższy adres:\r\n\r\nhttps://localhost/member.php?action=activate&uid=2&code=HfRZ68th\r\n\r\nJeśli powyższy link nie działa, przejdź pod podany poniżej adres:\r\n\r\nhttps://localhost/member.php?action=activate\r\n\r\ni podaj poniższe dane potrzebne do aktywacji:\r\nUżytkownik: Tajemnicza Zielona Fasola\r\nKod aktywacji: HfRZ68th\r\n\r\nPozdrawiamy,\r\nEkipa Crystallicum', 'pat366@gmail.com', '', 1720804841, 'MyBB was unable to send the email using the PHP mail() function.', '', 0),
(2, 'Nowa prywatna wiadomość na forum Crystallicum - Test', 'Administrator,\r\n\r\nOtrzymano prywatną wiadomość na forum Crystallicum od Administrator. Aby przeczytać tę wiadomość, przejdź pod adres:\r\n\r\n------------------------------------------\r\nTest\r\n------------------------------------------\r\n\r\nAby wyświetlić lub odpowiedzieć na tę wiadomość przechodząc pod adres:\r\n\r\nhttps://localhost/private.php\r\n\r\nKolejne powiadomienia otrzymasz dopiero po odwiedzeniu Crystallicum.\r\n\r\nMożesz wyłączyć powiadomienia o prywatnych wiadomościach pod adresem:\r\n\r\nhttps://localhost/usercp.php?action=options\r\n\r\nPozdrawiamy,\r\nEkipa Crystallicum\r\nhttps://localhost', 'pinkbeandev@gmail.com', '', 1722872346, 'MyBB was unable to send the email using the PHP mail() function.', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_maillogs`
--

CREATE TABLE `mybb_maillogs` (
  `mid` int(10) UNSIGNED NOT NULL,
  `subject` varchar(200) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fromuid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fromemail` varchar(200) NOT NULL DEFAULT '',
  `touid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `toemail` varchar(200) NOT NULL DEFAULT '',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ipaddress` varbinary(16) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_mailqueue`
--

CREATE TABLE `mybb_mailqueue` (
  `mid` int(10) UNSIGNED NOT NULL,
  `mailto` varchar(200) NOT NULL,
  `mailfrom` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `headers` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_massemails`
--

CREATE TABLE `mybb_massemails` (
  `mid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(200) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `htmlmessage` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `format` tinyint(1) NOT NULL DEFAULT 0,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `senddate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sentcount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `totalcount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `conditions` text NOT NULL,
  `perpage` smallint(4) UNSIGNED NOT NULL DEFAULT 50
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_moderatorlog`
--

CREATE TABLE `mybb_moderatorlog` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `action` text NOT NULL,
  `data` text NOT NULL,
  `ipaddress` varbinary(16) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_moderatorlog`
--

INSERT INTO `mybb_moderatorlog` (`uid`, `dateline`, `fid`, `tid`, `pid`, `action`, `data`, `ipaddress`) VALUES
(1, 1719439754, 2, 0, 0, 'Przeniesiono / skopiowano wątki', 'a:0:{}', 0x521f689c),
(1, 1719485846, 2, 4, 0, 'Przypięto wątki', 'a:0:{}', 0x521f689c),
(1, 1720018966, 2, 7, 0, 'Nietrwale usunięto zaznaczone posty', 'a:0:{}', 0x521f689c),
(1, 1720019371, 2, 7, 0, 'Przywrócono zaznaczone posty', 'a:0:{}', 0x521f689c),
(1, 1721601796, 2, 0, 0, 'Przeniesiono / skopiowano wątki', 'a:0:{}', 0x521f689c),
(1, 1721775498, 2, 7, 0, 'Usunięto zaznaczone posty (3)', 'a:0:{}', 0x521f689c),
(1, 1721775519, 2, 7, 0, 'Usunięto zaznaczone posty (1)', 'a:0:{}', 0x521f689c),
(1, 1721776675, 2, 7, 0, 'Usunięto zaznaczone posty (1)', 'a:0:{}', 0x521f689c),
(1, 1721806319, 2, 7, 0, 'Usunięto zaznaczone posty (2)', 'a:0:{}', 0x521f689c),
(1, 1721806380, 2, 7, 0, 'Usunięto zaznaczone posty (2)', 'a:0:{}', 0x521f689c),
(1, 1721806426, 2, 7, 0, 'Usunięto zaznaczone posty (2)', 'a:0:{}', 0x521f689c),
(1, 1722940139, 0, 0, 0, 'Usunięto zaznaczone posty (2)', '', 0xac1c0001);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_moderators`
--

CREATE TABLE `mybb_moderators` (
  `mid` smallint(5) UNSIGNED NOT NULL,
  `fid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `isgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `caneditposts` tinyint(1) NOT NULL DEFAULT 0,
  `cansoftdeleteposts` tinyint(1) NOT NULL DEFAULT 0,
  `canrestoreposts` tinyint(1) NOT NULL DEFAULT 0,
  `candeleteposts` tinyint(1) NOT NULL DEFAULT 0,
  `cansoftdeletethreads` tinyint(1) NOT NULL DEFAULT 0,
  `canrestorethreads` tinyint(1) NOT NULL DEFAULT 0,
  `candeletethreads` tinyint(1) NOT NULL DEFAULT 0,
  `canviewips` tinyint(1) NOT NULL DEFAULT 0,
  `canviewunapprove` tinyint(1) NOT NULL DEFAULT 0,
  `canviewdeleted` tinyint(1) NOT NULL DEFAULT 0,
  `canopenclosethreads` tinyint(1) NOT NULL DEFAULT 0,
  `canstickunstickthreads` tinyint(1) NOT NULL DEFAULT 0,
  `canapproveunapprovethreads` tinyint(1) NOT NULL DEFAULT 0,
  `canapproveunapproveposts` tinyint(1) NOT NULL DEFAULT 0,
  `canapproveunapproveattachs` tinyint(1) NOT NULL DEFAULT 0,
  `canmanagethreads` tinyint(1) NOT NULL DEFAULT 0,
  `canmanagepolls` tinyint(1) NOT NULL DEFAULT 0,
  `canpostclosedthreads` tinyint(1) NOT NULL DEFAULT 0,
  `canmovetononmodforum` tinyint(1) NOT NULL DEFAULT 0,
  `canusecustomtools` tinyint(1) NOT NULL DEFAULT 0,
  `canmanageannouncements` tinyint(1) NOT NULL DEFAULT 0,
  `canmanagereportedposts` tinyint(1) NOT NULL DEFAULT 0,
  `canviewmodlog` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_modtools`
--

CREATE TABLE `mybb_modtools` (
  `tid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `forums` text NOT NULL,
  `groups` text NOT NULL,
  `type` char(1) NOT NULL DEFAULT '',
  `postoptions` text NOT NULL,
  `threadoptions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_mycode`
--

CREATE TABLE `mybb_mycode` (
  `cid` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `regex` text NOT NULL,
  `replacement` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `parseorder` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_mycode`
--

INSERT INTO `mybb_mycode` (`cid`, `title`, `description`, `regex`, `replacement`, `active`, `parseorder`) VALUES
(1, 'Spoiler with title', '', '\\[spoiler=(.*?)\\](.*?)\\[/spoiler\\]', '<div class=\"spoiler\">\r\n<button>$1</button><div class=\"spoiler_content\">$2</div></div>', 1, 0),
(2, 'Spoiler', '', '\\[spoiler\\](.*?)\\[/spoiler\\]', '<div class=\"spoiler\">\r\n<button>Spoiler</button><div class=\"spoiler_content\">$1</div></div>', 1, 0),
(3, 'Pusta spacja', 'Głównie do sygnatury', '\\[pusto\\]', '&nbsp;', 1, 0),
(4, 'Brak stylu w sygnaturze', 'Usunięcie stylu w sygnaturze', '\\[sygnatura\\]', '[quote_color=transparent][urls_color=transparent][img_border_color=transparent][shadow_bg_color=trasnparent][shadow_bg_color=transparent][signature_bg_image=none][signature_box_shadow=none][signature_border=none][shadow_box_shadow=none][shadow_border=none]', 1, 0),
(6, 'Brak stylu w sygnaturze ale z linkami', 'Linki pod postem zostają widoczne', '\\[syg\\]', '[quote_color=transparent][img_border_color=transparent][shadow_bg_color=trasnparent][shadow_bg_color=transparent][signature_bg_image=none][signature_box_shadow=none][signature_border=none][shadow_box_shadow=none][shadow_border=none]', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_polls`
--

CREATE TABLE `mybb_polls` (
  `pid` int(10) UNSIGNED NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `question` varchar(200) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `options` text NOT NULL,
  `votes` text NOT NULL,
  `numoptions` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `numvotes` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `timeout` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `closed` tinyint(1) NOT NULL DEFAULT 0,
  `multiple` tinyint(1) NOT NULL DEFAULT 0,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `maxoptions` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_polls`
--

INSERT INTO `mybb_polls` (`pid`, `tid`, `question`, `dateline`, `options`, `votes`, `numoptions`, `numvotes`, `timeout`, `closed`, `multiple`, `public`, `maxoptions`) VALUES
(1, 7, 'Pytanie', 1719862331, 'A||~|~||B', '1||~|~||0', 2, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_pollvotes`
--

CREATE TABLE `mybb_pollvotes` (
  `vid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `voteoption` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ipaddress` varbinary(16) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_pollvotes`
--

INSERT INTO `mybb_pollvotes` (`vid`, `pid`, `uid`, `voteoption`, `dateline`, `ipaddress`) VALUES
(1, 1, 1, 1, 1722032045, 0x521f689c);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_posts`
--

CREATE TABLE `mybb_posts` (
  `pid` int(10) UNSIGNED NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `replyto` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(120) NOT NULL DEFAULT '',
  `icon` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(80) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `message` text NOT NULL,
  `ipaddress` varbinary(16) NOT NULL DEFAULT '',
  `includesig` tinyint(1) NOT NULL DEFAULT 0,
  `smilieoff` tinyint(1) NOT NULL DEFAULT 0,
  `edituid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editreason` varchar(150) NOT NULL DEFAULT '',
  `visible` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_posts`
--

INSERT INTO `mybb_posts` (`pid`, `tid`, `replyto`, `fid`, `subject`, `icon`, `uid`, `username`, `dateline`, `message`, `ipaddress`, `includesig`, `smilieoff`, `edituid`, `edittime`, `editreason`, `visible`) VALUES
(1, 1, 0, 3, 'Tytuł', 0, 1, 'Administrator', 1719383712, 'fffffffffffffffffffffffff', 0x521f689c, 1, 0, 1, 1721601826, '', 1),
(2, 2, 0, 2, 'Bardzo długi tytuł hehe hehe hehe hheheheh', 0, 1, 'Administrator', 1719437180, 'elo', 0x521f689c, 1, 0, 0, 0, '', 1),
(3, 3, 0, 4, 'Jakiś tam tytuł', 0, 1, 'Administrator', 1719479431, 'dnkndfkvfd\n\n[b]kupa[/b]\n\n[u]kupa2[/u]\n\n[i]kupa3[/i]', 0x521f689c, 1, 0, 1, 1719559976, '', 1),
(4, 4, 0, 2, 'to będzie przypięty temat', 0, 1, 'Administrator', 1719485831, 'dvfgfgbfg', 0x521f689c, 1, 0, 0, 0, '', 1),
(5, 5, 0, 3, 'Jakiś tester elo', 0, 1, 'Administrator', 1719507196, 'dfvdf', 0x521f689c, 1, 0, 0, 0, '', 1),
(6, 4, 4, 2, 'RE: to będzie przypięty temat', 0, 1, 'Administrator', 1719512199, 'efgrehgtrh', 0x521f689c, 1, 0, 0, 0, '', 1),
(7, 6, 0, 2, 'Taki tam nowy wątek', 27, 1, 'Administrator', 1719517710, 'kjbhbj\r\n\r\n[b]bold[/b]\r\n\r\n[i]iiii[/i]\r\n\r\n[u]uuuuu[/u]\r\n\r\n[s]ssssss[/s]\r\n\r\n[code]lol[/code]\r\n\r\n[url=http://localhost/forumdisplay.php?fid=2]elo[/url]', 0x521f689c, 1, 0, 1, 1721482886, '', 1),
(8, 7, 0, 2, 'Ankieta', 22, 1, 'Administrator', 1719862261, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard [b]dummy[/b] text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type [i]specimen[/i] book. It has survived not only five centuries, but also the leap into [u]electronic[/u] typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset [s]sheets[/s] containing Lorem Ipsum passages, and more recently with [url=ddd]desktop[/url] publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n[spoiler]Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard [b]dummy[/b] text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type [i]specimen[/i] book. It has survived not only five centuries, but also the leap into [u]electronic[/u] typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset [s]sheets[/s] containing Lorem Ipsum passages, and more recently with [url=ddd]desktop[/url] publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nThat should also be a spoiler\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard [b]dummy[/b] text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type [i]specimen[/i] book. It has survived not only five centuries, but also the leap into [u]electronic[/u] typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset [s]sheets[/s] containing Lorem Ipsum passages, and more recently with [url=ddd]desktop[/url] publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nThat should also be a spoiler\r\n\r\n<div class=\"no_indent\">no indent text</div>[/spoiler]\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n[hide]Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.[/hide]\r\n\r\n[hr]\r\n\r\n[code]lol[/code]\r\n\r\n[list]\r\n[*] elo\r\n[*] elo\r\n[*] elo\r\n[*] elo\r\n[*] elo\r\n[/list]\r\n\r\n[list=1]\r\n[*]elo2\r\n[*]elo2\r\n[*]elo2\r\n[*]elo2\r\n[*]elo2\r\n[*]elo2\r\n[/list]\r\n\r\n[quote]elo[/quote]\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n[code]eeee[/code]', 0x521f689c, 1, 0, 1, 1721910178, '', 1),
(21, 7, 8, 2, 'RE: Ankieta', 0, 1, 'Administrator', 1721806458, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n[hide]Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.[/hide]\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0x521f689c, 1, 0, 1, 1721810943, '', 1),
(23, 7, 8, 2, 'RE: Ankieta', 0, 1, 'Administrator', 1721846692, '<div style=\"color: var(--registered);\">Zarejestrowani</div>\n<div style=\"color: var(--not-active);\">Nieaktywni</div>\n<div style=\"color: var(--banned);\">Zbanowani</div>\n<div style=\"color: var(--npc);\">NPC</div>\n<div style=\"color: var(--opal);\">1 - Opal</div>\n<div style=\"color: var(--citrine);\">2 - Citrine</div>\n<div style=\"color: var(--aventurine);\">3 - Aventurine</div>\n<div style=\"color: var(--sapphire);\">4 - Sapphire</div>\n<div style=\"color: var(--amethyst);\">5 - Amethyst</div>\n<div style=\"color: var(--rose-quartz);\">6 - Rose quartz</div>\n<div style=\"color: var(--ruby);\">7 - Ruby</div>\n<div style=\"color: var(--amber);\">8 - Inni - Amber</div>', 0x521f689c, 1, 0, 1, 1721910757, '', 1),
(24, 7, 8, 2, 'RE: Ankieta', 0, 1, 'Administrator', 1721910238, '[spoiler]Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard [b]dummy[/b] text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type [i]specimen[/i] book. It has survived not only five centuries, but also the leap into [u]electronic[/u] typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset [s]sheets[/s] containing Lorem Ipsum passages, and more recently with [url=ddd]desktop[/url] publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nThat should also be a spoiler\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard [b]dummy[/b] text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type [i]specimen[/i] book. It has survived not only five centuries, but also the leap into [u]electronic[/u] typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset [s]sheets[/s] containing Lorem Ipsum passages, and more recently with [url=ddd]desktop[/url] publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nThat should also be a spoiler\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard [b]dummy[/b] text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type [i]specimen[/i] book. It has survived not only five centuries, but also the leap into [u]electronic[/u] typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset [s]sheets[/s] containing Lorem Ipsum passages, and more recently with [url=ddd]desktop[/url] publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nThat should also be a spoiler\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard [b]dummy[/b] text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type [i]specimen[/i] book. It has survived not only five centuries, but also the leap into [u]electronic[/u] typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset [s]sheets[/s] containing Lorem Ipsum passages, and more recently with [url=ddd]desktop[/url] publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nThat should also be a spoiler\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard [b]dummy[/b] text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type [i]specimen[/i] book. It has survived not only five centuries, but also the leap into [u]electronic[/u] typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset [s]sheets[/s] containing Lorem Ipsum passages, and more recently with [url=ddd]desktop[/url] publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n[list][*]1\n[*]2[/list]\n\n<div class=\"no_indent\">no indent pls dont break\ndruga linia\n\ntrzecia</div>[/spoiler]', 0x521f689c, 1, 0, 1, 1721915770, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_privatemessages`
--

CREATE TABLE `mybb_privatemessages` (
  `pmid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `toid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fromid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `recipients` text NOT NULL,
  `folder` smallint(5) UNSIGNED NOT NULL DEFAULT 1,
  `subject` varchar(120) NOT NULL DEFAULT '',
  `icon` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `message` text NOT NULL,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deletetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `statustime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `includesig` tinyint(1) NOT NULL DEFAULT 0,
  `smilieoff` tinyint(1) NOT NULL DEFAULT 0,
  `receipt` tinyint(1) NOT NULL DEFAULT 0,
  `readtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ipaddress` varbinary(16) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_privatemessages`
--

INSERT INTO `mybb_privatemessages` (`pmid`, `uid`, `toid`, `fromid`, `recipients`, `folder`, `subject`, `icon`, `message`, `dateline`, `deletetime`, `status`, `statustime`, `includesig`, `smilieoff`, `receipt`, `readtime`, `ipaddress`) VALUES
(2, 1, 1, 1, 'a:1:{s:2:\"to\";a:1:{i:0;s:1:\"1\";}}', 1, 'Test', 0, 'Test', 1722872345, 0, 0, 0, 1, 0, 1, 0, 0x521f689c),
(3, 1, 1, 1, 'a:1:{s:2:\"to\";a:1:{i:0;s:1:\"1\";}}', 2, 'Test', 0, 'Test', 1722872345, 0, 1, 0, 1, 0, 0, 0, 0x521f689c);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_profilefields`
--

CREATE TABLE `mybb_profilefields` (
  `fid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `disporder` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `type` text NOT NULL,
  `regex` text NOT NULL,
  `length` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `maxlength` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `registration` tinyint(1) NOT NULL DEFAULT 0,
  `profile` tinyint(1) NOT NULL DEFAULT 0,
  `postbit` tinyint(1) NOT NULL DEFAULT 0,
  `viewableby` text NOT NULL,
  `editableby` text NOT NULL,
  `postnum` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `allowhtml` tinyint(1) NOT NULL DEFAULT 0,
  `allowmycode` tinyint(1) NOT NULL DEFAULT 0,
  `allowsmilies` tinyint(1) NOT NULL DEFAULT 0,
  `allowimgcode` tinyint(1) NOT NULL DEFAULT 0,
  `allowvideocode` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_profilefields`
--

INSERT INTO `mybb_profilefields` (`fid`, `name`, `description`, `disporder`, `type`, `regex`, `length`, `maxlength`, `required`, `registration`, `profile`, `postbit`, `viewableby`, `editableby`, `postnum`, `allowhtml`, `allowmycode`, `allowsmilies`, `allowimgcode`, `allowvideocode`) VALUES
(1, 'Obrazek sygnatury', 'Uzupełnij tylko, jeżeli chcesz skorzystać z odgórnie wygenerowanego kodu dla Twojej sygnatury.', 1, 'text', '', 0, 0, 0, 0, 1, 1, '-1', '-1', 0, 0, 0, 0, 0, 0),
(2, 'Korespondencja', 'Link do korespondencji', 2, 'text', '', 0, 0, 0, 0, 1, 1, '-1', '3,4,6', 0, 0, 0, 0, 0, 0),
(3, 'Miejsce zamieszkania', 'Link do miejsca zamieszkania.', 3, 'text', '', 0, 0, 0, 0, 1, 1, '-1', '3,4,6', 0, 0, 0, 0, 0, 0),
(4, 'Aktualizacje mechaniczne', 'Link do tematu z aktualizacjami mechanicznymi', 4, 'text', '', 0, 0, 0, 0, 1, 1, '-1', '3,4,6', 0, 0, 0, 0, 0, 0),
(5, 'Playlista', 'Link do playlisty bądź piosenki', 5, 'text', '', 0, 0, 0, 0, 1, 1, '-1', '-1', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_promotionlogs`
--

CREATE TABLE `mybb_promotionlogs` (
  `plid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `oldusergroup` varchar(200) NOT NULL DEFAULT '0',
  `newusergroup` smallint(6) NOT NULL DEFAULT 0,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(9) NOT NULL DEFAULT 'primary'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_promotions`
--

CREATE TABLE `mybb_promotions` (
  `pid` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `logging` tinyint(1) NOT NULL DEFAULT 0,
  `posts` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `posttype` char(2) NOT NULL DEFAULT '',
  `threads` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `threadtype` char(2) NOT NULL DEFAULT '',
  `registered` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `registeredtype` varchar(20) NOT NULL DEFAULT '',
  `online` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `onlinetype` varchar(20) NOT NULL DEFAULT '',
  `reputations` int(11) NOT NULL DEFAULT 0,
  `reputationtype` char(2) NOT NULL DEFAULT '',
  `referrals` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `referralstype` char(2) NOT NULL DEFAULT '',
  `warnings` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `warningstype` char(2) NOT NULL DEFAULT '',
  `requirements` varchar(200) NOT NULL DEFAULT '',
  `originalusergroup` varchar(120) NOT NULL DEFAULT '0',
  `newusergroup` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `usergrouptype` varchar(120) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_questions`
--

CREATE TABLE `mybb_questions` (
  `qid` int(10) UNSIGNED NOT NULL,
  `question` varchar(200) NOT NULL DEFAULT '',
  `answer` varchar(150) NOT NULL DEFAULT '',
  `shown` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `correct` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `incorrect` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_questions`
--

INSERT INTO `mybb_questions` (`qid`, `question`, `answer`, `shown`, `correct`, `incorrect`, `active`) VALUES
(1, 'What does 2 + 2 equal?', '4\nFour', 4, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_questionsessions`
--

CREATE TABLE `mybb_questionsessions` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `qid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_questionsessions`
--

INSERT INTO `mybb_questionsessions` (`sid`, `qid`, `dateline`) VALUES
('Vwt0okfVsyD7kYEKg753WAeeRGoH49aQ', 1, 1722886516);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_reportedcontent`
--

CREATE TABLE `mybb_reportedcontent` (
  `rid` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reportstatus` tinyint(1) NOT NULL DEFAULT 0,
  `reasonid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `reason` varchar(250) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `reports` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reporters` text NOT NULL,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastreport` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_reportreasons`
--

CREATE TABLE `mybb_reportreasons` (
  `rid` int(10) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL DEFAULT '',
  `appliesto` varchar(250) NOT NULL DEFAULT '',
  `extra` tinyint(1) NOT NULL DEFAULT 0,
  `disporder` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_reportreasons`
--

INSERT INTO `mybb_reportreasons` (`rid`, `title`, `appliesto`, `extra`, `disporder`) VALUES
(1, '<lang:report_reason_other>', 'all', 1, 99),
(2, '<lang:report_reason_rules>', 'all', 0, 1),
(3, '<lang:report_reason_bad>', 'all', 0, 2),
(4, '<lang:report_reason_spam>', 'all', 0, 3),
(5, '<lang:report_reason_wrong>', 'post', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_reputation`
--

CREATE TABLE `mybb_reputation` (
  `rid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `adduid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reputation` smallint(6) NOT NULL DEFAULT 0,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_searchlog`
--

CREATE TABLE `mybb_searchlog` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ipaddress` varbinary(16) NOT NULL DEFAULT '',
  `threads` longtext NOT NULL,
  `posts` longtext NOT NULL,
  `resulttype` varchar(10) NOT NULL DEFAULT '',
  `querycache` text NOT NULL,
  `keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_searchlog`
--

INSERT INTO `mybb_searchlog` (`sid`, `uid`, `dateline`, `ipaddress`, `threads`, `posts`, `resulttype`, `querycache`, `keywords`) VALUES
('c94dc6fa6186b63d3caa3c168a666bf2', 1, 1722940132, 0xac1c0001, '', '22,11', 'posts', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mybb_sessions`
--

CREATE TABLE `mybb_sessions` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varbinary(16) NOT NULL DEFAULT '',
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `location` varchar(150) NOT NULL DEFAULT '',
  `useragent` varchar(200) NOT NULL DEFAULT '',
  `anonymous` tinyint(1) NOT NULL DEFAULT 0,
  `nopermission` tinyint(1) NOT NULL DEFAULT 0,
  `location1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `location2` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_sessions`
--

INSERT INTO `mybb_sessions` (`sid`, `uid`, `ip`, `time`, `location`, `useragent`, `anonymous`, `nopermission`, `location1`, `location2`) VALUES
('0c3e5c5526dba48caeeed84d4cb4d207', 0, 0x221f73bb, 1722862189, '/usercp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('a926a3c6674b776b0629d43b1a45defb', 0, 0x221f73bb, 1722862193, '/showthread.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 0, 0, 0),
('58595631bdffb50c8828abc0c4868d89', 0, 0x22561597, 1722862796, '/usercp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('e3c25c8c7c4be537d66009a92c3b24e2', 0, 0x2296df53, 1722863419, '/usercp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('843284921af24190fa1ad730a7ac2756', 0, 0x221f73bb, 1722892728, '/showthread.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 0, 0, 0),
('6bf3664cfbc2edc655348ac09e9e0ef1', 0, 0x22692540, 1722871728, '/usercp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('44479f061982f896af75a7099b9a9c45', 0, 0x221f73bb, 1722870009, '/usercp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('e95d57ccc3ee5680f7172f76474025bf', 0, 0x2291a5e3, 1722870123, '/index.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 0, 0, 0),
('a981585b03246b6d9664523b0cf5d717', 0, 0x22692540, 1722871748, '/showthread.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 0, 0, 0),
('cc9f558acb84f0adbbd6dfba1762d8d1', 0, 0x2253dd3e, 1722872285, '/private.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('a41870d78e27712d1d56d95db23f856c', 0, 0x221f73bb, 1722872914, '/private.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('3a845ab6a659826e324572d154792903', 0, 0x2253dd3e, 1722873988, '/private.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('ad0b252011f86865783ce25c1c8b5be5', 0, 0x22692540, 1722874131, '/usercp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('fe7d07d88d0bf8d2231246be5de20cac', 0, 0x22561597, 1722892726, '/showthread.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 0, 0, 0),
('658e9b3515e14d135ec973d7a5f1ca1b', 0, 0x22a8ab1d, 1722876229, '/index.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 0, 0, 0),
('bf9ee253fd94043dbfc33129b41b392b', 0, 0x221f73bb, 1722876855, '/usercp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('94d7cc88c760bb361f3390e1ee91d455', 0, 0x23e152b6, 1722898849, '/usercp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('a38a31cbeebe220666bba12f88492096', 0, 0x2253dd3e, 1722891834, '/showthread.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 0, 0, 0),
('d49787a5d699cc82470696d4e5f3d20a', 0, 0x22692540, 1722887053, '/usercp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('5249e04ed46cb78a52a7a1130447fa29', 0, 0x22692540, 1722886401, '/modcp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('fe8cb91e609ed8262921681036e7799a', 0, 0x4fbfa734, 1722890205, '/member.php?action=do_login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 0, 0, 0, 0),
('d10959ab7ac3c31ce33afa9ccd80452b', 0, 0x23f5bcaf, 1722888872, '/usercp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('302b9fa89e7f7f2406044e3c8090a622', 0, 0x2291a5e3, 1722888873, '/usercp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('c697a511318ac757f671a19d62b53bfe', 0, 0x2291a5e3, 1722890611, '/usercp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('61e9fb32745960ffe18da9aa2ae1cb8f', 0, 0x2296df53, 1722891222, '/usercp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('c7f3e1c6c5deff911e60c03bb1a4642b', 0, 0x22692540, 1722892158, '/index.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 0, 0, 0),
('f9a17ddd990435eda0c401323dae5abc', 0, 0x221f73bb, 1722899747, '/usercp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('bot=2', 0, 0x284da730, 1722939029, '/memberlist.php?perpage=20&amp;username_match=begins&amp;username=C&amp;sort=threadnum&amp;order=ascending', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 0, 0, 0, 0),
('7be41fbdb9e737a2e3661f0c7f113024', 0, 0x221f73bb, 1722862189, '/usercp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('ab10979ca40baa4afe93d72aa0fd2c75', 0, 0x2253dd3e, 1722860229, '/showthread.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 0, 0, 0),
('eb9dd2e03ae07ea0d03ab72ffdec4180', 0, 0x221f73bb, 1722859300, '/usercp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('dd130c5ba75fe379734919e1bc9319a9', 0, 0x2253dd3e, 1722856998, '/showthread.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 0, 0, 0),
('5b2b280b8fdcadfe38c1679db90a3de6', 0, 0x22a8ab1d, 1722860297, '/usercp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('503a3156226bb980a8f653a1aa099d5a', 0, 0x23f5bcaf, 1722857621, '/showthread.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 0, 0, 0),
('3bea34f96c27723de0f3b45a187d60ae', 0, 0x2253dd3e, 1722859209, '/showthread.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 0, 0, 0),
('e96318d75302d3fd8852cc48371d698b', 0, 0x2291e3f3, 1722855584, '/showthread.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 0, 0, 0),
('b1d0ec841cdd469afeb10c5566d8e229', 0, 0x2291e3f3, 1722856328, '/showthread.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 0, 0, 0),
('110eeaca055eac906c565cde832edd61', 3, 0xac1c0001, 1722940204, '/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 0, 0, 0, 0),
('b488a46f0bad6c172de96d7390dd4bf5', 0, 0x2291a5e3, 1722893456, '/usercp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0),
('871d480efeb3df4c0b2e2d08dce6457d', 0, 0x2296df53, 1722894091, '/usercp.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_settinggroups`
--

CREATE TABLE `mybb_settinggroups` (
  `gid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(220) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `disporder` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `isdefault` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_settinggroups`
--

INSERT INTO `mybb_settinggroups` (`gid`, `name`, `title`, `description`, `disporder`, `isdefault`) VALUES
(1, 'onlineoffline', 'Board Online / Offline', 'These settings allow you to globally turn your forums online or offline, and allow you to specify a reason for turning them off.', 1, 1),
(2, 'details', 'Site Details', 'This section contains various settings such as your board name and url, as well as your website name and url.', 2, 1),
(3, 'general', 'General Configuration', 'This section allows you to manage the general aspects of your board.', 3, 1),
(4, 'server', 'Server and Optimization Options', 'These options allow you to set various server and optimization preferences allowing you to reduce the load on your server, and gain better performance on your board.', 4, 1),
(5, 'datetime', 'Date and Time Formats', 'Here you can specify the different date and time formats used to display dates and times on the forums.', 5, 1),
(6, 'forumhome', 'Forum Home Options', 'This section allows you to manage the various settings used on the forum home (index.php) of your boards such as enabling and disabling different features.', 6, 1),
(7, 'forumdisplay', 'Forum Display Options', 'This section allows you to manage the various settings used on the forum display (forumdisplay.php) of your boards such as enabling and disabling different features.', 7, 1),
(8, 'showthread', 'Show Thread Options', 'This section allows you to manage the various settings used on the thread display page (showthread.php) of your boards such as enabling and disabling different features.', 8, 1),
(9, 'member', 'Login and Registration Options', 'Here you can control various settings with relation to user account registration and login management.', 9, 1),
(10, 'profile', 'Profile Options', 'The options here control the various settings of user profiles around the forums.', 10, 1),
(11, 'posting', 'Posting', 'These options control the various elements in relation to posting messages on the forums.', 11, 1),
(12, 'attachments', 'Attachments', 'Various options related to the attachment system can be managed and set here.', 12, 1),
(13, 'memberlist', 'Member List', 'This section allows you to control various aspects of the board member listing (memberlist.php), such as how many members to show per page, and which features to enable or disable.', 13, 1),
(14, 'reputation', 'Reputation', 'The reputation system allows your users to rate others and leave a comment on the user. This section has settings to disable and change other aspects of the reputation page (reputation.php).', 14, 1),
(15, 'warning', 'Warning System Settings', 'The warning system allows forum staff to warn users for rule violations. Here you can manage the settings that control the warning system (warnings.php).', 15, 1),
(16, 'privatemessaging', 'Private Messaging', 'Various options with relation to the MyBB Private Messaging system (private.php) can be managed and set here.', 16, 1),
(17, 'calendar', 'Calendar', 'The board calendar allows the public and private listing of events and members\' birthdays. This section allows you to control and manage the settings for the Calendar (calendar.php).', 17, 1),
(18, 'whosonline', 'Who\'s Online', 'Various settings regarding the Who is Online functionality (online.php).', 18, 1),
(19, 'userpruning', 'User Pruning', 'User Pruning allows you to remove users from your forum meeting certain criteria. Here you can configure that criteria.', 19, 1),
(20, 'portal', 'Portal Settings', 'The portal page compiles several different pieces of information about your forum, including latest posts, who\'s online, forum stats, announcements, and more. This section has settings to control the aspects of the portal page (portal.php).', 20, 1),
(21, 'search', 'Search System', 'The various settings in this group allow you to make changes to the built in search mechanism for threads, posts and help documents in MyBB.', 21, 1),
(22, 'clickablecode', 'Clickable Smilies and BB Code', 'This section allows you to change how the clickable smilies inserter appears and control the default MyCodes.', 22, 1),
(23, 'cpprefs', 'Control Panel Preferences (Global)', 'This section allows you to set the global preferences for the Admin Control Panel.', 23, 1),
(24, 'mailsettings', 'Mail Settings', 'This section allows you to control various aspects of the MyBB mail system, such as sending with PHP mail or with a off server SMTP server.', 24, 1),
(25, 'contactsettings', 'Contact Settings', 'The various options to change the behaviour of the contact page (contact.php).', 25, 1),
(26, 'purgespammer', 'Purge Spammer', 'This section allows you to change the settings of the Purge Spammer feature.', 26, 1),
(27, 'stopforumspam', 'Stop Forum Spam', 'This section allows you to change the settings used for the integration with StopForumSpam.com', 27, 1),
(28, 'contactdetails', 'Contact Details', 'This section allows you to change the settings of the contact fields feature.', 28, 1),
(29, 'statspage', 'Statistics Page', 'This section allows you to change the settings of the statistics page.', 28, 1),
(30, 'forumteam', 'Forum Team', 'This section allows you to control various aspects of the forum team listing (showteam.php), such as aspects to consider while listing team members, and which features to enable or disable.', 29, 1),
(31, 'avatarep', '[Plugin] Last Poster Avatar', 'Configure this plugin (avatar options)', 31, 0),
(32, 'tpref', 'Thread Prefixes', 'Show preixes o threads on index', 32, 0),
(33, 'hidecontent', 'Hide Content', 'Settings for Hide Content plugin', 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_settings`
--

CREATE TABLE `mybb_settings` (
  `sid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `optionscode` text NOT NULL,
  `value` text NOT NULL,
  `disporder` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `gid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `isdefault` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_settings`
--

INSERT INTO `mybb_settings` (`sid`, `name`, `title`, `description`, `optionscode`, `value`, `disporder`, `gid`, `isdefault`) VALUES
(1, 'boardclosed', 'Board Closed', 'If you need to close your forums to make some changes or perform an upgrade, this is the global switch. Viewers will not be able to view your forums, however, they will see a message with the reason you specify below. Administrators will still be able to view the forums.', 'yesno', '0', 1, 1, 1),
(2, 'boardclosed_reason', 'Board Closed Reason', 'If your forum is closed, you can set a message here that your visitors will be able to see when they visit your forums. You can leave this empty to use the language files.', 'textarea', 'These forums are currently closed for maintenance. Please check back later.', 2, 1, 1),
(3, 'bbname', 'Board Name', 'The name of your community. We recommend that it is not over 75 characters.', 'text', 'Crystallicum', 1, 2, 1),
(4, 'bburl', 'Board URL', 'The url to your forums.<br />Include the http://. Do NOT include a trailing slash.', 'text', 'http://localhost', 2, 2, 1),
(5, 'homename', 'Homepage Name', 'The name of your homepage. This will appear in the footer with a link to it.', 'text', 'Crystallicum', 3, 2, 1),
(6, 'homeurl', 'Homepage URL', 'The full URL of your homepage. This will be linked to in the footer along with its name.', 'text', 'http://localhost/', 4, 2, 1),
(7, 'adminemail', 'Admin Email', 'The administrator\'s email address. This will be used for outgoing emails sent via the forums.', 'text', '', 5, 2, 1),
(8, 'returnemail', 'Return Email', 'The email address for incoming replies to outgoing emails sent via the forums and is useful for no-reply accounts. Leave blank to use the admin email address instead.', 'text', '', 6, 2, 1),
(9, 'contactemail', 'Contact Email', 'The email address that messages sent via the contact form (contact.php) will be sent to. Leave blank to use the admin email address instead.', 'text', '', 7, 2, 1),
(10, 'contactlink', 'Contact Us Link', 'This will be used for the Contact Us link on the bottom of all the forum pages. Can either be an email address (using mailto:email@website.com) or a hyperlink.', 'text', 'contact.php', 8, 2, 1),
(11, 'cookiedomain', 'Cookie Domain', 'The domain which cookies should be set to. This can remain blank. It should also start with a . so it covers all subdomains.', 'text', 'localhost', 9, 2, 1),
(12, 'cookiepath', 'Cookie Path', 'The path which cookies are set to. We recommend setting this to the full directory path to your forums with a trailing slash.', 'text', '/', 10, 2, 1),
(13, 'cookieprefix', 'Cookie Prefix', 'A prefix to append to all cookies set by MyBB. This is useful if you wish to install multiple copies of MyBB on the one domain or have other software installed which conflicts with the names of the cookies in MyBB. If not specified, no prefix will be used.', 'text', '', 11, 2, 1),
(14, 'cookiesamesiteflag', 'SameSite Cookie Flag', 'Authentication cookies will carry the SameSite flag to prevent CSRF attacks. Keep this disabled if you expect cross-origin POST requests.', 'yesno', '1', 12, 2, 1),
(15, 'cookiesecureflag', 'Secure Cookie Flag', 'Cookies can be set with the Secure flag to prevent them from being sent over unencrypted connections. You should enable this setting only if your forum works correctly under HTTPS.', 'yesno', '0', 13, 2, 1),
(16, 'showvernum', 'Show Version Numbers', 'Allows you to turn off the public display of version numbers in MyBB.', 'onoff', '0', 14, 2, 1),
(17, 'mailingaddress', 'Mailing Address', 'If you have a mailing address, enter it here. This is shown on the COPPA compliance form.', 'textarea', '', 15, 2, 1),
(18, 'faxno', 'Contact Fax No', 'If you have a fax number, enter it here. This is shown on the COPPA compliance form.', 'text', '', 16, 2, 1),
(19, 'bblanguage', 'Default Language', 'The default language that MyBB should use for guests and for users without a selected language in their user control panel.', 'language', 'polish', 1, 3, 1),
(20, 'captchaimage', 'CAPTCHA Images for Registration & Posting', 'To help prevent automated registrations and postings, you can choose a type of image verification for the user to complete. Please see the MyBB Docs for more information on CAPTCHAs.', 'select\n0=No CAPTCHA\n1=MyBB Default CAPTCHA\n4=NoCAPTCHA reCAPTCHA\n5=reCAPTCHA invisible\n6=hCaptcha\n7=hCaptcha invisible\n8=reCAPTCHA v3', '1', 2, 3, 1),
(21, 'recaptchapublickey', 'reCAPTCHA Public Key', 'Your reCAPTCHA public key.', 'text', '', 3, 3, 1),
(22, 'recaptchaprivatekey', 'reCAPTCHA Private Key', 'Your reCAPTCHA private key.', 'text', '', 4, 3, 1),
(23, 'recaptchascore', 'reCAPTCHA v3 Score', 'Set the user rejection score for reCAPTCHA v3. 1.0 is very likely a genuine user, 0.0 is very likely a bot', 'numeric\nmin=0\nmax=1\nstep=0.01', '0.5', 5, 3, 1),
(24, 'hcaptchapublickey', 'hCaptcha Public Key', 'Your hCaptcha public key.', 'text', '', 6, 3, 1),
(25, 'hcaptchaprivatekey', 'hCaptcha Private Key', 'Your hCaptcha private key.', 'text', '', 7, 3, 1),
(26, 'hcaptchatheme', 'hCaptcha Theme', 'Set the color of the hCaptcha Widget.', 'select\nlight=Light\ndark=Dark', 'light', 8, 3, 1),
(27, 'hcaptchasize', 'hCaptcha Size', 'Set the size of the hCaptcha Widget.', 'select\nnormal=Normal\ncompact=Compact', 'normal', 9, 3, 1),
(28, 'reportmethod', 'Reported Content Notification Method', 'Please select from the list how you would like moderators to be notified when content is reported. Note: Moderators are only notified for posts in forums they moderate or all content if they are a super moderator.', 'radio\ndb=Shown in the Mod CP only\npms=Sent as Private Messages and shown in the Mod CP\nemail=Sent via Email and shown in the Mod CP', 'db', 10, 3, 1),
(29, 'decpoint', 'Decimal Point', 'The decimal point you use in your region.', 'text', '.', 11, 3, 1),
(30, 'thousandssep', 'Thousands Numeric Separator', 'The punctuation you want to use. For example, a setting of \',\' with the number 1200 will give you 1,200.', 'text', ',', 12, 3, 1),
(31, 'showlanguageselect', 'Show Language Selector in Footer', 'Set to No if you do not want to show the language selection area in the footer of all pages in the board. If you only have one language installed this setting will be ignored.', 'yesno', '1', 13, 3, 1),
(32, 'showthemeselect', 'Show Theme Selector in Footer', 'Set to No if you do not want to show the theme selection area in the footer of all pages in the board.', 'yesno', '1', 14, 3, 1),
(33, 'maxmultipagelinks', 'Maximum Page Links in Pagination', 'Here you can set the number of next and previous page links to show in the pagination for threads or forums with more than one page of results. Set to 0 to disable the limitation.', 'numeric\nmin=0', '5', 15, 3, 1),
(34, 'jumptopagemultipage', 'Show Jump To Page form in Pagination', 'Do you want to show a \"jump to page\" form in pagination if number of pages exceeds \"Maximum Page Links in Pagination\"?', 'yesno', '1', 16, 3, 1),
(35, 'no_plugins', 'Disable All Plugins', 'Setting this to Yes will disable all plugins without deactivating or uninstalling them. This is equivalent of manually defining NO_PLUGINS at the top of ./inc/init.php.', 'yesno', '0', 17, 3, 1),
(36, 'deleteinvites', 'Expire Old Group Invites', 'The number of days until any pending invites to user groups expire. Set to 0 to disable.', 'numeric\nmin=0', '180', 18, 3, 1),
(37, 'redirects', 'Friendly Redirection Pages', 'This will enable friendly redirection pages instead of bumping the user directly to the page.', 'onoff', '0', 19, 3, 1),
(38, 'enableforumjump', 'Enable Forum Jump Menu?', 'The forum jump menu is shown on the forum and thread view pages. It can add significant load to your forums if you have a large amount of forums. Set to \'No\' to disable it.', 'yesno', '1', 20, 3, 1),
(39, 'seourls', 'Enable search engine friendly URLs?', 'Search engine friendly URLs change the MyBB links to shorter URLs which search engines prefer and are easier to type. showthread.php?tid=1 becomes thread-1.html. <strong>Once this setting is enabled you need to make sure you have the MyBB .htaccess in your MyBB root directory (or the equivalent for your web server). Automatic detection may not work on all servers.</strong> Please see the <a href=\"https://docs.mybb.com/1.8/administration/configuring-search-engine-friendly-URLs\">MyBB Docs</a> for assistance.', 'select\nauto=Automatic Detection\nyes=Enabled\nno=Disabled', 'auto', 1, 4, 1),
(40, 'seourls_archive', 'Enable search engine friendly URLs in Archive?', 'Search engine friendly URLs can be used in the archive. <strong>Once this setting is enabled ensure the archive still works as expected.</strong>', 'yesno', '0', 2, 4, 1),
(41, 'gzipoutput', 'Use GZip Page Compression?', 'Do you want to compress pages in GZip format when they are sent to the browser? This means quicker downloads for your visitors, and less traffic usage for you.', 'yesno', '0', 3, 4, 1),
(42, 'gziplevel', 'GZip Page Compression Level', 'Set the level for GZip Page Compression from 0-9.  (0=no compression, 9=maximum compression). A level of 4 is recommended for most installations.', 'numeric\nmin=0\nmax=9', '4', 4, 4, 1),
(43, 'nocacheheaders', 'Send No Cache Headers', 'With this option you can enforce dynamic pages to be re-validated by browsers and not cached by proxies.', 'yesno', '1', 5, 4, 1),
(44, 'load', '*NIX Load Limiting', 'Limit the maximum server load before MyBB rejects people. 0 for none. Recommended limit is 5.0.', 'text', '0', 6, 4, 1),
(45, 'tplhtmlcomments', 'Output template start/end comments?', 'This will enable or disable the output of template start/end comments in the HTML.', 'yesno', '1', 7, 4, 1),
(46, 'use_xmlhttprequest', 'Enable XMLHttp request features?', 'This will enable or disable the XMLHttp request features.', 'yesno', '1', 8, 4, 1),
(47, 'extraadmininfo', 'Advanced Stats / Debug information', 'Shows Server load, generation time, memory usage, etc on the bottom of all pages in the root folder. Please note that only administrators see this information.', 'yesno', '1', 9, 4, 1),
(48, 'uploadspath', 'Uploads Path', 'The path used for all board uploads. It <b>must be chmod 777</b> (on *nix servers). If it is a relative path then it is taken to be relative to the MyBB root directory. Default value: \"./uploads\" (relative path).', 'text', './uploads', 10, 4, 1),
(49, 'useerrorhandling', 'Use Error Handling', 'If you do not wish to use the integrated error handling for MyBB, you may turn this option off. However, it is recommended that it stay on.', 'onoff', '1', 11, 4, 1),
(50, 'errorlogmedium', 'Error Logging Medium', 'The type of the error handling to use.', 'select\nnone=Neither\nlog=Log errors\nemail=Email errors\nboth=Log and email errors\n', 'none', 12, 4, 1),
(51, 'errortypemedium', 'Error Type Medium', 'The type of errors to show with detailed information. It is recommended you hide errors and warnings on a production forum and log them instead.', 'select\nwarning=Warnings\nerror=Errors\nboth=Warnings and Errors\nnone=Hide Errors and Warnings\n', 'none', 13, 4, 1),
(52, 'errorloglocation', 'Error Logging Location', 'The location of the log to send errors to, if specified.', 'text', './error.log', 14, 4, 1),
(53, 'ip_forwarded_check', 'Scrutinize User\'s IP address?', 'Do you want to check a user\'s IP address for HTTP_X_FORWARDED_FOR or HTTP_X_REAL_IP headers? If you\'re unsure, set this to No.', 'yesno', '0', 15, 4, 1),
(54, 'minifycss', 'Minify Stylesheets?', 'Do you want to minify stylesheets? Choosing Yes can save bandwidth and overall provide faster page loads.', 'yesno', '0', 16, 4, 1),
(55, 'usecdn', 'Use a CDN?', 'You can utilise a CDN (Content Delivery Network) to offload the loading of static files such as Stylesheets, JavaScript and Images. Do you wish to enable this functionality?', 'yesno', '0', 17, 4, 1),
(56, 'cdnurl', 'URL to use for static files', 'If you have enabled the CDN option above, please enter the base URL to serve static content from. This should be a valid URL without a trailing slash.', 'text', '', 18, 4, 1),
(57, 'cdnpath', 'Path to store static files', 'If you have enabled the CDN option above, please optionally enter a full path to store static files. This is only useful for \"Push\" type CDNs or local sub-domain setups. This path should not have a trailing slash.', 'text', '', 19, 4, 1),
(58, 'dateformat', 'Date Format', 'The format of the dates used on the forum. This format uses the PHP date() function. We recommend not changing this unless you know what you\'re doing.', 'text', 'd-m-Y', 1, 5, 1),
(59, 'timeformat', 'Time Format', 'The format of the times used on the forum. This format uses PHP\'s date() function. We recommend not changing this unless you know what you\'re doing.', 'text', 'h:i A', 2, 5, 1),
(60, 'datetimesep', 'Date/Time Separator', 'Where MyBB joins date and time formats this setting is used to separate them (typically a space or comma).', 'text', ', ', 3, 5, 1),
(61, 'regdateformat', 'Registered Date Format', 'The format used on showthread where it shows when the user registered.', 'text', 'M Y', 4, 5, 1),
(62, 'timezoneoffset', 'Default Timezone Offset', 'Here you can set the default timezone offset for guests and members using the default offset.', 'php\n<select name=\\\"upsetting[{$setting[\'name\']}]\\\">\n<option value=\\\"-12\\\" \".($setting[\'value\'] == -12?\"selected=\\\"selected\\\"\":\"\").\">GMT -12:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, -12).\")</option>\n<option value=\\\"-11\\\" \".($setting[\'value\'] == -11?\"selected=\\\"selected\\\"\":\"\").\">GMT -11:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, -11).\")</option>\n<option value=\\\"-10\\\" \".($setting[\'value\'] == -10?\"selected=\\\"selected\\\"\":\"\").\">GMT -10:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, -10).\")</option>\n<option value=\\\"-9.5\\\" \".($setting[\'value\'] == -9.5?\"selected=\\\"selected\\\"\":\"\").\">GMT -9:30 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, -9.5).\")</option>\n<option value=\\\"-9\\\" \".($setting[\'value\'] == -9?\"selected=\\\"selected\\\"\":\"\").\">GMT -9:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, -9).\")</option>\n<option value=\\\"-8\\\" \".($setting[\'value\'] == -8?\"selected=\\\"selected\\\"\":\"\").\">GMT -8:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, -8).\")</option>\n<option value=\\\"-7\\\" \".($setting[\'value\'] == -7?\"selected=\\\"selected\\\"\":\"\").\">GMT -7:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, -7).\")</option>\n<option value=\\\"-6\\\" \".($setting[\'value\'] == -6?\"selected=\\\"selected\\\"\":\"\").\">GMT -6:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, -6).\")</option>\n<option value=\\\"-5\\\" \".($setting[\'value\'] == -5?\"selected=\\\"selected\\\"\":\"\").\">GMT -5:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, -5).\")</option>\n<option value=\\\"-4.5\\\" \".($setting[\'value\'] == -4.5?\"selected=\\\"selected\\\"\":\"\").\">GMT -4:30 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, -4.5).\")</option>\n<option value=\\\"-4\\\" \".($setting[\'value\'] == -4?\"selected=\\\"selected\\\"\":\"\").\">GMT -4:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, -4).\")</option>\n<option value=\\\"-3.5\\\" \".($setting[\'value\'] == -3.5?\"selected=\\\"selected\\\"\":\"\").\">GMT -3:30 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, -3.5).\")</option>\n<option value=\\\"-3\\\" \".($setting[\'value\'] == -3?\"selected=\\\"selected\\\"\":\"\").\">GMT -3:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, -3).\")</option>\n<option value=\\\"-2\\\" \".($setting[\'value\'] == -2?\"selected=\\\"selected\\\"\":\"\").\">GMT -2:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, -2).\")</option>\n<option value=\\\"-1\\\" \".($setting[\'value\'] == -1?\"selected=\\\"selected\\\"\":\"\").\">GMT -1:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, -1).\")</option>\n<option value=\\\"0\\\" \".($setting[\'value\'] == 0?\"selected=\\\"selected\\\"\":\"\").\">GMT (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 0).\")</option>\n<option value=\\\"+1\\\" \".($setting[\'value\'] == 1?\"selected=\\\"selected\\\"\":\"\").\">GMT +1:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 1).\")</option>\n<option value=\\\"+2\\\" \".($setting[\'value\'] == 2?\"selected=\\\"selected\\\"\":\"\").\">GMT +2:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 2).\")</option>\n<option value=\\\"+3\\\" \".($setting[\'value\'] == 3?\"selected=\\\"selected\\\"\":\"\").\">GMT +3:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 3).\")</option>\n<option value=\\\"+3.5\\\" \".($setting[\'value\'] == 3.5?\"selected=\\\"selected\\\"\":\"\").\">GMT +3:30 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 3.5).\")</option>\n<option value=\\\"+4\\\" \".($setting[\'value\'] == 4?\"selected=\\\"selected\\\"\":\"\").\">GMT +4:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 4).\")</option>\n<option value=\\\"+4.5\\\" \".($setting[\'value\'] == 4.5?\"selected=\\\"selected\\\"\":\"\").\">GMT +4:30 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 4.5).\")</option>\n<option value=\\\"+5\\\" \".($setting[\'value\'] == 5?\"selected=\\\"selected\\\"\":\"\").\">GMT +5:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 5).\")</option>\n<option value=\\\"+5.5\\\" \".($setting[\'value\'] == 5.5?\"selected=\\\"selected\\\"\":\"\").\">GMT +5:30 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 5.5).\")</option>\n<option value=\\\"+5.75\\\" \".($setting[\'value\'] == 5.75?\"selected=\\\"selected\\\"\":\"\").\">GMT +5:45 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 5.75).\")</option>\n<option value=\\\"+6\\\" \".($setting[\'value\'] == 6?\"selected=\\\"selected\\\"\":\"\").\">GMT +6:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 6).\")</option>\n<option value=\\\"+6.5\\\" \".($setting[\'value\'] == 6.5?\"selected=\\\"selected\\\"\":\"\").\">GMT +6:30 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 6.5).\")</option>\n<option value=\\\"+7\\\" \".($setting[\'value\'] == 7?\"selected=\\\"selected\\\"\":\"\").\">GMT +7:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 7).\")</option>\n<option value=\\\"+8\\\" \".($setting[\'value\'] == 8?\"selected=\\\"selected\\\"\":\"\").\">GMT +8:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 8).\")</option>\n<option value=\\\"+8.5\\\" \".($setting[\'value\'] == 8.5?\"selected=\\\"selected\\\"\":\"\").\">GMT +8:30 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 8.5).\")</option>\n<option value=\\\"+8.75\\\" \".($setting[\'value\'] == 8.75?\"selected=\\\"selected\\\"\":\"\").\">GMT +8:45 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 8.75).\")</option>\n<option value=\\\"+9\\\" \".($setting[\'value\'] == 9?\"selected=\\\"selected\\\"\":\"\").\">GMT +9:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 9).\")</option>\n<option value=\\\"+9.5\\\" \".($setting[\'value\'] == 9.5?\"selected=\\\"selected\\\"\":\"\").\">GMT +9:30 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 9.5).\")</option>\n<option value=\\\"+10\\\" \".($setting[\'value\'] == 10?\"selected=\\\"selected\\\"\":\"\").\">GMT +10:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 10).\")</option>\n<option value=\\\"+10.5\\\" \".($setting[\'value\'] == 10.5?\"selected=\\\"selected\\\"\":\"\").\">GMT +10:30 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 10.5).\")</option>\n<option value=\\\"+11\\\" \".($setting[\'value\'] == 11?\"selected=\\\"selected\\\"\":\"\").\">GMT +11:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 11).\")</option>\n<option value=\\\"+11.5\\\" \".($setting[\'value\'] == 11.5?\"selected=\\\"selected\\\"\":\"\").\">GMT +11:30 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 11.5).\")</option>\n<option value=\\\"+12\\\" \".($setting[\'value\'] == 12?\"selected=\\\"selected\\\"\":\"\").\">GMT +12:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 12).\")</option>\n<option value=\\\"+12.75\\\" \".($setting[\'value\'] == 12.75?\"selected=\\\"selected\\\"\":\"\").\">GMT +12:45 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 12.75).\")</option>\n<option value=\\\"+13\\\" \".($setting[\'value\'] == 13?\"selected=\\\"selected\\\"\":\"\").\">GMT +13:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 13).\")</option>\n<option value=\\\"+14\\\" \".($setting[\'value\'] == 14?\"selected=\\\"selected\\\"\":\"\").\">GMT +14:00 Hours (\".my_date($mybb->settings[\'timeformat\'], TIME_NOW, 14).\")</option>\n</select>', '0', 5, 5, 1),
(63, 'dstcorrection', 'Day Light Savings Time', 'If times are an hour out above and your timezone is selected correctly, enable day light savings time correction.', 'yesno', '1', 6, 5, 1),
(64, 'showdescriptions', 'Show Forum Descriptions?', 'This option will allow you to turn off showing the descriptions for forums.', 'yesno', '1', 1, 6, 1),
(65, 'subforumsindex', 'Subforums to show on Index listing', 'The number of subforums that you wish to show inside forums on the index and forumdisplay pages. Set to 0 to not show the subforum list', 'numeric\nmin=0', '10', 2, 6, 1),
(66, 'subforumsstatusicons', 'Show Subforum Status Icons?', 'Show icons indicating whether or not a subforum contains new posts or not?  This won\'t have any effect unless you enabled subforums display on the index.', 'yesno', '1', 3, 6, 1),
(67, 'hideprivateforums', 'Hide Private Forums?', 'You can hide private forums by turning this option on. This option also hides forums on the forum jump and all subforums.', 'yesno', '1', 4, 6, 1),
(68, 'modlist', 'Forums\' Moderator Listing', 'Here you can turn on or off the listing of moderators for each forum on index.php and forumdisplay.php', 'onoff', '1', 5, 6, 1),
(69, 'showbirthdays', 'Show Today\'s Birthdays?', 'Do you want to show today\'s birthdays on the forum homepage?', 'yesno', '1', 6, 6, 1),
(70, 'showbirthdayspostlimit', 'Only Show Birthdays with x Posts', 'You can choose to only display users with at least the following amount of posts. A setting of 0 will show all users who have a birthday today.', 'numeric\nmin=0', '0', 7, 6, 1),
(71, 'showwol', 'Show Who\'s Online?', 'Display the currently active users on the forum home page.', 'yesno', '1', 8, 6, 1),
(72, 'showindexstats', 'Show Small Stats Section', 'Do you want to show the total number of threads, posts, members, and the last member on the forum home?', 'yesno', '1', 9, 6, 1),
(73, 'showforumviewing', 'Show x viewing forum', 'Displays the currently active users viewing each forum.', 'yesno', '0', 10, 6, 1),
(74, 'threadsperpage', 'Threads Per Page', 'The number of threads to display per page on the forum display.', 'numeric\nmin=1', '20', 1, 7, 1),
(75, 'hottopic', 'Replies For Hot Topic', 'The number of replies that is needed for a topic to be considered \'hot\'.', 'numeric\nmin=0', '20', 2, 7, 1),
(76, 'hottopicviews', 'Views For Hot Topic', 'The number of views a thread can have before it is considered \'hot\'.', 'numeric\nmin=0', '150', 3, 7, 1),
(77, 'usertppoptions', 'User Selectable Threads Per Page', 'If you would like to allow users to select how many threads per page are shown in a forum, enter the options they should be able to select separated with commas. If this is left blank they will not be able to choose how many threads are shown per page.', 'text', '10,15,20,25,30,40,50', 4, 7, 1),
(78, 'dotfolders', 'Use \'dot\' Icons', 'Do you want to show dots on the thread indicators of threads users have participated in.', 'yesno', '1', 5, 7, 1),
(79, 'allowthreadratings', 'Use Thread Ratings?', 'Allow users to rate threads?', 'yesno', '0', 6, 7, 1),
(80, 'browsingthisforum', 'Users Browsing this Forum', 'Here you can turn off the \'users browsing this forum\' feature.', 'onoff', '1', 7, 7, 1),
(81, 'announcementlimit', 'Announcements Limit', 'The number of forum announcements to  show in the thread listing on the forum display pages. Set to 0 to disable announcements altogether.', 'numeric\nmin=0', '2', 8, 7, 1),
(82, 'readparentforums', 'Attempt to Mark Parent Forums as Read', 'When set to Yes, this setting will attempt to mark the parent forums of a sub-forum as read if there are no more unread posts. Please note that this setting can lead to a decrease in performance and multiple database queries and therefore must be treated as experimental. See the <a href=\"https://docs.mybb.com/versions/1.6.5/\">MyBB Docs</a> for more information regarding this change.', 'yesno', '0', 9, 7, 1),
(83, 'hidecontent_reply', 'Reply to Unlock?', 'Select whether or not users can reply to the thread in order to unlock the hidden content within the thread.', 'yesno', '1', 4, 33, 0),
(84, 'postsperpage', 'Posts Per Page:', 'The number of posts to display per page. We recommend its not higher than 20 for people with slower connections.', 'numeric\nmin=0', '15', 2, 8, 1),
(85, 'userpppoptions', 'User Selectable Posts Per Page', 'If you would like to allow users to select how many posts are shown per page in a thread, enter the options they should be able to select separated with commas. If this is left blank they will not be able to choose how many posts are shown per page.', 'text', '5,10,15,20,25,30,40,50', 3, 8, 1),
(86, 'postmaxavatarsize', 'Maximum Avatar Dimensions in Posts', 'The maximum dimensions for avatars when being displayed in a post (width and height separated by \'x\' or \'|\') . If an avatar is too large, it will automatically be scaled down.', 'text', '55x55', 4, 8, 1),
(87, 'threadreadcut', 'Read Threads in Database (Days)', 'The number of days that you wish to keep thread read information in the database. For large boards, we do not recommend a high number as the board will become slower. Set to 0 to disable.', 'numeric\nmin=0', '7', 5, 8, 1),
(88, 'threadusenetstyle', 'Usenet Style Thread View', 'Selecting Yes will cause posts to look similar to how posts look in USENET. No will cause posts to look the modern way.', 'yesno', '0', 6, 8, 1),
(89, 'quickreply', 'Show Quick Reply Form', 'Allows you to set whether or not the quick reply form will be shown at the bottom of threads.', 'onoff', '1', 7, 8, 1),
(90, 'multiquote', 'Show Multi-quote Buttons', 'The multi-quote button allows users to select a series of posts then click Reply and have those posts quoted in their message.', 'onoff', '1', 8, 8, 1),
(91, 'showsimilarthreads', 'Show \'Similar Threads\' Table', 'The Similar Threads table shows threads that are relevant to the thread being read. You can set the relevancy below.', 'yesno', '0', 9, 8, 1),
(92, 'similarityrating', 'Similar Threads Relevancy Rating', 'This allows you to limit similar threads to ones more relevant (0 being not relevant). This number should not be over 10 and should not be set low (<5) for large forums. Does not apply to PgSQL databases.', 'numeric\nmin=0', '1', 10, 8, 1),
(93, 'similarlimit', 'Similar Threads Limit', 'Here you can change the total amount of similar threads to be shown in the similar threads table. It is recommended that it is not over 15 for 56k users.', 'numeric\nmin=0', '10', 11, 8, 1),
(94, 'showforumpagesbreadcrumb', 'Show Forum Multipage Dropdown', 'If the forum has more than 1 page of threads, do you want to display a dropdown pagination menu in the breadcrumbs?', 'yesno', '1', 12, 8, 1),
(95, 'browsingthisthread', 'Users Browsing this Thread', 'Here you can turn off the \'users browsing this thread\' feature.', 'yesno', '1', 13, 8, 1),
(96, 'delayedthreadviews', 'Delayed Thread View Updates', 'If this setting is enabled, the number of thread views for threads will be updated in the background by the task schedule system. If not enabled, thread view counters are incremented instantly.', 'onoff', '0', 14, 8, 1),
(97, 'threadviews_countspiders', 'Increment Thread View Count on Spider Visits?', 'Here you can include views by spiders in the thread view counter.', 'yesno', '0', 15, 8, 1),
(98, 'threadviews_countguests', 'Increment Thread View Count on Guest Visits?', 'Here you can include views by guests in the thread view counter.', 'yesno', '1', 16, 8, 1),
(99, 'threadviews_countthreadauthor', 'Increment Thread View Count on Thread Author Visits?', 'Here you can include views by the thread author in the thread view counter.', 'yesno', '1', 17, 8, 1),
(100, 'disableregs', 'Disable Registrations', 'Allows you to turn off the capability for users to register with one click.', 'yesno', '0', 1, 9, 1),
(101, 'regtype', 'Registration Method', 'Please select the method of registration to use when users register.', 'select\ninstant=Instant Activation\nverify=Send Email Verification\nrandompass=Send Random Password\nadmin=Administrator Activation\nboth=Email Verification & Administrator Activation', 'verify', 2, 9, 1),
(102, 'awactialert', 'Awaiting Activation Notification', 'Do you want to show a notification to administrators about accounts awaiting activation?', 'yesno', '0', 3, 9, 1),
(103, 'forcelogin', 'Force Users to Login', 'Setting this to Yes will force guests to login or register in order to access the board.', 'yesno', '0', 4, 9, 1),
(104, 'minnamelength', 'Minimum Username Length', 'The minimum number of characters a username can be when a user registers.', 'numeric\nmin=1', '3', 5, 9, 1),
(105, 'maxnamelength', 'Maximum Username Length', 'The maximum number of characters a username can be when a user registers.', 'numeric\nmin=1', '50', 6, 9, 1),
(106, 'minpasswordlength', 'Minimum Password Length', 'The minimum number of characters a password should contain.', 'numeric\nmin=1', '3', 7, 9, 1),
(107, 'maxpasswordlength', 'Maximum Password Length', 'The maximum number of characters a password should contain.', 'numeric\nmin=1', '30', 8, 9, 1),
(108, 'requirecomplexpasswords', 'Require a complex password?', 'Do you want users to use complex passwords? Complex passwords require an upper case letter, lower case letter and a number.', 'yesno', '0', 9, 9, 1),
(109, 'betweenregstime', 'Time Between Registrations', 'The amount of time (in hours) to disallow registrations for users who have already registered an account under the same IP address. Set to 0 to disable.', 'numeric\nmin=0', '24', 10, 9, 1),
(110, 'maxregsbetweentime', 'Maximum Registrations Per IP Address', 'This option allows you to set the maximum amount of times a certain user can register within the timeframe specified above.', 'numeric\nmin=0', '8', 11, 9, 1),
(111, 'allowmultipleemails', 'Allow emails to be registered multiple times?', 'Select Yes if you wish to allow users to sign up with the same email more than once otherwise select No.', 'yesno', '1', 12, 9, 1),
(112, 'emailkeep', 'Users Keep Email', 'If a current user has an email already registered in your banned list, should they be allowed to keep it?', 'yesno', '0', 13, 9, 1),
(113, 'hiddencaptchaimage', 'Display a hidden CAPTCHA', 'Do you want to display a hidden CAPTCHA field when a user registers? This may prevent spambots from registering on your forum.', 'yesno', '1', 14, 9, 1),
(114, 'hiddencaptchaimagefield', 'Hidden CAPTCHA field', 'You can choose a name for your hidden CAPTCHA field below.', 'text', 'email3', 15, 9, 1),
(115, 'usereferrals', 'Use Referrals System', 'Do you want to use the user referrals system on these forums?', 'yesno', '1', 16, 9, 1),
(116, 'referralsperpage', 'Referrals Per Page', 'The number of members to show per page on the referral list.', 'numeric', '20', 17, 9, 1),
(117, 'coppa', 'COPPA Compliance', 'If you wish to enable <a href=\"https://www.ftc.gov/enforcement/rules/rulemaking-regulatory-reform-proceedings/childrens-online-privacy-protection-rule\">COPPA</a> support on your forums, please select the registration allowance below.', 'select\nenabled=Enabled\ndeny=Deny users under the age of 13\ndisabled=Disable this feature', 'disabled', 18, 9, 1),
(118, 'username_method', 'Allowed Login Methods', 'The login methods you wish to allow for the username field. Username only, Email only, or allow both.\n<br />To allow email as a valid login method, no users are allowed to share email addresses.', 'select\n0=Username Only\n1=Email Only\n2=Both Username and Email', '0', 19, 9, 1),
(119, 'failedcaptchalogincount', 'Number of failed logins before verification required', 'The number of times to allow someone to attempt to login before required to enter a CAPTCHA verification. Set to 0 to disable', 'numeric\nmin=0', '3', 20, 9, 1),
(120, 'failedlogincount', 'Number of times to allow failed logins', 'The number of times to allow someone to attempt to login. Set to 0 to disable.', 'numeric\nmin=0', '10', 21, 9, 1),
(121, 'failedlogintime', 'Time between failed logins', 'The amount of time (in minutes) before someone can try to login again, after they have failed to login the first time. Used if value above is not 0.', 'numeric\nmin=0', '15', 22, 9, 1),
(122, 'failedlogintext', 'Display number of failed logins', 'Do you wish to display a line of text telling the user how many more login attempts they have?', 'yesno', '1', 23, 9, 1),
(123, 'regtime', 'Minimum Registration Time', 'The minimum time in seconds a user must take to fill out the registration form. Used to prevent automated bot signups. Setting this to 0 to disables the function.', 'numeric\nmin=0', '15', 24, 9, 1),
(124, 'securityquestion', 'Show Security Question', 'Do you wish to show a question that users must answer when registering?', 'yesno', '1', 25, 9, 1),
(125, 'sigmycode', 'Allow MyCode in Signatures', 'Do you want to allow MyCode to be used in users\' signatures?', 'yesno', '1', 1, 10, 1),
(126, 'sigcountmycode', 'MyCode affects signature length', 'Do you want MyCode to be counted as part of the limit when users use MyCode in their signature?', 'yesno', '1', 2, 10, 1),
(127, 'sigsmilies', 'Allow Smilies in Signatures', 'Do you want to allow smilies to be used in users\' signatures?', 'yesno', '1', 3, 10, 1),
(128, 'sightml', 'Allow HTML in Signatures', 'Do you want to allow HTML to be used in users\' signatures?', 'yesno', '1', 4, 10, 1),
(129, 'sigimgcode', 'Allow [img] Code in Signatures', 'Do you want to allow [img] code to be used in users\' signatures?', 'yesno', '1', 5, 10, 1),
(130, 'maxsigimages', 'Maximum Number of Images per Signature', 'Enter the maximum number of images (including smilies) a user can put in their signature. Set to 0 to disable images in signatures altogether.', 'numeric\nmin=0', '1.0E+40', 6, 10, 1),
(131, 'siglength', 'Length limit in Signatures', 'The maximum number of characters a user can place in a signature. Set to 0 to disable the limitation.', 'numeric\nmin=0', '1.0E+42', 7, 10, 1),
(132, 'hidesignatures', 'Hide Signatures To Groups', 'Select the usergroups you wish to hide signatures from.', 'groupselect', '', 8, 10, 1),
(133, 'hidewebsite', 'Hide Websites To Groups', 'Select the usergroups you wish to hide websites from.', 'groupselect', '', 9, 10, 1),
(134, 'useravatar', 'Default User Avatar', 'If the user does not set a custom avatar this image will be used instead. If you want to use a different image for different themes, please use <strong>{theme}</strong> to represent the image directory of each theme.', 'text', 'images/default_avatar.png', 10, 10, 1),
(135, 'useravatardims', 'Default Avatar Dimensions', 'The dimensions of the default avatar; width and height separated by \'x\' or \'|\' (e.g. 40|40 or 40x40).', 'text', '200x320', 11, 10, 1),
(136, 'useravatarrating', 'Gravatar Rating', 'Allows you to set the maximum rating for Gravatars if a user chooses to use one. If a user avatar is higher than this rating a default avatar will be used. The ratings are:\n\n<ul>\n<li><strong>G</strong>: suitable for display on all websites with any audience type</li>\n<li><strong>PG</strong>: may contain rude gestures, provocatively dressed individuals, the lesser swear words or mild violence</li>\n<li><strong>R</strong>: may contain such things as harsh profanity, intense violence, nudity or hard drug use</li>\n<li><strong>X</strong>: may contain hardcore sexual imagery or extremely disturbing violence</li>\n</ul>', 'select\ng=G\npg=PG\nr=R\nx=X', 'g', 12, 10, 1),
(137, 'maxavatardims', 'Maximum Avatar Dimensions', 'The maximum dimensions that an avatar can be, width and height separated by \'x\' or \'|\'. If this is left blank then there will be no dimension restriction.', 'text', '200x320', 13, 10, 1),
(138, 'avatarsize', 'Max Uploaded Avatar Size', 'Maximum file size (in kilobytes) of uploaded avatars. Set to 0 to disable the limitation.', 'numeric\nmin=0', '1.0E+29', 14, 10, 1),
(139, 'avatarresizing', 'Avatar Resizing Mode', 'If you wish to automatically resize all large avatars, provide users the option of resizing their avatar, or not resize avatars at all you can change this setting.', 'select\nauto=Automatically resize large avatars\nuser=Give users the choice of resizing large avatars\ndisabled=Disable this feature', 'auto', 15, 10, 1),
(140, 'avataruploadpath', 'Avatar Upload Path', 'This is the path where custom avatars will be uploaded to. This directory <b>must be chmod 777</b> (writable) for uploads to work.', 'text', './uploads/avatars', 16, 10, 1),
(141, 'allowremoteavatars', 'Allow Remote Avatars', 'Whether to allow the usage of avatars from remote servers. Having this enabled can expose your server\'s IP address.', 'yesno', '1', 17, 10, 1),
(142, 'customtitlemaxlength', 'Custom User Title Maximum Length', 'Maximum length a user can enter for the custom user title. Cannot be over 250 characters.', 'numeric\nmin=1\nmax=250', '40', 18, 10, 1),
(143, 'allowaway', 'Allow Away Statuses?', 'Should users be allowed to set their status to \'Away\' with a custom reason & return date?', 'yesno', '1', 19, 10, 1),
(144, 'allowbuddyonly', 'Allow Buddy-Only Messaging?', 'Allow users to send private messages only to people on their buddy list?', 'yesno', '0', 20, 10, 1),
(145, 'minmessagelength', 'Minimum Message Length', 'The minimum number of characters to post.', 'numeric\nmin=1', '5', 1, 11, 1),
(146, 'maxmessagelength', 'Maximum Message Length', 'The maximum number of characters (bytes) to allow in a message. Set 0 to allow maximum length permitted as per your database.\n<br />Tip: MySQL users (max: 65535) can change message field type manually from TEXT to MEDIUMTEXT (16777215) or LONGTEXT (4294967295) to obtain enhanced limit.', 'numeric\nmin=0', '0', 2, 11, 1),
(147, 'mycodemessagelength', 'MyCode Affects Minimum Message Length?', 'Do you want MyCode to be counted as part of the minimum limit when users use MyCode in messages?', 'yesno', '0', 3, 11, 1),
(148, 'postfloodcheck', 'Post Flood Checking', 'Set to on if you want to enable flood checking for posts. Specify the time between posts below.', 'onoff', '1', 4, 11, 1),
(149, 'postfloodsecs', 'Post Flood Time', 'Set the time (in seconds) users have to wait between posting, to be in effect; the option above must be on.', 'numeric\nmin=1', '60', 5, 11, 1),
(150, 'postmergemins', 'Post Merge Time', 'With this enabled, posts posted within x minutes by the same author right after each other, will be merged. Set the time limit (in minutes) to merge posts. Set to 0 to disable this feature. Default: 60', 'numeric\nmin=0', '60', 6, 11, 1),
(151, 'postmergefignore', 'Merge Forums to Ignore', 'Forums to exclude from the auto merge feature. Leave blank to disable.', 'forumselect', '', 7, 11, 1),
(152, 'postmergeuignore', 'Merge User Groups to Ignore', 'Select the usergroups which should be excluded from the merge feature.', 'groupselect', '4', 8, 11, 1),
(153, 'postmergesep', 'Merge Separator', 'The Separator to be used when merging two message Default: \'[hr]\'', 'text', '[hr]', 9, 11, 1),
(154, 'logip', 'Show Posting IP Addresses', 'Do you wish to show ip addresses of users who post, and who you want to show ip addresses to?', 'radio\nno=Do not show IP\nhide=Show to Admins & Mods\nshow=Show to all Users', 'no', 10, 11, 1),
(155, 'showeditedby', 'Show \'edited by\' Messages', 'Once a post is edited by a regular user, do you want to show the edited by message?', 'yesno', '1', 11, 11, 1),
(156, 'showeditedbyadmin', 'Show \'edited by\' Message for Administrators and Moderators', 'Do you want to show edited by messages for posts created by administrators and moderators?', 'yesno', '1', 12, 11, 1),
(157, 'maxpostimages', 'Maximum Images per Post', 'Enter the maximum number of images (including smilies) a user can put in their post. Set to 0 to disable this.', 'numeric\nmin=0', '10', 13, 11, 1),
(158, 'maxpostvideos', 'Maximum Videos per Post', 'Enter the maximum number of videos a user can put in their post. Set to 0 to disable this.', 'numeric\nmin=0', '1', 14, 11, 1),
(159, 'subscribeexcerpt', 'Amount of Characters for Subscription Previews', 'How many characters of the post do you want to send with the email notification of a new reply?', 'numeric\nmin=0', '100', 15, 11, 1),
(160, 'maxquotedepth', 'Maximum Nested Quote Tags', 'The maximum depth level for quote tags. When quote-replying to a post, all nested quotes which exceed this threshold are automatically removed. Note that this value is only enforced when quote-replying - it is still possible to manually enter quotes to exceed this limit, and this setting will not affect posts already submitted. Set to 0 to disable the limit.', 'numeric\nmin=0', '5', 16, 11, 1),
(161, 'polloptionlimit', 'Maximum Poll Option Length', 'The maximum length that each poll option can be. Set to 0 to disable.', 'numeric\nmin=0', '250', 17, 11, 1),
(162, 'maxpolloptions', 'Maximum Number of Poll Options', 'The maximum number of options for polls that users can post. Set to 0 to disable the limitation.', 'numeric\nmin=0', '10', 18, 11, 1),
(163, 'polltimelimit', 'Poll Time Limit', 'The number of hours until regular users cannot add a poll to their own threads (if they have the permission). Enter 0 for no limit.', 'numeric\nmin=0', '12', 19, 11, 1),
(164, 'threadreview', 'Show Thread Review', 'Show recent posts when creating a new reply?', 'yesno', '1', 20, 11, 1),
(165, 'alloweditreason', 'Allow Edit Reason', 'Do you want to allow users the ability to add an optional reason why they\'ve edited their post?', 'yesno', '1', 21, 11, 1),
(166, 'soft_delete', 'Enable Soft Delete for Users', 'If enabled, posts and threads deleted by users will be hidden and can be restored by moderators. Otherwise, these posts and threads will be deleted permanently.', 'yesno', '1', 22, 11, 1),
(167, 'announcementshtml', 'Allow HTML in Announcements', 'Allow moderators to enable HTML parsing in announcements?', 'yesno', '1', 23, 11, 1),
(168, 'showownunapproved', 'Access Own Unapproved Threads / Posts', 'Allow general users to access their own unapproved threads and posts.', 'yesno', '0', 24, 11, 1),
(169, 'enableattachments', 'Enable Attachment Functionality', 'If you wish to disable attachments on your board, set this option to No.', 'yesno', '0', 1, 12, 1),
(170, 'maxattachments', 'Maximum Attachments Per Post', 'The maximum number of attachments a user is allowed to upload per post. Set to 0 to disable.', 'numeric\nmin=0', '5', 2, 12, 1),
(171, 'attachthumbnails', 'Show Attached Thumbnails in Posts', 'How do you want images to be shown in posts?', 'radio\nyes=Thumbnail\nno=Full Size Image\ndownload=As Download Link', 'yes', 3, 12, 1),
(172, 'attachthumbh', 'Attached Thumbnail Maximum Height', 'Enter the height that attached thumbnails should be generated at.', 'numeric\nmin=1', '96', 4, 12, 1),
(173, 'attachthumbw', 'Attached Thumbnail Maximum Width', 'Enter the width that attached thumbnails should be generated at.', 'numeric\nmin=1', '96', 5, 12, 1),
(174, 'enablememberlist', 'Enable Member List Functionality', 'If you wish to disable the member list on your board, set this option to No.', 'yesno', '1', 1, 13, 1),
(175, 'membersperpage', 'Members Per Page', 'The number of members to show per page on the member list.', 'numeric\nmin=1', '20', 2, 13, 1),
(176, 'default_memberlist_sortby', 'Default Sort Field', 'Select the field that you want members to be sorted by default.', 'select\nregdate=Registration Date\npostnum=Post Count\nusername=Username\nlastvisit=Last Visit', 'postnum', 3, 13, 1),
(177, 'default_memberlist_order', 'Default Sort Order', 'Select the order that you want members to be sorted by default.<br />Ascending: A-Z / beginning-end<br />Descending: Z-A / end-beginning', 'select\nascending=Ascending\ndescending=Descending', 'descending', 4, 13, 1),
(178, 'memberlistmaxavatarsize', 'Maximum Display Avatar Dimensions', 'The maximum dimensions for avatars when being displayed in the member list, width & height separated by \'x\' or \'|\'. If an avatar is too large, it will automatically be scaled down.', 'text', '100x160', 5, 13, 1),
(179, 'enablereputation', 'Enable Reputation Functionality', 'If you wish to disable the reputation system on your board, set this option to No.', 'yesno', '1', 1, 14, 1),
(180, 'posrep', 'Allow Positive Reputation', 'Allow users to give others positive reputation?', 'yesno', '1', 2, 14, 1),
(181, 'negrep', 'Allow Negative Reputation', 'Allow users to give others negative reputation?', 'yesno', '1', 3, 14, 1),
(182, 'neurep', 'Allow Neutral Reputation', 'Allow users to give others neutral reputation?', 'yesno', '1', 4, 14, 1),
(183, 'multirep', 'Allow Multiple Reputation', 'Can users give multiple reputations to the same user?<br />Note: Does not effect \"Post\" reputation', 'yesno', '1', 5, 14, 1),
(184, 'postrep', 'Allow Post Reputations', 'Enable reputation to be linked to posts?', 'yesno', '1', 6, 14, 1),
(185, 'repsperpage', 'Reputation Comments Per Page', 'Here you can enter the number of reputation comments to show per page on the reputation system.', 'numeric\nmin=1', '15', 7, 14, 1),
(186, 'maxreplength', 'Maximum Reputation Length', 'The maximum number of characters a reputation can be.', 'numeric\nmin=1', '300', 8, 14, 1),
(187, 'minreplength', 'Minimum Reputation Length', 'The minimum number of characters a reputation can be.', 'numeric\nmin=1', '10', 9, 14, 1),
(188, 'enablewarningsystem', 'Enable Warning System?', 'Set to No to completely disable the warning system.', 'yesno', '1', 1, 15, 1),
(189, 'allowcustomwarnings', 'Allow Custom Warning Types?', 'Allow a custom reason and amount of points to be specified by those with permissions to warn users.', 'yesno', '1', 2, 15, 1),
(190, 'canviewownwarning', 'Can Users View Own Warnings?', 'Set to Yes to allow users to view recent warnings in their User CP and show their warning level to them in their profile.', 'yesno', '1', 3, 15, 1),
(191, 'allowanonwarningpms', 'Allow Anonymous Warning PMs', 'Allow moderators to send anonymous warning PMs.', 'yesno', '1', 4, 15, 1),
(192, 'maxwarningpoints', 'Maximum Warning Points', 'The maximum warning points that can be given to a user before it is considered a warning level of 100%.', 'numeric\nmin=1', '10', 5, 15, 1),
(193, 'enablepms', 'Enable Private Messaging Functionality', 'If you wish to disable the private messaging system on your board, set this option to No.', 'yesno', '1', 1, 16, 1),
(194, 'pmquickreply', 'Show Quick Reply Form', 'Allows you to set whether or not the quick reply form will be shown at the bottom of PMs.', 'yesno', '1', 2, 16, 1),
(195, 'pmsallowhtml', 'Allow HTML', 'Selecting Yes will allow HTML to be used in private messages.', 'yesno', '1', 3, 16, 1),
(196, 'pmsallowmycode', 'Allow MyCode', 'Selecting Yes will allow MyCode to be used in private messages.', 'yesno', '1', 4, 16, 1),
(197, 'pmsallowsmilies', 'Allow Smilies', 'Selecting Yes will allow Smilies to be used in private messages.', 'yesno', '1', 5, 16, 1),
(198, 'pmsallowimgcode', 'Allow [img] Code', 'Selecting Yes will allow [img] Code to be used in private messages.', 'yesno', '1', 6, 16, 1),
(199, 'pmsallowvideocode', 'Allow [video] Code', 'Selecting Yes will allow [video] Code to be used in private messages.', 'yesno', '1', 7, 16, 1),
(200, 'pmfloodsecs', 'Private Message Flood Time', 'Set the time (in seconds) users have to wait between sending messages, to be in effect. Set to 0 to disable.', 'numeric\nmin=0', '60', 8, 16, 1),
(201, 'showpmip', 'Show Private Message IP Addresses', 'Do you wish to show IP addresses of users who send private messages, and who you want to show IP addresses to?', 'radio\nno=Do not show IP\nhide=Show to Admins & Mods\nshow=Show to all Users', 'hide', 9, 16, 1),
(202, 'maxpmquotedepth', 'Maximum PM Nested Quote Tags', 'The maximum depth level for quote tags. When quote-replying to a PM, all nested quotes which exceed this threshold are automatically removed. Note that this value is only enforced when quote-replying - it is still possible to manually enter quotes to exceed this limit, and this setting will not affect PMs already sent. Set to 0 to disable the limit.', 'numeric\nmin=0', '5', 10, 16, 1),
(203, 'enablecalendar', 'Enable Calendar Functionality', 'If you wish to disable the calendar on your board, set this option to No.', 'yesno', '1', 1, 17, 1),
(204, 'wolcutoffmins', 'Cut-off Time (mins)', 'The number of minutes before a user is marked offline. Recommended: 15.', 'numeric\nmin=1', '15', 1, 18, 1),
(205, 'refreshwol', 'Refresh Who\'s online page Time (mins)', 'The number of minutes before the \"Who\'s online\" page refreshes. 0 is disabled.', 'numeric\nmin=0', '1', 2, 18, 1),
(206, 'wolorder', 'Who\'s Online Order', 'List the online users by username or last activity. Note: This setting only takes effect on the portal and index pages.', 'select\nusername=Order By Username (ASC)\nactivity=Order By Last Activity (DESC)', 'username', 3, 18, 1),
(207, 'wolusersperpage', 'Users Per Page', 'The number of users displayed per page. Set to 0 to use the default.', 'numeric\nmin=0', '20', 4, 18, 1);
INSERT INTO `mybb_settings` (`sid`, `name`, `title`, `description`, `optionscode`, `value`, `disporder`, `gid`, `isdefault`) VALUES
(208, 'woldisplayspiders', 'Who\'s Online Displays Spiders?', 'Display spiders in the online list. Note: This setting only takes effect on the portal and index pages.', 'yesno', '1', 5, 18, 1),
(209, 'enablepruning', 'Enable user pruning?', 'Set to on to prune users by the specified criteria below.', 'onoff', '0', 1, 19, 1),
(210, 'enableprunebyposts', 'Prune user by post count?', 'Set to on to prune users by their number of posts.', 'onoff', '0', 2, 19, 1),
(211, 'prunepostcount', 'Post count to prune by', 'Set to prune users less then a specified number of posts.', 'numeric\nmin=0', '0', 3, 19, 1),
(212, 'prunepostcountall', 'Count all posts?', 'If set to Yes, posts from forums which don\'t increase users\' post count will also be considered while pruning.', 'yesno', '0', 4, 19, 1),
(213, 'dayspruneregistered', 'Days registered before pruning by post count', 'Set to prune users whom have been registered for at least the given amount of days.', 'numeric\nmin=0', '90', 5, 19, 1),
(214, 'pruneunactived', 'Prune unactivated users?', 'Set to on to prune users whom are unactived.', 'onoff', '0', 6, 19, 1),
(215, 'dayspruneunactivated', 'Days registered before pruning unactivated users', 'Set to prune users whom have been unactived for at least the given amount of days.', 'numeric\nmin=0', '90', 7, 19, 1),
(216, 'prunethreads', 'Prune User Posts/Threads', 'For the users that are going to be removed, do you want to remove all of their posts/threads?', 'yesno', '0', 8, 19, 1),
(217, 'portal', 'Enable Portal', 'If you wish to disable the portal on your board, set this option to No.', 'yesno', '1', 1, 20, 1),
(218, 'portal_announcementsfid', 'Forums to pull announcements from', 'Please select the forums you wish to pull the announcements from.', 'forumselect', '-1', 2, 20, 1),
(219, 'portal_numannouncements', 'Number of announcements to show', 'Please enter the number of announcements to show per page on the main page.', 'numeric\nmin=1', '10', 3, 20, 1),
(220, 'portal_showwelcome', 'Show the Welcome box', 'Do you want to show the welcome box to visitors / users.', 'yesno', '1', 4, 20, 1),
(221, 'portal_showpms', 'Show the number of PMs to users', 'Do you want to show the number of private messages the current user has in their pm system.', 'yesno', '1', 5, 20, 1),
(222, 'portal_showstats', 'Show forum statistics', 'Do you want to show the total number of posts, threads, members and the last registered member on the portal page?', 'yesno', '1', 6, 20, 1),
(223, 'portal_showwol', 'Show Who\'s Online', 'Do you want to show the \'Who\'s online\' information to users when they visit the portal page?', 'yesno', '1', 7, 20, 1),
(224, 'portal_showsearch', 'Show Search Box', 'Do you want to show the search box, allowing users to quickly search the forums on the portal?', 'yesno', '1', 8, 20, 1),
(225, 'portal_showdiscussions', 'Show Latest Discussions', 'Do you wish to show the current forum discussions on the portal page?', 'yesno', '1', 9, 20, 1),
(226, 'portal_showdiscussionsnum', 'Number of latest discussions to show', 'Please enter the number of current forum discussions to show on the portal page.', 'numeric\nmin=1', '10', 10, 20, 1),
(227, 'portal_excludediscussion', 'Forums to exclude latest discussions from', 'Please select the forums you wish to exclude from the current forum discussions box.', 'forumselect', '', 11, 20, 1),
(228, 'searchtype', 'Search Type', 'Please select the type of search system you wish to use. You can either chose between \"Standard\", or \"Full Text\" (depending on your database). Fulltext searching is more powerful than the standard MyBB searching and quicker too.', 'php\n<select name=\\\"upsetting[{$setting[\'name\']}]\\\"><option value=\\\"standard\\\">\".(isset($lang->setting_searchtype_standard)?$lang->setting_searchtype_standard:\"Standard\").\"</option>\".($db->supports_fulltext(\"threads\") && $db->supports_fulltext_boolean(\"posts\")?\"<option value=\\\"fulltext\\\"\".($setting[\'value\']==\"fulltext\"?\" selected=\\\"selected\\\"\":\"\").\">\".(isset($lang->setting_searchtype_fulltext)?$lang->setting_searchtype_fulltext:\"Full Text\").\"</option>\":\"\").\"</select>', 'standard', 1, 21, 1),
(229, 'searchfloodtime', 'Search Flood Time (seconds)', 'Enter the time in seconds for the minimum allowed interval for searching. This prevents users from overloading your server by constantly performing searches. Set to 0 to disable.', 'numeric\nmin=0', '30', 2, 21, 1),
(230, 'minsearchword', 'Minimum Search Word Length', 'Enter the minimum number of characters an individual word in a search query can be. Set to 0 to disable (and accept the hard limit default of 3 for standard searching and 4 for MySQL fulltext searching). If you use MySQL fulltext searching and set this lower than the MySQL setting - MySQL will override it.', 'numeric\nmin=0', '0', 3, 21, 1),
(231, 'searchhardlimit', 'Hard Limit for Maximum Search Results', 'Enter the maximum amount of results to be processed. Set to 0 to disable. On larger boards (more than 1 million posts) this should be set to No more than 1000.', 'numeric\nmin=0', '0', 4, 21, 1),
(232, 'helpsearch', 'Enable Help Documents Search', 'If enabled it will allow users to search through the help documents.', 'yesno', '1', 5, 21, 1),
(233, 'bbcodeinserter', 'Clickable MyCode Editor', 'Set this option to On to show the clickable code buttons editor on posting pages. Switching this off will also disable the Smilies Inserter.', 'onoff', '1', 1, 22, 1),
(234, 'partialmode', 'Clickable MyCode Editor in Partial Mode', 'Editor will be in partial mode if this option is set to Yes. Several MyCodes, such as [quote] and [img], will be inserted into it as plain text tags.', 'yesno', '0', 2, 22, 1),
(235, 'smilieinserter', 'Clickable Smilies Inserter', 'Clickable smilies will appear on the posting pages if this option is set to \'on\'.', 'onoff', '1', 3, 22, 1),
(236, 'smilieinsertertot', 'No. of Smilies to show', 'Enter the total number of smilies to show on the clickable smilie inserter.', 'numeric\nmin=1', '20', 4, 22, 1),
(237, 'smilieinsertercols', 'No. of Smilie Cols to Show', 'Enter the number of columns you wish to show on the clickable smilie inserter.', 'numeric\nmin=1', '4', 5, 22, 1),
(238, 'allowbasicmycode', 'Allow Basic MyCodes', 'Setting this to Yes allows users to use the basic MyCodes, such as Bold, Italic, Underline, Strike-through and HR.', 'yesno', '1', 6, 22, 1),
(239, 'allowcolormycode', 'Allow Color MyCode', 'Setting this to Yes allows users to use the Color MyCode.', 'yesno', '1', 7, 22, 1),
(240, 'allowsizemycode', 'Allow Size MyCode', 'Setting this to Yes allows users to use the Size MyCode', 'yesno', '1', 8, 22, 1),
(241, 'allowfontmycode', 'Allow Font MyCode', 'Setting this to Yes allows users to use the Font MyCode.', 'yesno', '1', 9, 22, 1),
(242, 'allowlinkmycode', 'Allow Link MyCode', 'Setting this to Yes allows users to use the URL MyCode.', 'yesno', '1', 10, 22, 1),
(243, 'allowautourl', 'Automatically Parse URLs Into Links', 'Setting this to Yes will parse URLs as links.', 'yesno', '1', 11, 22, 1),
(244, 'allowemailmycode', 'Allow Email MyCode', 'Setting this to Yes allows users to use the Email MyCode.', 'yesno', '1', 12, 22, 1),
(245, 'allowalignmycode', 'Allow Alignment MyCode', 'Setting this to Yes allows users to use the Align MyCode.', 'yesno', '1', 13, 22, 1),
(246, 'allowlistmycode', 'Allow List MyCode', 'Setting this to Yes allows users to use the List MyCode.', 'yesno', '1', 14, 22, 1),
(247, 'allowcodemycode', 'Allow Code MyCodes', 'Setting this to Yes allows users to use the Code and PHP MyCodes.', 'yesno', '1', 15, 22, 1),
(248, 'allowsymbolmycode', 'Allow Symbol MyCodes', 'Setting this to Yes allows users to use the (tm), (c) and (r) MyCodes.', 'yesno', '1', 16, 22, 1),
(249, 'allowmemycode', 'Allow Me MyCodes', 'Setting this to Yes allows users to use the /me and /slap MyCodes.', 'yesno', '1', 17, 22, 1),
(250, 'guestimages', 'Parse [img] MyCode To Guests', 'Setting this to Yes will parse posted images to guests. If No, a link will be shown instead.', 'yesno', '1', 18, 22, 1),
(251, 'guestvideos', 'Parse [video] MyCode To Guests', 'Setting this to Yes will parse posted videos to guests. If No, a link will be shown instead.', 'yesno', '1', 19, 22, 1),
(252, 'cplanguage', 'Control Panel Language', 'The language of the control panel.', 'adminlanguage', 'english', 1, 23, 1),
(253, 'cpstyle', 'Control Panel Style', 'The Default style that the control panel will use. Styles are inside the styles folder. A folder name inside that folder becomes the style title and style.css inside the style title folder is the css style file.', 'cpstyle', '', 2, 23, 1),
(254, 'maxloginattempts', 'Max Number of Login Attempts', 'The max number of attempts to login before being locked out. Set to 0 to disable.', 'numeric\nmin=0', '5', 3, 23, 1),
(255, 'loginattemptstimeout', 'Login Attempts Timeout', 'If the person trying to login reaches the max number of attempts, how long should they have to wait before being able to login again (in minutes)? Set to 0 to disable.', 'numeric\nmin=0', '15', 4, 23, 1),
(256, 'mail_handler', 'Mail handler', 'The medium through which MyBB will send outgoing emails.', 'select\nmail=PHP mail\nsmtp=SMTP mail', 'mail', 1, 24, 1),
(257, 'smtp_host', 'SMTP hostname', 'The hostname of the SMTP server through which mail should be sent.<br />Only required if SMTP Mail is selected as the Mail Handler.', 'text', '', 2, 24, 1),
(258, 'smtp_port', 'SMTP port', 'The port number of the SMTP server through which mail should be sent.<br />Only required if SMTP Mail is selected as the Mail Handler.', 'text', '', 3, 24, 1),
(259, 'smtp_user', 'SMTP username', 'The username used to authenticate with the SMTP server.<br />Only required if SMTP Mail is selected as the Mail Handler, and the SMTP server requires authentication.', 'text', '', 4, 24, 1),
(260, 'smtp_pass', 'SMTP password', 'The corresponding password used to authenticate with the SMTP server.<br />Only required if SMTP Mail is selected as the Mail Handler, and the SMTP server requires authentication.', 'passwordbox', '', 5, 24, 1),
(261, 'secure_smtp', 'SMTP Encryption Mode', 'Select the encryption required to communicate with the SMTP server.<br />Only required if SMTP Mail is selected as the Mail Handler.', 'select\n0=No encryption\n1=SSL encryption\n2=TLS encryption', '0', 6, 24, 1),
(262, 'mail_parameters', 'Additional Parameters for PHP\'s mail()', '<strong>Not supported.</strong> Additional parameters can be set in the <a href=\"https://docs.mybb.com/1.8/faq/mail/#additional-parameters-for-phps-mail\">Configuration File</a> instead.', 'text', '', 7, 24, 1),
(263, 'mail_logging', 'Mail Logging', 'This setting allows you to set how to log outgoing emails sent via the \'Send Thread to a Friend\' feature. In some countries it is illegal to log all content.', 'select\n0=Disable email logging\n1=Log emails without content\n2=Log everything', '2', 8, 24, 1),
(264, 'mail_message_id', 'Add message ID in mail headers', 'Disabling this option on some shared hosts resolves issues with forum emails being marked as spam.', 'yesno', '1', 9, 24, 1),
(265, 'mail_queue_limit', 'Messages to send from the mail queue', 'The number of messages to send from the mail queue every time the Send Mail Queue task is ran.', 'numeric\nmin=1', '10', 10, 24, 1),
(266, 'contact', 'Enable Contact Page', 'Setting this to Yes will allow access to the contact page.', 'yesno', '1', 1, 25, 1),
(267, 'contact_guests', 'Disable Contact Page to Guests', 'Setting this to Yes will disallow access to the contact page for guests.', 'yesno', '0', 2, 25, 1),
(268, 'contact_badwords', 'Enable Word Filter on Contact Page', 'Setting this to Yes will will send the subject and message fields through the word filter before sending.', 'yesno', '1', 3, 25, 1),
(269, 'contact_maxsubjectlength', 'Maximum Subject Length on Contact Page', 'The maximum number of characters (bytes) to allow in the subject. A setting of 0 allows an unlimited length.', 'numeric\nmin=0', '85', 4, 25, 1),
(270, 'contact_minmessagelength', 'Minimum Message Length on Contact Page', 'The minimum number of characters in order to send the message. A value of 0 disables this setting.', 'numeric\nmin=0', '5', 5, 25, 1),
(271, 'contact_maxmessagelength', 'Maximum Message Length on Contact Page', 'The maximum number of characters (bytes) to allow in the message. A setting of 0 allows an unlimited length.', 'numeric\nmin=0', '65535', 6, 25, 1),
(272, 'purgespammergroups', 'Allowed Usergroups', 'Select the usergroups which should be allowed to use Purge Spammer.', 'groupselect', '3,4,6', 1, 26, 1),
(273, 'purgespammerpostlimit', 'Post Limit', 'This setting stops this tool being used on users who have more than a certain amount of posts, to prevent it being used on active members. Setting the value to 0 will disable the post check, however this is not recommended.', 'numeric\nmin=0', '10', 2, 26, 1),
(274, 'purgespammerbandelete', 'Ban or Delete Spammers', 'Do you want to ban or delete spammers with this tool?', 'radio\nban=Ban (Permanent)\ndelete=Delete', 'ban', 3, 26, 1),
(275, 'purgespammerbangroup', 'Ban Usergroup', 'Choose the usergroup to put users into when they get purged. Defaults to the fundamental Banned usergroup.', 'groupselectsingle', '7', 4, 26, 1),
(276, 'purgespammerbanreason', 'Ban Reason', 'The reason which is used to ban the spammer.', 'text', 'Spam', 5, 26, 1),
(277, 'purgespammerapikey', 'Stop Forum Spam API Key', 'In order to be able to submit information on a spammer to the Stop Forum Spam database, you need an API key. You can get one of these <a href=\"https://www.stopforumspam.com/forum/register.php\" target=\"_blank\" rel=\"noopener\">here</a>. When you have your key, paste it into the box below.', 'text', '', 6, 26, 1),
(278, 'purgespammerbanip', 'Add banned IP filter', 'Do you want to ban the spammer\'s IP using this tool? If other users are issued the same banned IP, they will not be able to use the forums.', 'yesno', '1', 7, 26, 1),
(279, 'enablestopforumspam_on_register', 'Check Registrations Against StopForumSpam.com?', '\n				Do you wish to check all new registrations against the StopForumSpam.com database?', 'yesno', '0', 1, 27, 1),
(280, 'stopforumspam_on_contact', 'Check Guest Contact Submissions Against StopForumSpam?', '\n				Should guest email and IP addresses be checked against StopForumSpam when using the contact page?', 'yesno', '0', 2, 27, 1),
(281, 'stopforumspam_on_newreply', 'Check Guest Replies Against StopForumSpam?', '\n				Should guest usernames and IP addresses be checked against StopForumSpam when creating new replies?', 'yesno', '0', 3, 27, 1),
(282, 'stopforumspam_on_newthread', 'Check Guest Threads Against StopForumSpam?', '\n				Should guest usernames and IP addresses be checked against StopForumSpam when creating new threads?', 'yesno', '0', 4, 27, 1),
(283, 'stopforumspam_min_weighting_before_spam', 'Minimum stop forum spam weighting?', '\n				The minimum weighting received from StopForumSpam before deciding a user is a spammer. Should be a number between 0 and 100.', 'text', '50.00', 5, 27, 1),
(284, 'stopforumspam_check_usernames', 'Check usernames?', '\n				Should the user usernames be checked against the StopForumSpam database?', 'yesno', '0', 6, 27, 1),
(285, 'stopforumspam_check_emails', 'Check email addresses?', '\n				Should the user email addresses be checked against the StopForumSpam database?', 'yesno', '1', 7, 27, 1),
(286, 'stopforumspam_check_ips', 'Check IP addresses?', '\n				Should the user IP addresses be checked against the StopForumSpam database?', 'yesno', '1', 8, 27, 1),
(287, 'stopforumspam_block_on_error', 'Block on StopForumSpam error?', '\n				If there is an error retrieving information from the StopForumSpam API, should the user be blocked?', 'yesno', '0', 9, 27, 1),
(288, 'stopforumspam_log_blocks', 'Log StopForumSpam blocks?', '\n				Should every StopForumSpam block be logged?', 'yesno', '0', 10, 27, 1),
(289, 'allowicqfield', 'Allow ICQ Number Field To Usergroups', 'Select the usergroups which should be allowed to use the ICQ Number contact field.', 'groupselect', '', 1, 28, 1),
(290, 'allowskypefield', 'Allow Skype ID Field To Usergroups', 'Select the usergroups which should be allowed to use the Skype ID contact field.', 'groupselect', '', 2, 28, 1),
(291, 'allowgooglefield', 'Allow Google Hangouts ID Field To Usergroups', 'Select the usergroups which should be allowed to use the Google Hangouts ID contact field.', 'groupselect', '', 3, 28, 1),
(292, 'statsenabled', 'Enable Statistics Pages', 'If you wish to disable the statistics page on your board, set this option to No.', 'yesno', '1', 1, 29, 1),
(293, 'statscachetime', 'Statistics Cache Time', 'Insert the interval of time to refresh the statistics page cache (in hours). Set to 0 to disable caching.', 'numeric\nmin=0', '0', 2, 29, 1),
(294, 'statslimit', 'Stats Limit', 'The number of threads to show on the stats page for most replies and most views. Set to 0 to disable.', 'numeric\nmin=0', '15', 3, 29, 1),
(295, 'statstopreferrer', 'Show Top Referrer on Statistics Page', 'Do you want to show the top referrer on the stats.php page? This adds an additional query.', 'yesno', '1', 4, 29, 1),
(296, 'enableshowteam', 'Enable Forum Team Listing Functionality', 'If you wish to disable the forum team listing on your board, set this option to No.', 'yesno', '1', 1, 30, 1),
(297, 'showaddlgroups', 'Show Additional Groups', 'Whether the team list will populate considering additional groups as well.', 'yesno', '1', 2, 30, 1),
(298, 'showgroupleaders', 'Show Group Leaders', 'Include group leaders to show up in the team list.', 'yesno', '1', 3, 30, 1),
(299, 'avatarep_active', 'Enable/Disable Plugin', 'Select if you want to activate this plugin', 'yesno', '1', 10, 31, 0),
(300, 'avatarep_foros', 'Avatar on Forums', 'Shows lastposter avatar on forumlist', 'yesno', '1', 20, 31, 0),
(301, 'avatarep_temas', 'Avatar on Threads', 'Shows owners avatar on threadlist', 'yesno', '1', 30, 31, 0),
(302, 'avatarep_temas_mark', 'Mark replied threads', 'Show avatar hover thread owner when you have replied to a thread, (requires addittional queries).', 'yesno', '0', 40, 31, 0),
(303, 'avatarep_contributor', 'Show Avatar Contributor', 'Shows avatar of thread owner in showthread, but yours if you\'ve replied to that thread.', 'yesno', '1', 50, 31, 0),
(304, 'avatarep_latest_threads', 'Avatar in Latest Threads', 'Shows avatar in Portal and SideBoxes plugin for latest threads', 'yesno', '1', 60, 31, 0),
(305, 'avatarep_private', 'Avatar in Private Messages', 'Shows avatar in Private Messages', 'yesno', '1', 70, 31, 0),
(306, 'avatarep_portal', 'Avatar in Portal - Latest Threads', 'Shows avatar of announcements user in Portal', 'yesno', '1', 80, 31, 0),
(307, 'avatarep_busqueda', 'Avatar on Search', 'Shows avatar on search results', 'yesno', '1', 90, 31, 0),
(308, 'avatarep_usercp', 'Avatar in User Control Panel', 'Shows avatar on listed thread into your user cp', 'yesno', '1', 100, 31, 0),
(309, 'avatarep_menu', 'Modal Box popup', 'Shows a nice popup menu for mouse events selected down for every avatar of user', 'yesno', '0', 110, 31, 0),
(310, 'avatarep_menu_events', 'Mouse events', 'Select mouse event to show modal box.', 'select \n1=On Click \n2=Mouse Over', '1', 120, 31, 0),
(311, 'avatarep_guests', 'Guests Avatar', 'Shows default avatar for guests', 'yesno', '1', 130, 31, 0),
(312, 'avatarep_format', 'Display formatted usernames', 'Shows format names for every usergroup with html code configured', 'yesno', '1', 140, 31, 0),
(313, 'avatarep_onerror', 'Shows white or broken avatars as default', 'If some error ocurrs when avatar is loading like img was removed or broken, then default avatar appears (This brokes w3c validation due onerror img tag js function is not validated there, Disable this option to validate with w3c).', 'yesno', '1', 150, 31, 0),
(314, 'avatarep_usercp_fsubs', 'Show avatars in usercp forums subscriptions', 'Disable if you want not to show avatar into usercp forum subscriptions template', 'yesno', '1', 160, 31, 0),
(315, 'avatarep_similar_threads', 'Show avatars for similar threads templates into showthread', 'Disable if you want not to show avatar into showthread similar threads template', 'yesno', '1', 170, 31, 0),
(316, 'avatarep_usercp_tsubs', 'Show avatars for subscribed threads templates into usercp', 'Disable if you want not to show avatar into usercp subscribed threads template', 'yesno', '1', 180, 31, 0),
(317, 'avatarep_version', 'Version', 'Plugin version of last poster avatar on threadlist and forumlist', 'text', '303', 190, 0, 0),
(318, 'tpref_enable', 'Enable/Disable plugin', 'Enable Yes, Disable No', 'yesno', '1', 1, 32, 0),
(319, 'tpref_icon', 'Show thread icon', 'Show the thread icon if any', 'yesno', '1', 1, 32, 0),
(320, 'tpref_prefix', 'Show thread prefix', 'Show the thread prefix if any', 'yesno', '1', 1, 32, 0),
(321, 'hidecontent_usergroups', 'Usergroups', 'Enter the user group ID\'s (separated by comma) of the usergroups allowed to use the Hide Content tag. (\'all\' for all usergroups)', 'text', 'all', 1, 33, 0),
(322, 'hidecontent_usergroups_bypass', 'Bypass Usergroups', 'Enter the user group ID\'s (separated by comma) of the usergroups that do not require to pay.', 'text', '', 2, 33, 0),
(323, 'hidecontent_points', 'Points', 'Enter the price to unlock a post\'s hidden content. Leave this set to 0 to disable this unlocking method.', 'text', '', 2, 33, 0),
(324, 'hidecontent_commission', 'Commission paid to Author', 'Enter the % of the total points that are paid to the post author. E.g. 50 for 50%. Only used if the setting above is greater than 0.', 'text', '', 3, 33, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_smilies`
--

CREATE TABLE `mybb_smilies` (
  `sid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL DEFAULT '',
  `find` text NOT NULL,
  `image` varchar(220) NOT NULL DEFAULT '',
  `disporder` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `showclickable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_spamlog`
--

CREATE TABLE `mybb_spamlog` (
  `sid` int(10) UNSIGNED NOT NULL,
  `username` varchar(120) NOT NULL DEFAULT '',
  `email` varchar(220) NOT NULL DEFAULT '',
  `ipaddress` varbinary(16) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_spiders`
--

CREATE TABLE `mybb_spiders` (
  `sid` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `theme` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `language` varchar(20) NOT NULL DEFAULT '',
  `usergroup` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `useragent` varchar(200) NOT NULL DEFAULT '',
  `lastvisit` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_spiders`
--

INSERT INTO `mybb_spiders` (`sid`, `name`, `theme`, `language`, `usergroup`, `useragent`, `lastvisit`) VALUES
(1, 'Google', 0, '', 0, 'Googlebot', 0),
(2, 'Bing', 0, '', 0, 'bingbot', 1722939029),
(3, 'Alexa Internet', 0, '', 0, 'ia_archiver', 0),
(4, 'Ask.com', 0, '', 0, 'Teoma', 0),
(5, 'Baidu', 0, '', 0, 'Baiduspider', 0),
(6, 'Yandex', 0, '', 0, 'YandexBot', 0),
(7, 'Facebook', 0, '', 0, 'facebookexternalhit', 0),
(8, 'Twitter', 0, '', 0, 'Twitterbot', 0),
(9, 'Internet Archive', 0, '', 0, 'archive.org_bot', 0),
(10, 'Discord', 0, '', 0, 'Discordbot', 1721817405),
(11, 'Applebot', 0, '', 0, 'Applebot', 0),
(12, 'CheckHost', 0, '', 0, 'CheckHost', 0),
(13, 'Pingdom', 0, '', 0, 'Pingdom.com_bot', 0),
(14, 'DuckDuckGo', 0, '', 0, 'DuckDuckBot', 0),
(15, 'UptimeRobot', 0, '', 0, 'UptimeRobot', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_stats`
--

CREATE TABLE `mybb_stats` (
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `numusers` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `numthreads` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `numposts` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_stats`
--

INSERT INTO `mybb_stats` (`dateline`, `numusers`, `numthreads`, `numposts`) VALUES
(1719273600, 1, 0, 0),
(1719360000, 1, 2, 2),
(1719446400, 1, 6, 7),
(1719792000, 1, 7, 8),
(1719964800, 1, 7, 10),
(1720569600, 1, 7, 10),
(1720656000, 1, 7, 10),
(1720742400, 2, 7, 11),
(1721520000, 2, 7, 11),
(1721692800, 2, 7, 11),
(1721779200, 2, 7, 12),
(1721865600, 2, 7, 13),
(1722902400, 2, 7, 11);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_tasklog`
--

CREATE TABLE `mybb_tasklog` (
  `lid` int(10) UNSIGNED NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_tasklog`
--

INSERT INTO `mybb_tasklog` (`lid`, `tid`, `dateline`, `data`) VALUES
(3362, 14, 1722872287, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3361, 3, 1722872284, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3360, 5, 1722872223, 'Zadanie przydzielania awansów zostało wykonane.'),
(3359, 14, 1722871773, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3358, 1, 1722871747, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3357, 3, 1722871742, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3356, 9, 1722871726, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3355, 5, 1722870123, 'Zadanie przydzielania awansów zostało wykonane.'),
(3354, 14, 1722870008, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3353, 14, 1722863535, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3352, 9, 1722863422, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3351, 14, 1722863417, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3350, 14, 1722863303, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3349, 14, 1722863224, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3348, 5, 1722863196, 'Zadanie przydzielania awansów zostało wykonane.'),
(3347, 14, 1722863128, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3346, 14, 1722862954, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3345, 14, 1722862879, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3344, 14, 1722862803, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3343, 1, 1722862800, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3342, 14, 1722862774, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3341, 3, 1722862743, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3340, 14, 1722862687, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3339, 9, 1722862671, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3338, 14, 1722862667, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3337, 14, 1722862395, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3336, 14, 1722862358, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3335, 14, 1722862288, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3334, 14, 1722862224, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3333, 3, 1722862216, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3332, 9, 1722862202, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3331, 5, 1722862192, 'Zadanie przydzielania awansów zostało wykonane.'),
(3330, 14, 1722862187, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3329, 14, 1722860298, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3328, 9, 1722860296, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3327, 5, 1722860289, 'Zadanie przydzielania awansów zostało wykonane.'),
(3326, 14, 1722860228, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3325, 14, 1722859353, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3324, 1, 1722859320, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3323, 3, 1722859315, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3322, 9, 1722859301, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3321, 5, 1722859298, 'Zadanie przydzielania awansów zostało wykonane.'),
(3320, 14, 1722859208, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3319, 14, 1722858141, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3318, 9, 1722858008, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3317, 14, 1722858003, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3316, 14, 1722857886, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3315, 14, 1722857841, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3314, 14, 1722857783, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3313, 14, 1722857727, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3312, 14, 1722857685, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3311, 3, 1722857620, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3310, 14, 1722857562, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3309, 14, 1722857284, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3308, 14, 1722857249, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3307, 14, 1722857204, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3306, 9, 1722857165, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3305, 5, 1722857151, 'Zadanie przydzielania awansów zostało wykonane.'),
(3304, 14, 1722857058, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3303, 14, 1722856997, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3302, 14, 1722856946, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3301, 14, 1722856897, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3300, 14, 1722856778, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3299, 14, 1722856711, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3298, 14, 1722856363, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3297, 9, 1722856328, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3296, 14, 1722856161, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3295, 14, 1722856086, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3294, 14, 1722856053, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3293, 14, 1722855995, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3292, 14, 1722855916, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3291, 5, 1722855901, 'Zadanie przydzielania awansów zostało wykonane.'),
(3290, 14, 1722855866, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3289, 14, 1722855796, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3288, 1, 1722855677, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3287, 9, 1722855601, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3286, 14, 1722855597, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3285, 3, 1722855593, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3284, 5, 1722855583, 'Zadanie przydzielania awansów zostało wykonane.'),
(3283, 14, 1722853920, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3282, 9, 1722853916, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3281, 14, 1722853396, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3280, 1, 1722853390, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3279, 3, 1722853377, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3278, 14, 1722852451, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3277, 5, 1722852324, 'Zadanie przydzielania awansów zostało wykonane.'),
(3276, 9, 1722851804, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3275, 14, 1722851630, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3274, 3, 1722850275, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3273, 14, 1722850272, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3272, 9, 1722850262, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3271, 5, 1722850169, 'Zadanie przydzielania awansów zostało wykonane.'),
(3270, 14, 1722849979, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3269, 14, 1722849738, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3268, 14, 1722849609, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3267, 14, 1722849498, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3266, 14, 1722849425, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3265, 9, 1722849350, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3264, 14, 1722849212, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3263, 5, 1722849021, 'Zadanie przydzielania awansów zostało wykonane.'),
(3262, 14, 1722848918, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3261, 1, 1722848890, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3260, 3, 1722848867, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3259, 14, 1722848421, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3258, 14, 1722848126, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3257, 9, 1722848119, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3256, 14, 1722848060, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3255, 14, 1722848015, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3254, 14, 1722847929, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3253, 14, 1722847877, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3252, 14, 1722847814, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3251, 14, 1722847688, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3250, 5, 1722847686, 'Zadanie przydzielania awansów zostało wykonane.'),
(3249, 9, 1722847511, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3248, 14, 1722847509, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3245, 1, 1722847225, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3244, 5, 1722847012, 'Zadanie przydzielania awansów zostało wykonane.'),
(3243, 9, 1722846963, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3242, 14, 1722846758, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3241, 11, 1722846753, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(3240, 2, 1722846466, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(3239, 3, 1722846463, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3238, 9, 1722818089, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3237, 5, 1722818086, 'Zadanie przydzielania awansów zostało wykonane.'),
(3236, 14, 1722818067, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3235, 1, 1722818061, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3234, 3, 1722800603, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3233, 9, 1722798919, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3232, 5, 1722798185, 'Zadanie przydzielania awansów zostało wykonane.'),
(3231, 14, 1722798019, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3230, 14, 1722794517, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3229, 1, 1722794510, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3228, 3, 1722794499, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3227, 5, 1722794497, 'Zadanie przydzielania awansów zostało wykonane.'),
(3226, 9, 1722794446, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3225, 14, 1722794445, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3224, 14, 1722780464, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3223, 14, 1722780407, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3222, 5, 1722780346, 'Zadanie przydzielania awansów zostało wykonane.'),
(3221, 14, 1722780340, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3220, 1, 1722780333, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3219, 3, 1722780281, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3218, 9, 1722780276, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3217, 5, 1722780217, 'Zadanie przydzielania awansów zostało wykonane.'),
(3216, 14, 1722780212, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3215, 14, 1722778898, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3214, 9, 1722778856, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3213, 14, 1722778781, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3212, 14, 1722778687, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3211, 14, 1722778662, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3210, 14, 1722778577, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3209, 14, 1722778501, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3208, 3, 1722778466, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3207, 14, 1722778447, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3206, 9, 1722778442, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3205, 5, 1722777965, 'Zadanie przydzielania awansów zostało wykonane.'),
(3204, 14, 1722777853, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3203, 14, 1722777805, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3202, 14, 1722777689, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3201, 14, 1722777128, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3200, 14, 1722777074, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3199, 1, 1722777071, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3198, 3, 1722777035, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3197, 5, 1722777029, 'Zadanie przydzielania awansów zostało wykonane.'),
(3196, 9, 1722777010, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3195, 14, 1722771832, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3194, 3, 1722760227, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3193, 14, 1722760188, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3192, 9, 1722760154, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3191, 5, 1722760001, 'Zadanie przydzielania awansów zostało wykonane.'),
(3190, 14, 1722759983, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3189, 14, 1722759731, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2637, 3, 1722079571, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2636, 14, 1722079518, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2635, 9, 1722078707, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2634, 5, 1722076671, 'Zadanie przydzielania awansów zostało wykonane.'),
(2633, 1, 1722075101, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2632, 14, 1722042824, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2631, 3, 1722042803, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2630, 11, 1722042050, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(2629, 2, 1722041960, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(2628, 9, 1722041948, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2627, 5, 1722041893, 'Zadanie przydzielania awansów zostało wykonane.'),
(2626, 1, 1722041470, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2625, 14, 1722041146, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2624, 3, 1722039224, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2623, 14, 1722034722, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2622, 14, 1722034630, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2621, 9, 1722034615, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2620, 14, 1722034474, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2619, 14, 1722034394, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2618, 14, 1722034341, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2617, 14, 1722034261, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2616, 14, 1722034219, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2615, 14, 1722034164, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2614, 14, 1722034113, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2613, 5, 1722034085, 'Zadanie przydzielania awansów zostało wykonane.'),
(2612, 14, 1722034059, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2611, 9, 1722033607, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2610, 14, 1722033579, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2609, 14, 1722033497, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2608, 14, 1722033450, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2607, 14, 1722033285, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2606, 14, 1722033204, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2605, 14, 1722033124, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2604, 3, 1722033098, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2603, 14, 1722032954, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2602, 14, 1722032897, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2601, 14, 1722032767, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2600, 14, 1722032750, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2599, 9, 1722032735, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2598, 5, 1722032711, 'Zadanie przydzielania awansów zostało wykonane.'),
(2597, 14, 1722032678, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2596, 14, 1722032606, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2595, 14, 1722032474, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2594, 14, 1722032379, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2593, 14, 1722032302, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2592, 14, 1722032223, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2591, 14, 1722032176, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2590, 14, 1722032116, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2589, 14, 1722032046, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2588, 14, 1722032035, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2587, 14, 1722031925, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2586, 14, 1722031862, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2585, 14, 1722031827, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2584, 9, 1722031818, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2583, 14, 1722031747, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2582, 14, 1722031682, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2581, 14, 1722031667, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2580, 14, 1722031612, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2579, 5, 1722031571, 'Zadanie przydzielania awansów zostało wykonane.'),
(2578, 14, 1722031447, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2577, 14, 1722031421, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2576, 14, 1722031329, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2575, 1, 1722031227, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2574, 14, 1722031215, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2573, 3, 1722031168, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2572, 14, 1722031084, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2571, 14, 1722031077, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2570, 14, 1722030988, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2569, 14, 1722030954, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2568, 9, 1722030925, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2567, 14, 1722030843, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2566, 14, 1722030780, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2565, 14, 1722030628, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2564, 5, 1722030600, 'Zadanie przydzielania awansów zostało wykonane.'),
(2563, 14, 1722030541, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2562, 1, 1722030511, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2561, 8, 1722030453, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(3188, 14, 1722759670, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3187, 14, 1722759641, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3186, 14, 1722759567, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3185, 14, 1722759494, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3184, 14, 1722759424, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3183, 14, 1722759065, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3182, 9, 1722759021, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3181, 14, 1722758984, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3180, 5, 1722758842, 'Zadanie przydzielania awansów zostało wykonane.'),
(3179, 14, 1722758688, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3178, 14, 1722758592, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3177, 1, 1722758521, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3176, 3, 1722758466, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3175, 14, 1722758348, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3174, 14, 1722758258, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3173, 14, 1722758218, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3172, 9, 1722758157, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3171, 14, 1722758054, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3170, 14, 1722757991, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3169, 14, 1722757944, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3165, 5, 1722757532, 'Zadanie przydzielania awansów zostało wykonane.'),
(3164, 11, 1722757524, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(3163, 2, 1722757310, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(3162, 1, 1722757253, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3161, 3, 1722757202, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3160, 9, 1722757013, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3159, 14, 1722756965, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3158, 5, 1722728829, 'Zadanie przydzielania awansów zostało wykonane.'),
(3157, 14, 1722728787, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3156, 1, 1722728772, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3155, 3, 1722728734, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3154, 9, 1722728614, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3153, 14, 1722728574, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3152, 5, 1722728458, 'Zadanie przydzielania awansów zostało wykonane.'),
(3151, 14, 1722725417, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3150, 14, 1722725027, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3149, 9, 1722724893, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3148, 14, 1722724866, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3147, 14, 1722724473, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3146, 3, 1722724265, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3145, 14, 1722724143, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3144, 14, 1722724082, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3143, 14, 1722724022, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3142, 9, 1722724003, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3141, 5, 1722723978, 'Zadanie przydzielania awansów zostało wykonane.'),
(3140, 14, 1722723905, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2941, 3, 1722517810, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2940, 1, 1722517803, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2939, 5, 1722517797, 'Zadanie przydzielania awansów zostało wykonane.'),
(2938, 14, 1722503257, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2937, 9, 1722502373, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2936, 3, 1722486866, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2935, 14, 1722472766, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2934, 9, 1722472010, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2933, 5, 1722471994, 'Zadanie przydzielania awansów zostało wykonane.'),
(2932, 14, 1722471988, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2931, 14, 1722471668, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2930, 14, 1722471606, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2929, 14, 1722471544, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2928, 14, 1722471493, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2927, 14, 1722471446, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2926, 14, 1722471398, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2925, 14, 1722471316, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2924, 14, 1722471268, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2923, 14, 1722471207, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2922, 14, 1722471121, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2921, 14, 1722471086, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2920, 14, 1722471049, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2919, 9, 1722471017, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2918, 14, 1722470942, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2917, 14, 1722470919, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2916, 14, 1722470824, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2915, 14, 1722470769, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2914, 5, 1722470707, 'Zadanie przydzielania awansów zostało wykonane.'),
(2913, 14, 1722470642, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2912, 14, 1722470591, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2911, 11, 1722470546, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(2910, 2, 1722470543, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(2909, 1, 1722470540, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2908, 14, 1722470536, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2907, 3, 1722470486, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2906, 5, 1722470443, 'Zadanie przydzielania awansów zostało wykonane.'),
(2905, 9, 1722470417, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2904, 14, 1722470319, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2903, 14, 1722468730, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2902, 14, 1722468627, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2901, 3, 1722468619, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2900, 14, 1722468580, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2899, 14, 1722468483, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2898, 9, 1722468404, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2897, 5, 1722468392, 'Zadanie przydzielania awansów zostało wykonane.'),
(2896, 14, 1722468313, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2895, 14, 1722468185, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2894, 14, 1722468165, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2893, 14, 1722467884, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2892, 14, 1722467869, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2891, 14, 1722467772, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2890, 14, 1722467713, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2889, 14, 1722467641, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2888, 14, 1722467620, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2887, 14, 1722467539, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2886, 9, 1722467489, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2885, 14, 1722467433, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2884, 5, 1722467343, 'Zadanie przydzielania awansów zostało wykonane.'),
(2883, 14, 1722467179, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2882, 1, 1722467153, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2881, 14, 1722466770, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2880, 3, 1722466742, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2879, 14, 1722466695, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2878, 14, 1722466571, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2877, 9, 1722466502, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2876, 14, 1722466475, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2875, 14, 1722466402, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2874, 14, 1722466356, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2873, 14, 1722466269, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2872, 14, 1722466168, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2871, 14, 1722466112, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2870, 14, 1722466032, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2869, 14, 1722465985, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2868, 9, 1722465953, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2867, 5, 1722465934, 'Zadanie przydzielania awansów zostało wykonane.'),
(2866, 1, 1722465749, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2865, 3, 1722465713, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2864, 14, 1722465713, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2863, 9, 1722448508, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2862, 14, 1722448504, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2861, 14, 1722448246, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2860, 14, 1722448091, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2859, 14, 1722448034, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2858, 14, 1722447968, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2857, 5, 1722447919, 'Zadanie przydzielania awansów zostało wykonane.'),
(2856, 14, 1722447847, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2855, 14, 1722447816, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2854, 14, 1722447730, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2853, 14, 1722447680, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2852, 9, 1722447656, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2851, 14, 1722447581, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2850, 14, 1722447440, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2653, 11, 1722309521, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(2652, 2, 1722269371, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(2651, 14, 1722264019, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2650, 1, 1722240271, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2649, 3, 1722211898, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2648, 5, 1722182692, 'Zadanie przydzielania awansów zostało wykonane.'),
(2647, 9, 1722182659, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2646, 14, 1722117183, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2645, 1, 1722097840, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2644, 5, 1722097826, 'Zadanie przydzielania awansów zostało wykonane.'),
(2643, 3, 1722097824, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2642, 14, 1722097812, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2641, 9, 1722097798, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2640, 1, 1722080148, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2639, 5, 1722080145, 'Zadanie przydzielania awansów zostało wykonane.'),
(2638, 8, 1722079887, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(2849, 14, 1722447380, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2848, 14, 1722447306, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2847, 14, 1722447182, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2846, 14, 1722447179, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2845, 3, 1722447000, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2844, 14, 1722446969, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2843, 14, 1722446895, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2842, 14, 1722446854, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2841, 9, 1722446841, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2840, 5, 1722446765, 'Zadanie przydzielania awansów zostało wykonane.'),
(2839, 14, 1722446700, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2838, 14, 1722446620, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2837, 14, 1722446383, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2836, 14, 1722446293, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2835, 14, 1722446167, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2834, 14, 1722446124, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2833, 14, 1722446036, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2832, 14, 1722445957, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2831, 9, 1722445932, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2830, 14, 1722445896, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2829, 5, 1722445693, 'Zadanie przydzielania awansów zostało wykonane.'),
(2828, 14, 1722445674, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2827, 1, 1722445641, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2826, 3, 1722445233, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2825, 14, 1722445167, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2824, 9, 1722444950, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2823, 14, 1722444885, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2822, 14, 1722444713, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2821, 5, 1722444454, 'Zadanie przydzielania awansów zostało wykonane.'),
(2820, 14, 1722444357, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2819, 14, 1722444181, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2818, 14, 1722444132, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2817, 9, 1722444097, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2816, 14, 1722443995, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2815, 14, 1722443927, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2814, 14, 1722443835, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2813, 14, 1722443621, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2812, 14, 1722443520, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2811, 3, 1722443493, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2810, 14, 1722443455, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2809, 9, 1722443441, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2808, 14, 1722443202, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2807, 5, 1722443191, 'Zadanie przydzielania awansów zostało wykonane.'),
(2806, 14, 1722441905, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2805, 14, 1722441835, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2804, 14, 1722441731, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2803, 1, 1722441706, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2802, 3, 1722441679, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2801, 9, 1722441670, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2800, 14, 1722441634, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2799, 14, 1722441112, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2798, 5, 1722441077, 'Zadanie przydzielania awansów zostało wykonane.'),
(2797, 9, 1722441032, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2796, 14, 1722440937, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2795, 3, 1722440417, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2794, 9, 1722440348, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2793, 5, 1722439922, 'Zadanie przydzielania awansów zostało wykonane.'),
(2792, 14, 1722439816, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2791, 14, 1722439264, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2790, 14, 1722439240, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2789, 14, 1722439165, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2788, 14, 1722439097, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2787, 14, 1722438981, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2786, 14, 1722438910, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2785, 14, 1722438869, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2784, 14, 1722438834, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2783, 14, 1722438753, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2782, 14, 1722438714, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2781, 9, 1722438667, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2780, 14, 1722438542, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2779, 1, 1722438475, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2778, 5, 1722438386, 'Zadanie przydzielania awansów zostało wykonane.'),
(2777, 9, 1722438185, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2776, 3, 1722438139, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2775, 14, 1722438045, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2774, 9, 1722435934, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2773, 5, 1722435916, 'Zadanie przydzielania awansów zostało wykonane.'),
(2772, 14, 1722435843, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2771, 14, 1722435812, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2770, 14, 1722435723, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2769, 14, 1722435679, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2768, 14, 1722435609, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2767, 14, 1722435585, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2766, 14, 1722435517, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2765, 9, 1722435460, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2764, 5, 1722435406, 'Zadanie przydzielania awansów zostało wykonane.'),
(2763, 14, 1722435211, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2762, 1, 1722434721, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2761, 14, 1722434568, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2760, 3, 1722434468, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2759, 9, 1722434444, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2758, 5, 1722434366, 'Zadanie przydzielania awansów zostało wykonane.'),
(2757, 14, 1722434218, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2756, 14, 1722431995, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2755, 14, 1722431925, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2754, 14, 1722431817, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2753, 14, 1722431566, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2752, 14, 1722431479, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2751, 9, 1722431425, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2750, 5, 1722431373, 'Zadanie przydzielania awansów zostało wykonane.'),
(2749, 14, 1722431365, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2748, 1, 1722431242, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2747, 14, 1722430873, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2746, 3, 1722430847, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2745, 14, 1722430722, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2744, 14, 1722430636, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2743, 14, 1722430600, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2742, 14, 1722430543, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2741, 9, 1722430504, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2740, 14, 1722430488, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2739, 5, 1722430401, 'Zadanie przydzielania awansów zostało wykonane.'),
(2738, 9, 1722430104, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2737, 14, 1722429981, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2736, 1, 1722429921, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2735, 3, 1722429744, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2734, 5, 1722429589, 'Zadanie przydzielania awansów zostało wykonane.'),
(2733, 9, 1722429519, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2732, 14, 1722429380, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2731, 14, 1722425848, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2730, 3, 1722425767, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2729, 14, 1722425552, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2728, 14, 1722425284, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2727, 14, 1722425231, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2726, 14, 1722425208, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2725, 9, 1722425175, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2724, 5, 1722425137, 'Zadanie przydzielania awansów zostało wykonane.'),
(2723, 14, 1722425063, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2722, 14, 1722424984, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2721, 14, 1722424943, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2720, 14, 1722424868, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2719, 14, 1722424830, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2718, 14, 1722424791, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2717, 14, 1722424696, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2716, 14, 1722424554, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2715, 14, 1722424481, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2714, 14, 1722424405, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2713, 9, 1722424233, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2712, 14, 1722424187, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2711, 5, 1722424117, 'Zadanie przydzielania awansów zostało wykonane.'),
(2710, 1, 1722424106, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2709, 3, 1722423991, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2708, 14, 1722423865, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2701, 5, 1722423018, 'Zadanie przydzielania awansów zostało wykonane.'),
(2700, 11, 1722422814, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(2699, 2, 1722422757, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(2698, 14, 1722422347, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2697, 1, 1722422333, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2696, 3, 1722410023, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2695, 9, 1722409946, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2694, 5, 1722398420, 'Zadanie przydzielania awansów zostało wykonane.'),
(2693, 14, 1722382983, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2692, 14, 1722375789, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2691, 14, 1722375671, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2690, 14, 1722375658, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2689, 9, 1722375618, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2688, 14, 1722375562, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2687, 14, 1722375501, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2686, 14, 1722375447, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2685, 14, 1722375376, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2684, 14, 1722375337, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2683, 14, 1722375253, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2682, 14, 1722375165, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2681, 3, 1722375082, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2680, 14, 1722374960, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2679, 14, 1722374825, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2678, 14, 1722374810, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2677, 9, 1722374792, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2676, 5, 1722374776, 'Zadanie przydzielania awansów zostało wykonane.'),
(2675, 14, 1722374672, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.');
INSERT INTO `mybb_tasklog` (`lid`, `tid`, `dateline`, `data`) VALUES
(2674, 14, 1722374622, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2673, 14, 1722374469, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2672, 14, 1722374451, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2671, 14, 1722374355, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2670, 14, 1722374293, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2669, 14, 1722374248, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2668, 14, 1722374102, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2667, 14, 1722374078, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2666, 14, 1722374010, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2665, 1, 1722373971, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2664, 9, 1722373953, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2663, 3, 1722373942, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2662, 5, 1722373891, 'Zadanie przydzielania awansów zostało wykonane.'),
(2661, 12, 1722373851, 'Sprawdzenie nowej wersji zostało wykonane pomyślnie.'),
(2660, 2, 1722373155, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(2659, 14, 1722372644, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2658, 1, 1722358871, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2657, 3, 1722358685, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2656, 9, 1722358684, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2655, 5, 1722354474, 'Zadanie przydzielania awansów zostało wykonane.'),
(2654, 8, 1722341044, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(2707, 9, 1722423603, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2706, 14, 1722423286, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2705, 14, 1722423219, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2704, 3, 1722423158, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2703, 9, 1722423116, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2702, 8, 1722423061, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(3139, 14, 1722723810, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3138, 14, 1722723569, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3137, 14, 1722723509, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3136, 14, 1722723321, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3135, 14, 1722723267, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3134, 14, 1722723190, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3133, 9, 1722723071, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3132, 14, 1722723055, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3131, 5, 1722722996, 'Zadanie przydzielania awansów zostało wykonane.'),
(2966, 11, 1722639243, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(2965, 2, 1722639225, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(2964, 1, 1722639223, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2963, 3, 1722638889, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2962, 14, 1722638809, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2961, 9, 1722598234, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2960, 5, 1722595287, 'Zadanie przydzielania awansów zostało wykonane.'),
(2959, 14, 1722554391, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2958, 1, 1722554351, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2957, 3, 1722554315, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2956, 9, 1722552330, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2955, 5, 1722546020, 'Zadanie przydzielania awansów zostało wykonane.'),
(2954, 14, 1722543807, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2953, 14, 1722537614, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2952, 9, 1722537610, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2951, 14, 1722537544, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2950, 3, 1722537194, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2949, 14, 1722537192, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2948, 9, 1722537189, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2947, 1, 1722536943, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2946, 3, 1722536904, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2945, 5, 1722536901, 'Zadanie przydzielania awansów zostało wykonane.'),
(2944, 14, 1722536894, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2943, 9, 1722535807, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2942, 8, 1722517898, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(3130, 14, 1722722901, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3129, 1, 1722722773, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3128, 3, 1722722561, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3127, 9, 1722722486, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3126, 14, 1722722459, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3125, 14, 1722721995, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3124, 14, 1722721938, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3123, 5, 1722721915, 'Zadanie przydzielania awansów zostało wykonane.'),
(3122, 14, 1722721872, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3121, 9, 1722721853, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3120, 14, 1722721152, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3119, 14, 1722720967, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3118, 14, 1722720783, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3117, 3, 1722720768, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3116, 9, 1722720761, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3115, 5, 1722720734, 'Zadanie przydzielania awansów zostało wykonane.'),
(3114, 14, 1722720700, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3113, 14, 1722719948, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3112, 14, 1722719833, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3111, 9, 1722719825, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3110, 1, 1722719778, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3109, 3, 1722719749, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3108, 5, 1722719742, 'Zadanie przydzielania awansów zostało wykonane.'),
(3107, 14, 1722719683, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3106, 9, 1722716625, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3105, 14, 1722712259, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3104, 14, 1722712089, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3103, 14, 1722711979, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3102, 14, 1722711934, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3101, 5, 1722711917, 'Zadanie przydzielania awansów zostało wykonane.'),
(3100, 14, 1722711884, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3099, 14, 1722711782, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3098, 1, 1722711755, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3097, 3, 1722711737, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3096, 14, 1722711579, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3095, 14, 1722711446, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3094, 14, 1722711399, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3093, 9, 1722711334, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3092, 14, 1722711241, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3091, 14, 1722711205, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3090, 5, 1722711100, 'Zadanie przydzielania awansów zostało wykonane.'),
(3089, 9, 1722710838, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3088, 14, 1722710827, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3087, 14, 1722710223, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3086, 14, 1722710178, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3085, 14, 1722710106, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3084, 3, 1722709968, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3083, 14, 1722709810, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3082, 14, 1722709574, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3081, 14, 1722709527, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3080, 9, 1722709518, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3079, 5, 1722709509, 'Zadanie przydzielania awansów zostało wykonane.'),
(3078, 14, 1722709448, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3077, 14, 1722709387, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3076, 14, 1722709344, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3075, 14, 1722709289, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3074, 14, 1722709246, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3073, 14, 1722709155, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3072, 14, 1722709118, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3071, 14, 1722709054, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3070, 14, 1722708965, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3069, 14, 1722708929, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3068, 14, 1722708828, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3067, 14, 1722708729, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3066, 1, 1722708687, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3065, 3, 1722708661, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3064, 5, 1722708635, 'Zadanie przydzielania awansów zostało wykonane.'),
(3063, 9, 1722708608, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3062, 14, 1722708341, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3061, 14, 1722706688, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3060, 14, 1722706645, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3059, 14, 1722706565, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3058, 14, 1722706326, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3057, 3, 1722706272, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3056, 14, 1722706198, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3055, 14, 1722706091, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3054, 14, 1722706066, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3053, 9, 1722706030, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3052, 5, 1722705928, 'Zadanie przydzielania awansów zostało wykonane.'),
(3051, 14, 1722705852, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3050, 14, 1722705791, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3049, 14, 1722705748, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3048, 14, 1722705704, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3047, 14, 1722705648, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3046, 9, 1722705556, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3045, 5, 1722705522, 'Zadanie przydzielania awansów zostało wykonane.'),
(3044, 14, 1722705423, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3043, 14, 1722704446, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3042, 1, 1722704433, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3041, 14, 1722704392, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3040, 3, 1722704370, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3039, 14, 1722704288, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3038, 14, 1722704180, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3037, 9, 1722704137, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3036, 14, 1722704042, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3035, 14, 1722704006, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3034, 14, 1722703927, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3033, 14, 1722703801, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3032, 5, 1722703727, 'Zadanie przydzielania awansów zostało wykonane.'),
(3031, 14, 1722703703, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3030, 14, 1722703382, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3029, 14, 1722703377, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3028, 14, 1722703257, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3027, 9, 1722703214, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3026, 14, 1722703164, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3025, 14, 1722703085, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3024, 14, 1722703043, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3023, 14, 1722702979, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3022, 14, 1722702957, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3021, 14, 1722702846, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3020, 14, 1722702785, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3019, 14, 1722702722, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3018, 14, 1722702696, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3017, 3, 1722702604, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3016, 14, 1722702554, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3015, 14, 1722702487, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3014, 14, 1722702445, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3013, 9, 1722702364, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3012, 5, 1722702305, 'Zadanie przydzielania awansów zostało wykonane.'),
(3011, 14, 1722702247, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3010, 14, 1722702221, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3009, 14, 1722702169, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3008, 14, 1722702089, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3007, 14, 1722702010, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3006, 14, 1722701961, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3005, 14, 1722701904, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3004, 14, 1722701688, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3003, 9, 1722701636, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3002, 14, 1722701351, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3001, 14, 1722701318, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3000, 14, 1722701220, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2999, 14, 1722701168, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2998, 5, 1722701113, 'Zadanie przydzielania awansów zostało wykonane.'),
(2997, 14, 1722701073, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2996, 9, 1722700906, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2995, 5, 1722700902, 'Zadanie przydzielania awansów zostało wykonane.'),
(2994, 1, 1722700892, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2993, 14, 1722700888, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2992, 3, 1722700786, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2991, 9, 1722686279, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2990, 5, 1722686207, 'Zadanie przydzielania awansów zostało wykonane.'),
(2989, 14, 1722686114, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2988, 14, 1722684126, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2987, 14, 1722684098, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2986, 14, 1722684023, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2985, 14, 1722683899, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2984, 14, 1722683857, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2983, 9, 1722683824, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2982, 14, 1722683745, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2977, 9, 1722683160, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2976, 14, 1722683073, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2975, 11, 1722682960, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(2974, 2, 1722682952, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(2973, 5, 1722682951, 'Zadanie przydzielania awansów zostało wykonane.'),
(2972, 1, 1722674626, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2971, 3, 1722674622, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2970, 14, 1722647263, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2969, 9, 1722647261, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2968, 5, 1722639362, 'Zadanie przydzielania awansów zostało wykonane.'),
(2967, 8, 1722639357, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(2981, 5, 1722683707, 'Zadanie przydzielania awansów zostało wykonane.'),
(2980, 1, 1722683690, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2979, 3, 1722683668, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2978, 8, 1722683224, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(3168, 9, 1722757926, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3167, 14, 1722757857, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3166, 8, 1722757800, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(3247, 3, 1722847470, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3246, 8, 1722847467, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(3487, 8, 1722940137, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(993, 9, 1720430570, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(994, 5, 1720430573, 'Zadanie przydzielania awansów zostało wykonane.'),
(995, 2, 1720430579, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(996, 11, 1720435732, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(997, 8, 1720465207, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(998, 14, 1720465211, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(999, 3, 1720493135, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1000, 1, 1720521087, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1001, 5, 1720524224, 'Zadanie przydzielania awansów zostało wykonane.'),
(1002, 9, 1720524229, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1003, 14, 1720526297, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1004, 2, 1720526322, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(1005, 11, 1720526444, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(1006, 3, 1720545366, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1007, 12, 1720545696, 'Sprawdzenie nowej wersji zostało wykonane pomyślnie.'),
(1008, 8, 1720598816, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(1009, 1, 1720598819, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1010, 5, 1720602735, 'Zadanie przydzielania awansów zostało wykonane.'),
(1011, 9, 1720602737, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1012, 14, 1720609981, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1013, 3, 1720610016, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1014, 2, 1720610018, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(1015, 11, 1720610030, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(1016, 1, 1720610934, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1017, 5, 1720611023, 'Zadanie przydzielania awansów zostało wykonane.'),
(1018, 9, 1720611075, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1019, 14, 1720611110, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1020, 3, 1720611158, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1021, 14, 1720611433, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1022, 14, 1720611581, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1023, 9, 1720611610, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1024, 14, 1720611642, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1025, 14, 1720611663, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1026, 14, 1720611774, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1027, 14, 1720611827, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1028, 14, 1720611843, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1029, 5, 1720611935, 'Zadanie przydzielania awansów zostało wykonane.'),
(1030, 14, 1720612014, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1031, 14, 1720612067, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1032, 14, 1720612089, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1033, 14, 1720612157, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1034, 14, 1720612267, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1035, 14, 1720612325, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1036, 14, 1720612396, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1037, 14, 1720612442, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1038, 9, 1720612521, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1039, 14, 1720612639, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1040, 14, 1720612722, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1041, 3, 1720612753, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1042, 14, 1720612798, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1043, 1, 1720612814, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1044, 14, 1720612880, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1045, 14, 1720613002, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1046, 14, 1720613077, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1047, 5, 1720613312, 'Zadanie przydzielania awansów zostało wykonane.'),
(1048, 14, 1720613346, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1049, 9, 1720613406, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1050, 14, 1720613417, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1051, 14, 1720613462, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1052, 14, 1720613529, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1053, 14, 1720613593, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1054, 14, 1720613642, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1055, 14, 1720613806, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1056, 14, 1720614049, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1057, 14, 1720614089, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1058, 14, 1720614146, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1059, 14, 1720614203, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1060, 14, 1720614308, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1061, 5, 1720614368, 'Zadanie przydzielania awansów zostało wykonane.'),
(1062, 9, 1720614370, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1063, 14, 1720614406, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1064, 14, 1720614513, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1065, 14, 1720615279, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1066, 3, 1720615329, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1067, 9, 1720615372, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1068, 14, 1720615428, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1069, 14, 1720615479, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1070, 5, 1720615505, 'Zadanie przydzielania awansów zostało wykonane.'),
(1071, 14, 1720615553, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1072, 14, 1720615592, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1073, 14, 1720615657, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1074, 14, 1720615821, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1075, 14, 1720615908, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1076, 14, 1720616011, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1077, 14, 1720616067, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1078, 9, 1720616307, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1079, 14, 1720616417, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1080, 3, 1720616607, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1081, 1, 1720616725, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1082, 14, 1720616801, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1083, 5, 1720616817, 'Zadanie przydzielania awansów zostało wykonane.'),
(1084, 14, 1720616853, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1085, 14, 1720617009, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1086, 9, 1720617045, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1087, 14, 1720617105, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1088, 14, 1720617129, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1089, 14, 1720617196, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1090, 14, 1720617255, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1091, 14, 1720617313, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1092, 14, 1720617388, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1093, 14, 1720617442, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1094, 14, 1720617594, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1095, 14, 1720617661, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1096, 14, 1720617960, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1097, 5, 1720617988, 'Zadanie przydzielania awansów zostało wykonane.'),
(1098, 9, 1720618038, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1099, 14, 1720618075, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1100, 14, 1720618126, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1101, 14, 1720618158, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1102, 3, 1720618273, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1103, 14, 1720618341, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1104, 14, 1720618448, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1105, 14, 1720618503, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1106, 14, 1720618564, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1107, 14, 1720620201, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1108, 9, 1720620492, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1109, 5, 1720620515, 'Zadanie przydzielania awansów zostało wykonane.'),
(1110, 3, 1720620539, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1111, 1, 1720620627, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1112, 14, 1720620705, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1113, 9, 1720620723, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1114, 14, 1720620743, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1115, 14, 1720620832, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1116, 14, 1720620848, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1117, 14, 1720620930, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1118, 14, 1720621046, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1119, 14, 1720621228, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1120, 14, 1720621260, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1121, 14, 1720621324, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1122, 14, 1720621414, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1123, 14, 1720621465, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1124, 5, 1720621580, 'Zadanie przydzielania awansów zostało wykonane.'),
(1125, 9, 1720621608, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1126, 14, 1720621644, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1127, 14, 1720621684, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1128, 14, 1720621746, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1129, 3, 1720621803, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1130, 14, 1720621855, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1131, 14, 1720621881, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1132, 14, 1720621939, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1133, 14, 1720621983, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1134, 14, 1720622082, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1135, 14, 1720622127, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1136, 14, 1720622166, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1137, 14, 1720622232, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1138, 14, 1720622347, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1139, 9, 1720622497, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1140, 14, 1720622663, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1141, 5, 1720622710, 'Zadanie przydzielania awansów zostało wykonane.'),
(1142, 14, 1720622814, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1143, 14, 1720622865, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1144, 14, 1720622911, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1145, 14, 1720622974, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1146, 14, 1720623025, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1147, 14, 1720623125, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1148, 14, 1720623185, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1149, 14, 1720623302, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1150, 9, 1720623358, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1151, 14, 1720623398, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1152, 14, 1720623702, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1153, 3, 1720623777, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1154, 1, 1720623857, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1155, 14, 1720623898, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1156, 5, 1720623952, 'Zadanie przydzielania awansów zostało wykonane.'),
(1157, 14, 1720623997, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1158, 14, 1720624054, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1159, 14, 1720624102, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1160, 14, 1720624143, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1161, 9, 1720624227, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1162, 14, 1720624262, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1163, 14, 1720624339, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1164, 14, 1720624394, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1165, 14, 1720624444, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1166, 14, 1720624505, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1167, 14, 1720624594, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1168, 14, 1720624640, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1169, 14, 1720624693, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1170, 14, 1720624782, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1171, 14, 1720624814, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1172, 14, 1720624865, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1173, 14, 1720625411, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1174, 5, 1720625420, 'Zadanie przydzielania awansów zostało wykonane.'),
(1175, 9, 1720625431, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1176, 3, 1720625841, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1177, 14, 1720625886, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1178, 14, 1720625982, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1179, 9, 1720626012, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1180, 14, 1720626064, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1181, 14, 1720626484, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1182, 5, 1720626513, 'Zadanie przydzielania awansów zostało wykonane.'),
(1183, 14, 1720626895, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1184, 9, 1720626972, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1185, 14, 1720627027, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1186, 14, 1720627102, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1187, 3, 1720627145, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1188, 14, 1720627181, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1189, 1, 1720627272, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1190, 14, 1720627322, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1191, 14, 1720627399, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1192, 14, 1720628711, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1193, 5, 1720628766, 'Zadanie przydzielania awansów zostało wykonane.'),
(1194, 9, 1720628853, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1195, 14, 1720628887, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1196, 14, 1720628946, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1197, 3, 1720629033, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1198, 14, 1720629069, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1199, 14, 1720629596, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1200, 9, 1720629639, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1201, 14, 1720629658, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1202, 14, 1720629728, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1203, 14, 1720629788, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1204, 14, 1720629848, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1205, 5, 1720629913, 'Zadanie przydzielania awansów zostało wykonane.'),
(1206, 14, 1720630044, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1207, 14, 1720630338, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1208, 14, 1720630425, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1209, 14, 1720630458, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1210, 9, 1720632611, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1211, 14, 1720632613, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1212, 3, 1720632706, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1213, 1, 1720632751, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1214, 5, 1720632885, 'Zadanie przydzielania awansów zostało wykonane.'),
(1215, 14, 1720633024, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1216, 14, 1720633246, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1217, 9, 1720633321, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1218, 14, 1720633361, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1219, 14, 1720633418, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1220, 14, 1720633515, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1221, 5, 1720633604, 'Zadanie przydzielania awansów zostało wykonane.'),
(1222, 14, 1720633721, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1223, 14, 1720633742, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1224, 14, 1720634135, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1225, 9, 1720634197, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1226, 14, 1720634267, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1227, 14, 1720634301, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1228, 3, 1720634360, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1229, 14, 1720634402, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1230, 1, 1720634435, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1231, 14, 1720634471, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1232, 14, 1720634617, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1233, 14, 1720634733, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1234, 5, 1720634797, 'Zadanie przydzielania awansów zostało wykonane.'),
(1235, 14, 1720634824, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1236, 14, 1720634903, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1237, 14, 1720634978, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1238, 9, 1720635008, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1239, 14, 1720635279, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1240, 14, 1720635304, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1241, 14, 1720635380, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1242, 14, 1720635458, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1243, 14, 1720635485, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1244, 14, 1720635565, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1245, 14, 1720635672, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1246, 14, 1720635734, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1247, 14, 1720635796, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1248, 14, 1720635856, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1249, 5, 1720635986, 'Zadanie przydzielania awansów zostało wykonane.'),
(1250, 9, 1720636086, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1251, 14, 1720636089, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1252, 14, 1720636177, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1253, 3, 1720636232, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1254, 14, 1720636322, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1255, 14, 1720636485, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1256, 14, 1720636522, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1257, 14, 1720636657, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1258, 14, 1720636756, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1259, 9, 1720636819, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1260, 14, 1720636918, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1261, 14, 1720636967, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1262, 14, 1720637048, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1263, 5, 1720637114, 'Zadanie przydzielania awansów zostało wykonane.'),
(1264, 14, 1720637146, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1265, 14, 1720637458, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1266, 14, 1720637605, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1267, 14, 1720646685, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1268, 9, 1720646768, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1269, 3, 1720681511, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1270, 1, 1720681515, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1271, 5, 1720681518, 'Zadanie przydzielania awansów zostało wykonane.'),
(1272, 14, 1720681926, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1273, 9, 1720682030, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1274, 2, 1720682408, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(1275, 11, 1720682437, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(1276, 8, 1720682625, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(1277, 14, 1720683011, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1278, 5, 1720683440, 'Zadanie przydzielania awansów zostało wykonane.'),
(1279, 9, 1720683461, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1280, 3, 1720683463, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1281, 14, 1720683480, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1282, 14, 1720683557, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1283, 9, 1720683617, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1284, 14, 1720683619, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1285, 14, 1720683670, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1286, 14, 1720683760, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1287, 14, 1720683794, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1288, 14, 1720684076, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1289, 5, 1720684100, 'Zadanie przydzielania awansów zostało wykonane.'),
(1290, 14, 1720684134, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1291, 14, 1720684197, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1292, 14, 1720684207, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1293, 14, 1720684294, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1294, 14, 1720684412, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1295, 14, 1720684441, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1296, 9, 1720684748, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1297, 14, 1720684771, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1298, 3, 1720684800, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1299, 1, 1720685029, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1300, 14, 1720685073, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1301, 5, 1720686003, 'Zadanie przydzielania awansów zostało wykonane.'),
(1302, 14, 1720695221, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1303, 9, 1720701201, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1304, 5, 1720701458, 'Zadanie przydzielania awansów zostało wykonane.'),
(1305, 3, 1720717310, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1306, 1, 1720717310, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1307, 14, 1720717316, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1308, 9, 1720717924, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1309, 5, 1720718167, 'Zadanie przydzielania awansów zostało wykonane.'),
(1310, 14, 1720753545, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1311, 5, 1720775725, 'Zadanie przydzielania awansów zostało wykonane.'),
(1312, 9, 1720775725, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1313, 3, 1720775726, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1314, 1, 1720804788, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1315, 2, 1720804795, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(1316, 11, 1720804797, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(1317, 14, 1720804841, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1318, 8, 1720804876, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(1319, 5, 1720804884, 'Zadanie przydzielania awansów zostało wykonane.'),
(1320, 9, 1720804986, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1321, 3, 1720805035, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1322, 14, 1720805167, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1323, 5, 1720805238, 'Zadanie przydzielania awansów zostało wykonane.'),
(1324, 9, 1720805374, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1325, 14, 1720805520, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1326, 3, 1720805778, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1327, 14, 1720805784, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1328, 14, 1720805866, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1329, 14, 1720805891, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.');
INSERT INTO `mybb_tasklog` (`lid`, `tid`, `dateline`, `data`) VALUES
(1330, 14, 1720806143, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1331, 9, 1720806166, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1332, 14, 1720806199, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1333, 14, 1720806261, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1334, 5, 1720806308, 'Zadanie przydzielania awansów zostało wykonane.'),
(1335, 14, 1720806310, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1336, 14, 1720806372, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1337, 14, 1720806436, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1338, 14, 1720806486, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1339, 14, 1720806627, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1340, 14, 1720806662, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1341, 14, 1720806791, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1342, 14, 1720807113, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1343, 9, 1720807147, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1344, 3, 1720807158, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1345, 14, 1720807193, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1346, 1, 1720807600, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1347, 14, 1720807639, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1348, 5, 1720807663, 'Zadanie przydzielania awansów zostało wykonane.'),
(1349, 14, 1720807683, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1350, 14, 1720807972, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1351, 9, 1720808004, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1352, 14, 1720810314, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1353, 5, 1720810344, 'Zadanie przydzielania awansów zostało wykonane.'),
(1354, 9, 1720810349, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1355, 3, 1720810368, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1356, 14, 1720815109, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1357, 9, 1720815382, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1358, 3, 1720842353, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1359, 1, 1720857744, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1360, 5, 1720868458, 'Zadanie przydzielania awansów zostało wykonane.'),
(1361, 14, 1720870904, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1362, 9, 1720907630, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1363, 2, 1720907696, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(1364, 11, 1720907718, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(1365, 3, 1720907816, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1366, 8, 1720931658, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(1367, 1, 1720962369, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1368, 5, 1720964031, 'Zadanie przydzielania awansów zostało wykonane.'),
(1369, 14, 1720964059, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1370, 9, 1720964078, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1371, 3, 1720964131, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1372, 2, 1720964168, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(1373, 11, 1720964200, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(1374, 8, 1720964332, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(1375, 14, 1720964357, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1376, 9, 1720964440, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1377, 14, 1720964445, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1378, 14, 1720964489, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1379, 14, 1720964544, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1380, 14, 1720964587, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1381, 14, 1720969341, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1382, 5, 1720969438, 'Zadanie przydzielania awansów zostało wykonane.'),
(1383, 9, 1720969491, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1384, 3, 1721031946, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1385, 1, 1721033081, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1386, 14, 1721046995, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1387, 5, 1721118383, 'Zadanie przydzielania awansów zostało wykonane.'),
(1388, 9, 1721148819, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1389, 2, 1721169136, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(1390, 11, 1721169335, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(1391, 8, 1721169364, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(1392, 3, 1721169374, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1393, 1, 1721169384, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1394, 14, 1721169444, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1395, 12, 1721169457, 'Sprawdzenie nowej wersji zostało wykonane pomyślnie.'),
(1396, 5, 1721169491, 'Zadanie przydzielania awansów zostało wykonane.'),
(1397, 9, 1721169505, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1398, 14, 1721169521, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1399, 14, 1721169544, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1400, 9, 1721169618, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1401, 14, 1721169620, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1402, 14, 1721257452, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1403, 5, 1721282311, 'Zadanie przydzielania awansów zostało wykonane.'),
(1404, 9, 1721282501, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1405, 3, 1721340180, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1406, 1, 1721341869, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1407, 2, 1721357183, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(1408, 11, 1721378604, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(1409, 8, 1721383708, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(1410, 14, 1721408722, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1411, 5, 1721408784, 'Zadanie przydzielania awansów zostało wykonane.'),
(1412, 9, 1721408824, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1413, 3, 1721408887, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1414, 1, 1721408941, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1415, 14, 1721409132, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1416, 9, 1721409237, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1417, 14, 1721409300, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1418, 14, 1721409373, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1419, 14, 1721409764, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1420, 14, 1721409803, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1421, 14, 1721409844, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1422, 5, 1721410682, 'Zadanie przydzielania awansów zostało wykonane.'),
(1423, 9, 1721410794, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1424, 14, 1721410893, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1425, 3, 1721410965, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1426, 9, 1721411077, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1427, 14, 1721411119, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1428, 5, 1721411637, 'Zadanie przydzielania awansów zostało wykonane.'),
(1429, 14, 1721411970, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1430, 9, 1721412002, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1431, 3, 1721412025, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1432, 1, 1721412038, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1433, 14, 1721412273, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1434, 5, 1721412498, 'Zadanie przydzielania awansów zostało wykonane.'),
(1435, 14, 1721412722, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1436, 9, 1721412759, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1437, 14, 1721412784, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1438, 14, 1721412859, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1439, 14, 1721413269, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1440, 14, 1721413337, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1441, 14, 1721413407, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1442, 14, 1721413498, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1443, 5, 1721413626, 'Zadanie przydzielania awansów zostało wykonane.'),
(1444, 9, 1721413673, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1445, 14, 1721416826, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1446, 3, 1721416855, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1447, 9, 1721417094, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1448, 5, 1721417186, 'Zadanie przydzielania awansów zostało wykonane.'),
(1449, 1, 1721417219, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1450, 14, 1721417250, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1451, 9, 1721417276, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1452, 14, 1721417334, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1453, 14, 1721417392, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1454, 3, 1721417422, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1455, 14, 1721417446, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1456, 14, 1721417465, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1457, 14, 1721417625, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1458, 14, 1721417646, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1459, 14, 1721418061, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1460, 9, 1721418206, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1461, 14, 1721418220, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1462, 14, 1721418262, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1463, 5, 1721418328, 'Zadanie przydzielania awansów zostało wykonane.'),
(1464, 14, 1721418360, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1465, 14, 1721418448, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1466, 14, 1721418611, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1467, 14, 1721418662, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1468, 14, 1721418739, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1469, 14, 1721418795, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1470, 14, 1721418860, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1471, 9, 1721418952, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1472, 14, 1721418973, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1473, 14, 1721419036, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1474, 14, 1721419097, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1475, 3, 1721419143, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1476, 14, 1721419146, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1477, 1, 1721419202, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1478, 14, 1721419265, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1479, 14, 1721419321, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1480, 14, 1721419392, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1481, 14, 1721419443, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1482, 5, 1721419515, 'Zadanie przydzielania awansów zostało wykonane.'),
(1483, 14, 1721419538, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1484, 14, 1721419562, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1485, 14, 1721419629, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1486, 14, 1721419684, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1487, 14, 1721419754, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1488, 9, 1721419828, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1489, 14, 1721419857, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1490, 14, 1721419895, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1491, 14, 1721419930, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1492, 14, 1721419988, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1493, 14, 1721420139, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1494, 14, 1721420205, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1495, 14, 1721420296, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1496, 14, 1721420416, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1497, 14, 1721420463, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1498, 14, 1721420533, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1499, 14, 1721420649, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1500, 5, 1721420769, 'Zadanie przydzielania awansów zostało wykonane.'),
(1501, 9, 1721420830, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1502, 14, 1721420888, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1503, 14, 1721420961, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1504, 3, 1721421027, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1505, 14, 1721421273, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1506, 14, 1721421338, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1507, 14, 1721421415, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1508, 14, 1721421456, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1509, 14, 1721421698, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1510, 9, 1721421725, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1511, 14, 1721421768, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1512, 14, 1721422713, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1513, 5, 1721422744, 'Zadanie przydzielania awansów zostało wykonane.'),
(1514, 9, 1721422813, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1515, 3, 1721422840, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1516, 14, 1721422894, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1517, 1, 1721422936, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1518, 14, 1721422976, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1519, 14, 1721422999, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1520, 14, 1721423045, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1521, 5, 1721423122, 'Zadanie przydzielania awansów zostało wykonane.'),
(1522, 14, 1721423173, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1523, 14, 1721423397, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1524, 9, 1721423428, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1525, 14, 1721423449, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1526, 14, 1721423464, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1527, 14, 1721423535, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1528, 14, 1721423600, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1529, 14, 1721423650, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1530, 14, 1721423702, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1531, 14, 1721423785, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1532, 14, 1721423834, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1533, 14, 1721424400, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1534, 5, 1721424868, 'Zadanie przydzielania awansów zostało wykonane.'),
(1535, 9, 1721426942, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1536, 14, 1721426968, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1537, 3, 1721429514, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1538, 5, 1721430138, 'Zadanie przydzielania awansów zostało wykonane.'),
(1539, 1, 1721447577, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1540, 9, 1721461972, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1541, 14, 1721468717, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1542, 3, 1721468910, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1543, 5, 1721469809, 'Zadanie przydzielania awansów zostało wykonane.'),
(1544, 2, 1721469856, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(1545, 11, 1721469918, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(1546, 1, 1721470211, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1547, 8, 1721470382, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(1548, 9, 1721470417, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1549, 14, 1721470609, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1550, 3, 1721470669, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1551, 5, 1721470760, 'Zadanie przydzielania awansów zostało wykonane.'),
(1552, 14, 1721470820, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1553, 14, 1721470872, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1554, 14, 1721471341, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1555, 5, 1721471382, 'Zadanie przydzielania awansów zostało wykonane.'),
(1556, 9, 1721471552, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1557, 3, 1721471608, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1558, 14, 1721471631, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1559, 14, 1721471647, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1560, 14, 1721471793, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1561, 14, 1721471916, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1562, 14, 1721471991, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1563, 9, 1721472152, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1564, 14, 1721472189, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1565, 14, 1721472460, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1566, 5, 1721472489, 'Zadanie przydzielania awansów zostało wykonane.'),
(1567, 14, 1721472493, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1568, 14, 1721472681, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1569, 14, 1721472748, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1570, 14, 1721472838, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1571, 14, 1721472860, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1572, 9, 1721472950, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1573, 14, 1721472990, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1574, 14, 1721473038, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1575, 14, 1721473099, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1576, 3, 1721476734, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1577, 14, 1721478967, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1578, 1, 1721478974, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1579, 5, 1721478981, 'Zadanie przydzielania awansów zostało wykonane.'),
(1580, 9, 1721478987, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1581, 3, 1721479012, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1582, 14, 1721479430, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1583, 9, 1721481583, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1584, 14, 1721482793, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1585, 5, 1721482820, 'Zadanie przydzielania awansów zostało wykonane.'),
(1586, 3, 1721482835, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1587, 1, 1721482852, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1588, 9, 1721482869, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1589, 14, 1721482890, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1590, 14, 1721482937, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1591, 14, 1721483087, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1592, 5, 1721483500, 'Zadanie przydzielania awansów zostało wykonane.'),
(1593, 14, 1721484125, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1594, 9, 1721484141, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1595, 3, 1721488698, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1596, 1, 1721488700, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1597, 14, 1721488732, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1598, 5, 1721488733, 'Zadanie przydzielania awansów zostało wykonane.'),
(1599, 9, 1721488746, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1600, 14, 1721489504, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1601, 5, 1721489531, 'Zadanie przydzielania awansów zostało wykonane.'),
(1602, 9, 1721489552, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1603, 3, 1721489586, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1604, 14, 1721489594, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1605, 14, 1721491223, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1606, 9, 1721494143, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1607, 5, 1721497110, 'Zadanie przydzielania awansów zostało wykonane.'),
(1608, 3, 1721497117, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1609, 1, 1721497152, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1610, 14, 1721497172, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1611, 9, 1721497188, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1612, 9, 1721497202, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1613, 14, 1721497205, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1614, 14, 1721497340, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1615, 14, 1721497386, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1616, 14, 1721497447, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1617, 5, 1721497510, 'Zadanie przydzielania awansów zostało wykonane.'),
(1618, 14, 1721497515, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1619, 14, 1721497573, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1620, 14, 1721497875, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1621, 14, 1721504014, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1622, 9, 1721504030, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1623, 3, 1721504095, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1624, 1, 1721504112, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1625, 5, 1721509703, 'Zadanie przydzielania awansów zostało wykonane.'),
(1626, 14, 1721510508, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1627, 9, 1721510508, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1628, 3, 1721510509, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1629, 1, 1721510511, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1630, 14, 1721510587, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1631, 14, 1721510756, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1632, 5, 1721511326, 'Zadanie przydzielania awansów zostało wykonane.'),
(1633, 9, 1721511333, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1634, 14, 1721511334, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1635, 3, 1721511345, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1636, 14, 1721511385, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1637, 14, 1721512027, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1638, 9, 1721512031, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1639, 5, 1721512042, 'Zadanie przydzielania awansów zostało wykonane.'),
(1640, 14, 1721512589, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1641, 9, 1721513557, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1642, 14, 1721513582, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1643, 3, 1721513621, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1644, 1, 1721513643, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1645, 5, 1721513649, 'Zadanie przydzielania awansów zostało wykonane.'),
(1646, 14, 1721513653, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1647, 14, 1721513705, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1648, 14, 1721520897, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1649, 5, 1721564660, 'Zadanie przydzielania awansów zostało wykonane.'),
(1650, 9, 1721564668, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1651, 3, 1721598768, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1652, 1, 1721598989, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1653, 2, 1721598991, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(1654, 11, 1721599017, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(1655, 14, 1721599020, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1656, 8, 1721599024, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(1657, 5, 1721599026, 'Zadanie przydzielania awansów zostało wykonane.'),
(1658, 9, 1721599030, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1659, 14, 1721599083, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1660, 3, 1721599206, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1661, 14, 1721599228, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1662, 1, 1721599240, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1663, 14, 1721599274, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1664, 14, 1721599374, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1665, 14, 1721599541, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1666, 5, 1721599564, 'Zadanie przydzielania awansów zostało wykonane.'),
(1667, 14, 1721599665, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1668, 14, 1721599736, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1669, 14, 1721599744, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1670, 9, 1721599887, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1671, 14, 1721599916, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1672, 14, 1721599921, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1673, 14, 1721599981, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1674, 14, 1721600048, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1675, 14, 1721600206, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1676, 14, 1721600288, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1677, 14, 1721600353, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1678, 14, 1721600454, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1679, 14, 1721600467, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1680, 14, 1721600521, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1681, 14, 1721600660, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1682, 5, 1721600710, 'Zadanie przydzielania awansów zostało wykonane.'),
(1683, 9, 1721600728, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1684, 14, 1721600746, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1685, 14, 1721600763, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1686, 14, 1721600830, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1687, 14, 1721600896, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1688, 14, 1721600972, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1689, 3, 1721601164, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1690, 14, 1721601242, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1691, 14, 1721601341, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1692, 14, 1721601404, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1693, 14, 1721601432, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1694, 14, 1721601562, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1695, 9, 1721601699, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1696, 14, 1721601702, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1697, 14, 1721601760, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1698, 14, 1721601785, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1699, 14, 1721606896, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1700, 5, 1721606897, 'Zadanie przydzielania awansów zostało wykonane.'),
(1701, 9, 1721636705, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1702, 3, 1721636711, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1703, 1, 1721636812, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1704, 2, 1721636817, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(1705, 11, 1721636839, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(1706, 14, 1721636844, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1707, 5, 1721639895, 'Zadanie przydzielania awansów zostało wykonane.'),
(1708, 8, 1721639949, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(1709, 14, 1721639980, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1710, 3, 1721639993, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1711, 9, 1721640031, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1712, 1, 1721640084, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1713, 14, 1721640176, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1714, 14, 1721640208, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1715, 14, 1721640256, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1716, 5, 1721640341, 'Zadanie przydzielania awansów zostało wykonane.'),
(1717, 9, 1721640426, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1718, 14, 1721640519, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1719, 14, 1721640564, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1720, 3, 1721640942, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1721, 14, 1721643797, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1722, 9, 1721643960, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1723, 5, 1721643995, 'Zadanie przydzielania awansów zostało wykonane.'),
(1724, 3, 1721644012, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1725, 1, 1721644456, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1726, 14, 1721644693, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1727, 3, 1721644915, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1728, 14, 1721644956, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1729, 9, 1721645002, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1730, 14, 1721645173, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1731, 5, 1721645181, 'Zadanie przydzielania awansów zostało wykonane.'),
(1732, 14, 1721645297, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1733, 14, 1721645446, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1734, 14, 1721645518, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1735, 14, 1721645629, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1736, 14, 1721645704, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1737, 9, 1721645719, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1738, 14, 1721645771, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1739, 14, 1721645953, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1740, 3, 1721645955, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1741, 1, 1721646180, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1742, 14, 1721647197, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1743, 5, 1721647218, 'Zadanie przydzielania awansów zostało wykonane.'),
(1744, 9, 1721648041, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1745, 14, 1721648053, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1746, 5, 1721648137, 'Zadanie przydzielania awansów zostało wykonane.'),
(1747, 3, 1721648220, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1748, 14, 1721648238, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1749, 14, 1721648341, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1750, 9, 1721648467, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1751, 14, 1721648627, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1752, 14, 1721648723, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1753, 5, 1721648813, 'Zadanie przydzielania awansów zostało wykonane.'),
(1754, 14, 1721648856, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1755, 14, 1721648892, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1756, 14, 1721649015, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1757, 14, 1721649089, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1758, 14, 1721649127, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1759, 14, 1721649218, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1760, 14, 1721649277, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1761, 9, 1721649475, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1762, 14, 1721649487, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1763, 3, 1721649541, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1764, 14, 1721649560, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1765, 1, 1721649601, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1766, 14, 1721649802, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1767, 14, 1721650097, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1768, 5, 1721650560, 'Zadanie przydzielania awansów zostało wykonane.'),
(1769, 14, 1721650818, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1770, 9, 1721650823, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1771, 14, 1721650869, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1772, 14, 1721650971, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1773, 14, 1721651039, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1774, 14, 1721651076, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1775, 5, 1721651140, 'Zadanie przydzielania awansów zostało wykonane.'),
(1776, 9, 1721651164, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1777, 14, 1721651195, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1778, 14, 1721651227, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1779, 14, 1721652122, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1780, 3, 1721652355, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1781, 9, 1721652539, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1782, 14, 1721652627, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1783, 5, 1721652715, 'Zadanie przydzielania awansów zostało wykonane.'),
(1784, 14, 1721652757, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1785, 14, 1721652812, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1786, 14, 1721652853, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1787, 9, 1721652915, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1788, 14, 1721653407, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1789, 3, 1721653431, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1790, 1, 1721653446, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1791, 14, 1721653473, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1792, 5, 1721653587, 'Zadanie przydzielania awansów zostało wykonane.'),
(1793, 14, 1721653873, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1794, 9, 1721653997, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1795, 14, 1721654121, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1796, 14, 1721654235, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1797, 14, 1721654398, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1798, 14, 1721654545, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1799, 14, 1721654661, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1800, 5, 1721654703, 'Zadanie przydzielania awansów zostało wykonane.'),
(1801, 9, 1721654728, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1802, 14, 1721654743, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1803, 14, 1721654765, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1804, 14, 1721654821, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1805, 14, 1721654887, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1806, 14, 1721654961, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1807, 3, 1721655036, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1808, 14, 1721655121, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1809, 14, 1721655191, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1810, 14, 1721655306, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1811, 14, 1721655456, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1812, 14, 1721655487, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1813, 14, 1721655552, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1814, 9, 1721655612, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1815, 14, 1721655675, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1816, 14, 1721655725, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1817, 14, 1721655795, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1818, 14, 1721655874, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1819, 5, 1721656092, 'Zadanie przydzielania awansów zostało wykonane.'),
(1820, 14, 1721656148, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1821, 14, 1721656260, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1822, 14, 1721656471, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1823, 9, 1721656512, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1824, 14, 1721656555, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1825, 14, 1721656654, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1826, 14, 1721656685, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1827, 3, 1721656788, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1828, 14, 1721656826, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1829, 1, 1721656828, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1830, 14, 1721656871, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1831, 14, 1721656922, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1832, 14, 1721656987, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1833, 14, 1721657097, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1834, 5, 1721657140, 'Zadanie przydzielania awansów zostało wykonane.'),
(1835, 14, 1721657161, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1836, 14, 1721657248, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1837, 14, 1721657302, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1838, 14, 1721657383, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1839, 9, 1721657485, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1840, 14, 1721657518, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1841, 14, 1721657590, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1842, 14, 1721657643, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1843, 14, 1721657733, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1844, 14, 1721657766, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1845, 14, 1721657939, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1846, 14, 1721657959, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1847, 14, 1721658008, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1848, 14, 1721658118, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1849, 14, 1721658151, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1850, 14, 1721658196, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1851, 14, 1721658248, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1852, 5, 1721658309, 'Zadanie przydzielania awansów zostało wykonane.'),
(1853, 9, 1721658313, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1854, 14, 1721658324, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1855, 14, 1721658444, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1856, 14, 1721658595, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1857, 3, 1721658661, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1858, 14, 1721658689, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1859, 14, 1721658789, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1860, 14, 1721658846, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1861, 14, 1721658922, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1862, 14, 1721658990, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1863, 14, 1721659023, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1864, 14, 1721659330, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1865, 9, 1721659348, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1866, 14, 1721659404, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1867, 14, 1721659473, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1868, 5, 1721659542, 'Zadanie przydzielania awansów zostało wykonane.'),
(1869, 14, 1721659556, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1870, 14, 1721659583, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1871, 14, 1721659653, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1872, 14, 1721659694, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1873, 14, 1721660061, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1874, 9, 1721660106, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1875, 14, 1721660119, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1876, 14, 1721660279, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1877, 14, 1721660469, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1878, 3, 1721660598, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1879, 1, 1721660630, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1880, 14, 1721660724, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1881, 5, 1721660746, 'Zadanie przydzielania awansów zostało wykonane.'),
(1882, 14, 1721660843, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1883, 14, 1721660882, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1884, 14, 1721660984, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1885, 9, 1721661028, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1886, 14, 1721661073, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1887, 14, 1721661158, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1888, 14, 1721661212, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1889, 14, 1721661242, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1890, 14, 1721661509, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1891, 14, 1721661542, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1892, 14, 1721661967, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1893, 5, 1721667687, 'Zadanie przydzielania awansów zostało wykonane.'),
(1894, 9, 1721668220, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1895, 14, 1721668224, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1896, 3, 1721668224, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1897, 1, 1721668227, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1898, 5, 1721672505, 'Zadanie przydzielania awansów zostało wykonane.'),
(1899, 14, 1721672553, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1900, 9, 1721673035, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.');
INSERT INTO `mybb_tasklog` (`lid`, `tid`, `dateline`, `data`) VALUES
(1901, 3, 1721673069, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1902, 1, 1721673107, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1903, 14, 1721673124, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1904, 5, 1721673146, 'Zadanie przydzielania awansów zostało wykonane.'),
(1905, 14, 1721673202, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1906, 14, 1721673259, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1907, 14, 1721673304, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1908, 14, 1721673480, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1909, 14, 1721673553, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1910, 9, 1721673681, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1911, 14, 1721673876, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1912, 5, 1721674199, 'Zadanie przydzielania awansów zostało wykonane.'),
(1913, 14, 1721674226, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1914, 14, 1721674285, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1915, 14, 1721674388, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1916, 14, 1721674480, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1917, 9, 1721674509, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1918, 14, 1721674582, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1919, 14, 1721674778, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1920, 3, 1721674819, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1921, 1, 1721674843, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1922, 14, 1721674860, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1923, 14, 1721674955, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1924, 14, 1721674983, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1925, 14, 1721675060, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1926, 5, 1721675191, 'Zadanie przydzielania awansów zostało wykonane.'),
(1927, 14, 1721675683, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1928, 9, 1721675738, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1929, 14, 1721675751, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1930, 14, 1721675761, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1931, 14, 1721675825, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1932, 14, 1721675909, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1933, 14, 1721675988, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1934, 14, 1721676019, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1935, 14, 1721676080, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1936, 14, 1721676138, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1937, 14, 1721676293, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1938, 5, 1721676316, 'Zadanie przydzielania awansów zostało wykonane.'),
(1939, 9, 1721676331, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1940, 14, 1721676358, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1941, 14, 1721676381, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1942, 14, 1721676427, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1943, 14, 1721676482, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1944, 14, 1721676560, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1945, 3, 1721676612, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1946, 14, 1721676634, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1947, 14, 1721676689, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1948, 14, 1721676807, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1949, 14, 1721676879, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1950, 14, 1721676902, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1951, 14, 1721677098, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1952, 14, 1721677214, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1953, 9, 1721677241, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1954, 14, 1721677269, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1955, 14, 1721677330, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1956, 14, 1721677388, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1957, 14, 1721677456, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1958, 5, 1721677514, 'Zadanie przydzielania awansów zostało wykonane.'),
(1959, 14, 1721677634, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1960, 14, 1721677690, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1961, 14, 1721677915, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1962, 14, 1721678010, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1963, 14, 1721678054, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1964, 9, 1721678140, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1965, 14, 1721678241, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1966, 14, 1721678349, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1967, 3, 1721678393, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1968, 1, 1721678465, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1969, 14, 1721678553, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1970, 14, 1721678603, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1971, 14, 1721678682, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1972, 5, 1721678766, 'Zadanie przydzielania awansów zostało wykonane.'),
(1973, 14, 1721678812, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1974, 14, 1721678862, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1975, 14, 1721678967, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1976, 9, 1721679179, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1977, 14, 1721679310, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1978, 14, 1721679374, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1979, 14, 1721679539, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1980, 14, 1721679544, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1981, 14, 1721679687, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1982, 14, 1721679770, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1983, 14, 1721679840, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1984, 5, 1721682530, 'Zadanie przydzielania awansów zostało wykonane.'),
(1985, 9, 1721689418, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1986, 14, 1721690026, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1987, 3, 1721690038, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1988, 1, 1721690421, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1989, 5, 1721719299, 'Zadanie przydzielania awansów zostało wykonane.'),
(1990, 9, 1721719392, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(1991, 14, 1721719410, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1992, 3, 1721725302, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(1993, 1, 1721725920, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(1994, 2, 1721725990, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(1995, 11, 1721726057, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(1996, 12, 1721735554, 'Sprawdzenie nowej wersji zostało wykonane pomyślnie.'),
(1997, 8, 1721737543, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(1998, 14, 1721737562, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(1999, 5, 1721737570, 'Zadanie przydzielania awansów zostało wykonane.'),
(2000, 9, 1721737575, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2001, 3, 1721737651, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2002, 1, 1721737663, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2003, 14, 1721737699, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2004, 14, 1721738007, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2005, 3, 1721738033, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2006, 14, 1721738097, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2007, 14, 1721738125, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2008, 14, 1721738173, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2009, 14, 1721738229, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2010, 14, 1721738284, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2011, 14, 1721738817, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2012, 9, 1721739019, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2013, 5, 1721743212, 'Zadanie przydzielania awansów zostało wykonane.'),
(2014, 14, 1721743392, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2015, 9, 1721743416, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2016, 3, 1721743560, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2017, 1, 1721743584, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2018, 14, 1721743601, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2019, 5, 1721744103, 'Zadanie przydzielania awansów zostało wykonane.'),
(2020, 14, 1721744367, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2021, 9, 1721744369, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2022, 14, 1721750783, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2023, 5, 1721750953, 'Zadanie przydzielania awansów zostało wykonane.'),
(2024, 9, 1721751079, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2025, 3, 1721751515, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2026, 1, 1721751614, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2027, 14, 1721755467, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2028, 5, 1721764132, 'Zadanie przydzielania awansów zostało wykonane.'),
(2029, 9, 1721764316, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2030, 3, 1721764375, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2031, 1, 1721764437, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2032, 14, 1721764439, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2033, 14, 1721764605, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2034, 9, 1721764613, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2035, 14, 1721764621, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2036, 14, 1721764695, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2037, 3, 1721764746, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2038, 14, 1721764750, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2039, 1, 1721764807, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2040, 14, 1721764846, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2041, 14, 1721764862, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2042, 14, 1721764951, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2043, 14, 1721765014, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2044, 14, 1721765245, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2045, 5, 1721765270, 'Zadanie przydzielania awansów zostało wykonane.'),
(2046, 14, 1721765285, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2047, 14, 1721765423, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2048, 9, 1721765459, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2049, 14, 1721765509, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2050, 14, 1721765553, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2051, 14, 1721765586, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2052, 14, 1721765801, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2053, 14, 1721765829, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2054, 14, 1721765915, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2055, 14, 1721766010, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2056, 14, 1721766083, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2057, 14, 1721766137, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2058, 14, 1721766185, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2059, 14, 1721766252, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2060, 5, 1721766565, 'Zadanie przydzielania awansów zostało wykonane.'),
(2061, 9, 1721766576, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2062, 14, 1721766580, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2063, 3, 1721766673, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2064, 14, 1721766696, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2065, 14, 1721766734, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2066, 14, 1721766908, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2067, 14, 1721767006, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2068, 14, 1721767311, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2069, 9, 1721767465, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2070, 14, 1721767543, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2071, 5, 1721767585, 'Zadanie przydzielania awansów zostało wykonane.'),
(2072, 14, 1721767606, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2073, 14, 1721767621, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2074, 14, 1721767700, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2075, 14, 1721767746, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2076, 14, 1721767811, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2077, 14, 1721767880, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2078, 14, 1721767951, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2079, 14, 1721768025, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2080, 14, 1721768171, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2081, 9, 1721768210, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2082, 14, 1721768281, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2083, 3, 1721768441, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2084, 14, 1721768505, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2085, 1, 1721768605, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2086, 14, 1721768712, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2087, 5, 1721768748, 'Zadanie przydzielania awansów zostało wykonane.'),
(2088, 14, 1721768841, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2089, 14, 1721768909, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2090, 14, 1721768996, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2091, 9, 1721769015, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2092, 14, 1721769044, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2093, 14, 1721769074, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2094, 14, 1721769141, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2095, 14, 1721769213, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2096, 14, 1721769242, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2097, 14, 1721769317, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2098, 14, 1721769427, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2099, 14, 1721769483, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2100, 14, 1721769571, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2101, 14, 1721769619, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2102, 14, 1721769722, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2103, 14, 1721769790, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2104, 14, 1721769892, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2105, 5, 1721769997, 'Zadanie przydzielania awansów zostało wykonane.'),
(2106, 9, 1721770023, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2107, 14, 1721770068, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2108, 14, 1721770087, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2109, 14, 1721770232, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2110, 3, 1721770325, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2111, 14, 1721770346, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2112, 14, 1721770399, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2113, 14, 1721770445, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2114, 14, 1721770554, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2115, 14, 1721770576, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2116, 14, 1721770645, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2117, 14, 1721770781, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2118, 9, 1721770841, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2119, 14, 1721770915, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2120, 14, 1721771003, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2121, 14, 1721771107, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2122, 5, 1721771164, 'Zadanie przydzielania awansów zostało wykonane.'),
(2123, 14, 1721771186, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2124, 14, 1721771231, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2125, 14, 1721771306, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2126, 14, 1721771371, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2127, 14, 1721771417, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2128, 14, 1721771557, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2129, 14, 1721771655, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2130, 9, 1721771737, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2131, 14, 1721771760, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2132, 14, 1721771867, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2133, 14, 1721771880, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2134, 3, 1721772099, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2135, 14, 1721772185, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2136, 1, 1721772240, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2137, 14, 1721772280, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2138, 5, 1721772313, 'Zadanie przydzielania awansów zostało wykonane.'),
(2139, 14, 1721772385, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2140, 14, 1721772476, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2141, 14, 1721772500, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2142, 14, 1721772596, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2143, 9, 1721772615, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2144, 14, 1721772677, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2145, 14, 1721772727, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2146, 14, 1721772795, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2147, 14, 1721772885, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2148, 14, 1721772938, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2149, 14, 1721773045, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2150, 14, 1721773089, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2151, 14, 1721773177, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2152, 14, 1721773212, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2153, 14, 1721773268, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2154, 14, 1721773362, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2155, 14, 1721773429, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2156, 14, 1721773476, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2157, 5, 1721773521, 'Zadanie przydzielania awansów zostało wykonane.'),
(2158, 9, 1721773810, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2159, 14, 1721773892, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2160, 3, 1721773895, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2161, 14, 1721773947, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2162, 14, 1721773984, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2163, 14, 1721774066, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2164, 14, 1721774108, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2165, 14, 1721774210, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2166, 14, 1721774244, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2167, 14, 1721774314, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2168, 14, 1721774416, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2169, 9, 1721774450, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2170, 14, 1721774538, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2171, 14, 1721774589, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2172, 14, 1721774950, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2173, 5, 1721774993, 'Zadanie przydzielania awansów zostało wykonane.'),
(2174, 14, 1721775032, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2175, 14, 1721775394, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2176, 9, 1721775473, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2177, 14, 1721775497, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2178, 3, 1721775646, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2179, 14, 1721775667, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2180, 1, 1721775737, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2181, 14, 1721775930, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2182, 5, 1721775999, 'Zadanie przydzielania awansów zostało wykonane.'),
(2183, 14, 1721776064, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2184, 14, 1721776126, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2185, 14, 1721776227, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2186, 9, 1721776255, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2187, 14, 1721776423, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2188, 14, 1721776491, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2189, 14, 1721776594, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2190, 14, 1721776644, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2191, 14, 1721776696, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2192, 14, 1721776873, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2193, 14, 1721777012, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2194, 14, 1721777168, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2195, 5, 1721778525, 'Zadanie przydzielania awansów zostało wykonane.'),
(2196, 9, 1721778627, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2197, 14, 1721778671, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2198, 3, 1721778806, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2199, 14, 1721778877, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2200, 9, 1721778930, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2201, 14, 1721779064, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2202, 14, 1721779137, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2203, 3, 1721779167, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2204, 14, 1721779342, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2205, 1, 1721779351, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2206, 2, 1721779450, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(2207, 11, 1721779678, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(2208, 14, 1721779740, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2209, 5, 1721779794, 'Zadanie przydzielania awansów zostało wykonane.'),
(2210, 9, 1721780010, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2211, 14, 1721780073, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2212, 14, 1721780162, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2213, 14, 1721780271, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2214, 14, 1721780575, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2215, 14, 1721780608, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2216, 14, 1721780677, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2217, 5, 1721780739, 'Zadanie przydzielania awansów zostało wykonane.'),
(2218, 9, 1721780761, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2219, 14, 1721780765, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2220, 14, 1721780858, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2221, 14, 1721780965, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2222, 3, 1721804502, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2223, 14, 1721804544, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2224, 9, 1721804602, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2225, 5, 1721804645, 'Zadanie przydzielania awansów zostało wykonane.'),
(2226, 1, 1721804700, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2227, 8, 1721804870, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(2228, 14, 1721805091, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2229, 5, 1721805161, 'Zadanie przydzielania awansów zostało wykonane.'),
(2230, 9, 1721805169, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2231, 14, 1721805279, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2232, 14, 1721805301, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2233, 14, 1721805410, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2234, 14, 1721806157, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2235, 5, 1721806176, 'Zadanie przydzielania awansów zostało wykonane.'),
(2236, 9, 1721806204, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2237, 3, 1721806238, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2238, 14, 1721806276, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2239, 14, 1721806321, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2240, 14, 1721806383, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2241, 14, 1721806456, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2242, 14, 1721806503, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2243, 14, 1721806639, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2244, 14, 1721806707, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2245, 14, 1721806765, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2246, 9, 1721806809, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2247, 14, 1721806827, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2248, 14, 1721807093, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2249, 5, 1721807106, 'Zadanie przydzielania awansów zostało wykonane.'),
(2250, 14, 1721807118, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2251, 14, 1721807176, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2252, 14, 1721807365, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2253, 14, 1721807500, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2254, 14, 1721807820, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2255, 9, 1721808126, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2256, 14, 1721808148, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2257, 3, 1721808520, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2258, 1, 1721808593, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2259, 14, 1721809025, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2260, 5, 1721809458, 'Zadanie przydzielania awansów zostało wykonane.'),
(2261, 9, 1721809482, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2262, 14, 1721810797, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2263, 5, 1721810806, 'Zadanie przydzielania awansów zostało wykonane.'),
(2264, 9, 1721810822, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2265, 3, 1721810826, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2266, 14, 1721810946, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2267, 14, 1721814683, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2268, 9, 1721814789, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2269, 3, 1721814855, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2270, 1, 1721814880, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2271, 5, 1721814910, 'Zadanie przydzielania awansów zostało wykonane.'),
(2272, 14, 1721814958, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2273, 9, 1721814988, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2274, 14, 1721817084, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2275, 3, 1721817586, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2276, 1, 1721817655, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2277, 5, 1721817684, 'Zadanie przydzielania awansów zostało wykonane.'),
(2278, 9, 1721817699, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2279, 14, 1721817706, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2280, 14, 1721817727, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2281, 14, 1721817782, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2282, 14, 1721817843, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2283, 5, 1721817924, 'Zadanie przydzielania awansów zostało wykonane.'),
(2284, 14, 1721818191, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2285, 14, 1721818260, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2286, 14, 1721818415, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2287, 14, 1721818446, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2288, 9, 1721818583, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2289, 14, 1721818620, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2290, 14, 1721818722, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2291, 3, 1721818804, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2292, 14, 1721819027, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2293, 1, 1721819030, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2294, 14, 1721819263, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2295, 5, 1721819510, 'Zadanie przydzielania awansów zostało wykonane.'),
(2296, 14, 1721819572, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2297, 9, 1721819728, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2298, 14, 1721819826, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2299, 14, 1721819919, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2300, 14, 1721819997, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2301, 14, 1721820023, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2302, 14, 1721820176, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2303, 14, 1721820183, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2304, 14, 1721820245, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2305, 5, 1721831177, 'Zadanie przydzielania awansów zostało wykonane.'),
(2306, 9, 1721831280, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2307, 14, 1721831316, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2308, 3, 1721831373, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2309, 1, 1721831452, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2310, 14, 1721831456, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2311, 3, 1721831464, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2312, 14, 1721831606, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2313, 14, 1721832118, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2314, 9, 1721832588, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2315, 14, 1721832595, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2316, 5, 1721832790, 'Zadanie przydzielania awansów zostało wykonane.'),
(2317, 14, 1721833222, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2318, 9, 1721833314, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2319, 3, 1721833536, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2320, 1, 1721833644, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2321, 14, 1721833735, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2322, 5, 1721833776, 'Zadanie przydzielania awansów zostało wykonane.'),
(2323, 14, 1721833844, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2324, 9, 1721833909, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2325, 14, 1721833955, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2326, 14, 1721833996, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2327, 14, 1721834065, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2328, 14, 1721834136, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2329, 14, 1721834181, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2330, 14, 1721834321, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2331, 14, 1721834557, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2332, 14, 1721834621, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2333, 14, 1721834754, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2334, 5, 1721834799, 'Zadanie przydzielania awansów zostało wykonane.'),
(2335, 9, 1721834961, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2336, 14, 1721835114, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2337, 3, 1721835203, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2338, 14, 1721835251, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2339, 14, 1721836306, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2340, 9, 1721836309, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2341, 5, 1721836311, 'Zadanie przydzielania awansów zostało wykonane.'),
(2342, 14, 1721836401, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2343, 14, 1721836521, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2344, 9, 1721841954, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2345, 14, 1721842024, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2346, 3, 1721846660, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2347, 1, 1721846693, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2348, 5, 1721846826, 'Zadanie przydzielania awansów zostało wykonane.'),
(2349, 14, 1721846888, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2350, 9, 1721846934, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2351, 14, 1721846986, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2352, 14, 1721847154, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2353, 14, 1721847389, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2354, 9, 1721847435, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2355, 14, 1721847459, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2356, 14, 1721847518, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2357, 3, 1721847573, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2358, 14, 1721847604, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2359, 1, 1721847793, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2360, 14, 1721847851, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2361, 5, 1721847918, 'Zadanie przydzielania awansów zostało wykonane.'),
(2362, 14, 1721847925, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2363, 14, 1721847965, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2364, 14, 1721848086, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2365, 14, 1721848152, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2366, 9, 1721848213, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2367, 14, 1721848248, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2368, 14, 1721848308, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2369, 14, 1721848397, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2370, 14, 1721848472, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2371, 14, 1721848507, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2372, 14, 1721848570, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2373, 14, 1721848649, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2374, 14, 1721848712, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2375, 14, 1721848790, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2376, 14, 1721848848, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2377, 14, 1721849185, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2378, 5, 1721849227, 'Zadanie przydzielania awansów zostało wykonane.'),
(2379, 9, 1721849252, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2380, 14, 1721849270, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2381, 14, 1721849305, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2382, 14, 1721849378, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2383, 3, 1721849413, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2384, 14, 1721849431, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2385, 14, 1721849466, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2386, 14, 1721849529, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2387, 14, 1721849593, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2388, 14, 1721849657, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2389, 14, 1721849733, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2390, 14, 1721849779, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2391, 14, 1721849837, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2392, 14, 1721849906, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2393, 14, 1721849944, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2394, 9, 1721850058, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2395, 14, 1721850067, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2396, 14, 1721850211, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2397, 14, 1721850305, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2398, 5, 1721851529, 'Zadanie przydzielania awansów zostało wykonane.'),
(2399, 14, 1721851940, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2400, 9, 1721851944, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2401, 3, 1721852345, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2402, 1, 1721852378, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2403, 14, 1721852471, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2404, 14, 1721852523, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2405, 14, 1721852621, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2406, 14, 1721852660, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2407, 5, 1721852716, 'Zadanie przydzielania awansów zostało wykonane.'),
(2408, 9, 1721852943, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2409, 14, 1721853031, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2410, 3, 1721853905, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2411, 14, 1721853953, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2412, 9, 1721853990, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2413, 5, 1721854024, 'Zadanie przydzielania awansów zostało wykonane.'),
(2414, 14, 1721854056, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2415, 14, 1721854082, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2416, 14, 1721854183, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2417, 14, 1721856636, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2418, 9, 1721856680, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2419, 3, 1721856766, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2420, 1, 1721858382, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2421, 5, 1721858430, 'Zadanie przydzielania awansów zostało wykonane.'),
(2422, 14, 1721858486, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2423, 9, 1721858593, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2424, 3, 1721858612, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2425, 1, 1721858988, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2426, 14, 1721859103, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2427, 5, 1721859195, 'Zadanie przydzielania awansów zostało wykonane.'),
(2428, 9, 1721859451, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2429, 14, 1721859470, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2430, 14, 1721859642, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2431, 14, 1721862672, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2432, 5, 1721862675, 'Zadanie przydzielania awansów zostało wykonane.'),
(2433, 9, 1721862709, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2434, 3, 1721863734, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2435, 1, 1721864341, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2436, 14, 1721864348, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2437, 5, 1721890068, 'Zadanie przydzielania awansów zostało wykonane.'),
(2438, 9, 1721891516, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2439, 3, 1721900488, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2440, 14, 1721901125, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2441, 1, 1721901996, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2442, 2, 1721902004, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(2443, 11, 1721902033, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(2444, 8, 1721902204, 'Zadanie czyszczenia logów zostało wykonane. Usunięto wszystkie przestarzałe wpisy.'),
(2445, 5, 1721902239, 'Zadanie przydzielania awansów zostało wykonane.'),
(2446, 9, 1721902281, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2447, 14, 1721902308, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2448, 3, 1721902491, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2449, 14, 1721902493, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2450, 14, 1721902503, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2451, 14, 1721903368, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2452, 5, 1721904697, 'Zadanie przydzielania awansów zostało wykonane.'),
(2453, 9, 1721904745, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2454, 3, 1721904823, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2455, 14, 1721904867, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2456, 9, 1721904902, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2457, 14, 1721905017, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2458, 14, 1721905036, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2459, 14, 1721905176, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2460, 3, 1721905229, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2461, 1, 1721905351, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2462, 14, 1721905355, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2463, 14, 1721905496, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2464, 5, 1721905509, 'Zadanie przydzielania awansów zostało wykonane.'),
(2465, 14, 1721905647, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2466, 14, 1721906111, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2467, 9, 1721906117, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.');
INSERT INTO `mybb_tasklog` (`lid`, `tid`, `dateline`, `data`) VALUES
(2468, 14, 1721906842, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2469, 5, 1721906849, 'Zadanie przydzielania awansów zostało wykonane.'),
(2470, 9, 1721906892, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2471, 14, 1721906901, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2472, 14, 1721907013, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2473, 3, 1721907069, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2474, 14, 1721907083, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2475, 14, 1721907149, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2476, 14, 1721907221, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2477, 14, 1721907245, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2478, 14, 1721907304, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2479, 14, 1721907379, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2480, 14, 1721907436, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2481, 14, 1721907487, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2482, 14, 1721907703, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2483, 9, 1721907724, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2484, 14, 1721907772, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2485, 14, 1721907795, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2486, 14, 1721907873, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2487, 5, 1721908462, 'Zadanie przydzielania awansów zostało wykonane.'),
(2488, 14, 1721908469, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2489, 9, 1721908501, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2490, 14, 1721908517, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2491, 14, 1721908568, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2492, 14, 1721908641, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2493, 14, 1721908830, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2494, 3, 1721908935, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2495, 1, 1721908951, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2496, 14, 1721908989, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2497, 14, 1721909101, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2498, 5, 1721909500, 'Zadanie przydzielania awansów zostało wykonane.'),
(2499, 14, 1721909521, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2500, 9, 1721909529, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2501, 14, 1721909717, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2502, 14, 1721909772, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2503, 14, 1721909837, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2504, 14, 1721909887, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2505, 14, 1721909957, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2506, 14, 1721910003, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2507, 14, 1721910061, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2508, 14, 1721910139, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2509, 14, 1721910198, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2510, 14, 1721910241, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2511, 5, 1721910310, 'Zadanie przydzielania awansów zostało wykonane.'),
(2512, 9, 1721910334, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2513, 14, 1721910355, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2514, 14, 1721910396, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2515, 14, 1721910737, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2516, 3, 1721911233, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2517, 14, 1721911251, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2518, 9, 1721911273, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2519, 14, 1721911276, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2520, 14, 1721911335, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2521, 14, 1721911663, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2522, 5, 1721911762, 'Zadanie przydzielania awansów zostało wykonane.'),
(2523, 14, 1721911817, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2524, 14, 1721911906, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2525, 14, 1721911929, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2526, 14, 1721911986, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2527, 14, 1721912144, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2528, 9, 1721913106, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2529, 14, 1721913199, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2530, 3, 1721913254, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2531, 1, 1721914004, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2532, 5, 1721914345, 'Zadanie przydzielania awansów zostało wykonane.'),
(2533, 14, 1721915688, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2534, 9, 1721915772, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2535, 3, 1721915903, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2536, 5, 1721915964, 'Zadanie przydzielania awansów zostało wykonane.'),
(2537, 14, 1721916402, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2538, 3, 1721916407, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2539, 1, 1721916429, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2540, 5, 1721916647, 'Zadanie przydzielania awansów zostało wykonane.'),
(2541, 14, 1721916688, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2542, 9, 1721916707, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2543, 14, 1721916893, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2544, 14, 1721923712, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2545, 5, 1721938405, 'Zadanie przydzielania awansów zostało wykonane.'),
(2546, 9, 1721940433, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2547, 3, 1721940541, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2548, 1, 1721940637, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2549, 14, 1721940686, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2550, 5, 1721941167, 'Zadanie przydzielania awansów zostało wykonane.'),
(2551, 14, 1721941395, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2552, 9, 1721941695, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2553, 3, 1721946687, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2554, 1, 1721983864, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(2555, 14, 1721992370, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(2556, 5, 1722023040, 'Zadanie przydzielania awansów zostało wykonane.'),
(2557, 9, 1722030271, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(2558, 3, 1722030291, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(2559, 2, 1722030384, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(2560, 11, 1722030411, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(3363, 14, 1722872346, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3364, 9, 1722872448, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3365, 14, 1722872471, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3366, 14, 1722872815, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3367, 5, 1722872837, 'Zadanie przydzielania awansów zostało wykonane.'),
(3368, 14, 1722872869, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3369, 14, 1722872913, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3370, 14, 1722872974, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3371, 14, 1722873118, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3372, 14, 1722873145, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3373, 14, 1722873209, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3374, 14, 1722873247, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3375, 9, 1722873303, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3376, 14, 1722873337, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3377, 14, 1722873394, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3378, 14, 1722873431, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3379, 14, 1722873987, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3380, 3, 1722874109, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3381, 1, 1722874113, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3382, 5, 1722874116, 'Zadanie przydzielania awansów zostało wykonane.'),
(3383, 14, 1722874120, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3384, 14, 1722876228, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3385, 9, 1722876854, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3386, 5, 1722877039, 'Zadanie przydzielania awansów zostało wykonane.'),
(3387, 3, 1722877054, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3388, 14, 1722877082, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3389, 9, 1722877101, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3390, 3, 1722882078, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3391, 14, 1722882246, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3392, 1, 1722883140, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3393, 5, 1722883614, 'Zadanie przydzielania awansów zostało wykonane.'),
(3394, 9, 1722884274, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3395, 14, 1722884651, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3396, 3, 1722884658, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3397, 1, 1722884661, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3398, 5, 1722884715, 'Zadanie przydzielania awansów zostało wykonane.'),
(3399, 14, 1722884720, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3400, 14, 1722884804, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3401, 14, 1722884825, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3402, 14, 1722884884, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3403, 14, 1722885142, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3404, 9, 1722885150, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3405, 14, 1722885197, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3406, 14, 1722885421, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3407, 14, 1722885545, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3408, 14, 1722885806, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3409, 14, 1722885955, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3410, 5, 1722885956, 'Zadanie przydzielania awansów zostało wykonane.'),
(3411, 9, 1722886297, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3412, 14, 1722886299, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3413, 3, 1722886300, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3414, 14, 1722886376, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3415, 14, 1722886399, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3416, 14, 1722886440, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3417, 14, 1722886511, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3418, 14, 1722886677, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3419, 14, 1722886681, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3420, 14, 1722887052, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3421, 9, 1722887349, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3422, 5, 1722887357, 'Zadanie przydzielania awansów zostało wykonane.'),
(3423, 14, 1722887563, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3424, 14, 1722887611, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3425, 14, 1722888872, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3426, 9, 1722888917, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3427, 3, 1722888964, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3428, 1, 1722888968, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3429, 5, 1722889069, 'Zadanie przydzielania awansów zostało wykonane.'),
(3430, 14, 1722889154, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3431, 14, 1722889354, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3432, 14, 1722889409, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3433, 14, 1722890184, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3434, 5, 1722890191, 'Zadanie przydzielania awansów zostało wykonane.'),
(3435, 9, 1722890205, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3436, 3, 1722890610, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3437, 14, 1722890648, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3438, 9, 1722890713, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3439, 5, 1722890740, 'Zadanie przydzielania awansów zostało wykonane.'),
(3440, 14, 1722890779, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3441, 14, 1722890864, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3442, 14, 1722890896, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3443, 14, 1722890956, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3444, 14, 1722891001, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3445, 14, 1722891221, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3446, 14, 1722891570, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3447, 9, 1722891578, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3448, 3, 1722891694, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3449, 1, 1722891820, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3450, 14, 1722891833, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3451, 14, 1722891855, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3452, 5, 1722891923, 'Zadanie przydzielania awansów zostało wykonane.'),
(3453, 14, 1722892157, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3454, 9, 1722892725, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3455, 14, 1722892837, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3456, 14, 1722892889, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3457, 14, 1722893028, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3458, 14, 1722893053, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3459, 5, 1722893302, 'Zadanie przydzielania awansów zostało wykonane.'),
(3460, 9, 1722893328, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3461, 14, 1722893456, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3462, 3, 1722893607, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3463, 14, 1722893639, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3464, 14, 1722893663, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3465, 14, 1722893706, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3466, 14, 1722894091, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3467, 9, 1722894107, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3468, 14, 1722894157, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3469, 14, 1722894182, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3470, 14, 1722894276, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3471, 5, 1722894308, 'Zadanie przydzielania awansów zostało wykonane.'),
(3472, 14, 1722894443, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3473, 14, 1722894506, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3474, 14, 1722894552, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3475, 14, 1722897044, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3476, 9, 1722898848, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3477, 3, 1722898862, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3478, 1, 1722899747, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3479, 5, 1722929745, 'Zadanie przydzielania awansów zostało wykonane.'),
(3480, 14, 1722929910, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3481, 9, 1722929931, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3482, 3, 1722940064, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3483, 1, 1722940074, 'Zadanie cogodzinnego oczyszczania zostało wykonane.'),
(3484, 2, 1722940102, 'Zadanie codziennego oczyszczania zostało wykonane.'),
(3485, 11, 1722940119, 'Zadanie opóźnionej moderacji zostało wykonane.'),
(3486, 12, 1722940132, 'Sprawdzenie nowej wersji zostało wykonane pomyślnie.'),
(3488, 14, 1722940139, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3489, 9, 1722940142, 'Zadanie masowego wysyłania wiadomości e-mail zostało wykonane.'),
(3490, 5, 1722940173, 'Zadanie przydzielania awansów zostało wykonane.'),
(3491, 14, 1722940174, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.'),
(3492, 3, 1722940201, 'Zadanie oczyszczania statusu użytkowników zostało wykonane.'),
(3493, 14, 1722940205, 'Zadanie kolejki wysyłania poczty zostało wysłane do 10 wiadomości.');

-- --------------------------------------------------------

--
-- Table structure for table `mybb_tasks`
--

CREATE TABLE `mybb_tasks` (
  `tid` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `file` varchar(30) NOT NULL DEFAULT '',
  `minute` varchar(200) NOT NULL DEFAULT '',
  `hour` varchar(200) NOT NULL DEFAULT '',
  `day` varchar(100) NOT NULL DEFAULT '',
  `month` varchar(30) NOT NULL DEFAULT '',
  `weekday` varchar(15) NOT NULL DEFAULT '',
  `nextrun` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastrun` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `logging` tinyint(1) NOT NULL DEFAULT 0,
  `locked` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_tasks`
--

INSERT INTO `mybb_tasks` (`tid`, `title`, `description`, `file`, `minute`, `hour`, `day`, `month`, `weekday`, `nextrun`, `lastrun`, `enabled`, `logging`, `locked`) VALUES
(1, 'Hourly Cleanup', 'Cleans out old searches, captcha images, registration questions and expires redirects.', 'hourlycleanup', '0', '*', '*', '*', '*', 1722942000, 1722940074, 1, 1, 0),
(2, 'Daily Cleanup', 'Cleans out old sessions and read threads.', 'dailycleanup', '0', '0', '*', '*', '*', 1722988800, 1722940102, 1, 1, 0),
(3, 'Half-hourly User Cleanup', 'Automatically expires bans, warnings and posting suspension and moderation times for users.', 'usercleanup', '30,59', '*', '*', '*', '*', 1722941940, 1722940201, 1, 1, 0),
(4, 'Weekly Backup', 'Automatically backups your MyBB tables to your backups directory.', 'backupdb', '0', '0', '*', '*', '0', 1719705600, 0, 0, 1, 0),
(5, 'Promotion System', 'Automatically runs the promotion system every 20 minutes.', 'promotions', '5,25,45', '*', '*', '*', '*', 1722941100, 1722940173, 1, 1, 0),
(6, 'Thread Views', 'Automatically updates thread views every 15 minutes. This task will automatically be enabled or disabled when changing the \'Delayed Thread Views\' setting.', 'threadviews', '10,25,40,55', '*', '*', '*', '*', 1719340800, 0, 0, 1, 0),
(7, 'Tables Check', 'Automatically runs a table check and attempts to repair any crashed tables.', 'checktables', '0', '*', '*', '*', '*', 1719342000, 0, 0, 1, 0),
(8, 'Log Pruning', 'Automatically cleans up old MyBB log files (administrator, moderator, task, promotion, and mail logs.)', 'logcleanup', '21', '5', '*', '*', '*', 1723008060, 1722940137, 1, 1, 0),
(9, 'Mass Mail', 'Automatically sends any queued mass mailings every 15 minutes.', 'massmail', '10,25,40,55', '*', '*', '*', '*', 1722940800, 1722940142, 1, 1, 0),
(10, 'User Pruning', 'Automatically prunes users based on criteria set in the settings every day.', 'userpruning', '0', '2', '*', '*', '*', 1722996000, 1722940120, 1, 1, 0),
(11, 'Delayed Moderation', 'Automatically performs delayed moderation actions every 24 hours.', 'delayedmoderation', '0', '0', '*', '*', '*', 1722988800, 1722940119, 1, 1, 0),
(12, 'Version Check', 'Automatically checks for news and new versions of MyBB every day.', 'versioncheck', '0', '3', '*', '*', '2', 1723518000, 1722940132, 1, 1, 0),
(13, 'Stylesheet Re-Cache', 'Re-caches all stylesheets to the filesystem, including minifying the styles.', 'recachestylesheets', '0', '0', '1', '0', '0', 1736035200, 0, 0, 1, 0),
(14, 'Send Mail Queue', 'Sends the mail queue every minute.', 'sendmailqueue', '*', '*', '*', '*', '*', 1722940260, 1722940205, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_templategroups`
--

CREATE TABLE `mybb_templategroups` (
  `gid` int(10) UNSIGNED NOT NULL,
  `prefix` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_templategroups`
--

INSERT INTO `mybb_templategroups` (`gid`, `prefix`, `title`, `isdefault`) VALUES
(1, 'calendar', '<lang:group_calendar>', 1),
(2, 'editpost', '<lang:group_editpost>', 1),
(3, 'forumbit', '<lang:group_forumbit>', 1),
(4, 'forumjump', '<lang:group_forumjump>', 1),
(5, 'forumdisplay', '<lang:group_forumdisplay>', 1),
(6, 'index', '<lang:group_index>', 1),
(7, 'error', '<lang:group_error>', 1),
(8, 'memberlist', '<lang:group_memberlist>', 1),
(9, 'multipage', '<lang:group_multipage>', 1),
(10, 'private', '<lang:group_private>', 1),
(11, 'portal', '<lang:group_portal>', 1),
(12, 'postbit', '<lang:group_postbit>', 1),
(13, 'posticons', '<lang:group_posticons>', 1),
(14, 'showthread', '<lang:group_showthread>', 1),
(15, 'usercp', '<lang:group_usercp>', 1),
(16, 'online', '<lang:group_online>', 1),
(17, 'moderation', '<lang:group_moderation>', 1),
(18, 'nav', '<lang:group_nav>', 1),
(19, 'search', '<lang:group_search>', 1),
(20, 'showteam', '<lang:group_showteam>', 1),
(21, 'reputation', '<lang:group_reputation>', 1),
(22, 'newthread', '<lang:group_newthread>', 1),
(23, 'newreply', '<lang:group_newreply>', 1),
(24, 'member', '<lang:group_member>', 1),
(25, 'warnings', '<lang:group_warning>', 1),
(26, 'global', '<lang:group_global>', 1),
(27, 'header', '<lang:group_header>', 1),
(28, 'managegroup', '<lang:group_managegroup>', 1),
(29, 'misc', '<lang:group_misc>', 1),
(30, 'modcp', '<lang:group_modcp>', 1),
(31, 'announcement', '<lang:group_announcement>', 1),
(32, 'polls', '<lang:group_polls>', 1),
(33, 'post', '<lang:group_post>', 1),
(34, 'printthread', '<lang:group_printthread>', 1),
(35, 'report', '<lang:group_report>', 1),
(36, 'smilieinsert', '<lang:group_smilieinsert>', 1),
(37, 'stats', '<lang:group_stats>', 1),
(38, 'xmlhttp', '<lang:group_xmlhttp>', 1),
(39, 'footer', '<lang:group_footer>', 1),
(40, 'video', '<lang:group_video>', 1),
(41, 'sendthread', '<lang:group_sendthread>', 1),
(42, 'mycode', '<lang:group_mycode>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_templates`
--

CREATE TABLE `mybb_templates` (
  `tid` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `sid` smallint(6) NOT NULL DEFAULT 0,
  `version` varchar(20) NOT NULL DEFAULT '0',
  `status` varchar(10) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_templatesets`
--

CREATE TABLE `mybb_templatesets` (
  `sid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- --------------------------------------------------------

--
-- Table structure for table `mybb_themes`
--

CREATE TABLE `mybb_themes` (
  `tid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `def` tinyint(1) NOT NULL DEFAULT 0,
  `properties` text NOT NULL,
  `stylesheets` text NOT NULL,
  `allowedgroups` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_themestylesheets`
--

CREATE TABLE `mybb_themestylesheets` (
  `sid` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `tid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `attachedto` text NOT NULL,
  `stylesheet` longtext NOT NULL,
  `cachefile` varchar(100) NOT NULL DEFAULT '',
  `lastmodified` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_threadprefixes`
--

CREATE TABLE `mybb_threadprefixes` (
  `pid` int(10) UNSIGNED NOT NULL,
  `prefix` varchar(120) NOT NULL DEFAULT '',
  `displaystyle` varchar(200) NOT NULL DEFAULT '',
  `forums` text NOT NULL,
  `groups` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_threadratings`
--

CREATE TABLE `mybb_threadratings` (
  `rid` int(10) UNSIGNED NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ipaddress` varbinary(16) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_threads`
--

CREATE TABLE `mybb_threads` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(120) NOT NULL DEFAULT '',
  `prefix` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `icon` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `poll` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(80) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `firstpost` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastpost` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastposter` varchar(120) NOT NULL DEFAULT '',
  `lastposteruid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `views` int(100) UNSIGNED NOT NULL DEFAULT 0,
  `replies` int(100) UNSIGNED NOT NULL DEFAULT 0,
  `closed` varchar(30) NOT NULL DEFAULT '',
  `sticky` tinyint(1) NOT NULL DEFAULT 0,
  `numratings` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `totalratings` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `notes` text NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 0,
  `unapprovedposts` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deletedposts` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `attachmentcount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deletetime` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_threads`
--

INSERT INTO `mybb_threads` (`tid`, `fid`, `subject`, `prefix`, `icon`, `poll`, `uid`, `username`, `dateline`, `firstpost`, `lastpost`, `lastposter`, `lastposteruid`, `views`, `replies`, `closed`, `sticky`, `numratings`, `totalratings`, `notes`, `visible`, `unapprovedposts`, `deletedposts`, `attachmentcount`, `deletetime`) VALUES
(1, 3, 'Tytuł', 0, 0, 0, 1, 'Administrator', 1719383712, 1, 1719383712, 'Administrator', 1, 14, 0, '', 0, 0, 0, '', 1, 0, 0, 0, 0),
(2, 2, 'Bardzo długi tytuł hehe hehe hehe hheheheh', 0, 0, 0, 1, 'Administrator', 1719437180, 2, 1719437180, 'Administrator', 1, 16, 0, '', 0, 0, 0, '', 1, 0, 0, 0, 0),
(3, 4, 'Jakiś tam tytuł', 0, 0, 0, 1, 'Administrator', 1719479431, 3, 1719479431, 'Administrator', 1, 6, 0, '', 0, 0, 0, '', 1, 0, 0, 0, 0),
(4, 2, 'to będzie przypięty temat', 0, 0, 0, 1, 'Administrator', 1719485831, 4, 1719512199, 'Administrator', 1, 50, 1, '', 1, 0, 0, '', 1, 0, 0, 0, 0),
(5, 3, 'Jakiś tester elo', 0, 0, 0, 1, 'Administrator', 1719507196, 5, 1719507196, 'Administrator', 1, 4, 0, '', 0, 0, 0, '', 1, 0, 0, 0, 0),
(6, 2, 'Taki tam nowy wątek', 0, 27, 0, 1, 'Administrator', 1719517710, 7, 1719517710, 'Administrator', 1, 79, 0, '', 0, 0, 0, '', 1, 0, 0, 0, 0),
(7, 2, 'Ankieta', 0, 22, 1, 1, 'Administrator', 1719862261, 8, 1721910238, 'Administrator', 1, 1948, 3, '', 0, 0, 0, '', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_threadsread`
--

CREATE TABLE `mybb_threadsread` (
  `tid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_threadsread`
--

INSERT INTO `mybb_threadsread` (`tid`, `uid`, `dateline`) VALUES
(1, 1, 1722794499),
(3, 1, 1722537194),
(7, 1, 1722892888);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_threadsubscriptions`
--

CREATE TABLE `mybb_threadsubscriptions` (
  `sid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `notification` tinyint(1) NOT NULL DEFAULT 0,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_threadviews`
--

CREATE TABLE `mybb_threadviews` (
  `tid` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_userfields`
--

CREATE TABLE `mybb_userfields` (
  `ufid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fid1` text NOT NULL,
  `fid2` text NOT NULL,
  `fid3` text NOT NULL,
  `fid4` text DEFAULT NULL,
  `fid5` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_userfields`
--

INSERT INTO `mybb_userfields` (`ufid`, `fid1`, `fid2`, `fid3`, `fid4`, `fid5`) VALUES
(1, 'https://64.media.tumblr.com/c081f7b4a4d9d7feee4f789d3f80c499/bd2232451a79dc0f-55/s640x960/b02842804fbbd7a073d57a7221b0e1cf5233f22e.gif', 'coś tu będzie', 'tu też', 'i tu', 'https://www.youtube.com/watch?v=6rUXRORDt2g&ab_channel=TheSoulofWindArtist'),
(3, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mybb_usergroups`
--

CREATE TABLE `mybb_usergroups` (
  `gid` smallint(5) UNSIGNED NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 2,
  `title` varchar(120) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `namestyle` varchar(200) NOT NULL DEFAULT '{username}',
  `usertitle` varchar(120) NOT NULL DEFAULT '',
  `stars` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `starimage` varchar(120) NOT NULL DEFAULT '',
  `image` varchar(120) NOT NULL DEFAULT '',
  `disporder` smallint(6) UNSIGNED NOT NULL,
  `isbannedgroup` tinyint(1) NOT NULL DEFAULT 0,
  `canview` tinyint(1) NOT NULL DEFAULT 0,
  `canviewthreads` tinyint(1) NOT NULL DEFAULT 0,
  `canviewprofiles` tinyint(1) NOT NULL DEFAULT 0,
  `candlattachments` tinyint(1) NOT NULL DEFAULT 0,
  `canviewboardclosed` tinyint(1) NOT NULL DEFAULT 0,
  `canpostthreads` tinyint(1) NOT NULL DEFAULT 0,
  `canpostreplys` tinyint(1) NOT NULL DEFAULT 0,
  `canpostattachments` tinyint(1) NOT NULL DEFAULT 0,
  `canratethreads` tinyint(1) NOT NULL DEFAULT 0,
  `modposts` tinyint(1) NOT NULL DEFAULT 0,
  `modthreads` tinyint(1) NOT NULL DEFAULT 0,
  `mod_edit_posts` tinyint(1) NOT NULL DEFAULT 0,
  `modattachments` tinyint(1) NOT NULL DEFAULT 0,
  `caneditposts` tinyint(1) NOT NULL DEFAULT 0,
  `candeleteposts` tinyint(1) NOT NULL DEFAULT 0,
  `candeletethreads` tinyint(1) NOT NULL DEFAULT 0,
  `caneditattachments` tinyint(1) NOT NULL DEFAULT 0,
  `canviewdeletionnotice` tinyint(1) NOT NULL DEFAULT 0,
  `canpostpolls` tinyint(1) NOT NULL DEFAULT 0,
  `canvotepolls` tinyint(1) NOT NULL DEFAULT 0,
  `canundovotes` tinyint(1) NOT NULL DEFAULT 0,
  `canusepms` tinyint(1) NOT NULL DEFAULT 0,
  `cansendpms` tinyint(1) NOT NULL DEFAULT 0,
  `cantrackpms` tinyint(1) NOT NULL DEFAULT 0,
  `candenypmreceipts` tinyint(1) NOT NULL DEFAULT 0,
  `pmquota` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `maxpmrecipients` int(4) UNSIGNED NOT NULL DEFAULT 5,
  `cansendemail` tinyint(1) NOT NULL DEFAULT 0,
  `cansendemailoverride` tinyint(1) NOT NULL DEFAULT 0,
  `maxemails` int(3) UNSIGNED NOT NULL DEFAULT 5,
  `emailfloodtime` int(3) UNSIGNED NOT NULL DEFAULT 5,
  `canviewmemberlist` tinyint(1) NOT NULL DEFAULT 0,
  `canviewcalendar` tinyint(1) NOT NULL DEFAULT 0,
  `canaddevents` tinyint(1) NOT NULL DEFAULT 0,
  `canbypasseventmod` tinyint(1) NOT NULL DEFAULT 0,
  `canmoderateevents` tinyint(1) NOT NULL DEFAULT 0,
  `canviewonline` tinyint(1) NOT NULL DEFAULT 0,
  `canviewwolinvis` tinyint(1) NOT NULL DEFAULT 0,
  `canviewonlineips` tinyint(1) NOT NULL DEFAULT 0,
  `cancp` tinyint(1) NOT NULL DEFAULT 0,
  `issupermod` tinyint(1) NOT NULL DEFAULT 0,
  `cansearch` tinyint(1) NOT NULL DEFAULT 0,
  `canusercp` tinyint(1) NOT NULL DEFAULT 0,
  `canuploadavatars` tinyint(1) NOT NULL DEFAULT 0,
  `canratemembers` tinyint(1) NOT NULL DEFAULT 0,
  `canchangename` tinyint(1) NOT NULL DEFAULT 0,
  `canbereported` tinyint(1) NOT NULL DEFAULT 0,
  `canbeinvisible` tinyint(1) NOT NULL DEFAULT 1,
  `canchangewebsite` tinyint(1) NOT NULL DEFAULT 1,
  `showforumteam` tinyint(1) NOT NULL DEFAULT 0,
  `usereputationsystem` tinyint(1) NOT NULL DEFAULT 0,
  `cangivereputations` tinyint(1) NOT NULL DEFAULT 0,
  `candeletereputations` tinyint(1) NOT NULL DEFAULT 0,
  `reputationpower` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxreputationsday` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxreputationsperuser` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxreputationsperthread` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `candisplaygroup` tinyint(1) NOT NULL DEFAULT 0,
  `attachquota` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cancustomtitle` tinyint(1) NOT NULL DEFAULT 0,
  `canwarnusers` tinyint(1) NOT NULL DEFAULT 0,
  `canreceivewarnings` tinyint(1) NOT NULL DEFAULT 0,
  `maxwarningsday` int(3) UNSIGNED NOT NULL DEFAULT 3,
  `canmodcp` tinyint(1) NOT NULL DEFAULT 0,
  `showinbirthdaylist` tinyint(1) NOT NULL DEFAULT 0,
  `canoverridepm` tinyint(1) NOT NULL DEFAULT 0,
  `canusesig` tinyint(1) NOT NULL DEFAULT 0,
  `canusesigxposts` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `signofollow` tinyint(1) NOT NULL DEFAULT 0,
  `edittimelimit` int(4) UNSIGNED NOT NULL DEFAULT 0,
  `maxposts` int(4) UNSIGNED NOT NULL DEFAULT 0,
  `showmemberlist` tinyint(1) NOT NULL DEFAULT 1,
  `canmanageannounce` tinyint(1) NOT NULL DEFAULT 0,
  `canmanagemodqueue` tinyint(1) NOT NULL DEFAULT 0,
  `canmanagereportedcontent` tinyint(1) NOT NULL DEFAULT 0,
  `canviewmodlogs` tinyint(1) NOT NULL DEFAULT 0,
  `caneditprofiles` tinyint(1) NOT NULL DEFAULT 0,
  `canbanusers` tinyint(1) NOT NULL DEFAULT 0,
  `canviewwarnlogs` tinyint(1) NOT NULL DEFAULT 0,
  `canuseipsearch` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_usergroups`
--

INSERT INTO `mybb_usergroups` (`gid`, `type`, `title`, `description`, `namestyle`, `usertitle`, `stars`, `starimage`, `image`, `disporder`, `isbannedgroup`, `canview`, `canviewthreads`, `canviewprofiles`, `candlattachments`, `canviewboardclosed`, `canpostthreads`, `canpostreplys`, `canpostattachments`, `canratethreads`, `modposts`, `modthreads`, `mod_edit_posts`, `modattachments`, `caneditposts`, `candeleteposts`, `candeletethreads`, `caneditattachments`, `canviewdeletionnotice`, `canpostpolls`, `canvotepolls`, `canundovotes`, `canusepms`, `cansendpms`, `cantrackpms`, `candenypmreceipts`, `pmquota`, `maxpmrecipients`, `cansendemail`, `cansendemailoverride`, `maxemails`, `emailfloodtime`, `canviewmemberlist`, `canviewcalendar`, `canaddevents`, `canbypasseventmod`, `canmoderateevents`, `canviewonline`, `canviewwolinvis`, `canviewonlineips`, `cancp`, `issupermod`, `cansearch`, `canusercp`, `canuploadavatars`, `canratemembers`, `canchangename`, `canbereported`, `canbeinvisible`, `canchangewebsite`, `showforumteam`, `usereputationsystem`, `cangivereputations`, `candeletereputations`, `reputationpower`, `maxreputationsday`, `maxreputationsperuser`, `maxreputationsperthread`, `candisplaygroup`, `attachquota`, `cancustomtitle`, `canwarnusers`, `canreceivewarnings`, `maxwarningsday`, `canmodcp`, `showinbirthdaylist`, `canoverridepm`, `canusesig`, `canusesigxposts`, `signofollow`, `edittimelimit`, `maxposts`, `showmemberlist`, `canmanageannounce`, `canmanagemodqueue`, `canmanagereportedcontent`, `canviewmodlogs`, `caneditprofiles`, `canbanusers`, `canviewwarnlogs`, `canuseipsearch`) VALUES
(1, 1, 'Guests', 'Jasny szary', '{username}', 'Unregistered', 0, '', '', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 5, 5, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 1, 'Zarejestrowani', 'Jasny szary', '<span class=\"username\" style=\"color: var(--registered)\">{username}</span>', '', 0, 'images/star.png', '', 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 200, 5, 1, 0, 5, 5, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 5, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 2, 'Nieaktywni', 'Ciemny szary', '<span class=\"username\" style=\"color: var(--not-active)\">{username}</span>', '', 0, 'images/star.png', '', 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 200, 5, 1, 0, 5, 5, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 5, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 1, 'Super Moderators', 'These users can moderate any forum.', '<span style=\"color: #CC00CC;\"><strong>{username}</strong></span>', 'Super Moderator', 6, 'images/star.png', '', 2, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 250, 5, 1, 0, 10, 5, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 10, 0, 0, 1, 0, 1, 1, 1, 3, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(4, 1, 'Administrators', 'NPC', '<span class=\"username\" style=\"color: var(--npc)\"><strong>{username}</strong></span>', 'Administrator', 7, 'images/star.png', '', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 2, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(5, 1, 'Awaiting Activation', 'Jasny szary', '{username}', 'Account not Activated', 0, 'images/star.png', '', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 5, 0, 0, 5, 5, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 1, 'Moderators', 'These users moderate specific forums.', '<span style=\"color: #CC00CC;\"><strong>{username}</strong></span>', 'Moderator', 5, 'images/star.png', '', 3, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 250, 5, 1, 0, 5, 5, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 10, 0, 0, 1, 0, 1, 1, 1, 3, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(7, 1, 'Zbanowani', 'Coś pomiędzy jasnym a ciemnym szarym', '<span class=\"username\" style=\"color: var(--banned)\"><s>{username}</s></span>', 'Banned', 0, 'images/star.png', '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 2, 'Mistrzowie Gry', 'NPC', '{username}', 'Mistrz Gry', 0, 'images/star.png', '', 4, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 100, 5, 1, 1, 4, 5, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 5, 0, 0, 0, 5000, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 2, 'Grupa 1', 'Biały kryształ', '<span class=\"username\" style=\"color: var(--opal)\"><strong>{username}</strong></span>', '', 0, 'images/star.png', '', 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 200, 5, 1, 0, 5, 5, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 5, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 2, 'Grupa 2', 'Zółty kryształ', '<span class=\"username\" style=\"color: var(--citrine)\"><strong>{username}</strong></span>', '', 0, 'images/star.png', '', 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 200, 5, 1, 0, 5, 5, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 5, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 2, 'Grupa 3', 'Zielony Kryształ', '<span class=\"username\" style=\"color: var(--aventurine)\"><strong>{username}</strong></span>', '', 0, 'images/star.png', '', 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 200, 5, 1, 0, 5, 5, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 5, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 2, 'Grupa 4', 'Niebieski kryształ', '<span class=\"username\" style=\"color: var(--sapphire)\"><strong>{username}</strong></span>', '', 0, 'images/star.png', '', 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 200, 5, 1, 0, 5, 5, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 5, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 2, 'Grupa 5', 'Fioletowy kryształ', '<span class=\"username\" style=\"color: var(--amethyst)\"><strong>{username}</strong></span>', '', 0, 'images/star.png', '', 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 200, 5, 1, 0, 5, 5, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 5, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 2, 'Grupa 6', 'Różowy kryształ', '<span class=\"username\" style=\"color: var(--rose-quartz)\"><strong>{username}</strong></span>', '', 0, 'images/star.png', '', 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 100, 5, 1, 0, 4, 5, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 5, 0, 0, 0, 5000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 2, 'Grupa 7', 'Czerwony kryształ', '<span class=\"username\" style=\"color: var(--ruby)\"><strong>{username}</strong></span>', '', 0, 'images/star.png', '', 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 100, 5, 1, 0, 4, 5, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 5, 0, 0, 0, 5000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 2, 'Grupa 8', 'Inni - brąz', '<span class=\"username\" style=\"color: var(--amber)\"><strong>{username}</strong></span>', '', 0, 'images/star.png', '', 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 100, 5, 1, 0, 4, 5, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 5, 0, 0, 0, 5000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_users`
--

CREATE TABLE `mybb_users` (
  `uid` int(10) UNSIGNED NOT NULL,
  `username` varchar(120) NOT NULL DEFAULT '',
  `password` varchar(120) NOT NULL DEFAULT '',
  `salt` varchar(10) NOT NULL DEFAULT '',
  `loginkey` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(220) NOT NULL DEFAULT '',
  `postnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `threadnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `avatar` varchar(200) NOT NULL DEFAULT '',
  `avatardimensions` varchar(10) NOT NULL DEFAULT '',
  `avatartype` varchar(10) NOT NULL DEFAULT '0',
  `usergroup` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `additionalgroups` varchar(200) NOT NULL DEFAULT '',
  `displaygroup` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `usertitle` varchar(250) NOT NULL DEFAULT '',
  `regdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastactive` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastvisit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastpost` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `website` varchar(200) NOT NULL DEFAULT '',
  `icq` varchar(10) NOT NULL DEFAULT '',
  `skype` varchar(75) NOT NULL DEFAULT '',
  `google` varchar(75) NOT NULL DEFAULT '',
  `birthday` varchar(15) NOT NULL DEFAULT '',
  `birthdayprivacy` varchar(4) NOT NULL DEFAULT 'all',
  `signature` text NOT NULL,
  `allownotices` tinyint(1) NOT NULL DEFAULT 0,
  `hideemail` tinyint(1) NOT NULL DEFAULT 0,
  `subscriptionmethod` tinyint(1) NOT NULL DEFAULT 0,
  `invisible` tinyint(1) NOT NULL DEFAULT 0,
  `receivepms` tinyint(1) NOT NULL DEFAULT 0,
  `receivefrombuddy` tinyint(1) NOT NULL DEFAULT 0,
  `pmnotice` tinyint(1) NOT NULL DEFAULT 0,
  `pmnotify` tinyint(1) NOT NULL DEFAULT 0,
  `buddyrequestspm` tinyint(1) NOT NULL DEFAULT 1,
  `buddyrequestsauto` tinyint(1) NOT NULL DEFAULT 0,
  `threadmode` varchar(8) NOT NULL DEFAULT '',
  `showimages` tinyint(1) NOT NULL DEFAULT 0,
  `showvideos` tinyint(1) NOT NULL DEFAULT 0,
  `showsigs` tinyint(1) NOT NULL DEFAULT 0,
  `showavatars` tinyint(1) NOT NULL DEFAULT 0,
  `showquickreply` tinyint(1) NOT NULL DEFAULT 0,
  `showredirect` tinyint(1) NOT NULL DEFAULT 0,
  `ppp` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `tpp` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `daysprune` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `dateformat` varchar(4) NOT NULL DEFAULT '',
  `timeformat` varchar(4) NOT NULL DEFAULT '',
  `timezone` varchar(5) NOT NULL DEFAULT '',
  `dst` tinyint(1) NOT NULL DEFAULT 0,
  `dstcorrection` tinyint(1) NOT NULL DEFAULT 0,
  `buddylist` text NOT NULL,
  `ignorelist` text NOT NULL,
  `style` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `away` tinyint(1) NOT NULL DEFAULT 0,
  `awaydate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `returndate` varchar(15) NOT NULL DEFAULT '',
  `awayreason` varchar(200) NOT NULL DEFAULT '',
  `pmfolders` text NOT NULL,
  `notepad` text NOT NULL,
  `referrer` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `referrals` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reputation` int(11) NOT NULL DEFAULT 0,
  `regip` varbinary(16) NOT NULL DEFAULT '',
  `lastip` varbinary(16) NOT NULL DEFAULT '',
  `language` varchar(50) NOT NULL DEFAULT '',
  `timeonline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `showcodebuttons` tinyint(1) NOT NULL DEFAULT 1,
  `totalpms` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unreadpms` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `warningpoints` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `moderateposts` tinyint(1) NOT NULL DEFAULT 0,
  `moderationtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `suspendposting` tinyint(1) NOT NULL DEFAULT 0,
  `suspensiontime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `suspendsignature` tinyint(1) NOT NULL DEFAULT 0,
  `suspendsigtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `coppauser` tinyint(1) NOT NULL DEFAULT 0,
  `loginattempts` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `loginlockoutexpiry` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `usernotes` text NOT NULL,
  `sourceeditor` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_users`
--

INSERT INTO `mybb_users` (`uid`, `username`, `password`, `salt`, `loginkey`, `email`, `postnum`, `threadnum`, `avatar`, `avatardimensions`, `avatartype`, `usergroup`, `additionalgroups`, `displaygroup`, `usertitle`, `regdate`, `lastactive`, `lastvisit`, `lastpost`, `website`, `icq`, `skype`, `google`, `birthday`, `birthdayprivacy`, `signature`, `allownotices`, `hideemail`, `subscriptionmethod`, `invisible`, `receivepms`, `receivefrombuddy`, `pmnotice`, `pmnotify`, `buddyrequestspm`, `buddyrequestsauto`, `threadmode`, `showimages`, `showvideos`, `showsigs`, `showavatars`, `showquickreply`, `showredirect`, `ppp`, `tpp`, `daysprune`, `dateformat`, `timeformat`, `timezone`, `dst`, `dstcorrection`, `buddylist`, `ignorelist`, `style`, `away`, `awaydate`, `returndate`, `awayreason`, `pmfolders`, `notepad`, `referrer`, `referrals`, `reputation`, `regip`, `lastip`, `language`, `timeonline`, `showcodebuttons`, `totalpms`, `unreadpms`, `warningpoints`, `moderateposts`, `moderationtime`, `suspendposting`, `suspensiontime`, `suspendsignature`, `suspendsigtime`, `coppauser`, `loginattempts`, `loginlockoutexpiry`, `usernotes`, `sourceeditor`) VALUES
(1, 'Administrator', '091c4d2c935193d1405ef664ed063991', 'jhi8T9WS', 'txOkcKzy9DA29hw1cV411J529D2xRJNowtc2O1ygfjfKaWoLpD', 'root@gmail.com', 11, 7, '', '', '', 4, '', 0, '', 1719340827, 1722940199, 1722940199, 1721910238, '', '0', '', '', '', 'all', 'Concentrate all your thoughts upon the work at hand. The sun’s rays do not burn until brought to a focus.', 1, 0, 0, 0, 1, 0, 2, 1, 1, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 0, '0', '0', '0', 0, 0, '', '', 0, 0, 0, '0', '', '0**$%%$1**$%%$2**$%%$3**$%%$4**', '', 0, 1, 0, 0x521f689c, 0xac1c0001, '', 291865, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 1),
(3, 'User', '7747284f9655764b607cce4910bce60d', 'SL6wFgjT', 'Nr8YOEAYoJx4HPLY8ayX4BNCMnpWK5h0qFoyjFuXSRCf5scSRw', 'user@gmail.com', 0, 0, '', '', '', 2, '', 0, '', 1722940194, 1722940204, 0, 0, '', '0', '', '', '', 'all', '', 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 0, '', '', '0', 0, 0, '', '', 0, 0, 0, '0', '', '0**$%%$1**$%%$2**$%%$3**$%%$4**', '', 0, 0, 0, '', 0xac1c0001, '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mybb_usertitles`
--

CREATE TABLE `mybb_usertitles` (
  `utid` smallint(5) UNSIGNED NOT NULL,
  `posts` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `stars` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `starimage` varchar(120) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mybb_usertitles`
--

INSERT INTO `mybb_usertitles` (`utid`, `posts`, `title`, `stars`, `starimage`) VALUES
(1, 0, 'Newbie', 1, ''),
(2, 1, 'Junior Member', 2, ''),
(3, 50, 'Member', 3, ''),
(4, 250, 'Senior Member', 4, ''),
(5, 750, 'Posting Freak', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `mybb_warninglevels`
--

CREATE TABLE `mybb_warninglevels` (
  `lid` int(10) UNSIGNED NOT NULL,
  `percentage` smallint(3) UNSIGNED NOT NULL DEFAULT 0,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_warnings`
--

CREATE TABLE `mybb_warnings` (
  `wid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(120) NOT NULL DEFAULT '',
  `points` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `issuedby` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `expires` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `expired` tinyint(1) NOT NULL DEFAULT 0,
  `daterevoked` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `revokedby` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `revokereason` text NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mybb_warningtypes`
--

CREATE TABLE `mybb_warningtypes` (
  `tid` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL DEFAULT '',
  `points` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `expirationtime` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mybb_adminlog`
--
ALTER TABLE `mybb_adminlog`
  ADD KEY `module` (`module`,`action`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `mybb_adminoptions`
--
ALTER TABLE `mybb_adminoptions`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `mybb_adminviews`
--
ALTER TABLE `mybb_adminviews`
  ADD PRIMARY KEY (`vid`);

--
-- Indexes for table `mybb_announcements`
--
ALTER TABLE `mybb_announcements`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `fid` (`fid`);

--
-- Indexes for table `mybb_attachments`
--
ALTER TABLE `mybb_attachments`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `pid` (`pid`,`visible`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `mybb_attachtypes`
--
ALTER TABLE `mybb_attachtypes`
  ADD PRIMARY KEY (`atid`);

--
-- Indexes for table `mybb_awaitingactivation`
--
ALTER TABLE `mybb_awaitingactivation`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `mybb_badwords`
--
ALTER TABLE `mybb_badwords`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `mybb_banfilters`
--
ALTER TABLE `mybb_banfilters`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `mybb_banned`
--
ALTER TABLE `mybb_banned`
  ADD KEY `uid` (`uid`),
  ADD KEY `dateline` (`dateline`);

--
-- Indexes for table `mybb_buddyrequests`
--
ALTER TABLE `mybb_buddyrequests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `touid` (`touid`);

--
-- Indexes for table `mybb_calendars`
--
ALTER TABLE `mybb_calendars`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `mybb_captcha`
--
ALTER TABLE `mybb_captcha`
  ADD KEY `imagehash` (`imagehash`),
  ADD KEY `dateline` (`dateline`);

--
-- Indexes for table `mybb_datacache`
--
ALTER TABLE `mybb_datacache`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `mybb_delayedmoderation`
--
ALTER TABLE `mybb_delayedmoderation`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `mybb_events`
--
ALTER TABLE `mybb_events`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `daterange` (`starttime`,`endtime`),
  ADD KEY `private` (`private`);

--
-- Indexes for table `mybb_forumpermissions`
--
ALTER TABLE `mybb_forumpermissions`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `fid` (`fid`,`gid`);

--
-- Indexes for table `mybb_forums`
--
ALTER TABLE `mybb_forums`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `mybb_forumsread`
--
ALTER TABLE `mybb_forumsread`
  ADD UNIQUE KEY `fid` (`fid`,`uid`),
  ADD KEY `dateline` (`dateline`);

--
-- Indexes for table `mybb_forumsubscriptions`
--
ALTER TABLE `mybb_forumsubscriptions`
  ADD PRIMARY KEY (`fsid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `mybb_groupleaders`
--
ALTER TABLE `mybb_groupleaders`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `mybb_helpdocs`
--
ALTER TABLE `mybb_helpdocs`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `mybb_helpsections`
--
ALTER TABLE `mybb_helpsections`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mybb_hidecontent`
--
ALTER TABLE `mybb_hidecontent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `mybb_icons`
--
ALTER TABLE `mybb_icons`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `mybb_joinrequests`
--
ALTER TABLE `mybb_joinrequests`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `mybb_mailerrors`
--
ALTER TABLE `mybb_mailerrors`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `mybb_maillogs`
--
ALTER TABLE `mybb_maillogs`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `mybb_mailqueue`
--
ALTER TABLE `mybb_mailqueue`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `mybb_massemails`
--
ALTER TABLE `mybb_massemails`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `mybb_moderatorlog`
--
ALTER TABLE `mybb_moderatorlog`
  ADD KEY `uid` (`uid`),
  ADD KEY `fid` (`fid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `mybb_moderators`
--
ALTER TABLE `mybb_moderators`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `uid` (`id`,`fid`);

--
-- Indexes for table `mybb_modtools`
--
ALTER TABLE `mybb_modtools`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `mybb_mycode`
--
ALTER TABLE `mybb_mycode`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `mybb_polls`
--
ALTER TABLE `mybb_polls`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `mybb_pollvotes`
--
ALTER TABLE `mybb_pollvotes`
  ADD PRIMARY KEY (`vid`),
  ADD KEY `pid` (`pid`,`uid`);

--
-- Indexes for table `mybb_posts`
--
ALTER TABLE `mybb_posts`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `tid` (`tid`,`uid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `visible` (`visible`),
  ADD KEY `dateline` (`dateline`),
  ADD KEY `ipaddress` (`ipaddress`),
  ADD KEY `tiddate` (`tid`,`dateline`);
ALTER TABLE `mybb_posts` ADD FULLTEXT KEY `message` (`message`);

--
-- Indexes for table `mybb_privatemessages`
--
ALTER TABLE `mybb_privatemessages`
  ADD PRIMARY KEY (`pmid`),
  ADD KEY `uid` (`uid`,`folder`),
  ADD KEY `toid` (`toid`);

--
-- Indexes for table `mybb_profilefields`
--
ALTER TABLE `mybb_profilefields`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `mybb_promotionlogs`
--
ALTER TABLE `mybb_promotionlogs`
  ADD PRIMARY KEY (`plid`);

--
-- Indexes for table `mybb_promotions`
--
ALTER TABLE `mybb_promotions`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `mybb_questions`
--
ALTER TABLE `mybb_questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `mybb_questionsessions`
--
ALTER TABLE `mybb_questionsessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mybb_reportedcontent`
--
ALTER TABLE `mybb_reportedcontent`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `reportstatus` (`reportstatus`),
  ADD KEY `lastreport` (`lastreport`);

--
-- Indexes for table `mybb_reportreasons`
--
ALTER TABLE `mybb_reportreasons`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `mybb_reputation`
--
ALTER TABLE `mybb_reputation`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `mybb_searchlog`
--
ALTER TABLE `mybb_searchlog`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mybb_sessions`
--
ALTER TABLE `mybb_sessions`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `location` (`location1`,`location2`),
  ADD KEY `time` (`time`),
  ADD KEY `uid` (`uid`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `mybb_settinggroups`
--
ALTER TABLE `mybb_settinggroups`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `mybb_settings`
--
ALTER TABLE `mybb_settings`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `gid` (`gid`);

--
-- Indexes for table `mybb_smilies`
--
ALTER TABLE `mybb_smilies`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mybb_spamlog`
--
ALTER TABLE `mybb_spamlog`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mybb_spiders`
--
ALTER TABLE `mybb_spiders`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mybb_stats`
--
ALTER TABLE `mybb_stats`
  ADD PRIMARY KEY (`dateline`);

--
-- Indexes for table `mybb_tasklog`
--
ALTER TABLE `mybb_tasklog`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `mybb_tasks`
--
ALTER TABLE `mybb_tasks`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `mybb_templategroups`
--
ALTER TABLE `mybb_templategroups`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `mybb_templates`
--
ALTER TABLE `mybb_templates`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `sid` (`sid`,`title`);

--
-- Indexes for table `mybb_templatesets`
--
ALTER TABLE `mybb_templatesets`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mybb_themes`
--
ALTER TABLE `mybb_themes`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `mybb_themestylesheets`
--
ALTER TABLE `mybb_themestylesheets`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `mybb_threadprefixes`
--
ALTER TABLE `mybb_threadprefixes`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `mybb_threadratings`
--
ALTER TABLE `mybb_threadratings`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `tid` (`tid`,`uid`);

--
-- Indexes for table `mybb_threads`
--
ALTER TABLE `mybb_threads`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `fid` (`fid`,`visible`,`sticky`),
  ADD KEY `dateline` (`dateline`),
  ADD KEY `lastpost` (`lastpost`,`fid`),
  ADD KEY `firstpost` (`firstpost`),
  ADD KEY `uid` (`uid`);
ALTER TABLE `mybb_threads` ADD FULLTEXT KEY `subject` (`subject`);

--
-- Indexes for table `mybb_threadsread`
--
ALTER TABLE `mybb_threadsread`
  ADD UNIQUE KEY `tid` (`tid`,`uid`),
  ADD KEY `dateline` (`dateline`);

--
-- Indexes for table `mybb_threadsubscriptions`
--
ALTER TABLE `mybb_threadsubscriptions`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `tid` (`tid`,`notification`);

--
-- Indexes for table `mybb_threadviews`
--
ALTER TABLE `mybb_threadviews`
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `mybb_userfields`
--
ALTER TABLE `mybb_userfields`
  ADD PRIMARY KEY (`ufid`);

--
-- Indexes for table `mybb_usergroups`
--
ALTER TABLE `mybb_usergroups`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `mybb_users`
--
ALTER TABLE `mybb_users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `usergroup` (`usergroup`),
  ADD KEY `regip` (`regip`),
  ADD KEY `lastip` (`lastip`);

--
-- Indexes for table `mybb_usertitles`
--
ALTER TABLE `mybb_usertitles`
  ADD PRIMARY KEY (`utid`);

--
-- Indexes for table `mybb_warninglevels`
--
ALTER TABLE `mybb_warninglevels`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `mybb_warnings`
--
ALTER TABLE `mybb_warnings`
  ADD PRIMARY KEY (`wid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `mybb_warningtypes`
--
ALTER TABLE `mybb_warningtypes`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mybb_adminviews`
--
ALTER TABLE `mybb_adminviews`
  MODIFY `vid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mybb_announcements`
--
ALTER TABLE `mybb_announcements`
  MODIFY `aid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_attachments`
--
ALTER TABLE `mybb_attachments`
  MODIFY `aid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_attachtypes`
--
ALTER TABLE `mybb_attachtypes`
  MODIFY `atid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `mybb_awaitingactivation`
--
ALTER TABLE `mybb_awaitingactivation`
  MODIFY `aid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mybb_badwords`
--
ALTER TABLE `mybb_badwords`
  MODIFY `bid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mybb_banfilters`
--
ALTER TABLE `mybb_banfilters`
  MODIFY `fid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_buddyrequests`
--
ALTER TABLE `mybb_buddyrequests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mybb_calendars`
--
ALTER TABLE `mybb_calendars`
  MODIFY `cid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mybb_delayedmoderation`
--
ALTER TABLE `mybb_delayedmoderation`
  MODIFY `did` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_events`
--
ALTER TABLE `mybb_events`
  MODIFY `eid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_forumpermissions`
--
ALTER TABLE `mybb_forumpermissions`
  MODIFY `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_forums`
--
ALTER TABLE `mybb_forums`
  MODIFY `fid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mybb_forumsubscriptions`
--
ALTER TABLE `mybb_forumsubscriptions`
  MODIFY `fsid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_groupleaders`
--
ALTER TABLE `mybb_groupleaders`
  MODIFY `lid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_helpdocs`
--
ALTER TABLE `mybb_helpdocs`
  MODIFY `hid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mybb_helpsections`
--
ALTER TABLE `mybb_helpsections`
  MODIFY `sid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mybb_hidecontent`
--
ALTER TABLE `mybb_hidecontent`
  MODIFY `id` bigint(30) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_icons`
--
ALTER TABLE `mybb_icons`
  MODIFY `iid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `mybb_joinrequests`
--
ALTER TABLE `mybb_joinrequests`
  MODIFY `rid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_mailerrors`
--
ALTER TABLE `mybb_mailerrors`
  MODIFY `eid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mybb_maillogs`
--
ALTER TABLE `mybb_maillogs`
  MODIFY `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_mailqueue`
--
ALTER TABLE `mybb_mailqueue`
  MODIFY `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mybb_massemails`
--
ALTER TABLE `mybb_massemails`
  MODIFY `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_moderators`
--
ALTER TABLE `mybb_moderators`
  MODIFY `mid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_modtools`
--
ALTER TABLE `mybb_modtools`
  MODIFY `tid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_mycode`
--
ALTER TABLE `mybb_mycode`
  MODIFY `cid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mybb_polls`
--
ALTER TABLE `mybb_polls`
  MODIFY `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mybb_pollvotes`
--
ALTER TABLE `mybb_pollvotes`
  MODIFY `vid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mybb_posts`
--
ALTER TABLE `mybb_posts`
  MODIFY `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `mybb_privatemessages`
--
ALTER TABLE `mybb_privatemessages`
  MODIFY `pmid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mybb_profilefields`
--
ALTER TABLE `mybb_profilefields`
  MODIFY `fid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mybb_promotionlogs`
--
ALTER TABLE `mybb_promotionlogs`
  MODIFY `plid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_promotions`
--
ALTER TABLE `mybb_promotions`
  MODIFY `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_questions`
--
ALTER TABLE `mybb_questions`
  MODIFY `qid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mybb_reportedcontent`
--
ALTER TABLE `mybb_reportedcontent`
  MODIFY `rid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_reportreasons`
--
ALTER TABLE `mybb_reportreasons`
  MODIFY `rid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mybb_reputation`
--
ALTER TABLE `mybb_reputation`
  MODIFY `rid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_settinggroups`
--
ALTER TABLE `mybb_settinggroups`
  MODIFY `gid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `mybb_settings`
--
ALTER TABLE `mybb_settings`
  MODIFY `sid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `mybb_smilies`
--
ALTER TABLE `mybb_smilies`
  MODIFY `sid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `mybb_spamlog`
--
ALTER TABLE `mybb_spamlog`
  MODIFY `sid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_spiders`
--
ALTER TABLE `mybb_spiders`
  MODIFY `sid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mybb_tasklog`
--
ALTER TABLE `mybb_tasklog`
  MODIFY `lid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3494;

--
-- AUTO_INCREMENT for table `mybb_tasks`
--
ALTER TABLE `mybb_tasks`
  MODIFY `tid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mybb_templategroups`
--
ALTER TABLE `mybb_templategroups`
  MODIFY `gid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `mybb_templates`
--
ALTER TABLE `mybb_templates`
  MODIFY `tid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1958;

--
-- AUTO_INCREMENT for table `mybb_templatesets`
--
ALTER TABLE `mybb_templatesets`
  MODIFY `sid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mybb_themes`
--
ALTER TABLE `mybb_themes`
  MODIFY `tid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mybb_themestylesheets`
--
ALTER TABLE `mybb_themestylesheets`
  MODIFY `sid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `mybb_threadprefixes`
--
ALTER TABLE `mybb_threadprefixes`
  MODIFY `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_threadratings`
--
ALTER TABLE `mybb_threadratings`
  MODIFY `rid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_threads`
--
ALTER TABLE `mybb_threads`
  MODIFY `tid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mybb_threadsubscriptions`
--
ALTER TABLE `mybb_threadsubscriptions`
  MODIFY `sid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_usergroups`
--
ALTER TABLE `mybb_usergroups`
  MODIFY `gid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `mybb_users`
--
ALTER TABLE `mybb_users`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mybb_usertitles`
--
ALTER TABLE `mybb_usertitles`
  MODIFY `utid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mybb_warninglevels`
--
ALTER TABLE `mybb_warninglevels`
  MODIFY `lid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_warnings`
--
ALTER TABLE `mybb_warnings`
  MODIFY `wid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mybb_warningtypes`
--
ALTER TABLE `mybb_warningtypes`
  MODIFY `tid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
