SELECT
    fulfilment,
    COUNT(*) AS total_orders,
    SUM(qty) AS total_units_sold,
    SUM(amount) AS total_revenue
FROM ecommerce_sales_db.itcs6190_fatemeh_raw_data
WHERE LOWER(status) NOT LIKE '%cancel%'
  AND LOWER(status) NOT LIKE '%pending%'
GROUP BY fulfilment
ORDER BY total_revenue DESC
LIMIT 10;