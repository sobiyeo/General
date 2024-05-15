SELECT id, account_id, standard_qty, DATE_TRUNC('month', occurred_at) AS month,
DENSE_RANK() OVER main_win AS dense_rank,
SUM(standard_qty) OVER main_win AS sum_std_qty,
COUNT(standard_qty) OVER main_win AS count_std_qty,
AVG(standard_qty) OVER main_win AS avg_std_qty,
MIN(standard_qty) OVER main_win AS min_std_qty,
MAX(standard_qty) OVER main_win AS max_std_qty

FROM orders
WINDOW main_win AS (PARTITION BY account_id ORDER BY DATE_TRUNC ('month', occurred_at))