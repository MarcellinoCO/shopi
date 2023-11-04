USE shopi;
SELECT c.category_id,
    c.category_name,
    COUNT(*) as number_of_products
FROM products p
    JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_id,
    c.category_name
ORDER BY number_of_products DESC
LIMIT 1;