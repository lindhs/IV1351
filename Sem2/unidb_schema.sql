--tables

CREATE TABLE activity_type (
    activity_id      varchar(10)  NOT NULL,
    activity_type    varchar(10)  NOT NULL,
    factor           numeric(4,0) NOT NULL,
    CONSTRAINT pk_activity_type PRIMARY KEY (activity_id)
);

CREATE TABLE adress (
    adress_id   char(10)      NOT NULL,
    adress_type varchar(10),
    adress      varchar(35),
    CONSTRAINT pk_adress PRIMARY KEY (adress_id)
);

CREATE TABLE course_layout (
    course_code   varchar(10)  NOT NULL,
    valid_from    date         NOT NULL,
    course_name   varchar(35)  NOT NULL,
    hp            numeric(4,0) NOT NULL,
    min_students  integer      NOT NULL,
    max_students  integer      NOT NULL,
    valid_to      date,
    CONSTRAINT pk_course_layout PRIMARY KEY (course_code, valid_from)
);

CREATE TABLE course_instance (
    instance_id       varchar(10) NOT NULL,
    num_students      integer,
    period            integer     NOT NULL,
    year              integer     NOT NULL,
    course_code       varchar(10),
    course_valid_from date,
    CONSTRAINT pk_course_instance PRIMARY KEY (instance_id)
);

CREATE TABLE planned_activities (
    activity_id   varchar(10)  NOT NULL,
    instance_id   varchar(10)  NOT NULL,
    planned_hours numeric(6,0) NOT NULL,
    CONSTRAINT pk_planned_activities PRIMARY KEY (activity_id, instance_id)
);

CREATE TABLE department (
    dept_id    varchar(10) NOT NULL,
    dept_name  varchar(10) NOT NULL,
    manager_id varchar(10),
    CONSTRAINT pk_department PRIMARY KEY (dept_id)
);

CREATE TABLE email (
    email_id   char(10)    NOT NULL,
    email_type varchar(10),
    email      varchar(35),
    CONSTRAINT pk_email PRIMARY KEY (email_id)
);

CREATE TABLE person (
    person_id  varchar(10) NOT NULL,
    first_name varchar(10) NOT NULL,
    last_name  varchar(10) NOT NULL,
    CONSTRAINT pk_person PRIMARY KEY (person_id)
);

CREATE TABLE employee (
    teacher_id    varchar(10) NOT NULL,
    is_teacher    varchar(5)  NOT NULL,
    job_title     varchar(10),
    dept_id       varchar(10),
    person_id     varchar(10),
    supervisor_id varchar(10),
    CONSTRAINT pk_employee PRIMARY KEY (teacher_id)
);

CREATE TABLE person_adress (
    adress_id char(10)    NOT NULL,
    person_id varchar(10) NOT NULL,
    CONSTRAINT pk_person_adress PRIMARY KEY (adress_id, person_id)
);

CREATE TABLE person_email (
    email_id  char(10)    NOT NULL,
    person_id varchar(10) NOT NULL,
    CONSTRAINT pk_person_email PRIMARY KEY (email_id, person_id)
);

CREATE TABLE phone (
    phone_id  char(10)    NOT NULL,
    phone_num varchar(10),
    num_type  varchar(10),
    CONSTRAINT pk_phone PRIMARY KEY (phone_id)
);

CREATE TABLE person_phone (
    person_id varchar(10) NOT NULL,
    phone_id  char(10)    NOT NULL,
    CONSTRAINT pk_person_phone PRIMARY KEY (person_id, phone_id)
);

CREATE TABLE salary (
    valid_from date        NOT NULL,
    teacher_id varchar(10) NOT NULL,
    salary     integer     NOT NULL,
    valid_to   date,
    CONSTRAINT pk_salary PRIMARY KEY (valid_from, teacher_id)
);

CREATE TABLE skill (
    skill_id   varchar(10) NOT NULL,
    skill_type varchar(10) NOT NULL,
    CONSTRAINT pk_skill PRIMARY KEY (skill_id)
);

CREATE TABLE skill_set (
    teacher_id varchar(10) NOT NULL,
    skill_id   varchar(10) NOT NULL,
    CONSTRAINT pk_skill_set PRIMARY KEY (teacher_id, skill_id)
);

