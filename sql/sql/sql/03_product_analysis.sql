-- Top Selling Products
SELECT oi.product_id,
       SUM(oi.quantity) AS total_sold
FROM order_items oi
GROUP BY oi.product_id
ORDER BY total_sold DESC
LIMIT 10;

-- Revenue by Category
SELECT p.category,
       SUM(o.order_amount) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;
