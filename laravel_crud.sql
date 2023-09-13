-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 13 sep. 2023 à 14:57
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
-- Base de données : `laravel_crud`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_09_12_213334_create_posts_table', 1),
(7, '2023_09_13_103917_create_post_likes_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `user_id`, `likes`, `created_at`, `updated_at`) VALUES
(1, 'So good so they can\'t ignore you', 'description', 1, 2, '2023-09-13 10:33:18', '2023-09-13 10:44:29'),
(7, 'Soluta et amet aut officiis ut asperiores ad.', 'Provident maiores exercitationem voluptatem nisi quia omnis mollitia. Officiis a et et et nesciunt repellendus. Hic tenetur vero voluptatem sit. Ut aut ut provident ut aut doloremque corporis.', 1, 51, '2023-09-13 10:39:04', '2023-09-13 10:39:04'),
(8, 'Exercitationem nemo nulla perferendis aut ut itaque.', 'Magnam commodi aliquam placeat ducimus est est. Praesentium assumenda ut dolores facere non. Labore eveniet illo reprehenderit est eius.', 1, 19, '2023-09-13 10:39:04', '2023-09-13 10:39:04'),
(9, 'Totam accusantium dolor ipsa.', 'Quia deserunt ipsum debitis incidunt quia dolor explicabo eveniet. Minus sunt quis mollitia assumenda sunt expedita. Consectetur vitae consequuntur delectus ab consequatur neque.', 2, 46, '2023-09-13 10:39:04', '2023-09-13 10:39:04'),
(10, 'Nihil natus architecto in id rem omnis quia.', 'Eveniet rerum voluptatum neque et ad aspernatur. Et tempora nemo ipsum impedit corrupti. Enim sequi libero laborum.', 1, 71, '2023-09-13 10:39:04', '2023-09-13 10:39:04'),
(11, 'Et voluptatibus tenetur voluptatem doloremque nulla ut.', 'Est rerum et quaerat aut asperiores sed reprehenderit. Cupiditate inventore placeat et atque sed nam. Porro et sequi quos natus atque aperiam beatae.', 2, 60, '2023-09-13 10:39:04', '2023-09-13 10:39:04'),
(12, 'Ipsum illum quaerat enim recusandae.', 'Ex eius vel deleniti veniam numquam harum similique. Magnam nemo laboriosam magnam vel. Omnis quam aliquam voluptatem dolorem dolor soluta sit ipsam.', 1, 35, '2023-09-13 10:39:04', '2023-09-13 10:39:04'),
(13, 'Doloremque dolor iusto quia qui quidem et quis et.', 'Adipisci velit id rem ipsum. Voluptatibus quas et molestiae laudantium earum nihil consectetur quia. Consequatur quis voluptas animi.', 2, 25, '2023-09-13 10:39:04', '2023-09-13 10:39:04'),
(14, 'Maiores ut sunt iure ea voluptatem debitis et ut.', 'Earum aut sint aliquam distinctio enim. Velit tenetur cumque soluta aspernatur atque et. Illo illum facilis consequuntur eum perferendis hic voluptatibus.', 2, 30, '2023-09-13 10:41:06', '2023-09-13 10:41:06'),
(15, 'Ad repudiandae tenetur alias inventore.', 'Recusandae velit voluptate omnis ea et. Deserunt consequatur vero ut odio ipsam. Quidem omnis similique laboriosam velit.', 1, 36, '2023-09-13 10:41:06', '2023-09-13 10:41:06'),
(16, 'Beatae aut enim reiciendis harum beatae voluptas ex expedita.', 'Voluptatem voluptatibus provident iure id. Nobis ex laborum quia sed perferendis. Accusamus accusamus quo quos harum.', 2, 59, '2023-09-13 10:41:06', '2023-09-13 10:41:06'),
(17, 'Est est cumque dolores est tempore.', 'Id sint nihil voluptas eos molestiae. Vel et voluptas facilis sed. Ut recusandae asperiores nobis autem.', 2, 93, '2023-09-13 10:41:06', '2023-09-13 10:41:06'),
(18, 'Eos excepturi illum incidunt quasi reprehenderit vero.', 'Laboriosam provident ut possimus ut. Earum quidem sint magni. A deleniti deserunt qui quidem accusantium hic nisi.', 1, 23, '2023-09-13 10:41:06', '2023-09-13 10:41:06'),
(19, 'Ut illo esse suscipit nihil.', 'Non quia sint officiis. A laborum rerum eum quia. Eum vel possimus hic minus et ea qui. Est impedit tenetur recusandae corrupti animi numquam.', 1, 47, '2023-09-13 10:41:06', '2023-09-13 10:41:06'),
(20, 'Atque repellendus harum alias amet id.', 'Et doloribus officia dolore itaque. Quis commodi quaerat itaque autem nemo aspernatur. Amet ipsum consequatur et et debitis.', 2, 15, '2023-09-13 10:41:06', '2023-09-13 10:41:06'),
(21, 'Eligendi nisi tenetur dolores quia et autem et provident.', 'A voluptas nulla quis officia quisquam. Ab quia et quibusdam consectetur est. Aut porro soluta ut animi officia impedit ab.', 2, 27, '2023-09-13 10:41:06', '2023-09-13 10:41:06'),
(22, 'Eligendi reiciendis qui rem.', 'Excepturi dolores nostrum nisi aliquam nisi aut tenetur. Distinctio odit doloremque quod non. Neque quaerat exercitationem velit quo aliquid. Aut sed soluta enim ipsum qui aut totam facere.', 2, 98, '2023-09-13 10:41:06', '2023-09-13 10:41:06'),
(23, 'Ipsum velit quod velit vero sit quam.', 'Laudantium voluptas blanditiis sapiente quaerat qui voluptatibus atque nemo. Non a voluptatem necessitatibus qui nihil fugit quia culpa. Vel voluptatem voluptatem expedita est tempora.', 2, 90, '2023-09-13 10:41:06', '2023-09-13 10:41:06'),
(24, 's', 's', 3, 0, '2023-09-13 10:44:50', '2023-09-13 10:44:50'),
(25, 'Nam aliquid vel veniam voluptate.', 'Dolorem dignissimos dolor aliquam sit odio. Nemo at voluptatibus facilis ipsa consequatur eum nam velit. Vitae reiciendis maiores minus et eum.', 3, 3, '2023-09-13 10:45:08', '2023-09-13 10:45:08'),
(27, 'Saepe esse ab dolor reiciendis facere consequatur deserunt.', 'Ratione aspernatur quaerat nam ipsam. Officiis sed fuga accusamus molestiae corporis rem. Excepturi totam eaque sunt sint voluptatem. Voluptates voluptatem qui ea officiis ea.', 1, 26, '2023-09-13 10:45:08', '2023-09-13 10:45:08'),
(28, 'Error eius sed ut dolores aut vitae fugiat.', 'Sequi temporibus iste magni debitis. Aperiam magnam maxime numquam voluptas quos provident ut. Excepturi ut quasi eum dicta et.', 3, 30, '2023-09-13 10:45:08', '2023-09-13 10:45:08'),
(29, 'Quia et officiis iste sequi expedita sunt autem.', 'Nemo atque quidem repellendus ab perspiciatis incidunt. Harum aliquam eaque necessitatibus ullam et maiores officiis. Quod qui esse voluptatum dolor ea mollitia iusto. Doloribus consequatur vel velit est et doloribus. Voluptas sapiente adipisci unde officiis dolore illo provident officia.', 2, 27, '2023-09-13 10:45:08', '2023-09-13 10:45:08'),
(30, 'Dicta quisquam corporis aliquid in et rerum ut.', 'Soluta nostrum distinctio qui. Doloremque corrupti qui assumenda commodi eligendi sit omnis. Autem ipsum nesciunt facilis ducimus pariatur quos architecto.', 2, 32, '2023-09-13 10:45:08', '2023-09-13 10:45:08'),
(31, 'Adipisci amet iusto tempora qui.', 'Ut sit doloribus placeat qui distinctio. Impedit earum ducimus aut sunt dignissimos. Beatae cupiditate ut aperiam sequi quia enim cupiditate totam. Ab sed tempore vel sit tempora id dolores beatae.', 3, 70, '2023-09-13 10:45:08', '2023-09-13 10:45:08'),
(32, 'Rem numquam mollitia tempore hic.', 'Repudiandae facilis minus eius reprehenderit omnis deleniti. Sed odit reiciendis praesentium sit. Minus quasi animi quia suscipit sit quo molestias. Nihil placeat atque est aut ut voluptas aliquid sed.', 1, 75, '2023-09-13 10:45:08', '2023-09-13 10:45:08'),
(33, 'Illo alias aut sed autem est quis.', 'Asperiores aut quae error sint et sed ducimus. Atque similique sequi officia dolor et libero. Quasi qui est qui officia consequatur.', 2, 42, '2023-09-13 10:45:08', '2023-09-13 10:45:08'),
(34, 'Animi voluptatibus porro non officia quia voluptates ex.', 'Quo vel dicta et officiis ex expedita ad. Fuga itaque maxime officia sed ab debitis aperiam. Omnis asperiores qui minus voluptas in magni aut. Incidunt magni quia qui voluptas.', 3, 56, '2023-09-13 10:45:08', '2023-09-13 10:45:08'),
(35, 'Voluptatem accusantium ut autem.', 'Debitis debitis inventore aut reiciendis vel. Et reiciendis ut necessitatibus illum. Commodi explicabo sint nihil voluptate. Exercitationem maiores sapiente non velit saepe officiis debitis.', 1, 60, '2023-09-13 10:45:36', '2023-09-13 10:45:36'),
(36, 'Ut nostrum libero consequatur numquam fugiat nisi eveniet.', 'Sint distinctio est voluptates necessitatibus neque in delectus possimus. Vero aspernatur est sequi dolore provident sint molestiae. Ut et labore porro sed ipsam. Qui beatae animi neque veniam et quia asperiores.', 1, 77, '2023-09-13 10:45:36', '2023-09-13 10:45:36'),
(37, 'Corporis impedit nihil omnis voluptates.', 'Est excepturi atque est tenetur. Beatae quia iste sed rerum.', 2, 48, '2023-09-13 10:45:36', '2023-09-13 10:45:36'),
(38, 'Iure est animi quod incidunt dignissimos veritatis ad.', 'Numquam alias consectetur omnis quia. Quae est quod natus. Harum ut cumque accusamus inventore animi sed vitae.', 1, 15, '2023-09-13 10:45:36', '2023-09-13 10:45:36'),
(39, 'Exercitationem nemo soluta asperiores.', 'Esse officiis est nostrum assumenda incidunt non. Doloremque quibusdam ipsam et eum nisi. Voluptatem qui et doloribus pariatur natus. Nesciunt inventore eligendi molestiae odio repudiandae quae eum.', 2, 83, '2023-09-13 10:45:36', '2023-09-13 10:45:36'),
(40, 'Ut quae nihil doloribus aut qui quo ullam.', 'Illo blanditiis sit aut quaerat officia officiis id. Officiis a est maiores autem alias. Non rerum qui eveniet dolorem quia sed sit cum.', 3, 46, '2023-09-13 10:45:36', '2023-09-13 10:45:36'),
(41, 'Et necessitatibus ea perspiciatis quis minus voluptatibus.', 'Sequi quas dolor dolor quo dolorem. Cupiditate voluptatem ut repellendus facilis non asperiores laborum. Voluptatibus aut illo minima ducimus. Cupiditate beatae quos voluptatibus qui qui dicta eos. Et nemo eius ut excepturi necessitatibus ad quasi.', 1, 45, '2023-09-13 10:45:36', '2023-09-13 10:45:36'),
(42, 'Voluptatem non ut vitae ex labore.', 'Velit qui sed sunt voluptas. Maxime ipsam sit omnis error.', 2, 70, '2023-09-13 10:45:36', '2023-09-13 10:45:36'),
(43, 'Est dicta dolores velit sed.', 'Et voluptas nesciunt est atque nihil. Sed distinctio eos repellat. Maiores sit temporibus quo saepe minima voluptate.', 3, 58, '2023-09-13 10:45:36', '2023-09-13 10:45:36'),
(44, 'Optio quas qui laboriosam earum molestias quis.', 'Voluptatibus odio aut quia architecto quos ut ut. Perspiciatis aut optio blanditiis doloribus impedit. In aperiam enim quaerat itaque. Tempore odio eligendi veritatis minima. Aliquam vel fugiat dolorem labore nobis ut.', 3, 1, '2023-09-13 10:45:36', '2023-09-13 10:45:36');

-- --------------------------------------------------------

--
-- Structure de la table `post_likes`
--

CREATE TABLE `post_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `post_likes`
--

INSERT INTO `post_likes` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2023-09-13 10:33:52', '2023-09-13 10:33:52'),
(2, 1, 3, '2023-09-13 10:44:29', '2023-09-13 10:44:29');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `age`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jack', 'jack@gmail.com', NULL, NULL, '$2y$10$wSNrWzRdpZ9gF8sgaBvBZuY8CZcAhJtsz2OTybUFR3Psjuydm4Tpu', NULL, '2023-09-13 10:32:06', '2023-09-13 10:32:06'),
(2, 'john', 'john@gmail.com', NULL, NULL, '$2y$10$9BdEDJCaoUTL6QqywU/huuBrWzPhC5KBNfY4S3y0nPhowhb5NoiRG', NULL, '2023-09-13 10:33:45', '2023-09-13 10:33:45'),
(3, 'Othman Semlali', 'othmansemlali1@gmail.com', NULL, NULL, '$2y$10$YWQ56C4Qko.2Usf5msGo1.ErtzWJ/XZf9d2fDFb8VpzPdTjxaRVG.', NULL, '2023-09-13 10:44:22', '2023-09-13 10:44:22');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Index pour la table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_likes_post_id_user_id_unique` (`post_id`,`user_id`),
  ADD KEY `post_likes_user_id_foreign` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
