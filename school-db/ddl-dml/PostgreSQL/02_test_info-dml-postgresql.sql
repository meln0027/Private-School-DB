--DDL INFO:

--STUDENTS
INSERT INTO student (id, first_name, last_name, birthday, gender, grade_level,
    			date_enrolled, date_unenrolled, status, phone_number)
VALUES
--Martin family: 3 siblings live together with parents 
(1001, 'Emily', 'Martin', '2016-09-15', 'f', 4, '2021-09-01', NULL, 'active', NULL),
(1002, 'Lucas', 'Martin', '2014-03-10', 'm', 6, '2019-09-01', NULL, 'active', NULL),
(1003, 'Sophia', 'Martin', '2013-05-22', 'f', 7, '2018-09-01', NULL, 'active', '6139991001'),

-- The Smith family: 2 siblings with divorced parents, living at different addresses
(1004, 'Noah', 'Smith', '2009-02-20', 'm', 9, '2016-09-01', NULL, 'active', '6139991002'),
(1005, 'Olivia', 'Smith', '2011-11-04', 'f', 7, '2018-09-01', NULL, 'active', NULL),

-- Graduated student: completed studies last year
(1006, 'Liam', 'Campbell', '2006-06-20', 'm', 12, '2012-09-01', '2023-06-30', 'graduated', '6139991003'),

-- Transferred student: left our school last summer
(1007, 'Zoe', 'Nguyen', '2011-09-17', 'unknown', 9, '2014-09-01', '2022-06-30', 'transferred', '6139991004'),

-- Withdrawn student: unenrolled this year mid-semester
(1008, 'Benjamin', 'Clark', '2007-10-30', 'm', 10, '2015-09-01', '2024-02-15', 'withdrawn', '6139991005'),

-- Inactive student: status set to inactive, no unenrollment date
(1009, 'Isabella', 'White', '2005-03-21', 'x', 12, '2013-09-01', NULL, 'inactive', '6139991006'),

-- Transferred into our school into grade 6
(1010, 'Ella', 'Lopez', '2011-09-15', 'f', 6, '2022-09-01', NULL, 'active', NULL),

-- Lives with both parents
(1011, 'Ava', 'Hughes', '2015-05-10', 'f', 5, '2020-09-01', NULL, 'active', NULL),
(1012, 'Jack', 'Murray', '2017-02-27', 'm', 3, '2023-09-01', NULL, 'active', NULL),
(1016, 'Logan', 'Davis', '2012-04-08', 'm', 8, '2017-09-01', NULL, 'active', '6139991008'),
(1017, 'Harper', 'Ali', '2011-10-25', 'f', 9, '2016-09-01', NULL, 'active', '6139991009'),
(1018, 'Ethan', 'Zhang', '2014-03-16', 'm', 6, '2019-09-01', NULL, 'active', NULL),
(1019, 'Nathan', 'Lee', '2015-08-05', 'm', 5, '2020-09-01', NULL, 'active', NULL),

-- Lives with one parent
(1013, 'Amelia', 'Wright', '2016-12-19', 'f', 4, '2021-09-01', NULL, 'active', NULL),
-- Lives with guardians (non-parental)
(1014, 'Henry', 'Gray', '2014-11-12', 'm', 6, '2019-09-01', NULL, 'active', NULL),

-- Lives with grandmother (family member)
(1015, 'Chloe', 'Kim', '2013-06-02', 'f', 7, '2018-09-01', NULL, 'active', '6139991007'),

-- No guardians
(1020, 'Victoria', 'Chen', '2006-09-27', 'f', 12, '2012-09-01', NULL, 'active', '6139991010');


-- GUARDIANS
INSERT INTO guardian (
    id, first_name, last_name, birthday, cell_phone, email
) VALUES
--Martin family (same address)
(2001, 'Laura', 'Martin', '1984-07-12', '6131234001', 'laura.martin@example.com'),
(2002, 'James', 'Martin', NULL, '6131234002', 'james.martin@example.com'),

--Smith family (separate address)
(2003, 'Susan', 'Smith', '1983-02-25', '6131234003', 'susan.smith@example.com'),
(2004, 'Robert', 'Smith', NULL, '6131234004', 'robert.smith@example.com'),

-- Ava Hughes (both parents)
(2005, 'Linda', 'Hughes', '1983-03-22', '6131111001', 'l.hughes@example.com'),
(2006, 'David', 'Hughes', NULL, '6131111002', 'd.hughes@example.com'),

-- Jack Murray (both parents)
(2007, 'Karen', 'Murray', '1982-05-11', '6131111003', 'k.murray@example.com'),
(2008, 'Scott', 'Murray', NULL, '6131111004', 's.murray@example.com'),

-- Amelia Wright (single guardian - mother)
(2009, 'Natalie', 'Wright', '1987-07-09', '6131111005', 'n.wright@example.com'),

-- Henry Gray (guardians - not parents)
(2011, 'Cynthia', 'Jackson', '1979-01-25', '6131111007', 'c.jackson@example.com'),
(3017, 'Brian', 'Jackson', NULL, '6131111006', 'b.jackson@example.com'),


-- Chloe Kim (guardian = grandmother)
(2012, 'Eun-hee', 'Kim', '1956-08-19', '6131111008', 'grandma.kim@example.com'),

-- Logan Davis (both parents)
(2013, 'Rachel', 'Davis', NULL, '6131111009', 'r.davis@example.com'),
(2014, 'Eric', 'Davis', '1980-09-30', '6131111010', 'e.davis@example.com'),

-- Harper Ali (both parents)
(2015, 'Amina', 'Ali', '1984-11-02', '6131111011', 'a.ali@example.com'),
(2016, 'Omar', 'Ali', NULL, '6131111012', 'o.ali@example.com'),

-- Ethan Zhang (both parents)
(2017, 'Mei', 'Zhang', NULL, '6131111013', 'm.zhang@example.com'),
(2018, 'Hao', 'Zhang', '1985-06-21', '6131111014', 'h.zhang@example.com'),

-- Nathan Lee (both parents)
(2019, 'Julia', 'Lee', NULL, '6131111015', 'j.lee@example.com'),
(2020, 'Daniel', 'Lee', '1981-12-10', '6131111016', 'd.lee@example.com'),

-- Liam Campbell (graduated student) - both parents
(2021, 'Laura', 'Campbell', '1981-04-15', '6131111017', 'laura.campbell@example.com'),
(2022, 'James', 'Campbell', NULL, '6131111018', 'james.campbell@example.com'),

-- Zoe Nguyen (transferred out) - single guardian (father)
(2023, 'An', 'Nguyen', '1980-11-03', '6131111019', 'an.nguyen@example.com'),

-- Benjamin Clark (withdrawn student) - both parents
(2024, 'Emily', 'Clark', NULL, '6131111020', 'emily.clark@example.com'),
(2025, 'Matthew', 'Clark', '1982-02-22', '6131111021', 'matt.clark@example.com'),

-- Isabella White (inactive student) - single mother
(2026, 'Angela', 'White', '1983-12-01', '6131111022', 'angela.white@example.com'),

-- Ella Lopez (transferred into our school) - both parents
(2027, 'Maria', 'Lopez', '1985-05-14', '6131111023', 'maria.lopez@example.com'),
(2028, 'Carlos', 'Lopez', NULL, '6131111024', 'carlos.lopez@example.com');


--EMPLOYEES
INSERT INTO employee (
    id, first_name, last_name, position, birthday, hired_date, email, phone
) VALUES
(3001, 'Emma', 'Hall', 'Director', '1970-05-01', '2020-08-01', 'emma.hall@school.ca', '6135551001'),
(3002, 'Peter', 'Grant', 'Admin', '1980-11-15', '2021-02-01', 'peter.grant@school.ca', '6135551002'),
(3003, 'Alan', 'Reid', 'Facility Manager', '1975-04-09', '2022-01-01', 'alan.reid@school.ca', '6135551003'),
(3004, 'Claire', 'Novak', 'PE Teacher', '1988-06-12', '2021-09-01', 'claire.novak@school.ca', '6135551004'),
(3005, 'Iris', 'Ford', 'Art Teacher', '1982-10-20', '2023-01-15', 'iris.ford@school.ca', '6135551005'),
(3006, 'Martha', 'Li', 'Librarian', '1978-12-01', '2020-08-01', 'martha.li@school.ca', '6135551006'),
(3007, 'Kevin', 'Chen', 'Math/Physics Teacher', '1985-03-25', '2019-08-15', 'kevin.chen@school.ca', '6135551007'),
(3008, 'Angela', 'Rivera', 'Math/Physics Teacher', '1990-08-18', '2022-09-01', 'angela.rivera@school.ca', '6135551008'),
(3009, 'Thomas', 'Green', 'Chemistry/Biology', '1981-01-11', '2020-08-01', 'thomas.green@school.ca', '6135551009'),
(3010, 'Sofia', 'Petrov', 'Chemistry/Biology', '1987-07-30', '2021-08-20', 'sofia.petrov@school.ca', '6135551010'),
(3011, 'Nathan', 'Zhou', 'Computer Science', '1992-09-14', '2022-01-10', 'nathan.zhou@school.ca', '6135551011'),
(3012, 'Julie', 'Tremblay', 'Language Teacher', '1984-05-05', '2018-08-01', 'julie.tremblay@school.ca', '6135551012'),
(3013, 'Mathieu', 'Boucher', 'Language Teacher', '1991-03-17', '2023-03-01', 'mathieu.boucher@school.ca', '6135551013'),
(3014, 'Lily', 'Sanders', 'Elementary Teacher', '1986-06-22', '2019-08-01', 'lily.sanders@school.ca', '6135551014'),
(3015, 'Jacob', 'Nguyen', 'Elementary Teacher', '1993-12-09', '2022-08-01', 'jacob.nguyen@school.ca', '6135551015'),
(3016, 'Olivia', 'Miles', 'Elementary Teacher', '1990-10-10', '2023-02-01', 'olivia.miles@school.ca', '6135551016'),
(3017, 'Brian', 'Jackson', 'Teacher Assistant', '1980-04-15', '2022-09-01', 'b.jackson@example.com', '6131111006');
INSERT INTO employee (id, first_name, last_name, position, birthday, hired_date, termination_date, email, phone) VALUES
(3018, 'Jonathan', 'Walker', 'History Teacher', '1982-02-17', '2015-09-01', '2024-03-15', 'jonathan.walker@school.ca', '6135551017');


