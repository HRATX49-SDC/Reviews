DROP DATABASE IF EXISTS purrget;

CREATE DATABASE purrget;
USE purrget;

DROP TABLE IF EXISTS categories;

CREATE TABLE categories (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  categoryName VARCHAR(255) NOT NULL UNIQUE KEY
);

DROP TABLE IF EXISTS cats;
		
CREATE TABLE cats (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  catName VARCHAR(255) NOT NULL,
  categoryID INTEGER NOT NULL,
  INDEX categ_ind (categoryID),
  FOREIGN KEY (categoryID)
    REFERENCES categories(ID)
    ON DELETE CASCADE,
  UNIQUE KEY (catName)
);

DROP TABLE IF EXISTS reviews;
		
CREATE TABLE reviews (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cat_id INT NOT NULL,
  review_title VARCHAR(255) NOT NULL,
  review_author VARCHAR(255) NOT NULL,
  review_rating INTEGER(45) NOT NULL DEFAULT 0,
  review_value INTEGER(45) DEFAULT NULL,
  review_taste INTEGER(45) DEFAULT NULL,
  review_quality INTEGER(45) DEFAULT NULL,
  review_content VARCHAR(255) NOT NULL,
  review_is_helpful INT NOT NULL DEFAULT 0,
  review_is_not_helpful INT NOT NULL DEFAULT 0,
  recommendation VARCHAR(255) DEFAULT NULL,
  review_date DATE NOT NULL DEFAULT (CURRENT_DATE),
  INDEX cat_ind (cat_id),
    FOREIGN KEY (cat_id)
    REFERENCES cats(id)
    ON DELETE CASCADE
);


-- ---
-- Foreign Keys 
-- ---

-- ALTER TABLE cats ADD FOREIGN KEY (id) REFERENCES reviews(cat_d);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `cats` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `reviews` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- categories --

INSERT INTO categories (categoryName) VALUES ('Adorable');
INSERT INTO categories (categoryName) VALUES ('Floof');
INSERT INTO categories (categoryName) VALUES ('Chonk');
INSERT INTO categories (categoryName) VALUES ('Hairless');

-- cats --

