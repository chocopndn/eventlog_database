-- Table: Users
CREATE TABLE Users (
    student_ID INT PRIMARY KEY,
    department_ID INT,
    lastName VARCHAR(100) NOT NULL,
    firstName VARCHAR(100) NOT NULL,
    middleName VARCHAR(100),
    yearLevel INT,
    block VARCHAR(50),
    email VARCHAR(100) NOT NULL,
    role VARCHAR(50) NOT NULL
    -- FOREIGN KEY (department_ID) REFERENCES Department(department_ID)
)