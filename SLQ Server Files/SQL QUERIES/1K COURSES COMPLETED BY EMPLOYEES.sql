SELECT EmployeeFirstName, EmployeeLastName, CompletionDate,
(
SELECT CourseDescription 
FROM COURSE_T
WHERE COURSE_T.CourseID = EMPLOYEE_COURSE_T.CourseID
) as 'Course Name'
FROM  EMPLOYEE_T 
	 JOIN EMPLOYEE_COURSE_T
		ON EMPLOYEE_T.EmployeeID = EMPLOYEE_COURSE_T.EmployeeID
ORDER BY EmployeeFirstName, CompletionDate