CREATE TABLE allocation (
    allocation_id varchar(10) NOT NULL,
    teacher_id    varchar(10) NOT NULL,
    activity_id   varchar(10) NOT NULL,
    instance_id   varchar(10) NOT NULL,
    CONSTRAINT pk_allocation PRIMARY KEY (allocation_id, teacher_id, activity_id, instance_id)
);

--IND

CREATE INDEX idx_allocation_instance_activity
    ON allocation (instance_id, activity_id, teacher_id);

CREATE INDEX idx_course_instance_year_period
    ON course_instance (year, period, instance_id);

CREATE INDEX idx_planned_activities_instance_activity
    ON planned_activities (instance_id, activity_id);

--FK

-- allocation
ALTER TABLE allocation
    ADD CONSTRAINT fk_allocation_0
    FOREIGN KEY (teacher_id)
    REFERENCES employee(teacher_id);

ALTER TABLE allocation
    ADD CONSTRAINT fk_allocation_1
    FOREIGN KEY (activity_id, instance_id)
    REFERENCES planned_activities(activity_id, instance_id);

-- course_instance
ALTER TABLE course_instance
    ADD CONSTRAINT fk_course_instance_0
    FOREIGN KEY (course_code, course_valid_from)
    REFERENCES course_layout(course_code, valid_from);

-- department - employee
ALTER TABLE department
    ADD CONSTRAINT fk_department_0
    FOREIGN KEY (manager_id)
    REFERENCES employee(teacher_id)
    DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE employee
    ADD CONSTRAINT fk_employee_0
    FOREIGN KEY (dept_id)
    REFERENCES department(dept_id)
    DEFERRABLE INITIALLY DEFERRED;

-- employee - person
ALTER TABLE employee
    ADD CONSTRAINT fk_employee_1
    FOREIGN KEY (person_id)
    REFERENCES person(person_id);

-- employee (supervisor)
ALTER TABLE employee
    ADD CONSTRAINT fk_employee_2
    FOREIGN KEY (supervisor_id)
    REFERENCES employee(teacher_id)
    DEFERRABLE INITIALLY DEFERRED;

-- person_adress
ALTER TABLE person_adress
    ADD CONSTRAINT fk_person_adress_0
    FOREIGN KEY (adress_id)
    REFERENCES adress(adress_id);

ALTER TABLE person_adress
    ADD CONSTRAINT fk_person_adress_1
    FOREIGN KEY (person_id)
    REFERENCES person(person_id);

-- person_email
ALTER TABLE person_email
    ADD CONSTRAINT fk_person_email_0
    FOREIGN KEY (email_id)
    REFERENCES email(email_id);

ALTER TABLE person_email
    ADD CONSTRAINT fk_person_email_1
    FOREIGN KEY (person_id)
    REFERENCES person(person_id);

-- person_phone
ALTER TABLE person_phone
    ADD CONSTRAINT fk_person_phone_0
    FOREIGN KEY (person_id)
    REFERENCES person(person_id);

ALTER TABLE person_phone
    ADD CONSTRAINT fk_person_phone_1
    FOREIGN KEY (phone_id)
    REFERENCES phone(phone_id);

-- salary
ALTER TABLE salary
    ADD CONSTRAINT fk_salary_0
    FOREIGN KEY (teacher_id)
    REFERENCES employee(teacher_id);

-- skill_set
ALTER TABLE skill_set
    ADD CONSTRAINT fk_skill_set_0
    FOREIGN KEY (teacher_id)
    REFERENCES employee(teacher_id);

ALTER TABLE skill_set
    ADD CONSTRAINT fk_skill_set_1
    FOREIGN KEY (skill_id)
    REFERENCES skill(skill_id);

-- planned_activities
ALTER TABLE planned_activities
    ADD CONSTRAINT fk_planned_activities_0
    FOREIGN KEY (activity_id)
    REFERENCES activity_type(activity_id);

ALTER TABLE planned_activities
    ADD CONSTRAINT fk_planned_activities_1
    FOREIGN KEY (instance_id)
    REFERENCES course_instance(instance_id);

