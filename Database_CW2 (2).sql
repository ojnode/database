--------------------------------
-- writen by Prince Ojinnaka----
---------------------------------



----------------------------------
-- Table structure for STUDENTS --
----------------------------------
CREATE TYPE student_level_enum AS ENUM ('L4', 'L5', 'L6', 'L7');
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_first_name VARCHAR(30) NOT NULL,
    student_middle_name VARCHAR(30),
    student_last_name VARCHAR(30) NOT NULL,
    student_address_line1 VARCHAR(50) NOT NULL,
    student_address_line2 VARCHAR(50),
    student_city VARCHAR(30) NOT NULL,
    student_postcode VARCHAR(8)	NOT NULL,
    student_phone_number VARCHAR(15) NOT NULL UNIQUE,
    student_level student_level_enum NOT NULL,
    student_school_email VARCHAR(100) NOT NULL UNIQUE,
    student_personal_email VARCHAR(100)NOT NULL UNIQUE
);

-- Add index on student_level
CREATE INDEX idx_student_level ON students (student_level);

-------------------------
-- Records of STUDENTS --
-------------------------
INSERT INTO students (student_first_name, student_middle_name, student_last_name, student_address_line1, student_address_line2, student_city, student_postcode, student_phone_number, student_level, student_school_email, student_personal_email)
VALUES
('Alice', NULL, 'Smith', '123 Main Street', 'Apt 1', 'London', 'SW1A 1AA', '555-123-4567', 'L4', 'stu00001@stellar.ac.uk', 'alice.smith@gmail.com'),
('Benjamin', 'James', 'Johnson', '456 Elm Street', 'Suite 200', 'Manchester', 'M1 1AA', '555-987-6543', 'L4', 'stu00002@stellar.ac.uk', 'benjamin.johnson@gmail.com'),
('Charlotte', NULL, 'Williams', '789 Oak Street', NULL, 'Birmingham', 'B1 1AA', '555-456-7890', 'L4', 'stu00003@stellar.ac.uk', 'charlotte.williams@gmail.com'),
('Daniel', 'Joseph', 'Brown', '101 Pine Street', 'Unit B', 'Liverpool', 'L1 1AA', '555-789-0123', 'L4', 'stu00004@stellar.ac.uk', 'daniel.brown@gmail.com'),
('Emma', 'Grace', 'Jones', '321 Cedar Street', NULL, 'Glasgow', 'G1 1AA', '555-234-4678', 'L5', 'stu00005@stellar.ac.uk', 'emma.jones@gmail.com'),
('Finn', NULL, 'Davis', '456 Maple Avenue', 'Apartment 5B', 'Leeds', 'LS1 1AA', '555-345-6789', 'L5', 'stu00006@stellar.ac.uk', 'finn.davis@gmail.com'),
('Grace', 'Olivia', 'Miller', '789 Oak Lane', NULL, 'Sheffield', 'S1 1AA', '555-456-7891', 'L5', 'stu00007@stellar.ac.uk', 'grace.miller@gmail.com'),
('Henry', 'William', 'Wilson', '101 Pine Drive', NULL, 'Newcastle', 'NE1 1AA', '555-567-8901', 'L5', 'stu00008@stellar.ac.uk', 'henry.wilson@gmail.com'),
('Isabella', 'Mia', 'Taylor', '321 Cedar Lane', 'Flat 3', 'Bristol', 'BS1 1AA', '555-678-9012', 'L6', 'stu00009@stellar.ac.uk', 'isabella.taylor@gmail.com'),
('Jacob', NULL, 'Anderson', '456 Maple Drive', 'Unit 7', 'Edinburgh', 'EH1 1AA', '555-789-1123', 'L6', 'stu00010@stellar.ac.uk', 'jacob.anderson@gmail.com'),
('Liam', 'Oliver', 'Thomas', '789 Oak Drive', NULL, 'Cardiff', 'CF10 1AA', '555-890-1234', 'L6', 'stu00011@stellar.ac.uk', 'liam.thomas@gmail.com'),
('Mia', 'Sophia', 'Jackson', '101 Pine Lane', NULL, 'Manchester', 'M2 1AA', '555-901-2345', 'L6', 'stu00012@stellar.ac.uk', 'mia.jackson@gmail.com'),
('Noah', 'James', 'White', '321 Cedar Drive', 'Suite 10', 'London', 'E1 1AA', '555-012-3456', 'L7', 'stu00013@stellar.ac.uk', 'noah.white@gmail.com'),
('Olivia', 'Emily', 'Harris', '456 Maple Lane', NULL, 'Birmingham', 'B2 1AA', '555-123-4537', 'L7', 'stu00014@stellar.ac.uk', 'olivia.harris@gmail.com'),
('William', 'Alexander', 'Martinez', '789 Oak Avenue', 'Floor 4', 'Glasgow', 'G2 1AA', '555-234-5678', 'L7', 'stu00015@stellar.ac.uk', 'william.martinez@gmail.com'),
('Amelia', 'Ethan', 'Thompson', '101 Pine Street', 'Suite 20', 'Leeds', 'LS1 1AA', '555-345-5789', 'L7', 'stu00016@stellar.ac.uk', 'amelia.thompson@gmail.com');





