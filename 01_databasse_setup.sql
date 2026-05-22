CREATE TABLE departments (
    dept_id INT GENERATED ALWAYS AS IDENTITY,

    name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    budget NUMERIC(12,2) NOT NULL DEFAULT 0.00,
    created_date DATE NOT NULL DEFAULT CURRENT_DATE,
    active VARCHAR(10) NOT NULL DEFAULT 'active',

    CONSTRAINT pk_departments
        PRIMARY KEY (dept_id),

    CONSTRAINT uq_dept_name
        UNIQUE (name),

    CONSTRAINT chk_dept_budget
        CHECK (budget >= 0),

    CONSTRAINT chk_dept_active
        CHECK (active IN ('active', 'inactive'))
);


CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    first_name VARCHAR(80) NOT NULL,
    last_name VARCHAR(80) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    phone VARCHAR(20),
    birth_date DATE,
    hire_date DATE NOT NULL DEFAULT CURRENT_DATE,
    salary DECIMAL(10,2) NOT NULL,
    job_title VARCHAR(100) NOT NULL,
    dept_id INT NOT NULL,
    manager_id INT,
    active employee_status NOT NULL DEFAULT 'active',

    CONSTRAINT fk_manager
        FOREIGN KEY (manager_id)
        REFERENCES employees(emp_id)
);


CREATE TABLE projects (
    project_id INT GENERATED ALWAYS AS IDENTITY,

    project_name VARCHAR(150) NOT NULL,
    description TEXT,
    start_date DATE NOT NULL,
    end_date DATE,
    status VARCHAR(50) NOT NULL DEFAULT 'Active',
    budget NUMERIC(12, 2) NOT NULL DEFAULT 0.00,
    dept_id INT NOT NULL,

    CONSTRAINT pk_projects
        PRIMARY KEY (project_id),

    CONSTRAINT uq_project_name
        UNIQUE (project_name),

    CONSTRAINT chk_project_budget
        CHECK (budget >= 0),

    CONSTRAINT chk_project_dates
        CHECK (
            end_date IS NULL
            OR end_date >= start_date
        ),

    CONSTRAINT fk_project_department
        FOREIGN KEY (dept_id)
        REFERENCES departments(dept_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);


CREATE TABLE emp_projects (
    id INT GENERATED ALWAYS AS IDENTITY,

    emp_id INT NOT NULL,
    project_id INT NOT NULL,

    role VARCHAR(100) NOT NULL,
    hours_worked INT NOT NULL,
    assigned_date DATE NOT NULL,

    CONSTRAINT pk_emp_projects
        PRIMARY KEY (id),

    CONSTRAINT uq_emp_project
        UNIQUE (emp_id, project_id),

    CONSTRAINT fk_emp
        FOREIGN KEY (emp_id)
        REFERENCES employees(emp_id)
        ON DELETE CASCADE,

    CONSTRAINT fk_ep_project
        FOREIGN KEY (project_id)
        REFERENCES projects(project_id)
        ON DELETE CASCADE
);


CREATE TABLE attendance (
    id INT GENERATED ALWAYS AS IDENTITY,

    emp_id INT NOT NULL,
    work_date DATE NOT NULL,

    hours NUMERIC(4,2) NOT NULL DEFAULT 8.00,
    record_type VARCHAR(50) NOT NULL,
    notes VARCHAR(255),

    CONSTRAINT pk_attendance
        PRIMARY KEY (id),

    CONSTRAINT fk_attendance_employee
        FOREIGN KEY (emp_id)
        REFERENCES employees(emp_id)
        ON DELETE CASCADE,

    CONSTRAINT uq_attendance_work_date
        UNIQUE (emp_id, work_date),

    CONSTRAINT chk_attendance_hours
        CHECK (hours >= 0.00 AND hours <= 24.00)
);



CREATE TABLE salary_audit (
    id INT GENERATED ALWAYS AS IDENTITY,

    emp_id INT NOT NULL,
    old_salary NUMERIC(10,2) NOT NULL,
    new_salary NUMERIC(10,2) NOT NULL,

    changed_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    changed_by VARCHAR(100) NOT NULL DEFAULT CURRENT_USER,

    CONSTRAINT pk_salary_audit
        PRIMARY KEY (id),

    CONSTRAINT fk_salary_audit
        FOREIGN KEY (emp_id)
        REFERENCES employees(emp_id)
);
