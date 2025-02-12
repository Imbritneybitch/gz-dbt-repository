 SELECT
     o.orders_id
     ,o.date_date
     ,ROUND(o.sum_margin + s.shipping_fee - (s.logcost + s.ship_cost),2) AS operational_margin
     ,o.sum_quantity
     ,o.sum_revenue
     ,o.sum_purchase_cost
     ,o.sum_margin
     ,s.shipping_fee
     ,s.logcost
     ,s.ship_cost
 FROM {{ref("int_orders_margin")}} o
 LEFT JOIN {{ref("stg_raw__ship")}} s
     USING(orders_id)
     ORDER BY orders_id desc

