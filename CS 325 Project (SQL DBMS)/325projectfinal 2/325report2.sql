/*
Group Members: Dean Callahan, Jaztin Marasigan, Nathan Watson
CS 325 - Fall 2024
Date Last Modified: 12/10/24
*/

spool 325report2-results.txt


prompt Report 2:
-- Report 2: Ticket Resolution Status Report
-- Purpose: Summarize the ticket resolution status by category to identify open issues.
ttitle "Ticket Resolution Summary"
set linesize 60
COLUMN TOTAL_TICKETS FORMAT 9990
COLUMN OPEN_TICKETS FORMAT 9990
COLUMN RESOLVED_TICKETS FORMAT 9990
COLUMN PENDING_TICKETS FORMAT 9990
SELECT
        COUNT(*) AS TOTAL_TICKETS,
        SUM(CASE WHEN Status = 'In progress' THEN 1 ELSE 0 END) AS OPEN_TICKETS,
        SUM(CASE WHEN Status = 'Completed' THEN 1 ELSE 0 END) AS RESOLVED_TICKETS,
        SUM(CASE WHEN Status = 'Processing' THEN 1 ELSE 0 END) AS PENDING_TICKETS
FROM
        Ticket;

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

