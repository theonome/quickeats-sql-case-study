-- Query 03: Payment System Health
-- Purpose: Summarize orders by payment outcome using CASE WHEN.

SELECT payment_status,
       COUNT(order_id) AS total_orders,
       CASE 
            WHEN payment_status = 'Paid' THEN 'Successful Payment'
            WHEN payment_status = 'Pending' THEN 'Unpaid Order'
            ELSE 'Refunded Payment'
       END AS payment_category
FROM orders
GROUP BY payment_status, payment_category
ORDER BY total_orders DESC;