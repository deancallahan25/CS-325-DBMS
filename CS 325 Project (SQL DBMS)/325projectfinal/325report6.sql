/*
Group Members: Dean Callahan, Jaztin Marasigan, Nathan Watson
CS 325 - Fall 2024
Date Last Modified: 12/10/24
*/

spool 325report6-results.txt

prompt Report 6:
-- Report 6: Small Business Contract Summary Report
-- Purpose: This report summarizes maintenance contracts for small businesses, showing the total cost of each contract and the contract type.

ttitle "Small Business Contract Summary Report"

SET LINESIZE 125;
SET PAGESIZE 22;
set feedback off
COLUMN "Business Name" FORMAT A22;
COLUMN "Contract ID" FORMAT 9999999;
COLUMN "Contract Start Date" FORMAT A20;
COLUMN "Contract End Date" FORMAT A20;
COLUMN "Contract Type" FORMAT A20;
COLUMN "Contract Cost" FORMAT $9999.99;

SELECT
sb.dba "Business Name",
mc.CONTRACT_ID "Contract ID", TO_CHAR(mc.Contract_start_date, 'MM/DD/YYYY') "Contract Start Date",
TO_CHAR(mc.Contract_end_date, 'MM/DD/YYYY') "Contract End Date",
ct.Contract_name "Contract Type",
ct.Contract_cost "Contract Cost"
FROM
Maintenance_Contract mc
JOIN
Small_Business sb ON mc.Customer_id = sb.Customer_id JOIN
Contract_Is_Contract_Type ci ON mc.CONTRACT_ID = ci.CONTRACT_ID
JOIN
Contract_Type ct ON ci.CONTRACT_TYPE_ID = ct.CONTRACT_TYPE_ID
ORDER BY sb.dba, mc.Contract_start_date;


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
