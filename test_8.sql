SELECT ac.name, w.occurred_at, o.total, o.total_amt_usd
FROM accounts ac
JOIN web_events w
ON w.account_id = ac.id
JOIN orders o
ON ac.id = o.account_id
WHERE w.occurred_at BETWEEN '01-01-2015' AND '01-01-2016'
