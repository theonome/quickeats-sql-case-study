-- Query 05: Rider Performance Review
-- Purpose: Identify riders with the best customer experience (≥15 feedbacks).

SELECT r.rider_name,
       ROUND(AVG(COALESCE(f.rating, 0)), 2) AS avg_rating,
       COUNT(f.feedback_id) AS feedback_count
FROM feedback f
JOIN orders o ON f.order_id = o.order_id
JOIN riders r ON o.rider_id = r.rider_id
GROUP BY r.rider_name
HAVING COUNT(f.feedback_id) >= 15
ORDER BY avg_rating DESC;
