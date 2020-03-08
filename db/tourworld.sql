-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 08 mars 2020 à 12:16
-- Version du serveur :  5.7.19
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tourworld`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `continent_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E66921F4C77` (`continent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `continent_id`, `name`, `description`, `image`, `slug`) VALUES
(206, 25, 'Amet non quia.', 'In laudantium minima eligendi molestiae doloribus rerum aut. Autem et magnam incidunt doloremque quaerat. Expedita voluptates iure blanditiis dolores vel est deleniti.', 'JJfWsQC6MAWRHew0Q8Ui1NYXuMNligIZ.jpeg', 'amet-non-quia'),
(207, 22, 'Rem nisi veritatis quia.', 'Distinctio consequatur quas a sunt sint non et eveniet. Quo eos qui inventore consectetur hic. Ut sapiente et perferendis ut harum. Nihil veniam exercitationem corrupti debitis et est.', 'azyetDFr4ytePWQMgnEtmTLwQEUEOarX.jpeg', 'rem-nisi-veritatis-quia'),
(208, 22, 'Aut numquam quam.', 'Necessitatibus voluptatem iure sed quas sint autem. Iusto ipsam rerum saepe sit quia earum nam. Fuga quod fugiat maxime est laborum earum qui aut.', 'wBCp0bEoeHdCcgfgLknOk2o1VrCcqxEK.jpeg', 'aut-numquam-quam'),
(209, 25, 'Illo minus voluptates.', 'Aliquid nihil doloribus est aspernatur dignissimos. Ut porro praesentium voluptatem aliquid eveniet maxime vel. Doloribus sed et a voluptatem. Quas ut nulla rerum tempore et laborum.', 'default.jpg', 'illo-minus-voluptates'),
(210, 22, 'Et earum fuga quam.', 'Voluptates qui eveniet minus quia. Fugiat esse animi quo velit. Enim officiis qui omnis sint.', 'default.jpg', 'et-earum-fuga-quam'),
(211, 25, 'Iste voluptas dolore.', 'Esse ipsa ad autem omnis a illum necessitatibus quam. Magni dolor dolor perferendis enim. Aspernatur et vel provident doloremque et.', 'default.jpg', 'iste-voluptas-dolore'),
(212, 23, 'Autem eos ad non.', 'Est maxime sed ad. Maiores optio quis qui et quis hic. Ipsum corporis beatae ut quas maiores iure laboriosam.', 'default.jpg', 'autem-eos-ad-non'),
(213, 23, 'Doloremque fugit accusantium quia.', 'Et et omnis sint natus omnis voluptas est id. Facilis doloribus id temporibus beatae consequuntur mollitia. Quia reiciendis et facilis esse ullam amet. Dolorum deserunt veritatis quo voluptatum.', 'default.jpg', 'doloremque-fugit-accusantium-quia'),
(214, 23, 'Mollitia quia aut.', 'Et explicabo totam quis impedit quia. Omnis at maxime quae doloremque. Et minima voluptatem explicabo rerum.', 'default.jpg', 'mollitia-quia-aut'),
(215, 22, 'Ipsa neque dolorem.', 'Molestias minima voluptates est. Ex sed ut vel officia. Dolor ut incidunt debitis quibusdam nihil earum sunt.', 'default.jpg', 'ipsa-neque-dolorem'),
(216, 25, 'Laboriosam consequuntur sunt.', 'Perspiciatis laudantium labore libero ea. Impedit ducimus id quis asperiores. Reiciendis enim voluptate eveniet magni. Reiciendis blanditiis rerum vel adipisci possimus.', 'default.jpg', 'laboriosam-consequuntur-sunt'),
(217, 25, 'Sunt nisi ullam.', 'Architecto quas dolore qui iusto. Pariatur harum sit quia nisi modi quam ut. Modi minus architecto aut nostrum aut et.', 'default.jpg', 'sunt-nisi-ullam'),
(218, 22, 'Nesciunt recusandae dolores beatae odit.', 'Aut sint ut veritatis dolores amet vel. Blanditiis aut ut impedit vel molestias architecto. Aut et voluptatum atque est placeat. Maxime reprehenderit labore voluptatem excepturi.', 'default.jpg', 'nesciunt-recusandae-dolores-beatae-odit'),
(219, 25, 'Corporis est consequatur aut.', 'Pariatur distinctio qui ut quo minima maiores rerum iusto. Fugiat vel fuga dolorem. Ipsam assumenda eveniet cum aut quis sed velit.', 'default.jpg', 'corporis-est-consequatur-aut'),
(220, 21, 'Exercitationem officia modi.', 'Blanditiis necessitatibus eos accusamus. Et placeat at fugiat. Et sint debitis repudiandae quo enim cumque.', 'default.jpg', 'exercitationem-officia-modi'),
(221, 24, 'Fugiat molestiae deserunt.', 'Ea consequatur vel porro iusto. Cupiditate est consectetur eos neque. Et sit officiis veniam nobis deleniti. Omnis ut repudiandae quia amet ut ipsam sed dolores.', 'default.jpg', 'fugiat-molestiae-deserunt'),
(222, 24, 'Adipisci soluta tempora sed.', 'Perferendis itaque quam omnis. Maxime voluptas consequuntur aut dolores nesciunt est eveniet. Soluta aperiam beatae sint consequatur officiis cumque. Unde fuga sapiente sunt dolore id et.', 'default.jpg', 'adipisci-soluta-tempora-sed'),
(223, 22, 'Vero ea modi.', 'Et repellat vel perferendis consequatur vitae eos. Nisi ipsum deserunt est voluptatum quia voluptatum vel deserunt. Nemo exercitationem iusto fuga quis.', 'default.jpg', 'vero-ea-modi'),
(224, 23, 'Ab possimus voluptas commodi.', 'Debitis ipsam nihil reiciendis. Impedit quibusdam animi ea iste.', 'default.jpg', 'ab-possimus-voluptas-commodi'),
(225, 21, 'Provident tempora aperiam eum.', 'Nihil adipisci eum ut doloremque voluptatibus assumenda ullam praesentium. Vitae est ducimus recusandae optio. Error est laboriosam magnam corrupti.', 'default.jpg', 'provident-tempora-aperiam-eum'),
(226, 21, 'Quasi et voluptas impedit.', 'Dolores ut molestiae magnam voluptate quae. Fugit placeat voluptatum ut et officia expedita quia. Totam molestiae est tenetur omnis alias voluptas a.', 'default.jpg', 'quasi-et-voluptas-impedit'),
(227, 24, 'At et corporis magni.', 'Fuga ut ratione possimus enim deleniti nobis. Amet voluptatem quo aut quidem exercitationem sed. Dolores earum accusantium et tempora. Culpa veritatis laudantium rem nesciunt voluptatem eveniet.', 'default.jpg', 'at-et-corporis-magni'),
(228, 24, 'Debitis dolorem quisquam.', 'Magnam laboriosam nulla amet ex doloribus. Magnam dolorum modi alias cumque delectus aperiam est a.', 'default.jpg', 'debitis-dolorem-quisquam'),
(229, 24, 'Voluptatibus eum similique ex.', 'Quaerat minima saepe neque. Culpa eos ab rerum error et corporis.', 'default.jpg', 'voluptatibus-eum-similique-ex'),
(230, 21, 'Ad repellat voluptatem.', 'Hic saepe iste veniam voluptates. Nam sequi consequatur nostrum ut quam. Veritatis ut et error vitae qui impedit. Reiciendis qui adipisci rem quia.', 'default.jpg', 'ad-repellat-voluptatem'),
(231, 23, 'Aut quo accusamus.', 'Et aliquid totam eum voluptatem. At facere non necessitatibus quos libero impedit eum. Fugiat eaque sed illo impedit.', 'default.jpg', 'aut-quo-accusamus'),
(232, 23, 'Rem quo autem.', 'In reprehenderit corporis doloremque consequatur ea voluptatum itaque. Modi eius sed et ut accusantium. Occaecati repellat enim ipsa. Culpa non omnis ratione ab et est vero. Aut quia est hic alias.', 'default.jpg', 'rem-quo-autem'),
(233, 25, 'Odit neque qui sit.', 'Et sit occaecati hic at et dolor et. Quam eius est enim asperiores non id sapiente. Asperiores molestiae ea quaerat ducimus. Explicabo velit nemo provident ea velit suscipit.', 'default.jpg', 'odit-neque-qui-sit'),
(234, 22, 'A nobis saepe ad.', 'Cum non maiores reprehenderit occaecati consequuntur voluptatem cumque. Quam est ea voluptatem. Sapiente vero aut nemo occaecati tenetur.', 'default.jpg', 'a-nobis-saepe-ad'),
(235, 22, 'Autem esse exercitationem nostrum.', 'Facilis nobis voluptates sint commodi est. Aliquid dicta suscipit laboriosam aut ullam corrupti. Ut dolorem temporibus aut occaecati sequi. Id esse et est molestias nostrum.', 'default.jpg', 'autem-esse-exercitationem-nostrum'),
(236, 23, 'Similique nesciunt omnis.', 'Vel animi minima ad deleniti commodi omnis quo. Et quia tenetur similique ut error libero. Rem laborum ab illo nisi eos id aut. Sequi sit dolores autem.', 'default.jpg', 'similique-nesciunt-omnis'),
(237, 23, 'Odio dignissimos.', 'Ut qui natus voluptas qui. Porro sit voluptates aperiam facilis quibusdam libero vel culpa. Et veniam architecto excepturi totam rem et nisi.', 'default.jpg', 'odio-dignissimos'),
(238, 23, 'Veritatis accusantium corporis qui in.', 'Aut adipisci eum doloremque et. Odio voluptatem non voluptate illum voluptates sint. Tempore est quaerat aut assumenda mollitia. Pariatur quidem aperiam maxime eius laborum et velit delectus.', 'default.jpg', 'veritatis-accusantium-corporis-qui-in'),
(239, 24, 'Ut ut sint qui.', 'A nobis sapiente et et excepturi rerum aut eum. Quis quo ea molestiae autem. Rerum deserunt rem quaerat modi sint voluptatem sit.', 'default.jpg', 'ut-ut-sint-qui'),
(240, 25, 'Odit omnis perferendis consequuntur.', 'Id officiis voluptatibus ratione accusantium. Exercitationem sit architecto quia. Eos omnis ad a est. Odio distinctio autem et amet assumenda earum.', 'default.jpg', 'odit-omnis-perferendis-consequuntur'),
(241, 23, 'Et quo ut eveniet nesciunt.', 'Saepe iusto assumenda sunt quaerat totam. Aspernatur eos et occaecati aliquam quae. Enim explicabo officia aut culpa.', 'default.jpg', 'et-quo-ut-eveniet-nesciunt'),
(242, 23, 'Incidunt explicabo earum aliquam.', 'Dicta vel distinctio amet accusantium animi. Placeat provident dolorem qui asperiores fugit. Voluptatem voluptatem accusamus cupiditate quia reprehenderit libero est.', 'default.jpg', 'incidunt-explicabo-earum-aliquam'),
(243, 23, 'Excepturi laborum minima et nesciunt.', 'Illo provident sint cumque voluptas qui accusantium temporibus repellendus. Adipisci nemo accusantium ducimus sint. Cumque ut ut eos et illo adipisci. Nostrum velit sed est id vel non.', 'default.jpg', 'excepturi-laborum-minima-et-nesciunt'),
(244, 25, 'Porro aliquam beatae maiores.', 'Pariatur tempora saepe veniam nihil. Aut omnis et necessitatibus voluptatum laboriosam. Est molestiae qui exercitationem. Rerum et hic eos amet.', 'default.jpg', 'porro-aliquam-beatae-maiores'),
(245, 22, 'Laborum et dolor reiciendis.', 'Molestiae maxime sit et officia. Dolore consequatur ut reprehenderit veniam voluptate aspernatur veritatis. Autem harum saepe labore qui aut iure.', 'default.jpg', 'laborum-et-dolor-reiciendis'),
(246, 24, 'Corporis quaerat dolorum.', 'Quia non harum ut consequuntur non nulla vero. Aut autem iusto rerum rem vel vitae. Nesciunt enim voluptatum voluptate architecto dolor illum eum.', 'default.jpg', 'corporis-quaerat-dolorum'),
(247, 25, 'Ab tempore recusandae.', 'Voluptatem consectetur rerum libero. Ut ut quaerat illum eligendi iusto. Labore et qui quaerat eos deserunt alias nam. Eaque enim incidunt sunt et molestias distinctio asperiores.', 'default.jpg', 'ab-tempore-recusandae'),
(248, 25, 'Maxime qui et saepe.', 'Dicta assumenda quia laborum. Qui neque debitis necessitatibus.', 'default.jpg', 'maxime-qui-et-saepe'),
(249, 21, 'Ut voluptates corporis quis.', 'Dolorem explicabo fuga esse. Molestias quia voluptatum aliquam doloremque ut. Et ratione libero quo quasi. Praesentium omnis est deleniti esse magni.', 'default.jpg', 'ut-voluptates-corporis-quis'),
(250, 21, 'Maiores mollitia impedit.', 'Adipisci porro molestiae necessitatibus. Magni qui laudantium mollitia eum aperiam autem est. Repellendus est ipsum dolorem repellat et.', 'default.jpg', 'maiores-mollitia-impedit'),
(251, 25, 'Nostrum ex nam.', 'Voluptatem non esse quas ducimus doloribus corrupti odit. Sed non repellat tempore dolor rerum. Nulla voluptate iste est nostrum est quod. Quidem dolorem aut aperiam eius sunt tempora aut autem.', 'default.jpg', 'nostrum-ex-nam'),
(252, 22, 'Cum illo quos.', 'Nobis id qui dolore iste culpa nisi reprehenderit. Quibusdam adipisci incidunt at repudiandae fugit minus. Sint earum iusto minus in eum. Voluptate debitis illo ea.', 'default.jpg', 'cum-illo-quos'),
(253, 24, 'Ipsum et veritatis veritatis.', 'Voluptatibus maiores et et illo ipsam eaque. Explicabo eum esse sit eos consequatur ut labore. Odio beatae fugiat consequatur fugit blanditiis error eos occaecati. Vitae quis laudantium quos itaque.', 'default.jpg', 'ipsum-et-veritatis-veritatis'),
(254, 25, 'Amet inventore omnis quia.', 'Exercitationem illum non molestiae nesciunt voluptas quia. Rerum occaecati perferendis consequatur eum quo nam dignissimos. Odio enim ut numquam et vel minima. Cupiditate magni sunt eum eos.', 'default.jpg', 'amet-inventore-omnis-quia'),
(255, 24, 'Incidunt magnam qui a.', 'Voluptatem officia modi est amet alias magni. Quis tempora quia dolor et. Dolorum voluptas illum ipsa pariatur iste illum.', 'default.jpg', 'incidunt-magnam-qui-a'),
(256, 21, 'ff', 'ff', 'C:\\wamp64\\tmp\\php6DDF.tmp', 'ff'),
(257, 21, 'test', 'gg', 'C:\\wamp64\\tmp\\php4408.tmp', 'test'),
(258, 21, 's', 's', 'C:\\wamp64\\tmp\\php3862.tmp', 's'),
(259, 21, 'aaaaaaaaa', 'aaaaaaaaaaa', 'DQT1zeZUrYj33Ea5i7CPHeDgb3siYsCq.jpeg', 'aaaaaaaaa'),
(260, 21, 'test finale', 'gdtegdteg', 'UNYLYvqrl6nL60sCsXl28TZcDokXpVRy.jpeg', 'test-finale');

-- --------------------------------------------------------

--
-- Structure de la table `continent`
--

DROP TABLE IF EXISTS `continent`;
CREATE TABLE IF NOT EXISTS `continent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `continent`
--

INSERT INTO `continent` (`id`, `name`) VALUES
(21, 'atque'),
(22, 'molestiae'),
(23, 'consequatur'),
(24, 'labore'),
(25, 'sit');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200306091007', '2020-03-06 09:10:23'),
('20200306141821', '2020-03-06 14:18:37');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E66921F4C77` FOREIGN KEY (`continent_id`) REFERENCES `continent` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
