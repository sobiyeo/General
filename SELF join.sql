SELECT o1.id As o1_id, o1.account_id as o1_account_id, o1.occurred_at as o1_occurred_at,
o2.id AS o2_id, o2.account_id as o2_account_id, o2.occurred_at as o2_occurred_at
FROM orders o1
LEFT JOIN orders o2
ON o1.account_id = o2.account_id
AND o2.occurred_at > o1.occurred_at
AND o2.occurred_at <= o1.occurred_at + INTERVAL '28 days'
ORDER BY o1.account_id, o1.occurred_at