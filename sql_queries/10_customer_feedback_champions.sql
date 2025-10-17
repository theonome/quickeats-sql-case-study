-- Query 10: Customer Feedback Champions
-- Which 10 customers have given FreshBite above-average feedback ratings?
-- Purpose: Identify customers whose average ratings are above the overall platform average (subquery + joins).

SELECT c.full_name,
       ROUND(AVG(f.rating), 2) AS avg_feedback
FROM feedback f
JOIN orders o    ON f.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.full_name
HAVING AVG(f.rating) > (SELECT AVG(rating) FROM feedback)
ORDER BY avg_feedback DESC
LIMIT 10;