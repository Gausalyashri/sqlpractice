/*
Q11. Find the total quantity ordered for each product.
*/
SELECT p.product_name, SUM(o.quantity) AS total_qty
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY total_qty DESC;
