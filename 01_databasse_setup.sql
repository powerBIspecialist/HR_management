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
