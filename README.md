\# 🍴 QuickEats SQL Case Study

\*A SQL data exploration \& insights project inspired by real-world food delivery data\*



---



\## 🧩 Overview

After completing my \*\*30-Day SQL Challenge\*\*, I wanted to put my new skills to work on a realistic dataset.  

\*\*QuickEats\*\* is a fictional Nigerian food-delivery startup that connects customers to nearby restaurants through an online platform.



Using \*\*PostgreSQL\*\*, I explored QuickEats’ data to uncover insights about customer behavior, restaurant performance, and delivery efficiency — the kind of analysis a data analyst might do in a real startup environment.



---



\## 🎯 Objectives

The goal of this project was to use SQL for data exploration and insight generation by:

\- Identifying high-performing cities, cuisines, and restaurants  

\- Understanding customer spending patterns  

\- Measuring delivery outcomes and rider impact  

\- Investigating customer feedback and satisfaction  

\- Tracking company income and payment reliability  



---



\## 🗂️ Database Structure

The database (`quickeats\_db`) contains \*\*five related tables\*\*:



| Table | Description |

|--------|-------------|

| \*\*customers\*\* | Customer details such as name, gender, city, and signup date |

| \*\*restaurants\*\* | Partner restaurant info including cuisine type, city, and average prep time |

| \*\*riders\*\* | Delivery riders with join date and average rating |

| \*\*orders\*\* | Individual order details including total amount, payment status, and income |

| \*\*feedback\*\* | Customer ratings and comments linked to each order |



\*\*Entity Relationships\*\*

customers.customer\_id → orders.customer\_id

restaurants.restaurant\_id → orders.restaurant\_id

riders.rider\_id → orders.rider\_id

orders.order\_id → feedback.order\_id





---



\## ⚙️ Tech Stack

\- \*\*Database:\*\* PostgreSQL  

\- \*\*Tools:\*\* pgAdmin 

\- \*\*Concepts Practiced:\*\*  

&nbsp; `INNER JOIN`, `CAST`, `CASE WHEN`, `COALESCE`, `GROUP BY`, `HAVING`, `Subqueries`, `Aggregations`



---



\## 💼 Business Questions Explored

1\. \*\*City Order Trends\*\*  

&nbsp;  Which cities generate the highest number of orders for QuickEats?



2\. \*\*Cuisine Revenue Insights\*\*  

&nbsp;  Which cuisine types bring in the most commission income?



3\. \*\*Payment System Health\*\*  

&nbsp;  Are most orders paid, pending, or refunded?



4\. \*\*Top-Spending Customers\*\*  

&nbsp;  Who are the top five customers and how much have they spent?



5\. \*\*Rider Performance Review\*\*  

&nbsp;  Which riders deliver the best customer experience (at least 15 deliveries)?



6\. \*\*Delivery Outcome Summary\*\*  

&nbsp;  What percentage of orders were successfully delivered, and what was the average rider rating?



7\. \*\*Cuisine Efficiency Overview\*\*  

&nbsp;  Can we compare cuisines on total orders and prep time, even when some data is missing?



8\. \*\*Restaurant Performance Benchmark\*\*  

&nbsp;  Which restaurants consistently earn above-average order values?



9\. \*\*Restaurant Satisfaction Ratings\*\*

&nbsp;  Which restaurants have the highest customer satisfaction ratings?



10\. \*\*Customer Feedback Champions\*\*  

&nbsp;   Which customers give above-average feedback ratings?



---



\## 📊 Key SQL Concepts Demonstrated

| Concept | Description |

|----------|-------------|

| \*\*INNER JOIN\*\* | Combine data across multiple tables |

| \*\*CAST()\*\* | Convert text-based numeric fields for calculations |

| \*\*CASE WHEN\*\* | Create logical categories for analysis |

| \*\*COALESCE()\*\* | Handle missing or null data |

| \*\*Subqueries\*\* | Compare groups to overall averages |



---



\## 💡 Some Insights

\- \*\*Lagos and Abuja\*\* are the top-demand cities, accounting for over 60% of all orders.  

\- \*\*Local and Continental cuisines\*\* generate the highest commissions.  

\- Successful deliveries average \*\*4.5⭐\*\*, while cancelled orders drop to \*\*3.2⭐\*\*.  

\- A small group of top-spending customers contributes a large share of total revenue.



---



\## 🧱 Repository Structure

📁 quickeats-sql-case-study

│

├── README.md

│

├── sql\_queries/

│ ├── 01\_city\_order\_trends.sql

│ ├── 02\_cuisine\_revenue\_insights.sql

│ ├── 03\_payment\_system\_health.sql

│ ├── 04\_top\_spending\_customers.sql

│ ├── 05\_rider\_performance\_review.sql

│ ├── 06\_delivery\_outcome\_summary.sql

│ ├── 07\_cuisine\_efficiency\_overview.sql

│ ├── 08\_restaurant\_performance\_benchmark.sql

│ ├── 09\_restaurant\_satisfaction\_ratings.sql

│ └── 10\_customer\_feedback\_champions.sql

│

├── data/

│ ├── customers\_quickeats.csv

│ ├── restaurants\_quickeats.csv

│ ├── riders\_quickeats.csv

│ ├── orders\_quickeats.csv

│ └── feedback\_quickeats.csv

│

└── images/

├── quickeats\_intro.png

├── quickeats\_business\_challenge.png

└── quickeats\_erd.png





---



\## 🪄 How to Use

1\. Clone or download this repository.  

2\. Restore the database (`quickeats\_db`) in PostgreSQL.  

3\. Load the CSV files from `/data` into their respective tables.  

4\. Open the `.sql` files in `/sql\_queries` to explore or modify the queries.  

5\. Review query results and interpret insights.



---



\## ✍🏽 Author

\*\*Funmilayo Eluyera\*\*  

Data Analyst | SQL, BI \& Data Storytelling  

📍 Lagos, Nigeria  



---



\### 📰 Read More

Medium Article → \*Using SQL to Explore and Generate Business Insights for QuickEats\*  

(coming soon)





