-- Task #1

UPDATE users SET created_at = NOW(), updated_at = NOW();

-- Task #2

-- ???

-- Task #3

SELECT * FROM storehouses_products ORDER BY value = 0, value;

-- Task #4

SELECT name FROM users WHERE MONTHNAME(birthday_at) = 'may' or MONTHNAME(birthday_at) = 'august';

-- Task #5

SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY id = 2, id = 1, id = 5;

--
-- Task #1

SELECT AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) AS average_age FROM users;

-- Task #2

SELECT DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))), '%W') AS week_day,
COUNT(*) AS count_birthday FROM users GROUP BY week_day;

-- Task #3

-- ???
