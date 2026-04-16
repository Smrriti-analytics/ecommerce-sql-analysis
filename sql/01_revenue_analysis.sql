-- Total Revenue (GMV)
SELECT SUM(order_amount) AS total_revenue
FROM orders;

-- Monthly Revenue Trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       SUM(order_amount) AS revenue
FROM orders
GROUP BY month
ORDER BY month;

-- Average Order Value (AOV)
SELECT AVG(order_amount) AS avg_order_value
FROM orders;
