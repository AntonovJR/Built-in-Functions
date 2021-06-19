-- 1
SELECT `title` FROM `books`
WHERE SUBSTRING(`title`, 1, 3) = "The";
-- 2
SELECT REPLACE(`title`, 'The', '***')
FROM `books`
WHERE SUBSTRING(`title`, 1, 3) = "The";
-- 3 
SELECT ROUND(SUM(`cost`),2) FROM `books`;
-- 4
SELECT concat(`first_name`,' ', `last_name`) AS 'Full Name', DATEDIFF(`died`,`born`) AS 'Days Lived' FROM `authors`;
-- 5 
SELECT `title` FROM `books`
WHERE `author_id` = 4 AND SUBSTRING(`title`, 1, 5) = "Harry";
-- 1*
SELECT `title` FROM `books`
WHERE `title` LIKE "The%";
-- 2*
SELECT REPLACE(`title`, 'The', '***')
FROM `books`
WHERE `title` Like "The%";
-- 5*
SELECT `title` FROM `books`
WHERE `title` LIKE "Harry%";
