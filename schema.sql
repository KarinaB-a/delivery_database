
DROP TABLE IF EXISTS courier_info;
CREATE TABLE courier_info
(courier_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(35) NOT NULL,
phone_number VARCHAR(20) NOT NULL,
delivery_type VARCHAR(5) NOT NULL);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers
(customer_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(35) NOT NULL,
phone_number VARCHAR(20) NOT NULL,
district VARCHAR(15) NOT NULL,
street VARCHAR(25) NOT NULL,
house INT NOT NULL,
apartment INT NOT NULL);

DROP TABLE IF EXISTS products;
CREATE TABLE products
(product_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
menu_name VARCHAR(80) NOT NULL,
price FLOAT NOT NULL);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders
(order_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
customer_id INT NOT NULL,
date_get TIMESTAMP NOT NULL,  # the time when orders are gotten from customers
FOREIGN KEY (customer_id) REFERENCES customers (customer_id));

DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products
(order_id INT NOT NULL,
product_id INT NOT NULL,
quantity INT NOT NULL,
PRIMARY KEY (order_id, product_id),
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id));

DROP TABLE IF EXISTS delivery_list;
CREATE TABLE delivery_list
(delivery_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
order_id INT UNIQUE NOT NULL,
courier_id INT NOT NULL,
date_arrived TIMESTAMP UNIQUE,  -- когда курьер принес заказ клиенту
taken VARCHAR(3) NOT NULL,  -- принял ли клиент заказ
payment_method VARCHAR(4),
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (courier_id) REFERENCES courier_info(courier_id));

DROP TABLE IF EXISTS order_status_history;
CREATE TABLE order_status_history
(order_status_history_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
status VARCHAR(30) NOT NULL,
date_change TIMESTAMP UNIQUE,
order_id INT NOT NULL, --исправлено на неуникальный
delivery_id INT,--исправлено на неуникальный
FOREIGN KEY (order_id) REFERENCES orders (order_id));


