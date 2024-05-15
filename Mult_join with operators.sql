SELECT Ac.name, R.name, O.total_amt_usd/(O.total + 0.01) AS unit_price
FROM  orders O
JOIN accounts Ac
ON O.account_id = Ac.id
JOIN sales_reps S
ON S.id = Ac.sales_rep_id
JOIN region R
ON S.region_id = R.id;