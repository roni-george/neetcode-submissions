-- Write your query below
SELECT name, COALESCE(SUM(distance),0) as travelled_distance FROM rides r

RIGHT JOIN users u ON user_id = u.id
GROUP BY user_id,  name
ORDER BY travelled_distance DESC,name ASC;
