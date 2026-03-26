
-- Drop existing schema if any
DROP DATABASE IF EXISTS MetroDW;
CREATE DATABASE MetroDW;
USE MetroDW;

-- Drop the tables if it exists.
drop table if exists DimCustomer;
drop table if exists DimProduct;
drop table if exists FactSales;


-- Dimension Table: Customers
CREATE TABLE DimCustomer (
    customer_id VARCHAR(255) PRIMARY KEY,
    customer_name VARCHAR(255),
    gender VARCHAR(50)
);

-- Dimension Table: Products
CREATE TABLE DimProduct (
    product_id VARCHAR(255) PRIMARY KEY,
    product_name VARCHAR(255),
    product_price VARCHAR(50),
    supplier_id VARCHAR(255),
    supplier_name VARCHAR(255),
    store_id VARCHAR(255),
    store_name VARCHAR(255)
);

-- Fact Table: Sales
CREATE TABLE FactSales (
    order_id VARCHAR(255) PRIMARY KEY,
    order_date DATETIME,
    product_id VARCHAR(255),
    customer_id VARCHAR(255),
    quantity_ordered INT,
    total_sale FLOAT,
    FOREIGN KEY (product_id) REFERENCES DimProduct(product_id),
    FOREIGN KEY (customer_id) REFERENCES DimCustomer(customer_id)
);


-- select * from DimCustomer;
-- select * from DimProduct;
-- select * from FactSales;



-- ------------------------------------------------------------------------------------------- --

-- Query-1

-- Drop the table if it exists
DROP TABLE IF EXISTS SummaryTableQ1;

-- Create the summary table for Query 1
CREATE TABLE SummaryTableQ1 (
    product_name VARCHAR(255),
    total_sales VARCHAR(255),  
    month VARCHAR(255),
    day_type VARCHAR(255)     -- Weekday or Weekend
);


 

-- ------------------------------------------------------------------------------------------- --

-- Query-2

-- Drop the table if it exists
DROP TABLE IF EXISTS SummaryTableQ2;

-- Create the summary table for Query 2
CREATE TABLE SummaryTableQ2 (
    store_name VARCHAR(255),
    quarter VARCHAR(255),
    revenue VARCHAR(255),
    growth_rate VARCHAR(255) -- Growth rate will be calculated dynamically in Java
);
 



-- ------------------------------------------------------------------------------------------- --

-- Query-3

-- Drop the table if it exists
DROP TABLE IF EXISTS SummaryTableQ3;

-- Create the summary table for Query 3
CREATE TABLE SummaryTableQ3 (
    store_name VARCHAR(255),
    supplier_name VARCHAR(255),
    product_name VARCHAR(255),
    total_sales VARCHAR(255) -- Total sales contribution will be calculated dynamically in Java
);



-- ------------------------------------------------------------------------------------------- --

-- Query-4

-- Drop the table if it exists
DROP TABLE IF EXISTS SummaryTableQ4;

-- Create the summary table for Query 4
CREATE TABLE SummaryTableQ4 (
    product_name VARCHAR(255),
    season VARCHAR(50),
    total_sales VARCHAR(255) -- Total sales will be calculated dynamically in Java
);




-- ------------------------------------------------------------------------------------------- --

-- Query-5

-- Drop the table if it exists
DROP TABLE IF EXISTS SummaryTableQ5;

-- Create the summary table for Query 5
CREATE TABLE SummaryTableQ5 (
    store_name VARCHAR(255),
    supplier_name VARCHAR(255),
    month INT,
    revenue FLOAT,
    volatility FLOAT -- Monthly revenue volatility
);



-- ------------------------------------------------------------------------------------------- --

-- Query-6

-- Drop the table if it exists
DROP TABLE IF EXISTS SummaryTableQ6;

-- Create the summary table for Query 6
CREATE TABLE SummaryTableQ6 (
    product_1 VARCHAR(255),
    product_2 VARCHAR(255),
    pair_count INT
);




-- ------------------------------------------------------------------------------------------- --

-- Query-7

-- Drop the table if it exists
DROP TABLE IF EXISTS SummaryTableQ7;

-- Create the summary table for Query 7
CREATE TABLE SummaryTableQ7 (
    store_id VARCHAR(255),
    supplier_id VARCHAR(255),
    product_id VARCHAR(255),
    year INT,
    total_revenue FLOAT
);



-- ------------------------------------------------------------------------------------------- --

-- Query-8

-- Drop the table if it exists
DROP TABLE IF EXISTS SummaryTableQ8;

-- Create the summary table for Query 8
CREATE TABLE SummaryTableQ8 (
    product_id VARCHAR(255),
    year INT,
    total_quantity_h1 INT,
    total_revenue_h1 FLOAT,
    total_quantity_h2 INT,
    total_revenue_h2 FLOAT,
    total_quantity_year INT,
    total_revenue_year FLOAT
);



-- ------------------------------------------------------------------------------------------- --

-- Query-9

-- Drop the table if it exists
DROP TABLE IF EXISTS SummaryTableQ9;

-- Create the summary table for Query 9
CREATE TABLE SummaryTableQ9 (
    product_id VARCHAR(255),
    sale_date DATE,
    total_revenue FLOAT,
    daily_average FLOAT,
    is_outlier BOOLEAN
);



-- ------------------------------------------------------------------------------------------- --

-- Query-10
-- SELECT * FROM STORE_QUARTERLY_SALES; 


------------------------------------------------------------------------------------------- --


-- All queries result:
 
-- select* from SummaryTableQ1;
-- select * from SummaryTableQ2;
-- SELECT * FROM SummaryTableQ3;
-- SELECT * FROM SummaryTableQ4;
-- SELECT * FROM SummaryTableQ5;
-- SELECT * FROM SummaryTableQ6;
-- SELECT * FROM SummaryTableQ7;
-- SELECT * FROM SummaryTableQ8;
-- SELECT * FROM SummaryTableQ9;
-- SELECT * FROM STORE_QUARTERLY_SALES;