--STUDENT_GUARDIAN RELATIONSHIP
INSERT INTO student_guardian (student_id, guardian_id, relationship)
VALUES
(1001, 2001, 'mother'),
(1001, 2002, 'father'),
(1002, 2001, 'mother'),
(1002, 2002, 'father'),
(1003, 2001, 'mother'),
(1003, 2002, 'father'),
(1004, 2003, 'mother'),
(1004, 2004, 'father'),
(1005, 2003, 'mother'),
(1005, 2004, 'father'),
(1006, 2021, 'mother'),
(1006, 2022, 'father'),
(1007, 2023, 'father'),
(1008, 2024, 'mother'),
(1008, 2025, 'father'),
(1009, 2026, 'mother'),
(1010, 2027, 'mother'),
(1010, 2028, 'father'),
(1011, 2005, 'mother'),
(1011, 2006, 'father'),
(1012, 2007, 'mother'),
(1012, 2008, 'father'),
(1013, 2009, 'mother'),
(1014, 3017, 'guardian'),
(1014, 2011, 'guardian'),
(1015, 2012, 'family member'),
(1016, 2013, 'mother'),
(1016, 2014, 'father'),
(1017, 2015, 'mother'),
(1017, 2016, 'father'),
(1018, 2017, 'mother'),
(1018, 2018, 'father'),
(1019, 2019, 'mother'),
(1019, 2020, 'father');


--Student addresses, address_id = student_id
INSERT INTO address (
    id, home_phone, house_number, street, city, province, postal_code, apartment_number)
VALUES
(1001, '1076063627', 161, 'Maple St', 'Ottawa', 'ON', 'K5A 2B4', 22),
(1002, '1435627146', 340, 'Pine Dr', 'Ottawa', 'ON', 'K4A 7B9', 11),
(1003, '1838146939', 862, 'Oak Ave', 'Ottawa', 'ON', 'K1A 2B3', NULL),
(1004, '1122109212', 745, 'Cedar Rd', 'Ottawa', 'ON', 'K6A 7B1', 22),
(1005, '1457784607', 671, 'Oak Ave', 'Ottawa', 'ON', 'K1A 5B8', 18),
(1006, '1768566800', 969, 'Maple St', 'Ottawa', 'ON', 'K7A 3B7', NULL),
(1007, '1401576693', 162, 'Cedar Rd', 'Ottawa', 'ON', 'K3A 9B1', NULL),
(1008, '1685369597', 762, 'Pine Dr', 'Ottawa', 'ON', 'K5A 3B3', 48),
(1009, '1963928083', 463, 'Cedar Rd', 'Ottawa', 'ON', 'K4A 4B3', 14),
(1010, '1409412120', 798, 'Oak Ave', 'Ottawa', 'ON', 'K3A 9B5', NULL),
(1011, '1401312427', 594, 'Maple St', 'Ottawa', 'ON', 'K6A 7B9', NULL),
(1012, '1130239995', 256, 'Maple St', 'Ottawa', 'ON', 'K4A 2B5', 47),
(1013, '1821474770', 879, 'Maple St', 'Ottawa', 'ON', 'K5A 8B8', 4),
(1014, '1421766389', 434, 'Maple St', 'Ottawa', 'ON', 'K8A 4B8', 3),
(1015, '1850145336', 365, 'Cedar Rd', 'Ottawa', 'ON', 'K1A 1B6', 20),
(1016, '1971756548', 469, 'Pine Dr', 'Ottawa', 'ON', 'K6A 6B1', 41),
(1017, '1624169591', 673, 'Pine Dr', 'Ottawa', 'ON', 'K2A 6B7', 8),
(1018, '1548649980', 395, 'Oak Ave', 'Ottawa', 'ON', 'K7A 8B7', NULL),
(1019, '1599999991', 921, 'Spruce Ln', 'Ottawa', 'ON', 'K7B 4A1', NULL),
(1020, '1699999992', 115, 'Birch Blvd', 'Ottawa', 'ON', 'K2C 3Z8', 2);



-- Addresses for guardians living separately, address_id=guardian_id
INSERT INTO address (id, home_phone, house_number, street, city, province, postal_code, apartment_number)
VALUES
(2004, '6130000001', 312, 'Birchwood Ln', 'Ottawa', 'ON', 'K2A 4C1', 5), -- Robert Smith
(2022, '6130000002', 728, 'Ash St',       'Ottawa', 'ON', 'K1C 2Y7', NULL); -- James Campbell



-- Addresses for Employees, address_id=employee_id
INSERT INTO address (
    id, home_phone, house_number, street, city, province, postal_code, apartment_number
) VALUES
(3001, '6135551001', 101, 'Elm St', 'Ottawa', 'ON', 'K2A 5B1', NULL),
(3002, '6135551002', 102, 'Elm St', 'Ottawa', 'ON', 'K2A 5B2', NULL),
(3003, '6135551003', 103, 'Elm St', 'Ottawa', 'ON', 'K2A 5B3', NULL),
(3004, '6135551004', 104, 'Elm St', 'Ottawa', 'ON', 'K2A 5B4', NULL),
(3005, '6135551005', 105, 'Elm St', 'Ottawa', 'ON', 'K2A 5B5', NULL),
(3006, '6135551006', 106, 'Elm St', 'Ottawa', 'ON', 'K2A 5B6', NULL),
(3007, '6135551007', 107, 'Elm St', 'Ottawa', 'ON', 'K2A 5B7', NULL),
(3008, '6135551008', 108, 'Elm St', 'Ottawa', 'ON', 'K2A 5B8', NULL),
(3009, '6135551009', 109, 'Elm St', 'Ottawa', 'ON', 'K2A 5B9', NULL),
(3010, '6135551010', 110, 'Elm St', 'Ottawa', 'ON', 'K2A 6B0', NULL),
(3011, '6135551011', 111, 'Elm St', 'Ottawa', 'ON', 'K2A 6B1', NULL),
(3012, '6135551012', 112, 'Elm St', 'Ottawa', 'ON', 'K2A 6B2', NULL),
(3013, '6135551013', 113, 'Elm St', 'Ottawa', 'ON', 'K2A 6B3', NULL),
(3014, '6135551014', 114, 'Elm St', 'Ottawa', 'ON', 'K2A 6B4', NULL),
(3015, '6135551015', 115, 'Elm St', 'Ottawa', 'ON', 'K2A 6B5', NULL),
(3016, '6135551016', 116, 'Elm St', 'Ottawa', 'ON', 'K2A 6B6', NULL);


INSERT INTO person_address (
    id, person_type, address_id, address_type, student_id, guardian_id, employee_id, customer_id
) VALUES
(1001, 'student', 1001, 'home', 1001, NULL, NULL, NULL),
(1002, 'student', 1002, 'home', 1002, NULL, NULL, NULL),
(1003, 'student', 1003, 'home', 1003, NULL, NULL, NULL),
(1004, 'student', 1004, 'home', 1004, NULL, NULL, NULL),
(1005, 'student', 1005, 'home', 1005, NULL, NULL, NULL),
(1006, 'student', 1006, 'home', 1006, NULL, NULL, NULL),
(1007, 'student', 1007, 'home', 1007, NULL, NULL, NULL),
(1008, 'student', 1008, 'home', 1008, NULL, NULL, NULL),
(1009, 'student', 1009, 'home', 1009, NULL, NULL, NULL),
(1010, 'student', 1010, 'home', 1010, NULL, NULL, NULL),
(1011, 'student', 1011, 'home', 1011, NULL, NULL, NULL),
(1012, 'student', 1012, 'home', 1012, NULL, NULL, NULL),
(1013, 'student', 1013, 'home', 1013, NULL, NULL, NULL),
(1014, 'student', 1014, 'home', 1014, NULL, NULL, NULL),
(1015, 'student', 1015, 'home', 1015, NULL, NULL, NULL),
(1016, 'student', 1016, 'home', 1016, NULL, NULL, NULL),
(1017, 'student', 1017, 'home', 1017, NULL, NULL, NULL),
(1018, 'student', 1018, 'home', 1018, NULL, NULL, NULL),
(1019, 'student', 1019, 'home', 1019, NULL, NULL, NULL),
(1020, 'student', 1020, 'home', 1020, NULL, NULL, NULL);



