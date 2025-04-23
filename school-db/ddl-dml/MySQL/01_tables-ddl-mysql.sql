DROP TABLE IF EXISTS address;
CREATE TABLE IF NOT EXISTS address (
    id INT PRIMARY KEY NOT NULL,
    home_phone VARCHAR(10) NULL,    
    house_number INT NOT NULL,    
    street VARCHAR(45) NOT NULL,
    city VARCHAR(45) NOT NULL,
    province CHAR(2) NOT NULL,
    postal_code CHAR(7) NOT NULL,
    apartment_number INT NULL
);

DROP TABLE IF EXISTS person_address;
CREATE TABLE IF NOT EXISTS person_address (
    id INT PRIMARY KEY NOT NULL,
    person_type ENUM( 'student', 'guardian', 'employee', 'other' ) DEFAULT 'student',
    address_id INT NOT NULL,
    address_type ENUM( 'home', 'guardian', 'work', 'mailing', 'other'  ) DEFAULT 'home',
    CONSTRAINT fk_address_person_address FOREIGN KEY (address_id) REFERENCES address(id) ON DELETE CASCADE ON UPDATE CASCADE
);  

DROP TABLE IF EXISTS student;
CREATE TABLE IF NOT EXISTS student (
    id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birthday DATE NOT NULL,
    gender ENUM( 'unknown', 'm', 'f', 'x'  ) DEFAULT 'unknown',
    grade_level INT NOT NULL,
    date_enrolled TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    date_unenrolled DATE,
    status ENUM( 'active', 'graduated', 'withdrawn', 'transferred', 'inactive' ) DEFAULT 'active',
    phone_number VARCHAR(10) NULL,
    person_address_id INT,
    CONSTRAINT fk_person_address_student FOREIGN KEY (person_address_id) REFERENCES person_address(id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS guardian;
CREATE TABLE IF NOT EXISTS guardian (
    id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birthday DATE NULL,
    cell_phone VARCHAR(10) NULL,
    email VARCHAR(100) NULL,
    person_address_id INT,
    CONSTRAINT fk_person_address_guardian FOREIGN KEY (person_address_id) REFERENCES person_address(id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS student_guardian;
CREATE TABLE IF NOT EXISTS student_guardian (
    student_id INT NOT NULL,
    guardian_id INT NOT NULL,
    relationship ENUM( 'guardian', 'mother', 'father', 'family member', 'other'  ) DEFAULT 'guardian',
    PRIMARY KEY (student_id, guardian_id),
    CONSTRAINT fk_student_student_guardian FOREIGN KEY (student_id) REFERENCES student(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_guardian_student_guardian FOREIGN KEY (guardian_id) REFERENCES guardian(id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS employee;
CREATE TABLE IF NOT EXISTS employee (
    id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    position VARCHAR(100) NOT NULL,
    birthday DATE,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(15) NOT NULL,
    hired_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    termination_date DATE NULL,
    person_address_id INT,
    CONSTRAINT fk_person_address_employee FOREIGN KEY (person_address_id) REFERENCES person_address(id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS academic_year;
CREATE TABLE IF NOT EXISTS academic_year (
    id INT PRIMARY KEY NOT NULL,
    year VARCHAR(9),
    start_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    end_date DATE
); 

DROP TABLE IF EXISTS semester;
CREATE TABLE IF NOT EXISTS semester (
    id INT PRIMARY KEY NOT NULL,
    name ENUM( 'fall', 'winter', 'spring', 'summer' ) DEFAULT 'fall',
    academic_year_id INT,
    start_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    end_date DATE,
    CONSTRAINT fk_academic_year_semester FOREIGN KEY (academic_year_id) REFERENCES academic_year(id) ON DELETE CASCADE ON UPDATE CASCADE
); 

DROP TABLE IF EXISTS department;
CREATE TABLE IF NOT EXISTS department (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(250)
);

DROP TABLE IF EXISTS course;
CREATE TABLE IF NOT EXISTS course (
    id INT PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(250),
    department_id INT NOT NULL,
    CONSTRAINT fk_department_course FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE ON UPDATE CASCADE
);


DROP TABLE IF EXISTS classroom;
CREATE TABLE IF NOT EXISTS classroom (
    id INT PRIMARY KEY NOT NULL,
    capacity INT,    
    room_number VARCHAR(15),
    location VARCHAR(45),
    description VARCHAR(250)
);

DROP TABLE IF EXISTS section;
CREATE TABLE IF NOT EXISTS section (
    id INT PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    course_id INT NOT NULL,
    semester_id INT NOT NULL,
    teacher_id INT,
    classroom_id INT,
    description VARCHAR(250),
    CONSTRAINT fk_course_section FOREIGN KEY (course_id) REFERENCES course(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_classroom_section FOREIGN KEY (classroom_id) REFERENCES classroom(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_employee_section FOREIGN KEY (teacher_id) REFERENCES employee(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_semester_section FOREIGN KEY (semester_id) REFERENCES semester(id) ON DELETE CASCADE ON UPDATE CASCADE  
);

DROP TABLE IF EXISTS enrollment;
CREATE TABLE IF NOT EXISTS enrollment (
    id INT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    section_id INT NOT NULL,
    enrollment_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    unenrolled_date DATE,
    CONSTRAINT fk_student_enrollment FOREIGN KEY (student_id) REFERENCES student(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_course_enrollment FOREIGN KEY (course_id) REFERENCES course(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_section_enrollment FOREIGN KEY (section_id) REFERENCES section(id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS test;
CREATE TABLE IF NOT EXISTS test (
    id INT PRIMARY KEY NOT NULL,
    section_id INT NOT NULL,
    test_name VARCHAR(100) NOT NULL,
    test_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    description VARCHAR(250),
    max_score INT,
    test_weight DECIMAL(5,2),
    CONSTRAINT fk_section_test FOREIGN KEY (section_id) REFERENCES section(id) ON DELETE CASCADE ON UPDATE CASCADE
);


DROP TABLE IF EXISTS test_result;
CREATE TABLE IF NOT EXISTS test_result (
    id SERIAL PRIMARY KEY,
    student_id INT NOT NULL,
    test_id INT NOT NULL,
    score DECIMAL(5,2),
    CONSTRAINT fk_student_test_result FOREIGN KEY (student_id) REFERENCES student(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_test_test_result FOREIGN KEY (test_id) REFERENCES test(id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS customer;
CREATE TABLE IF NOT EXISTS customer (
    id INT PRIMARY KEY NOT NULL,
    customer_type ENUM( 'guardian', 'student', 'employee', 'sponsor', 'other' ) DEFAULT 'guardian',
    student_id INT,
    guardian_id INT,
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(10),
    email VARCHAR(100),
    person_address_id INT,
    description VARCHAR(250)
);

DROP TABLE IF EXISTS service;
CREATE TABLE IF NOT EXISTS service (
    id SERIAL PRIMARY KEY NOT NULL,
    semester_id INT,
    academic_year_id INT,
    service_type ENUM( 'academic_year', 'academic_semester', 'academic_month', 'academic_other', 'service_transportation', 'service_lunch', 'service_other'  ) DEFAULT 'academic_year',
    price DECIMAL(10,2),
    description VARCHAR(250),
    CONSTRAINT fk_semester_service FOREIGN KEY (semester_id) REFERENCES semester(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_academic_year_service FOREIGN KEY (academic_year_id) REFERENCES academic_year(id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS discount;
CREATE TABLE IF NOT EXISTS discount (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(45) NOT NULL,
    value DECIMAL(10,2),
    description VARCHAR(250),
    discount_type ENUM( 'fixed amount', 'percentage' ) DEFAULT 'fixed amount'
);

DROP TABLE IF EXISTS tax;
CREATE TABLE IF NOT EXISTS tax (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(100),
    rate DECIMAL(10,2) NOT NULL,
    description VARCHAR(100)
);

DROP TABLE IF EXISTS invoice;
CREATE TABLE IF NOT EXISTS invoice (
    id INT PRIMARY KEY NOT NULL,
    customer_id INT NOT NULL,
    invoice_date DATE,
    due_date DATE,
    total_amount DECIMAL(10,2) NOT NULL,
    discount_amount DECIMAL(10,2) DEFAULT 0,
    amount_paid DECIMAL(10,2) DEFAULT 0,
    payment_status ENUM( 'sent', 'pending', 'paid', 'cancelled' ) DEFAULT 'pending',
    description VARCHAR(250)
);

DROP TABLE IF EXISTS invoice_detail;
CREATE TABLE IF NOT EXISTS invoice_detail (
    id SERIAL PRIMARY KEY NOT NULL,
    invoice_id INT NOT NULL,
    service_id INT NOT NULL,
    tax_id INT,
    discount_id INT,
    quantity INT DEFAULT 1,
    unit_price DECIMAL(10,2) NOT NULL,
    total_amount DECIMAL(10,2),
    CONSTRAINT fk_invoice_invoice_detail FOREIGN KEY (invoice_id) REFERENCES invoice(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_service_invoice_detail FOREIGN KEY (service_id) REFERENCES service(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_tax_invoice_detail FOREIGN KEY (tax_id) REFERENCES tax(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_discount_invoice_detail FOREIGN KEY (discount_id) REFERENCES discount(id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS payment;
CREATE TABLE IF NOT EXISTS payment (
    id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    payment_date DATE,
    amount_paid DECIMAL(10,2),
    payment_method ENUM( 'cash', 'card', 'online', 'check', 'mobile', 'other' ) DEFAULT 'other',
    payment_status ENUM( 'sent', 'pending', 'paid', 'cancelled' ) DEFAULT 'pending',
    description VARCHAR(250)
);

DROP TABLE IF EXISTS payment_detail;
CREATE TABLE IF NOT EXISTS payment_detail (
    payment_id INT NOT NULL,
    invoice_id INT NOT NULL,
    amount_paid DECIMAL(10,2),
    PRIMARY KEY (payment_id, invoice_id),
    CONSTRAINT fk_payment_payment_detail FOREIGN KEY (payment_id) REFERENCES payment(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_invoice_payment_detail FOREIGN KEY (invoice_id) REFERENCES invoice(id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS invoice_discount;
CREATE TABLE IF NOT EXISTS invoice_discount (
    invoice_id INT NOT NULL,
    discount_id INT NOT NULL,
    value_applied DECIMAL(10,2),
    PRIMARY KEY(invoice_id, discount_id),
    CONSTRAINT fk_invoice_invoice_discount FOREIGN KEY (invoice_id) REFERENCES invoice(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_discount_invoice_discount FOREIGN KEY (discount_id) REFERENCES discount(id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS invoice_tax;
CREATE TABLE IF NOT EXISTS invoice_tax (
    invoice_id INT NOT NULL,
    tax_id INT NOT NULL,
    tax_amount DECIMAL(10,2),
    PRIMARY KEY(invoice_id, tax_id),
    CONSTRAINT fk_tax_invoice_tax FOREIGN KEY (tax_id) REFERENCES tax(id) ON DELETE CASCADE ON UPDATE CASCADE
);
