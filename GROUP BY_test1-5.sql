SELECT ac.name, w.channel, w.occurred_at, ac.primary_poc
FROM accounts ac
JOIN web_events w
ON ac.id = w.account_id
ORDER BY w.occurred_at DESC
LIMIT 10