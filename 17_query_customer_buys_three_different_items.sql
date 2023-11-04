USE shopi;

START TRANSACTION;

-- Insert a new order for the customer with ID 1
INSERT INTO orders (
        customer_id,
        order_date,
        total_amount
    )
VALUES (1, CURDATE(), 0);

-- Get the newly added order ID
SET @order_id = LAST_INSERT_ID();

-- Insert order details for three different products
INSERT INTO order_details (order_id, product_id, quantity)
VALUES (@order_id, 1, 1),
    (@order_id, 2, 1),
    (@order_id, 3, 1);

-- Update the total amount in the orders table
UPDATE orders
SET total_amount = (
        SELECT SUM(p.price * od.quantity)
        FROM order_details od
            JOIN products p ON od.product_id = p.product_id
        WHERE od.order_id = @order_id
    )
WHERE order_id = @order_id;

COMMIT;