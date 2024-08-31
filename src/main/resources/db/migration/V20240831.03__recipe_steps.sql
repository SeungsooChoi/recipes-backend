-- recipes.secipe_steps definition

CREATE TABLE recipes.secipe_steps (
	step_id INT auto_increment NOT NULL,
	recipe_id INT NULL,
	step_number INT NOT NULL,
	instruction TEXT NOT NULL,
	CONSTRAINT secipe_steps_pk PRIMARY KEY (step_id),
	CONSTRAINT secipe_steps_recipe_FK FOREIGN KEY (recipe_id) REFERENCES recipes.recipe(recipe_id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;