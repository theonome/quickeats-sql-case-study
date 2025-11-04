-- Query 04: Top-Spending Customers
-- Purpose: Identify top 5 customers by total spending (casting text amounts to numeric).

SELECT c.full_name,
       SUM(CAST(o.total_amount AS NUMERIC)) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.payment_status = 'Paid'
GROUP BY c.full_name
ORDER BY total_spent DESC
LIMIT 5;
