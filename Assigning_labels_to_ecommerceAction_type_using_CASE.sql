# According to the mapping on eCommerceAction_type, add a new column using CASE statement.

select count(distinct fullVisitorId) as Visitor_count,
	eCommerceAction_type,
  CASE eCommerceAction_type
  when '0' then 'Unknown'
  when '1' then 'Product detail views'
  when '2' then 'Click through of product lists'
  when '3' then 'Add product(s) to cart'
  when '4' then 'Remove product(s) from cart'
  when '5' then 'Check out'
  when '6' then 'Completed purchase'
  when '7' then 'Refund of purchase'
  when '8' then 'Checkout options'
  else 'Error'
  END as eCommerceAction_type_label
from `data-to-insights.ecommerce.all_sessions`
group by eCommerceAction_type
order by eCommerceAction_type desc;