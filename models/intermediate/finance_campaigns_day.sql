 SELECT
    date_date
    , SUM(CAST((operational_margin - ads_cost) AS FLOAT64)) AS ads_margin
    , SUM(average_basket) AS average_basket
    , SUM(operational_margin) AS operational_margin
    , SUM(ads_cost) AS ads_cost
    , SUM(ads_impression) AS ads_impression
    , SUM(ads_click) AS ads_click
    , SUM(quantity) AS quantity
    , SUM(revenue) AS revenue
    , SUM(purchase_cost) AS purchase_cost
    , SUM(margin) AS margin
    , SUM(shipping_fee) AS shipping_fee
    , SUM(logcost) AS logcost
    , SUM(ship_cost) AS ship_cost
 FROM {{ref("int_campaigns_day")}} c
 INNER JOIN {{ref("finance_days")}} f
     USING(date_date)
 GROUP BY date_date
 ORDER BY date_date desc