-- Person-address entries for guardians living with students (address_id = student_id)
INSERT INTO person_address (id, person_type, address_id, address_type, student_id, guardian_id, employee_id, customer_id)
VALUES
( 2001, 'guardian', 1001, 'home', NULL, 2001, NULL, NULL ),
( 2002, 'guardian', 1001, 'home', NULL, 2002, NULL, NULL ),
( 2003, 'guardian', 1004, 'home', NULL, 2003, NULL, NULL ),
( 2004, 'guardian', 2004, 'home', NULL, 2004, NULL, NULL),  -- Robert Smith, guardian not living with student
( 2005, 'guardian', 1011, 'home', NULL, 2005, NULL, NULL ),
( 2006, 'guardian', 1011, 'home', NULL, 2006, NULL, NULL ),
( 2007, 'guardian', 1012, 'home', NULL, 2007, NULL, NULL ),
( 2008, 'guardian', 1012, 'home', NULL, 2008, NULL, NULL ),
( 2009, 'guardian', 1013, 'home', NULL, 2009, NULL, NULL ),
( 2011, 'guardian', 1014, 'home', NULL, 2011, NULL, NULL ),
( 2012, 'guardian', 1015, 'home', NULL, 2012, NULL, NULL ),
( 2013, 'guardian', 1016, 'home', NULL, 2013, NULL, NULL ),
( 2014, 'guardian', 1016, 'home', NULL, 2014, NULL, NULL ),
( 2015, 'guardian', 1017, 'home', NULL, 2015, NULL, NULL ),
( 2016, 'guardian', 1017, 'home', NULL, 2016, NULL, NULL ),
( 2017, 'guardian', 1018, 'home', NULL, 2017, NULL, NULL ),
( 2018, 'guardian', 1018, 'home', NULL, 2018, NULL, NULL ),
( 2019, 'guardian', 1019, 'home', NULL, 2019, NULL, NULL ),
( 2020, 'guardian', 1019, 'home', NULL, 2020, NULL, NULL ),
( 2021, 'guardian', 1006, 'home', NULL, 2021, NULL, NULL ),
( 2022, 'guardian', 2022, 'home', NULL, 2022, NULL, NULL),  -- James Campbell, guardian not living with student
( 2023, 'guardian', 1007, 'home', NULL, 2023, NULL, NULL ),
( 2024, 'guardian', 1008, 'home', NULL, 2024, NULL, NULL ),
( 2025, 'guardian', 1008, 'home', NULL, 2025, NULL, NULL ),
( 2026, 'guardian', 1009, 'home', NULL, 2026, NULL, NULL ),
( 2027, 'guardian', 1010, 'home', NULL, 2027, NULL, NULL ),
( 2028, 'guardian', 1010, 'home', NULL, 2028, NULL, NULL );


-- Person-address for Employees
INSERT INTO person_address (
    id, person_type, address_id, address_type, student_id, guardian_id, employee_id, customer_id
) VALUES
(3001, 'employee', 3001, 'home', NULL, NULL, 3001, NULL),
(3002, 'employee', 3002, 'home', NULL, NULL, 3002, NULL),
(3003, 'employee', 3003, 'home', NULL, NULL, 3003, NULL),
(3004, 'employee', 3004, 'home', NULL, NULL, 3004, NULL),
(3005, 'employee', 3005, 'home', NULL, NULL, 3005, NULL),
(3006, 'employee', 3006, 'home', NULL, NULL, 3006, NULL),
(3007, 'employee', 3007, 'home', NULL, NULL, 3007, NULL),
(3008, 'employee', 3008, 'home', NULL, NULL, 3008, NULL),
(3009, 'employee', 3009, 'home', NULL, NULL, 3009, NULL),
(3010, 'employee', 3010, 'home', NULL, NULL, 3010, NULL),
(3011, 'employee', 3011, 'home', NULL, NULL, 3011, NULL),
(3012, 'employee', 3012, 'home', NULL, NULL, 3012, NULL),
(3013, 'employee', 3013, 'home', NULL, NULL, 3013, NULL),
(3014, 'employee', 3014, 'home', NULL, NULL, 3014, NULL),
(3015, 'employee', 3015, 'home', NULL, NULL, 3015, NULL),
(3016, 'employee', 3016, 'home', NULL, NULL, 3016, NULL),
(3017, 'employee', 1014, 'home', NULL, NULL, 3017, NULL); -- Brian Jackson



--Academic Year since the first student
INSERT INTO academic_year (id, year, start_date, end_date) VALUES
(1, '2019–2020', '2019-09-01', '2020-06-30'),
(2, '2020–2021', '2020-09-01', '2021-06-30'),
(3, '2021–2022', '2021-09-01', '2022-06-30'),
(4, '2022–2023', '2022-09-01', '2023-06-30'),
(5, '2023–2024', '2023-09-01', '2024-06-30'),
(6, '2024–2025', '2024-09-01', '2025-06-30');


INSERT INTO semester (id, name, academic_year_id, start_date, end_date) VALUES
(1, 'fall',   1, '2019-09-01', '2019-12-31'),
(2, 'winter', 1, '2020-01-01', '2020-06-30'),

(3, 'fall',   2, '2020-09-01', '2020-12-31'),
(4, 'winter', 2, '2021-01-01', '2021-06-30'),

(5, 'fall',   3, '2021-09-01', '2021-12-31'),
(6, 'winter', 3, '2022-01-01', '2022-06-30'),

(7, 'fall',   4, '2022-09-01', '2022-12-31'),
(8, 'winter', 4, '2023-01-01', '2023-06-30'),

(9, 'fall',   5, '2023-09-01', '2023-12-31'),
(10,'winter', 5, '2024-01-01', '2024-06-30'),

(11,'fall',   6, '2024-09-01', '2024-12-31'),
(12,'winter', 6, '2025-01-01', '2025-06-30');



INSERT INTO department (id, name, description) VALUES
(1, 'Sciences', 'Biology, Chemistry, Physics'),
(2, 'Mathematics', 'Pure and Applied Mathematics'),
(3, 'Languages', 'English and French Language Studies'),
(4, 'Physical Education', 'Sports and Health'),
(5, 'Arts', 'Visual and Performing Arts'),
(6, 'Computer Science', 'Technology and Programming'),
(7, 'Elementary Education', 'Integrated early education program'),
(8, 'Administration', 'School admin and support roles');


