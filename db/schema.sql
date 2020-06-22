DROP DATABASE IF EXISTS purrget;

CREATE DATABASE purrget;
USE Pprrget;

CREATE TABLE `cats` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `cat_name` VARCHAR(255) NOT NULL,
  `cat_category` VARCHAR(255) NOT NULL
);

create table `reviews` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `review_title` VARCHAR(255) NOT NULL,
  `review_author` VARCHAR(255) NOT NULL,
  `review_rating` INTEGER(45) NOT NULL,
  `review_content` VARCHAR(255) NOT NULL,
  `review_date` TIMESTAMP NOT NULL,
  `is_helpful` MEDIUMTEXT NOT NULL,
  `is_not_helpful` MEDIUMTEXT NOT NULL
);

-- INSERT INTO `cats` (`cat_name`,`cat_category`) VALUES
-- ('Willow','Adorable');
INSERT INTO `reviews` (`review_title`,`review_author`,`review_rating`,`review_content`,`review_date`,`is_helpful`, `is_not_helpful`) VALUES
('this is the best cat ever','jimmmmyyyy','3','hello','2020-12-14','yes','yes');
