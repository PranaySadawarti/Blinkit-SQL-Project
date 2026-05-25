# 🛒 Blinkit SQL Data Analysis Project

## 📌 Project Overview

This project is an end-to-end SQL data analysis case study using a Blinkit quick-commerce dataset. The goal of this project is to analyze customer behavior, product performance, and business insights using structured queries in SQL.

---

## 🎯 Objectives

* Analyze customer purchase patterns
* Identify top-performing products and categories
* Understand order trends and revenue generation
* Perform advanced SQL analytics using joins, aggregations, and CTEs

---

## 🗂️ Dataset Description

The dataset simulates a real-world quick commerce platform like Blinkit and includes:

* **Customers** – customer details
* **Orders** – order transactions
* **Products** – product details
* **Categories** – product categories

---

## 🛠️ Tools & Technologies Used

* SQL (PostgreSQL)
* Database Management System: PostgreSQL
* Query Techniques:

  * Joins (INNER, LEFT, RIGHT)
  * Aggregations (SUM, COUNT, AVG)
  * Subqueries
  * Common Table Expressions (CTEs)
  * Window Functions

---

## 📊 Key Business Questions Solved

* Who are the most frequent customers?
* Which products generate the highest revenue?
* What are the top-selling categories?
* How many repeat customers are there?
* What is the average order value?

---

## 🔍 Sample SQL Queries

### 1️⃣ Repeat Customers

```sql
SELECT 
    customer_id,
    COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;
```

---

### 2️⃣ Top Selling Products

```sql
SELECT 
    product_id,
    SUM(quantity) AS total_sold
FROM order_items
GROUP BY product_id
ORDER BY total_sold DESC;
```

---

### 3️⃣ Revenue by Category

```sql
SELECT 
    c.category_name,
    SUM(oi.quantity * oi.price) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY revenue DESC;
```

---

## 📈 Insights & Findings

* Repeat customers contribute significantly to total revenue
* A small number of products drive most sales (Pareto Principle)
* Certain categories consistently outperform others
* Order frequency varies significantly across customers

---

## 🚀 How to Run This Project

1. Install PostgreSQL
2. Create a new database:

```sql
CREATE DATABASE blinkit_analysis;
```

3. Import the SQL file:

```bash
psql -U postgres -d blinkit_analysis -f blinkit_sql_project.sql
```

4. Run queries from the project file

---

## 📁 Project Structure

```
📦 Blinkit-SQL-Project
 ┣ 📜 blinkit_sql_project.sql
 ┣ 📜 README.md
```

---

## 💼 Use Case (Portfolio Value)

This project demonstrates:

* Real-world business problem solving
* Strong SQL skills
* Data analysis thinking
* Ability to derive actionable insights

---


