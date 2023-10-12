USE kainoosSoftworn_MiaG;

-- 4. As a member of the Sales team I want to be able to create a new project. 
-- I should be able to store a project name, value and a list of technologies that the project will use

CREATE TABLE technology (
    technology_id int PRIMARY KEY AUTO_INCREMENT,
    technology_name varchar(50) NOT NULL
);

CREATE TABLE project (
    project_id int PRIMARY KEY AUTO_INCREMENT,
    client_id int NOT NULL,
    project_name varchar(255) NOT NULL,
    project_value decimal (10,2) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    tech_lead int NOT NULL,    
    FOREIGN KEY(client_id) REFERENCES client(client_id)
);

CREATE TABLE tech_project (
    tech_project_id int PRIMARY KEY AUTO_INCREMENT,
    technology_id int NOT NULL,
    project_id int NOT NULL,
    FOREIGN KEY(technology_id) REFERENCES technology(technology_id),
    FOREIGN KEY(project_id) REFERENCES project(project_id)
);

INSERT INTO technology(technology_name) VALUES('Java'), ('Javascript'), ('MySQL'), ('C#'), ('Python'), ('Ruby'), ('Linux'), ('AWS'), ('Node.js'); 

INSERT INTO project(project_name, project_value, start_date, end_date, tech_lead) 
VALUES('MaGaDi', 48000, '2023-10-10', '2025-10-10', 1);

UPDATE project
SET start_date = '2023-10-10',
end_date = '2025-10-10'
WHERE project_id = 1;


-- assumpution that this is the first time data is entered into the table
INSERT INTO tech_project(technology_id, project_id) VALUES(1,1); 

