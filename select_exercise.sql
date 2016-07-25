USE codeup_test_db;
SELECT 'Pink Floyd Albums' AS caption, name FROM albums WHERE artist = "Pink Floyd";
SELECT 'Release year of SPLHCB album' AS caption, release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT 'Nevermind genre' AS caption, genre FROM albums WHERE name = 'Nevermind';
SELECT 'Albums released in the 90s' AS caption, name FROM albums WHERE release_date BETWEEN '1990' AND '1999';
SELECT 'Albums with <20M certified sales' AS caption, name FROM albums WHERE sales < '20';
SELECT 'Albums with the ''Rock'' genre' AS caption, name FROM albums WHERE genre = 'Rock';