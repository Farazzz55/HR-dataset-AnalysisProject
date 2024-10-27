
-- the top 10 employees in the company based on salary
SELECT Top 10 EmployeeID, FirstName, LastName ,Salary
FROM dbo.Employee
ORDER BY Salary DESC;

--Employee Satisfaction vs. Performance:
SELECT 
    E.EmployeeID, 
    E.FirstName, 
    E.LastName, 
    JobSat.SatisfactionLevel AS JobSatisfactionLevel,
    EnvSat.SatisfactionLevel AS EnvironmentSatisfactionLevel,
    RelSat.SatisfactionLevel AS RelationshipSatisfactionLevel,
    MgrRating.RatingLevel AS ManagerRatingLevel,
    SelfRating.RatingLevel AS SelfRatingLevel
FROM dbo.Employee E
JOIN dbo.PerformanceRating P ON E.EmployeeID = P.EmployeeID
-- Join for Job Satisfaction
LEFT JOIN dbo.SatisfactionLevel JobSat ON P.JobSatisfaction = JobSat.SatisfactionID
-- Join for Environment Satisfaction
LEFT JOIN dbo.SatisfactionLevel EnvSat ON P.EnvironmentSatisfaction = EnvSat.SatisfactionID
-- Join for Relationship Satisfaction
LEFT JOIN dbo.SatisfactionLevel RelSat ON P.RelationshipSatisfaction = RelSat.SatisfactionID
-- Join for Manager Rating (Treating ManagerRating as a reference to the RatingLevel table)
LEFT JOIN dbo.RatingLevel MgrRating ON P.ManagerRating = MgrRating.RatingID
-- Join for Self Rating (Treating SelfRating as a reference to the RatingLevel table)
LEFT JOIN dbo.RatingLevel SelfRating ON P.SelfRating = SelfRating.RatingID;

--how the education level of employees affects their performance ratings.
SELECT E.EmployeeID, E.FirstName,E.LastName, Ed.EducationLevel, P.ManagerRating, P.SelfRating
FROM dbo.Employee E
JOIN dbo.Education Ed ON E.Education = Ed.EducationLevelID
JOIN dbo.PerformanceRating P ON E.EmployeeID = P.EmployeeID
ORDER BY Ed.EducationLevel DESC;

--how an employee's salary affects their satisfaction level.
SELECT 
    E.EmployeeID, 
    E.FirstName, 
    E.LastName, 
    E.Salary,  -- Assuming Salary is a column in the Employee table
    JobSat.SatisfactionLevel AS JobSatisfactionLevel,
    EnvSat.SatisfactionLevel AS EnvironmentSatisfactionLevel,
    RelSat.SatisfactionLevel AS RelationshipSatisfactionLevel
FROM dbo.Employee E
JOIN dbo.PerformanceRating P ON E.EmployeeID = P.EmployeeID
-- Join for Job Satisfaction
LEFT JOIN dbo.SatisfactionLevel JobSat ON P.JobSatisfaction = JobSat.SatisfactionID
-- Join for Environment Satisfaction
LEFT JOIN dbo.SatisfactionLevel EnvSat ON P.EnvironmentSatisfaction = EnvSat.SatisfactionID
-- Join for Relationship Satisfaction
LEFT JOIN dbo.SatisfactionLevel RelSat ON P.RelationshipSatisfaction = RelSat.SatisfactionID;

--Years of Experience vs. Performance 
SELECT 
    E.EmployeeID, 
    E.FirstName, 
	E.LastName,
    E.YearsInMostRecentRole,
    E.YearsAtCompany, 
    P.ManagerRating, 
    P.SelfRating
FROM dbo.Employee E
JOIN dbo.PerformanceRating P ON E.EmployeeID = P.EmployeeID
WHERE E.YearsInMostRecentRole IS NOT NULL 
  AND E.YearsAtCompany IS NOT NULL
ORDER BY E.YearsAtCompany DESC;

-- the avg salary for each department 
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employee
GROUP BY Department
ORDER BY AvgSalary DESC;

--the avg salary for each job role
SELECT JobRole, AVG(Salary) AS AvgSalary
FROM Employee
GROUP BY JobRole
ORDER BY AvgSalary DESC;

--which departments have the highest attrition rates
SELECT E.Department, COUNT(*) AS TotalEmployees, 
       SUM(CASE WHEN E.Attrition = 'Yes' THEN 1 ELSE 0 END) AS EmployeesLeft
FROM Employee E
GROUP BY E.Department
ORDER BY EmployeesLeft DESC;

-- the number of employees at each education level
SELECT ED.EducationLevel, COUNT(*) AS NumEmployees
FROM Employee E
JOIN Education ED ON E.Education = ED.EducationLevelID
GROUP BY ED.EducationLevel
ORDER BY NumEmployees DESC;





