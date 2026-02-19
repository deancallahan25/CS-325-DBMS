/*
Group Members: Dean Callahan, Jaztin Marasigan, Nathan Watson
CS 325 - Fall 2024
Date Last Modified: 12/10/24
*/

spool 325report1-results.txt

prompt Report 1:
-- Report 1: List of Employees with their Full Name and Salary, Ordered by Salary (Highest First)
-- Purpose: Show all employees, their full names, and salaries, with high earners appearing first.

SET PAGESIZE 50
COLUMN FULL_NAME FORMAT A18
COLUMN SALARY FORMAT $999,990.00
COLUMN AVG_SALARY FORMAT $999,990.00
ttitle "Employee Salaries Report"
set linesize 50
set feedback off
set newpage 2
BREAK ON 'Employee Type' SKIP 1
COMPUTE SUM OF Empl_salary ON “Employee Type”
SELECT
        Empl_type AS "Employee Type",
        Empl_fname || ' ' || Empl_lname AS FULL_NAME,
        Empl_salary AS SALARY
FROM
        Employee
ORDER BY
        Empl_type, Empl_salary DESC;


--clean up
clear breaks
clear columns
clear computes
set space 1
set feedback 6
set pagesize 14
set linesize 80
set newpage 1
set heading on
ttitle off
btitle off

spool off

