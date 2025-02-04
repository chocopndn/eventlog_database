CREATE TABLE department (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE year_level (
    yearlevel_id INT AUTO_INCREMENT PRIMARY KEY,
    year_level VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE block (
    block_id INT AUTO_INCREMENT PRIMARY KEY,
    block_name VARCHAR(255) NOT NULL UNIQUE,
    yearlevel_id INT NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (yearlevel_id) REFERENCES year_level(yearlevel_id),
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

CREATE TABLE event_names (
    event_name_id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    department_id INT,
    block_id INT,
    event_name_id INT NOT NULL,
    venue VARCHAR(255) NOT NULL,
    date_of_event DATE NOT NULL,
    am_in TIME,
    am_out TIME,
    pm_in TIME,
    pm_out TIME,
    scan_personnel VARCHAR(255),
    FOREIGN KEY (department_id) REFERENCES department(department_id),
    FOREIGN KEY (block_id) REFERENCES block(block_id),
    FOREIGN KEY (event_name_id) REFERENCES event_names(event_name_id)
);

CREATE TABLE users (
    student_id INT PRIMARY KEY,
    department_id INT NOT NULL,
    yearlevel_id INT NOT NULL,
    block_id INT NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    suffix VARCHAR(10),
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    role VARCHAR(10) DEFAULT 'Student',
    FOREIGN KEY (department_id) REFERENCES department(department_id),
    FOREIGN KEY (yearlevel_id) REFERENCES year_level(yearlevel_id),
    FOREIGN KEY (block_id) REFERENCES block(block_id)
);

CREATE TABLE attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    event_id INT NOT NULL,
    student_id INT NOT NULL,
    am_in TIME NULL,
    am_out TIME NULL,
    pm_in TIME NULL,
    pm_out TIME NULL,
    FOREIGN KEY (event_id) REFERENCES events(event_id),
    FOREIGN KEY (student_id) REFERENCES users(student_id)
);

CREATE TABLE admins (
    admin_id INT PRIMARY KEY,
    department_id INT NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    suffix VARCHAR(10),
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    role ENUM('Admin', 'Super Admin') NOT NULL,
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

CREATE TABLE password_reset_codes (
    code_id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    reset_code INT NOT NULL,
    created_at DATETIME NOT NULL,
    used BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (email) REFERENCES users(email)
);
