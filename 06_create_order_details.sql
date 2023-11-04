USE online_store;

CREATE TABLE
    IF NOT EXISTS order_details (
        order_id INT,
        product_id INT,
        quantity INT NOT NULL,
        PRIMARY KEY (order_id, product_id),
        FOREIGN KEY (order_id) REFERENCES orders (order_id),
        FOREIGN KEY (product_id) REFERENCES products (product_id)
    );