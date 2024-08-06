
# CREATE customers TABLE
CREATE TABLE customers (
  cus_id INT NOT NULL,
  cus_first_name VARCHAR(30),
  cus_last_name VARCHAR(30),
  cus_email VARCHAR(30),
  cus_phone BIGINT,
  PRIMARY KEY (cus_id)
);

# INSERT VALUES INTO customers TABLE
SELECT * FROM customers;
INSERT INTO customers (cus_id, cus_first_name, cus_last_name, cus_email, cus_phone)
VALUES (1, 'Martha', 'Loaiza', 'mloaiza@gmail.com', '3103774658'); 
INSERT INTO customers (cus_id, cus_first_name, cus_last_name, cus_email, cus_phone)
VALUES (2, 'Ernesto', 'Aristizabal', 'earist@gmail.com', '3103774659'); 
INSERT INTO customers (cus_id, cus_first_name, cus_last_name, cus_email, cus_phone)
VALUES (3, 'Ana', 'Gaviota', 'agaviria@gmail.com', '3103774660'); 
INSERT INTO customers (cus_id, cus_first_name, cus_last_name, cus_email, cus_phone)
VALUES (4, 'camilo', 'Betancur', 'cbetancur@gmail.com', '3103774661'); 
INSERT INTO customers (cus_id, cus_first_name, cus_last_name, cus_email, cus_phone)
VALUES (5, 'Sarah', 'Gallego', 'cgallego@gmail.com', '3103774662'); 




# CREATE manager TABLE
CREATE TABLE manager (
  manager_id INT NOT NULL,
  man_first_name VARCHAR(30),
  man_last_name VARCHAR(30),
  man_position_name VARCHAR(45),
  PRIMARY KEY (manager_id)
);

# INSERT VALUES INTO manager TABLE
INSERT INTO manager (manager_id, man_first_name, man_last_name, man_email, man_position_name)
VALUES (20, 'Orlando', 'Montoya', 'omontoya@gmail.com', 'PRESIDENT');
INSERT INTO manager (manager_id, man_first_name, man_last_name, man_email, man_position_name)
VALUES (21, 'Rosa', 'Montoya', 'rmontoya@gmail.com', 'SALES MANAGER');
INSERT INTO manager (manager_id, man_first_name, man_last_name, man_email, man_position_name)
VALUES (22, 'Ivan', 'Montoya', 'imontoya@gmail.com', 'OPERATION MANAGER');




# CREATE employee_department TABLE
CREATE TABLE employee_department (
  emp_department_id INT NOT NULL,
  emp_department_name VARCHAR(45),
  manager_id INT,
  PRIMARY KEY (emp_department_id)
);

# INSERT VALUES INTO employee_department TABLE
INSERT INTO employee_department (emp_department_id, emp_dep_name, manager_id)
VALUES (1, 'CORPORATE', 20);
INSERT INTO employee_department (emp_department_id, emp_dep_name, manager_id)
VALUES (2, 'SALES DIVISION', 21);
INSERT INTO employee_department (emp_department_id, emp_dep_name, manager_id)
VALUES (3, 'OPERATIONS', 22);




# CREATE employees TABLE
CREATE TABLE employees (
  emp_id INT NOT NULL,
  emp_first_name VARCHAR(30),
  emp_last_name VARCHAR(30),
  emp_email VARCHAR(30),
  emp_hire_date TIMESTAMP,
  PRIMARY KEY (emp_id)
);

