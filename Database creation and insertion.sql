-- Create the SchoolManagementSystem database
CREATE DATABASE SchoolManagementSystem;
GO

-- Use the SchoolManagementSystem database
USE SchoolManagementSystem;
GO

-- Create the Courses table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    LecturerName NVARCHAR(100) NOT NULL
);
GO

-- Create the Students table with a foreign key to the Courses table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    City NVARCHAR(100) NOT NULL,
    CourseID INT,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
GO

-- Insert sample data into the Courses table
INSERT INTO Courses (Name, LecturerName) VALUES
('Web Development', 'M.M. Herath'),
('Graphic Design', 'J.S.V. Piyasena'),
('Mobile App Development', 'K.K.S. Dias'),
('Java', 'U.H.S. Perera');
GO

-- Insert sample data into the Students table
INSERT INTO Students (Name, City, CourseID) VALUES
('Kasun Gamage', 'Kandy', 2),
('Daniel Sam', 'Jaffna', 3),
('Hansi Silva', 'Colombo', 1),
('Ranidu Heath', 'Matara', 3),
('Praneeth Wijesinghe', 'Kandy', 4),
('Nuwani Herath', 'Rathnapura', 1);
GO
