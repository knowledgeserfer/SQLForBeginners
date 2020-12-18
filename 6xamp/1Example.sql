INSERT products VALUES ('Legion Y540-15IRH', 'Lenovo', 10, 44000)

use productsDtb

SELECT * FROM products
WHERE manufacturer = 'Lenovo'

SELECT * FROM products
WHERE price > 80000

SELECT * FROM products
WHERE manufacturer = 'Lenovo' AND Price > 80000

SELECT * FROM products
WHERE manufacturer = 'Lenovo' OR price > 80000

SELECT * FROM products
WHERE NOT manufacturer = 'Lenovo'

SELECT * FROM products
WHERE manufacturer <> 'Lenovo'

SELECT * FROM products
WHERE manufacturer = 'Lenovo' OR price > 80000 AND productCount > 5

SELECT * FROM products
WHERE (manufacturer = 'Lenovo' OR price > 80000) AND productCount > 5

INSERT products
VALUES('Thinkpad E430', 'Empty', NULL, 4500)

SELECT * FROM products
WHERE productCount IS NULL