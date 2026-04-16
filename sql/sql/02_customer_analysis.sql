-- Top 10 Customers by Spending
SELECT user_id,
       SUM(order_amount) AS total_spent
FROM orders
GROUP BY user_id
ORDER BY total_spent DESC
LIMIT 10;

-- Repeat vs New Customers
SELECT user_id,
       COUNT(order_id) AS total_orders,
       CASE 
           WHEN COUNT(order_id) = 1 THEN 'New'
           ELSE 'Repeat'
       END AS customer_type
FROM orders
GROUP BY user_id;

-- Users who never placed an order
SELECT u.user_id
FROM users u
LEFT JOIN orders o
ON u.user_id = o.user_id
WHERE o.user_id IS NULL;
