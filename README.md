# 🛒 E-commerce SQL Analysis

## 🚀 Project Overview
This project focuses on analyzing e-commerce data using SQL to uncover insights related to **revenue trends, customer behavior, and business performance**.

The goal is to demonstrate how SQL can be used to solve real-world business problems and support data-driven decision-making.

---

## 🎯 Business Problem
E-commerce companies need to understand:
- Which customers generate the most revenue?
- What are the key sales trends over time?
- Where are users dropping off in the order funnel?
- How can we improve customer retention?

This project answers these questions using structured data analysis.

---

## 🧱 Dataset
The dataset consists of the following tables:

- **users** → customer details  
- **orders** → transaction-level data  
- **order_items** → product-level details per order  
- **products** → product category and pricing  

---

## 🔍 Key Analysis Performed

### 📊 Revenue Analysis
- Total revenue (GMV)
- Monthly revenue trends
- Average Order Value (AOV)

### 👤 Customer Analysis
- Top customers by spending
- Repeat vs new customers
- Customer segmentation (high-value vs low-value users)

### 📦 Product Analysis
- Top-selling products
- Revenue contribution by category

### 🔁 Funnel & Operations Analysis
- Order status breakdown (placed → delivered → cancelled)
- Cancellation rate
- Conversion efficiency

---

## 🛠️ SQL Concepts Used
- Joins (INNER JOIN, LEFT JOIN)
- Aggregations (SUM, COUNT, AVG)
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions (RANK, ROW_NUMBER)
- CASE WHEN logic
- Date functions (monthly grouping)

---

## 📊 Sample Query

### Top Customers by Revenue
```sql
SELECT user_id, SUM(order_amount) AS total_spent
FROM orders
GROUP BY user_id
ORDER BY total_spent DESC
LIMIT 10;
