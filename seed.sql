DROP DATABASE IF EXISTS employees_DB;
CREATE database employees_DB;

USE employees_DB;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NULL,
  PRIMARY KEY (id)
);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NULL,
  salary VARCHAR(100) NULL,
  department_id INT NULL,
  PRIMARY KEY (id)
);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("William", "Smith", 2, 2);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Michael", "Scott", 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Manager", 200000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Mechanical Engineer 2", 100000, 2);

INSERT INTO department (name)
VALUES ("Manager");

INSERT INTO department (name)
VALUES ("Mechanical");

