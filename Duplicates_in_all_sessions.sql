# Checking duplicates in 'all_sessions' dataset

SELECT fullVisitorId, visitId, date, time,v2ProductName, productSKU, type, eCommerceAction_type, eCommerceAction_step, eCommerceAction_option, transactionRevenue, transactionId, COUNT(*) as row_count
FROM `data-to-insights.ecommerce.all_sessions`
GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12 # One can also specify column index
HAVING row_count >1
