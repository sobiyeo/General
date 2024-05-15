SELECT S.name, S.id, Ac.name, R.name
FROM sales_reps S
JOIN accounts Ac
ON Ac.sales_rep_id = S.id
JOIN region R
ON R.id = S.region_id
ORDER BY Ac.name
LIMIT 5;