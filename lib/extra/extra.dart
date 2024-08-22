// * insert
// INSERT INTO employee(name,role,salary,age,address,phone) VALUES("Kunjal Panchal","Employee",30000,20,"fvgd,Mumbai",9586214785);
// INSERT INTO employee(name,role,salary,age,address,phone) VALUES("Mihika Sharma","Employee",20000,21,"hdeed,surat",9563245256);
// INSERT INTO employee(name,role,salary,age,address,phone) VALUES("Nikita Pithva","Manager",50000,22,"cdcsd,Vadodra",9586548526);
// INSERT INTO employee(name,role,salary,age,address,phone) VALUES("Aishwarya Baisane","Manager",50000,18,"dfsfvs,surat",95865248526);
//
// * read
//
// SELECT * FROM employee WHERE id=4;
//
//
// * spcifice name,salary
//
// SELECT name,salary FROM employee WHERE name=name;
//
//
// * specific manager role,name
//
// SELECT name,role FROM employee WHERE role="Manager";
//
//
//
// * case-sensitive
//
// SELECT name FROM employee WHERE name LIKE 'k%';
//
//
// * older then age and more then salary
//
// SELECT * FROM employee WHERE (salary>20000)AND age > 20;
//
//
//
// * select id change salary
//
// UPDATE employee
// SET salary=14780000
// WHERE id = 5
//
//
// * update employee role
//
// UPDATE employee
// SET role = 'employee'
// WHERE id = 1;
//
// * Remove/delete id
//
// DELETE FROM employee WHERE id=5
//
// * delete all employee age under 20
//
// DELETE FROM employee WHERE age<=20

// * comapresion --------------
// SELECT id FROM employee
// WHERE id > 5;
// SELECT name FROM employee
// WHERE name > "Aishwarya Baisane";