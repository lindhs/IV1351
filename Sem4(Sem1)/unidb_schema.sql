CREATE TABLE activity_type (
 activity_id VARCHAR(10) NOT NULL,
 activity_type VARCHAR(10) NOT NULL,
 factor NUMERIC(4) NOT NULL
);

ALTER TABLE activity_type ADD CONSTRAINT PK_activity_type PRIMARY KEY (activity_id);

CREATE UNIQUE INDEX pk_activity_type ON activity_type (activity_id);


CREATE TABLE adress (
 adress_id VARCHAR(10) NOT NULL,
 zip_code VARCHAR(30),
 street VARCHAR(30),
 city VARCHAR(10)
);

ALTER TABLE adress ADD CONSTRAINT PK_adress PRIMARY KEY (adress_id);

CREATE UNIQUE INDEX pk_adress ON adress (adress_id);


CREATE TABLE course_layout (
 course_code VARCHAR(10) NOT NULL,
 valid_from DATE NOT NULL,
 course_name VARCHAR(35) NOT NULL,
 hp NUMERIC(4) NOT NULL,
 min_students INT NOT NULL,
 max_students INT NOT NULL,
 valid_to DATE
);

ALTER TABLE course_layout ADD CONSTRAINT PK_course_layout PRIMARY KEY (course_code,valid_from);

CREATE UNIQUE INDEX pk_course_layout ON course_layout (course_code,valid_from);


CREATE TABLE department (
 dept_id VARCHAR(10) NOT NULL,
 dept_name VARCHAR(10) NOT NULL,
 manager_id VARCHAR(10)
);

ALTER TABLE department ADD CONSTRAINT PK_department PRIMARY KEY (dept_id);

CREATE UNIQUE INDEX pk_department ON department (dept_id);


CREATE TABLE email (
 email_id VARCHAR(10) NOT NULL,
 email_type VARCHAR(10),
 email VARCHAR(35)
);

ALTER TABLE email ADD CONSTRAINT PK_email PRIMARY KEY (email_id);

CREATE UNIQUE INDEX pk_email ON email (email_id);


CREATE TABLE employee (
 teacher_id VARCHAR(10) NOT NULL,
 is_teacher VARCHAR(5) NOT NULL,
 job_title VARCHAR(10),
 dept_id VARCHAR(10),
 person_id VARCHAR(10),
 supervisor_id VARCHAR(10)
);

ALTER TABLE employee ADD CONSTRAINT PK_employee PRIMARY KEY (teacher_id);

CREATE UNIQUE INDEX pk_employee ON employee (teacher_id);


