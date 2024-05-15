SELECT AVG (poster_qty) as poster, AVG (gloss_qty) as gloss, AVG (standard_qty) as stand, SUM(total_amt_usd) make
FROM orders
WHERE DATE_TRUNC('month', occurred_at) =
	(SELECT DATE_TRUNC('month', MIN(occurred_at)) AS month
	FROM orders)
GROUP BY occurred_at
ORDER BY occurred_at
