SELECT r.name As RegionName, ac.name AS RegionName, O.total_amt_usd/(total+0.01) AS unitPrice
FROM orders o
JOIN accounts ac
ON o.account_id = ac.id
JOIN sales_reps s
ON ac.sales_rep_id = s.id
JOIN region r
ON s.region_id = r.id
WHERE o.standard_qty > 100 
