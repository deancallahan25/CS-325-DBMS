/*
Group Members: Dean Callahan, Jaztin Marasigan, Nathan Watson
CS 325 - Fall 2024
Date Last Modified: 12/10/24
*/

spool 325report4-results.txt

prompt Report 4:
-- Report 4: Customer Contact Information
-- Purpose: Conveniently displays individual client’s phone numbers and email addresses ordered alphabetically by last name.

ttitle "Customer Contact Information"
SET LINESIZE 75
SET PAGESIZE 50
set feedback off
COLUMN "Customer Name" FORMAT A17
COLUMN "Phone Number" FORMAT A15
COLUMN "Email Address" FORMAT A35

SELECT
i.client_fname || ' ' || i.client_lname "Customer Name",
p.CUST_PHONE "Phone Number",
e.CUST_EMAIL AS "Email Address"
FROM Individual_Client i
JOIN
Cust_Phone p ON i.CUSTOMER_ID = p.CUST_ID
JOIN
Cust_Email e ON i.CUSTOMER_ID = e.CUST_ID
ORDER BY i.client_lname ASC,i.client_fname ASC;


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
