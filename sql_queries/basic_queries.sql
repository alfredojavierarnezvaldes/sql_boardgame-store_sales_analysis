-- BASIC SQL QUERIES
-- Author: Alfredo Javier Arnez Valdés
-- Description: Basic data exploration queries

-- 1. View all customers
SELECT * FROM customers;

-- 2. View all products
SELECT * FROM products;

-- 3. Orders ordered by date
SELECT * 
FROM orders
ORDER BY order_date;

-- 4. Customers from Cochabamba
SELECT *
FROM customers
WHERE city = 'Cochabamba';

-- 5. Orders after October 10, 2025
SELECT *
FROM orders
WHERE order_date > '2025-10-10';
