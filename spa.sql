/*
Navicat MySQL Data Transfer

Source Server         : homestead
Source Server Version : 50720
Source Host           : 127.0.0.1:33060
Source Database       : spa

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-26 17:17:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('4', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('5', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('6', '2018_02_26_054737_create_posts_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', 'Enim quae explicabo occaecati aut dolores ab voluptatum.', 'Aspernatur nisi aspernatur est consequuntur sint quae. Delectus nesciunt consequatur consectetur molestiae. Veniam quae minus nihil labore aut qui dolores. Hic molestiae ut velit cumque eaque doloribus asperiores. Odio consequuntur molestiae ipsum totam impedit.', '2', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('2', 'Officiis corporis neque esse tenetur dolorum.', 'Aut odio quo reprehenderit sunt explicabo dolorem. Dolore quae reiciendis quibusdam exercitationem. Voluptas quia nisi repellat porro doloremque eveniet enim nobis. Error non corporis dolorum maiores.', '3', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('3', 'Magni vel quia rerum.', 'Reprehenderit voluptatibus accusamus est harum error. Consequatur tempore velit dolorum distinctio consectetur non voluptatem. Dolores sint alias velit voluptas. Animi eligendi quasi saepe eos quos iusto. Quia illum eaque enim labore iusto blanditiis quia.', '4', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('4', 'Mollitia expedita aut sint natus sint.', 'Magnam voluptates aliquam nihil nobis natus laborum enim. Aliquid nostrum culpa ipsum et molestiae quo quia. Dolorum ipsam eveniet reiciendis et perspiciatis explicabo et. Repudiandae facilis ullam aut reprehenderit repudiandae ipsum et autem.', '5', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('5', 'Voluptatem est sunt dolorum ratione saepe.', 'Eius quidem aliquam esse vitae. Tempora incidunt ut ab autem ut ea. Dignissimos et ad quibusdam sed non.', '6', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('6', 'Rerum laudantium est aliquam dolor voluptatem laudantium.', 'Quaerat voluptatibus ea aspernatur dolore iste quibusdam. Eos inventore atque ipsam enim hic explicabo rerum. Autem possimus ut quos iste ex ullam facilis. Facere qui et reiciendis eaque ut.', '7', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('7', 'Eaque ipsum aliquam voluptas praesentium.', 'Eius eaque maxime et dicta. Illo consequatur autem alias enim. Ut et perferendis ipsum. Saepe maiores ut iure quibusdam maxime aut.', '8', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('8', 'Voluptatem hic dolorem ducimus perferendis molestiae ullam voluptatem sint.', 'Velit nisi accusamus dolore odit. Minima nisi voluptate ipsa nihil sed dolor. Cumque iste est assumenda dicta error. Soluta voluptatem corrupti reiciendis quo dolorum excepturi porro doloribus.', '9', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('9', 'Libero necessitatibus sit magni vel sunt.', 'Totam tenetur quia voluptatibus voluptas velit. Earum totam soluta autem qui molestiae qui ad tempora. Amet nesciunt unde autem autem maxime.', '10', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('10', 'Incidunt sunt unde temporibus consequatur.', 'Qui reprehenderit explicabo et velit aspernatur deserunt incidunt. Quo ad dolorem et occaecati. Occaecati sed qui eos id.', '11', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('11', 'Libero rerum et veritatis labore tenetur.', 'Blanditiis eos ex enim ut fugiat ullam animi nam. Eos corporis dolore est voluptatum rerum dolores nostrum. Est dolores repudiandae aliquam debitis non ipsum. Esse magnam sunt ullam aliquam.', '12', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('12', 'Distinctio et et voluptate doloribus accusantium officia non.', 'Fuga quisquam ea molestias eum quia quas laborum ut. Nulla quis rerum ut ut qui amet. Quisquam cupiditate cupiditate dolorem molestiae nostrum.', '13', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('13', 'Officia similique voluptatem quo non maiores consequuntur.', 'Ut commodi repudiandae ut et suscipit veniam debitis. Odio reprehenderit cupiditate quia voluptatem. Laudantium libero aperiam rerum aperiam soluta.', '14', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('14', 'Dolorum qui eos tenetur sit eum.', 'Molestiae ea at doloremque et rerum qui aperiam. Sed fugiat voluptates enim nam blanditiis. Quia sed sit minima rerum sint.', '15', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('15', 'Esse iste voluptatem neque ut omnis labore enim consequatur.', 'Ab rem suscipit facilis molestias facere debitis et repellendus. Distinctio rem optio voluptates perspiciatis. Et adipisci fugit omnis iure quia.', '16', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('16', 'Blanditiis porro voluptas illum aut.', 'Ducimus ut dignissimos nisi ut cumque non nemo. Pariatur eius quidem natus sunt illo. Possimus possimus pariatur nesciunt voluptatum eaque.', '17', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('17', 'Porro aliquid iste voluptas veritatis sed nisi incidunt.', 'Sit quis sit velit natus quis ipsum veritatis. Porro molestiae quae dolore atque accusantium vel laboriosam. Aliquid nesciunt aspernatur excepturi voluptatibus id temporibus animi omnis. Et ut expedita eos eius architecto omnis.', '18', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('18', 'Ratione ex dolores modi.', 'Repudiandae quidem inventore illum est. A accusantium ut nulla reprehenderit qui adipisci. Enim deserunt voluptates aspernatur illum id. Vitae magni dolorem qui dolores aliquid et perferendis.', '19', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('19', 'Consequuntur nesciunt saepe voluptatem architecto aut quos omnis.', 'Sit repellendus cum voluptas consequatur expedita. Maiores repellendus dolorem explicabo magnam ipsum libero voluptate. Officia veritatis iure molestiae perferendis officiis. Omnis occaecati inventore voluptatem.', '20', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('20', 'Ducimus consequuntur at sed laboriosam et dolore.', 'Cum voluptatem ad adipisci nisi sit fugiat. Voluptas nostrum eum nisi quo id fugit. Officiis quae natus amet explicabo maiores reiciendis voluptas.', '21', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('21', 'Commodi adipisci laborum delectus nulla.', 'Dolore reprehenderit voluptatum nemo similique nisi dolores porro. Dicta suscipit non consectetur. Nihil laudantium sed doloribus laudantium repudiandae tenetur. Ut hic adipisci aspernatur ut fugit fugiat illo.', '22', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('22', 'A quam amet cupiditate.', 'Excepturi et molestiae nihil quis. Eius alias est cumque corporis corrupti porro est quia. Illum ipsum repudiandae magni voluptatem. Ad ab porro porro odit vel enim.', '23', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('23', 'Sint eos quibusdam quia laborum id maiores quod.', 'Nesciunt laboriosam recusandae et quasi. Qui sint aut culpa molestias a. Iusto quasi ut optio consequatur officiis voluptatem nam ut.', '24', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('24', 'Fuga consequatur necessitatibus nemo quo velit quam.', 'Qui sed veniam placeat quae veniam. Voluptate quis nemo aut sunt sed blanditiis. Exercitationem sint sed dolor minima dolore dolores.', '25', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('25', 'Et aut necessitatibus est vero.', 'Ut est fugit explicabo ducimus eos recusandae ratione eveniet. Eveniet aliquid et et. Provident reiciendis suscipit rerum eveniet omnis.', '26', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('26', 'Unde eius dolor iste ea pariatur labore perspiciatis velit.', 'Id beatae sed minus officiis et culpa eos. Natus maxime id ducimus animi. Repudiandae nisi quisquam mollitia quo omnis est.', '27', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('27', 'Fugit assumenda iure modi quisquam doloribus repellendus.', 'Qui mollitia hic facilis voluptas ratione blanditiis. Facere corrupti ea sunt explicabo velit rerum nesciunt. Assumenda nisi qui tenetur id doloribus. Rerum totam adipisci dolor.', '28', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('28', 'Reiciendis eveniet qui enim sunt.', 'Praesentium in ipsum in sit et. Dicta cum qui ipsum qui necessitatibus. Sed provident ut et enim delectus et.', '29', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('29', 'Minus accusantium eum eligendi unde.', 'Mollitia amet porro rerum tempora aspernatur similique sint. Quia eveniet repellendus odio minima. Accusamus sed voluptas dignissimos explicabo eius natus. Quam magni aut asperiores facere ullam molestiae. Esse tenetur eveniet inventore aspernatur expedita ut.', '30', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('30', 'Molestiae quis tempore non quasi quasi.', 'Magnam doloremque quis assumenda non. Nulla inventore ea rerum illo tenetur aut aliquam. Magnam reiciendis ad maxime.', '31', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('31', 'Voluptas adipisci animi veniam.', 'Nam maxime debitis eos eos. Aliquam nostrum odio velit. Deserunt et reiciendis aperiam unde.', '32', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('32', 'Rerum ut sed eveniet fugiat voluptatum natus ducimus.', 'Quia consequuntur optio quo nam aliquam. Voluptatem velit aut ut qui velit. Dolorem necessitatibus ab nam ut. Quo explicabo eos adipisci mollitia non aut.', '33', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('33', 'Facere quia repellendus dolores harum.', 'Id eos omnis natus ut eum. A est harum fugit autem neque aut neque. Dolorem consequatur distinctio est sed corrupti doloremque dignissimos.', '34', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('34', 'Vel consequatur dolorum veritatis deleniti.', 'At asperiores veniam sed odio cupiditate aspernatur. Est consequatur voluptatem quaerat qui. Assumenda vel veniam aliquam debitis delectus dicta excepturi. Eos totam autem necessitatibus aliquam vitae.', '35', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('35', 'Et ex autem commodi recusandae voluptates in modi.', 'Voluptatem odio quia aut iste dolore mollitia. Maxime maxime deleniti officiis cum qui dolorem quibusdam. Suscipit velit fugit et dolor esse. Maxime corrupti labore earum et doloribus aperiam eveniet dolores. Quo eius et nihil labore architecto recusandae tenetur aut.', '36', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('36', 'Dolore molestiae expedita eveniet vel veritatis.', 'Eaque et iste numquam et. Corrupti est ea est. Voluptatem sunt commodi ipsum ut porro ut. Laboriosam consequatur sequi aliquid magni pariatur.', '37', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('37', 'Ut reiciendis eum dicta ut quia doloribus.', 'Ducimus nihil doloribus suscipit assumenda magni facilis omnis. Repudiandae quia non quam et ab veniam rem. Sapiente quos cumque nostrum fuga.', '38', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('38', 'Similique ipsa similique omnis delectus pariatur.', 'Dolor impedit aspernatur quod alias. Excepturi distinctio quas consequatur quo ipsam. Adipisci blanditiis sit corporis alias voluptatem aliquam qui iure. Distinctio inventore quam pariatur quia.', '39', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('39', 'Aperiam est quam blanditiis consequuntur et numquam.', 'Commodi quis voluptatem aperiam nihil exercitationem unde. Deleniti repellendus sed ipsa. Perspiciatis voluptatum sint nemo quia. Molestiae adipisci natus deleniti assumenda expedita qui at consequuntur.', '40', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('40', 'Impedit exercitationem vitae exercitationem.', 'Est iste sed rerum autem eligendi. Suscipit harum qui laboriosam possimus voluptas saepe. Et velit amet id voluptatum.', '41', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('41', 'Quia corrupti eaque explicabo autem.', 'Voluptas qui sunt veniam molestias exercitationem. Ut blanditiis eligendi autem neque sit ex. Ullam adipisci iure porro quo laborum. Ullam dolores temporibus dignissimos et vel sint. Et illo ipsam minus natus molestiae.', '42', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('42', 'Saepe consequatur quia aliquam accusantium.', 'Ab magni sunt eveniet quidem repellat dolor et. Et laboriosam ratione possimus est quia architecto. Quibusdam non explicabo voluptates dolorem atque.', '43', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('43', 'Omnis odit atque at dolores.', 'Fugit ea omnis maxime enim. Animi commodi repudiandae exercitationem fugiat suscipit. Ullam voluptatem quis aut dolor amet non facilis. Qui quod eius aliquid rerum beatae quisquam ea.', '44', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('44', 'Quo placeat adipisci sit dolore dolorem est sed sit.', 'Aperiam quos rerum quidem qui consequuntur iste quasi. Vero et quo est exercitationem. Iusto laboriosam voluptas nihil modi totam voluptas.', '45', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('45', 'Eligendi eum facere blanditiis quia et numquam.', 'Ea est odio vel facilis praesentium. Magnam quidem quas ea sed quia. Et ab unde omnis a autem aperiam. Et ut deleniti et praesentium quam ipsa omnis.', '46', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('46', 'Perferendis vel occaecati officia.', 'Quam mollitia labore voluptatem enim sit veritatis ut. Voluptas reiciendis et placeat distinctio corporis sint. Quo quae et qui. Reiciendis recusandae quam excepturi sit ratione minus deleniti. Magnam rem eos expedita.', '47', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('47', 'Vel vel quia et laborum voluptatibus.', 'Unde et dolor eum non est libero. Provident cumque ullam et optio cumque iure eos voluptas. Quibusdam et dicta debitis quia culpa.', '48', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('48', 'Quis molestiae illum qui dolor voluptas sit.', 'Nam tenetur pariatur maiores sed. Exercitationem sunt nam autem est et dolorem provident. Perferendis libero itaque incidunt iusto fuga minima.', '49', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('49', 'Omnis similique soluta quia vel ab minima sit.', 'Sed impedit et illo. Facere magni mollitia voluptates eveniet reiciendis voluptates. Non quis quis ad tempora. Aliquid deserunt qui dolor vel.', '50', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('50', 'Impedit nobis facilis et magnam natus.', 'Iste qui necessitatibus atque qui ut vero est. Repellat incidunt illum rerum iusto nihil est blanditiis. Dignissimos rerum labore suscipit saepe id asperiores. Accusantium quibusdam placeat rerum dignissimos exercitationem sint fuga. Porro molestiae sed ipsa hic architecto qui voluptatem.', '51', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('51', 'Velit deleniti non inventore voluptatem qui iusto fuga.', 'Dolorem ea unde vitae corporis repellendus sit molestiae. Deserunt minima nihil ex cumque est veniam. Et est quia error tempore atque cum. Eum et neque exercitationem illum cupiditate voluptas et.', '52', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('52', 'Rerum qui rerum maxime esse.', 'Est consectetur perferendis quia ipsa ipsa quis quas. Illo et in rerum facilis consequatur ipsum. Quos officia et et eligendi quia quos esse magnam. Sequi aut aut praesentium perspiciatis.', '53', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('53', 'Excepturi qui sed non quia nihil reprehenderit velit.', 'Voluptas libero omnis earum magnam qui alias quos incidunt. Beatae iure sequi aut aliquam. Odit autem error sed praesentium aut vitae voluptatem.', '54', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('54', 'Sequi dolorem molestias maiores sit nobis voluptas iste.', 'Et voluptatum laboriosam nemo aut velit tempora. Earum aut quidem non ab maiores sed quasi animi. Quo sed quis rerum laudantium sed consequuntur aspernatur sed. Qui rerum quo esse doloremque veritatis id ipsam recusandae.', '55', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('55', 'Aspernatur necessitatibus nobis eius maiores vel non error.', 'Voluptatem ratione quo molestias blanditiis. Dicta et recusandae aspernatur incidunt incidunt. Ut ad culpa et.', '56', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('56', 'Magni vel laboriosam repellat reprehenderit quaerat maxime nisi.', 'Dolores itaque odio et dolorum libero fugit. Debitis enim impedit eos totam dicta ab doloribus rem. Earum qui ut quo sunt similique et. Accusamus nostrum rerum sed iure.', '57', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('57', 'Minima dolorum quasi quia nam animi eos voluptatum.', 'Omnis ut magni id autem est aliquam architecto ea. Sunt magni est aut sit facilis iure. Et dolores enim placeat ut vitae id vel. Nisi provident et vero fuga facere dolores ipsam.', '58', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('58', 'Placeat et facere repudiandae aliquam odio maiores non.', 'Inventore quo voluptates et qui numquam reprehenderit. Pariatur eum corporis sit voluptatem fugiat aut. Dolores autem voluptatem architecto nihil amet maiores. Deserunt molestiae non dolores.', '59', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('59', 'Fuga veritatis eius atque et.', 'Dolore quia atque doloribus dolores dolor. Quam libero quisquam aut quis voluptas error.', '60', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `posts` VALUES ('60', 'Illo assumenda reprehenderit quam accusantium sint commodi.', 'Ipsam alias quidem consequatur saepe. Impedit dicta adipisci sapiente rem quas accusamus quae. Numquam et amet qui mollitia voluptas aliquid.', '61', '2018-02-26 06:08:11', '2018-02-26 06:08:11');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Miss Harmony Reichel', 'goodwin.bryon@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'qIgSncZlfk', '2018-02-26 06:07:20', '2018-02-26 06:07:20');
INSERT INTO `users` VALUES ('2', 'Birdie Collins MD', 'aron71@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'XJfgvpcNIz', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('3', 'Mr. Erick Hermiston Jr.', 'maribel62@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'dW5wufP2iH', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('4', 'Kristina Leffler DDS', 'anderson.kellen@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'nDKlpLNI2e', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('5', 'Drew Lind', 'jasper.kessler@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'Zu08pJLgWz', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('6', 'Miss Berniece Gaylord', 'derrick.sanford@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'dwP1iKPtDf', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('7', 'Mrs. Gabrielle Schmeler', 'gunner54@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'SqTAjxxhiV', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('8', 'Billie Langosh', 'jonathan.smitham@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', '1gxBeqzTdO', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('9', 'Dashawn McCullough I', 'pstehr@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'EmsXXMDqJO', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('10', 'Barney McCullough', 'haley.river@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'HMVW7cSXu5', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('11', 'Brandy Schiller Sr.', 'keeling.lila@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'XV57OepTtw', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('12', 'Myrtis Williamson', 'gorczany.susana@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'U1ZGinYwIP', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('13', 'Bryana Bernhard', 'quentin05@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'mzxJDikiZb', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('14', 'Margaret Stamm V', 'ibradtke@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'TfRkLnMx77', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('15', 'Ms. Cheyanne Bednar', 'ford.lesch@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'iiKWdx4ida', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('16', 'Hailee Osinski', 'murphy.hermann@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', '193GAsHUCQ', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('17', 'Penelope Schneider MD', 'mathew21@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'EdXNjuBkFz', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('18', 'Prof. Marcellus Gutkowski', 'shannon.hessel@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'aIPDAnuvP3', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('19', 'Brenna Bins', 'zula03@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'vs8qg7ijyv', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('20', 'Mrs. Eugenia Haag', 'bailey.austyn@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'UuqmAqP3F8', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('21', 'Ms. Petra Bradtke IV', 'juvenal71@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'Tur9NarmIV', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('22', 'Luciano Roob', 'sarai23@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'f5LXEQJCIr', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('23', 'Jennyfer Haley', 'erdman.jamal@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'Hxi73thMIl', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('24', 'Milan Boyer MD', 'uhodkiewicz@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'VDB2df55GF', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('25', 'Ms. Agustina Rice', 'arlie97@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'qIDi8lwB30', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('26', 'Lisette Walker', 'kenna.fay@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'r3Jqtq7T5A', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('27', 'Howard Rogahn', 'clementina08@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'E8TstO1Cgv', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('28', 'Mr. Marcelo Schumm III', 'ashlynn42@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'y0hGiFp2rz', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('29', 'Prof. Nickolas Will DVM', 'sjacobson@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'zOkwoszYwP', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('30', 'Timmy Bogisich', 'hstokes@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', '27WYcCtBqX', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('31', 'Jenifer Kunze', 'fisher.kayley@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'KpswC4TCJv', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('32', 'Ms. Jazmyn Bode', 'vincenzo.osinski@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'mEv2YenIoi', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('33', 'Mr. Chance Mueller Sr.', 'kdaniel@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', '5s5MHlxYwJ', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('34', 'Jasen Bartoletti', 'sadye.ohara@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'GG68BpE7Uv', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('35', 'Dr. Felton Donnelly IV', 'hope83@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'xAU09rBbCW', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('36', 'Miss Elsie Crist II', 'rubie.brown@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'uPnDHwmf7K', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('37', 'Orval Orn', 'estelle47@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'URimXlPBm2', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('38', 'Nola Schimmel', 'herman.hane@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'mKbdOnzZcP', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('39', 'Amalia Gleichner DVM', 'jamison10@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'aFrbGvwztB', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('40', 'Dr. Shaylee Robel', 'gottlieb.elza@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', '3rgwNOEyOt', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('41', 'Shany Crona', 'cromaguera@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', '7mkoPvdzuO', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('42', 'Prof. Lucius Krajcik II', 'zreynolds@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'WQYHPaAOqJ', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('43', 'Dr. Dewitt Lakin', 'genoveva58@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'LGbSIFvqTr', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('44', 'Dr. Steve Powlowski MD', 'torp.cielo@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'uBlOMSeqH9', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('45', 'Rubye Carroll', 'yroob@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'mVMzGG7roD', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('46', 'Mr. Norbert Morar', 'yost.evalyn@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'TasHH50PeK', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('47', 'Aurelio Nikolaus V', 'robb.swift@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'RJu5oN4bkl', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('48', 'Obie Sanford', 'vilma28@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'NO9ZZ5X7gf', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('49', 'Myah Langosh I', 'candace32@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'mbGkMBI0OY', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('50', 'Twila Howell', 'grant.hermiston@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'YMBF597waH', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('51', 'Lamont Monahan', 'bradley31@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'Q7BFCQXKzl', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('52', 'Mr. Angelo Larson', 'brandyn.kuphal@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'tNGwHdhLIQ', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('53', 'Nathan Murray DVM', 'autumn.heaney@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'qacV7fbZZC', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('54', 'Christopher Yundt II', 'baby03@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'Cl4NhMcBWa', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('55', 'Dr. Dock Skiles', 'ioberbrunner@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'mRLBIUwFbe', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('56', 'Martina Farrell', 'ubrown@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', '2WXspCP4dG', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('57', 'Velma Cassin', 'adams.aurelio@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'mLzsia3n1z', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('58', 'Julie White DDS', 'ena.fadel@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', '1w9KoPcCZC', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('59', 'Carlo Adams', 'moen.alena@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'A7uIbmD4W7', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('60', 'Isabel Rath', 'agustin.leannon@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'Ic7YSHk2EL', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('61', 'Mr. Daren Ruecker', 'reilly.chyna@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0', 'VOupmPTT6l', '2018-02-26 06:08:11', '2018-02-26 06:08:11');
INSERT INTO `users` VALUES ('64', '小白', 'jqy.zhou@gmail.com', '$2y$10$V32ujEDs5vsZDYXekJUh7ezqvtzxVOGi.GvvcCO9oSVYna.zqq/j.', '0', null, '2018-02-26 08:28:49', '2018-02-26 08:28:49');
