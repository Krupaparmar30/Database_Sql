# Database_sql

A new Flutter project.

# Employee Details

# To Create Table

```bash
CREATE TABLE "employees" (
	"id"	INTEGER,
	"name"	TEXT NOT NULL,
	"role"	TEXT NOT NULL,
	"salary" INTEGER NOT NULL,
	"age"	INTEGER NOT NULL,
	"address" TEXT NOT NULL,
	"phone"	INTEGER NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);

```

# Insert a data

- Field names: id, name, role, salary, age, address, phone.
- Add a new employee with all the details
```bash
  INSERT INTO employees (name,role,salary,age,address,phone) VALUES ("Krupa Parmar","flutter devloper",50000,19,"123,radhe krishna soc,surat",9568532147);
```

- Add multiple employees with selective data:

```bash
INSERT INTO employees (name,role,salary,age,address,phone) VALUES ("Krupa Parmar","flutter devloper",50000,19,"123,radhe krishna soc,surat",9568532147);
INSERT INTO employees (name,role,salary,age,address,phone) VALUES ("Kunjal Parmar","webside devloper",25000,21,"85932,radhe syam soc,mumbai",9568596247);
INSERT INTO employees (name,role,salary,age,address,phone) VALUES ("Mihika Sharma","ui-ux devloper",20000,22,"2563,shiv krishna soc,bharuch",9525532147);
INSERT INTO employees (name,role,salary,age,address,phone) VALUES ("Jinal Panchal","flutter devloper",30000,21,"5545,gokuldham soc,surat",9553532147);
INSERT INTO employees (name,role,salary,age,address,phone) VALUES ("Krishna Parmar","ui-ux devloper",50000,19,"52,goldan plaza soc,surat",9568532147);
INSERT INTO employees (name,role,salary,age,address,phone) VALUES ("Nikita Pithva","webside devloper",40000,23,"5485,shiv shakti soc,vadodra",9668532547);
INSERT INTO employees (name,role,salary,age,address,phone) VALUES ("Sneha Panchal","flutter devloper",48000,24,"155,starcity soc,surat",9568532147);
```

# Read a data

- Retrieve all employee information:
  
```bash
SELECT * FROM employees;
```
# Get specific columns for all employees (e.g., name, salary)

```bash
SELECT name,salary FROM employees WHERE name=name;
```
# Find employees with a particular role (e.g., Manager):

```bash
SELECT name,role FROM employees WHERE role="flutter devloper";
```

# Search for employees with names containing "An" (case-insensitive):

```bash
SELECT name FROM employees WHERE name LIKE 'k%';
```

# Find employees older than 20 and earning more than 20,000:

```bash
SELECT * FROM employees WHERE (salary > 20000) AND age>=20;
```
# Change the salary of an employee with ID 5:

```bash
UPDATE employees 
SET salary=14780000
WHERE id = 5
```
# Update the address for employees in the 'Sales' role:

```bash
UPDATE employees
SET address = '152,royal plaza,surat'
WHERE role="webside devloper";
```
# Remove an employee with ID 101:

```bash
DELETE FROM employees WHERE id=4
```
# Delete all employees under 20 (assuming it's not a valid age).
```bash
DELETE FROM employees WHERE age<20
```

<p>
  <img src="https://github.com/user-attachments/assets/ed3d9684-2e57-4d32-a77f-9a417dd74414" height=28% width=32%>
  <img src="https://github.com/user-attachments/assets/c4420182-ed72-4a9c-9d25-74d9f72aa4fd" height=28% width=32%>
</p>

<p>

  <img src="https://github.com/user-attachments/assets/3a5c86a5-f5e5-4220-b7bd-95efee6c5845" height=28% width=32%>
    <img src="https://github.com/user-attachments/assets/5cefe886-b7f1-4f1f-b62a-79c996662524" height=28% width=32%>


</p>

