-- recipes.`member` definition

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_name` varchar(100) NOT NULL COMMENT '이름',
  `email` varchar(100) NOT NULL COMMENT '이메일',
  `password` varchar(100) NOT NULL COMMENT '비밀번호',
  `profile_image_url` varchar(100) DEFAULT NULL COMMENT '프로필 이미지 주소',
  `reg_date` datetime DEFAULT NULL COMMENT '등록일',
  `mod_date` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;