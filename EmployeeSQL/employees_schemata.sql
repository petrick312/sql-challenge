

-- create titles table
CREATE TABLE titles (
    title_id VARCHAR(5) NOT NULL PRIMARY KEY,
    title VARCHAR(30) NOT NULL
);

-- create employees table
CREATE TABLE employees (
  emp_no INT NOT NULL PRIMARY KEY,
  emp_title_id VARCHAR(5) NOT NULL REFERENCES titles(title_id), 
  birth_date DATE NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  sex VARCHAR(1) NOT NULL,
  hire_date DATE NOT NULL
);	

-- create departments table
CREATE TABLE departments (
  dept_no VARCHAR(5) NOT NULL PRIMARY KEY,
  dept_name VARCHAR(30) NOT NULL
  );

-- create department employees table
CREATE TABLE dept_emp (
  emp_no INT NOT NULL REFERENCES employees(emp_no),
  dept_no VARCHAR(5) NOT NULL REFERENCES departments(dept_no)
  );
  
-- create department managers table
CREATE TABLE dept_manager (
  dept_no VARCHAR(5) NOT NULL REFERENCES departments(dept_no),
  emp_no INT NOT NULL REFERENCES employees(emp_no)
  );

-- create salaries table
CREATE TABLE salaries (
    emp_no INT NOT NULL REFERENCES employees(emp_no),
    salary INT NOT NULL
);



SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;

