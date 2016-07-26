USE codeup_test_db;

DELETE FROM albums WHERE release_date > 1990;
DELETE FROM albums WHERE genre = 'Progressive Rock';
DELETE FROM albums WHERE artist = 'Nirvana';