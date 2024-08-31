-- recipes.recipe_tags definition

CREATE TABLE recipes.recipe_tags (
	recipe_tag_id INT auto_increment NOT NULL,
	recipe_id INT NOT NULL,
	tag_id INT NOT NULL,
	CONSTRAINT recipe_tags_pk PRIMARY KEY (recipe_tag_id),
	CONSTRAINT recipe_tags_recipe_FK FOREIGN KEY (recipe_id) REFERENCES recipes.recipe(recipe_id),
	CONSTRAINT recipe_tags_tags_FK FOREIGN KEY (tag_id) REFERENCES recipes.tags(tag_id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;