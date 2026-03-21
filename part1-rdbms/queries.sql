-- Show all customer records
SELECT * FROM customers;

-- Show all product records
SELECT * FROM products;

-- Show only product names
SELECT product_name FROM products;

-- Show products with price greater than 500
SELECT * FROM products
WHERE unit_price > 500;

-- Show all order records
SELECT * FROM orders;

-- Show orders of a specific customer
SELECT * FROM orders
WHERE customer_email = 'customer1@example.com';

-- Calculate total quantity sold
SELECT SUM(quantity) AS total_quantity
FROM orders;

-- Count total number of products
SELECT COUNT(*) AS total_products
FROM products;

-- Sort products by price
SELECT * FROM products
ORDER BY unit_price;

-- Join products and orders
SELECT products.product_name, orders.quantity
FROM products
JOIN orders
ON products.product_id = orders.product_id;

-- Join sales representatives with orders
SELECT sales_reps.sales_rep_name, orders.order_date
FROM sales_reps
JOIN orders
ON sales_reps.sales_rep_id = orders.sales_rep_id;
