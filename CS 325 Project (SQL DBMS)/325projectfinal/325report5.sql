/*
Group Members: Dean Callahan, Jaztin Marasigan, Nathan Watson
CS 325 - Fall 2024
Date Last Modified: 12/10/24
*/

spool 325report5-results.txt

prompt Report 5:
-- Report 5: Sales Performance Report
-- Purpose: Displays the sum of amount_due as total revenue and amount paid as revenue collected, and compares these values to form an outstanding balance

ttitle "Sales Performance Report"

SET LINESIZE 75;
SET PAGESIZE 20;
COLUMN Total_Revenue FORMAT $99999.99;
COLUMN Total_Payments FORMAT $99999.99;
COLUMN Outstanding_Balance FORMAT $99999.99;
COLUMN Total_Transactions FORMAT $99999.99;

SELECT
SUM(t.Amount_due) Total_Revenue,
SUM(p.Amount_paid) Total_Payments,
SUM(t.Amount_due)-SUM(p.Amount_paid) Outstanding_Balance,
COUNT(DISTINCT t.TRANSACTION_ID) Total_Transactions
FROM
    Transaction t
JOIN
    Payment p ON t.TRANSACTION_ID = p.Transaction_id;

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
