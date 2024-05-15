SELECT channel, COUNT (*)
FROM
(SELECT a.name, o.total_amt_usd, channel
FROM sales_reps s
JOIN region r
ON r.id = s.region_id
JOIN accounts a
ON a.sales_rep_id = s.id
JOIN orders o
ON a.id = o.account_id
JOIN web_events w
ON a.id = w.account_id
WHERE a.name = 'Pacific Life'
ORDER BY 2 DESC) as Events
GROUP BY channel
