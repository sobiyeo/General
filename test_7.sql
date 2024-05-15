SELECT ac.name, w.channel
FROM accounts ac
JOIN web_events w
ON w.account_id = ac.id
WHERE ac.id = 1001
