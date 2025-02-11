select *
    , quantity * purchase_price AS purchase_cost
    , ROUND(revenue - (quantity * purchase_price), 2) AS margin
from {{ ref("stg_raw__sales") }} s
left join {{ ref("stg_raw__product") }} p
    on s.products_id = p.products_id