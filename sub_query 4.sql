SELECT COUNT (*)
FROM
(SELECT a.name, o.standard_qty, o.total
FROM sales_reps s
JOIN region r
ON r.id = s.region_id
JOIN accounts a
ON a.sales_rep_id = s.id
JOIN orders o
ON a.id = o.account_id
WHERE o.total > 22591
ORDER BY 3 DESC) huge