-- recipes.reviews definition

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `rating` tinyint(4) NOT NULL,
  `comment` text DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `mod_date` datetime DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `reviews_recipe_FK` (`recipe_id`),
  KEY `reviews_member_FK` (`member_id`),
  CONSTRAINT `reviews_member_FK` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `reviews_recipe_FK` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;