--CREATE DATABASE employee_db;

USE employees_db;

CREATE TABLE department (
 id INT AUTO_INCREMENT NOT NULL,
 name VARCHAR(30),
 PRIMARY KEY (id)
);

CREATE TABLE role (
 id INT AUTO_INCREMENT NOT NULL,
 title VARCHAR(30),
salary DECIMAL,
department_id  INT,
PRIMARY KEY (id),
FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);

CREATE TABLE employee(
 id INT AUTO_INCREMENT NOT NULL,
 first_name VARCHAR(30),
 last_name VARCHAR(30),
 role_id INT NOT NULL,
 manager_id INT,
 PRIMARY KEY (id),
 FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
 FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE CASCADE
);

INSERT INTO department (name) VALUES ("Research");
INSERT INTO department (name) VALUES ("Acounting");
INSERT INTO department (name) VALUES ("Finance");

INSERT INTO role (title, salary, department_id) VALUES ("Research Analyst", 80000, 1);
INSERT INTO role (title, salary, department_id) VALUES ("Manager", 10000, 2);
INSERT INTO role (title, salary, department_id) VALUES ("Finance Analyst",20000 ,);

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Andrew", "K", 1,);
INSERT INTO employee (first_name, last_name, role_id) VALUES ("Ross", "S", 2);
INSERT INTO employee (first_name, last_name, role_id) VALUES ("Al", "T", 3);