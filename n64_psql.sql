-- Drop DB if exists
DROP DATABASE IF EXISTS n64;

-- Create DB n64
CREATE DATABASE n64;

-- Connect to n64
\c n64;

-- Create a table called 'Games'

CREATE TABLE Games (
  id SERIAL PRIMARY KEY,
  title VARCHAR (50) NOT NULL,
  year INTEGER NOT NULL,
  developers VARCHAR (50),
  genre VARCHAR (50)
);

-- Insert starter games into the database
INSERT INTO Games(title, year, developers, genre) VALUES('Super Smash Bros.', 1999, 'Hal Laboratory', 'Fighting');
INSERT INTO Games(title, year, developers, genre) VALUES('Super Mario 64', 1995, 'Nintendo EAD', 'Platforming');
INSERT INTO Games(title, year, developers, genre) VALUES('Golden Eye 007', 1997, 'Rare', 'First-Person Shooter');
INSERT INTO Games(title, year, developers, genre) VALUES('Mario Kart 64', 1995, 'Nintendo EAD', 'Racing');
INSERT INTO Games(title, year, developers, genre) VALUES('Star Fox 64', 1997, 'Nintendo EAD', 'Rail/Scrolling Shooter');
INSERT INTO Games(title, year, developers, genre) VALUES('Perfect Dark', 2000, 'Rare', 'First-Person Shooter');
INSERT INTO Games(title, year, developers, genre) VALUES('Star Wars: Shadow of the Empire', 1996, 'Lucas Arts', 'Action');
INSERT INTO Games(title, year, developers, genre) VALUES('Banjo-Kazooie', 1998, 'Rare', 'Platforming');
INSERT INTO Games(title, year, developers, genre) VALUES('Mario Party', 1998, 'Hudson Soft', 'Party Game');
INSERT INTO Games(title, year, developers, genre) VALUES('Tony Hawks Pro Skater' , 1996, 'Neversoft', 'Extreme Sports');


-------------------------------------
-- PART 1 - CREATE
-------------------------------------

-- Add the the game 'F-Zero X', released in 1998, made by 'Nintendo EAD', and with the genre 'Racing'.


INSERT INTO games VALUES (DEFAULT, 'F-Zero X', 1998, 'Nintendo EAD', 'Racing');


-- Add the the game 'The Legend of Zelda: The Ocarina of Time', released in 1998, made by 'Hudson Soft', and with the genre 'Action-Adventure'.


INSERT INTO games VALUES (DEFAULT, 'The Legend of Zelda: The Ocarina of Time', 1998, 'Hudson Soft', 'Action-Adventure');



-------------------------------------
-- PART 2 - READ
-------------------------------------

-- Select the title of all games

SELECT * FROM games;



-- Show the title of each game made by 'Rare'.

SELECT * FROM games
WHERE developers = 'Rare';



-- Select all games that were made before 1998.

SELECT * FROM games
WHERE year < 1998
ORDER BY year;



-- Find the average release year of all games made by 'Nintendo EAD'

-- SELECT * FROM games
-- WHERE developers = 'Nintendo EAD'
-- AVG year
-- ORDER BY year;


SELECT AVG(year)
  FROM games
  WHERE developers = 'Nintendo EAD';

 1996.2500000000000000

-- Show the developer names of each game, in alphabetical order.

SELECT * FROM games
ORDER BY developers;


-- Show all the game titles in descending order of their release year.

SELECT * FROM games
ORDER BY year DESC;



-------------------------------------
-- PART 3 - UPDATE
-------------------------------------

-- Oops! 'The Legend of Zelda: The Ocarina of Time' was actually made by 'Nintendo EAD'.
-- Update the database to have the correct information.

UPDATE games
SET developers = 'Nintendo EAD'
WHERE developers = 'Hudson Soft';


-- n64 was released in 1995 but some of the games say they were released in 1995!
-- Update the 1995 games to have the year of 1996

UPDATE games
SET year = 1996
WHERE year = 1995;

-- BONUS: Return the names of all the games you updated HINT: look up `RETURNING`





-------------------------------------
-- PART 4 - DELETE
-------------------------------------

-- Remove all games made by 'Lucas Arts'

DELETE FROM games
WHERE developers = 'Lucas Arts';


-- DELETE FROM games
-- WHERE developers LIKE 'Lucas Arts%';


-- Remove all games made in 1999 or after

DELETE FROM games
WHERE year >= 1999;



-------------------------------------
-- BONUS - MORE READING
-------------------------------------

-- Show the average release year for games that were made by Rare
-- or have the title `Tony Hawks Pro Skater`



-- Show the id and title and genre of all games that were either:
-- Made before 1997,
-- Made by Hal Laboratory,
-- or, have the genre Platforming AND are made by Rare.



-- Show the title and genre for all games that have 'Mario' in their name.
-- HINT: look up `LIKE`



-- Show the genre and the average year of each of the genres
-- HINT: look up `GROUP BY`
