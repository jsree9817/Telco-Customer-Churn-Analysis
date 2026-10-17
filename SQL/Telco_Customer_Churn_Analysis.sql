create database customer_churn
use customer_churn

select * from customer_churn
select count(*) as Total_Customers
from customer_churn

select churn,
count(*) as Customer_Count
from customer_churn
group by churn;

SELECT churn,
    COUNT(*) AS Customer_Count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_churn), 2) AS Percentage
FROM customer_churn
GROUP BY Churn;