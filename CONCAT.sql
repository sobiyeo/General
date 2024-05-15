WITH t1 as
	(SELECT LEFT(name, POSITION(' ' IN name)) as first_name, RIGHT(name, LENGTH(name) - STRPOS(name, ' ')) as last_name, name AS name
	FROM accounts)
SELECT first_name, last_name, CONCAT(first_name, '.', last_name, '@', REPLACE(name, ' ', ''), '.com' )
	 FROM t1;