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
SELECT
'Ciprian', 'Ungureanu',
'ciprian.ungureanu@company.com',
'0711000001',
'1980-05-12',
22000,
'Chief Executive Officer',
d.id,
NULL
FROM departments d
WHERE d.name = 'IT';


INSERT INTO employees
(first_name, last_name, email, phone, birth_date, salary, job_title, dept_id, manager_id)
SELECT * FROM (VALUES
('Mihai', 'Ionescu', 'mihai.ionescu@company.com', '0711000002', '1985-03-22', 16000, 'IT Director', 'IT', 'ciprian.ungureanu@company.com'),
('Roxana', 'Ilie', 'roxana.ilie@company.com', '0711000003', '1988-07-11', 14000, 'Engineering Manager', 'IT', 'mihai.ionescu@company.com'),
('Alex', 'Marin', 'alex.marin@company.com', '0711000004', '1996-02-14', 8500, 'Backend Developer', 'IT', 'roxana.ilie@company.com'),
('Ioana', 'Dumitru', 'ioana.dumitru@company.com', '0711000005', '1997-06-18', 8000, 'Frontend Developer', 'IT', 'roxana.ilie@company.com'),
('Radu', 'Toma', 'radu.toma@company.com', '0711000006', '1995-09-09', 9500, 'DevOps Engineer', 'IT', 'roxana.ilie@company.com'),

('Elena', 'Stan', 'elena.stan@company.com', '0711000007', '1987-07-10', 12500, 'HR Manager', 'Human Resources', 'ciprian.ungureanu@company.com'),
('Maria', 'Popa', 'maria.popa@company.com', '0711000008', '1994-01-30', 6500, 'HR Specialist', 'Human Resources', 'elena.stan@company.com'),
('Anca', 'Dobre', 'anca.dobre@company.com', '0711000009', '1996-09-14', 6000, 'Recruiter', 'Human Resources', 'elena.stan@company.com'),

('Vlad', 'Georgescu', 'vlad.georgescu@company.com', '0711000010', '1990-11-01', 12000, 'Finance Manager', 'Finance', 'ciprian.ungureanu@company.com'),
('Sorin', 'Barbu', 'sorin.barbu@company.com', '0711000011', '1993-04-20', 7500, 'Accountant', 'Finance', 'vlad.georgescu@company.com'),
('Diana', 'Matei', 'diana.matei@company.com', '0711000012', '1995-08-19', 7200, 'Financial Analyst', 'Finance', 'vlad.georgescu@company.com'),

('Cristian', 'Neagu', 'cristian.neagu@company.com', '0711000013', '1992-03-15', 9500, 'Marketing Manager', 'Marketing', 'ciprian.ungureanu@company.com'),
('Andreea', 'Rusu', 'andreea.rusu@company.com', '0711000014', '1996-07-22', 6500, 'Marketing Specialist', 'Marketing', 'cristian.neagu@company.com'),

('Gabriel', 'Iliescu', 'gabriel.iliescu@company.com', '0711000015', '1994-10-10', 9000, 'Sales Manager', 'Sales', 'ciprian.ungureanu@company.com'),
('Alina', 'Stoica', 'alina.stoica@company.com', '0711000016', '1997-05-05', 6000, 'Sales Representative', 'Sales', 'gabriel.iliescu@company.com'),

('Florin', 'Dima', 'florin.dima@company.com', '0711000017', '1989-12-12', 11000, 'Operations Manager', 'Operations', 'ciprian.ungureanu@company.com'),
('Marius', 'Voicu', 'marius.voicu@company.com', '0711000018', '1993-06-06', 7000, 'Operations Analyst', 'Operations', 'florin.dima@company.com'),

('Simona', 'Luca', 'simona.luca@company.com', '0711000019', '1986-04-04', 11500, 'Legal Manager', 'Legal', 'ciprian.ungureanu@company.com'),
('George', 'Petrescu', 'george.petrescu@company.com', '0711000020', '1992-09-09', 8000, 'Legal Advisor', 'Legal', 'simona.luca@company.com'),

('Robert', 'Enache', 'robert.enache@company.com', '0711000021', '1995-11-11', 13000, 'Head of Data Science', 'Data Science & AI', 'ciprian.ungureanu@company.com'),
('Irina', 'Balan', 'irina.balan@company.com', '0711000022', '1998-02-02', 10000, 'Data Scientist', 'Data Science & AI', 'robert.enache@company.com'),

('Daniela', 'Marin', 'daniela.marin@company.com', '0711000023', '1996-03-03', 5500, 'Support Manager', 'Customer Support', 'ciprian.ungureanu@company.com'),
('Paul', 'Munteanu', 'paul.munteanu@company.com', '0711000024', '1999-07-07', 4500, 'Support Agent', 'Customer Support', 'daniela.marin@company.com')

) AS v(first_name, last_name, email, phone, birth_date, salary, job_title, dept_name, manager_email)
JOIN departments d ON d.name = v.dept_name
LEFT JOIN employees m ON m.email = v.manager_email;
