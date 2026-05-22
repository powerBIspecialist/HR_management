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
