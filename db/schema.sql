DROP DATABASE IF EXISTS Purrget;

CREATE DATABASE Purrget;
USE Purrget;

DROP TABLE IF EXISTS `Cats`;
		
CREATE TABLE `Cats` (
  `id` INTEGER UNIQUE AUTO_INCREMENT NOT NULL,
  `cat_name` VARCHAR(255) NOT NULL,
  `cat_category` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `Reviews`;

CREATE TABLE `Reviews` (
  `id` INTEGER UNIQUE AUTO_INCREMENT NOT NULL,
  `review_title` VARCHAR(255) NOT NULL,
  `review_user` VARCHAR(255) NOT NULL,
  `review_rating` INTEGER(1) NOT NULL,
  `review_content` VARCHAR(255) NOT NULL,
  `review_date` TIMESTAMP NOT NULL,
  `is_review_helpful` MEDIUMTEXT NOT NULL,
  `review_cetegories` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `Cats` (`cat_name`,`cat_category`) VALUES
('Willow','Adorable');
-- INSERT INTO `Reviews` (`review_title`,`review_user`,`review_rating`,`review_content`,`review_date`,`is_review_helpful`,`review_cetegories`) VALUES
-- ('','','','','','','');