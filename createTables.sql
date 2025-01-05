CREATE TABLE Department (
    department_ID INT AUTO_INCREMENT PRIMARY KEY,
    departmentName VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE YearLevel (
    yearlevel_ID INT AUTO_INCREMENT PRIMARY KEY,
    yearLevel VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Block (
    block_ID INT AUTO_INCREMENT PRIMARY KEY,
    blockName VARCHAR(255) NOT NULL UNIQUE,
    yearlevel_ID INT NOT NULL,
    FOREIGN KEY (yearlevel_ID) REFERENCES YearLevel(yearlevel_ID)
);

CREATE TABLE Event (
    event_ID INT AUTO_INCREMENT PRIMARY KEY,
    department_ID INT NOT NULL,
    yearlevel_ID INT NOT NULL,
    block_ID INT NOT NULL,
    eventName VARCHAR(255) NOT NULL,
    startTime DATETIME NOT NULL,
    endTime DATETIME NOT NULL,
    FOREIGN KEY (department_ID) REFERENCES Department(department_ID),
    FOREIGN KEY (yearlevel_ID) REFERENCES YearLevel(yearlevel_ID),
    FOREIGN KEY (block_ID) REFERENCES Block(block_ID)
);

CREATE TABLE Users (
    student_ID INT PRIMARY KEY,
    department_ID INT NOT NULL,
    yearlevel_ID INT NOT NULL,
    block_ID INT NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    firstName VARCHAR(255) NOT NULL,
    middleName VARCHAR(255),
    suffix VARCHAR(10),
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    role ENUM('Student', 'Officer') NOT NULL,
    FOREIGN KEY (department_ID) REFERENCES Department(department_ID),
    FOREIGN KEY (yearlevel_ID) REFERENCES YearLevel(yearlevel_ID),
    FOREIGN KEY (block_ID) REFERENCES Block(block_ID)
);

CREATE TABLE Attendance (
    attendance_ID INT AUTO_INCREMENT PRIMARY KEY,
    event_ID INT NOT NULL,
    student_ID INT NOT NULL,
    morning_TimeIn TIME NULL,
    morning_TimeOut TIME NULL,
    afternoon_TimeIn TIME NULL,
    afternoon_TimeOut TIME NULL,
    FOREIGN KEY (event_ID) REFERENCES Event(event_ID),
    FOREIGN KEY (student_ID) REFERENCES Users(student_ID)
);

CREATE TABLE Admins (
    admin_ID INT PRIMARY KEY,
    department_ID INT NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    firstName VARCHAR(255) NOT NULL,
    middleName VARCHAR(255),
    suffix VARCHAR(10),
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255), 
    role ENUM('Admin', 'Super Admin') NOT NULL,
    FOREIGN KEY (department_ID) REFERENCES Department(department_ID)
);

CREATE TABLE password_reset_codes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_ID INT NOT NULL,
    reset_code CHAR(5) NOT NULL,
    created_at DATETIME NOT NULL,
    used BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (student_ID) REFERENCES Users(student_ID)
);
