drop table if exists employees, departments, dept_employees, dept_manager, salaries, titles CASCADE;
-- titles done
CREATE TABLE "titles" (
    "title_id" varchar(10) primary key NOT NULL,
    "title" varchar(30)   NOT NULL
);

CREATE TABLE "departments" (
    "dept_no" varchar(10)  primary key NOT NULL,
    "dept_name" varchar(30)   NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" int primary key NOT NULL,
    "emp_title_id" varchar(15)   NOT NULL,
    "birth_date" varchar(15)   NOT NULL,
    "first_name" varchar(30)   NOT NULL,
    "last_name" varchar(30)   NOT NULL,
    "sex" varchar(2)   NOT NULL,
    "hire_date" varchar(10)   NOT NULL,
    foreign key (emp_title_id) references titles(title_id)
);

CREATE TABLE "dept_employees" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(10)   NOT NULL,
    foreign key (emp_no) references employees(emp_no),
    foreign key (dept_no) references departments(dept_no)
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(10)   NOT NULL,
    "emp_no" int   NOT NULL,
    foreign key (emp_no) references employees(emp_no),
    foreign key (dept_no) references departments(dept_no)
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    foreign key (emp_no) references employees(emp_no)
);

