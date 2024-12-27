-- Table: YearLevel
CREATE TABLE YearLevel (
    yearlevel_ID INT PRIMARY KEY,
    block_ID INT,
    yearLevel INT NOT NULL,
    FOREIGN KEY (block_ID) REFERENCES Block(block_ID)
);