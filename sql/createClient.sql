-- 3. As a member of the Sales team I want to be able to create a new client. 
-- I should be able to store a name, address and phone number

CREATE TABLE client (
    client_id int PRIMARY KEY AUTO_INCREMENT,
    f_name varchar(255),
    l_name varchar(255),
    client_address varchar(255),
    phone_num varchar(20)
);

INSERT INTO client(f_name, l_name, client_address, phone_num)
VALUES('John', 'Smith', '40 Botanic Avenue', '028 9087 0987'), 
('Jane', 'Doe' '6 Jersey Avenue', '028 9087 1234'),
('David', 'Jones',  '50 Donegal Road', '028 1234 0987');