CREATE TABLE person (
 person_id VARCHAR(10) NOT NULL,
 first_name VARCHAR(10) NOT NULL,
 last_name VARCHAR(10) NOT NULL
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (person_id);

CREATE UNIQUE INDEX pk_person ON person (person_id);


CREATE TABLE person_adress (
 adress_id VARCHAR(10) NOT NULL,
 person_id VARCHAR(10) NOT NULL
);

ALTER TABLE person_adress ADD CONSTRAINT PK_person_adress PRIMARY KEY (adress_id,person_id);

CREATE UNIQUE INDEX pk_person_adress ON person_adress (adress_id,person_id);


CREATE TABLE person_email (
 email_id VARCHAR(10) NOT NULL,
 person_id VARCHAR(10) NOT NULL
);

ALTER TABLE person_email ADD CONSTRAINT PK_person_email PRIMARY KEY (email_id,person_id);

CREATE UNIQUE INDEX pk_person_email ON person_email (email_id,person_id);


CREATE TABLE phone (
 phone_id VARCHAR(10) NOT NULL,
 phone_num VARCHAR(10),
 num_type VARCHAR(10)
);

ALTER TABLE phone ADD CONSTRAINT PK_phone PRIMARY KEY (phone_id);

CREATE UNIQUE INDEX pk_phone ON phone (phone_id);


CREATE TABLE salary (
 valid_from DATE NOT NULL,
 teacher_id VARCHAR(10) NOT NULL,
 salary INT4 NOT NULL,
 valid_to DATE
);

ALTER TABLE salary ADD CONSTRAINT PK_salary PRIMARY KEY (valid_from,teacher_id);

CREATE UNIQUE INDEX pk_salary ON salary (valid_from,teacher_id);


CREATE TABLE skill (
 skill_id VARCHAR(10) NOT NULL,
 skill_type VARCHAR(10) NOT NULL
);

ALTER TABLE skill ADD CONSTRAINT PK_skill PRIMARY KEY (skill_id);

CREATE UNIQUE INDEX pk_skill ON skill (skill_id);


CREATE TABLE skill_set (
 teacher_id VARCHAR(10) NOT NULL,
 skill_id VARCHAR(10) NOT NULL
);

ALTER TABLE skill_set ADD CONSTRAINT PK_skill_set PRIMARY KEY (teacher_id,skill_id);

CREATE UNIQUE INDEX pk_skill_set ON skill_set (teacher_id,skill_id);


CREATE TABLE course_instance (
 instance_id VARCHAR(10) NOT NULL,
 num_students INT,
 period INT NOT NULL,
 year INT NOT NULL,
 course_code VARCHAR(10) NOT NULL,
 course_valid_from DATE NOT NULL
);

ALTER TABLE course_instance ADD CONSTRAINT PK_course_instance PRIMARY KEY (instance_id);

CREATE UNIQUE INDEX pk_course_instance ON course_instance (instance_id);

CREATE INDEX idx_course_instance_year_period ON course_instance (year,period,instance_id);


CREATE TABLE person_phone (
 person_id VARCHAR(10) NOT NULL,
 phone_id VARCHAR(10) NOT NULL
);

ALTER TABLE person_phone ADD CONSTRAINT PK_person_phone PRIMARY KEY (person_id,phone_id);

CREATE UNIQUE INDEX pk_person_phone ON person_phone (person_id,phone_id);


CREATE TABLE planned_activities (
 activity_id VARCHAR(10) NOT NULL,
 instance_id VARCHAR(10) NOT NULL,
 planned_hours INT NOT NULL
);

ALTER TABLE planned_activities ADD CONSTRAINT PK_planned_activities PRIMARY KEY (activity_id,instance_id);

CREATE UNIQUE INDEX pk_planned_activities ON planned_activities (activity_id);

CREATE INDEX idx_planned_activities_instance_activity ON planned_activities (activity_id);


CREATE TABLE allocation (
 teacher_id VARCHAR(10) NOT NULL,
 activity_id VARCHAR(10) NOT NULL,
 instance_id VARCHAR(10) NOT NULL,
 allocated_hours INT
);

ALTER TABLE allocation ADD CONSTRAINT PK_allocation PRIMARY KEY (teacher_id,activity_id,instance_id);

CREATE UNIQUE INDEX pk_allocation ON allocation (teacher_id,activity_id);

CREATE INDEX idx_allocation_instance_activity ON allocation (teacher_id,activity_id);


ALTER TABLE department ADD CONSTRAINT FK_department_0 FOREIGN KEY (manager_id) REFERENCES employee (teacher_id);


ALTER TABLE employee ADD CONSTRAINT FK_employee_0 FOREIGN KEY (dept_id) REFERENCES department (dept_id);
ALTER TABLE employee ADD CONSTRAINT FK_employee_1 FOREIGN KEY (person_id) REFERENCES person (person_id);
ALTER TABLE employee ADD CONSTRAINT FK_employee_2 FOREIGN KEY (supervisor_id) REFERENCES employee (teacher_id);


ALTER TABLE person_adress ADD CONSTRAINT FK_person_adress_0 FOREIGN KEY (adress_id) REFERENCES adress (adress_id);
ALTER TABLE person_adress ADD CONSTRAINT FK_person_adress_1 FOREIGN KEY (person_id) REFERENCES person (person_id);


ALTER TABLE person_email ADD CONSTRAINT FK_person_email_0 FOREIGN KEY (email_id) REFERENCES email (email_id);
ALTER TABLE person_email ADD CONSTRAINT FK_person_email_1 FOREIGN KEY (person_id) REFERENCES person (person_id);


ALTER TABLE salary ADD CONSTRAINT FK_salary_0 FOREIGN KEY (teacher_id) REFERENCES employee (teacher_id);


ALTER TABLE skill_set ADD CONSTRAINT FK_skill_set_0 FOREIGN KEY (teacher_id) REFERENCES employee (teacher_id);
ALTER TABLE skill_set ADD CONSTRAINT FK_skill_set_1 FOREIGN KEY (skill_id) REFERENCES skill (skill_id);


ALTER TABLE course_instance ADD CONSTRAINT FK_course_instance_0 FOREIGN KEY (course_code,course_valid_from) REFERENCES course_layout (course_code,valid_from);


ALTER TABLE person_phone ADD CONSTRAINT FK_person_phone_0 FOREIGN KEY (person_id) REFERENCES person (person_id);
ALTER TABLE person_phone ADD CONSTRAINT FK_person_phone_1 FOREIGN KEY (phone_id) REFERENCES phone (phone_id);


ALTER TABLE planned_activities ADD CONSTRAINT FK_planned_activities_0 FOREIGN KEY (activity_id) REFERENCES activity_type (activity_id);
ALTER TABLE planned_activities ADD CONSTRAINT FK_planned_activities_1 FOREIGN KEY (instance_id) REFERENCES course_instance (instance_id);


ALTER TABLE allocation ADD CONSTRAINT FK_allocation_0 FOREIGN KEY (teacher_id) REFERENCES employee (teacher_id);
ALTER TABLE allocation ADD CONSTRAINT FK_allocation_1 FOREIGN KEY (activity_id,instance_id) REFERENCES planned_activities (activity_id,instance_id);


