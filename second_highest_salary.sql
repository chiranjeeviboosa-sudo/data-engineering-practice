SELECT MAX(salary) AS second_highest_salary
FROM employee
WHERE salary < (SELECT MAX(salary) FROM employee);

SELECT 
    student_id,
    name,
    marks,
    RANK() OVER (ORDER BY marks DESC) AS rank
FROM 
    students;
