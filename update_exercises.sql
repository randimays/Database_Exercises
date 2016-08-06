-- Write SELECT statements to find information in your albums table. Use captions to describe what you're finding. Add an UPDATE statement to 1) make all albums 10 times more popular 2) move all albums before 1980 back to 1901 3) change "Michael Jackson" to "Peter Jackson". Add SELECT statements after each UPDATE so you can see if it works.

USE codeup_test_db;
SELECT 'i. All albums' AS caption, artist, name, sales FROM albums;
UPDATE albums SET sales = (sales * 10);
SELECT 'i. All albums' AS caption, artist, name, sales FROM albums;

SELECT 'ii. All albums released before 1980' AS caption, id, artist, name, release_date FROM albums WHERE release_date < '1980';
UPDATE albums SET release_date = '1901' WHERE release_date < '1980';
SELECT 'ii. Albums released in 1901' AS caption, artist, name, sales FROM albums WHERE release_date = '1901';

SELECT 'iii. All albums by Michael Jackson' AS caption, artist, name FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT 'iii. Albums by Peter Jackson' AS caption, artist, name FROM albums WHERE artist = 'Peter Jackson';

