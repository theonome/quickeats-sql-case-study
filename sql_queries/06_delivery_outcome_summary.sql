-- Query 06: Delivery Outcome Summary
-- Purpose: Categorize deliveries and compute average rider rating (handling null rider ratings).

SELECT 
       CASE 
            WHEN o.delivery_status = 'Delivered' THEN 'Successful'
            ELSE 'Not Successful'
       END AS delivery_outcome,
       COUNT(o.order_id) AS total_orders,
       ROUND(AVG(COALESCE(r.rating, 0)), 2) AS avg_rider_rating
FROM orders o
JOIN riders r USING (rider_id)
GROUP BY delivery_outcome
ORDER BY total_orders DESC;
