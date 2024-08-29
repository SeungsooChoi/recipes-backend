-- recipes.recipe definition

CREATE TABLE recipes.recipe (
	recipe_id INT auto_increment NOT NULL,
	user_id INT NOT NULL,
	category_id INT NOT NULL,
	title varchar(100) NOT NULL COMMENT '레시피 제목',
	description TEXT NULL COMMENT '설명',
	image_url varchar(100) NULL COMMENT '레시피 대표 이미지 사진',
	reg_date DATETIME NULL,
	mod_date DATETIME NULL,
	CONSTRAINT recipe_pk PRIMARY KEY (recipe_id),
	CONSTRAINT recipe_user_FK FOREIGN KEY (user_id) REFERENCES recipes.`user`(user_id),
	CONSTRAINT recipe_categories_FK FOREIGN KEY (category_id) REFERENCES recipes.categories(category_id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;