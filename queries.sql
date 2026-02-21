-- Overall KPI

-- Category Level Analysis

SELECT  COUNT(*)  FROM ecommerce_sales_data;

SELECT SUM(Sales) as total_sales, SUM(Profit) as total_profit ,  round (SUM(Profit)*1.0/SUM(Sales),2) as overall_sales_margin FROM ecommerce_sales_data;

SELECT Category, SUM(Sales) as total_sales, sum(Profit) as total_profit , round ( SUM(Profit)/SUM(SALES) , 2) AS overall_sales_margin FROM ecommerce_sales_data
 GROUP by Category
 order by  overall_sales_margin DESC;