WITH t1 AS 
	(SELECT s.name rep_name, SUM(o.total_amt_usd) AS total_amt, r.name region_name
FROM orders o
JOIN accounts ac
ON o.account_id = ac.id
JOIN sales_reps s
ON ac.sales_rep_id = s.id
JOIN region r
ON s.region_id = r.id
GROUP BY 1,3
ORDER BY 2 DESC),

t2 AS (
	SELECT region_name, MAX(total_amt) total_amt
	FROM t1
	GROUP BY 1)
	
SELECT t1.rep_name, t1.region_name, t1.total_amt
FROM t1
JOIN t2
ON  t1.region_name =  t2.region_name AND t1.total_amt = t2.total_amt