-----------------------------------
-- Table structure for GUARDIANS --
-----------------------------------
CREATE TABLE guardians (
    guardian_id SERIAL PRIMARY KEY,
    guardian_first_name VARCHAR(30) NOT NULL,
    guardian_middle_name VARCHAR(30),
    guardian_last_name VARCHAR(30) NOT NULL,
    guardian_address_line1 VARCHAR(50) NOT NULL,
    guardian_address_line2 VARCHAR(50),
    guardian_city VARCHAR(30) NOT NULL,
    guardian_postcode VARCHAR(8) NOT NULL,
    guardian_phone_number VARCHAR(15) NOT NULL UNIQUE,
    guardian_email VARCHAR(100) NOT NULL UNIQUE
);

--------------------------
-- Records of GUARDIANS --
--------------------------
INSERT INTO guardians (guardian_first_name, guardian_middle_name, guardian_last_name, guardian_address_line1, guardian_address_line2, guardian_city, guardian_postcode, guardian_phone_number, guardian_email)
VALUES 
('John', 'Michael', 'Doe', '123 Main St', 'Apt 2', 'Springfield', 'AB12 3CD', '555-123-4567', 'john.doe@gmail.com'),
('Alice', NULL, 'Smith', '456 Elm St', NULL, 'Riverside', 'EF34 5GH', '555-987-6543', 'alice.smith@gmail.com'),
('Robert', 'James', 'Johnson', '789 Oak St', 'Suite 101', 'Hilltown', 'IJ67 8KL', '555-234-5678', 'robert.johnson@gmail.com'),
('Emily', 'Marie', 'Williams', '321 Pine St', NULL, 'Lakeside', 'MN89 0OP', '555-876-5432', 'emily.williams@gmail.com'),
('Michael', NULL, 'Brown', '654 Birch St', NULL, 'Meadowville', 'QR12 3ST', '555-456-7890', 'michael.brown@gmail.com'),
('Jessica', 'Anne', 'Jones', '987 Cedar St', 'Unit B', 'Mapleton', 'UV34 5WX', '555-789-0123', 'jessica.jones@gmail.com'),
('William', 'David', 'Davis', '159 Elm St', NULL, 'Valleyview', 'YZ67 8AB', '555-371-6549', 'william.davis@gmail.com'),
('Sarah', NULL, 'Miller', '357 Oak St', NULL, 'Riverdale', 'CD89 0EF', '555-654-9870', 'sarah.miller@gmail.com'),
('Michaela', 'Jane', 'Wilson', '753 Pine St', 'Apt 3C', 'Sunset', 'GH12 3IJ', '555-987-6541', 'michaela.wilson@gmail.com'),
('Christopher', 'John', 'Martinez', '852 Maple St', 'Suite 210', 'Moonlight', 'KL34 5MN', '555-234-5676', 'christopher.martinez@gmail.com'),
('Hannah', NULL, 'Thompson', '456 Birch St', NULL, 'Hillside', 'OP67 8QR', '555-876-5434', 'hannah.thompson@gmail.com'),
('Andrew', 'William', 'Harris', '951 Cedar St', 'Unit D', 'Beachside', 'ST89 0UV', '555-456-7880', 'andrew.harris@gmail.com'),
('Sophia', 'Elizabeth', 'Clark', '369 Oak St', NULL, 'Springvale', 'WX12 3YZ', '555-789-0143', 'sophia.clark@gmail.com'),
('David', NULL, 'Lewis', '753 Pine St', 'Apt 5A', 'Lakeview', 'AB34 5CD', '555-321-6549', 'david.lewis@gmail.com'),
('Madison', 'Grace', 'Lee', '258 Elm St', NULL, 'Riverside', 'EF67 8GH', '555-654-9270', 'madison.lee@gmail.com'),
('Jacob', 'Daniel', 'Scott', '753 Maple St', 'Suite 102', 'Hilltown', 'IJ89 0KL', '555-987-6549', 'jacob.scott@gmail.com');






