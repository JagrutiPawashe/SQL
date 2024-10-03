CREATE DATABASE COMPANY;

USE COMPANY;

-- Create Departments Table
CREATE TABLE Departments (
    id VARCHAR(5) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255)
);


-- Create Employees Table
CREATE TABLE Employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone_number VARCHAR(20),
    hire_date DATE,
    job_title VARCHAR(255),
    department_id VARCHAR(5),
    FOREIGN KEY (department_id)
        REFERENCES Departments (id)
);


-- Create Projects Table
CREATE TABLE Projects (
    id VARCHAR(5) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    start_date DATE,
    end_date DATE,
    department_id VARCHAR(5),
    FOREIGN KEY (department_id)
        REFERENCES Departments (id)
);


-- Create Timesheets Table
CREATE TABLE Timesheets (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    project_id VARCHAR(5),
    date DATE,
    hours DECIMAL(5 , 2 ),
    FOREIGN KEY (employee_id)
        REFERENCES Employees (id),
    FOREIGN KEY (project_id)
        REFERENCES Projects (id)
);

SELECT 
    *
FROM
    DEPARTMENTS;

-- Insert data into Departments
INSERT INTO Departments (id,name, location) VALUES ('D1','HR', 'Mumbai'),
('D2','Admin','Chennai'),
('D3','Sales',"Mumbai"),
('D4',"Marketing","Bangalore"),
('D5',"IT","Bangalore");

SELECT 
    *
FROM
    EMPLOYEES;

-- Insert data into Employees
INSERT INTO Employees (id,first_name, last_name, email, phone_number, hire_date, job_title, department_id)
VALUES (101,'Jiya', 'S', 'jiya.s@gmail.com', '9969069818', '2023-01-15', 'Software Engineer', 'D5');

INSERT INTO Employees (first_name, last_name, email, phone_number, hire_date, job_title, department_id)
VALUES ('Jane', 'Smith', 'jane.smith@yahoo.com', '9876578901', '2022-07-20', 'HR Manager', 'D1'),
	   ('Shreya', 'Sharma', 'shreya.sharma@yahoo.com', '9876578444', '2022-09-12', 'Sales Counsellor', 'D3'),
       ('Jay', 'Rathod', 'jay.rathod12@yahoo.com', '8876578901', '2022-05-20', 'VP Sales', 'D3'),
       ('Abhishek', 'Bhosale', 'bhosale.abhishek@yahoo.com', '9812956901', '2023-07-20', 'Admin Head', 'D2'),
       ('Isha', 'Patil', 'isha.p@gmail.com', '8867578901', '2022-07-20', 'Assistant VP', 'D1'),
       ('Jayesh', 'Prabhu', 'jayesh.prabhu@yahoo.com', '9876773445', '2021-03-20', 'Senior Developer', 'D5'),
       ('Jay', 'Sharma', 'jay.sharma@gmail.com', '8890278901', '2023-08-28', 'Sales Head', 'D3'),
       ('Pooja', 'Bhushan', 'pooja.bhushan@yahoo.com', '9899690801', '2024-03-20', 'Marketing Head', 'D4'),
       ('Sakshi', 'Patil', 'sakshi.p@yahoo.com', '8868913450', '2023-08-12', 'Content Lead', 'D4'),
       ('Pranav', 'Chavarkar', 'pranav.c12@gmail.com', '9969078901', '2022-10-25', 'Data Scientist', 'D5'),
       ('Abhishek', 'Patil', 'abhishek.p@yahoo.com', '7969069818', '2023-07-26', 'Senior Analyst', 'D5'),
       ('Priya', 'Saroj', 'priya.saroj@gmail.com', '8898054112', '2022-12-20', 'Tech Support', 'D2'),
       ('Sakshi', 'Yadav', 'sakshi.y12@yahoo.com', '7134233404', '2023-10-02', 'Sales Admin', 'D3'),
       ('Sourabh', 'Sawant', 'sourabhsawant12@yahoo.com', '9089785667', '2023-07-15', 'Social Media Manager', 'D4'),
       ('Prem', 'Sawant', 'sawantprem2323@gmail.com', '8012457800', '2023-11-18', 'Retail Support', 'D3'),
       ('Sameer', 'Mishra', 'mishrasameer23@yahoo.com', '9939045125', '2022-07-05', 'Talent Recruiter', 'D1'),
       ('Sagar', 'Bhosale', 'sagar.b@gmail.com', '8867453011', '2023-11-12', 'Marketing Lead', 'D4');
       