# INSERT VALUES INTO employees TABLE
INSERT INTO employees (emp_id, emp_first_name, emp_last_name, emp_email, emp_hire_date, emp_phone, emp_dep_id)
VALUES (1, 'Alejandra', 'Montoya', 'amontoya@gmail.com', '2013-06-24 14:52:30', '3103748593', 2);
INSERT INTO employees (emp_id, emp_first_name, emp_last_name, emp_email, emp_hire_date, emp_phone, emp_dep_id)
VALUES (2, 'Daniel', 'Correa', 'ccorrea@gmail.com', '2014-06-24 14:52:30', '3103748594', 3);
INSERT INTO employees (emp_id, emp_first_name, emp_last_name, emp_email, emp_hire_date, emp_phone, emp_dep_id)
VALUES (3, 'Yury', 'Rios', 'yrios@gmail.com', '2014-08-13 14:52:30', '3103748595', 2);
INSERT INTO employees (emp_id, emp_first_name, emp_last_name, emp_email, emp_hire_date, emp_phone, emp_dep_id)
VALUES (4, 'Zelena', 'Montes', 'zmontes@gmail.com', '2012-06-24 14:52:30', '3103748596', 2);
INSERT INTO employees (emp_id, emp_first_name, emp_last_name, emp_email, emp_hire_date, emp_phone, emp_dep_id)
VALUES (5, 'Elizabeth', 'Gonzalez', 'egonzalez@gmail.com', '2021-06-24 14:52:30', '3103748597', 2);
INSERT INTO employees (emp_id, emp_first_name, emp_last_name, emp_email, emp_hire_date, emp_phone, emp_dep_id)
VALUES (6, 'Luis Angel', 'Restrepo', 'lrestrepo@gmail.com', '2022-06-24 14:52:30', '3103748598', 3);




# CREATE employee_demographic TABLE
CREATE TABLE employee_demographic (
  emp_position_id INT NOT NULL,
  position_name VARCHAR(30),
  emp_gender VARCHAR(30),
  emp_birthdate VARCHAR(30),
  emp_status CHAR(8),
  emp_type VARCHAR(30),
  emp_id INT,
  PRIMARY KEY (emp_position_id)
);

# INSERT VALUES INTO employee_demographic TABLE
INSERT INTO employee_demographic (emp_position_id, position_name, emp_gender, emp_birthdate, emp_status, emp_type, emp_id)
VALUES (300, 'FINANCE ANALYST', 'FEMENINE', '31-10-1996', 'Active', 'L2', 1);
INSERT INTO employee_demographic (emp_position_id, position_name, emp_gender, emp_birthdate, emp_status, emp_type, emp_id)
VALUES (301, 'STOCK ANALYST', 'MASCULINE', '21-07-1996', 'Active', 'L2', 2);
INSERT INTO employee_demographic (emp_position_id, position_name, emp_gender, emp_birthdate, emp_status, emp_type, emp_id)
VALUES (302, 'SALES REPRESENTATIVE', 'FEMENINE', '14-03-1997', 'Active', 'L3', 3);
INSERT INTO employee_demographic (emp_position_id, position_name, emp_gender, emp_birthdate, emp_status, emp_type, emp_id)
VALUES (303, 'SALES REPRESENTATIVE', 'FEMENINE', '31-01-1990', 'Active', 'L3', 4);
INSERT INTO employee_demographic (emp_position_id, position_name, emp_gender, emp_birthdate, emp_status, emp_type, emp_id)
VALUES (304, 'SALES REPRESENTATIVE', 'FEMENINE', '17-02-1994', 'Active', 'L3', 5);
INSERT INTO employee_demographic (emp_position_id, position_name, emp_gender, emp_birthdate, emp_status, emp_type, emp_id)
VALUES (305, 'STOCK OPERATOR', 'MASCULINE', '26-06-1998', 'Active', 'L3', 6);



# CREATE employee_salary TABLE
CREATE TABLE employee_salary (
  salary_id INT NOT NULL,
  salary_amount BIGINT,
  salary_level VARCHAR(30),
  start_date TIMESTAMP,
  end_date TIMESTAMP,
  emp_id INT,
  PRIMARY KEY (salary_id)
);

# INSERT VALUES INTO employee_salary TABLE
INSERT INTO employee_salary (salary_id, salary_amount, salary_level, start_date, end_date, emp_id)
VALUES (100, '2000000','S2', '2013-06-24 14:52:30', '2026-06-24 14:52:30', 1);
INSERT INTO employee_salary (salary_id, salary_amount, salary_level, start_date, end_date, emp_id)
VALUES (101, '2000000','S2', '2014-06-24 14:52:30', '2026-06-24 14:52:30', 2);
INSERT INTO employee_salary (salary_id, salary_amount, salary_level, start_date, end_date, emp_id)
VALUES (102, '1500000','S3', '2014-08-13 14:52:30', '2026-06-24 14:52:30', 3);
INSERT INTO employee_salary (salary_id, salary_amount, salary_level, start_date, end_date, emp_id)
VALUES (103, '1500000','S3', '2012-06-24 14:52:30', '2026-06-24 14:52:30', 4);
INSERT INTO employee_salary (salary_id, salary_amount, salary_level, start_date, end_date, emp_id)
VALUES (104, '1500000','S3', '2021-06-24 14:52:30', '2026-06-24 14:52:30', 5);
INSERT INTO employee_salary (salary_id, salary_amount, salary_level, start_date, end_date, emp_id)
VALUES (105, '1500000','S3', '2022-06-24 14:52:30', '2026-06-24 14:52:30', 6);



