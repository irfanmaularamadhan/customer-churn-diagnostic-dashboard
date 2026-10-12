CREATE OR REPLACE VIEW customer_master_pipeline AS 
WITH maxdate AS (
    SELECT MAX("orderDate"::date) AS max_dataset_date 
    FROM orders
),
customer_aggregates AS (
    SELECT 
        c."customerID" AS customer_id,
        initcap(c."companyName") AS company_name,
        c.city AS city,
        c.country AS country,
        
        MIN(o."orderDate"::date) AS first_order_date,
        MAX(o."orderDate"::date) AS last_order_date,
        
        COUNT(DISTINCT o."orderID") AS total_transaksi,
        ROUND(SUM(od."unitPrice" * od.quantity * (1 - od.discount))::numeric, 2) AS total_belanja
    FROM customers c 
    JOIN orders o ON c."customerID" = o."customerID" 
    JOIN order_details od ON o."orderID" = od."orderID" 
    GROUP BY c."customerID", c."companyName", c.city, c.country 
)
SELECT 
    ca.*,
    (m.max_dataset_date - ca.last_order_date) AS recency_days,
    ROUND((ca.total_belanja / ca.total_transaksi)::numeric, 2) AS avg_order_value,
    CASE 
        WHEN (m.max_dataset_date - ca.last_order_date) > 90 THEN 1 
        ELSE 0 
    END AS is_churn
FROM customer_aggregates ca
CROSS JOIN maxdate m;
SELECT * FROM customer_master_pipeline;