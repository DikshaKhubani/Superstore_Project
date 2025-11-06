select region, round(sum(sales),2) as Total_Sales,
round(sum(profit),2) as Total_Profit
from superstoretb
group by region
order by Total_Sales DESC;
select category, round(sum(sales),2) as Total_Sales,
round(sum(profit),2) as Total_Profit
from superstoretb
group by category
order by Total_Sales DESC;
select segment, round(sum(sales),2) as Total_Sales,
round(sum(profit),2) as Total_Profit
from superstoretb
group by segment
order by Total_Sales DESC;
select date_format(order_date, '%y-%m') as Month,
round(sum(sales),2) as Total_Sales,
round(sum(profit),2) as Total_Profit
from superstoretb
group by date_format(order_date, '%y-%m')
order by Month;