ALTER TABLE company.employee 
	ADD CONSTRAINT fk_employee_to_manager
	FOREIGN KEY(super_ssn) REFERENCES employee(ssn)
	ON DELETE SET NULL 
	ON UPDATE CASCADE;
