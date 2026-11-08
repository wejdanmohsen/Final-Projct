
CREATE DATABASE Employee_DB;

USE Employee_DB;

SELECT 1+1 AS Result;

USE Employee_DB;

CREATE TABLE Employees(
Employee_ID VARCHAR(10) PRIMARY KEY,
Employee_Name VARCHAR(100),
Department VARCHAR(50),
Job_Title VARCHAR(50),
Salary DECIMAL(12,4),
Hire_Date DATE,
City VARCHAR(50)
);

SELECT * FROM Employees;


USE Employee_DB;
ALTER TABLE Employees
ADD COLUMN Email VARCHAR(100);

USE Employee_DB;

INSERT INTO Employees (Employee_ID, Employee_Name, Department, Job_Title, Salary, Hire_Date, City, Email)
Values 
('EMP1024', 'Ahmed Ali', 'IT', 'Software Developer', 8500.00, '2022-03-15', 'Riyadh', 'ahmed@email.com'),
('EMP1178', 'Sara Mohammed', 'HR', 'HR Specialist', 6500.00, '2021-07-10', 'Jeddah', 'sara@email.com'),
('EMP1235', 'Khalid Saad', 'Finance', 'Accountant', 7200.00, '2020-11-01', 'Dammam', 'khalid@email.com'),
('EMP1310', 'Mona Fahad', 'Marketing', 'Marketing Specialist', 6800.00, '2023-01-20', 'Jeddah', NULL),
('EMP1452', 'Omar Yusuf', 'IT', 'Data Analyst', 9200.00, '2019-05-12', 'Riyadh', 'omar@email.com'),
('EMP1537', 'Laila Hassan', 'Sales', 'Sales Executive', 6000.00, '2022-09-18', 'Makkah', 'laila@email.com'),
('EMP1689', 'Faisal Nasser', 'IT', 'System Administrator', 7800.00, '2020-02-25', 'Riyadh', 'faisal@email.com'),
('EMP1744', 'Aisha Salem', 'HR', 'Recruitment Officer', 5900.00, '2024-04-08', 'Jeddah', 'aisha@email.com'),
('EMP1862', 'Mohammed Adel', 'Finance', 'Financial Analyst', 8800.00, '2021-12-14', 'Dammam', 'mohammed@email.com'),
('EMP1931', 'Amal Tariq', 'Marketing', 'Content Specialist', 5400.00, '2023-06-30', 'Riyadh', NULL);


-- SELECTE

USE Employee_DB;

SELECT * FROM Employees;

SELECT Employee_Name, Department, Salary FROM Employees;

USE Employee_DB;

SELECT Employee_Name As Employee , Salary As Manthly_Salary FROM Employees; 

SELECT DISTINCT Department FROM Employees;

SELECT Employee_ID, Employee_Name, Job_Title FROM Employees;


-- WHERE

SELECT * FROM Employees 
WHERE Salary > 7000;

SELECT * FROM Employees
WHERE City = 'Jeddah';

SELECT * FROM Employees
WHERE Salary BETWEEN 5000 AND 8000;

SELECT * FROM Employees 
WHERE Department = 'IT' OR Department = 'HR';

SELECT * FROM Employees 
WHERE Employee_Name LIKE 'A%';

SELECT * FROM Employees 
WHERE Department = 'IT' AND Salary > 8000;

SELECT * FROM Employees 
WHERE NOT Department = 'Marketing';

SELECT * FROM Employees 
WHERE City IN ('Jeddah','Riyadh');


-- NULL 

SELECT * FROM Employees 
WHERE Email IS NULL;

SELECT * FROM Employees 
WHERE Email IS NOT NULL;

SELECT Employee_ID, Employee_Name, Email
FROM Employees
WHERE Email IS NULL;

SELECT COUNT(*)
FROM Employees
WHERE Email IS NULL;

-- 

SELECT * FROM Employees 
ORDER BY Salary ASC;

SELECT * FROM Employees 
ORDER BY Salary DESC;

SELECT * FROM Employees 
ORDER BY Salary DESC LIMIT 3;

SELECT * FROM Employees 
ORDER BY Salary ASC LIMIT 5;

SELECT * FROM Employees 
ORDER BY Department ASC;

SELECT *FROM Employees
ORDER BY Department ASC, Salary DESC;

SELECT * FROM Employees
ORDER BY Hire_Date DESC LIMIT 5;

-- Calculated 

SELECT
    Employee_Name,
    Salary,
    Salary * 0.10 AS raise_amount,
    Salary + (Salary * 0.10) AS salary_after_raise,
    Salary * 12 AS annual_salary
FROM Employees;


-- Aggregate Functions

SELECT COUNT(*) AS total_employees
FROM Employees;

SELECT SUM(Salary) AS total_Salaries
From Employees;

SELECT AVG(Salary) AS average_salary
FROM Employees;

SELECT MAX(Salary) AS highest_salary
FROM Employees;

SELECT MIN(Salary) AS lowest_salary
FROM Employees;

SELECT COUNT(Department) AS it_employees_count
FROM Employees 
WHERE Department = 'IT';

SELECT AVG(Salary)
FROM Employees
WHERE Department = 'HR';

SELECT COUNT(*) 
FROM Employees
WHERE City = 'Jeddah';

-- Update 

SELECT * FROM Employees
WHERE Employee_ID = 'EMP1178';

UPDATE Employees 
SET Salary = 7000
WHERE Employee_ID = 'EMP1178';

SELECT * FROM Employees
WHERE Employee_ID = 'EMP1178';

SELECT * FROM Employees
WHERE Employee_ID = 'EMP1452';

UPDATE Employees
SET City = 'Jeddah'
WHERE Employee_ID = 'EMP1452';

SELECT * FROM Employees
WHERE Employee_ID = 'EMP1452';

SELECT * FROM Employees
WHERE Employee_ID = 'EMP1310';

UPDATE Employees
SET Salary = 7200 , 
	City = 'Riyadh'
WHERE Employee_ID = 'EMP1310';

SELECT * FROM Employees
WHERE Employee_ID = 'EMP1310';

-- DELETE

SELECT * FROM Employees
WHERE Employee_ID = 'EMP1931';

DELETE FROM Employees 
WHERE Employee_ID = 'EMP1931';

SELECT * FROM Employees
WHERE Employee_ID = 'EMP1931';

-- Difference Between DELETE and DROP:
-- - DELETE: Removes one or more records from a table without deleting the table itself.
-- - DROP TABLE: Deletes the entire table, including its data and structure.