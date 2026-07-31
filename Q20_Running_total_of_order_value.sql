/*
Q20. Calculate a running total of order value (quantity *
     price) ordered by date, using SUM() OVER as a window
     function.
*/
SELECT o.order_id, o.order_date,
       (o.quantity * p.price) AS order_value,
       SUM(o.quantity * p.price) OVER (ORDER BY o.order_date) AS running_total
FROM orders o
JOIN products p ON o.product_id = p.product_id
ORDER BY o.order_date;
