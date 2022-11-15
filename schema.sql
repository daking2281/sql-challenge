CREATE TABLE departments(
	dept_no VARCHAR(30) PRIMARY KEY,
	dept_name VARCHAR(30)
);

CREATE TABLE dept_emp(
	emp_no INT FOREIGN KEY,
	dept_no VARCHAR(30),
	PRIMARY KEY (emp_no,dept_no)
);	

CREATE TABLE dept_manager(
	dept_no VARCHAR(30),
	emp_no INT PRIMARY KEY
);	

CREATE TABLE employee (
	emp_no INT PRIMARY KEY,
	emp_title VARCHAR(30),
	birth_date date,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(30),
	hire_date date
);

CREATE TABLE salaries(
	emp_no int PRIMARY KEY,
	salary int
);

CREATE TABLE titles(
	title_id VARCHAR(30) PRIMARY KEY,
	title VARCHAR(30)
);	