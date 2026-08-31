CREATE DATABASE joinsGroupBy;
USE joinsGroupBy;
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);
INSERT INTO categories (category_id, category_name)
VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, 'Furniture');
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category_id INT,
    price DECIMAL(10,2),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);
INSERT INTO products
(product_id, product_name, category_id, price)
VALUES
(101, 'Laptop', 1, 50000),
(102, 'Mobile', 1, 20000),
(103, 'T-Shirt', 2, 1000),
(104, 'Jeans', 2, 2000),
(105, 'SQL Book',3, 800),
(106, 'Java Book',3, 1200),
(107, 'Chair', 4, 3000),
(108, 'Table',      4, 5000);
CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
INSERT INTO order_details
(order_detail_id, product_id, quantity, price)
VALUES
(1, 101, 2, 50000),
(2, 102, 3, 20000),
(3, 103, 5, 1000),
(4, 104, 2, 2000),
(5, 105, 4, 800),
(6, 106, 3, 1200),
(7, 107, 2, 3000),
(8, 108, 1, 5000);
SELECT * FROM categories;
SELECT * FROM products;
SELECT * FROM order_details;
SELECT categories.category_name,

       SUM(order_details.quantity * order_details.price) AS total_sales
FROM categories
INNER JOIN products
    ON categories.category_id = products.category_id
INNER JOIN order_details
    ON products.product_id = order_details.product_id
GROUP BY categories.category_id, categories.category_name
ORDER BY total_sales DESC;