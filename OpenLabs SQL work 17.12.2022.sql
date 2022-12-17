SELECT 
    *
FROM
    customers
WHERE
    city NOT IN ('Masonfurt ' , 'Aliburgh');


SELECT 
    *
FROM
    customers
WHERE
    zip_code IN ('7681' , '2');

SELECT 
    *
FROM
    customers
WHERE
    zip_code NOT IN ('7681' , '2');

SELECT 
    *
FROM
    customers
WHERE
    age BETWEEN 30 AND 45;

SELECT 
    *
FROM
    customers
WHERE
    age NOT BETWEEN 29 AND 56;

SELECT 
    *,
    total_price,
    (total_price / 1031800) * 100 AS total_price_percentage
FROM
    sales;

SELECT 
    SUM(total_price)
FROM
    sales;

SELECT 
    orders.payment,
    customers.customer_name,
    customers.customer_id
FROM
    customers
        RIGHT JOIN
    orders ON orders.customer_id = customers.customer_id; 

SELECT 
    *
FROM
    sales
        LEFT JOIN
    products ON sales.product_id = products.product_id;
/* the average price of the products */

    
    SELECT 
    product_name, AVG(price) AS average_price
FROM
    products
GROUP BY product_name;


SELECT 
    products.product_name,
    AVG(sales.total_price) AS ProductnAvgprice
FROM
    products
        JOIN
    sales ON products.product_id = sales.product_id
GROUP BY product_name;

SELECT 
    product_name, AVG(price) AS average_price
FROM
    products
GROUP BY product_name;