---------------------------------------
-- Table structure for STAFF_MEMBERS --
---------------------------------------
CREATE TABLE staff_members (
    staff_id SERIAL PRIMARY KEY,
    staff_first_name VARCHAR(30) NOT NULL,
    staff_middle_name VARCHAR(30),
    staff_last_name VARCHAR(30) NOT NULL,
    staff_address_line1 VARCHAR(50) NOT NULL,
    staff_address_line2 VARCHAR(50),
    staff_city VARCHAR(30) NOT NULL,
    staff_postcode VARCHAR(8) NOT NULL,
    staff_phone_number VARCHAR(15) NOT NULL UNIQUE,
    staff_email VARCHAR(100) NOT NULL UNIQUE
);

------------------------------
-- Records of STAFF_MEMBERS --
------------------------------
INSERT INTO staff_members (staff_first_name, staff_middle_name, staff_last_name, staff_address_line1, staff_address_line2, staff_city, staff_postcode, staff_phone_number, staff_email)
VALUES
('John', 'Robert', 'Smith', '123 Main Street', 'Floor 2', 'Manchester', 'M1 1AB', '555-123-4567', 'john.smith@example.com'),
('Emily', NULL, 'Johnson', '456 Elm Street', NULL, 'London', 'W1F 1AA', '555-234-5678', 'emily.johnson@example.com'),
('Michael', 'David', 'Williams', '789 Oak Avenue', 'Suite 101', 'Birmingham', 'B2 4BB', '555-345-6789', 'michael.williams@example.com'),
('Sophia', NULL, 'Brown', '101 Pine Lane', NULL, 'Liverpool', 'L3 5CD', '555-456-7890', 'sophia.brown@example.com'),
('Daniel', 'William', 'Davis', '321 Cedar Drive', NULL, 'Leeds', 'LS1 4FG', '555-567-8901', 'daniel.davis@example.com'),
('Olivia', NULL, 'Miller', '456 Maple Avenue', 'Apt 303', 'Glasgow', 'G1 3BH', '555-678-9012', 'olivia.miller@example.com'),
('James', 'Andrew', 'Wilson', '789 Oak Lane', NULL, 'Sheffield', 'S1 2EF', '555-789-0123', 'james.wilson@example.com'),
('Amelia', NULL, 'Taylor', '101 Pine Street', NULL, 'Newcastle', 'NE1 6XY', '555-890-1234', 'amelia.taylor@example.com'),
('Alexander', 'Jack', 'Anderson', '321 Cedar Lane', NULL, 'Bristol', 'BS1 5ZA', '555-901-2345', 'alexander.anderson@example.com'),
('Emma', NULL, 'Thomas', '456 Maple Street', 'Suite 202', 'Edinburgh', 'EH1 1QW', '555-012-3456', 'emma.thomas@example.com'),
('William', 'Christopher', 'Harris', '789 Oak Drive', 'Floor 3', 'Cardiff', 'CF10 2XY', '555-123-3567', 'william.harris@example.com'),
('Charlotte', NULL, 'Jackson', '101 Pine Avenue', NULL, 'Manchester', 'M4 2AB', '555-234-2678', 'charlotte.jackson@example.com');





-------------------------------------
-- Table structure for DEPARTMENTS --
-------------------------------------
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL UNIQUE,
    department_type VARCHAR(50) NOT NULL,
    department_email VARCHAR(100) NOT NULL UNIQUE,
    department_phone VARCHAR(15) NOT NULL UNIQUE,
    number_of_staff INTEGER NOT NULL
);

----------------------------
-- Records of DEPARTMENTS --
----------------------------
INSERT INTO departments (department_name, department_type, department_email, department_phone, number_of_staff)
VALUES
('Arts', 'Academic', 'art@stellar.ac.uk', '222-333-4444', 2),
('Computing', 'Academic', 'computing@stellar.ac.uk', '333-444-5555', 2),
('Humanity', 'Academic', 'humanity@stellar.ac.uk', '111-222-3333', 2),
('Mathematics', 'Academic', 'math@stellar.ac.uk', '123-456-7890', 2),
('Finance', 'Administrative', 'finance@stellar.ac.uk', '123-456-7895', 2),
('Human Resources', 'Administrative', 'hr@stellar.ac.uk', '987-654-3210', 2);






