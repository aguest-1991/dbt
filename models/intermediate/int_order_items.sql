SELECT
    o.order_id
	, SUM(quantity * unit_price) AS total_revenue
FROM {{source ('northwind', 'order_details')}} od
    LEFT JOIN {{ ref('stg_orders')}} o
        ON od.order_id = o.order_id 
WHERE TRUE
GROUP BY 1