INSERT INTO Employees (first_name, last_name, email, phone_number, hire_date)
VALUES ('Sourav', 'P', 'souravp22@yahoo.com', '9076578901', '2022-07-20'),
	   ('Shreya', 'Sharma', 'shreya123sharma@yahoo.com', '8976578444', '2022-09-12');

SELECT 
    *
FROM
    employees;

SELECT 
    *
FROM
    projects;

-- Insert data into Projects
INSERT INTO Projects (id,name, description, start_date, end_date, department_id)
VALUES ('P1','Project Alpha', 'A new project for the engineering department.', '2023-02-01', '2023-12-31', 'D5'),
('P2','HR Onboarding', 'Improving the onboarding process.', '2023-03-01', '2023-09-30', 'D1'),
('P3','Sales Dashboard', 'Tracking the sales performance', '2022-03-01', '2022-09-30', 'D5'),
('P4','AI Assistant', 'Generating AI assistant for the support', '2023-12-01', '2024-03-30', 'D5'),
('P5','Attendace Regularization', 'Tracking the attendance for the employees', '2022-06-20', '2022-09-30', 'D5'),
('P6','Marketing Analysis', 'Understanding the marketing dynamics for the company.', '2024-01-01', '2024-05-15', 'D4');


SELECT 
    *
FROM
    TIMESHEETS;

-- Insert data into Timesheets
INSERT INTO Timesheets (employee_id, project_id, date, hours)
VALUES (102, 'P2', '2023-03-10', 8.0),
(102, 'P2', '2023-03-15', 5.0),
(102, 'P2', '2023-03-20', 6.0),
(102, 'P2', '2023-03-26', 7.5),
(106, 'P2', '2023-04-05', 5.0),
(106, 'P2', '2023-04-10', 2.5),
(102, 'P2', '2023-05-12', 8.0),
(106, 'P2', '2023-05-20', 8.5),
(106, 'P2', '2023-06-25', 7.0),
(117, 'P2', '2023-07-10', 3.0),
(107, 'P1', '2023-04-10', 8.0),
(107, 'P1', '2023-05-11', 3.0),
(107, 'P1', '2023-05-14', 5.0),
(107, 'P1', '2023-05-16', 6.5),
(107, 'P1', '2023-05-20', 3.5),
(107, 'P1', '2023-04-10', 8.0),
(101, 'P1', '2023-06-11', 4.0),
(101, 'P1', '2023-06-15', 3.0),
(101, 'P1', '2023-07-11', 8.0),
(101, 'P1', '2023-08-01', 7.5),
(101, 'P1', '2023-08-16', 6.5),
(107, 'P1', '2023-10-11', 4.0),
(111, 'P3', '2022-03-01', 2.0),
(111, 'P3', '2022-03-15', 3.5),
(111, 'P3', '2022-04-11', 4.5),
(111, 'P3', '2022-04-15', 2.0),
(111, 'P3', '2022-05-10', 6.5),
(112, 'P3', '2022-05-18', 4.5),
(112, 'P3', '2022-05-22', 3.5),
(112, 'P3', '2022-06-05', 8.5),
(112, 'P3', '2022-06-16', 6.0),
(112, 'P3', '2022-06-22', 4.0),
(112, 'P3', '2022-07-25', 9.5),
(111, 'P3', '2022-03-01', 2.0),
(111, 'P3', '2022-03-01', 2.0),
(111, 'P4', '2023-12-01', 4.0),
(111, 'P4', '2023-12-12', 6.0),
(111, 'P4', '2023-01-01', 7.5),
(111, 'P4', '2023-01-11', 6.0),
(111, 'P4', '2023-02-03', 4.5),
(111, 'P4', '2023-02-10', 7.0),
(111, 'P4', '2023-03-05', 6.5),
(111, 'P4', '2022-03-21', 9.0),
(109, 'P6', '2024-01-01', 4.0),
(109, 'P6', '2024-01-11', 3.0),
(109, 'P6', '2024-01-31', 6.0),
(109, 'P6', '2024-02-01', 3.0),
(115, 'P6', '2024-03-01', 4.0),
(115, 'P6', '2024-03-12', 5.5),
(109, 'P6', '2024-03-15', 7.0),
(118, 'P6', '2024-03-01', 4.0),
(118, 'P6', '2024-03-10', 6.0),
(109, 'P6', '2024-04-01', 4.0),
(109, 'P6', '2024-04-20', 6.5)
;

