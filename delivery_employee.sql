
-- 2. As a member of the HR team I want to be able to create a new delivery employee. 
-- I should be able to store a name, salary, bank account number and national insurance number


CREATE TABLE delivery_employee (
    
    employee_id int PRIMARY KEY,
    FOREIGN KEY(employee_id)
	REFERENCES employee(employee_id)
);

INSERT into delivery_employee
(employee_id )
VALUES(5),(6),(7),(8);

SELECT * FROM employee RIGHT JOIN delivery_employee using (employee_id);