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


