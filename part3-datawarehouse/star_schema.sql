-- Dimension Table: Date
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    month VARCHAR(20),
    year INT
);

-- Dimension Table: Store
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(50),
    city VARCHAR(50)
);

-- Dimension Table: Product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50)
);

-- Fact Table: Sales
CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    quantity INT,
    sales_amount DECIMAL(10,2),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- Cleaned sample data for dim_date
INSERT INTO dim_date VALUES
(1, '2024-01-10', 'January', 2024),
(2, '2024-01-11', 'January', 2024),
(3, '2024-01-12', 'January', 2024);

-- Cleaned sample data for dim_store
INSERT INTO dim_store VALUES
(1, 'Store A', 'Mumbai'),
(2, 'Store B', 'Delhi'),
(3, 'Store C', 'Chandigarh');

-- Cleaned sample data for dim_product
INSERT INTO dim_product VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Milk', 'Groceries'),
(3, 'Shirt', 'Clothing');

-- 10 fact rows
INSERT INTO fact_sales VALUES
(1, 1, 1, 1, 2, 100000),
(2, 1, 2, 2, 10, 600),
(3, 1, 3, 3, 5, 5000),
(4, 2, 1, 2, 8, 480),
(5, 2, 2, 1, 1, 50000),
(6, 2, 3, 3, 4, 4000),
(7, 3, 1, 3, 3, 3000),
(8, 3, 2, 2, 12, 720),
(9, 3, 3, 1, 1, 50000),
(10, 3, 1, 2, 6, 360);
