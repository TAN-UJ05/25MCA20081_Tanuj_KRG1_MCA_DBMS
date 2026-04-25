CREATE OR REPLACE FUNCTION check_stock()
RETURNS TRIGGER AS
$$
DECLARE stock_avl INT;
BEGIN
	SELECT stock_qty INTO stock_avl 
	FROM Products
	WHERE prod_id=NEW.prod_id;
	IF NEW.qty>stock_avl THEN
	RAISE EXCEPTION 'Order quantity exceeds available stock';
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE PLPGSQL;

CREATE OR REPLACE TRIGGER before_insert_check
BEFORE INSERT ON Orders
FOR EACH ROW
EXECUTE FUNCTION check_stock();


INSERT INTO Orders VALUES (9003, 501, 101, '2026-04-25', 8);
INSERT INTO Orders VALUES (9004, 501, 101, '2026-04-25', 18);

SELECT * FROM Orders;
