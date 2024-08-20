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
