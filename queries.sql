-- Overall KPI

-- Category Level Analysis

SELECT  COUNT(*)  FROM ecommerce_sales_data;

SELECT SUM(Sales) as total_sales, SUM(Profit) as total_profit ,  round (SUM(Profit)*1.0/SUM(Sales),2) as overall_sales_margin FROM ecommerce_sales_data;

SELECT Category, SUM(Sales) as total_sales, sum(Profit) as total_profit , round ( SUM(Profit)/SUM(SALES) , 2) AS overall_sales_margin FROM ecommerce_sales_data
 GROUP by Category
 order by  overall_sales_margin DESC;

## Region totals (sales/profit/margin)##
SELECT Region,  sum(Profit) as total_profit, sum(Sales) as total_sales,  
round(sum(profit)*1.0/sum(sales),2) as region_margin from ecommerce_sales_data
group by Region
order by total_profit DESC;

 ## Region totals (quantity/sales/profit) ##
SELECT Region, sum(Quantity) as total_quantity, sum(profit) as total_profit, sum(sales) as total_sales from ecommerce_sales_data
group by Region
order by total_quantity DESC;

 ## Region averages (avg sales/profit per order) ##
SELECT Region, round(avg(sales),2) as avg_sales_per_order , 
round( avg(profit), 2) as avg_profit_per_order
from ecommerce_sales_data
GROUP by Region
order by avg_sales_per_order DESC;
