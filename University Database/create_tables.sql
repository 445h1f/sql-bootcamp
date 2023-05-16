-- custom domain for rating with check of 1 - 5 as value
CREATE DOMAIN Rating SMALLINT
    CHECK (VALUE > 0 AND VALUE <=5);
    
-- custom data type for feedback
CREATE TYPE Feedback AS (
    student_id UUID,
    rating Rating,
    feedback TEXT
);

-- creating student table
CREATE TABLE Student (
    student_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL
);

-- creating subject table
CREATE TABLE Subject (
    subject_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    subject TEXT NOT NULL,
    description TEXT NOT NULL
);


-- creating teacher table
CREATE TABLE Teacher (
    teacher_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
--     email varchar(255) not null,
    date_of_birth DATE NOT NULL
);


-- creating table for course
CREATE TABLE Course (
    course_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    "name" TEXT NOT NULL,
    description TEXT NOT NULL,
    subject_id UUID REFERENCES Subject(subject_id),
    teacher_id UUID REFERENCES Teacher(teacher_id),
    feedback Feedback[]
);


-- creating table for enrollment
CREATE TABLE Enrollment (
    course_id UUID REFERENCES Course(course_id),
    student_id UUID REFERENCES Student(student_id),
    enrollment_date DATE NOT NULL,
    CONSTRAINT pk_enrollment PRIMARY KEY (course_id, student_id)
);