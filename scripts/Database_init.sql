/*
===============================================================================
Project Name : SQL Data Analytics & Reporting (Gold Layer Analysis)
Script Name  : 01_Database_Initialization.sql
Author       : Manu
Description  : 
    This script initializes the DataAnalytics database environment.
    It performs the following operations:

    1. Drops the existing database (if it exists).
    2. Creates a fresh DataAnalytics database.
    3. Creates the 'gold' schema.
    4. Creates dimension tables:
           - gold.dim_customers
           - gold.dim_products
    5. Creates fact table:
           - gold.fact_sales
    6. Loads data into all tables using BULK INSERT from CSV files.

Purpose :
    This script prepares the Gold Layer of the data warehouse,
    which will be used for exploratory data analysis (EDA),
    KPI calculation, reporting, segmentation, ranking, 
    and performance analytics.

Execution Instructions :
    - Ensure SQL Server has access to the CSV file locations.
    - Update file paths in BULK INSERT statements if necessary.
    - Run this script in SQL Server Management Studio (SSMS).
    - Execute the script in order (top to bottom).

Warning :
    Running this script will permanently delete the existing 
    DataAnalytics database (if it exists).

Environment :
    Microsoft SQL Server

===============================================================================
*/

USE master;
GO

-- Drop and recreate the 'DataAnalytics' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataAnalytics')
BEGIN
    ALTER DATABASE DataAnalytics SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataAnalytics;
END;
GO

-- Create the 'DataAnalytics' database
CREATE DATABASE DataWarehouseAnalytics;
GO

USE DataWarehouseAnalytics;
GO

-- Create Schemas

CREATE SCHEMA gold;
GO

CREATE TABLE gold.dim_customers(
	customer_key int,
	customer_id int,
	customer_number nvarchar(50),
	first_name nvarchar(50),
	last_name nvarchar(50),
	country nvarchar(50),
	marital_status nvarchar(50),
	gender nvarchar(50),
	birthdate date,
	create_date date
);
GO

CREATE TABLE gold.dim_products(
	product_key int ,
	product_id int ,
	product_number nvarchar(50) ,
	product_name nvarchar(50) ,
	category_id nvarchar(50) ,
	category nvarchar(50) ,
	subcategory nvarchar(50) ,
	maintenance nvarchar(50) ,
	cost int,
	product_line nvarchar(50),
	start_date date 
);
GO

CREATE TABLE gold.fact_sales(
	order_number nvarchar(50),
	product_key int,
	customer_key int,
	order_date date,
	shipping_date date,
	due_date date,
	sales_amount int,
	quantity tinyint,
	price int 
);
GO

TRUNCATE TABLE gold.dim_customers;
GO

BULK INSERT gold.dim_customers
FROM 'C:\sql\sql-data-analytics-project\datasets\csv-files\gold.dim_customers.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);
GO

TRUNCATE TABLE gold.dim_products;
GO

BULK INSERT gold.dim_products
FROM 'C:\sql\sql-data-analytics-project\datasets\csv-files\gold.dim_products.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);
GO

TRUNCATE TABLE gold.fact_sales;
GO

BULK INSERT gold.fact_sales
FROM 'C:\sql\sql-data-analytics-project\datasets\csv-files\gold.fact_sales.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);
GO
