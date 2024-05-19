# Write a query to show distinct count of fullVisitorId for every ecommerceActionType

select count(distinct fullVisitorId) as Visitor_count,
	eCommerceAction_type
from `data-to-insights.ecommerce.all_sessions`
group by eCommerceAction_type
order by eCommerceAction_type desc;
