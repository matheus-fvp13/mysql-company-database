CREATE TABLE company.department(
	department_name varchar(15) NOT NULL,
	department_number int,
	manager_ssn char(9),
	manager_start_date date,
	CONSTRAINT pk_department PRIMARY KEY (department_number),
	CONSTRAINT unique_department_name UNIQUE (department_name),
	CONSTRAINT fk_department_to_employee FOREIGN KEY (manager_ssn) references employee(ssn)
		ON DELETE SET NULL
		ON UPDATE CASCADE 
);
