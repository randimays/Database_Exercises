-- Use INSERT to add records for all albums that claim over 30 million sales from a Wikipedia list. First write your queries as separate INSERT statements, and then refactor to use a single INSERT statement for all records.

USE codeup_test_db;
TRUNCATE albums;
INSERT INTO albums (artist, name, release_date, sales, genre) VALUES
	('Nirvana', 'Nevermind', '1991', '16.7', 'Grunge,  Alternative Rock'),
	('AC/DC', 'Back In Black', '1980', '25.9', 'Hard Rock'),
	('Pink Floyd', 'The Dark Side of the Moon', '1973', '22.7', 'Progressive Rock'),
	('Michael Jackson', 'Bad', '1987', '20.3', 'Pop, Funk, Rock'),
	('The Beatles', 'Sgt. Pepper''s Lonely Hearts Club Band', '1967', '13.1', 'Rock');