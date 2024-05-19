# Find top 5 product details for title 'Page' from all_sessions table

SELECT COUNT(*) as product_views,
v2ProductName as Product_name
FROM `data-to-insights.ecommerce.all_sessions`
WHERE type = 'PAGE'
GROUP BY Product_name
ORDER BY product_views DESC
LIMIT 5;