INSERT INTO cats (catName, categoryID) VALUES ('Gizmo', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Kimono', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Tuxedo', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Xito', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Covid', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Grumpy', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Midnyght', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Sassy', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Luna', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Ash', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Walnut', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Sphynx', 4);


INSERT INTO cats (catName, categoryID) VALUES ('Oliver', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Bella', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Simba', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Chloe', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Max', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Lucy', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Lily', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Nala', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Sophie', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Milo', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Rocky', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Coco', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Charlie', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Smokey', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Mia', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Jack', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Angel', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Tigger', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Oreo', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Shadow', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Felix', 1);
INSERT INTO cats (catName, categoryID) VALUES ('Willow', 1);


INSERT INTO cats (catName, categoryID) VALUES ('Romeo', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Molly', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Tiger', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Sammy', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Casper', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Biscuit', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Bailey', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Gracie', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Loki', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Sasha', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Simon', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Toby', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Ruby', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Cleo', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Peanut', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Oscar', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Leo', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Lucky', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Buddy', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Daisy', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Jasmine', 2);
INSERT INTO cats (catName, categoryID) VALUES ('Callie', 2);


INSERT INTO cats (catName, categoryID) VALUES ('Pepper', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Leon', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Lola', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Kitty', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Patches', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Princess', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Missy', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Lulu', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Mittens', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Sebastian', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Abby', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Orion', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Yuki', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Scout', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Sadie', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Cupcake', 3);
INSERT INTO cats (catName, categoryID) VALUES ('George', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Butters', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Cuddles', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Boots', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Whiskers', 3);
INSERT INTO cats (catName, categoryID) VALUES ('Mr. Snuffles', 3);


INSERT INTO cats (catName, categoryID) VALUES ('Sheba', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Daenerys', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Tiffany', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Stella', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Ella', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Gypsy', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Alice', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Penny', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Cooper', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Harley', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Sam', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Garfield', 4);
INSERT INTO cats (catName, categoryID) VALUES ('NiuNiu', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Tucker', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Bandit', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Candy', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Ziggy', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Socks', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Rusty', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Batman', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Gatsby', 4);
INSERT INTO cats (catName, categoryID) VALUES ('Raven', 4);

-- reviews --

INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(1, 'This is a great cat', 'user_name', 2, 2, 4 , 1 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(1, 'This is a great cat', 'user_name', 2, 2, 4 , 1 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(1, 'This is a BORING cat', 'user_name', 4, 3, 2 , 5 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(1, 'This is a BORING cat', 'user_name', 4, 3, 2 , 5 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(1, 'This is a not great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(1, 'This is a not great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(1, 'This is not a cat!', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is not a cat!', 'user_name', 1, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'I wanted a great cat, so I got a great cat.', 'user_name', 1, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'I wanted a great cat, so I got a great cat.', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This store is wild!! BEST CATS', 'user_name', 1, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This store is wild!! BEST CATS', 'user_name', 1, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'Never buying another cat', 'user_name', 2, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'Never buying another cat', 'user_name', 2, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is not a funny cat', 'user_name', 5, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is a funny cat', 'user_name', 5, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'I shouldv\'e got a dog instead', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'I shouldv\'e got a dog instead', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is a great cat', 'user_name', 4, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is a great cat', 'user_name', 4, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is a great cat', 'user_name', 5, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(3,'This is a great cat', 'user_name', 5, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );

INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(1, 'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(1, 'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(1, 'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(1, 'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(1, 'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(1, 'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(1, 'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(2,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(3,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(3,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(3,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(3,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(3,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(3,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(4,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(4,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(4,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(4,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(4,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(5,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(5,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(5,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(5,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(5,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(5,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(6,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(6,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(6,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(6,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(6,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(6,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(7,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(7,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(7,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(7,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(8,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(8,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(8,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(8,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );



INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(9,'This is a terrible cat', 'user_name', 3, 4, 2 , 1 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0, 'Would recommend');
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(9,'This is a horrible cat', 'user_name', 3, 3, 2 , 4 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0, 'Would not recommend');
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(9,'This is a nice cat', 'user_name', 3, 3, 3, 4, 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0, 'Would recommend');
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(9,'This is an ugly cat', 'user_name', 3, 2, 4, 3, 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0, 'Would not recommend');
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(9,'This is a fat cat', 'user_name', 3, 5, 4, 3, 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0, 'Would recommend');
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful, recommendation) VALUES
(9,'This is a nice cat', 'user_name', 3, 1, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0, 'Would not recommend');



INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(10,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(10,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(10,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(10,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(10,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(10,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(10,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(11,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(11,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(11,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(11,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(11,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(11,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(11,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(11,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(12,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(12,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(12,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(12,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(12,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(12,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(12,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(13,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(13,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(13,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(13,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(13,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(13,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(13,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(14,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(14,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(14,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(14,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(14,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(14,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(14,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(15,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(15,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(15,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(15,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(15,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(15,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(15,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(15,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(16,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(17,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(18,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(19,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(20,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(21,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(22,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(23,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(24,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(25,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(26,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(27,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(28,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(29,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(30,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(31,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(31,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(31,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(31,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(31,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(31,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(31,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(31,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(31,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(32,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(34,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(34,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(34,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(34,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(34,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(34,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(34,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );
INSERT INTO reviews (cat_id, review_title, review_author, review_rating, review_value, review_taste, review_quality, review_content, review_is_helpful, review_is_not_helpful) VALUES
(34,'This is a great cat', 'user_name', 3, 4, 2 , 2 , 'I had a great time picking out this cat. The staff was PURRIFIC!! However, I would never get another cat.', 0, 0 );