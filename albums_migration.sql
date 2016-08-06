-- Create a table "albums" for your test database that will store top albums from a Wikipedia article.

USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	artist VARCHAR(50) NOT NULL,
	name VARCHAR(50) NOT NULL,
	release_date YEAR NOT NULL,
	sales FLOAT NOT NULL,
	genre VARCHAR(500) NOT NULL,
	PRIMARY KEY (id)
);