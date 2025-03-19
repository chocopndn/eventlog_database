CREATE TABLE roles (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE departments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    code VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE year_levels (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE courses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments (id) ON DELETE CASCADE
);
CREATE TABLE blocks (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    course_id INT NOT NULL,
    year_level_id INT NOT NULL,
    department_id INT,
    FOREIGN KEY (course_id) REFERENCES courses (id) ON DELETE CASCADE,
    FOREIGN KEY (year_level_id) REFERENCES year_levels (id) ON DELETE CASCADE,
    FOREIGN KEY (department_id) REFERENCES departments (id) ON DELETE RESTRICT
);
CREATE TABLE admins (
    id_number VARCHAR(20) PRIMARY KEY,
    role_id INT NOT NULL,
    department_id INT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255) NULL,
    last_name VARCHAR(255) NOT NULL,
    suffix VARCHAR(50) NULL,
    email VARCHAR(255) NULL UNIQUE,
    password_hash VARCHAR(255) NULL,
    FOREIGN KEY (role_id) REFERENCES roles (id) ON DELETE RESTRICT,
    FOREIGN KEY (department_id) REFERENCES departments (id) ON DELETE RESTRICT
);
CREATE TABLE users (
    id_number VARCHAR(20) PRIMARY KEY,
    role_id INT NOT NULL,
    block_id INT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255) NULL,
    last_name VARCHAR(255) NOT NULL,
    suffix VARCHAR(50) NULL,
    email VARCHAR(255) NULL UNIQUE,
    password_hash VARCHAR(255) NULL,
    FOREIGN KEY (role_id) REFERENCES roles (id) ON DELETE RESTRICT,
    FOREIGN KEY (block_id) REFERENCES blocks (id) ON DELETE RESTRICT
);
CREATE TABLE event_names (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE
);
CREATE TABLE events (
    id INT PRIMARY KEY AUTO_INCREMENT,
    event_name_id INT NOT NULL,
    venue VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    scan_personnel TEXT NOT NULL,
    status VARCHAR(20) NOT NULL,
    created_by VARCHAR(20) NOT NULL,
    approved_by VARCHAR(20) NULL,
    FOREIGN KEY (event_name_id) REFERENCES event_names (id) ON DELETE CASCADE,
    FOREIGN KEY (created_by) REFERENCES admins (id_number) ON DELETE CASCADE,
    FOREIGN KEY (approved_by) REFERENCES admins (id_number) ON DELETE
    SET NULL
);
CREATE TABLE event_dates (
    id INT PRIMARY KEY AUTO_INCREMENT,
    event_id INT NOT NULL,
    event_date DATE NOT NULL,
    am_in TIME NULL,
    am_out TIME NULL,
    pm_in TIME NULL,
    pm_out TIME NULL,
    duration INT NULL,
    FOREIGN KEY (event_id) REFERENCES events (id) ON DELETE CASCADE,
    CONSTRAINT unique_event_date UNIQUE (event_id, event_date)
);
CREATE TABLE event_blocks (
    id INT PRIMARY KEY AUTO_INCREMENT,
    event_id INT NOT NULL,
    block_id INT NULL,
    FOREIGN KEY (event_id) REFERENCES events (id) ON DELETE CASCADE,
    FOREIGN KEY (block_id) REFERENCES blocks (id) ON DELETE RESTRICT,
    CONSTRAINT unique_event_block UNIQUE (event_id, block_id)
);
CREATE TABLE attendance (
    id INT PRIMARY KEY AUTO_INCREMENT,
    event_date_id INT NOT NULL,
    student_id_number VARCHAR(20) NOT NULL,
    am_in TIME NULL,
    am_out TIME NULL,
    pm_in TIME NULL,
    pm_out TIME NULL,
    FOREIGN KEY (event_date_id) REFERENCES event_dates (id) ON DELETE CASCADE,
    FOREIGN KEY (student_id_number) REFERENCES users (id_number) ON DELETE CASCADE,
    CONSTRAINT unique_attendance UNIQUE (
        event_date_id,
        student_id_number
    )
);
CREATE TABLE password_reset_codes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    reset_code CHAR(5) NOT NULL,
    created_at DATETIME NOT NULL,
    used BOOLEAN NOT NULL,
    CONSTRAINT unique_active_reset_code UNIQUE (email, used)
);