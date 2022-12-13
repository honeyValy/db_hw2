create table departments (
	id serial primary key,
	name varchar(60) not null
);

create table employee (
	id serial primary key,
	name varchar(100) not null,
	department_id integer references departments(id),
	manager_id integer references employee(id)
);