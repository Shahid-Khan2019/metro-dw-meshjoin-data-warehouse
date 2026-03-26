# 📊 Metro Data Warehouse Project (Mesh Join ETL)


## 📌 Project Overview
This project implements a **near real-time Data Warehouse (DW)** prototype for a METRO shopping store using **Java and MySQL**.

It simulates a real-world **ETL pipeline**, where transactional data is:
- Extracted from data sources  
- Transformed using the **Mesh Join Algorithm**  
- Loaded into a structured Data Warehouse  

The system enables **OLAP analysis** for business intelligence and decision-making.

---

## 🎯 Key Features
- ✅ Near real-time ETL pipeline  
- ✅ Mesh Join Algorithm implementation  
- ✅ Star Schema Data Warehouse  
- ✅ OLAP queries for analytics  
- ✅ Summary tables for fast querying  

---

## 🏗️ Data Warehouse Design

### ⭐ Star Schema

**Fact Table**
- `FactSales`

**Dimension Tables**
- `DimCustomer`
- `DimProduct`
- `DimStore`
- `DimSupplier`
- `DimTime`

---

## ⚙️ Technologies Used
- **Java (JDK)**
- **MySQL**
- **JDBC (MySQL Connector/J)**
- **SQL (OLAP + Schema Design)**

---

## 🔄 ETL Process

### 1. Extraction
- Transactional data from CSV / database  

### 2. Transformation
- Enrichment using:
  - Customer Data  
  - Product Data  


### 3. Loading
- Data stored in `FactSales`  

---

## 🔗 Mesh Join Algorithm

Efficient algorithm for **stream-relation joins** in ETL pipelines.

### Steps:
1. Load transaction chunks into memory  
2. Load master data partitions  
3. Perform join  
4. Enrich data  
5. Store in DW  
6. Repeat  

---

## 📊 OLAP Analysis

- Top revenue products (weekday/weekend)  
- Quarterly revenue growth  
- Supplier contribution  
- Seasonal trends  
- Revenue volatility  
- Product affinity analysis  
- Roll-up aggregations  
- Sales comparison (H1 vs H2)  
- Outlier detection  
- Quarterly sales view  

---

## 🛠️ Setup Instructions

### 1️⃣ Database Setup
- Run schema SQL scripts  
- Insert master data into:
  - `DimCustomer`
  - `DimProduct`

---

### 2️⃣ Java Setup
- Install Java JDK  
- Use IntelliJ / Eclipse  
- Add MySQL Connector/J  

---

## ▶️ Run the Project

### Step 1: Run ETL (Mesh Join)
```bash
MeshJoinMain.java
```
✔ This will:
Extract data
Transform using Mesh Join
Load into FactSales

### Step 2: Run OLAP Queries
```bash
QueryXExecutorMain.java
```
✔ This will:
Generate summary tables
Perform analysis

### 🔍 Verify Results
```bash
SELECT * FROM DimCustomer;
SELECT * FROM DimProduct;
SELECT * FROM FactSales;
SELECT * FROM SummaryTableQ1;
```

## ⚠️ Limitations of Mesh Join
- **Fixed partition size limits flexibility**
- **Slower with large master datasets**
- **Does not handle skewed data efficiently**

## 📈 Business Insights Enabled
- **Identify top-selling products**
- **Analyze seasonal demand**
- **Detect revenue spikes**
- **Understand customer behavior**
- **Optimize store & supplier performance**

## 📚 Learning Outcomes
- **Implemented Mesh Join algorithm**
- **Built ETL pipeline**
- **Designed Star Schema**
- **Performed OLAP analysis**
- **Integrated Java with MySQL**
- **Learned real-world data engineering**

## 👨‍💻 Author
### Shahid Ullah
### Data Scientist | FAST-NUCES

## ⭐ Show Your Support
#### If you like this project, give it a ⭐ on GitHub!
