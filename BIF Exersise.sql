-- 1
SELECT `first_name`, `last_name` FROM `employees`
WHERE `first_name` LIKE "Sa%"
ORDER BY `employee_id`;
-- 2
SELECT `first_name`, `last_name` FROM `employees`
WHERE `last_name` LIKE "%ei%"
ORDER BY `employee_id`;
-- 3
SELECT `first_name` FROM `employees`
WHERE `department_id` IN (3,10)
AND YEAR(`hire_date`) BETWEEN 1995 AND 2005
ORDER BY `employee_id`;
-- 4
SELECT `first_name`,`last_name` FROM `employees`
WHERE `job_title` NOT LIKE '%engineer%'
ORDER BY `employee_id`;
-- 5
SELECT `name` FROM `towns`
WHERE CHAR_LENGTH(`name`) IN (5,6)
ORDER BY `name`;
-- 6
SELECT `town_id`,`name` FROM `towns`
WHERE LEFT(`name`,1) IN ('M', 'K', 'B', 'E')
ORDER BY `name`;
-- 7
SELECT `town_id`,`name` FROM `towns`
WHERE LEFT(`name`,1) NOT IN ('R', 'D', 'B')
ORDER BY `name`;
-- 8
CREATE VIEW `v_employees_hired_after_2000` AS 
SELECT `first_name`, `last_name`
FROM `employees`
WHERE YEAR(`hire_date`) > 2000;
-- 9 
SELECT `first_name`, `last_name` FROM `employees`
WHERE CHAR_LENGTH(`last_name`)=5;
-- 10
SELECT `country_name`, `iso_code` FROM `countries`
WHERE `country_name` LIKE('%A%A%A%')
ORDER BY `iso_code`;
-- 11
SELECT `peak_name`, `river_name`,
LOWER(concat(`peak_name`,SUBSTRING(`river_name`,2))) AS 'mix' 
FROM `peaks`,`rivers`
WHERE RIGHT(`peak_name`,1)=LEFT(`river_name`,1)
ORDER BY `mix`;
-- 12
SELECT `name`, DATE_FORMAT(`start`,'%Y-%m-%d') AS 'start' FROM `games`
WHERE YEAR(`start`) IN (2011,2012)
ORDER BY `start`,`name` LIMIT 50;
-- 13
SELECT `user_name`, SUBSTRING(`email`,LOCATE('@', `email`)+1) AS 'Email Provider' FROM `users`
ORDER BY `Email Provider`, `user_name`;
-- 14
SELECT `user_name`, `ip_address` FROM `users`
WHERE `ip_address` LIKE '___.1%.%.___'
ORDER BY `user_name`;
-- 15
SELECT `name`,
(CASE 
    WHEN HOUR(`start`) BETWEEN 0 AND 11 THEN "Morning"
    WHEN HOUR(`start`) BETWEEN 12 AND 17 THEN "Afternoon"
    ELSE "Evening"
END) 
AS 'Part of the Day', 
(CASE
WHEN `duration`<4 THEN "Extra Short"
WHEN `duration`<7 THEN "Short"
WHEN `duration`<11 THEN "Long"
ELSE "Extra Long"
END)
AS 'Duration'
FROM `games`;
-- 16
SELECT `product_name`,`order_date`, 
DATE_ADD(`order_date`, INTERVAL 3 DAY) AS 'pay_due',
DATE_ADD(`order_date`, INTERVAL 1 MONTH) AS 'deliver_due'
 FROM `orders`;





