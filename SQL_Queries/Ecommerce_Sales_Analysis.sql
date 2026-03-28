CREATE DATABASE ecommerce;
USE ecommerce;
SHOW TABLES;
CREATE TABLE sales (
    Row_ID INT,
    Order_ID VARCHAR(50),
    Order_Date VARCHAR(20),
    Ship_Date VARCHAR(20),
    Ship_Mode VARCHAR(50),
    Customer_ID VARCHAR(50),
    Customer_Name VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Postal_Code VARCHAR(20),
    Region VARCHAR(50),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name VARCHAR(200),
    Sales FLOAT,
    Quantity INT,
    Discount FLOAT,
    Profit FLOAT
);
SELECT * FROM sales;
SELECT SUM(Sales) AS Total_Sales FROM sales;
SELECT Region, SUM(Sales) AS Total_Sales
FROM sales 
GROUP BY Region;
SELECT Category, SUM(Sales)
FROM sales
GROUP BY Category;
SELECT `Customer Name`, SUM(Sales) AS Total_Sales
FROM sales
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT Category, SUM(Profit)AS Total_Profit
FROM sales
GROUP BY Category
ORDER BY Total_Profit DESC;
SELECT Region, SUM(Profit)AS Total_Profit
FROM sales
GROUP BY Region
ORDER BY Total_Profit DESC;
SELECT `Product Name`, SUM(Profit) AS Total_Profit
FROM sales
GROUP BY `Product Name`
HAVING Total_Profit < 0
ORDER BY Total_Profit ASC;
