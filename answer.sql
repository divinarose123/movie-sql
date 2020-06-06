-- question 1 --
SELECT *
FROM movies.movies;
-- question 2 --
SELECT title,
  id
FROM movies.movies
LIMIT 10;
-- question 3 --
SELECT *
FROM movies.movies
WHERE id = 485;
-- question 4 --
SELECT * FROM movies.movies
WHERE title = 'Made in America(1993)';
--question 5 --
SELECT * FROM movies.movies 
ORDER BY title ASC 
LIMIT 10;
-- question 6 --
SELECT * FROM movies.movies
WHERE title LIKE = '%2002%';
-- question 7 --
SELECT * FROM movies.movies
WHERE title LIKE = '%Godfather, the%';
-- question 8 --
SELECT * FROM movies.movies 
WHERE genres LIKE '%Comedy%' ;
--question 9--
SELECT * FROM movies.movies 
WHERE genres LIKE '%Comedy%'
AND title LIKE '%2000%' ;
-- question 10 --
SELECT * FROM movies.movies
WHERE genres LIKE '%comedy%'
AND title LIKE '%death%';
-- question 11 --
SELECT * FROM movies.movies
WHERE 
(title LIKE '%2002%'
OR title LIKE '%2001%'
)
AND title LIKE '%super%';

-- question 12 -- 
CREATE TABLE `movies`.`actors` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `character_name` VARCHAR(45) NOT NULL,
  `movie_id` INT NOT NULL,
  `birthday` DATETIME NOT NULL,
  PRIMARY KEY (`id`));
  --question 13 --


  -- question 14 --
-- g: 1, pg: 2, pg-13: 3, r: 4, nc-17: 5
ALTER TABLE `movies`.`movies`
ADD COLUMN `mpaa` INT NULL
AFTER `genres`,
  CHANGE COLUMN `id` `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE;
;

--- question 15 ---
SELECT mov.title, rat.rating 
From movies.movies mov
INNER JOIN movies.ratings rat
ON mov.id = rat.movie_id
WHERE title LIKE '%godfather%'
ORDER BY title ASC; 

--question 16 ---
SELECT mov.title, lin.imdb_Id
movies FROM movies.movies mov
INNER JOIN movies.links lin
ON mov.id = lin.movie 
WHERE (genres LIKE '%comedy%' 
AND title LIKE '%2005%');