INSERT INTO Timesheets (employee_id, project_id, date, hours)
VALUES (109, 'P2', '2024-04-29', 5.0),
        (109, 'P2', '2024-05-20', 8.0);

SELECT 
    *
FROM
    TIMESHEETS;
    
-- Employees table
Select * from employees;

-- Departments tables
Select * from departments;

-- Find out the working location of each employee
select E.*,D.location
from employees as E
inner join departments as D
on E.department_id = D.id
order by E.id;

-- Create Salary column & update the salaries for each department as below
-- D1 --> 40K , D2 - 30k, D3 -- 55K, D4 --> 60K , D5 - 75K
Select * from employees;

Select *,
case 
when department_id = "D1" then 40000
when department_id = "D2" then 30000
when department_id = "D3" then 55000
when department_id = "D4" then 60000
when department_id = "D5" then 75000
else 0
end as salary
from employees;

Select * from employees;

Alter table employees
add salary int default 30000;

Update employees
set salary = case 
when department_id = "D1" then 40000
when department_id = "D2" then 30000
when department_id = "D3" then 55000
when department_id = "D4" then 60000
when department_id = "D5" then 75000
else salary
End;

Select * from employees;

-- Find which project is the employee working upon
Select * from employees;
Select * from projects;
Select * from timesheets;

Select distinct concat(first_name," ",last_name) as full_name,
P.name AS Project_name,P.description
from employees as E
inner join timesheets as T
on E.id = T.employee_id
inner join projects as P
on p.id = t.project_id;

-- How many  employees are working on each project
Select p.name as Project_name,count(*) as No_of_empl
from employees as E
inner join timesheets as T
on E.id = T.employee_id
inner join projects as P
on T.project_id = P.id
group by p.name;

-- Find out the total hrs worked on each project by each employee
Select * from timesheets;
Select * from projects;
Select * from employees;

Select p.name as Project_name,
concat(first_name," ",last_name) as full_name,
sum(hours) as Total_hrs
from timesheets as T
left join projects as P
on T.project_id = P.id
inner join employees as E
on T.employee_id = E.id
Group by p.name,full_name;
    
    CREATE DATABASE COMPANY;

USE COMPANY;

-- Create Departments Table
CREATE TABLE Departments (
    id VARCHAR(5) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255)
);


-- Create Employees Table
CREATE TABLE Employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone_number VARCHAR(20),
    hire_date DATE,
    job_title VARCHAR(255),
    department_id VARCHAR(5),
    FOREIGN KEY (department_id)
        REFERENCES Departments (id)
);


-- Create Projects Table
CREATE TABLE Projects (
    id VARCHAR(5) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    start_date DATE,
    end_date DATE,
    department_id VARCHAR(5),
    FOREIGN KEY (department_id)
        REFERENCES Departments (id)
);


-- Create Timesheets Table
CREATE TABLE Timesheets (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    project_id VARCHAR(5),
    date DATE,
    hours DECIMAL(5 , 2 ),
    FOREIGN KEY (employee_id)
        REFERENCES Employees (id),
    FOREIGN KEY (project_id)
        REFERENCES Projects (id)
);

SELECT 
    *
FROM
    DEPARTMENTS;

-- Insert data into Departments
INSERT INTO Departments (id,name, location) VALUES ('D1','HR', 'Mumbai'),
('D2','Admin','Chennai'),
('D3','Sales',"Mumbai"),
('D4',"Marketing","Bangalore"),
('D5',"IT","Bangalore");

SELECT 
    *
FROM
    EMPLOYEES;

-- Insert data into Employees
INSERT INTO Employees (id,first_name, last_name, email, phone_number, hire_date, job_title, department_id)
VALUES (101,'Jiya', 'S', 'jiya.s@gmail.com', '9969069818', '2023-01-15', 'Software Engineer', 'D5');

