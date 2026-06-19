SELECT
    category,
    COUNT(*) AS total_orders
FROM ecommerce_sales_db.itcs6190_fatemeh_raw_data
GROUP BY category
ORDER BY total_orders DESC
LIMIT 10;