-- recipes.likes definition

CREATE TABLE `likes` (
  `like_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  PRIMARY KEY (`like_id`),
  KEY `likes_recipe_FK` (`recipe_id`),
  KEY `likes_member_FK` (`member_id`),
  CONSTRAINT `likes_member_FK` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `likes_recipe_FK` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;