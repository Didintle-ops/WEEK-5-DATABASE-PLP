-- 📝 Advanced SQL Queries and Aggregations Assignment
-- 👤 Student: Didintle Motshabi
-- 📚 Module: Advanced Databases
-- 📅 Submission: Wednesday, 3rd September 2025

USE salesdb;

-- -------------------------------------------------------
-- 1. 💰 Total Payment Amount per Payment Date
-- Show total payment for each date, sorted by latest date.
-- Limit results to the top 5 latest payment dates.
-- -------------------------------------------------------
SELECT 
    paymentDate,
    SUM(amount) AS total_payment
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- -------------------------------------------------------
-- 2. 📈 Average Credit Limit per Customer
-- Display customer name, country, and average credit limit.
-- Group results by customer name and country.
-- -------------------------------------------------------
SELECT 
    customerName,
    country,
    AVG(creditLimit) AS avg_credit_limit
FROM customers
GROUP BY customerName, country;

-- -------------------------------------------------------
-- 3. 🛒 Total Price of Products Ordered
-- Calculate total price as quantityOrdered * priceEach.
-- Group results by product code and quantity ordered.
-- -------------------------------------------------------
SELECT 
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- -------------------------------------------------------
-- 4. 🏦 Highest Payment Amount per Check Number
-- Display the check number and the highest payment amount.
-- -------------------------------------------------------
SELECT 
    checkNumber,
    MAX(amount) AS highest_payment
FROM payments
GROUP BY checkNumber;
