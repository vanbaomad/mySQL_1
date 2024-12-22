-- 1. Lấy danh sách các quốc gia duy nhất.
use people;
SELECT country FROM person;
SELECT DISTINCT country FROM person ORDER BY country;

-- 2. Sắp xếp danh sách người theo tên đầy đủ (fullname) theo thứ tự tăng dần.
SELECT fullname 
FROM person
ORDER BY fullname ASC;
-- ASC - ascending
-- DESC - descending

-- 3. Sắp xếp danh sách người theo nghề nghiệp (job) theo thứ tự giảm dần.
SELECT  * 
FROM person
ORDER BY job DESC;

-- 4. Lấy danh sách các nghề nghiệp (job) duy nhất mà người trong bảng đang làm.
SELECT DISTINCT job FROM person;

-- 5. Đếm số người theo từng quốc gia và sắp xếp theo số lượng người giảm dần.
SELECT * FROM person ORDER BY country;
SELECT COUNT(*) AS num_of_person FROM person;

SELECT COUNT(*) AS num_of_person, country
FROM person
GROUP BY country
ORDER BY num_of_person DESC;

-- 6. Tính tổng lương (salary) của tất cả người trong bảng.
SELECT SUM(salary) AS total_salary 
FROM person;

-- 7. Tính tổng lương trung bình của người theo từng nghề nghiệp (job) và sắp xếp theo lương trung bình tăng dần.
SELECT job, AVG(salary) AS average_salary
FROM person
GROUP BY job
ORDER BY average_salary;

-- 8. Lấy ra người có lương (salary) lớn hơn 50000 và ngày sinh (birthday) nằm trong khoảng '1990-01-01' đến '1995-12-31'.
SELECT *
FROM person
WHERE salary > 5000 AND birthday BETWEEN '1990-01-01' AND '1995-12-31';

-- 9. Lấy ra người có lương (salary) lớn hơn 60000 và nghề nghiệp (job) là 'Developer' hoặc 'Engineer'.
SELECT *
FROM person
WHERE salary > 6000 AND job = 'Developer' OR job = 'Engineer';

SELECT *
FROM person
WHERE salary > 6000 AND job IN ('Developer', 'Engineer');

-- 10. Lấy ra danh sách các nghề nghiệp (job) duy nhất mà có ít nhất 33 người làm.
SELECT job, COUNT(*) AS num_of_person
FROM person
GROUP BY job
HAVING num_of_person > 33
ORDER BY num_of_person;

-- 11. Lấy ra người nam (gender = 'Male') có lương (salary) cao nhất.
SELECT *
FROM person
WHERE gender = 'M' 
ORDER BY salary DESC
LIMIT 1;

SELECT *
FROM person
WHERE salary = (SELECT MAX(salary) FROM person WHERE gender = 'M');

-- 12. Lấy ra người nữ (gender = 'Female') có lương (salary) thấp nhất.

-- 13. Lấy danh sách người (không trùng lặp) theo thứ tự tên đầy đủ tăng dần.
SELECT DISTINCT fullname FROM person ORDER BY fullname;

-- 14. Đếm số người sinh vào các tháng khác nhau và sắp xếp theo thứ tự số lượng tăng dần.
SELECT MONTH(birthday) AS birth_month, COUNT(*) AS num_of_person
FROM person
GROUP BY birth_month
ORDER BY num_of_person ASC;

-- 15. Tính tổng lương (salary) của tất cả người trong bảng.
SELECT SUM(salary) as tong_luong
FROM person;