-- Table: Attendance
CREATE TABLE Attendance (
    attendance_ID INT PRIMARY KEY,
    event_ID INT,
    student_ID INT,
    morning_TimeIn TIME,
    morning_TimeOut TIME,
    afternoon_TimeIn TIME,
    afternoon_TimeOut TIME,
    FOREIGN KEY (event_ID) REFERENCES Event(event_ID),
    FOREIGN KEY (student_ID) REFERENCES Users(student_ID)
);