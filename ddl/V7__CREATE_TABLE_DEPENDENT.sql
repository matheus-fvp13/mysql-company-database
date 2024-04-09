CREATE TABLE company.dependent(
	employee_ssn char(9),
	dependent_name varchar(15),
	gender char,
	birth_date date,
	relationship varchar(8),
	CONSTRAINT pk_dependent PRIMARY KEY (employee_ssn, dependent_name),
	CONSTRAINT fk_dependent_to_employee FOREIGN KEY (employee_ssn) references employee(ssn) 
		ON DELETE CASCADE
		ON UPDATE CASCADE
);
