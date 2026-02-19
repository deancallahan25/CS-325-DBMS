/*
Group Members: Dean Callahan, Jaztin Marasigan, Nathan Watson
CS 325 - Fall 2024
Date Last Modified: 12/10/24
*/

spool 325report3-results.txt

prompt Report 3:
-- Report 3: Average Salary by Employee Type
-- Purpose: Display the average salary by employee type in a clear and readable format.
ttitle "Average Salary by Employee Type"
set linesize 35
COLUMN AVG_SALARY FORMAT $999,990.00
SELECT
        Empl_type AS "Employee Type",
        AVG(Empl_salary) AS AVG_SALARY
FROM
        Employee
GROUP BY
        Empl_type
ORDER BY
        AVG_SALARY DESC;

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
