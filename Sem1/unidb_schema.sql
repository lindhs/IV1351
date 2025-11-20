CREATE TABLE activity_type (
 activity_id CHAR(10) NOT NULL,
 activity_type CHAR(20),
 factor DECIMAL(2)
);

ALTER TABLE activity_type ADD CONSTRAINT PK_activity_type PRIMARY KEY (activity_id);


CREATE TABLE course_layout (
 course_code CHAR(10) NOT NULL,
 course_name CHAR(50),
 hp DECIMAL(2),
 min_students INT,
 max_students INT,
 valid_from DATE NOT NULL
);

ALTER TABLE course_layout ADD CONSTRAINT PK_course_layout PRIMARY KEY (course_code);


CREATE TABLE department (
 dept_id CHAR(10) NOT NULL,
 dept_name CHAR(20),
 manager_id CHAR(20) NOT NULL
);

ALTER TABLE department ADD CONSTRAINT PK_department PRIMARY KEY (dept_id);


CREATE TABLE person (
 person_id CHAR(10) NOT NULL,
 first_name CHAR(30),
 last_name CHAR(30),
 contact CHAR(50)
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (person_id);


CREATE TABLE skill_set (
 skill_set_id CHAR(10) NOT NULL
);

ALTER TABLE skill_set ADD CONSTRAINT PK_skill_set PRIMARY KEY (skill_set_id);


CREATE TABLE course_instance (
 instance_id CHAR(10) NOT NULL,
 num_students INT,
 period INT,
 year INT,
 course_code CHAR(10) NOT NULL
);

ALTER TABLE course_instance ADD CONSTRAINT PK_course_instance PRIMARY KEY (instance_id);


CREATE TABLE employee (
 teacher_id CHAR(10) NOT NULL,
 dept_id CHAR(10) NOT NULL,
 is_teacher VARCHAR(5),
 job_title CHAR(30),
 person_id CHAR(10) NOT NULL,
 skill_set_id CHAR(10) NOT NULL
);

ALTER TABLE employee ADD CONSTRAINT PK_employee PRIMARY KEY (teacher_id);


CREATE TABLE planned_activities (
 instance_id CHAR(10) NOT NULL,
 activity_id CHAR(10) NOT NULL,
 planned_hours DECIMAL(2)
);

ALTER TABLE planned_activities ADD CONSTRAINT PK_planned_activities PRIMARY KEY (instance_id,activity_id);


CREATE TABLE salary (
 teacher_id CHAR(10) NOT NULL,
 salary INT,
 valid_from DATE,
 valid_to DATE
);

ALTER TABLE salary ADD CONSTRAINT PK_salary PRIMARY KEY (teacher_id);


CREATE TABLE skill (
 skill_id CHAR(10) NOT NULL,
 skill_type CHAR(40),
 skill_set_id CHAR(10) NOT NULL
);

ALTER TABLE skill ADD CONSTRAINT PK_skill PRIMARY KEY (skill_id);


CREATE TABLE allocation (
 allocation_id CHAR(10) NOT NULL,
 instance_id CHAR(10) NOT NULL,
 teacher_id CHAR(10) NOT NULL
);

ALTER TABLE allocation ADD CONSTRAINT PK_allocation PRIMARY KEY (allocation_id);


ALTER TABLE course_instance ADD CONSTRAINT FK_course_instance_0 FOREIGN KEY (course_code) REFERENCES course_layout (course_code);


ALTER TABLE employee ADD CONSTRAINT FK_employee_0 FOREIGN KEY (dept_id) REFERENCES department (dept_id);
ALTER TABLE employee ADD CONSTRAINT FK_employee_1 FOREIGN KEY (person_id) REFERENCES person (person_id);
ALTER TABLE employee ADD CONSTRAINT FK_employee_2 FOREIGN KEY (skill_set_id) REFERENCES skill_set (skill_set_id);


ALTER TABLE planned_activities ADD CONSTRAINT FK_planned_activities_0 FOREIGN KEY (instance_id) REFERENCES course_instance (instance_id);
ALTER TABLE planned_activities ADD CONSTRAINT FK_planned_activities_1 FOREIGN KEY (activity_id) REFERENCES activity_type (activity_id);


ALTER TABLE salary ADD CONSTRAINT FK_salary_0 FOREIGN KEY (teacher_id) REFERENCES employee (teacher_id);


ALTER TABLE skill ADD CONSTRAINT FK_skill_0 FOREIGN KEY (skill_set_id) REFERENCES skill_set (skill_set_id);


ALTER TABLE allocation ADD CONSTRAINT FK_allocation_0 FOREIGN KEY (instance_id) REFERENCES course_instance (instance_id);
ALTER TABLE allocation ADD CONSTRAINT FK_allocation_1 FOREIGN KEY (teacher_id) REFERENCES employee (teacher_id);


