# Find unique visitors for channelGrouping from all sessions table.

SELECT COUNT(DISTINCT fullVisitorID) as unique_visitors,channelGrouping
FROM `data-to-insights.ecommerce.all_sessions`
GROUP BY channelGrouping
ORDER BY channelGrouping desc;