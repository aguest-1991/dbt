SELECT
    od.order_id
	, SUM(quantity * unit_price) AS total_revenue
FROM {{ref ('stg_order_details') }} od
WHERE TRUE
GROUP BY 1