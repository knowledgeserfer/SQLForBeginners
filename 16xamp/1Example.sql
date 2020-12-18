/*
CREATE TRIGGER trigger_name
ON {table_name | view_name}
{AFTER | INSTEAD OF} [INSERT | UPDATE | DELETE]
AS sql_expressions
*/

USE productsDtb

CREATE TRIGGER products_INSERT_UPDATE
ON products
AFTER INSERT, UPDATE
AS
UPDATE products
SET price = price + 1000
WHERE id = (SELECT id FROM inserted)

INSERT INTO products(productName, productQuantity, manufacturer, price)
VALUES ('Leopard green', 3, 'MSI', 48000)

SELECT * FROM products

DISABLE TRIGGER products_INSERT_UPDATE ON products

ENABLE TRIGGER products_INSERT_UPDATE ON products

DROP TRIGGER products_INSERT_UPDATE