#INSERT INTO orders(customer_id, date_get) VALUES (1, NOW());
#INSERT INTO delivery_list VALUES (20, 16, 3, '2023-08-30 17:59:15', '', 'Cash');
update delivery_list set taken='YES' where delivery_id=20;