# CREATE sales TABLE
CREATE TABLE sales (
  sale_id INT NOT NULL,
  sale_date TIMESTAMP,
  cus_id INT,
  emp_id INT,
  PRIMARY KEY (sale_id)
);

# INSERT VALUES INTO sales TABLE
INSERT INTO sales (sale_id, sale_date, cus_id, emp_id)
VALUES (101, '2024-06-24 20:52:30', '1', '4');
INSERT INTO sales (sale_id, sale_date, cus_id, emp_id)
VALUES (102, '2024-06-25 20:52:30', '2', '3');
INSERT INTO sales (sale_id, sale_date, cus_id, emp_id)
VALUES (103, '2024-06-26 20:52:30', '3', '5');
INSERT INTO sales (sale_id, sale_date, cus_id, emp_id)
VALUES (104, '2024-06-27 20:52:30', '4', '4');
INSERT INTO sales (sale_id, sale_date, cus_id, emp_id)
VALUES (105, '2024-06-28 20:52:30', '5', '3');



# CREATE order_sales TABLE
CREATE TABLE order_sales (
  product_id INT NOT NULL,
  product_count INT,
  product_sale_name VARCHAR(30),
  product_price BIGINT,
  sale_id INT,
  PRIMARY KEY (product_id)
);

# INSERT VALUES INTO order_sales TABLE
INSERT INTO orders_sales (product_id, product_count, product_sale_name, product_price, sale_id)
VALUES (001, '1', 'PORTO FINO TSHIRT', '65000', 101);
INSERT INTO orders_sales (product_id, product_count, product_sale_name, product_price, sale_id)
VALUES (002, '2', 'LELA JEAN', '95000', 102);
INSERT INTO orders_sales (product_id, product_count, product_sale_name, product_price, sale_id)
VALUES (003, '1', 'ANGEL WINGS PANTS', '105000', 103);
INSERT INTO orders_sales (product_id, product_count, product_sale_name, product_price, sale_id)
VALUES (004, '1', 'SOUL TSHIRT', '45000', 104);
INSERT INTO orders_sales (product_id, product_count, product_sale_name, product_price, sale_id)
VALUES (005, '1', 'RAGASA JEAN', '95000', 105);



# CREATE stock TABLE
CREATE TABLE stock (
  stock_id INT NOT NULL,
  product_name VARCHAR(30),
  product_ref VARCHAR(30),
  product_cost BIGINT,
  product_count BIGINT,
  product_supplier_name VARCHAR(30),
  product_supplier_id INT,
  product_id INT,
  PRIMARY KEY (stock_id)
);

# INSERT VALUES INTO stock TABLE
INSERT INTO stock (stock_id, product_name, product_ref, product_cost, product_count, product_supplier_name, product_suplier_id, product_id)
VALUES (0100, 'PORTO FINO TSHIRT', '3002', '56500', '79', 'PORTO FINO SAS', '215', 1);
INSERT INTO stock (stock_id, product_name, product_ref, product_cost, product_count, product_supplier_name, product_suplier_id, product_id)
VALUES (0101, 'LELA JEAN', '3003', '83700', '38', 'LELA SAS', '216', 2);
INSERT INTO stock (stock_id, product_name, product_ref, product_cost, product_count, product_supplier_name, product_suplier_id, product_id)
VALUES (0102, 'ANGEL WINGS PANTS', '3004', '87500', '27', 'ANGEL WINGS SAS', '217', 3);
INSERT INTO stock (stock_id, product_name, product_ref, product_cost, product_count, product_supplier_name, product_suplier_id, product_id)
VALUES (0103, 'SOUL TSHIRT', '3005', '35500', '35', 'SOUL SA', '218', 4);
INSERT INTO stock (stock_id, product_name, product_ref, product_cost, product_count, product_supplier_name, product_suplier_id, product_id)
VALUES (0104, 'RAGASA JEAN', '3006', '82500', '46', 'RAGASA SAS', '219', 5);