INSERT INTO Employees (first_name, last_name, email, phone_number, hire_date, job_title, department_id)
VALUES ('Jane', 'Smith', 'jane.smith@yahoo.com', '9876578901', '2022-07-20', 'HR Manager', 'D1'),
	   ('Shreya', 'Sharma', 'shreya.sharma@yahoo.com', '9876578444', '2022-09-12', 'Sales Counsellor', 'D3'),
       ('Jay', 'Rathod', 'jay.rathod12@yahoo.com', '8876578901', '2022-05-20', 'VP Sales', 'D3'),
       ('Abhishek', 'Bhosale', 'bhosale.abhishek@yahoo.com', '9812956901', '2023-07-20', 'Admin Head', 'D2'),
       ('Isha', 'Patil', 'isha.p@gmail.com', '8867578901', '2022-07-20', 'Assistant VP', 'D1'),
       ('Jayesh', 'Prabhu', 'jayesh.prabhu@yahoo.com', '9876773445', '2021-03-20', 'Senior Developer', 'D5'),
       ('Jay', 'Sharma', 'jay.sharma@gmail.com', '8890278901', '2023-08-28', 'Sales Head', 'D3'),
       ('Pooja', 'Bhushan', 'pooja.bhushan@yahoo.com', '9899690801', '2024-03-20', 'Marketing Head', 'D4'),
       ('Sakshi', 'Patil', 'sakshi.p@yahoo.com', '8868913450', '2023-08-12', 'Content Lead', 'D4'),
       ('Pranav', 'Chavarkar', 'pranav.c12@gmail.com', '9969078901', '2022-10-25', 'Data Scientist', 'D5'),
       ('Abhishek', 'Patil', 'abhishek.p@yahoo.com', '7969069818', '2023-07-26', 'Senior Analyst', 'D5'),
       ('Priya', 'Saroj', 'priya.saroj@gmail.com', '8898054112', '2022-12-20', 'Tech Support', 'D2'),
       ('Sakshi', 'Yadav', 'sakshi.y12@yahoo.com', '7134233404', '2023-10-02', 'Sales Admin', 'D3'),
       ('Sourabh', 'Sawant', 'sourabhsawant12@yahoo.com', '9089785667', '2023-07-15', 'Social Media Manager', 'D4'),
       ('Prem', 'Sawant', 'sawantprem2323@gmail.com', '8012457800', '2023-11-18', 'Retail Support', 'D3'),
       ('Sameer', 'Mishra', 'mishrasameer23@yahoo.com', '9939045125', '2022-07-05', 'Talent Recruiter', 'D1'),
       ('Sagar', 'Bhosale', 'sagar.b@gmail.com', '8867453011', '2023-11-12', 'Marketing Lead', 'D4');
       
INSERT INTO Employees (first_name, last_name, email, phone_number, hire_date)
VALUES ('Sourav', 'P', 'souravp22@yahoo.com', '9076578901', '2022-07-20'),
	   ('Shreya', 'Sharma', 'shreya123sharma@yahoo.com', '8976578444', '2022-09-12');

SELECT 
    *
FROM
    employees;

SELECT 
    *
FROM
    projects;

-- Insert data into Projects
INSERT INTO Projects (id,name, description, start_date, end_date, department_id)
VALUES ('P1','Project Alpha', 'A new project for the engineering department.', '2023-02-01', '2023-12-31', 'D5'),
('P2','HR Onboarding', 'Improving the onboarding process.', '2023-03-01', '2023-09-30', 'D1'),
('P3','Sales Dashboard', 'Tracking the sales performance', '2022-03-01', '2022-09-30', 'D5'),
('P4','AI Assistant', 'Generating AI assistant for the support', '2023-12-01', '2024-03-30', 'D5'),
('P5','Attendace Regularization', 'Tracking the attendance for the employees', '2022-06-20', '2022-09-30', 'D5'),
('P6','Marketing Analysis', 'Understanding the marketing dynamics for the company.', '2024-01-01', '2024-05-15', 'D4');


SELECT 
    *
FROM
    TIMESHEETS;

