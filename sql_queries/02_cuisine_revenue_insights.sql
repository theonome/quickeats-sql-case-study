-- Query 02: Cuisine Revenue Insights
-- Purpose: Rank cuisine types by total QuickEats commission, casting to numeric for accuracy.

SELECT r.cuisine_type,
       SUM(CAST(o.freshbite_income AS NUMERIC)) AS total_commission
FROM orders o
JOIN restaurants r ON o.restaurant_id = r.restaurant_id
GROUP BY r.cuisine_type
ORDER BY total_commission DESC;