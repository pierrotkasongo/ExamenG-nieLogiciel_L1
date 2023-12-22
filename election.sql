-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 24 avr. 2023 à 13:13
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `election`
--

-- --------------------------------------------------------

--
-- Structure de la table `appadmin_directeur`
--

CREATE TABLE `appadmin_directeur` (
  `userId_id` bigint(20) NOT NULL,
  `ecoleId_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `appadmin_directeur`
--

INSERT INTO `appadmin_directeur` (`userId_id`, `ecoleId_id`) VALUES
(11, 3);

-- --------------------------------------------------------

--
-- Structure de la table `appadmin_ecole`
--

CREATE TABLE `appadmin_ecole` (
  `id` bigint(20) NOT NULL,
  `ecole` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `appadmin_ecole`
--

INSERT INTO `appadmin_ecole` (`id`, `ecole`) VALUES
(3, 'saint laurent');

-- --------------------------------------------------------

--
-- Structure de la table `appauth_user`
--

CREATE TABLE `appauth_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `appauth_user`
--

INSERT INTO `appauth_user` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `username`, `email`, `status`) VALUES
(1, 'pbkdf2_sha256$600000$9H92FLOYnp1W191Ni5I8Kc$FLTeLcKMAeNLmGHLqHyolK+rt3iZmHcIS1k+v/9nKKI=', '2023-04-23 15:00:39.244915', 1, '', '', 1, 1, '2023-04-21 13:22:25.000000', 'Kisudiku', 'elielubama@gmail.com', 'admin'),
(11, 'pbkdf2_sha256$600000$ZRbv6LpZARYMZcM4INUvHs$RiQwCsLKXo4NocdPZL0USNmUq4yGYhV6jrGKBT/UhCo=', '2023-04-23 17:09:05.145172', 0, 'kasongo', 'pierrot', 0, 1, '2023-04-23 17:04:19.535423', 'kasongo', 'kasongokasongopierrot@gmail.com', 'directeur'),
(12, 'pbkdf2_sha256$600000$0ZeHOuJX0bWUnsY3fyy802$sgOZqnTdU4mQRvhNocQoBqPO0BNCH5JPSgI/DX1PSTw=', '2023-04-23 19:19:04.632856', 0, 'mbongo', 'moise', 0, 1, '2023-04-23 17:10:42.122777', 'kabongo', 'moisekisudiku@gmail.com', 'eleve'),
(14, 'pbkdf2_sha256$600000$eBJgUlQXp1qnlvU6z7YgBc$tz+AFiNwAsbaXwCZhhnjrM+WIgugHXm/MANnz3o3yiU=', '2023-04-23 19:07:32.782460', 0, 'kisangule', 'berenice', 0, 1, '2023-04-23 17:20:07.903579', 'kashindu', 'berenicekisangule@gmail.com', 'eleve'),
(16, 'pbkdf2_sha256$600000$YXPfooHa0tCJmI7Rry2uro$/H/GV6h3Xkdr6sZPfxJhRwZT8TTtKluBGu5iCJuz2V8=', '2023-04-23 19:08:52.696919', 0, 'nsimba', 'joslain', 0, 1, '2023-04-23 17:29:23.320533', 'matondo', 'matondojoslain2@gmail.com', 'eleve'),
(17, 'pbkdf2_sha256$600000$pvrxeL4BzowLFFLRFD08f1$FM2Hzaj/dAnAfye3Jz+JCIMSHqTTqgF0jcc4SX5GiBo=', '2023-04-23 19:08:00.745414', 0, 'ngumba', 'generose', 0, 1, '2023-04-23 17:56:54.900682', 'kiese', 'generoseingumba@icloud.com', 'eleve'),
(18, 'pbkdf2_sha256$600000$gJPULUBCkgUgeiRIJiajz2$hi0xAzVe/GgsDwkusjrDhyHXdOkJljiV8MNf48XQgi4=', '2023-04-23 19:10:02.183205', 0, 'nahum', 'nano', 0, 1, '2023-04-23 18:11:42.600703', 'samba', 'sambanano7@gmail.com', 'eleve'),
(19, 'pbkdf2_sha256$600000$sR1USELAsGWcScABuzf4nP$vlyQAQmpebx4ksAm1HBv47NJxxhBESTqVug/r9c13VQ=', '2023-04-23 19:09:31.851702', 0, 'ndudi', 'exaucee', 0, 1, '2023-04-23 18:19:20.391895', 'mayala', 'ndudiexau2@gmail.com', 'eleve');

