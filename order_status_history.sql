CREATE TABLE order_status_history
(order_status_history_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
status VARCHAR(30) NOT NULL,
date_change TIMESTAMP UNIQUE,
order_id INT UNIQUE NOT NULL,
delivery_id INT UNIQUE,
FOREIGN KEY (order_id) REFERENCES orders (order_id))



