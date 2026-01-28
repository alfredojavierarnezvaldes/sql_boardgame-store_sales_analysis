-- ADVANCED SQL QUERIES
-- Subqueries and CTEs

-- 1. Customers that spent more than the average

SELECT c.full_name,c.email, SUM(p.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.full_name,c.email
HAVING SUM(p.amount) >
       (SELECT AVG(amount) FROM payments);

-- 2. Orders with a value above 2000

select o.order_id, sum(p.amount) as total_paid
from orders o
join payments p on o.order_id = p.order_id
group by o.order_id
having sum(p.amount) > 2000;

-- 3. Client with the biggest amount spent

SELECT c.full_name, c.email, SUM(p.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.full_name, c.email
ORDER BY total_spent DESC
LIMIT 1;

-- 4. Total income per payment method

select payment_method, sum(amount) as total_income
from payments
group by payment_method;

-- 5. Clients with only one order

SELECT c.full_name, c.email
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.full_name, c.email
HAVING COUNT(o.order_id) = 1;


