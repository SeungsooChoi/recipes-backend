-- recipes.recipe definition

CREATE TABLE `recipe` (
  `recipe_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL COMMENT '레시피 제목',
  `description` text DEFAULT NULL COMMENT '설명',
  `image_url` varchar(100) DEFAULT NULL COMMENT '레시피 대표 이미지 사진',
  `reg_date` datetime DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  PRIMARY KEY (`recipe_id`),
  KEY `recipe_categories_FK` (`category_id`),
  KEY `recipe_member_FK` (`member_id`),
  CONSTRAINT `recipe_categories_FK` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  CONSTRAINT `recipe_member_FK` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;