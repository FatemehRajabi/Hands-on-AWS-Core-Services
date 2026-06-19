WITH sku_revenue AS (
    SELECT
        category,
        sku,
        SUM(amount) AS total_revenue,
        SUM(qty) AS total_units_sold
    FROM ecommerce_sales_db.itcs6190_fatemeh_raw_data
    WHERE LOWER(status) NOT LIKE '%cancel%'
      AND LOWER(status) NOT LIKE '%pending%'
      AND qty > 0
    GROUP BY category, sku
),
ranked_skus AS (
    SELECT
        category,
        sku,
        total_revenue,
        total_units_sold,
        ROW_NUMBER() OVER (
            PARTITION BY category
            ORDER BY total_revenue DESC
        ) AS sku_rank
    FROM sku_revenue
)
SELECT
    category,
    sku,
    total_revenue,
    total_units_sold,
    sku_rank
FROM ranked_skus
WHERE sku_rank <= 5
ORDER BY category, sku_rank
LIMIT 10;