----------------------------------
-- Table structure for MODULES --
----------------------------------
CREATE TABLE modules (
    module_id SERIAL PRIMARY KEY,
    module_title VARCHAR(50) NOT NULL,
    module_description VARCHAR(250) NOT NULL,
    module_pass_mark DECIMAL(4,1) NOT NULL
);

-------------------------
-- Records of MODULES --
-------------------------
INSERT INTO modules (module_title, module_description, module_pass_mark)
VALUES
-- Art Courses' Subjects
('Brush Techniques', 'Exploration of various brush techniques used in painting', 40.0),
('Composition Principles', 'Study of composition principles and their application in painting', 40.0),
('Basic Sculpting Techniques', 'Introduction to basic sculpting techniques such as modeling and carving', 50.0),
('Exploring Three-Dimensional Space', 'Techniques for creating depth and dimensionality in sculptures', 60.0),
-- Computing Courses' Subjects
('Control Structures and Functions', 'Introduction to control structures and functions in programming', 50.0),
('Object-Oriented Programming Basics', 'Introduction to object-oriented programming principles and concepts', 50.0),
('Relational Database Design', 'Fundamentals of designing relational databases and entity-relationship modeling', 50.0),
('SQL Fundamentals', 'Introduction to SQL (Structured Query Language) for database querying and manipulation', 60.0),
-- Humanity Courses' Subjects
('Literature Appreciation', 'Study and analysis of literary works from various genres', 40.0),
('Cultural Studies', 'Exploration of cultural phenomena and societal issues', 40.0),
('Cultural History', 'Exploration of cultural history and its impact on society', 50.0),
('Cultural Anthropology', 'Study of human cultures and societies across time and space', 50.0),
-- Mathematics Courses' Subjects
('Descriptive Statistics', 'Introduction to descriptive statistical measures and analysis techniques', 40.0),
('Statistical Inference', 'Methods for making inferences and drawing conclusions from data', 40.0),
('Advanced Topics in Calculus', 'Exploration of advanced topics such as differential geometry, calculus of variations, and complex analysis', 50.0),
('Limits and Continuity', 'Introduction to limits and continuity in calculus', 60.0);






-------------------------------
-- Table structure for ROLES --
-------------------------------
CREATE TABLE roles (
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(30) NOT NULL UNIQUE
);

----------------------
-- Records of ROLES --
----------------------
INSERT INTO roles (role_name)
VALUES
('Head Teacher'),
('Teacher'),
('Assistant Teacher'),
('Administrator'),
('Counselor'),
('Financial Manager'),
('IT Technician'),
('Maintenance Staff'),
('Registrar'),
('School Nurse'),
('Security Officer');







