-- CIS3530 Assignment 2, Question 4b
-- Rabia Qureshi (1046427)
-- Date: November 13, 2021


-- University (uID, name, url, city, state),
INSERT INTO UNIVERSITY VALUES (1, 'U of Guelph', 'https://www.uoguelph.ca/', 'Guelph', 'ON');
INSERT INTO UNIVERSITY VALUES (2, 'U of Toronto', 'https://www.utoronto.ca/', 'Toronto', 'ON');
INSERT INTO UNIVERSITY VALUES (3, 'Ryerson U', 'https://www.ryerson.ca/', 'Toronto', 'ON');
INSERT INTO UNIVERSITY VALUES (4, 'Wilfred Laurier U', 'https://www.wlu.ca/', 'Waterloo', 'ON');
INSERT INTO UNIVERSITY VALUES (5, 'Queens u', 'https://www.queensu.ca/', 'Kingston', 'ON');

-- Degree (dID, type, uID), 
INSERT INTO DEGREE VALUES ('B.Sc', 'UG', 2);
INSERT INTO DEGREE VALUES ('MAC', 'UG', 1);
INSERT INTO DEGREE VALUES ('MBA', 'PG', 1);
INSERT INTO DEGREE VALUES ('M.Engg', 'PG', 1);
INSERT INTO DEGREE VALUES ('BAC', 'UG', 5);

-- Department (deptNum, name, office, phone, directorName, uID), 
INSERT INTO DEPARTMENT VALUES (1, 'CIS', 'Reynolds Building', '5195343453', 'Minglun Gong', 1);
INSERT INTO DEPARTMENT VALUES (2, 'CJPP', 'Thornborough Building', '5195343453', 'Minglun Gong', 1);
INSERT INTO DEPARTMENT VALUES (2, 'CS', 'Summerlee Science Complex', '4163356396', 'John White', 2);
INSERT INTO DEPARTMENT VALUES (4, 'CIS', 'Another Building', '5196638593', 'Emily Scott', 3);
INSERT INTO DEPARTMENT VALUES (5, 'ENGL', 'Library Building', '4168540099', 'Jane Doe', 4);

-- Country (cID, name),
INSERT INTO COUNTRY VALUES (1, 'United States');
INSERT INTO COUNTRY VALUES (2, 'Turkey');
INSERT INTO COUNTRY VALUES (3, 'Pakistan');
INSERT INTO COUNTRY VALUES (4, 'Italy');
INSERT INTO COUNTRY VALUES (5, 'Japan');

-- Agent (aID, city, firstName, lastName, phoneNum, email, commission, cID, uID),
INSERT INTO AGENT VALUES (1, 'California', 'Amy', 'White', 9056437733, 'amy@gmail.com', 85, 1, 1);
INSERT INTO AGENT VALUES (2, 'Istanbul', 'Halime', 'Aydın', 5643783658, 'halime@yahoo.ca', 95, 2, 1);
INSERT INTO AGENT VALUES (3, 'Karachi', 'Rayed', 'Ali', 991457375314, 'r_ali@gmail.com', 93, 3, 2);
INSERT INTO AGENT VALUES (4, 'Rome', 'Luca', 'Russo', 0035840362, 'luca@outlook.ca', 90, 4, 3);
INSERT INTO AGENT VALUES (5, 'Tokyo', 'Aiya', 'Takahashi', 4458537346, 'aiya@gmail.com', 92, 5, 5);

-- StudentsAccepted (numStudents, cID, uID),
INSERT INTO STUDENTSACCEPTED VALUES (65, 1, 3);
INSERT INTO STUDENTSACCEPTED VALUES (24, 2, 2);
INSERT INTO STUDENTSACCEPTED VALUES (37, 3, 4);
INSERT INTO STUDENTSACCEPTED VALUES (35, 4, 5);
INSERT INTO STUDENTSACCEPTED VALUES (53, 5, 1);
