-- Query 01: City Order Trends
-- Purpose: Identify which cities generate the highest number of orders for QuickEats.

SELECT c.city,
       COUNT(o.order_id) AS total_orders
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.city
ORDER BY total_orders DESC;