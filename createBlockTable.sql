-- Table: Block
CREATE TABLE Block (
    block_ID INT PRIMARY KEY,
    student_ID INT,
    blockName VARCHAR(50) NOT NULL,
    FOREIGN KEY (student_ID) REFERENCES Users(student_ID)
);