create database sudent_courses;
use sudent_courses;

CREATE TABLE Students_1NF (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50)
);


CREATE TABLE Instructors_3NF (
    Instructor_ID INT PRIMARY KEY,
    Instructor_Name VARCHAR(50)
);



CREATE TABLE Courses_3NF (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Instructor_ID INT,
    FOREIGN KEY (Instructor_ID) REFERENCES Instructors_3NF(Instructor_ID)
);

CREATE TABLE StudentCourses_2NF (
    Student_ID INT,
    Course_ID INT,
    PRIMARY KEY (Student_ID, Course_ID),
    FOREIGN KEY (Student_ID) REFERENCES Students_1NF(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Courses_3NF(Course_ID)
);

show tables;