-- Grades 1–3 Integrated Courses
INSERT INTO course (id, name, description, department_id) VALUES
(1001, 'Grade 1 Integrated', 'Core curriculum for Grade 1', 7),
(1002, 'Grade 2 Integrated', 'Core curriculum for Grade 2', 7),
(1003, 'Grade 3 Integrated', 'Core curriculum for Grade 3', 7),
-- Grade 4
(1101, 'Grade 4 Mathematics', 'Mathematics for Grade 4', 2),
(1102, 'Grade 4 Science', 'General Science for Grade 4', 1),
(1103, 'Grade 4 Language', 'Language Studies for Grade 4', 3),
(1104, 'Grade 4 Art', 'Creative Arts for Grade 4', 5),
-- Grade 5
(1201, 'Grade 5 Mathematics', 'Mathematics for Grade 5', 2),
(1202, 'Grade 5 Science', 'General Science for Grade 5', 1),
(1203, 'Grade 5 Language', 'Language Studies for Grade 5', 3),
(1204, 'Grade 5 PE', 'Physical Education for Grade 5', 4),
-- Grade 6
(1301, 'Grade 6 Mathematics', 'Mathematics for Grade 6', 2),
(1302, 'Grade 6 Science', 'General Science for Grade 6', 1),
(1303, 'Grade 6 Language', 'Language Studies for Grade 6', 3),
(1304, 'Grade 6 Art', 'Creative Arts for Grade 6', 5),
-- Grade 7
(1401, 'Grade 7 Mathematics', 'Mathematics for Grade 7', 2),
(1402, 'Grade 7 Science', 'General Science for Grade 7', 1),
(1403, 'Grade 7 Language', 'Language Studies for Grade 7', 3),
(1404, 'Grade 7 PE', 'Physical Education for Grade 7', 4),
-- Grade 8
(1501, 'Grade 8 Math', 'Advanced Math for Grade 8', 2),
(1502, 'Grade 8 Biology', 'Introductory Biology', 1),
(1503, 'Grade 8 English', 'English Language Studies', 3),
(1504, 'Grade 8 CS', 'Intro to Computer Science', 6),
-- Grade 9
(1601, 'Grade 9 Math', 'Intermediate Algebra', 2),
(1602, 'Grade 9 Chemistry', 'Introductory Chemistry', 1),
(1603, 'Grade 9 French', 'French Language Studies', 3),
(1604, 'Grade 9 PE', 'Physical Education', 4),
-- Grade 10
(1701, 'Grade 10 Math', 'Foundations of Functions', 2),
(1702, 'Grade 10 Physics', 'Introductory Physics', 1),
(1703, 'Grade 10 English', 'English Literature & Composition', 3),
(1704, 'Grade 10 Art', 'Visual Art Studies', 5),
-- Grade 11 Semester 1
(1801, 'Gr 11 Math - S1', 'Advanced Functions (Semester 1)', 2),
(1802, 'Gr 11 Biology - S1', 'Cell Biology & Systems (Semester 1)', 1),
(1803, 'Gr 11 English - S1', 'Reading & Writing Analysis (Semester 1)', 3),
-- Grade 11 Semester 2
(1804, 'Gr 11 Math - S2', 'Functions & Applications (Semester 2)', 2),
(1805, 'Gr 11 Chemistry - S2', 'Chemical Reactions (Semester 2)', 1),
(1806, 'Gr 11 English - S2', 'Literature Interpretation (Semester 2)', 3),
-- Grade 12 Semester 1
(1901, 'Gr 12 Math - S1', 'Calculus & Vectors (Semester 1)', 2),
(1902, 'Gr 12 Physics - S1', 'Mechanics & Waves (Semester 1)', 1),
(1903, 'Gr 12 English - S1', 'Academic English (Semester 1)', 3),
-- Grade 12 Semester 2
(1904, 'Gr 12 Math - S2', 'Data Management (Semester 2)', 2),
(1905, 'Gr 12 Chemistry - S2', 'Organic & Environmental Chemistry (Semester 2)', 1),
(1906, 'Gr 12 English - S2', 'Creative Writing (Semester 2)', 3);



INSERT INTO classroom (id, capacity, room_number, location, description) VALUES
(1, 25, '101', 'First Floor', 'General purpose classroom'),
(2, 25, '102', 'First Floor', 'General purpose classroom'),
(3, 25, '103', 'First Floor', 'General purpose classroom'),
(4, 25, '104', 'First Floor', 'General purpose classroom'),
(5, 25, '105', 'First Floor', 'General purpose classroom'),

(6, 30, '201', 'Second Floor', 'Science lab - Chemistry'),
(7, 30, '202', 'Second Floor', 'Science lab - Biology'),
(8, 30, '203', 'Second Floor', 'Science lab - Physics'),
(9, 30, '204', 'Second Floor', 'Computer lab'),
(10, 20, '205', 'Second Floor', 'Library & Research Room'),

(11, 15, '301', 'Basement', 'Art studio'),
(12, 40, '302', 'Annex', 'Gymnasium'),
(13, 20, '303', 'Basement', 'Music Room'),
(14, 25, '304', 'Third Floor', 'Language lab'),
(15, 25, '305', 'Third Floor', 'Mathematics Room'),

(16, 25, '306', 'Third Floor', 'Social Studies Room'),
(17, 20, '307', 'Third Floor', 'Drama Room'),
(18, 25, '308', 'Third Floor', 'Philosophy Room'),
(19, 25, '309', 'Third Floor', 'History Room'),
(20, 25, '310', 'Third Floor', 'Spare/Multipurpose Room');



INSERT INTO section (id, name, course_id, semester_id, teacher_id, classroom_id, description) VALUES
(2001, 'G1-Integrated', 1001, 11, 3014, 1, 'Grade 1 Integrated Learning with Lily Sanders'),
(2002, 'G2-Integrated', 1002, 11, 3015, 2, 'Grade 2 Integrated Learning with Jacob Nguyen'),
(2003, 'G3-Integrated', 1003, 11, 3016, 3, 'Grade 3 Integrated Learning with Olivia Miles'),
(2004, 'G4-Math', 1101, 11, 3007, 15, 'Grade 4 Math with Kevin Chen'),
(2005, 'G4-Science', 1102, 11, 3009, 6, 'Grade 4 Science with Thomas Green'),
(2006, 'G4-Language', 1103, 11, 3012, 14, 'Grade 4 Language with Julie Tremblay'),
(2007, 'G4-Art', 1104, 11, 3005, 11, 'Grade 4 Art with Iris Ford'),
(2008, 'G5-Math', 1201, 11, 3008, 15, 'Grade 5 Math with Angela Rivera'),
(2009, 'G5-Science', 1202, 11, 3010, 7, 'Grade 5 Science with Sofia Petrov'),
(2010, 'G5-Language', 1203, 11, 3013, 14, 'Grade 5 Language with Mathieu Boucher'),
(2011, 'G5-PE', 1204, 11, 3004, 12, 'Grade 5 PE with Claire Novak'),
(2012, 'G6-Math', 1301, 11, 3007, 15, 'Grade 6 Math with Kevin Chen'),
(2013, 'G6-Science', 1302, 11, 3009, 6, 'Grade 6 Science with Thomas Green'),
(2014, 'G6-Language', 1303, 11, 3012, 14, 'Grade 6 Language with Julie Tremblay'),
(2015, 'G6-Art', 1304, 11, 3005, 11, 'Grade 6 Art with Iris Ford'),
(2016, 'G7-Math', 1401, 11, 3008, 15, 'Grade 7 Math with Angela Rivera'),
(2017, 'G7-Science', 1402, 11, 3010, 7, 'Grade 7 Science with Sofia Petrov'),
(2018, 'G7-Language', 1403, 11, 3013, 14, 'Grade 7 Language with Mathieu Boucher'),
(2019, 'G7-PE', 1404, 11, 3004, 12, 'Grade 7 PE with Claire Novak'),
(2020, 'G8-Math', 1501, 11, 3007, 15, 'Grade 8 Math with Kevin Chen'),
(2021, 'G8-Biology', 1502, 11, 3010, 7, 'Grade 8 Biology with Sofia Petrov'),
(2022, 'G8-English', 1503, 11, 3012, 14, 'Grade 8 English with Julie Tremblay'),
(2023, 'G8-CS', 1504, 11, 3011, 9, 'Grade 8 Computer Science with Nathan Zhou'),
(2024, 'G9-Math', 1601, 11, 3008, 15, 'Grade 9 Algebra with Angela Rivera'),
(2025, 'G9-Chemistry', 1602, 11, 3009, 6, 'Grade 9 Chemistry with Thomas Green'),
(2026, 'G9-French', 1603, 11, 3013, 14, 'Grade 9 French with Mathieu Boucher'),
(2027, 'G9-PE', 1604, 11, 3004, 12, 'Grade 9 PE with Claire Novak'),
(2028, 'G10-Math', 1701, 11, 3007, 15, 'Grade 10 Functions with Kevin Chen'),
(2029, 'G10-Physics', 1702, 11, 3010, 8, 'Grade 10 Physics with Sofia Petrov'),
(2030, 'G10-English', 1703, 11, 3012, 14, 'Grade 10 English with Julie Tremblay'),
(2031, 'G10-Art', 1704, 11, 3005, 11, 'Grade 10 Art with Iris Ford'),
(2032, 'G11-Math-S1', 1801, 11, 3008, 15, 'Gr 11 Math S1 with Angela Rivera'),
(2033, 'G11-Bio-S1', 1802, 11, 3010, 7, 'Gr 11 Biology S1 with Sofia Petrov'),
(2034, 'G11-English-S1', 1803, 11, 3013, 14, 'Gr 11 English S1 with Mathieu Boucher'),
(2035, 'G12-Math-S1', 1901, 11, 3007, 15, 'Grade 12 Calculus & Vectors (S1) with Kevin Chen'),
(2036, 'G12-Physics-S1', 1902, 11, 3009, 8, 'Grade 12 Mechanics & Waves (S1) with Thomas Green'),
(2037, 'G12-English-S1', 1903, 11, 3012, 14, 'Grade 12 Academic English (S1) with Julie Tremblay'),
(2038, 'G11-Math-S2', 1804, 12, 3008, 15, 'Gr 11 Functions & Applications (S2) with Angela Rivera'),
(2039, 'G11-Chem-S2', 1805, 12, 3009, 6, 'Gr 11 Chemistry (S2) with Thomas Green'),
(2040, 'G11-English-S2', 1806, 12, 3013, 14, 'Gr 11 English Literature (S2) with Mathieu Boucher'),
(2041, 'G12-Math-S2', 1904, 12, 3007, 15, 'Gr 12 Data Management (S2) with Kevin Chen'),
(2042, 'G12-Chem-S2', 1905, 12, 3010, 6, 'Gr 12 Chemistry (S2) with Sofia Petrov'),
(2043, 'G12-English-S2', 1906, 12, 3012, 14, 'Gr 12 Creative Writing (S2) with Julie Tremblay');



