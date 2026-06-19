SELECT
    date_format(date_parse(date, '%m-%d-%y'), '%Y-%m') AS sales_month,
    COUNT(*) AS total_orders,
    SUM(amount) AS total_revenue
FROM ecommerce_sales_db.itcs6190_fatemeh_raw_data
WHERE LOWER(status) NOT LIKE '%cancel%'
  AND LOWER(status) NOT LIKE '%pending%'
GROUP BY date_format(date_parse(date, '%m-%d-%y'), '%Y-%m')
ORDER BY sales_month ASC
LIMIT 10;