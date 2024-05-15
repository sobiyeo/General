SELECT primary_poc, channel, occurred_at, accounts.name
FROM web_events
JOIN accounts
ON accounts.id = web_events.account_id
WHERE accounts.name IN ('Walmart')
LIMIT 10;