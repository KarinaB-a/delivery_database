DELIMITER $$

DROP TRIGGER IF EXISTS after_order_insert;
CREATE TRIGGER after_order_insert
AFTER INSERT
ON orders FOR EACH ROW
BEGIN
    INSERT INTO order_status_history(status, date_change, order_id)
    VALUES('created', CURRENT_TIMESTAMP(), new.order_id);
END$$

DROP TRIGGER IF EXISTS after_delivery_list_insert;
CREATE TRIGGER after_delivery_list_insert
AFTER INSERT
ON delivery_list FOR EACH ROW
BEGIN
    INSERT INTO order_status_history(status, date_change, order_id, delivery_id)
    VALUES('in progress', CURRENT_TIMESTAMP(), new.order_id, new.delivery_id);
END$$

DROP TRIGGER IF EXISTS after_delivery_list_update;
CREATE TRIGGER after_delivery_list_update
AFTER UPDATE
ON delivery_list FOR EACH ROW
BEGIN
    IF new.taken = 'YES' THEN
        INSERT INTO order_status_history(status, date_change, order_id, delivery_id)
        VALUES('ready', CURRENT_TIMESTAMP(), new.order_id, new.delivery_id);
    END IF;
    IF new.taken = 'NO' THEN
        INSERT INTO order_status_history(status, date_change, order_id, delivery_id)
        VALUES('failed', CURRENT_TIMESTAMP(), new.order_id, new.delivery_id);
    END IF;
END$$


DELIMITER ;