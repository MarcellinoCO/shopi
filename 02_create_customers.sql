USE shopi;

CREATE TABLE
    IF NOT EXISTS customers (
        customer_id INT AUTO_INCREMENT PRIMARY KEY,
        customer_name VARCHAR(255) NOT NULL,
        contact VARCHAR(255),
        email VARCHAR(255) UNIQUE
    );