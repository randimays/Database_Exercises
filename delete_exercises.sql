-- Write DELETE statements for albums released after 1991, albums with the genre "Progressive Rock", and albums by Nirvana.

USE codeup_test_db;

DELETE FROM albums WHERE release_date > 1990;
DELETE FROM albums WHERE genre = 'Progressive Rock';
DELETE FROM albums WHERE artist = 'Nirvana';