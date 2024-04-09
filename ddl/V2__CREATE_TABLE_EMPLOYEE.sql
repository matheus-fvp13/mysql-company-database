CREATE TABLE company.employee(
	first_name varchar(15) NOT NULL,
	m_init char,
	last_name varchar(15)  NOT NULL,
	ssn char(9),
	birth_date date,
	address varchar(30),
	gender char,
	salary decimal(10, 2),
	super_ssn char(9),
	department_number int NOT NULL,
	CONSTRAINT chk_salary_employee CHECK (salary > 1500.0),
	CONSTRAINT pk_employee PRIMARY KEY (ssn)
); 