---------------------------------
-- Table structure for COURSES --
---------------------------------
CREATE TYPE course_level_enum AS ENUM ('L4', 'L5', 'L6', 'L7');
CREATE TABLE courses(
    course_id SERIAL PRIMARY KEY,
    department_id INTEGER NOT NULL,
    course_name VARCHAR(50) NOT NULL,
    course_level course_level_enum NOT NULL,
    course_duration VARCHAR(20) NOT NULL,
    course_description VARCHAR(250) NOT NULL,
    course_pass_mark DECIMAL(4,1) NOT NULL,
    course_fees DECIMAL(6,2) NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Add index on department_id
CREATE INDEX idx_courses_department_id ON courses (department_id);

------------------------
-- Records of COURSES --
------------------------
INSERT INTO courses (department_id, course_name, course_level, course_duration, course_description, course_pass_mark, course_fees)
VALUES
-- Arts Department Courses
(1, 'Painting Basics', 'L4', '6 weeks', 'Introduction to fundamental painting techniques and color theory', 40.0, 170.00),
(1, 'Sculpture Introduction', 'L6', '8 weeks', 'Introduction to sculpting materials and techniques', 50.0, 190.00),
-- Computing Department Courses
(2, 'Programming Essentials', 'L7', '10 weeks', 'Introduction to essential programming concepts and logic', 50.0, 200.00),
(2, 'Database Fundamentals', 'L7', '8 weeks', 'Introduction to fundamental database design and management', 50.0, 200.00),
-- Humanities Department Courses
(3, 'Literary Analysis Introduction', 'L5', '6 weeks', 'Introduction to literary analysis and interpretation', 40.0, 180.00),
(3, 'Cultural Studies Fundamentals', 'L5', '8 weeks', 'Introduction to fundamental cultural studies and cultural phenomena', 50.0, 200.00),
-- Mathematics Department Courses
(4, 'Statistics Fundamentals', 'L4', '8 weeks', 'Introduction to basic statistical concepts and data analysis', 50.0, 180.00),
(4, 'Calculus Overview', 'L6', '10 weeks', 'Introduction to differential and integral calculus', 50.0, 200.00);






----------------------------------------
-- Table structure for STAFF_SCHEDULE --
----------------------------------------
CREATE TABLE staff_schedule (
    staff_schedule_id SERIAL PRIMARY KEY,
    staff_id INT NOT NULL,
    schedule_date DATE NOT NULL,
    schedule_start_time TIME NOT NULL,
    schedule_end_time TIME NOT NULL,
    schedule_activity VARCHAR(50) NOT NULL,
    schedule_address_line1 VARCHAR(50) NOT NULL,
    schedule_address_line2 VARCHAR(50),
    schedule_postcode VARCHAR(8) NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES staff_members(staff_id)
);

-------------------------------
-- Records of STAFF_SCHEDULE --
-------------------------------
INSERT INTO staff_schedule (staff_id, schedule_date, schedule_start_time, schedule_end_time, schedule_activity, schedule_address_line1, schedule_address_line2, schedule_postcode)
VALUES
(1, '2024-02-14', '09:00:00', '11:00:00', 'Faculty meeting', 'Faculty Building', 'Lounge', 'SW1A 1AA'),
(2, '2024-02-15', '10:00:00', '12:00:00', 'Meeting with department head', 'Main Office Building', 'Conference Room', 'EC2A 1BR'),
(3, '2024-02-16', '14:00:00', '16:00:00', 'Advising students', 'Student Services Building', 'Office', 'W1A 1AA'),
(4, '2024-02-17', '15:00:00', '17:00:00', 'Staff training session', 'Training Facility', 'Training Room', 'SW1A 2AA'),
(5, '2024-02-18', '16:00:00', '18:00:00', 'Research presentation', 'Science Building', 'Lab 1', 'E1W 1AA'),
(6, '2024-02-19', '08:00:00', '10:00:00', 'Departmental workshop', 'Main Building', 'Seminar Room', 'N1C 4AA'),
(7, '2024-02-20', '13:00:00', '15:00:00', 'Faculty retreat', 'Resort', '', 'SE1 7PB'),
(8, '2024-02-21', '16:00:00', '18:00:00', 'Curriculum planning', 'Library', '', 'WC2H 0AB'),
(9, '2024-02-22', '12:00:00', '14:00:00', 'Professional development seminar', 'Auditorium Building', 'Auditorium', 'W1U 1AA'),
(10, '2024-02-23', '09:00:00', '11:00:00', 'Departmental meeting', 'Administration Building', 'Boardroom', 'SW1P 4AA'),
(11, '2024-02-24', '14:00:00', '16:00:00', 'Guest lecture', 'Academic Building', 'Classroom 101', 'SE1 0AA'),
(12, '2024-02-25', '15:00:00', '17:00:00', 'Faculty research review', 'Research Complex', 'Research Lab', 'NW1 2AA');






-------------------------------------
-- Table structure for ASSESSMENTS --
-------------------------------------
CREATE TABLE assessments (
    assess_id SERIAL PRIMARY KEY,
    course_id INT NOT NULL,
    module_id INT NOT NULL,
    assess_title VARCHAR(20) NOT NULL,
    assess_type VARCHAR(20) NOT NULL,
    assess_due_date DATE NOT NULL,
    assess_maximum_score DECIMAL(4,1) NOT NULL DEFAULT '100',
    assess_pass_mark DECIMAL(4,1) NOT NULL DEFAULT'40' 
    CHECK(assess_pass_mark > 0 and assess_pass_mark <= assess_maximum_score),
    FOREIGN KEY (course_id) REFERENCES courses(course_id),
    FOREIGN KEY (module_id) REFERENCES modules(module_id)
);


-- Add index on course_id
CREATE INDEX idx_assessments_course_id ON assessments (course_id);

-- Add index on module_id
CREATE INDEX idx_assessments_module_id ON assessments (module_id);

----------------------------
-- Records of ASSESSMENTS --
----------------------------
INSERT INTO assessments (course_id, module_id, assess_title, assess_type, assess_due_date, assess_maximum_score, assess_pass_mark)
VALUES
-- Arts Subjects Assessments
(1, 1, 'BTTE001', 'Exam', '2024-02-20', DEFAULT, 50.0),
(1, 2, 'CPQ002', 'Quiz', '2024-02-25', DEFAULT, DEFAULT),
(2, 3, 'BSTWE003', 'Exam', '2024-02-22', DEFAULT, 50.0),
(2, 4, 'TDSSP004', 'Presentation', '2024-02-24', DEFAULT, 50.0),
-- Computing Subjects Assessments
(3, 5, 'CSFMME005', 'Exam', '2024-02-28', DEFAULT, 50.0),
(3, 6, 'OOPBQ006', 'Quiz', '2024-02-26', DEFAULT, DEFAULT),
(4, 7, 'RDBDFE007', 'Exam', '2024-03-02', DEFAULT, 50.0),
(4, 8, 'SFQ008', 'Quiz', '2024-03-04', DEFAULT, DEFAULT),
-- Humanity Subjects Assessments
(5, 9, 'LAQ009', 'Quiz', '2024-03-01', DEFAULT, DEFAULT),
(5, 10, 'CSFPE010', 'Presentation', '2024-03-03', DEFAULT, DEFAULT),
(6, 11, 'CHME011', 'Exam', '2024-02-29', DEFAULT, 50.0),
(6, 12, 'CAQ012', 'Quiz', '2024-03-02', DEFAULT, DEFAULT),
-- Mathematics Subjects Assessments
(7, 13, 'DSE013', 'Exam', '2024-03-04', DEFAULT, 50.0),
(7, 14, 'SIQ014', 'Quiz', '2024-03-06', DEFAULT, DEFAULT),
(8, 15, 'ACE015', 'Exam', '2024-03-08', DEFAULT, 50.0),
(8, 16, 'LCQ016', 'Quiz', '2024-03-10', DEFAULT, DEFAULT);




-------------------------------------------
-- Table structure for TEACHING_SESSIONS --
-------------------------------------------
CREATE TABLE teaching_sessions (
    session_id SERIAL PRIMARY KEY,
    module_id INT NOT NULL,
    session_date DATE NOT NULL,
    session_start_time TIME NOT NULL,
    session_end_time TIME NOT NULL,
    session_type VARCHAR(30) NOT NULL,
    session_address_line1 VARCHAR(50) NOT NULL,
    session_address_line2 VARCHAR(50),
    session_postcode VARCHAR(8) NOT NULL,
    FOREIGN KEY (module_id) REFERENCES modules(module_id)
);

----------------------------------
-- Records of TEACHING_SESSIONS --
----------------------------------
INSERT INTO teaching_sessions (module_id, session_date, session_start_time, session_end_time, session_type, session_address_line1, session_address_line2, session_postcode)
VALUES
(1, '2024-02-14', '09:00:00', '11:00:00', 'Lecture', 'Main Building', 'Room A', '12345'),
(2, '2024-02-16', '10:00:00', '12:00:00', 'Practical', 'Science Building', 'Lab 1', '23456'),
(3, '2024-02-15', '11:00:00', '13:00:00', 'Lecture', 'Arts Building', 'Auditorium', '34567'),
(4, '2024-02-17', '09:00:00', '11:00:00', 'One-to-One', 'Technology Building', 'Tutor Room', '45678'),
(5, '2024-02-16', '14:00:00', '16:00:00', 'Lecture', 'Engineering Building', 'Room B', '56789'),
(6, '2024-02-18', '13:00:00', '15:00:00', 'Practical', 'Music Building', 'Lab 2', '67890'),
(7, '2024-02-17', '15:00:00', '17:00:00', 'Lecture', 'Library Building', 'Room C', '78901'),
(8, '2024-02-19', '12:00:00', '14:00:00', 'One-to-One', 'Health Sciences Building', 'Tutor Room', '89012'),
(9, '2024-02-18', '16:00:00', '18:00:00', 'Lecture', 'Sports Complex', 'Room D', '90123'),
(10, '2024-02-20', '11:00:00', '13:00:00', 'Practical', 'Computer Science Building', 'Lab 3', '01234'),
(11, '2024-02-19', '08:00:00', '10:00:00', 'Lecture', 'Business School', 'Room E', '98765'),
(12, '2024-02-21', '10:00:00', '12:00:00', 'One-to-One', 'Mathematics Building', 'Tutor Room', '87654'),
(13, '2024-02-20', '13:00:00', '15:00:00', 'Lecture', 'Humanities Building', 'Room F', '76543'),
(14, '2024-02-22', '14:00:00', '16:00:00', 'Practical', 'Dormitory Building', 'Lab 4', '65432'),
(15, '2024-02-21', '16:00:00', '18:00:00', 'Lecture', 'Cafeteria Building', 'Room G', '54321'),
(16, '2024-02-23', '15:00:00', '17:00:00', 'One-to-One', 'Fine Arts Building', 'Tutor Room', '43210');




---------------------------------------------
-- Table structure for STUDENT_ENROLLMENTS --
---------------------------------------------
CREATE TABLE student_enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Add index on student_id
CREATE INDEX idx_student_enrollments_student_id ON student_enrollments (student_id);

-- Add index on course_id
CREATE INDEX idx_student_enrollments_course_id ON student_enrollments (course_id);

------------------------------------
-- Records of STUDENT_ENROLLMENTS --
------------------------------------
INSERT INTO student_enrollments (student_id, course_id)
VALUES
(1, 1),
(2, 1),
(3, 7),
(4, 7),
(5, 5),
(6, 5),
(7, 6),
(8, 6),
(9, 2),
(10, 2),
(11, 8),
(12, 8),
(13, 3),
(14, 3),
(15, 4),
(16, 4);





--------------------------------------------
-- Table structure for STUDENTS_GUARDIANS --
--------------------------------------------
CREATE TABLE students_guardians (
    student_id INT NOT NULL,
    guardian_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (guardian_id) REFERENCES guardians(guardian_id),
    PRIMARY KEY (student_id, guardian_id)
);

----------------------------------
-- Records of STUDENT_GUARDIANS --
----------------------------------
INSERT INTO students_guardians (student_id, guardian_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16);





---------------------------------------------
-- Table structure for STUDENT_ASSESSMENTS --
---------------------------------------------
CREATE TABLE students_assessments (
    student_id INT NOT NULL,
    assess_id INT NOT NULL,
    stu_assess_score DECIMAL(4,1) NOT NULL,
    feedback VARCHAR(300) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (assess_id) REFERENCES assessments(assess_id),
    PRIMARY KEY (student_id, assess_id)
); 

-- Add unique index on (student_id, assess_id)
CREATE UNIQUE INDEX idx_unique_student_assessment ON students_assessments (student_id, assess_id);

------------------------------------
-- Records of STUDENT_ASSESSMENTS --
------------------------------------
INSERT INTO students_assessments (student_id, assess_id, stu_assess_score, feedback)
VALUES
(1, 1, 95.0, 'Excellent performance on the midterm exam.'),
(2, 2, 70.0, 'Good effort on Quiz 1.'),
(3, 3, 65.0, 'Satisfactory completion of the Essay Assignment.'),
(4, 4, 50.0, 'Below average performance on the Final Exam.'),
(5, 5, 45.0, 'Needs improvement in the Project Presentation.'),
(6, 6, 90.0, 'Failed to submit the Lab Report.'),
(7, 7, 78.0, 'Outstanding performance on Quiz 2.'),
(8, 8, 65.0, 'Well-written Term Paper.'),
(9, 9, 55.0, 'Average performance on the Midterm Exam.'),
(10, 10, 42.0, 'Below average performance on Quiz 3.'),
(11, 11, 41.0, 'Needs improvement in the Final Exam.'),
(12, 12, 26.0, 'Failed to contribute effectively to the Group Project.'),
(13, 13, 89.0, 'Excellent Essay Assignment.'),
(14, 14, 78.0, 'Good performance on Quiz 4.'),
(15, 15, 65.0, 'Satisfactory completion of the Final Project.'),
(16, 16, 49.0, 'Below average performance on the Midterm Exam.');






-------------------------------------------
-- Table structure for ACADEMIC_PROGRESS --
-------------------------------------------
CREATE TABLE academic_progress (
    progress_id SERIAL PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    overall_grade DECIMAL(4,1) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

----------------------------------
-- Records of ACADEMIC_PROGRESS --
----------------------------------
INSERT INTO academic_progress (student_id, course_id, overall_grade)
VALUES
(1, 1, 95.0),
(2, 1, 70.0),
(3, 7, 65.0),
(4, 7, 50.0),
(5, 5, 45.0),
(6, 5, 90.0),
(7, 6, 78.0),
(8, 6, 65.0),
(9, 2, 55.0),
(10, 2, 42.0),
(11, 8, 41.0),
(12, 8, 26.0),
(13, 3, 89.0),
(14, 3, 78.0),
(15, 4, 65.0),
(16, 4, 49.0);




------------------------------------------
-- Table structure for COURSES_MODULES ---
------------------------------------------
CREATE TABLE courses_modules (
    course_id INT NOT NULL,
    module_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(course_id),
    FOREIGN KEY (module_id) REFERENCES modules(module_id),
    PRIMARY KEY (course_id, module_id)
);

---------------------------------
-- Records of COURSES_MODULES ---
---------------------------------
INSERT INTO courses_modules (course_id, module_id)
VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11),
(6, 12),
(7, 13),
(7, 14),
(8, 15),
(8, 16);





--------------------------------------------
-- Table structure for STUDENT_ATTENDANCE --
--------------------------------------------
CREATE TABLE student_attendance (
    student_id INT NOT NULL,
    session_id INT NOT NULL,
    attendance_status BOOLEAN NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (session_id) REFERENCES teaching_sessions(session_id),
    PRIMARY KEY (student_id, session_id)
);

-- Add unique index on (student_id, session_id)
CREATE UNIQUE INDEX idx_unique_student_session_attendance ON student_attendance (student_id, session_id);

-----------------------------------
-- Records of STUDENT_ATTENDANCE --
-----------------------------------
INSERT INTO student_attendance (student_id, session_id, attendance_status)
VALUES
(1, 1, TRUE),
(2, 2, TRUE),
(3, 3, TRUE),
(4, 4, TRUE),
(5, 5, FALSE),
(6, 6, FALSE),
(7, 7, TRUE),
(8, 8, TRUE),
(9, 9, TRUE),
(10, 10, TRUE),
(11, 11, FALSE),
(12, 12, FALSE),
(13, 13, TRUE),
(14, 14, TRUE),
(15, 15, TRUE),
(16, 16, FALSE);





------------------------------------------
-- Table structure for SESSION_TEACHERS --
------------------------------------------
CREATE TABLE session_teachers (
    staff_id INT NOT NULL,
    session_id INT NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES staff_members(staff_id),
    FOREIGN KEY (session_id) REFERENCES teaching_sessions(session_id),
    PRIMARY KEY (staff_id, session_id)

);

---------------------------------
-- Records of SESSION_TEACHERS --
---------------------------------
INSERT INTO session_teachers (staff_id, session_id)
VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11),
(6, 12),
(7, 13),
(7, 14),
(8, 15),
(8, 16);





