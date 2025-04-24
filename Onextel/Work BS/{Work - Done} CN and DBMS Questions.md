1) Find the employees earning the second-highest salary in the `employees` table with columns `id`, `name`, and `salary`.

**Options**:  
a) `SELECT name FROM employees WHERE salary = (SELECT MAX(salary) FROM employees);`  
b) `SELECT name FROM employees WHERE salary = (SELECT MAX(salary) FROM employees WHERE salary < (SELECT MAX(salary) FROM employees));`  
c) `SELECT name FROM employees WHERE salary = MAX(salary) - 1;`  
d) `SELECT name FROM employees ORDER BY salary DESC LIMIT 2 OFFSET 1;`

2) Which of the following techniques would improve the performance of a query fetching the last 5 records from a table `orders` with a million rows?

**Options**:  
a) Add an index on the `id` column and use `LIMIT`.  
b) Use `OFFSET` to skip the first 999,995 rows.  
c) Store the data in a denormalized form for faster retrieval.  
d) Partition the table based on a key column.

3) Given a trigger to prevent insertion of rows in `orders` where `quantity > 100`, which code snippet correctly defines the trigger?

**Options**:  
a)CREATE TRIGGER prevent_large_orders 
BEFORE INSERT ON orders 
FOR EACH ROW 
WHEN (NEW.quantity > 100) 
BEGIN RAISE EXCEPTION 'Quantity exceeds limit'; END;

b)CREATE TRIGGER prevent_large_orders 
AFTER INSERT ON orders 
FOR EACH ROW 
WHEN NEW.quantity > 100 
BEGIN DELETE FROM orders WHERE id = NEW.id; END;

c)CREATE TRIGGER prevent_large_orders 
BEFORE INSERT ON orders 
FOR EACH ROW 
BEGIN 
IF NEW.quantity > 100 THEN RAISE EXCEPTION 'Limit exceeded'; END IF; 
END;

none of the above 

4) Which of the following statements is correct regarding **Third Normal Form (3NF)**?  

**Options**:  
a) Every table in 3NF must also be in 2NF and should not have any transitive dependencies.  
b) A table in 3NF can have multivalued dependencies.  
c) 3NF focuses on minimizing redundant data through denormalization.  
d) All tables in 3NF must be completely free of null values

5) Which of the following scenarios violates the **Consistency** property of a database transaction?

**Options**:  
a) A transaction that updates one record but does not commit.  
b) A transaction that leaves a database constraint, such as a foreign key, violated.  
c) Two concurrent transactions causing a deadlock.  
d) A rollback operation returning the database to the previous state.

6) What is the purpose of an Entity-Relationship (ER) diagram?

Options: 
A

To document the syntax of SQL

B

To model physical database storage

C

To illustrate database relationships

D

To monitor database performance


7) A relationship in an ER model that involves more than two entity types is known as:

A

A binary relationship

B

A ternary relationship

C

A primary relationship

D

An associative relationship


8) To add a column named "Email" of type VARCHAR to an existing table named "Users," which SQL statement is correct?

A

ALTER TABLE Users ADD COLUMN Email VARCHAR

B

ALTER TABLE Users ADD Email VARCHAR

C

UPDATE TABLE Users ADD Email VARCHAR

D

INSERT INTO Users (Email) VALUES ('VARCHAR')


9) How do you create a new user with specific privileges in MySQL?

A

CREATE USER 'user_name' IDENTIFIED BY 'password'; GRANT privileges ON database_name.* TO 'user_name'

B

CREATE USER 'user_name' WITH privileges

C

USE 'user_name' WITH privileges

D

INITIATE USER 'user_name' WITH privileges