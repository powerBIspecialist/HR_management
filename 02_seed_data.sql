INSERT INTO departments (name, location, budget, active)
VALUES
('Human Resources', 'Brasov', 50000.00, 'active');

INSERT INTO departments (name, location, budget, active)
VALUES  
('IT', 'Bucharest', 250000.00, 'active'),
('Finance', 'Cluj-Napoca', 120000.00, 'active'),
('Marketing', 'Iasi', 80000.00, 'active'),
('Sales', 'Timisoara', 150000.00, 'active'),
('Operations', 'Constanta', 100000.00, 'active'),
('Legal', 'Bucharest', 60000.00, 'inactive'),
('Data Science & AI', 'Bucharest', 300000.00, 'active'),
('Customer Support', 'Remote', 90000.00, 'active'),
('Cybersecurity', 'Cluj-Napoca', 180000.00, 'active');



INSERT INTO employees
(first_name, last_name, email, phone, birth_date, salary, job_title, dept_id, manager_id)
  VALUES
('Adrian', 'Stanescu', 'adrian.stanescu@company.com', '0711000025', '1991-01-01', 14000, 'Cybersecurity Lead', 10, 1);


  -- 02.02 INSERT seed data in  multiple rows
INSERT INTO employees
(first_name, last_name, email, phone, birth_date, salary, job_title, dept_id, manager_id)
  VALUES
('Ciprian', 'Ungureanu', 'ciprian.ungureanu@company.com', '0711000001', '1980-05-12', 22000, 'Chief Executive Officer', 2, NULL),
('Mihai', 'Ionescu', 'mihai.ionescu@company.com', '0711000002', '1985-03-22', 16000, 'IT Director', 2, 1),
('Roxana', 'Ilie', 'roxana.ilie@company.com', '0711000003', '1988-07-11', 14000, 'Engineering Manager', 2, 2),
('Alex', 'Marin', 'alex.marin@company.com', '0711000004', '1996-02-14', 8500, 'Backend Developer', 2, 3),
('Ioana', 'Dumitru', 'ioana.dumitru@company.com', '0711000005', '1997-06-18', 8000, 'Frontend Developer', 2, 3),
('Radu', 'Toma', 'radu.toma@company.com', '0711000006', '1995-09-09', 9500, 'DevOps Engineer', 2, 3),
('Elena', 'Stan', 'elena.stan@company.com', '0711000007', '1987-07-10', 12500, 'HR Manager', 1, 1),
('Maria', 'Popa', 'maria.popa@company.com', '0711000008', '1994-01-30', 6500, 'HR Specialist', 1, 7),
('Anca', 'Dobre', 'anca.dobre@company.com', '0711000009', '1996-09-14', 6000, 'Recruiter', 1, 7),
('Vlad', 'Georgescu', 'vlad.georgescu@company.com', '0711000010', '1990-11-01', 12000, 'Finance Manager', 3, 1),
('Sorin', 'Barbu', 'sorin.barbu@company.com', '0711000011', '1993-04-20', 7500, 'Accountant', 3, 10),
('Diana', 'Matei', 'diana.matei@company.com', '0711000012', '1995-08-19', 7200, 'Financial Analyst', 3, 10),
('Cristian', 'Neagu', 'cristian.neagu@company.com', '0711000013', '1992-03-15', 9500, 'Marketing Manager', 4, 1),
('Andreea', 'Rusu', 'andreea.rusu@company.com', '0711000014', '1996-07-22', 6500, 'Marketing Specialist', 4, 13),
('Gabriel', 'Iliescu', 'gabriel.iliescu@company.com', '0711000015', '1994-10-10', 9000, 'Sales Manager', 5, 1),
('Alina', 'Stoica', 'alina.stoica@company.com', '0711000016', '1997-05-05', 6000, 'Sales Representative', 5, 15),
('Florin', 'Dima', 'florin.dima@company.com', '0711000017', '1989-12-12', 11000, 'Operations Manager', 6, 1),
('Marius', 'Voicu', 'marius.voicu@company.com', '0711000018', '1993-06-06', 7000, 'Operations Analyst', 6, 17),
('Simona', 'Luca', 'simona.luca@company.com', '0711000019', '1986-04-04', 11500, 'Legal Manager', 7, 1),
('George', 'Petrescu', 'george.petrescu@company.com', '0711000020', '1992-09-09', 8000, 'Legal Advisor', 7, 19),
('Robert', 'Enache', 'robert.enache@company.com', '0711000021', '1995-11-11', 13000, 'Head of Data Science', 8, 1),
('Irina', 'Balan', 'irina.balan@company.com', '0711000022', '1998-02-02', 10000, 'Data Scientist', 8, 21),
('Daniela', 'Marin', 'daniela.marin@company.com', '0711000023', '1996-03-03', 5500, 'Support Manager', 9, 1),
('Paul', 'Munteanu', 'paul.munteanu@company.com', '0711000024', '1999-07-07', 4500, 'Support Agent', 9, 23);



  -- 03.01 INSERT seed data in single row
