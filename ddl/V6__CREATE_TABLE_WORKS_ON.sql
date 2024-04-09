CREATE TABLE company.works_on(
	employee_ssn char(9),
	project_number int,
	hours decimal(3, 1) NOT NULL,
	CONSTRAINT pk_works_on PRIMARY KEY (employee_ssn, project_number),
	CONSTRAINT fk_wo_to_employee FOREIGN KEY (employee_ssn) references employee(ssn)
		ON UPDATE CASCADE,
	CONSTRAINT fk_wo_to_project FOREIGN KEY (project_number) references project(project_number)
		ON UPDATE CASCADE
);
