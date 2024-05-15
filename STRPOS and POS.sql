 SELECT primary_poc, LEFT(primary_poc, POSITION(' ' IN primary_poc)) AS first_name, 
RIGHT(primary_poc, LENGTH(primary_poc) - STRPOS(primary_poc, ' ')) AS last_name
 
 FROM accounts