INSERT INTO enrollment (id, student_id, course_id, section_id) VALUES
-- Grade 1 — Jack Murray
(1001, 1012, 1001, 2001),

-- Grade 2 — Emily Martin, Amelia Wright
(1002, 1001, 1002, 2002),
(1003, 1013, 1002, 2002),

-- Grade 4 — Amelia Wright
(1004, 1013, 1101, 2004),
(1005, 1013, 1102, 2005),
(1006, 1013, 1103, 2006),
(1007, 1013, 1104, 2007),

-- Grade 5 — Ava Hughes, Chloe Kim
(1008, 1011, 1201, 2008),
(1009, 1011, 1202, 2009),
(1010, 1011, 1203, 2010),
(1011, 1011, 1204, 2011),

(1012, 1015, 1201, 2008),
(1013, 1015, 1202, 2009),
(1014, 1015, 1203, 2010),
(1015, 1015, 1204, 2011),

-- Grade 6 — Lucas Martin, Ella Lopez, Ethan Zhang
(1016, 1002, 1301, 2012),
(1017, 1002, 1302, 2013),
(1018, 1002, 1303, 2014),
(1019, 1002, 1304, 2015),

(1020, 1010, 1301, 2012),
(1021, 1010, 1302, 2013),
(1022, 1010, 1303, 2014),
(1023, 1010, 1304, 2015),

(1024, 1018, 1301, 2012),
(1025, 1018, 1302, 2013),
(1026, 1018, 1303, 2014),
(1027, 1018, 1304, 2015),

-- Grade 7 — Sophia Martin, Olivia Smith, Harper Ali
(1028, 1003, 1401, 2016),
(1029, 1003, 1402, 2017),
(1030, 1003, 1403, 2018),
(1031, 1003, 1404, 2019),

(1032, 1005, 1401, 2016),
(1033, 1005, 1402, 2017),
(1034, 1005, 1403, 2018),
(1035, 1005, 1404, 2019),

(1036, 1017, 1401, 2016),
(1037, 1017, 1402, 2017),
(1038, 1017, 1403, 2018),
(1039, 1017, 1404, 2019),

-- Grade 8 — Logan Davis
(1040, 1016, 1501, 2020),
(1041, 1016, 1502, 2021),
(1042, 1016, 1503, 2022),
(1043, 1016, 1504, 2023),

-- Grade 9 — Noah Smith
(1044, 1004, 1601, 2024),
(1045, 1004, 1602, 2025),
(1046, 1004, 1603, 2026),
(1047, 1004, 1604, 2027),

-- Grade 12 — Victoria Chen - Fall 2024
(1048, 1020, 1901, 2035),
(1049, 1020, 1902, 2036),
(1050, 1020, 1903, 2037),

-- Grade 12 — Victoria Chen - Winter 2025
(1051, 1020, 1904, 2041),
(1052, 1020, 1905, 2042),
(1053, 1020, 1906, 2043);



