SELECT  region_name, MAX (total_amt)
FROM 
(SELECT s.name rep_name, r.name region_name, SUM(o.total_amt_usd) total_amt
FROM sales_reps s
JOIN region r
ON r.id = s.region_id
JOIN accounts a
ON a.sales_rep_id = s.id
JOIN orders o
ON a.id = o.account_id
GROUP BY 1,2
ORDER BY 3 DESC) AS Times
GROUP BY 1