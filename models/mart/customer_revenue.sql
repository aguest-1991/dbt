SELECT
    c.company_name 
    , SUM(total_revenue) AS company_revenue
FROM {{ ref('int_order_items')}} o 
    LEFT JOIN {{ ref('stg_orders')}} s
        ON o.order_id = s.order_id 
    LEFT JOIN {{ ref('stg_customers')}} c 
        ON s.customer_id = c.customer_id
WHERE TRUE 
GROUP BY 1