SELECT 
	s.*,
	p1.name AS 'Parent 1 Name',p1.hp AS 'Parent 1 HP',
	p2.name AS 'Parent 2 Name',p2.hp AS 'Parent 2 HP'
FROM students s
LEFT JOIN parents p1 ON p1.parent_id = s.p1_id
LEFT JOIN parents p2 ON p2.parent_id = s.p2_id;