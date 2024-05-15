SELECT SUM(total_amt_usd) AS totalDOlla , DATE_PART('month',occurred_at)
FROM orders
GROUP BY DATE_PART('month',occurred_at)
ORDER BY 2 DESC
LIMIT 1