--Total Revenue
SELECT SUM(amount) AS total_revenue FROM orders;

--Revenue by City
SELECT 
    c.address,
    SUM(o.amount) AS revenue
FROM customers c
JOIN orders o 
    ON c.id = o.customer_id
GROUP BY c.address
ORDER BY revenue DESC;

--Repeat Customers
SELECT 
    customer_id,
    COUNT(*) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 1;

--Average Order Value
SELECT AVG(amount) AS avg_order_value FROM orders;

--Daily Revenue Trend
SELECT 
    DATE(order_date) AS order_day,
    SUM(amount) AS revenue
FROM orders
GROUP BY order_day
ORDER BY order_day;

--Peak Order Hour
SELECT 
    EXTRACT(HOUR FROM order_date) AS order_hour,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_hour
ORDER BY total_orders DESC;

--Top 10 Customers
SELECT 
    customer_id,
    SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

--Low Performing Customers
SELECT 
    customer_id,
    SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent ASC
LIMIT 10;

--Window Function
SELECT 
    customer_id,
    SUM(amount) AS total_spent,
    RANK() OVER (ORDER BY SUM(amount) DESC) AS rank
FROM orders
GROUP BY customer_id;

--Revenue by Age Group
SELECT 
    c.age,
    SUM(o.amount) AS revenue
FROM customers c
JOIN orders o 
    ON c.id = o.customer_id
GROUP BY c.age
ORDER BY revenue DESC;