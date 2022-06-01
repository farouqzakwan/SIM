SELECT * 
FROM parents p 
WHERE p.parent_id IN 
(
	-- find id that appear more than 1 in p1
	SELECT s.p1_id AS 'parent_id' 
	FROM students s 
	GROUP BY s.p1_id
	HAVING COUNT(*) > 1
	UNION 
	-- find id that appear more than 1 in p2
	SELECT s2.p2_id AS 'parent_id'
	FROM students s2
	GROUP BY s2.p2_id
	HAVING COUNT(*) > 1
	UNION 
	-- find id in p1 that also appear in p2
	SELECT s3.p1_id AS 'parent_id'
	FROM students s3
	inner JOIN students s4 ON s4.p2_id = s3.p1_id
);