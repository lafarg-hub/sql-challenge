-- Create tables
CREATE TABLE IF NOT EXISTS employees
(
    emp_no INTEGER NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(120)NOT NULL,
    last_name VARCHAR(120) NOT NULL,
    gender VARCHAR(6) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS departments
(
    dept_no VARCHAR(10) NOT NULL,
    dept_name VARCHAR(120) NOT NULL,
    PRIMARY KEY(dept_no)
);

CREATE TABLE IF NOT EXISTS dept_emp
(
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    PRIMARY KEY(emp_no, dept_no)
);

CREATE TABLE IF NOT EXISTS dept_manager
(
    dept_no VARCHAR(10) NOT NULL,
    emp_no INTEGER NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    PRIMARY KEY(dept_no, emp_no)
);

CREATE TABLE IF NOT EXISTS salaries
(
    emp_no INTEGER NOT NULL,
    salary BIGINT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    PRIMARY KEY(emp_no, salary)
);

CREATE TABLE IF NOT EXISTS titles
(
    emp_no INTEGER NOT NULL,
    title VARCHAR(120) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    PRIMARY KEY(emp_no, title, from_date)
);