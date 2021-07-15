SELECT  count(c) as new_customers, sum(t.transaction_amount) as total_spent, sum(t.transaction_amount)/count(c) as cac, TIMESTAMP_TRUNC(TIMESTAMP(c.date_first_sale), MONTH) as MONTH 
FROM `netsuite_cac.customers` as c
FULL JOIN `netsuite_cac.transaction_details` as t
ON TIMESTAMP_TRUNC(TIMESTAMP(c.date_first_sale), MONTH) = TIMESTAMP_TRUNC(TIMESTAMP(t.transaction_date), MONTH)
GROUP BY MONTH
ORDER BY MONTH
