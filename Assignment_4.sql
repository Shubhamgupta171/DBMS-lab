CREATE TABLE EMPLOYEE (
    Emp_no INT PRIMARY KEY,
    E_name VARCHAR(50),
    E_address VARCHAR(100),
    E_ph_no VARCHAR(15),
    Dept_no INT,
    Dept_name VARCHAR(50),
    Job_id VARCHAR(10),
    Designation VARCHAR(50),
    Salary DECIMAL(10, 2),
    Join_date DATE
);

INSERT INTO EMPLOYEE (Emp_no, E_name, E_address, E_ph_no, Dept_no, Dept_name, Job_id, Designation, Salary, Join_date)
VALUES
    (1, 'Harsh Kumar', '123 Aangan Apartments, Delhi', '9876543210', 10, 'HR', 'MGR', 'Manager', 60000.00, '2022-03-06'),
    (2, 'Shubham Sharma', '456 Green Valley, Mumbai', '9876543211', 20, 'IT', 'PROF', 'IT Professional', 70000.00, '2022-03-07'),
    (3, 'Amit Gupta', '789 Lotus Lane, Bangalore', '9876543212', 30, 'SALES', 'CLERK', 'Clerk', 40000.00, '2022-03-08'),
    (4, 'Ananya Singh', '101 Rose Villa, Kolkata', '9876543213', 20, 'IT', 'ANALYST', 'Analyst', 80000.00, '2022-03-09'),
    (5, 'Rohit Verma', '202 Tulip Towers, Chennai', '9876543214', 30, 'SALES', 'MGR', 'Manager', 65000.00, '2022-03-10'),
    (6, 'Neha Patel', '303 Orchid Residency, Hyderabad', '9876543215', 10, 'HR', 'CLERK', 'Clerk', 45000.00, '2022-03-11'),
    (7, 'Sanjay Joshi', '404 Jasmine Gardens, Pune', '9876543216', 20, 'IT', 'ANALYST', 'Analyst', 75000.00, '2022-03-12'),
    (8, 'Harini Reddy', '505 Maple Heights, Ahmedabad', '9876543217', 30, 'SALES', 'CLERK', 'Clerk', 48000.00, '2022-03-13');

1.SELECT Emp_no, E_name, Salary
  FROM EMPLOYEE
  WHERE Designation = 'MANAGER';

2. SELECT *
   FROM EMPLOYEE
   WHERE Salary > (SELECT MAX(Salary) FROM EMPLOYEE WHERE Designation = 'IT PROF');

3.SELECT *
  FROM EMPLOYEE
  WHERE Join_Date > '1981-01-01'
  ORDER BY Designation ASC;

4.SELECT Emp_no, E_name, DATEDIFF(NOW(), Join_Date) AS Experience, Salary / 30 AS Daily_Salary
  FROM EMPLOYEE;

5.SELECT *
  FROM EMPLOYEE
  WHERE Designation IN ('CLERK', 'ANALYST');

6.SELECT *
  FROM EMPLOYEE
  WHERE Joining_Date IN ('1981-05-01', '1981-12-03', '1981-12-17', '1980-01-19');

7. SELECT *
   FROM EMPLOYEE
   WHERE Dept_no IN (10, 20);

8.SELECT E_name
  FROM EMPLOYEE
  WHERE E_name LIKE 'S%';

9.SELECT E_name, LEFT(E_name, 5) AS Short_Name
  FROM EMPLOYEE
  WHERE E_name LIKE 'H%';

10.SELECT *
   FROM EMPLOYEE
   WHERE Designation NOT IN ('PRESIDENT', 'MGR')
   ORDER BY Salary ASC;
