CREATE TABLE company.department_locations(
	department_number int,
	department_location varchar(15),
	CONSTRAINT pk_department_locations PRIMARY KEY (department_number, department_location),
	CONSTRAINT fk_dl_to_department FOREIGN KEY (department_number) references department(department_number)
		ON UPDATE CASCADE
);
