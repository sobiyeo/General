SELECT SUM (num) as Numbers, SUM(letters) as letters
FROM (SELECT CASE WHEN LEFT(name, 1) IN ('0', '1', '2', '3', '4', '5', '6', '7') THEN 1 ELSE 0 END AS num,
	  CASE WHEN LEFT(name, 1) IN ('0', '1', '2', '3', '4', '5', '6', '7') THEN 0ELSE 1 END AS letters
	  FROM accounts) t1;