INSERT INTO projects
(project_name, description, start_date, end_date, status, budget, dept_id)
VALUES
('Website Redesign', 'New corporate website', '2025-01-15', '2025-06-01', 'ACTIVE', 60000, 2);

  -- 03.02 INSERT seed data in  multiple rows
INSERT INTO projects
(project_name, description, start_date, end_date, status, budget, dept_id)
  VALUES
('Cloud Migration Platform', 'Migrate infrastructure to cloud (AWS/Azure)', '2025-02-01', NULL, 'ACTIVE', 200000, 2),
('Internal ERP System', 'Company-wide ERP development', '2025-01-10', NULL, 'ACTIVE', 250000, 2),
('AI Recommendation Engine', 'Machine learning recommendation system', '2025-03-01', NULL, 'ACTIVE', 180000, 8),
('Customer Churn Prediction', 'Predict customer retention using ML models', '2025-04-01', NULL, 'ACTIVE', 120000, 8),
('Security Monitoring System', 'Real-time threat detection platform', '2025-02-15', NULL, 'ACTIVE', 160000, 10),
('Automated Billing System', 'Automate invoicing and billing processes', '2025-01-20', NULL, 'ACTIVE', 140000, 3),
('HR System Upgrade', 'Internal HR platform upgrade', '2025-01-01', NULL, 'ACTIVE', 50000, 1),
('Mobile App', 'Company mobile app development', '2025-02-01', NULL, 'ACTIVE', 120000, 2),
('Payroll Automation', 'Automate salary processing', '2025-03-01', NULL, 'ACTIVE', 80000, 3);

  -- 04.01 INSERT seed data in single row
INSERT INTO emp_projects (emp_id, project_id, role, hours_worked, assigned_date)
  VALUES
(18, 10, 'Operations Analyst', 75, '2025-01-15');

  -- 04.02 INSERT seed data in  multiple rows
INSERT INTO emp_projects (emp_id, project_id, role, hours_worked, assigned_date)
VALUES
(4, 1, 'Backend Developer', 120, '2025-02-01'),
(5, 1, 'Frontend Developer', 110, '2025-02-01'),
(6, 1, 'DevOps Engineer', 140, '2025-02-01'),
(4, 2, 'Backend Developer', 160, '2025-01-10'),
(3, 2, 'Tech Lead', 180, '2025-01-10'),
(8, 7, 'HR Specialist', 80, '2025-01-01'),
(9, 7, 'Recruiter', 70, '2025-01-01'),
(11, 6, 'Accountant', 90, '2025-01-20'),
(12, 6, 'Financial Analyst', 95, '2025-01-20');

  -- 05.01 INSERT seed data in single row
INSERT INTO attendance (emp_id, work_date, hours, record_type, notes)
  VALUES
(12, '2026-05-05', 8.00, 'work', NULL);

  -- 05.02 INSERT seed data in  multiple rows
INSERT INTO attendance (emp_id, work_date, hours, record_type, notes)
  VALUES
(4, '2026-05-05', 8.00, 'work', 'Full day'),
(5, '2026-05-05', 8.00, 'work', NULL),
(6, '2026-05-05', 8.00, 'work', NULL),
(8, '2026-05-05', 8.00, 'work', 'HR work'),
(9, '2026-05-05', 8.00, 'work', 'Recruiting'),
(11, '2026-05-05', 8.00, 'work', NULL);

    -- 06.01 UPDATE with WHERE
    -- Promote employee 4 and increase salary
UPDATE employees
SET job_title = 'Senior Backend Developer',
    salary = 10000
WHERE emp_id = 4;

  -- 06.02 DELETE WITH WHERE
  -- Delete employee with id 25
DELETE FROM employees
WHERE emp_id = 25;

  -- 06.03 INSERT ON DUPLICATE KEY UPDATE
  -- This query inserts a new department into the departments table.
  -- If a record with the same id already exists, it updates the existing row instead of generating an error.
INSERT INTO departments (dept_id, name, location, budget, active)
VALUES (2, 'IT', 'Bucharest', 300000, 'active') AS new_data
ON DUPLICATE KEY UPDATE
budget = new_data.budget,
location = new_data.location,
active = new_data.active;

  -- 06.04 TRANSACTIONS: START TRANSACTION, COMMIT
  -- Apply salary increase and department budget increase, then save changes
START TRANSACTION;

UPDATE employees
SET salary = salary + 1000
WHERE dept_id = 2;

UPDATE departments
SET budget = budget + 50000
WHERE dept_id = 2;

COMMIT;

  -- 06.05ROLLBACK
  -- Cancel deletion and restore data
START TRANSACTION;

DELETE FROM employees
WHERE dept_id = 2;

  -- 06.06 If an error occurs before COMMIT, the transaction can be canceled using
ROLLBACK;


-- END OF SEEd DATA MODULE
-- Total tables populated with data: 5
-- Covers: CREATE\DROP DATABASE, USE, SHOW, SET 