-- Insert data into Timesheets
INSERT INTO Timesheets (employee_id, project_id, date, hours)
VALUES (102, 'P2', '2023-03-10', 8.0),
(102, 'P2', '2023-03-15', 5.0),
(102, 'P2', '2023-03-20', 6.0),
(102, 'P2', '2023-03-26', 7.5),
(106, 'P2', '2023-04-05', 5.0),
(106, 'P2', '2023-04-10', 2.5),
(102, 'P2', '2023-05-12', 8.0),
(106, 'P2', '2023-05-20', 8.5),
(106, 'P2', '2023-06-25', 7.0),
(117, 'P2', '2023-07-10', 3.0),
(107, 'P1', '2023-04-10', 8.0),
(107, 'P1', '2023-05-11', 3.0),
(107, 'P1', '2023-05-14', 5.0),
(107, 'P1', '2023-05-16', 6.5),
(107, 'P1', '2023-05-20', 3.5),
(107, 'P1', '2023-04-10', 8.0),
(101, 'P1', '2023-06-11', 4.0),
(101, 'P1', '2023-06-15', 3.0),
(101, 'P1', '2023-07-11', 8.0),
(101, 'P1', '2023-08-01', 7.5),
(101, 'P1', '2023-08-16', 6.5),
(107, 'P1', '2023-10-11', 4.0),
(111, 'P3', '2022-03-01', 2.0),
(111, 'P3', '2022-03-15', 3.5),
(111, 'P3', '2022-04-11', 4.5),
(111, 'P3', '2022-04-15', 2.0),
(111, 'P3', '2022-05-10', 6.5),
(112, 'P3', '2022-05-18', 4.5),
(112, 'P3', '2022-05-22', 3.5),
(112, 'P3', '2022-06-05', 8.5),
(112, 'P3', '2022-06-16', 6.0),
(112, 'P3', '2022-06-22', 4.0),
(112, 'P3', '2022-07-25', 9.5),
(111, 'P3', '2022-03-01', 2.0),
(111, 'P3', '2022-03-01', 2.0),
(111, 'P4', '2023-12-01', 4.0),
(111, 'P4', '2023-12-12', 6.0),
(111, 'P4', '2023-01-01', 7.5),
(111, 'P4', '2023-01-11', 6.0),
(111, 'P4', '2023-02-03', 4.5),
(111, 'P4', '2023-02-10', 7.0),
(111, 'P4', '2023-03-05', 6.5),
(111, 'P4', '2022-03-21', 9.0),
(109, 'P6', '2024-01-01', 4.0),
(109, 'P6', '2024-01-11', 3.0),
(109, 'P6', '2024-01-31', 6.0),
(109, 'P6', '2024-02-01', 3.0),
(115, 'P6', '2024-03-01', 4.0),
(115, 'P6', '2024-03-12', 5.5),
(109, 'P6', '2024-03-15', 7.0),
(118, 'P6', '2024-03-01', 4.0),
(118, 'P6', '2024-03-10', 6.0),
(109, 'P6', '2024-04-01', 4.0),
(109, 'P6', '2024-04-20', 6.5)
;

INSERT INTO Timesheets (employee_id, project_id, date, hours)
VALUES (109, 'P2', '2024-04-29', 5.0),
        (109, 'P2', '2024-05-20', 8.0);

SELECT 
    *
FROM
    TIMESHEETS;
    
-- Employees table
Select * from employees;

-- Departments tables
Select * from departments;

-- Find out the working location of each employee
select E.*,D.location
from employees as E
inner join departments as D
on E.department_id = D.id
order by E.id;

-- Create Salary column & update the salaries for each department as below
-- D1 --> 40K , D2 - 30k, D3 -- 55K, D4 --> 60K , D5 - 75K
Select * from employees;

Select *,
case 
when department_id = "D1" then 40000
when department_id = "D2" then 30000
when department_id = "D3" then 55000
when department_id = "D4" then 60000
when department_id = "D5" then 75000
else 0
end as salary
from employees;

Select * from employees;

Alter table employees
add salary int default 30000;

Update employees
set salary = case 
when department_id = "D1" then 40000
when department_id = "D2" then 30000
when department_id = "D3" then 55000
when department_id = "D4" then 60000
when department_id = "D5" then 75000
else salary
End;

