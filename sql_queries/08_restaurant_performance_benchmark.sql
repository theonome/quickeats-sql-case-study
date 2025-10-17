-- Query 08: Restaurant Performance Benchmark
-- Purpose: Find restaurants whose average order value is above the platform average (subquery + HAVING).

SELECT r.restaurant_name,
       ROUND(AVG(CAST(o.total_amount AS NUMERIC)), 2) AS avg_order_value
FROM orders o
JOIN restaurants r USING (restaurant_id)
GROUP BY r.restaurant_name
HAVING AVG(CAST(o.total_amount AS NUMERIC)) >
       (SELECT AVG(CAST(total_amount AS NUMERIC)) FROM orders)
ORDER BY avg_order_value DESC;