INSERT INTO test (id, section_id, test_name, test_date, description, max_score, test_weight) VALUES
(1, 2001, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(2, 2001, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(3, 2001, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(4, 2001, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(5, 2002, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(6, 2002, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(7, 2002, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(8, 2002, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(9, 2003, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(10, 2003, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(11, 2003, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(12, 2003, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(13, 2004, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(14, 2004, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(15, 2004, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(16, 2004, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(17, 2005, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(18, 2005, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(19, 2005, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(20, 2005, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(21, 2006, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(22, 2006, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(23, 2006, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(24, 2006, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(25, 2007, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(26, 2007, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(27, 2007, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(28, 2007, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(29, 2008, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(30, 2008, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(31, 2008, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(32, 2008, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(33, 2009, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(34, 2009, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(35, 2009, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(36, 2009, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(37, 2010, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(38, 2010, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(39, 2010, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(40, 2010, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(41, 2011, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(42, 2011, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(43, 2011, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(44, 2011, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(45, 2012, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(46, 2012, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(47, 2012, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(48, 2012, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(49, 2013, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(50, 2013, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(51, 2013, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(52, 2013, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(53, 2014, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(54, 2014, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(55, 2014, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(56, 2014, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(57, 2015, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(58, 2015, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(59, 2015, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(60, 2015, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(61, 2016, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(62, 2016, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(63, 2016, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(64, 2016, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(65, 2017, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(66, 2017, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(67, 2017, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(68, 2017, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(69, 2018, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(70, 2018, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(71, 2018, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(72, 2018, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(73, 2019, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(74, 2019, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(75, 2019, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(76, 2019, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(77, 2020, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(78, 2020, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(79, 2020, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(80, 2020, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(81, 2021, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(82, 2021, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(83, 2021, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(84, 2021, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(85, 2022, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(86, 2022, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(87, 2022, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(88, 2022, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(89, 2023, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(90, 2023, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(91, 2023, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(92, 2023, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(93, 2024, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(94, 2024, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(95, 2024, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(96, 2024, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(97, 2025, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(98, 2025, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(99, 2025, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(100, 2025, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(101, 2026, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(102, 2026, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(103, 2026, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(104, 2026, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(105, 2027, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(106, 2027, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(107, 2027, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(108, 2027, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(109, 2028, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(110, 2028, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(111, 2028, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(112, 2028, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(113, 2029, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(114, 2029, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(115, 2029, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(116, 2029, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(117, 2030, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(118, 2030, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(119, 2030, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(120, 2030, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(121, 2031, 'Midterm', '2024-10-15', 'Main theory test', 100, 30.0),
(122, 2031, 'Lab 1', '2024-11-01', 'First practical lab', 100, 20.0),
(123, 2031, 'Lab 2', '2024-11-15', 'Second practical lab', 100, 20.0),
(124, 2031, 'Final Exam', '2025-01-10', 'Cumulative final exam', 100, 30.0),
(125, 2032, 'Midterm 1', '2024-10-01', 'Midterm exam 1', 100, 20.0),
(126, 2032, 'Midterm 2', '2024-11-01', 'Midterm exam 2', 100, 20.0),
(127, 2032, 'Lab', '2024-11-15', 'Practical lab', 100, 20.0),
(128, 2032, 'Final Exam', '2025-01-05', 'Final assessment', 100, 40.0),
(129, 2033, 'Midterm 1', '2024-10-01', 'Midterm exam 1', 100, 20.0),
(130, 2033, 'Midterm 2', '2024-11-01', 'Midterm exam 2', 100, 20.0),
(131, 2033, 'Lab', '2024-11-15', 'Practical lab', 100, 20.0),
(132, 2033, 'Final Exam', '2025-01-05', 'Final assessment', 100, 40.0),
(133, 2034, 'Midterm 1', '2024-10-01', 'Midterm exam 1', 100, 20.0),
(134, 2034, 'Midterm 2', '2024-11-01', 'Midterm exam 2', 100, 20.0),
(135, 2034, 'Lab', '2024-11-15', 'Practical lab', 100, 20.0),
(136, 2034, 'Final Exam', '2025-01-05', 'Final assessment', 100, 40.0),
(137, 2035, 'Midterm 1', '2024-10-01', 'Midterm exam 1', 100, 20.0),
(138, 2035, 'Midterm 2', '2024-11-01', 'Midterm exam 2', 100, 20.0),
(139, 2035, 'Lab', '2024-11-15', 'Practical lab', 100, 20.0),
(140, 2035, 'Final Exam', '2025-01-05', 'Final assessment', 100, 40.0),
(141, 2036, 'Midterm 1', '2024-10-01', 'Midterm exam 1', 100, 20.0),
(142, 2036, 'Midterm 2', '2024-11-01', 'Midterm exam 2', 100, 20.0),
(143, 2036, 'Lab', '2024-11-15', 'Practical lab', 100, 20.0),
(144, 2036, 'Final Exam', '2025-01-05', 'Final assessment', 100, 40.0),
(145, 2037, 'Midterm 1', '2024-10-01', 'Midterm exam 1', 100, 20.0),
(146, 2037, 'Midterm 2', '2024-11-01', 'Midterm exam 2', 100, 20.0),
(147, 2037, 'Lab', '2024-11-15', 'Practical lab', 100, 20.0),
(148, 2037, 'Final Exam', '2025-01-05', 'Final assessment', 100, 40.0),
(149, 2038, 'Midterm 1', '2024-10-01', 'Midterm exam 1', 100, 20.0),
(150, 2038, 'Midterm 2', '2024-11-01', 'Midterm exam 2', 100, 20.0),
(151, 2038, 'Lab', '2024-11-15', 'Practical lab', 100, 20.0),
(152, 2038, 'Final Exam', '2025-01-05', 'Final assessment', 100, 40.0),
(153, 2039, 'Midterm 1', '2024-10-01', 'Midterm exam 1', 100, 20.0),
(154, 2039, 'Midterm 2', '2024-11-01', 'Midterm exam 2', 100, 20.0),
(155, 2039, 'Lab', '2024-11-15', 'Practical lab', 100, 20.0),
(156, 2039, 'Final Exam', '2025-01-05', 'Final assessment', 100, 40.0),
(157, 2040, 'Midterm 1', '2024-10-01', 'Midterm exam 1', 100, 20.0),
(158, 2040, 'Midterm 2', '2024-11-01', 'Midterm exam 2', 100, 20.0),
(159, 2040, 'Lab', '2024-11-15', 'Practical lab', 100, 20.0),
(160, 2040, 'Final Exam', '2025-01-05', 'Final assessment', 100, 40.0),
(161, 2041, 'Midterm 1', '2024-10-01', 'Midterm exam 1', 100, 20.0),
(162, 2041, 'Midterm 2', '2024-11-01', 'Midterm exam 2', 100, 20.0),
(163, 2041, 'Lab', '2024-11-15', 'Practical lab', 100, 20.0),
(164, 2041, 'Final Exam', '2025-01-05', 'Final assessment', 100, 40.0),
(165, 2042, 'Midterm 1', '2024-10-01', 'Midterm exam 1', 100, 20.0),
(166, 2042, 'Midterm 2', '2024-11-01', 'Midterm exam 2', 100, 20.0),
(167, 2042, 'Lab', '2024-11-15', 'Practical lab', 100, 20.0),
(168, 2042, 'Final Exam', '2025-01-05', 'Final assessment', 100, 40.0),
(169, 2043, 'Midterm 1', '2024-10-01', 'Midterm exam 1', 100, 20.0),
(170, 2043, 'Midterm 2', '2024-11-01', 'Midterm exam 2', 100, 20.0),
(171, 2043, 'Lab', '2024-11-15', 'Practical lab', 100, 20.0),
(172, 2043, 'Final Exam', '2025-01-05', 'Final assessment', 100, 40.0);



INSERT INTO test_result (test_id, student_id, score) VALUES (1, 1012, 60);
INSERT INTO test_result (test_id, student_id, score) VALUES (2, 1012, 75);
INSERT INTO test_result (test_id, student_id, score) VALUES (3, 1012, 62);
INSERT INTO test_result (test_id, student_id, score) VALUES (4, 1012, 96);
INSERT INTO test_result (test_id, student_id, score) VALUES (5, 1001, 92);
INSERT INTO test_result (test_id, student_id, score) VALUES (5, 1013, 83);
INSERT INTO test_result (test_id, student_id, score) VALUES (6, 1001, 94);
INSERT INTO test_result (test_id, student_id, score) VALUES (6, 1013, 98);
INSERT INTO test_result (test_id, student_id, score) VALUES (7, 1001, 95);
INSERT INTO test_result (test_id, student_id, score) VALUES (7, 1013, 91);
INSERT INTO test_result (test_id, student_id, score) VALUES (8, 1001, 100);
INSERT INTO test_result (test_id, student_id, score) VALUES (8, 1013, 60);
INSERT INTO test_result (test_id, student_id, score) VALUES (13, 1013, 78);
INSERT INTO test_result (test_id, student_id, score) VALUES (14, 1013, 98);
INSERT INTO test_result (test_id, student_id, score) VALUES (15, 1013, 76);
INSERT INTO test_result (test_id, student_id, score) VALUES (16, 1013, 86);
INSERT INTO test_result (test_id, student_id, score) VALUES (17, 1013, 63);
INSERT INTO test_result (test_id, student_id, score) VALUES (18, 1013, 98);
INSERT INTO test_result (test_id, student_id, score) VALUES (19, 1013, 97);
INSERT INTO test_result (test_id, student_id, score) VALUES (20, 1013, 97);
INSERT INTO test_result (test_id, student_id, score) VALUES (21, 1013, 92);
INSERT INTO test_result (test_id, student_id, score) VALUES (22, 1013, 95);
INSERT INTO test_result (test_id, student_id, score) VALUES (23, 1013, 93);
INSERT INTO test_result (test_id, student_id, score) VALUES (24, 1013, 96);
INSERT INTO test_result (test_id, student_id, score) VALUES (25, 1013, 79);
INSERT INTO test_result (test_id, student_id, score) VALUES (26, 1013, 98);
INSERT INTO test_result (test_id, student_id, score) VALUES (27, 1013, 84);
INSERT INTO test_result (test_id, student_id, score) VALUES (28, 1013, 95);
INSERT INTO test_result (test_id, student_id, score) VALUES (29, 1011, 97);
INSERT INTO test_result (test_id, student_id, score) VALUES (29, 1015, 81);
INSERT INTO test_result (test_id, student_id, score) VALUES (30, 1011, 88);
INSERT INTO test_result (test_id, student_id, score) VALUES (30, 1015, 87);
INSERT INTO test_result (test_id, student_id, score) VALUES (31, 1011, 81);
INSERT INTO test_result (test_id, student_id, score) VALUES (31, 1015, 82);
INSERT INTO test_result (test_id, student_id, score) VALUES (32, 1011, 91);
INSERT INTO test_result (test_id, student_id, score) VALUES (32, 1015, 92);
INSERT INTO test_result (test_id, student_id, score) VALUES (33, 1011, 84);
INSERT INTO test_result (test_id, student_id, score) VALUES (33, 1015, 97);
INSERT INTO test_result (test_id, student_id, score) VALUES (34, 1011, 97);
INSERT INTO test_result (test_id, student_id, score) VALUES (34, 1015, 89);
INSERT INTO test_result (test_id, student_id, score) VALUES (35, 1011, 99);
INSERT INTO test_result (test_id, student_id, score) VALUES (35, 1015, 41);
INSERT INTO test_result (test_id, student_id, score) VALUES (36, 1011, 94);
INSERT INTO test_result (test_id, student_id, score) VALUES (36, 1015, 91);
INSERT INTO test_result (test_id, student_id, score) VALUES (37, 1011, 77);
INSERT INTO test_result (test_id, student_id, score) VALUES (37, 1015, 88);
INSERT INTO test_result (test_id, student_id, score) VALUES (38, 1011, 88);
INSERT INTO test_result (test_id, student_id, score) VALUES (38, 1015, 82);
INSERT INTO test_result (test_id, student_id, score) VALUES (39, 1011, 84);
INSERT INTO test_result (test_id, student_id, score) VALUES (39, 1015, 83);
INSERT INTO test_result (test_id, student_id, score) VALUES (40, 1011, 100);
INSERT INTO test_result (test_id, student_id, score) VALUES (40, 1015, 70);
INSERT INTO test_result (test_id, student_id, score) VALUES (41, 1011, 82);
INSERT INTO test_result (test_id, student_id, score) VALUES (41, 1015, 74);
INSERT INTO test_result (test_id, student_id, score) VALUES (42, 1011, 98);
INSERT INTO test_result (test_id, student_id, score) VALUES (42, 1015, 97);
INSERT INTO test_result (test_id, student_id, score) VALUES (43, 1011, 100);
INSERT INTO test_result (test_id, student_id, score) VALUES (43, 1015, 95);
INSERT INTO test_result (test_id, student_id, score) VALUES (44, 1011, 100);
INSERT INTO test_result (test_id, student_id, score) VALUES (44, 1015, 85);
INSERT INTO test_result (test_id, student_id, score) VALUES (45, 1002, 76);
INSERT INTO test_result (test_id, student_id, score) VALUES (45, 1010, 72);
INSERT INTO test_result (test_id, student_id, score) VALUES (45, 1018, 90);
INSERT INTO test_result (test_id, student_id, score) VALUES (46, 1002, 96);
INSERT INTO test_result (test_id, student_id, score) VALUES (46, 1010, 68);
INSERT INTO test_result (test_id, student_id, score) VALUES (46, 1018, 91);
INSERT INTO test_result (test_id, student_id, score) VALUES (47, 1002, 89);
INSERT INTO test_result (test_id, student_id, score) VALUES (47, 1010, 63);
INSERT INTO test_result (test_id, student_id, score) VALUES (47, 1018, 93);
INSERT INTO test_result (test_id, student_id, score) VALUES (48, 1002, 93);
INSERT INTO test_result (test_id, student_id, score) VALUES (48, 1010, 92);
INSERT INTO test_result (test_id, student_id, score) VALUES (48, 1018, 84);
INSERT INTO test_result (test_id, student_id, score) VALUES (49, 1002, 71);
INSERT INTO test_result (test_id, student_id, score) VALUES (49, 1010, 64);
INSERT INTO test_result (test_id, student_id, score) VALUES (49, 1018, 60);
INSERT INTO test_result (test_id, student_id, score) VALUES (50, 1002, 96);
INSERT INTO test_result (test_id, student_id, score) VALUES (50, 1010, 83);
INSERT INTO test_result (test_id, student_id, score) VALUES (50, 1018, 83);
INSERT INTO test_result (test_id, student_id, score) VALUES (51, 1002, 75);
INSERT INTO test_result (test_id, student_id, score) VALUES (51, 1010, 75);
INSERT INTO test_result (test_id, student_id, score) VALUES (51, 1018, 86);
INSERT INTO test_result (test_id, student_id, score) VALUES (52, 1002, 93);
INSERT INTO test_result (test_id, student_id, score) VALUES (52, 1010, 99);
INSERT INTO test_result (test_id, student_id, score) VALUES (52, 1018, 88);
INSERT INTO test_result (test_id, student_id, score) VALUES (53, 1002, 95);
INSERT INTO test_result (test_id, student_id, score) VALUES (53, 1010, 96);
INSERT INTO test_result (test_id, student_id, score) VALUES (53, 1018, 98);
INSERT INTO test_result (test_id, student_id, score) VALUES (54, 1002, 89);
INSERT INTO test_result (test_id, student_id, score) VALUES (54, 1010, 92);
INSERT INTO test_result (test_id, student_id, score) VALUES (54, 1018, 77);
INSERT INTO test_result (test_id, student_id, score) VALUES (55, 1002, 80);
INSERT INTO test_result (test_id, student_id, score) VALUES (55, 1010, 86);
INSERT INTO test_result (test_id, student_id, score) VALUES (55, 1018, 88);
INSERT INTO test_result (test_id, student_id, score) VALUES (56, 1002, 71);
INSERT INTO test_result (test_id, student_id, score) VALUES (56, 1010, 72);
INSERT INTO test_result (test_id, student_id, score) VALUES (56, 1018, 68);
INSERT INTO test_result (test_id, student_id, score) VALUES (57, 1002, 86);
INSERT INTO test_result (test_id, student_id, score) VALUES (57, 1010, 91);
INSERT INTO test_result (test_id, student_id, score) VALUES (57, 1018, 72);
INSERT INTO test_result (test_id, student_id, score) VALUES (58, 1002, 74);
INSERT INTO test_result (test_id, student_id, score) VALUES (58, 1010, 83);
INSERT INTO test_result (test_id, student_id, score) VALUES (58, 1018, 99);
INSERT INTO test_result (test_id, student_id, score) VALUES (59, 1002, 83);
INSERT INTO test_result (test_id, student_id, score) VALUES (59, 1010, 80);
INSERT INTO test_result (test_id, student_id, score) VALUES (59, 1018, 79);
INSERT INTO test_result (test_id, student_id, score) VALUES (60, 1002, 97);
INSERT INTO test_result (test_id, student_id, score) VALUES (60, 1010, 91);
INSERT INTO test_result (test_id, student_id, score) VALUES (60, 1018, 91);
INSERT INTO test_result (test_id, student_id, score) VALUES (61, 1003, 75);
INSERT INTO test_result (test_id, student_id, score) VALUES (61, 1005, 82);
INSERT INTO test_result (test_id, student_id, score) VALUES (61, 1017, 96);
INSERT INTO test_result (test_id, student_id, score) VALUES (62, 1003, 79);
INSERT INTO test_result (test_id, student_id, score) VALUES (62, 1005, 86);
INSERT INTO test_result (test_id, student_id, score) VALUES (62, 1017, 89);
INSERT INTO test_result (test_id, student_id, score) VALUES (63, 1003, 74);
INSERT INTO test_result (test_id, student_id, score) VALUES (63, 1005, 60);
INSERT INTO test_result (test_id, student_id, score) VALUES (63, 1017, 87);
INSERT INTO test_result (test_id, student_id, score) VALUES (64, 1003, 90);
INSERT INTO test_result (test_id, student_id, score) VALUES (64, 1005, 71);
INSERT INTO test_result (test_id, student_id, score) VALUES (64, 1017, 80);
INSERT INTO test_result (test_id, student_id, score) VALUES (65, 1003, 91);
INSERT INTO test_result (test_id, student_id, score) VALUES (65, 1005, 88);
INSERT INTO test_result (test_id, student_id, score) VALUES (65, 1017, 60);
INSERT INTO test_result (test_id, student_id, score) VALUES (66, 1003, 88);
INSERT INTO test_result (test_id, student_id, score) VALUES (66, 1005, 73);
INSERT INTO test_result (test_id, student_id, score) VALUES (66, 1017, 74);
INSERT INTO test_result (test_id, student_id, score) VALUES (67, 1003, 89);
INSERT INTO test_result (test_id, student_id, score) VALUES (67, 1005, 57);
INSERT INTO test_result (test_id, student_id, score) VALUES (67, 1017, 81);
INSERT INTO test_result (test_id, student_id, score) VALUES (68, 1003, 89);
INSERT INTO test_result (test_id, student_id, score) VALUES (68, 1005, 96);
INSERT INTO test_result (test_id, student_id, score) VALUES (68, 1017, 67);
INSERT INTO test_result (test_id, student_id, score) VALUES (69, 1003, 87);
INSERT INTO test_result (test_id, student_id, score) VALUES (69, 1005, 71);
INSERT INTO test_result (test_id, student_id, score) VALUES (69, 1017, 82);
INSERT INTO test_result (test_id, student_id, score) VALUES (70, 1003, 73);
INSERT INTO test_result (test_id, student_id, score) VALUES (70, 1005, 89);
INSERT INTO test_result (test_id, student_id, score) VALUES (70, 1017, 94);
INSERT INTO test_result (test_id, student_id, score) VALUES (71, 1003, 88);
INSERT INTO test_result (test_id, student_id, score) VALUES (71, 1005, 100);
INSERT INTO test_result (test_id, student_id, score) VALUES (71, 1017, 92);
INSERT INTO test_result (test_id, student_id, score) VALUES (72, 1003, 94);
INSERT INTO test_result (test_id, student_id, score) VALUES (72, 1005, 87);
INSERT INTO test_result (test_id, student_id, score) VALUES (72, 1017, 99);
INSERT INTO test_result (test_id, student_id, score) VALUES (73, 1003, 99);
INSERT INTO test_result (test_id, student_id, score) VALUES (73, 1005, 78);
INSERT INTO test_result (test_id, student_id, score) VALUES (73, 1017, 71);
INSERT INTO test_result (test_id, student_id, score) VALUES (74, 1003, 63);
INSERT INTO test_result (test_id, student_id, score) VALUES (74, 1005, 89);
INSERT INTO test_result (test_id, student_id, score) VALUES (74, 1017, 98);
INSERT INTO test_result (test_id, student_id, score) VALUES (75, 1003, 100);
INSERT INTO test_result (test_id, student_id, score) VALUES (75, 1005, 90);
INSERT INTO test_result (test_id, student_id, score) VALUES (75, 1017, 92);
INSERT INTO test_result (test_id, student_id, score) VALUES (76, 1003, 60);
INSERT INTO test_result (test_id, student_id, score) VALUES (76, 1005, 87);
INSERT INTO test_result (test_id, student_id, score) VALUES (76, 1017, 89);
INSERT INTO test_result (test_id, student_id, score) VALUES (77, 1016, 92);
INSERT INTO test_result (test_id, student_id, score) VALUES (78, 1016, 78);
INSERT INTO test_result (test_id, student_id, score) VALUES (79, 1016, 84);
INSERT INTO test_result (test_id, student_id, score) VALUES (80, 1016, 87);
INSERT INTO test_result (test_id, student_id, score) VALUES (81, 1016, 65);
INSERT INTO test_result (test_id, student_id, score) VALUES (82, 1016, 90);
INSERT INTO test_result (test_id, student_id, score) VALUES (83, 1016, 92);
INSERT INTO test_result (test_id, student_id, score) VALUES (84, 1016, 68);
INSERT INTO test_result (test_id, student_id, score) VALUES (85, 1016, 75);
INSERT INTO test_result (test_id, student_id, score) VALUES (86, 1016, 66);
INSERT INTO test_result (test_id, student_id, score) VALUES (87, 1016, 86);
INSERT INTO test_result (test_id, student_id, score) VALUES (88, 1016, 96);
INSERT INTO test_result (test_id, student_id, score) VALUES (89, 1016, 82);
INSERT INTO test_result (test_id, student_id, score) VALUES (90, 1016, 62);
INSERT INTO test_result (test_id, student_id, score) VALUES (91, 1016, 100);
INSERT INTO test_result (test_id, student_id, score) VALUES (92, 1016, 60);
INSERT INTO test_result (test_id, student_id, score) VALUES (93, 1004, 92);
INSERT INTO test_result (test_id, student_id, score) VALUES (94, 1004, 86);
INSERT INTO test_result (test_id, student_id, score) VALUES (95, 1004, 99);
INSERT INTO test_result (test_id, student_id, score) VALUES (96, 1004, 92);
INSERT INTO test_result (test_id, student_id, score) VALUES (97, 1004, 60);
INSERT INTO test_result (test_id, student_id, score) VALUES (98, 1004, 99);
INSERT INTO test_result (test_id, student_id, score) VALUES (99, 1004, 87);
INSERT INTO test_result (test_id, student_id, score) VALUES (100, 1004, 89);
INSERT INTO test_result (test_id, student_id, score) VALUES (101, 1004, 86);
INSERT INTO test_result (test_id, student_id, score) VALUES (102, 1004, 92);
INSERT INTO test_result (test_id, student_id, score) VALUES (103, 1004, 83);
INSERT INTO test_result (test_id, student_id, score) VALUES (104, 1004, 80);
INSERT INTO test_result (test_id, student_id, score) VALUES (105, 1004, 86);
INSERT INTO test_result (test_id, student_id, score) VALUES (106, 1004, 88);
INSERT INTO test_result (test_id, student_id, score) VALUES (107, 1004, 88);
INSERT INTO test_result (test_id, student_id, score) VALUES (108, 1004, 70);
INSERT INTO test_result (test_id, student_id, score) VALUES (137, 1020, 96);
INSERT INTO test_result (test_id, student_id, score) VALUES (138, 1020, 91);
INSERT INTO test_result (test_id, student_id, score) VALUES (139, 1020, 70);
INSERT INTO test_result (test_id, student_id, score) VALUES (140, 1020, 88);
INSERT INTO test_result (test_id, student_id, score) VALUES (141, 1020, 91);
INSERT INTO test_result (test_id, student_id, score) VALUES (142, 1020, 81);
INSERT INTO test_result (test_id, student_id, score) VALUES (143, 1020, 92);
INSERT INTO test_result (test_id, student_id, score) VALUES (144, 1020, 100);
INSERT INTO test_result (test_id, student_id, score) VALUES (145, 1020, 93);
INSERT INTO test_result (test_id, student_id, score) VALUES (146, 1020, 71);
INSERT INTO test_result (test_id, student_id, score) VALUES (147, 1020, 81);
INSERT INTO test_result (test_id, student_id, score) VALUES (148, 1020, 96);
INSERT INTO test_result (test_id, student_id, score) VALUES (161, 1020, 87);
INSERT INTO test_result (test_id, student_id, score) VALUES (162, 1020, 92);
INSERT INTO test_result (test_id, student_id, score) VALUES (163, 1020, 88);
INSERT INTO test_result (test_id, student_id, score) VALUES (164, 1020, 72);
INSERT INTO test_result (test_id, student_id, score) VALUES (165, 1020, 89);
INSERT INTO test_result (test_id, student_id, score) VALUES (166, 1020, 86);
INSERT INTO test_result (test_id, student_id, score) VALUES (167, 1020, 92);
INSERT INTO test_result (test_id, student_id, score) VALUES (168, 1020, 85);
INSERT INTO test_result (test_id, student_id, score) VALUES (169, 1020, 99);
INSERT INTO test_result (test_id, student_id, score) VALUES (170, 1020, 79);
INSERT INTO test_result (test_id, student_id, score) VALUES (171, 1020, 81);
INSERT INTO test_result (test_id, student_id, score) VALUES (172, 1020, 95);



INSERT INTO service (id, semester_id, academic_year_id, service_type, billing_period, price, description) VALUES
(1, NULL, 6, 'academic_year', 'year', 10000.00, 'Tuition for full academic year'),
(2, 11, 6, 'academic_year', 'semester', 5000.00, 'Tuition for Fall semester'),
(3, 12, 6, 'academic_year', 'semester', 5000.00, 'Tuition for Winter semester'),
(4, NULL, 6, 'academic_year', 'month', 833.33, 'Monthly tuition'),
(5, NULL, 6, 'academic_year', 'week', 192.31, 'Weekly tuition');
(6, NULL, 6, 'service_transportation', 'year', 1000.00, 'Transportation service for academic year'),
(7, NULL, 6, 'service_lunch', 'month', 250.00, 'Monthly school lunch service');



INSERT INTO discount (id, name, value, description, discount_type) VALUES
(1, 'Second Child', 10.00, '10% discount for second child under same guardian', 'percentage'),
(2, 'Third+ Child', 20.00, '20% discount for third or more children under same guardian', 'percentage'),
(3, 'Staff Child', 80.00, '80% discount for children of staff members', 'percentage'),
(4, 'Individual 50%', 50.00, '50% discount for selected student', 'percentage'),
(5, 'Individual 80%', 80.00, '80% discount for selected student', 'percentage');



INSERT INTO tax (id, name, rate, description) VALUES
(1, 'GST', 5.00, 'Federal Goods and Services Tax'),
(2, 'HST', 13.00, 'Harmonized Sales Tax (ON, NB, NL, NS, PEI)'),
(3, 'PST (Ontario)', 8.00, 'Provincial Sales Tax (Ontario portion)');



INSERT INTO customer (id, student_id, guardian_id, employee_id) VALUES
(1020, 1020, NULL, NULL),
(2001, NULL, 2001, NULL),
(2002, NULL, 2002, NULL),
(2003, NULL, 2003, NULL),
(2004, NULL, 2004, NULL),
(2026, NULL, 2026, NULL),
(2024, NULL, 2024, NULL),
(2025, NULL, 2025, NULL),
(2028, NULL, 2028, NULL),
(3017, NULL, NULL, 3017);

INSERT INTO customer (id, customer_type, student_id, guardian_id, employee_id, first_name, last_name, phone, email, description) VALUES
(9001, 'sponsor', NULL, NULL, NULL, 'Olga', 'Morin', '6139993001', 'olga.morin@example.com', 'Private sponsor covering partial tuition'),
(9002, 'other', NULL, NULL, NULL, 'Bright', 'Future Fund', '6139993002', 'contact@brightfuturefund.org', 'Educational foundation sponsor for selected students');


INSERT INTO invoice (id, customer_id, invoice_date, due_date, total_amount,
    discount_amount, amount_paid, payment_status, description)
VALUES
( 1, 3017, '2024-09-01', '2024-10-01', 10000.00, 8000.00, 0, 'pending', 'Tuition invoice for student 1014'),
( 2, 2024, '2024-09-01', '2024-10-01', 10000.00, 1000.00, 0, 'pending', 'Tuition invoice for student 1001'),
( 3, 2001, '2024-09-01', '2024-10-01', 10000.00, 1000.00, 0, 'pending', 'Tuition invoice for student 1004'),
( 4, 2004, '2024-09-01', '2024-10-01', 10000.00, 2000.00, 0, 'pending', 'Tuition invoice for student 1005'),
( 5, 1020, '2024-09-01', '2024-10-01', 10000.00, 5000.00, 0, 'pending', 'Tuition invoice for student 1020'),
( 6, 9001, '2024-09-01', '2024-09-30', 1050.00, 0.00, 0, 'pending', 'Transportation fee for student 1010'),
( 7, 9002, '2024-09-01', '2024-09-30', 3150.00, 0.00, 0, 'pending', 'Lunch service fee for student 1015'),
( 8, 2026, '2024-09-01', '2024-10-01', 5000.00, 0.00, 0, 'pending', 'Fall semester for student 1011'),
( 9, 2028, '2024-09-01', '2024-10-01', 833.33, 0.00, 0, 'pending', 'Monthly tuition for student 1012'),
( 10, 2024, '2024-09-01', '2024-10-01', 192.31, 0.00, 0, 'pending', 'Weekly tuition for student 1008');


INSERT INTO invoice_detail ( invoice_id, service_id, tax_id, discount_id, quantity, unit_price, total_amount )
VALUES
(1, 1, NULL, 5, 1, 10000.00, 2000.00),
(2, 1, NULL, 1, 1, 10000.00, 9000.00),
(3, 1, NULL, 1, 1, 10000.00, 9000.00),
(4, 1, NULL, 2, 1, 10000.00, 8000.00),
(5, 1, NULL, 4, 1, 10000.00, 5000.00),
(6, 6, 1, NULL, 1, 1000.00, 1050.00),
(7, 7, 1, NULL, 12, 250.00, 3150.00),
(8, 2, NULL, NULL, 1, 5000.00, 5000.00),
(9, 4, NULL, NULL, 1, 833.33, 833.33),
(10, 5, NULL, NULL, 1, 192.31, 192.31);


INSERT INTO invoice_discount (invoice_id, discount_id, value_applied)
VALUES
(1, 5, 8000.00),
(2, 1, 1000.00),
(3, 1, 1000.00),
(4, 2, 2000.00),
(5, 4, 5000.00);


INSERT INTO invoice_tax (invoice_id, tax_id, tax_amount)
VALUES
(6, 1, 50.00),
(7, 1, 150.00);


INSERT INTO payment (id, customer_id, payment_date, amount_paid, payment_method, payment_status, description)
VALUES
(1, 2026, '2024-09-05', 5000.00, 'online', 'paid', 'Fall semester payment for student 1011'),
(2, 2028, '2024-09-06', 833.33, 'card', 'paid', 'Monthly tuition payment for student 1012'),
(3, 2024, '2024-09-07', 192.31, 'cash', 'paid', 'Weekly tuition payment for student 1008');


INSERT INTO payment_detail (payment_id, invoice_id, amount_paid)
VALUES
(1, 8, 5000.00),
(2, 9, 833.33),
(3, 10, 192.31);