-- --------------------------------------------------------

--
-- Structure de la table `appauth_user_groups`
--

CREATE TABLE `appauth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `appauth_user_user_permissions`
--

CREATE TABLE `appauth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `appdirecteur_candidat`
--

CREATE TABLE `appdirecteur_candidat` (
  `id` bigint(20) NOT NULL,
  `electionId_id` bigint(20) NOT NULL,
  `eleveId_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `appdirecteur_candidat`
--

INSERT INTO `appdirecteur_candidat` (`id`, `electionId_id`, `eleveId_id`) VALUES
(24, 9, 18),
(25, 9, 14),
(26, 10, 16),
(27, 10, 17);

-- --------------------------------------------------------

--
-- Structure de la table `appdirecteur_classe`
--

CREATE TABLE `appdirecteur_classe` (
  `id` bigint(20) NOT NULL,
  `classe` varchar(100) NOT NULL,
  `ecoleId_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `appdirecteur_classe`
--

INSERT INTO `appdirecteur_classe` (`id`, `classe`, `ecoleId_id`) VALUES
(3, '3ème hs', 3);

-- --------------------------------------------------------

--
-- Structure de la table `appdirecteur_election`
--

CREATE TABLE `appdirecteur_election` (
  `id` bigint(20) NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFin` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `ecoleId_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `appdirecteur_election`
--

INSERT INTO `appdirecteur_election` (`id`, `dateDebut`, `dateFin`, `status`, `ecoleId_id`) VALUES
(9, '2023-04-23', '2023-04-24', 'clôturer', 3),
(10, '2023-04-30', '2023-04-30', 'clôturer', 3);

-- --------------------------------------------------------

--
-- Structure de la table `appdirecteur_eleve`
--

CREATE TABLE `appdirecteur_eleve` (
  `userId_id` bigint(20) NOT NULL,
  `classeId_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `appdirecteur_eleve`
--

INSERT INTO `appdirecteur_eleve` (`userId_id`, `classeId_id`) VALUES
(12, 3),
(14, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3);

-- --------------------------------------------------------

--
-- Structure de la table `appeleve_electeur`
--

CREATE TABLE `appeleve_electeur` (
  `id` bigint(20) NOT NULL,
  `candidatId_id` bigint(20) NOT NULL,
  `electionId_id` bigint(20) NOT NULL,
  `eleveId_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `appeleve_electeur`
--

INSERT INTO `appeleve_electeur` (`id`, `candidatId_id`, `electionId_id`, `eleveId_id`) VALUES
(5, 24, 9, 12),
(6, 25, 9, 14),
(7, 25, 9, 17),
(8, 24, 9, 16),
(9, 24, 9, 19),
(10, 26, 10, 12),
(11, 26, 10, 14),
(12, 27, 10, 17),
(13, 26, 10, 16),
(14, 26, 10, 19),
(15, 26, 10, 18);

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add ecole', 6, 'add_ecole'),
(22, 'Can change ecole', 6, 'change_ecole'),
(23, 'Can delete ecole', 6, 'delete_ecole'),
(24, 'Can view ecole', 6, 'view_ecole'),
(25, 'Can add directeur', 7, 'add_directeur'),
(26, 'Can change directeur', 7, 'change_directeur'),
(27, 'Can delete directeur', 7, 'delete_directeur'),
(28, 'Can view directeur', 7, 'view_directeur'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add classe', 9, 'add_classe'),
(34, 'Can change classe', 9, 'change_classe'),
(35, 'Can delete classe', 9, 'delete_classe'),
(36, 'Can view classe', 9, 'view_classe'),
(37, 'Can add eleve', 10, 'add_eleve'),
(38, 'Can change eleve', 10, 'change_eleve'),
(39, 'Can delete eleve', 10, 'delete_eleve'),
(40, 'Can view eleve', 10, 'view_eleve'),
(41, 'Can add election', 11, 'add_election'),
(42, 'Can change election', 11, 'change_election'),
(43, 'Can delete election', 11, 'delete_election'),
(44, 'Can view election', 11, 'view_election'),
(45, 'Can add candidat', 12, 'add_candidat'),
(46, 'Can change candidat', 12, 'change_candidat'),
(47, 'Can delete candidat', 12, 'delete_candidat'),
(48, 'Can view candidat', 12, 'view_candidat'),
(49, 'Can add electeur', 13, 'add_electeur'),
(50, 'Can change electeur', 13, 'change_electeur'),
(51, 'Can delete electeur', 13, 'delete_electeur'),
(52, 'Can view electeur', 13, 'view_electeur');

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-04-21 13:24:00.404740', '1', 'Kisudiku', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(2, '2023-04-21 14:14:09.390516', '13', 'matondo', 3, '', 12, 1),
(3, '2023-04-21 14:19:45.740896', '1', 'matondo', 3, '', 12, 1),
(4, '2023-04-21 14:24:11.914164', '14', 'matondo', 3, '', 12, 1),
(5, '2023-04-21 14:48:15.545145', '1', 'luyambi', 3, '', 13, 1),
(6, '2023-04-23 17:03:51.923741', '10', 'matundu', 3, '', 8, 1),
(7, '2023-04-23 17:03:52.014969', '9', 'alimeti', 3, '', 8, 1),
(8, '2023-04-23 17:03:52.060452', '8', 'nkuna', 3, '', 8, 1),
(9, '2023-04-23 17:03:52.473876', '7', 'kizole', 3, '', 8, 1),
(10, '2023-04-23 17:03:52.551420', '6', 'luyambi', 3, '', 8, 1),
(11, '2023-04-23 17:03:52.613029', '5', 'mwama', 3, '', 8, 1),
(12, '2023-04-23 17:03:52.647654', '4', 'matondo', 3, '', 8, 1),
(13, '2023-04-23 17:03:52.708778', '3', 'kasongo', 3, '', 8, 1),
(14, '2023-04-23 18:05:35.172346', '7', 'saint laurent : clôturer', 3, '', 11, 1),
(15, '2023-04-23 18:05:35.348938', '6', 'saint laurent : clôturer', 3, '', 11, 1),
(16, '2023-04-23 18:09:33.013080', '8', 'saint laurent : clôturer', 3, '', 11, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'AppAdmin', 'directeur'),
(6, 'AppAdmin', 'ecole'),
(8, 'AppAuth', 'user'),
(12, 'AppDirecteur', 'candidat'),
(9, 'AppDirecteur', 'classe'),
(11, 'AppDirecteur', 'election'),
(10, 'AppDirecteur', 'eleve'),
(13, 'AppEleve', 'electeur'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-04-21 13:21:25.358102'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-04-21 13:21:26.191994'),
(3, 'auth', '0001_initial', '2023-04-21 13:21:29.531852'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-04-21 13:21:30.271519'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-04-21 13:21:30.355827'),
(6, 'auth', '0004_alter_user_username_opts', '2023-04-21 13:21:30.455739'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-04-21 13:21:30.587441'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-04-21 13:21:30.741311'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-04-21 13:21:31.058816'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-04-21 13:21:31.121322'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-04-21 13:21:31.174634'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-04-21 13:21:31.358883'),
(13, 'auth', '0011_update_proxy_permissions', '2023-04-21 13:21:31.421374'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-04-21 13:21:31.543988'),
(15, 'AppAuth', '0001_initial', '2023-04-21 13:21:35.954514'),
(16, 'AppAdmin', '0001_initial', '2023-04-21 13:21:38.122789'),
(17, 'AppDirecteur', '0001_initial', '2023-04-21 13:21:44.723177'),
(18, 'AppEleve', '0001_initial', '2023-04-21 13:21:47.746564'),
(19, 'admin', '0001_initial', '2023-04-21 13:21:49.938460'),
(20, 'admin', '0002_logentry_remove_auto_add', '2023-04-21 13:21:50.007407'),
(21, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-21 13:21:50.107660'),
(22, 'sessions', '0001_initial', '2023-04-21 13:21:50.926425');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('09szknhha2p2aii49qqc475t9jilj6f5', '.eJxVjMEOwiAQBf-FsyFAoQWP3vsNZGFZqRpISnsy_rs06UGvb2bem3nYt-z3lla_ILsyqdjldwwQn6kcBB9Q7pXHWrZ1CfxQ-Ekbnyum1-10_w4ytNzrwTgb4iAFoEayAVKaJpNQWSO1omjIye440MIKY2gka90AbhQdSgL2-QIIIjfr:1pqfEm:fzTxc7d6iXQ5TAHT3CLmPlal8_44IDUSLENRUGJhjE8', '2023-05-07 19:19:04.776951'),
('46kckmjnz175zcunkvkrulb8ii9l634f', '.eJxVjEEOwiAQRe_C2hAoAoNL9z0DgZmpVA0kpV0Z765NutDtf-_9l4hpW0vcOi9xJnERWpx-t5zwwXUHdE_11iS2ui5zlrsiD9rl2Iif18P9Oyipl2-dNSYIDMCEmiyw9uqsyAQLg5vQaQ9IFJRW2bB3niEZO4DF4PykMIj3B-UAN5A:1ppqjq:KHBAhEi93cczajTbFvJ7a5rGb02qCdFks4mXkX5bdEM', '2023-05-05 13:23:46.162164'),
('5qj6p5721vhhbjrj1u1l5rs9v5886vqw', '.eJxVjDkOwjAUBe_iGlnxblPScwbrLw4OIEeKkwpxd4iUAto3M-8lMmxrzVsvS55YnIVS4vQ7ItCjtJ3wHdptljS3dZlQ7oo8aJfXmcvzcrh_BxV6_dbWa2I2iVUYTYKENpB1FHF0qTDYiKpoIogOvXJxYK108gOZYEIEcuL9ARSCOA0:1pqdCz:EOfjsuwSyhWplcwg0ip-zQj2a6bh0Meu36xYUOGp4ng', '2023-05-07 17:09:05.194853'),
('f9si5zo708n6ag927a0opyy9inft1xi3', '.eJxVjEEOwiAQRe_C2hAoAoNL9z0DgZmpVA0kpV0Z765NutDtf-_9l4hpW0vcOi9xJnERWpx-t5zwwXUHdE_11iS2ui5zlrsiD9rl2Iif18P9Oyipl2-dNSYIDMCEmiyw9uqsyAQLg5vQaQ9IFJRW2bB3niEZO4DF4PykMIj3B-UAN5A:1pqBss:J9mclGk39ODxFRs31dal5xuR2Lpy_okDGQIlj8ea6Ns', '2023-05-06 11:58:30.747820'),
('mcpole3vtyuu94vuw9fynmr6k21fyecw', '.eJxVjMsOwiAQRf-FtSHAzEBx6d5vaBgetmogKe3K-O_apAvd3nPOfYkxbOs0bj0v45zEWYA4_W4c4iPXHaR7qLcmY6vrMrPcFXnQLq8t5eflcP8OptCnb-00IwzJEzNGq5kGa8g6MFASgidko9GVDIhOqUKktCmegvdKgTVavD-wMzXz:1ppqzA:MZ0Vlstpgc0zsXIHjunRYWYR5_K5zIqbEZfa_2j6LdE', '2023-05-05 13:39:36.852470'),
('qcd1m9dvcm2dq47kobjsfgjmwcka2ox9', '.eJxVjEEOgjAQRe_StWmctgzFpXvOQKYzg6CmTSisjHdXEha6_e-9_zIDbes0bFWXYRZzMXA2p98xET8070TulG_FcsnrMie7K_ag1fZF9Hk93L-Dier0rZm9hORjYGpH8F5T41pilIQdKZKoQvQdt4QOMAByiB6cGzHGBrAx7w8gQDfU:1pq9Si:qWWmv-MMYHrQoMmX7lkf3a1KYbS1TmblhMm6WUVx6hg', '2023-05-06 09:23:20.279089');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appadmin_directeur`
--
ALTER TABLE `appadmin_directeur`
  ADD PRIMARY KEY (`userId_id`),
  ADD KEY `AppAdmin_directeur_ecoleId_id_7d1550d7_fk_AppAdmin_ecole_id` (`ecoleId_id`);

--
-- Index pour la table `appadmin_ecole`
--
ALTER TABLE `appadmin_ecole`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `appauth_user`
--
ALTER TABLE `appauth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `appauth_user_groups`
--
ALTER TABLE `appauth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `AppAuth_user_groups_user_id_group_id_28d43ade_uniq` (`user_id`,`group_id`),
  ADD KEY `AppAuth_user_groups_group_id_f3836024_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `appauth_user_user_permissions`
--
ALTER TABLE `appauth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `AppAuth_user_user_permis_user_id_permission_id_3cfd8fe8_uniq` (`user_id`,`permission_id`),
  ADD KEY `AppAuth_user_user_pe_permission_id_20edd603_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `appdirecteur_candidat`
--
ALTER TABLE `appdirecteur_candidat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AppDirecteur_candida_electionId_id_6e6f07f4_fk_AppDirect` (`electionId_id`),
  ADD KEY `AppDirecteur_candida_eleveId_id_ae8eaa3d_fk_AppDirect` (`eleveId_id`);

--
-- Index pour la table `appdirecteur_classe`
--
ALTER TABLE `appdirecteur_classe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AppDirecteur_classe_ecoleId_id_85ba5230_fk_AppAdmin_ecole_id` (`ecoleId_id`);

--
-- Index pour la table `appdirecteur_election`
--
ALTER TABLE `appdirecteur_election`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AppDirecteur_election_ecoleId_id_821059fa_fk_AppAdmin_ecole_id` (`ecoleId_id`);

--
-- Index pour la table `appdirecteur_eleve`
--
ALTER TABLE `appdirecteur_eleve`
  ADD PRIMARY KEY (`userId_id`),
  ADD KEY `AppDirecteur_eleve_classeId_id_46c7bf3f_fk_AppDirect` (`classeId_id`);

--
-- Index pour la table `appeleve_electeur`
--
ALTER TABLE `appeleve_electeur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AppEleve_electeur_candidatId_id_4b7e6b81_fk_AppDirect` (`candidatId_id`),
  ADD KEY `AppEleve_electeur_electionId_id_69b89416_fk_AppDirect` (`electionId_id`),
  ADD KEY `AppEleve_electeur_eleveId_id_36dbab21_fk_AppDirect` (`eleveId_id`);

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_AppAuth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `appadmin_ecole`
--
ALTER TABLE `appadmin_ecole`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `appauth_user`
--
ALTER TABLE `appauth_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `appauth_user_groups`
--
ALTER TABLE `appauth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `appauth_user_user_permissions`
--
ALTER TABLE `appauth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `appdirecteur_candidat`
--
ALTER TABLE `appdirecteur_candidat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `appdirecteur_classe`
--
ALTER TABLE `appdirecteur_classe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `appdirecteur_election`
--
ALTER TABLE `appdirecteur_election`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `appeleve_electeur`
--
ALTER TABLE `appeleve_electeur`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appadmin_directeur`
--
ALTER TABLE `appadmin_directeur`
  ADD CONSTRAINT `AppAdmin_directeur_ecoleId_id_7d1550d7_fk_AppAdmin_ecole_id` FOREIGN KEY (`ecoleId_id`) REFERENCES `appadmin_ecole` (`id`),
  ADD CONSTRAINT `AppAdmin_directeur_userId_id_d7f300b6_fk_AppAuth_user_id` FOREIGN KEY (`userId_id`) REFERENCES `appauth_user` (`id`);

--
-- Contraintes pour la table `appauth_user_groups`
--
ALTER TABLE `appauth_user_groups`
  ADD CONSTRAINT `AppAuth_user_groups_group_id_f3836024_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `AppAuth_user_groups_user_id_1e992456_fk_AppAuth_user_id` FOREIGN KEY (`user_id`) REFERENCES `appauth_user` (`id`);

--
-- Contraintes pour la table `appauth_user_user_permissions`
--
ALTER TABLE `appauth_user_user_permissions`
  ADD CONSTRAINT `AppAuth_user_user_pe_permission_id_20edd603_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `AppAuth_user_user_pe_user_id_ce78fdd7_fk_AppAuth_u` FOREIGN KEY (`user_id`) REFERENCES `appauth_user` (`id`);

--
-- Contraintes pour la table `appdirecteur_candidat`
--
ALTER TABLE `appdirecteur_candidat`
  ADD CONSTRAINT `AppDirecteur_candida_electionId_id_6e6f07f4_fk_AppDirect` FOREIGN KEY (`electionId_id`) REFERENCES `appdirecteur_election` (`id`),
  ADD CONSTRAINT `AppDirecteur_candida_eleveId_id_ae8eaa3d_fk_AppDirect` FOREIGN KEY (`eleveId_id`) REFERENCES `appdirecteur_eleve` (`userId_id`);

--
-- Contraintes pour la table `appdirecteur_classe`
--
ALTER TABLE `appdirecteur_classe`
  ADD CONSTRAINT `AppDirecteur_classe_ecoleId_id_85ba5230_fk_AppAdmin_ecole_id` FOREIGN KEY (`ecoleId_id`) REFERENCES `appadmin_ecole` (`id`);

--
-- Contraintes pour la table `appdirecteur_election`
--
ALTER TABLE `appdirecteur_election`
  ADD CONSTRAINT `AppDirecteur_election_ecoleId_id_821059fa_fk_AppAdmin_ecole_id` FOREIGN KEY (`ecoleId_id`) REFERENCES `appadmin_ecole` (`id`);

--
-- Contraintes pour la table `appdirecteur_eleve`
--
ALTER TABLE `appdirecteur_eleve`
  ADD CONSTRAINT `AppDirecteur_eleve_classeId_id_46c7bf3f_fk_AppDirect` FOREIGN KEY (`classeId_id`) REFERENCES `appdirecteur_classe` (`id`),
  ADD CONSTRAINT `AppDirecteur_eleve_userId_id_d8c65247_fk_AppAuth_user_id` FOREIGN KEY (`userId_id`) REFERENCES `appauth_user` (`id`);

--
-- Contraintes pour la table `appeleve_electeur`
--
ALTER TABLE `appeleve_electeur`
  ADD CONSTRAINT `AppEleve_electeur_candidatId_id_4b7e6b81_fk_AppDirect` FOREIGN KEY (`candidatId_id`) REFERENCES `appdirecteur_candidat` (`id`),
  ADD CONSTRAINT `AppEleve_electeur_electionId_id_69b89416_fk_AppDirect` FOREIGN KEY (`electionId_id`) REFERENCES `appdirecteur_election` (`id`),
  ADD CONSTRAINT `AppEleve_electeur_eleveId_id_36dbab21_fk_AppDirect` FOREIGN KEY (`eleveId_id`) REFERENCES `appdirecteur_eleve` (`userId_id`);

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_AppAuth_user_id` FOREIGN KEY (`user_id`) REFERENCES `appauth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
