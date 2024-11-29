create database PeoPle;
use PeoPle;
CREATE TABLE Person (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fullname VARCHAR(100) NOT NULL,
    job VARCHAR(50),
    birthday DATE,
    salary DECIMAL(10, 2),
    address VARCHAR(255)
);
INSERT INTO Person (fullname, job, birthday, salary, address)
VALUES
    ('Nguyen Van A', 'Engineer', '1990-01-15', 1500.00, 'Hanoi, Vietnam'),
    ('Tran Thi B', 'Doctor', '1985-05-20', 2000.00, 'Ho Chi Minh City, Vietnam'),
    ('Le Van C', 'Teacher', '1992-09-12', 1200.00, 'Da Nang, Vietnam'),
    ('Pham Thi D', 'Lawyer', '1988-11-30', 2500.00, 'Can Tho, Vietnam'),
    ('Hoang Van E', 'Accountant', '1995-06-25', 1800.00, 'Hai Phong, Vietnam'),
    ('Vo Thi F', 'Software Developer', '1993-03-10', 3000.00, 'Hanoi, Vietnam'),
    ('Dang Van G', 'Marketing Specialist', '1990-07-22', 1700.00, 'Hue, Vietnam'),
    ('Bui Thi H', 'HR Manager', '1987-04-18', 2200.00, 'Quang Ninh, Vietnam'),
    ('Nguyen Van I', 'Business Analyst', '1996-12-05', 2800.00, 'Bac Ninh, Vietnam'),
    ('Tran Thi K', 'Designer', '1991-08-29', 1900.00, 'Nha Trang, Vietnam');
