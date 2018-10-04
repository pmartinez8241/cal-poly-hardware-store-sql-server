SELECT EmployeeFirstName, EmployeeLastName, EmployeeID, EmployeeJobTitle
FROM EMPLOYEE_T
WHERE EMPLOYEE_T.EmployeeID =(
SELECT ManagerID
FROM EMPLOYEE_T
WHERE EmployeeFirstName = 'Sam'
) 

