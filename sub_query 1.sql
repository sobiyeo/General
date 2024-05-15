SELECT channel, AVG(happen)
FROM 
(SELECT channel, DATE_PART('day', occurred_at) AS day, COUNT(*) AS happen
FROM web_events
 GROUP BY channel,2
ORDER BY 1) sub
GROUP BY channel
ORDER BY 2 DESC
 