Select * from employees;

-- Find which project is the employee working upon
Select * from employees;
Select * from projects;
Select * from timesheets;

Select distinct concat(first_name," ",last_name) as full_name,
P.name AS Project_name,P.description
from employees as E
inner join timesheets as T
on E.id = T.employee_id
inner join projects as P
on p.id = t.project_id;

-- How many  employees are working on each project
Select p.name as Project_name,count(*) as No_of_empl
from employees as E
inner join timesheets as T
on E.id = T.employee_id
inner join projects as P
on T.project_id = P.id
group by p.name;

-- Find out the total hrs worked on each project by each employee
Select * from timesheets;
Select * from projects;
Select * from employees;

Select p.name as Project_name,
concat(first_name," ",last_name) as full_name,
sum(hours) as Total_hrs
from timesheets as T
left join projects as P
on T.project_id = P.id
inner join employees as E
on T.employee_id = E.id
Group by p.name,full_name;
    
 CREATE DATABASE COMPANY;

USE COMPANY;

-- Create Departments Table
CREATE TABLE Departments (
    id VARCHAR(5) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255)
);


-- Create Employees Table
CREATE TABLE Employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone_number VARCHAR(20),
    hire_date DATE,
    job_title VARCHAR(255),
    department_id VARCHAR(5),
    FOREIGN KEY (department_id)
        REFERENCES Departments (id)
);


-- Create Projects Table
CREATE TABLE Projects (
    id VARCHAR(5) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    start_date DATE,
    end_date DATE,
    department_id VARCHAR(5),
    FOREIGN KEY (department_id)
        REFERENCES Departments (id)
);


-- Create Timesheets Table
CREATE TABLE Timesheets (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    project_id VARCHAR(5),
    date DATE,
    hours DECIMAL(5 , 2 ),
    FOREIGN KEY (employee_id)
        REFERENCES Employees (id),
    FOREIGN KEY (project_id)
        REFERENCES Projects (id)
);

SELECT 
    *
FROM
    DEPARTMENTS;

-- Insert data into Departments
INSERT INTO Departments (id,name, location) VALUES ('D1','HR', 'Mumbai'),
('D2','Admin','Chennai'),
('D3','Sales',"Mumbai"),
('D4',"Marketing","Bangalore"),
('D5',"IT","Bangalore");

SELECT 
    *
FROM
    EMPLOYEES;

-- Insert data into Employees
INSERT INTO Employees (id,first_name, last_name, email, phone_number, hire_date, job_title, department_id)
VALUES (101,'Jiya', 'S', 'jiya.s@gmail.com', '9969069818', '2023-01-15', 'Software Engineer', 'D5');

INSERT INTO Employees (first_name, last_name, email, phone_number, hire_date, job_title, department_id)
VALUES ('Jane', 'Smith', 'jane.smith@yahoo.com', '9876578901', '2022-07-20', 'HR Manager', 'D1'),
	   ('Shreya', 'Sharma', 'shreya.sharma@yahoo.com', '9876578444', '2022-09-12', 'Sales Counsellor', 'D3'),
       ('Jay', 'Rathod', 'jay.rathod12@yahoo.com', '8876578901', '2022-05-20', 'VP Sales', 'D3'),
       ('Abhishek', 'Bhosale', 'bhosale.abhishek@yahoo.com', '9812956901', '2023-07-20', 'Admin Head', 'D2'),
       ('Isha', 'Patil', 'isha.p@gmail.com', '8867578901', '2022-07-20', 'Assistant VP', 'D1'),
       ('Jayesh', 'Prabhu', 'jayesh.prabhu@yahoo.com', '9876773445', '2021-03-20', 'Senior Developer', 'D5'),
       ('Jay', 'Sharma', 'jay.sharma@gmail.com', '8890278901', '2023-08-28', 'Sales Head', 'D3'),
       ('Pooja', 'Bhushan', 'pooja.bhushan@yahoo.com', '9899690801', '2024-03-20', 'Marketing Head', 'D4'),
       ('Sakshi', 'Patil', 'sakshi.p@yahoo.com', '8868913450', '2023-08-12', 'Content Lead', 'D4'),
       ('Pranav', 'Chavarkar', 'pranav.c12@gmail.com', '9969078901', '2022-10-25', 'Data Scientist', 'D5'),
       ('Abhishek', 'Patil', 'abhishek.p@yahoo.com', '7969069818', '2023-07-26', 'Senior Analyst', 'D5'),
       ('Priya', 'Saroj', 'priya.saroj@gmail.com', '8898054112', '2022-12-20', 'Tech Support', 'D2'),
       ('Sakshi', 'Yadav', 'sakshi.y12@yahoo.com', '7134233404', '2023-10-02', 'Sales Admin', 'D3'),
       ('Sourabh', 'Sawant', 'sourabhsawant12@yahoo.com', '9089785667', '2023-07-15', 'Social Media Manager', 'D4'),
       ('Prem', 'Sawant', 'sawantprem2323@gmail.com', '8012457800', '2023-11-18', 'Retail Support', 'D3'),
       ('Sameer', 'Mishra', 'mishrasameer23@yahoo.com', '9939045125', '2022-07-05', 'Talent Recruiter', 'D1'),
       ('Sagar', 'Bhosale', 'sagar.b@gmail.com', '8867453011', '2023-11-12', 'Marketing Lead', 'D4');
       
