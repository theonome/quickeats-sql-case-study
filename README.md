# 🍴 QuickEats SQL Case Study

*A SQL data exploration & insights project inspired by real-world food delivery data*



---



## 🧩 Overview

After completing my **30-Day SQL Challenge**, I wanted to put my new skills to work on a realistic dataset.  

**QuickEats** is a fictional Nigerian food-delivery startup that connects customers to nearby restaurants through an online platform.



Using **PostgreSQL**, I explored QuickEats’ data to uncover insights about customer behavior, restaurant performance, and delivery efficiency; the kind of analysis a data analyst might do in a real startup environment.



---



## 🎯 Objectives

The goal of this project was to use SQL for data exploration and insight generation by:

- Identifying high-performing cities, cuisines, and restaurants  

- Understanding customer spending patterns  

- Measuring delivery outcomes and rider impact  

- Investigating customer feedback and satisfaction  

- Tracking company income and payment reliability  



---



## 🗂️ Database Structure

The database (`quickeats_db`) contains **five related tables**:

### 🧍‍♂️ customers

| Column | Description |
|---------|-------------|
| customer_id | Unique ID for each customer |
| full_name | Customer’s full name |
| gender | Gender of the customer |
| city | City of residence |
| signup_date | Date the customer joined QuickEats |
| email | Customer’s email address |

---

### 🍽 restaurants

| Column | Description |
|---------|-------------|
| restaurant_id | Unique ID for each restaurant |
| restaurant_name | Name of the restaurant |
| cuisine_type | Type of cuisine offered |
| city | City where the restaurant operates |
| avg_prep_time | Average meal preparation time (may contain nulls) |

---

### 🚴‍♂️ riders

| Column | Description |
|---------|-------------|
| rider_id | Unique ID for each rider |
| rider_name | Rider’s full name |
| join_date | Date rider joined QuickEats |
| city | City where the rider operates |
| rating | Rider’s average rating (may contain nulls) |

---

### 🧾 orders

| Column | Description |
|---------|-------------|
| order_id | Unique order ID |
| customer_id | ID of the customer who placed the order |
| restaurant_id | ID of the restaurant fulfilling the order |
| rider_id | Rider responsible for the delivery |
| order_date | Date the order was placed |
| total_amount | Total order amount (may contain nulls) |
| payment_status | Status of payment (Paid / Pending / Refunded) |
| delivery_status | Delivery outcome (Delivered / Cancelled) |
| freshbite_income (QuickEats was formerly called freshbite) | QuickEats commission income (10% of order amount) |

---

### 💬 feedback

| Column | Description |
|---------|-------------|
| feedback_id | Unique feedback ID |
| order_id | Associated order |
| rating | Customer’s rating for the order (may contain nulls) |
| comment | Optional text feedback |
| sentiment | Categorized sentiment (Positive / Neutral / Negative) |

---


**Entity Relationships**

customers.customer_id → orders.customer_id

restaurants.restaurant_id → orders.restaurant_id

riders.rider_id → orders.rider_id

orders.order_id → feedback.order_id


---



## ⚙️ Tech Stack

- **Database:** PostgreSQL  

- **Tools:** pgAdmin 

- **Concepts Practiced:** 

`INNER JOIN`, `CAST`, `CASE WHEN`, `COALESCE`, `GROUP BY`, `HAVING`, `Subqueries`, `Aggregations`



---



## 💼 Business Questions Explored

1. **City Order Trends**  

Which cities generate the highest number of orders for QuickEats?



2. **Cuisine Revenue Insights**  

Which cuisine types bring in the most commission income?



3. **Payment System Health**  

Are most orders paid, pending, or refunded?



4. **Top-Spending Customers**  

Who are the top five customers and how much have they spent?



5. **Rider Performance Review**  

Which riders deliver the best customer experience (at least 15 deliveries)?



6. **Delivery Outcome Summary**  

What percentage of orders were successfully delivered, and what was the average rider rating?



7. **Cuisine Efficiency Overview**  

Can we compare cuisines on total orders and prep time, even when some data is missing?



8. **Restaurant Performance Benchmark**  

Which restaurants consistently earn above-average order values?



9. **Restaurant Satisfaction Ratings**

Which restaurants have the highest customer satisfaction ratings?



10. **Customer Feedback Champions**  

 Which customers give above-average feedback ratings?



---



## 📊 Key SQL Concepts Demonstrated

| Concept | Description |
|----------|-------------|
| **INNER JOIN** | Combine data across multiple tables |
| **CAST()** | Convert text-based numeric fields for calculations |
| **CASE WHEN** | Create logical categories for analysis |
| **COALESCE()** | Handle missing or null data |
| **Subqueries** | Compare groups to overall averages |



---



## 💡 Some Insights

- **Lagos and Abuja** are the top-demand cities, accounting for over 60% of all orders.  

- **Local and Continental cuisines** generate the highest commissions.  

- Successful deliveries average **4.5⭐**, while cancelled orders drop to **3.2⭐**.  

- A small group of top-spending customers contributes a large share of total revenue.



---
## 🧱 Repository Structure

```text
quickeats-sql-case-study/
│
├── README.md
│
├── sql_queries/
│   ├── 01_city_order_trends.sql
│   ├── 02_cuisine_revenue_insights.sql
│   ├── 03_payment_system_health.sql
│   ├── 04_top_spending_customers.sql
│   ├── 05_rider_performance_review.sql
│   ├── 06_delivery_outcome_summary.sql
│   ├── 07_cuisine_efficiency_overview.sql
│   ├── 08_restaurant_performance_benchmark.sql
│   ├── 09_restaurant_satisfaction_ratings.sql
│   └── 10_customer_feedback_champions.sql
│
├── data/
│   ├── customers_quickeats.csv
│   ├── restaurants_quickeats.csv
│   ├── riders_quickeats.csv
│   ├── orders_quickeats.csv
│   └── feedback_quickeats.csv
│
├── images/
│   ├── quickeats_intro.png
│   ├── quickeats_business_challenge.png
│   └── quickeats_erd.png
│
└── database/
    └── quickeats_db_backup.tar
```


---



## 🪄 How to Use

1. Clone or download this repository.  

2. Restore the database (`quickeats_db`) in PostgreSQL.  

3. Load the CSV files from `data` into their respective tables.  

4. Open the `.sql` files in `sql_queries` to explore or modify the queries.  

5. Review query results and interpret insights.



---
## 🧾 Database Backup
For convenience, a full PostgreSQL backup of this project is available:

📦 **[Download QuickEats Database Backup (.tar)](https://github.com/theonome/quickeats-sql-case-study/raw/refs/heads/main/database/quickeats_db.tar)**

### How to Restore in pgAdmin
1. Create a new database named `quickeats_db`
2. Right-click → *Restore...*
3. Format: `Tar`
4. Select this file
5. Click **Restore**

Alternatively, you can rebuild the database manually using the CSV files in `data`.



---


## ✍🏽 Author

**Funmilayo Eluyera**

Data Analyst | SQL, BI & Data Storytelling  

📍 Lagos, Nigeria  


---

### 💛 Inspiration
This project was inspired by my love for **Chowdeck**, a food delivery platform I use almost daily.  
Their smooth logistics and attention to customer experience inspired me to explore how data can drive smarter operations in delivery systems like QuickEats.

---

### 📰 Read More

Medium Article → *Using SQL to Explore and Generate Business Insights for QuickEats*

(coming soon)





