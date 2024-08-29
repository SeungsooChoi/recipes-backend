-- recipes.tags definition

CREATE TABLE recipes.tags (
	tag_id INT auto_increment NOT NULL,
	title varchar(20) NOT NULL COMMENT '태그 제목',
	CONSTRAINT tags_pk PRIMARY KEY (tag_id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;