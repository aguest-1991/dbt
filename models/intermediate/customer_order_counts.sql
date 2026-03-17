select
    c.customer_id,
    c.company_name,
    count(o.order_id) as total_orders
from {{ ref('stg_customers') }} c
left join {{ ref('stg_orders') }} o
    on c.customer_id = o.customer_id
group by 1,2