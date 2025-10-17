-- Query 07: Cuisine Efficiency Overview
-- Purpose: Compare cuisines on total orders and estimated avg prep time (filling missing prep times).

SELECT 
       r.cuisine_type,
       COUNT(o.order_id) AS total_orders,
       ROUND(AVG(COALESCE(r.avg_prep_time, 30)), 2) AS avg_prep_time_filled
FROM orders o
JOIN restaurants r USING (restaurant_id)
GROUP BY r.cuisine_type
ORDER BY total_orders DESC;