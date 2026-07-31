/*
Q10. Find products that have never been ordered.
     Uses a LEFT JOIN and filters for no matching order.
*/
SELECT p.product_name
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id
WHERE o.order_id IS NULL;

/*
Expected output (sample): DESK
*/
