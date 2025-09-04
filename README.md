# 📝 Advanced SQL Queries and Aggregations Assignment

## 👤 Student Information
- **Name:** [Your Name]
- **Course:** [Course Name, e.g., Bachelor of Computer Science Honours]
- **Module:** [Module Name, e.g., Advanced Databases]
- **Assignment:** Advanced SQL Queries and Aggregations
- **Submission Date:** 🗓️ Wednesday, 3rd September 2025

---

## 📚 Overview
This repository contains the SQL queries for the **Advanced SQL Queries and Aggregations Assignment**.  
The goal of this assignment is to demonstrate the ability to use:

- 🔹 Aggregate functions (`SUM()`, `AVG()`, `MAX()`)  
- 🔹 Grouping (`GROUP BY`) and sorting (`ORDER BY`)  
- 🔹 Conditional aggregation and filtering  
- 🔹 Limiting results (`LIMIT`)  

The assignment uses the provided database **`salesdb`**.

---

## 🗄️ Database Schema

### 1. **customers**
| Column Name      | Data Type        | Description                     |
|-----------------|----------------|---------------------------------|
| customerNumber   | INT             | Unique customer identifier      |
| customerName     | VARCHAR(100)    | Name of the customer            |
| country          | VARCHAR(50)     | Customer country                |
| creditLimit      | DECIMAL(10,2)   | Credit limit assigned           |

### 2. **payments**
| Column Name      | Data Type        | Description                     |
|-----------------|----------------|---------------------------------|
| customerNumber   | INT             | Customer making the payment     |
| checkNumber      | VARCHAR(20)     | Payment check number            |
| paymentDate      | DATE            | Date of payment                 |
| amount           | DECIMAL(10,2)   | Amount paid                     |

### 3. **orderdetails**
| Column Name      | Data Type        | Description                     |
|-----------------|----------------|---------------------------------|
| orderNumber      | INT             | Order identifier                |
| productCode      | VARCHAR(20)     | Product identifier              |
| quantityOrdered  | INT             | Quantity ordered                |
| priceEach        | DECIMAL(10,2)   | Price per unit                  |

---

## 💻 SQL Queries

1. **💰 Total Payment Amount per Payment Date**  
   - Show total payment for each date, sorted by latest date.  
   - Limit results to the top 5 latest payment dates.

2. **📈 Average Credit Limit per Customer**  
   - Display customer name, country, and average credit limit.  
   - Group results by customer name and country.

3. **🛒 Total Price of Products Ordered**  
   - Calculate total price as `quantityOrdered * priceEach`.  
   - Group results by product code and quantity ordered.

4. **🏦 Highest Payment Amount per Check Number**  
   - Display the check number and the highest payment amount for that check number.

All queries are provided in the `answers.sql` file.

---

## ⚙️ How to Use

1. Open **MySQL Workbench** or any SQL client.  
2. Run the `salesdb` creation script (if not already provided).  
3. Execute the queries in `answers.sql` to view the results.  

---

## 📝 Notes

- Ensure the queries are executed in the **`salesdb` database**.  
- Do **not modify** the database schema.  
- Use the repository provided by the trainer for submission.  
- Submission deadline: **🗓️ Wednesday, 3rd September 2025, 5:00 PM EAT**.

---

## 👨‍💻 Author
[Your Name]  
[Your Email or Contact Info, if required]
