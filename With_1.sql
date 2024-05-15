WITH events AS(
	SELECT channel, DATE_PART('day', occurred_at) AS day, COUNT (*) as event
	FROM web_events
	GROUP BY channel, 2
	ORDER BY 1)
	
SELECT channel, AVG(event) AS Average_events
FROM events
GROUP BY 1
ORDER BY 2;