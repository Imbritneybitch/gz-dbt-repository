SELECT orders_id,
date_date,
ROUND (SUM(revenue),2) as sum_revenue,
ROUND (SUM(quantity),2) as sum_quantity,
ROUND (SUM(purchase_cost),2) as sum_purchase_cost,
ROUND (SUM(margin),2) as sum_margin,
FROM {{ ref('int_sales_margin') }}
GROUP BY date_date, orders_id
ORDER BY date_date