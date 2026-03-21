-- Q1: List all customers along with the total number of orders they have placed

SELECT 
customers.name,
COUNT(orders.order_id) AS total_orders
FROM read_csv_auto('datasets/customers.csv') AS customers
LEFT JOIN read_json_auto('datasets/orders.json') AS orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.name;



-- Q2: Find the top 3 customers by total order value

SELECT 
customers.name,
SUM(orders.total_amount) AS total_value
FROM read_csv_auto('datasets/customers.csv') AS customers
JOIN read_json_auto('datasets/orders.json') AS orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.name
ORDER BY total_value DESC
LIMIT 3;



-- Q3: List all products purchased by customers from Bangalore

SELECT 
customers.name,
products.product_name
FROM read_csv_auto('datasets/customers.csv') AS customers
JOIN read_json_auto('datasets/orders.json') AS orders
ON customers.customer_id = orders.customer_id
JOIN read_parquet('datasets/products.parquet') AS products
ON orders.product_id = products.product_id
WHERE customers.city = 'Bangalore';



-- Q4: Join all three files to show customer name, order date, product name, and quantity

SELECT 
customers.name,
orders.order_date,
products.product_name,
orders.quantity
FROM read_csv_auto('datasets/customers.csv') AS customers
JOIN read_json_auto('datasets/orders.json') AS orders
ON customers.customer_id = orders.customer_id
JOIN read_parquet('datasets/products.parquet') AS products
ON orders.product_id = products.product_id;
