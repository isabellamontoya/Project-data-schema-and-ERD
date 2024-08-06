# Project-data-schema-and-ERD
# Introduction
This project involves the creation of a database schema for Monvar, a small company aiming to organize and analyze its data. The schema includes tables for customers, employees, sales, inventory, suppliers, and orders. By structuring the data in a relational database, Monvar can efficiently manage and analyze its business information.

# Background
Monvar needed to improve its data management system to gain better insights into its operations. The project focuses on creating a comprehensive database schema that includes various aspects of the company's operations, such as customer information, employee details, sales transactions, inventory, and supplier data. This structured approach will enable Monvar to perform detailed analyses and make informed business decisions.

# Tools I Used
- **MySQL:** For creating the schema, tables, and defining relationships using foreign keys.
- **SQL:** To write queries for data insertion and manipulation.
- **ER Diagram Tool:** To design and visualize the database schema.

# The Analysis
The generated SQL code establishes a comprehensive data schema for Monvar, including the creation of multiple tables, primary keys, and relationships. Below is a summary of the main components:

## Customers Table
### Content:

- **cus_id (INT, NOT NULL, PRIMARY KEY):** Unique identifier for each customer.
- **cus_first_name (VARCHAR(30)):** Customer's first name.
- **cus_last_name (VARCHAR(30)):** Customer's last name.
- **cus_email (VARCHAR(30)):** Customer's email address.
- **cus_phone (BIGINT):** Customer's phone number.

### Justification:
This table stores basic information about customers, essential for identifying and contacting them. The unique cus_id ensures each customer can be individually referenced.

## Manager Table
### Content:

- **manager_id (INT, NOT NULL, PRIMARY KEY):** Unique identifier for each manager.
- **man_first_name (VARCHAR(30)):** Manager's first name.
- **man_last_name (VARCHAR(30)):** Manager's last name.
- **man_position_name (VARCHAR(45)):** Manager's job position.

### Justification:
This table contains information about managers, which is crucial for linking departments to their respective managers and understanding the organizational hierarchy.

## Employee Department Table
### Content:

- **emp_department_id (INT, NOT NULL, PRIMARY KEY):** Unique identifier for each department.
- **emp_department_name (VARCHAR(45)):** Name of the department.
- **manager_id (INT):** Foreign key linking to the manager table.

### Justification:
This table defines the various departments within the company and associates each department with a manager, facilitating organizational structure and reporting.

## Employees Table
### Content:

- **emp_id (INT, NOT NULL, PRIMARY KEY):** Unique identifier for each employee.
- **emp_first_name (VARCHAR(30)):** Employee's first name.
- **emp_last_name (VARCHAR(30)):** Employee's last name.
- **emp_email (VARCHAR(30)):** Employee's email address.
- **emp_hire_date (TIMESTAMP):** Date and time when the employee was hired.

### Justification:
This table stores the primary information about employees, enabling tracking of personal details and hire dates which are crucial for HR and administrative purposes.

## Employee Demographic Table
### Content:

- **emp_position_id (INT, NOT NULL, PRIMARY KEY):** Unique identifier for each position.
- **position_name (VARCHAR(30)):** Job position name.
- **emp_gender (VARCHAR(30)):** Gender of the employee.
- **emp_birthdate (VARCHAR(30)):** Birthdate of the employee.
- **emp_status (CHAR(8)):** Employment status (e.g., Active).
- **emp_type (VARCHAR(30)):** Type of employment (e.g., full-time, part-time).
- **emp_id (INT):** Foreign key linking to the employees table.

### Justification:
This table captures detailed demographic and employment-related information about employees, which is important for HR analytics and diversity tracking.

## Employee Salary Table
### Content:

- **salary_id (INT, NOT NULL, PRIMARY KEY):** Unique identifier for each salary record.
- **salary_amount (BIGINT):** Salary amount.
- **salary_level (VARCHAR(30)):** Level or grade of the salary.
- **start_date (TIMESTAMP):** Start date of the salary.
- **end_date (TIMESTAMP):** End date of the salary.
- **emp_id (INT):** Foreign key linking to the employees table.

### Justification:
This table records the salary details of employees, including the amount, level, and validity period. It's essential for payroll management and historical salary analysis.

## Sales Table
### Content:

- **sale_id (INT, NOT NULL, PRIMARY KEY):** Unique identifier for each sale.
- **sale_date (TIMESTAMP):** Date and time of the sale.
- **cus_id (INT):** Foreign key linking to the customers table.
- **emp_id (INT):** Foreign key linking to the employees table.

### Justification:
This table captures information about each sale, including when it occurred and which customer and employee were involved. This is crucial for sales tracking and performance analysis.

## Order Sales Table
### Content:

- **product_id (INT, NOT NULL, PRIMARY KEY):** Unique identifier for each product in a sale.
- **product_count (INT):** Number of units sold.
- **product_sale_name (VARCHAR(30)):** Name of the product sold.
- **product_price (BIGINT):** Price of the product sold.
- **sale_id (INT):** Foreign key linking to the sales table.

### Justification:
This table provides detailed information about the products sold in each sale, which is important for inventory management and sales analytics.

## Stock Table
### Content:

- **stock_id (INT, NOT NULL, PRIMARY KEY):** Unique identifier for each stock record.
- **product_name (VARCHAR(30)):** Name of the product.
- **product_ref (VARCHAR(30)):** Product reference code.
- **product_cost (BIGINT):** Cost of the product.
- **product_count (BIGINT):** Quantity of the product in stock.
- **product_supplier_name (VARCHAR(30)):** Name of the supplier.
- **product_supplier_id (INT):** Foreign key linking to the supplier.
- **product_id (INT):** Foreign key linking to the order_sales table.

### Justification:
This table maintains inventory details, including product names, costs, quantities, and supplier information. This is essential for inventory control and supply chain management.

## Entity-Relationship Diagrams
The ERD (Entity-Relationship Diagram) generated from the provided SQL code illustrates the structured relationships between various entities in Monvar's database system. The central entities include customers, employees, and sales, each with unique identifiers to ensure data integrity. The employees are linked to their respective departments and demographic details, while managers oversee these departments. Sales transactions are documented in the sales table, linking customers and employees to individual sales records. Additionally, the order_sales table details products involved in each sale, and the stock table manages inventory levels and supplier information. This comprehensive ERD ensures an organized and efficient way to manage and analyze Monvar's business data.

![ERD](https://github.com/isabellamontoya/Project-data-schema-and-ERD/blob/main/ERD.png)

# What I Learned
Through this project, I gained valuable insights into the process of designing and implementing a relational database schema from scratch. I learned how to identify and define the necessary tables, establish relationships using foreign keys, and ensure data integrity. Additionally, I improved my skills in writing SQL queries for data insertion and manipulation. This project also enhanced my understanding of how to structure and organize business data to enable efficient analysis and decision-making.

# Conclusions
This project provided a comprehensive solution for Monvar to organize its business data effectively. The structured database schema will help Monvar manage its information on customers, employees, sales, inventory, suppliers, and orders in a more organized and accessible manner. By having a well-defined relational database, Monvar can now perform detailed analyses and derive insights that will aid in strategic decision-making and operational efficiency. This project underscores the importance of a robust database design in supporting business intelligence and analytics efforts.
