SELECT s.name,s.hp,'Students' AS type
FROM students s
UNION 
SELECT p.name,p.hp, 'Parents' AS type
FROM parents p;