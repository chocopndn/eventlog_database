-- Table: Event
CREATE TABLE Event (
    event_ID INT PRIMARY KEY,
    department_ID INT,
    yearlevel_ID INT,
    block_ID INT,
    eventName VARCHAR(100) NOT NULL,
    startTime DATETIME NOT NULL,
    endTime DATETIME NOT NULL,
    FOREIGN KEY (department_ID) REFERENCES Department(department_ID),
    FOREIGN KEY (yearlevel_ID) REFERENCES YearLevel(yearlevel_ID),
    FOREIGN KEY (block_ID) REFERENCES Block(block_ID)
);