INSERT INTO Employees (first_name, last_name, email, phone_number, hire_date)
VALUES ('Sourav', 'P', 'souravp22@yahoo.com', '9076578901', '2022-07-20'),
	   ('Shreya', 'Sharma', 'shreya123sharma@yahoo.com', '8976578444', '2022-09-12');

SELECT 
    *
FROM
    employees;

SELECT 
    *
FROM
    projects;

-- Insert data into Projects
INSERT INTO Projects (id,name, description, start_date, end_date, department_id)
VALUES ('P1','Project Alpha', 'A new project for the engineering department.', '2023-02-01', '2023-12-31', 'D5'),
('P2','HR Onboarding', 'Improving the onboarding process.', '2023-03-01', '2023-09-30', 'D1'),
('P3','Sales Dashboard', 'Tracking the sales performance', '2022-03-01', '2022-09-30', 'D5'),
('P4','AI Assistant', 'Generating AI assistant for the support', '2023-12-01', '2024-03-30', 'D5'),
('P5','Attendace Regularization', 'Tracking the attendance for the employees', '2022-06-20', '2022-09-30', 'D5'),
('P6','Marketing Analysis', 'Understanding the marketing dynamics for the company.', '2024-01-01', '2024-05-15', 'D4');


SELECT 
    *
FROM
    TIMESHEETS;

-- Insert data into Timesheets
INSERT INTO Timesheets (employee_id, project_id, date, hours)
VALUES (102, 'P2', '2023-03-10', 8.0),
(102, 'P2', '2023-03-15', 5.0),
(102, 'P2', '2023-03-20', 6.0),
(102, 'P2', '2023-03-26', 7.5),
(106, 'P2', '2023-04-05', 5.0),
(106, 'P2', '2023-04-10', 2.5),
(102, 'P2', '2023-05-12', 8.0),
(106, 'P2', '2023-05-20', 8.5),
(106, 'P2', '2023-06-25', 7.0),
(117, 'P2', '2023-07-10', 3.0),
(107, 'P1', '2023-04-10', 8.0),
(107, 'P1', '2023-05-11', 3.0),
(107, 'P1', '2023-05-14', 5.0),
(107, 'P1', '2023-05-16', 6.5),
(107, 'P1', '2023-05-20', 3.5),
(107, 'P1', '2023-04-10', 8.0),
(101, 'P1', '2023-06-11', 4.0),
(101, 'P1', '2023-06-15', 3.0),
(101, 'P1', '2023-07-11', 8.0),
(101, 'P1', '2023-08-01', 7.5),
(101, 'P1', '2023-08-16', 6.5),
(107, 'P1', '2023-10-11', 4.0),
(111, 'P3', '2022-03-01', 2.0),
(111, 'P3', '2022-03-15', 3.5),
(111, 'P3', '2022-04-11', 4.5),
(111, 'P3', '2022-04-15', 2.0),
(111, 'P3', '2022-05-10', 6.5),
(112, 'P3', '2022-05-18', 4.5),
(112, 'P3', '2022-05-22', 3.5),
(112, 'P3', '2022-06-05', 8.5),
(112, 'P3', '2022-06-16', 6.0),
(112, 'P3', '2022-06-22', 4.0),
(112, 'P3', '2022-07-25', 9.5),
(111, 'P3', '2022-03-01', 2.0),
(111, 'P3', '2022-03-01', 2.0),
(111, 'P4', '2023-12-01', 4.0),
(111, 'P4', '2023-12-12', 6.0),
(111, 'P4', '2023-01-01', 7.5),
(111, 'P4', '2023-01-11', 6.0),
(111, 'P4', '2023-02-03', 4.5),
(111, 'P4', '2023-02-10', 7.0),
(111, 'P4', '2023-03-05', 6.5),
(111, 'P4', '2022-03-21', 9.0),
(109, 'P6', '2024-01-01', 4.0),
(109, 'P6', '2024-01-11', 3.0),
(109, 'P6', '2024-01-31', 6.0),
(109, 'P6', '2024-02-01', 3.0),
(115, 'P6', '2024-03-01', 4.0),
(115, 'P6', '2024-03-12', 5.5),
(109, 'P6', '2024-03-15', 7.0),
(118, 'P6', '2024-03-01', 4.0),
(118, 'P6', '2024-03-10', 6.0),
(109, 'P6', '2024-04-01', 4.0),
(109, 'P6', '2024-04-20', 6.5)
;

