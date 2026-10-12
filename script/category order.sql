CREATE VIEW v_order_categories AS
SELECT 
    o."orderID" AS order_id,
    o."customerID" AS customer_id,
    c."categoryName" AS category_name,
    cmp.is_churn
FROM orders o
JOIN order_details od ON o."orderID" = od."orderID"
JOIN products p ON od."productID" = p."productID"
JOIN categories c ON p."categoryID" = c."categoryID"
JOIN customer_master_pipeline cmp ON o."customerID" = cmp.customer_id;

SELECT * FROM v_order_categories;