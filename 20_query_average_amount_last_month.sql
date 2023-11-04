USE shopi;
SELECT AVG(total_amount) as average_transaction_amount
FROM orders
WHERE order_date BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
    AND CURDATE();