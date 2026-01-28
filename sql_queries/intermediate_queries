-- INTERMEDIATE SQL QUERIES
-- Joins and aggregations

-- 1. Ordered by department

SELECT department, COUNT(*) AS clientes
FROM customers
GROUP BY department
ORDER BY department;


-- 2. Total orders per customer

SELECT c.full_name, c.email, COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.full_name, c.email
ORDER BY total_orders desc;


	-- 3. Total sales by client

SELECT c.full_name,
       SUM(oi.quantity * oi.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.full_name
ORDER BY total_spent DESC;


-- 4. Total sales by category

select c.category_name, sum(o.quantity*o.price) as total_sales
from categories c
join products p on c.category_id = p.category_id
join order_items o on p.product_id = o.product_id
group by c.category_name;


-- 5. Customers with more than one order

SELECT c.customer_id, c.full_name, COUNT(*) AS totalorders
FROM orders o
JOIN customers c ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.full_name
HAVING COUNT(*) > 1;


-- 6. Total amount per order

SELECT order_id, SUM(amount) AS total_paid
FROM payments
GROUP BY order_id;


-- 7. Total spent per customer

select c.full_name, c.email, sum(p.amount) as total_spent
from customers c
join orders o on c.customer_id = o.customer_id
join payments p on o.order_id = p.order_id
group by c.full_name, c.email
order by total_spent;
