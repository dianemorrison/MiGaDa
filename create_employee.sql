-- 1. As a member of the HR team I want to be able to create a new sales employee. 
-- I should be able to store a name, salary, bank account number, national insurance number and commission rate
CREATE TABLE employee (
    employee_id int PRIMARY KEY AUTO_INCREMENT,
    f_name varchar(255),
    l_name varchar(255),
    salary decimal(9,2),
    bank_acc_num varchar(20),
    ni_num varchar(11)
);

INSERT into employee
 (f_name, l_name, salary, bank_acc_num, ni_num)
 VALUES ('Bob', 'Marley', 35000.00, 00000001, 'ab1234546a'),
('David', 'Bowie', 4000.00, 4004000002, 'bb234567b'),
('Kate', 'Bush', 40000.00, 600000003, 'cb234567c'),
('Gary', 'Barlow', 100000.00, 700000044, 'db234567d'),
('Percy', 'Pig', 5000.00, 10000000,'ff4556676'),
('Bugs', 'Bunny', 20000.00, 20000333,'hh8744455h'),
('Elmer', 'Fudd', 500.00, 456900094, 'ii7788445'),
('Foghorn', 'Longhorn', 85000.00, 5566455444,'jj9855854');

 Create TABLE sales_employee (
      
    employee_id int PRIMARY KEY,
    commission_rate decimal,
    num_sales int,
    FOREIGN KEY(employee_id)
	REFERENCES employee(employee_id)
);

INSERT into sales_employee
(employee_id,commission_rate, num_sales)
VALUES(1, 7.5, 10),
(2,3,20),
(3,11,22),
(4,20,30);

SELECT * FROM employee RIGHT JOIN sales_employee  USING (employee_id);
