use people;
select * from person;
--  cau 1
SELECT DISTINCT job
FROM person;
-- cau 2
SELECT *
FROM person
WHERE job = 'Manager' AND salary > 70000;
--  cau 3
SELECT *
FROM person
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) BETWEEN 25 AND 35;
-- cau 4
SELECT country, COUNT(*) AS total_people
FROM person
GROUP BY country;
-- cau 5
SELECT gender, COUNT(*) AS total
FROM person
GROUP BY gender;
-- cau 6
SELECT job, country, COUNT(*) AS total_people
FROM person
GROUP BY job, country
HAVING COUNT(*) > 1;
-- cau 7
SELECT *
FROM person
ORDER BY birthday DESC;
-- cau 8
SELECT job, COUNT(*) AS total_people
FROM person
GROUP BY job
HAVING COUNT(*) >= 3;






 


