-- recipes.recipe_ingredients definition

CREATE TABLE recipes.recipe_ingredients (
	ingredient_id INT auto_increment NOT NULL,
	recipe_id INT NOT NULL,
	ingredient varchar(100) NOT NULL,
	quantity varchar(50) NULL,
	CONSTRAINT recipe_ingredients_pk PRIMARY KEY (ingredient_id),
	CONSTRAINT recipe_ingredients_recipe_FK FOREIGN KEY (recipe_id) REFERENCES recipes.recipe(recipe_id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;