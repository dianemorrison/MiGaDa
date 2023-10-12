USE KainoosSoftworn_MiaG;
-- 3. As a member of the Sales team I want to be able to create a new client. 
-- I should be able to store a name, address and phone number

CREATE TABLE client (
    client_id int PRIMARY KEY AUTO_INCREMENT,
    client_name varchar(255) NOT NULL,
    client_address varchar(255) NOT NULL,
    phone_num varchar(20) NOT NULL
);

INSERT INTO client(client_name, client_address, phone_num)
VALUES('Kainos', '40 Botanic Avenue', '028 9087 0987');

INSERT INTO client(client_name, client_address, phone_num)
VALUES(NULL, '40 Botanic Avenue', '028 9087 0987');