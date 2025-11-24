-- 1) What were the order counts, sales, and AOV for Macbooks sold in North America for each quarter across all years?
-- Join the geo_lookup table on the customers table using country_code. Join the customers table on the orders table using customer_id. Truncate purchase_ts to beginning of each quarter. Count the distinct order IDs, sum usd_price, and average usd_price, then filter using where clause to product_name like %Macbook and region = NA. Group by quarter & product name. Order by quarter.
SELECT product_name,
  DATE_TRUNC(purchase_ts,quarter) AS qtr_yr,
  COUNT(orders.id) AS order_count,
  ROUND(SUM(usd_price),2) AS sales,
  ROUND(AVG(usd_price),2) AS AOV
FROM core.orders
LEFT JOIN core.customers
  ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup
  ON customers.country_code = geo_lookup.country
WHERE product_name LIKE 'Macbook%'
  AND region = 'NA'
GROUP BY 1, 2
ORDER BY 2;

-- 2) For products purchased in 2022 on the website or products purchased on mobile in any year, which region has the average highest time to deliver?
-- Select distinct purchase_platform from orders table.
SELECT DISTINCT purchase_platform
FROM core.orders;

-- Join geo_lookup to customers table using country_code. Join customers to orders table using customer_id. Join orders to order_status table using order_id. Calculate days to deliver using date_diff subtracting delivery_ts from purchase_ts in the order status table. Select region and average days_to_deliver rounded to 2 decimals, sorted from largest to smallest. Filter to 2022 & website or mobile in any year. Group by region & limit to 1 result.

SELECT geo_lookup.region,
  ROUND(AVG(DATE_DIFF(delivery_ts, order_status.purchase_ts, day)),2) AS days_to_deliver
FROM core.geo_lookup
LEFT JOIN core.customers
  ON geo_lookup.country = customers.country_code
LEFT JOIN core.orders
  ON customers.id = orders.customer_id
LEFT JOIN core.order_status
  ON orders.id = order_status.order_id
WHERE (orders.purchase_platform = 'website'
  AND EXTRACT(year FROM order_status.purchase_ts) = 2022)
  OR (orders.purchase_platform = 'mobile app')
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

-- 3) What was the refund rate and refund count for each product overall?
-- Join orders & order_status tables. Clean product_name using case when. Create boolean is_refund column using refund_ts column where 0 if no refund and 1 if there is a refund timestamp present. Average this column to get refund rate, rounded to 2 decimals, and sum to get refund count.

WITH refunds_cte AS (
  SELECT CASE WHEN order_status.refund_ts IS NOT NULL THEN 1
    ELSE 0
    END AS is_refund,
    order_id
  FROM core.order_status
)

SELECT CASE WHEN orders.product_name LIKE '%gaming%' THEN '27in 4K gaming monitor'
    ELSE orders.product_name
    END AS product_name_clean,
  ROUND(AVG(is_refund)*100,2) AS refund_rate,
  SUM(is_refund) AS refund_count
FROM core.orders
LEFT JOIN refunds_cte
  ON orders.id = refunds_cte.order_id
GROUP BY 1
ORDER BY 1;

-- 4) Within each region, what is the most popular product? 
-- Join geo_lookup table on customers table using country_code and customers table on orders table using customer_id. Select region & product and count the number of distinct order ids to get order counts. Rank these using row number, partitioned by region & product & ranked by order counts. Nest this in a CTE and select all columns where rank = 1.

WITH regional_rank_cte AS (
  SELECT geo_lookup.region,
    orders.product_name,
    COUNT (DISTINCT orders.id) AS order_count,
    ROW_NUMBER() OVER(PARTITION BY geo_lookup.region ORDER BY COUNT (DISTINCT orders.id) DESC) AS regional_rank
  FROM core.geo_lookup
  LEFT JOIN core.customers
    ON geo_lookup.country = customers.country_code
  LEFT JOIN core.orders
    ON customers.id = orders.customer_id
  GROUP BY 1, 2
)

SELECT *
FROM regional_rank_cte
WHERE regional_rank = 1 AND product_name IS NOT NULL;

-- 5) How does the time to make a purchase differ between loyalty customers vs. non-loyalty customers? 
-- Join customers table to orders table using customer_id. Calculate time_to_purchase as date_diff between purchase_ts and created_on columns using days. Average this column and group by loyalty_program. Round results to 2 decimal places.
SELECT loyalty_program,
  ROUND(AVG(DATE_DIFF(purchase_ts, created_on, day)),2) AS avg_time_to_purchase
FROM core.customers
LEFT JOIN core.orders
  ON customers.id = orders.customer_id
GROUP BY 1;

-- 6. What was the number of Apple orders per country in 2022, assuming that orders with null countries are from the United States?
-- Join geo_lookup on customers and orders on customers. Impute nulls in country in geo_lookup with US using coalesce, creating a new column. Group by country and count distinct id in orders table, also selecting country column from geo_lookup. Filter results to where product_name includes 'Apple' or 'Macbook'.

SELECT COALESCE(geo_lookup.country, 'US') country_clean,
  geo_lookup.country,
  COUNT (DISTINCT orders.id) order_count
FROM core.customers
LEFT JOIN core.geo_lookup
  ON customers.country_code = geo_lookup.country
LEFT JOIN core.orders
  ON customers.id = orders.customer_id
WHERE LOWER(orders.product_name) LIKE 'apple%'
  OR LOWER(orders.product_name) LIKE 'macbook%'

GROUP BY 1, 2;