INSERT INTO Timesheets (employee_id, project_id, date, hours)
VALUES (109, 'P2', '2024-04-29', 5.0),
        (109, 'P2', '2024-05-20', 8.0);

SELECT 
    *
FROM
    TIMESHEETS;
    
-- Employees table
Select * from employees;

-- Departments tables
Select * from departments;

-- Find out the working location of each employee
select E.*,D.location
from employees as E
inner join departments as D
on E.department_id = D.id
order by E.id;

-- Create Salary column & update the salaries for each department as below
-- D1 --> 40K , D2 - 30k, D3 -- 55K, D4 --> 60K , D5 - 75K
Select * from employees;

Select *,
case 
when department_id = "D1" then 40000
when department_id = "D2" then 30000
when department_id = "D3" then 55000
when department_id = "D4" then 60000
when department_id = "D5" then 75000
else 0
end as salary
from employees;

Select * from employees;

Alter table employees
add salary int default 30000;

Update employees
set salary = case 
when department_id = "D1" then 40000
when department_id = "D2" then 30000
when department_id = "D3" then 55000
when department_id = "D4" then 60000
when department_id = "D5" then 75000
else salary
End;

Select * from employees;

-- Find which project is the employee working upon
Select * from employees;
Select * from projects;
Select * from timesheets;

Select distinct concat(first_name," ",last_name) as full_name,
P.name AS Project_name,P.description
from employees as E
inner join timesheets as T
on E.id = T.employee_id
inner join projects as P
on p.id = t.project_id;

-- How many  employees are working on each project
Select p.name as Project_name,count(*) as No_of_empl
from employees as E
inner join timesheets as T
on E.id = T.employee_id
inner join projects as P
on T.project_id = P.id
group by p.name;

-- Find out the total hrs worked on each project by each employee
Select * from timesheets;
Select * from projects;
Select * from employees;

Select p.name as Project_name,
concat(first_name," ",last_name) as full_name,
sum(hours) as Total_hrs
from timesheets as T
left join projects as P
on T.project_id = P.id
inner join employees as E
on T.employee_id = E.id
Group by p.name,full_name;
    
    
Select p.name as Project_name,
concat(first_name," ",last_name) as full_name,
sum(hours) as Total_hrs
from timesheets as T
inner join projects as P
on T.project_id = P.id
inner join employees as E
on T.employee_id = E.id
Group by p.name,full_name;

-- LEFT JOIN
Select * from employees;
Select * from departments;

Select * from employees as E
left outer join departments as D
on E.department_id = D.id
order by E.id;

-- RIGHT JOIN
Select * from projects;
Select * from departments;
-- find the projects worked by each dept
Select * from
projects as P
right join departments as d
on p.department_id = d.id;

-- NATURAL JOIN


-- CROSS JOIN


    
    
    
    