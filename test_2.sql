SELECT r.name AS regionName, s.name AS RepsName, ac.name AccountName
FROM accounts ac
JOIN sales_reps s
ON ac.sales_rep_id = s.id
JOIN region r
ON s.region_id = r.id
WHERE r.name IN ('Midwest') AND s.name LIKE 'S%'
ORDER BY ac.name
LIMIT 5;