-------------------------------------
-- Table structure for STAFF_ROLES --
-------------------------------------
CREATE TABLE staff_roles (
    staff_id INT NOT NULL,
    role_id INT NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES staff_members(staff_id),
    FOREIGN KEY (role_id) REFERENCES roles(role_id),
    PRIMARY KEY (staff_id, role_id)	
);

----------------------------
-- Records of STAFF_ROLES --
----------------------------
INSERT INTO staff_roles (staff_id, role_id)
VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 2),
(5, 1),
(6, 2),
(7, 1),
(8, 2),
(9, 1),
(10, 2),
(11, 1),
(12, 2);




 
-----------------------------------------------
-- Table structure for STAFF_MEMBERS_MODULES --
-----------------------------------------------
CREATE TABLE staff_members_modules (
    staff_id INT NOT NULL,
    module_id INT NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES staff_members(staff_id),
    FOREIGN KEY (module_id) REFERENCES modules(module_id),
    PRIMARY KEY (staff_id, module_id)
);

--------------------------------------
-- Records of STAFF_MEMBERS_MODULES --
--------------------------------------
INSERT INTO staff_members_modules (staff_id, module_id)
VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11),
(6, 12),
(7, 13),
(7, 14),
(8, 15),
(8, 16);






---------------------------------------------------
-- Table structure for STAFF_MEMBERS_DEPARTMENTS --
---------------------------------------------------
CREATE TABLE staff_members_departments (
    staff_id INT NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES staff_members(staff_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    PRIMARY KEY (staff_id, department_id)
);

------------------------------------------
-- Records of STAFF_MEMBERS_DEPARTMENTS --
------------------------------------------
INSERT INTO staff_members_departments(staff_id, department_id)
VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 4),
(9, 5),
(10, 5),
(11, 6),
(12, 6);