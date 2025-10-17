-- Query 09: Restaurant Satisfaction Ratings
-- Which restaurants have the highest customer satisfaction ratings?
-- Purpose: Rank restaurants by average feedback rating (with total reviews).

SELECT r.restaurant_name,
       ROUND(AVG(f.rating), 2) AS avg_feedback,
       COUNT(f.feedback_id) AS total_reviews
FROM feedback f
JOIN orders o      ON f.order_id = o.order_id
JOIN restaurants r USING (restaurant_id)
GROUP BY r.restaurant_name
ORDER BY avg_feedback DESC
LIMIT 10;