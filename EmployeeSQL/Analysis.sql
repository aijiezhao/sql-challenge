--1. 
Select 
employees.emp_no,
employees.last_name,
employees.first_name,
employees.sex,
s.salary
From Salaries as s
Inner Join Employees on
Employees.emp_no = s.emp_no ;


--2. 
Select first_name, last_name, hire_date from Employees Where hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';


-- 3. 
Select
Dept_Manager.dept_no, 
Departments.dept_name, 
Dept_Manager.emp_no,
Employees.last_name,
Employees.first_name
From Dept_Manager 
Inner Join Departments ON Dept_Manager.dept_no=Departments.dept_no
Inner Join Employees On (employees.emp_no=Dept_Manager.emp_no) ;


-- 4. 
Select
Dept_emp.emp_no,
Employees.last_name,
Employees.first_name,
Departments.dept_name
From Dept_emp 
Inner Join Departments ON Dept_EMP.dept_no=Departments.dept_no
Inner Join Employees On (employees.emp_no=Dept_emp.emp_no) ;


-- 5. 
SELECT first_name, last_name, sex From Employees Where first_name= 'Hercules' AND last_name like 'B%';


--6. 
Select
Dept_emp.emp_no,
Employees.last_name,
Employees.first_name,
Departments.dept_name
From Employees
Join Dept_emp On Dept_emp.emp_no=Employees.emp_no
Join Departments On (Dept_emp.dept_no=Departments.dept_no)
Where dept_name='Sales' ;


-- 7. 
Select
Dept_emp.emp_no,
Employees.last_name,
Employees.first_name,
Departments.dept_name
From Employees
Join Dept_emp On Dept_emp.emp_no=Employees.emp_no
Join Departments On (Dept_emp.dept_no=Departments.dept_no)
Where dept_name='Sales' OR dept_name='Development' ;


--8.
Select last_name, Count(Last_Name) From Employees Group By last_name Order By Count Desc ;

