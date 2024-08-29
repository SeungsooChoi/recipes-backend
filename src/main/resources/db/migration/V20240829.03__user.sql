-- recipes.`user` definition

CREATE TABLE recipes.`user` (
	user_id INT auto_increment NOT NULL,
	user_name varchar(100) NOT NULL COMMENT '이름',
	email varchar(100) NOT NULL COMMENT '이메일',
	password varchar(100) NOT NULL COMMENT '비밀번호',
	profile_image_url varchar(100) NULL COMMENT '프로필 이미지 주소',
	reg_date DATETIME NULL COMMENT '등록일',
	mod_date DATETIME NULL COMMENT '수정일',
	CONSTRAINT user_pk PRIMARY KEY (user_id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;