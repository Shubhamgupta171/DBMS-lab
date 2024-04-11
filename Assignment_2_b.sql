CREATE table employee(
    emp_no int(15),
    e_name varchar(55),
    e_address VARCHAR(40),
    e_ph_no varchar(55),
    dept_no VARCHAR(30),
    dept_name varchar(55),
    job_id char(20),
    salary varchar(20)
);


INSERT into employee(emp_no, e_name, e_address, e_ph_no, dept_no, dept_name, job_id, salary) VALUES
(1, 'Shubham', 'Allahabad', 9999911111, 10001, 'CSE', 101, 100000 );


SELECT * from employee;


alter table employee
add hiredate DATE;

-- update employee set hiredate = '2024-02-01'
-- WHERE emp_no=1;


ALTER table employee
MODIFY COLUMN job_id VARCHAR(30);


ALTER table employee
rename COLUMN emp_no TO e_no;


ALTER table employee
MODIFY COLUMN job_id VARCHAR(55);
