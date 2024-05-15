SELECT COALESCE (o.id, a.id) filled_id, a.name, a.website, a.long, a.lat, 
a.primary_poc, COALESCE(o.account_id, a.id), COALESCE (o.standard_qty, 0) standard_qty, COALESCE (o.gloss_qty, 0) gloss_qty,
COALESCE(o.poster_qty, 0) poster_qty, COALESCE(o.total, 0) total, COALESCE (o.standard_amt_usd, 0) standard_amt_usd,
COALESCE(o.gloss_amt_usd) gloss_amt_usd
FROM accounts a
LEFT JOIn orders o
ON a.id = o.account_id
WHERE o.total IS NULL