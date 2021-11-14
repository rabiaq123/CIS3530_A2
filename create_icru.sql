-- CIS3530 Assignment 2, Question 4a
-- Rabia Qureshi (1046427)
-- Date: November 13, 2021


-- University (uID, name, url, city, state),
-- where uID is the PK and name is unique
CREATE TABLE UNIVERSITY (
    uID     INTEGER PRIMARY KEY,
    name    VARCHAR(30) NOT NULL UNIQUE,
    url     VARCHAR(100),
    city    VARCHAR(30),
    state   VARCHAR(30)
);

-- Degree (dID, type, uID), 
-- where dID is the PK and uID is a FK from Unviersity
CREATE TABLE DEGREE (
    dID     VARCHAR(10) PRIMARY KEY,
    type    CHAR(2),
    uID     INTEGER,
    FOREIGN KEY (uID) REFERENCES UNIVERSITY
);

-- Department (deptNum, name, office, phone, directorName, uID), 
-- where deptNum is the PK and uID is a FK from Unviersity
CREATE TABLE DEPARTMENT (
    deptNum         INTEGER,
    name            VARCHAR(30) NOT NULL,
    office          VARCHAR(100),
    phone           VARCHAR(15),
    directorName    VARCHAR(30),
    uID             INTEGER,
    PRIMARY KEY (deptNum,uID),
    FOREIGN KEY (uID) REFERENCES UNIVERSITY
);

-- Country (cID, name),
-- where cID is the PK
CREATE TABLE COUNTRY (
    cID     INTEGER PRIMARY KEY,
    name    VARCHAR(30)
);

-- Agent (aID, city, firstName, lastName, phoneNum, email, commission, cID, uID),
-- where aID is the PK and cID is a FK from Country and uID is a FK from University
CREATE TABLE AGENT (
    aID         INTEGER PRIMARY KEY,
    city        VARCHAR(30),
    firstName   VARCHAR(30),
    lastName    VARCHAR(30),
    phoneNum    VARCHAR(15),
    email       VARCHAR(30),
    commission  DECIMAL,
    cID         INTEGER,
    uID         INTEGER,
    FOREIGN KEY (cID) REFERENCES COUNTRY,
    FOREIGN KEY (uID) REFERENCES UNIVERSITY
);

-- StudentsAccepted (numStudents, cID, uID),
-- where cID is a FK from Country and uID is a FK from University
CREATE TABLE STUDENTSACCEPTED (
    numStudents INTEGER NOT NULL,
    cID         INTEGER,
    uID         INTEGER,
    PRIMARY KEY (cID,uID),
    FOREIGN KEY (cID) REFERENCES COUNTRY,
    FOREIGN KEY (uID) REFERENCES UNIVERSITY
);
