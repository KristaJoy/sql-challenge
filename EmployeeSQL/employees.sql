-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Create table with primary key
CREATE TABLE "employees" (
    "emp_no" integer NOT NULL PRIMARY KEY,
    "emp_title_id" varchar NOT NULL,
    "birth_date" date NOT NULL,
    "first_name" varchar NOT NULL,
    "last_name" varchar NOT NULL,
    "sex" varchar NOT NULL,
    "hire_date" date NOT NULL
);

-- Create table with primary key
CREATE TABLE "departments" (
    "dept_no" varchar NOT NULL PRIMARY KEY,
    "dept_name" varchar NOT NULL
);

-- Create table with primary key
CREATE TABLE "titles" (
    "title_id" varchar NOT NULL PRIMARY KEY,
    "title" varchar NOT NULL
);

-- Create table using a composite key
CREATE TABLE "dept_manager" (
    "dept_no" varchar   NOT NULL,
    "emp_no" integer   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "dept_no", "emp_no"
     )
);
-- Create table using a composite key
CREATE TABLE "salaries" (
    "emp_no" integer NOT NULL,
    "salary" integer NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no", "salary"
     )
);

-- Create table using a composite key
CREATE TABLE "dept_emp" (
    "emp_no" integer   NOT NULL,
    "dept_no" varchar   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no", "dept_no"
     )
);

-- add a foreign key connecting titles
ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

-- add a foreign key connecting employee numbers
ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

-- add a foreign key connecting department numbers
ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

-- add a foreign key connecting employee numbers
ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

-- add a foreign key connecting employee numbers
ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

