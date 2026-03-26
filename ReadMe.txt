Overview:
This project demonstrates the creation and operation of a data warehouse using MySQL and Java. It includes:

1- Mesh Join Algorithm: To enrich transactional data.
2- OLAP Queries: To analyze and generate insights.
3- Project Report: Detailed documentation about the project.

The project files include:
1- Java classes for implementing the Mesh Join Algorithm and OLAP Query Execution.
2- MySQL schema creation and summary table generation.
3- A comprehensive project report.

Instructions to Run the Project
1- Database Setup:

 1. Import the provided SQL file or run the schema creation scripts in MySQL Workbench:

 - Create the database:
   CREATE DATABASE MetroDW;
   USE MetroDW;

 2. Populate the DimCustomer and DimProduct tables with the master data using the CSV files provided.

2- Running the Java Project
 1. Setup the Environment:

 . Install Java JDK and a compatible IDE (e.g., IntelliJ IDEA, Eclipse).
 . Add the MySQL Connector/J library to your project.

 2. Steps to Execute:

 . Run MeshJoinMain.java to:
    . Read transactional data from transactions.csv.
    . Enrich the data using the Mesh Join Algorithm.
    . Populate the FactSales table in the database.
 
 . Run the following main classes for OLAP query execution:
    . Query1ExecutorMain.java for SummaryTableQ1.
    . Query2ExecutorMain.java for SummaryTableQ2.
    . Similarly, run Query3ExecutorMain.java to Query9ExecutorMain.java, and ViewCreatorMain.java(Query 10) for other summary tables.
 
3. Verify Data in MySQL Workbench:
 Use MySQL queries to inspect the populated tables:
 SELECT * FROM DimCustomer;
 SELECT * FROM DimProduct;
 SELECT * FROM FactSales;
 SELECT * FROM SummaryTableQX; -- Replace X with the query number (1-10)

3- Project Files Included
. Java Code:
  MeshJoin.java: Implements the Mesh Join Algorithm.
  MeshJoinMain.java: Main class for executing Mesh Join.
  QueryXExecutor.java: Classes for executing OLAP queries (e.g., Query1Executor.java, Query2Executor.java, etc.).
  QueryXExecutorMain.java: Main classes for executing each query.

. SQL Scripts:
  Schema creation scripts for DimCustomer, DimProduct, FactSales, and summary tables.
  
. Project Report:
  A detailed report describing the project implementation, challenges, and insights.

4- Execution Order
 . To run the project, follow this order:
   . Set up the database schema and populate DimCustomer and DimProduct.
   . Run MeshJoinMain.java to populate the FactSales table.
   . Execute the OLAP query main classes (QueryXExecutorMain.java) to populate the summary tables.
   . Validate results in MySQL Workbench.

