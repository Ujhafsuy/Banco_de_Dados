-- 1

SELECT	ORDERS.ORDER_ID,
		ORDERS.ORDER_DATE,
        CONCAT(CUSTOMERS.FIRST_NAME, ' ', CUSTOMERS.LAST_NAME) AS NOMECOMPLETO,
        CUSTOMERS.EMAIL
FROM ORDERS
INNER JOIN CUSTOMERS ON
		CUSTOMERS.CUSTOMER_ID = ORDERS.CUSTOMER_ID;
        
-- 2

SELECT	PRODUCTS.PRODUCT_NAME,
		ORDER_ITEMS.QUANTITY
FROM	ORDER_ITEMS
INNER JOIN PRODUCTS ON
		PRODUCTS.PRODUCT_ID = ORDER_ITEMS.PRODUCT_ID
INNER JOIN ORDERS ON
		ORDERS.ORDER_ID = ORDER_ITEMS.ORDER_ID AND
        ORDERS.CUSTOMER_ID = 1
;

-- 3

SELECT	CONCAT(CUSTOMERS.FIRST_NAME, ' ', CUSTOMERS.LAST_NAME) AS NOMECOMPLETO,
		SUM(PRODUCTS.PRICE) * ORDER_ITEMS.QUANTITY
FROM	CUSTOMERS
INNER JOIN ORDERS ON
		ORDERS.CUSTOMER_ID = CUSTOMERS.CUSTOMER_ID
INNER JOIN ORDER_ITEMS ON
		ORDER_ITEMS.ORDER_ID = ORDERS.ORDER_ID
INNER JOIN PRODUCTS ON
		PRODUCTS.PRODUCT_ID = ORDER_ITEMS.PRODUCT_ID
GROUP BY	NOMECOMPLETO,
            ORDER_ITEMS.QUANTITY
;


-- 4 

SELECT CUSTOMERS.FIRST_NAME
FROM CUSTOMERS
LEFT JOIN ORDERS ON
		ORDERS.CUSTOMER_ID = CUSTOMERS.CUSTOMER_ID
WHERE ORDERS.CUSTOMER_ID IS NULL
;

-- 5

SELECT	PRODUCTS.PRODUCT_NAME,
		SUM(ORDER_ITEMS.QUANTITY)
FROM	ORDER_ITEMS
INNER JOIN PRODUCTS ON
		PRODUCTS.PRODUCT_ID = ORDER_ITEMS.PRODUCT_ID
GROUP BY	PRODUCTS.PRODUCT_NAME
;
