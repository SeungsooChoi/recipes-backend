-- recipes.categories definition

CREATE TABLE recipes.categories (
	category_id INT auto_increment NOT NULL,
	title varchar(20) NOT NULL COMMENT '카테고리 제목',
	CONSTRAINT categories_pk PRIMARY KEY (category_id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;