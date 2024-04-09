CREATE TABLE company.project(
	project_name varchar(15) NOT NULL,
	project_number int,
	project_location varchar(15),
	department_number int NOT NULL,
	CONSTRAINT pk_project_number PRIMARY KEY (project_number),
	CONSTRAINT unique_project_name UNIQUE (project_name),
	CONSTRAINT fk_project_to_department FOREIGN KEY (department_number) references department(department_number) 
		ON UPDATE CASCADE
);
