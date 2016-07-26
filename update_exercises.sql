USE codeup_test_db;
-- SELECT 'i. All albums' AS caption, artist, name, sales FROM albums;
-- UPDATE albums SET sales = (sales * 10);
SELECT 'i. All albums' AS caption, artist, name, sales FROM albums;

-- SELECT 'ii. All albums released before 1980' AS caption, id, artist, name, release_date FROM albums WHERE release_date < '1980';
-- UPDATE albums SET release_date = '1901' WHERE release_date < '1980';
SELECT 'ii. Albums released in 1901' AS caption, artist, name, sales FROM albums WHERE release_date = '1901';

-- SELECT 'iii. All albums by Michael Jackson' AS caption, artist, name FROM albums WHERE artist = 'Michael Jackson';
-- UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT 'iii. Albums by Peter Jackson' AS caption, artist, name FROM albums WHERE artist = 'Peter Jackson';

