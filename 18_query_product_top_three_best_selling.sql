USE shopi;
SELECT p.product_id,
    p.product_name,
    COUNT(*) as times_purchased
FROM order_details od
    JOIN products p ON od.product_id = p.product_id
GROUP BY p.product_id,
    p.product_name
ORDER BY times_purchased DESC
LIMIT 3;