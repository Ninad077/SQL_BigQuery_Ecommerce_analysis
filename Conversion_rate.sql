# Find conversion rate, products that do not contain Frisbee and sum of total quantities should be greater than 1000

SELECT COUNT(*) as product_views,
v2ProductName as Product_name,
Count(productQuantity) as orders,
Sum(productQuantity) as Total_orders,
Count(productQuantity)/COUNT(*) as conversion_rate,
from `data-to-insights.ecommerce.all_sessions`
where lower(v2ProductName) not like '%frisbee%'
group by Product_name
having Total_orders > 1000
order by conversion_rate desc
limit 10;


