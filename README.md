# SQL Data Analytics and Reporting(Gold Layer Analysis)
SQL-based analytics and reporting project built on a Gold Layer star schema (fact_sales, dim_customers, dim_products). Includes EDA, KPI metrics, time-based trends, cumulative analysis, ranking, segmentation, and performance reporting for business insights.

---
## 📌 Project Overview

This project demonstrates end-to-end data analytics and reporting using SQL on a Gold Layer star schema model.

The repository contains structured SQL scripts designed to perform exploratory data analysis (EDA), business metric calculations, performance analysis, segmentation, ranking, cumulative analytics, and final reporting using:

- `gold.dim_customers`
- `gold.dim_products`
- `gold.fact_sales`

The objective of this project is to simulate real-world business intelligence workflows using relational database principles and analytical SQL queries.

---

## 🏗️ Data Model

This project is built on a **Star Schema (Gold Layer)**:

### Fact Table
- `gold.fact_sales` → Transactional sales data

### Dimension Tables
- `gold.dim_customers` → Customer information
- `gold.dim_products` → Product information

This structure follows data warehousing best practices and supports scalable analytical querying.


---

## 🔎 Analytical Areas Covered

### 1️⃣ Database & Structure Exploration
- Table discovery
- Column metadata analysis
- Data type validation

### 2️⃣ Measures & KPI Analysis
- Total Sales
- Revenue calculations
- Quantity metrics
- Price analysis

### 3️⃣ Time-Based Analysis
- Change over time trends
- Date range exploration
- Cumulative sales analysis

### 4️⃣ Ranking Analysis
- Top N products
- Bottom N products
- Customer ranking by revenue

### 5️⃣ Magnitude & Performance Analysis
- Revenue distribution
- Product performance evaluation
- Customer contribution analysis

### 6️⃣ Data Segmentation
- Customer segmentation
- Revenue-based grouping
- Analytical classification logic

### 7️⃣ Part-to-Whole Analysis
- Category contribution
- Percentage-based breakdowns

### 8️⃣ Final Reporting
- Customer performance report
- Product performance report
- Export-ready datasets

---

## 📈 Final Output

The `final_report_datasets` folder contains structured CSV outputs:

- `gold.report_customers.csv`
- `gold.report_products.csv`

These datasets simulate business-ready reporting outputs that could be directly used in BI tools such as Power BI, Tableau, or Excel.

---

## ⚙️ Technologies Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Star Schema Data Modeling
- Relational Database Concepts
- Analytical SQL (GROUP BY, WINDOW FUNCTIONS, CTEs, Aggregations)

---

## ▶️ How to Run This Project

1. Execute `Database_init.sql` to:
   - Create database
   - Create Gold schema
   - Create tables
   - Load CSV datasets

2. Run analytical scripts sequentially (1 → 11).

3. Execute:
   - `report_customer.sql`
   - `report_products.sql`

4. Export final results if required.

⚠️ **Note:** Update file paths in BULK INSERT statements before execution.

---

## 🎯 Key Learning Outcomes

This project demonstrates:

- Practical star schema implementation
- Structured SQL-based exploratory analysis
- Business KPI generation
- Performance benchmarking
- Customer & product segmentation
- Report-ready dataset generation
- Professional SQL project structuring

---

## 📌 Ethical & Educational Use

This project is created strictly for educational and portfolio purposes.  
All datasets used are for learning demonstration only and do not represent real commercial data.

---

## 👤 Author

**TG Manu**  
Engineering Student | Aspiring Data Analyst  

---

