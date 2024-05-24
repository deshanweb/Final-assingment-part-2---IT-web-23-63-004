SELECT s.StudentID, s.Name, s.City, s.CourseID, c.Name AS CourseName, c.LecturerName
FROM Students s
LEFT JOIN Courses c ON s.CourseID = c.CourseID;
