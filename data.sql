INSERT INTO products(menu_name, price) VALUES
('GOJIRA ROLL', 12.6),
('VIVA LAS VEGAS ROLL', 15.7),
('FUTOMAKI', 14.4),
('TOOTSY MAKI', 14.1),
('ZONIE ROLL', 15.5),
('NUTTY GRILLED SALAD', 10.5),
('SASHIMI SALAD', 12.0),
('SUNNY TEA', 3.75),
('COFFEE', 4.1),
('MINERAL WATER', 2.0);

INSERT INTO courier_info(first_name, last_name, phone_number, delivery_type) VALUES
('John', 'Rython', '+ 1 408 655 0954', 'foot'),
('Kate', 'Looran', '+ 1 408 743 0146', 'car'),
('Bob', 'Kolaris', '+ 1 408 107 7798', 'car'),
('Michael', 'Frontal', '+ 1 408 566 5516', 'car');

INSERT INTO customers(first_name, last_name, phone_number, district, street, house, apartment) VALUES
('Penny', 'Smith', '+ 1 416 572 3771', 'South', 'First Avenue', 1, 10),
('Randy', 'Brown', '+ 1 416 568 8452', 'West', 'Spring St', 2, 35),
('Oliver', 'Thompson', '+ 1 416 782 5648', 'East', 'Five Avenue', 77, 14),
('James', 'Twist', '+ 1 416 752 1224', 'South', 'Corn St', 24, 89),
('Hellen', 'Bellora', '+ 1 416 555 4568', 'South', 'First Avenue', 11, 85),
('Kate', 'Evans', '+ 1 416 321 3211', 'West', 'Spring St', 123, 52),
('Jennifer', 'Radriges', '+ 1 416 321 1232', 'West', 'Roll St', 76, 44),
('Mario', 'Gordon', '+ 1 416 122 4554', 'East', 'Five Avenue', 21, 91),
('Bella', 'Lorenson', '+ 1 416 758 1667', 'North', 'Green Avenue', 23, 67),
('Erica', 'Visputchu', '+ 1 416 765 8582', 'South', 'First Avenue', 62, 44),
('Henry', 'Smith', '+ 1 416 657 5528', 'South', 'Brown St', 15, 56),
('Oscar', 'Rild', '+ 1 416 624 3643', 'South', 'First Avenue', 5, 13),
('William', 'Frankston', '+ 1 416 303 8181', 'North', 'Cascade Rd', 18, 88),
('Peter', 'Hall', '+ 1 416 466 7562', 'North', 'Cascade Rd', 17, 7),
('Ada', 'Watson', '+ 1 416 114 7812', 'South', 'Elma St', 18, 9);

INSERT INTO orders(customer_id, date_get) VALUES
(1, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(2, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(3, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(4, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(5, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(6, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(7, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(8, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(9, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(10, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(11, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(12, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(13, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(14, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(15, NOW());

INSERT INTO delivery_list VALUES
(1, 1, 3, '2021-02-26 17:59:15', 'Yes', 'Cash'),
(2, 2, 4, '2021-02-26 18:01:05', 'Yes', 'Card'),
(3, 3, 1, '2021-02-26 18:04:36', 'Yes', 'Cash'),
(4, 4, 2, '2021-02-26 18:03:11', 'Yes', 'Cash'),
(5, 5, 1, '2021-02-26 18:19:56', 'Yes', 'Cash'),
(6, 6, 3, '2021-02-26 18:18:44', 'Yes', 'Card'),
(7, 7, 2, '2021-02-26 18:50:11', 'No', 'NULL'),  # the order's arrived too late
(8, 8, 4, '2021-02-26 18:35:07', 'Yes', 'Card'),
(9, 9, 4, '2021-02-26 18:58:28', 'NO', 'NULL'),   # the order's arrived too late
(10, 10, 3, '2021-02-26 18:36:51', 'Yes', 'Card'),
(11, 11, 2, '2021-02-26 19:10:34', 'Yes', 'Cash'),
(12, 12, 1, NULL, 'NO', 'NULL'),  # the products are out of stock
(13, 13, 2, '2021-02-26 19:17:04', 'Yes', 'Cash'),
(14, 14, 3, '2021-02-26 18:56:17', 'Yes', 'Card'),
(15, 15, 4, '2021-02-26 19:05:29', 'Yes', 'Card');

INSERT INTO orders_products VALUES
(1, 1, 2), (1, 4, 1), (1, 10, 1),
(2, 4, 1), (2, 5, 1),
(3, 3, 1),
(4, 7, 2), 
(5, 2, 1), (5, 3, 1),
(6, 8, 3),
(7, 1, 1), (7, 6, 4),
(8, 1, 2),
(9, 2, 1), (9, 3, 1),
(10, 1, 2), (10, 2, 1),
(12, 5, 2), (12, 10, 1),
(13, 4, 2),
(14, 5, 1),
(15, 8, 1), (15, 7, 2);

