# Use 'With' clause to define unique_products_viewed_by_person

WITH unique_products_viewed_by_person as(
  SELECT fullVisitorId,v2ProductName as Product_name
  FROM `data-to-insights.ecommerce.all_sessions`
  WHERE type = 'PAGE'
  GROUP BY fullVisitorId,Product_name
)


# Find top 5 product details for type 'Page' from unique_products_viewed_by_person

SELECT COUNT(*) as product_views,
Product_name
FROM unique_products_viewed_by_person
GROUP BY Product_name
ORDER BY product_views DESC
LIMIT 5;