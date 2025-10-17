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



| Table | Description |

|--------|-------------|

| **customers** | Customer details such as name, gender, city, and signup date |

| **restaurants** Partner restaurant info including cuisine type, city, and average prep time |

| **riders** | Delivery riders with join date and average rating |

| **orders** | Individual order details including total amount, payment status, and income |

| **feedback** | Customer ratings and comments linked to each order |



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

📁 quickeats-sql-case-study

│

├── README.md

├── data/

│ ├── customers_quickeats.csv

│ ├── feedback_quickeats.csv

│ ├── orders_quickeats.csv

│ ├── restaurants_quickeats.csv

│ └── riders_quickeats.csv

|

├── sql_queries/

│ ├── 01_city_order_trends.sql

│ ├── 02_cuisine_revenue_insights.sql

│ ├── 03_payment_system_health.sql

│ ├── 04_top_spending_customers.sql

│ ├── 05_rider_performance_review.sql

│ ├── 06_delivery_outcome_summary.sql

│ ├── 07_cuisine_efficiency_overview.sql

│ ├── 08_restaurant_performance_benchmark.sql

│ ├── 09_restaurant_satisfaction_ratings.sql

│ └── 10_customer_feedback_champions.sql

│

└── images/

├── quickeats_intro.png

├── quickeats_business_challenge.png

└── quickeats_erd.png





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

📦 **database/quickeats_db.tar**

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



### 📰 Read More

Medium Article → *Using SQL to Explore and Generate Business Insights for QuickEats*

(coming soon)





