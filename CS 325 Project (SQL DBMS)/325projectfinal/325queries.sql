/*
Group Members: Dean Callahan, Jaztin Marasigan, Nathan Watson
CS 325 - Fall 2024
Date Last Modified: 12/10/24
*/ 

spool 325query-results.txt

SET LINESIZE 150

prompt Query 1:
prompt Purpose: Get the details of all employees along with the business they belong to

SELECT e.EMPL_ID, e.Empl_fname, e.Empl_lname, e.Empl_salary, b.Dba AS Business_Name
FROM Employee e
JOIN Business b ON e.Business_id = b.BUSINESS_ID;


prompt Query 2: 
prompt Purpose: Find the numbers of tickets each customer made

SELECT c.customer_id, COUNT(t.Ticket_id) AS Total_Tickets
FROM Customer c,Customer_Submit_Ticket t 
WHERE c.Customer_id = t.Customer_id
GROUP BY c.Customer_id;


prompt Query 3:
prompt Purpose: Identify the top 3 highest paid employees

SELECT EMPL_ID, Empl_fname, Empl_lname, Empl_salary
FROM
	(SELECT EMPL_ID, Empl_fname, Empl_lname, Empl_salary,
     	RANK() OVER (ORDER BY Empl_salary DESC) AS Rank
 	FROM Employee)
WHERE
	Rank <= 3;


prompt Query 4:
prompt Purpose: Get the average salary for both employee types

SELECT Empl_type, AVG(Empl_salary) AS Avg_Salary
FROM Employee
GROUP BY Empl_type;


prompt Query 5:
prompt Purpose: Find the technicians that have more than one tech certificate

SELECT t.EMPL_ID, t.Technician_id, t.Tickets_completed
FROM Technician t
WHERE
	(SELECT COUNT(*)
 	FROM Technician_Tech_Certifications
 	WHERE EMPL_ID = t.EMPL_ID) > 1;


prompt Query 6:
prompt Purpose: Find the technicians that have multiple tickets completed and multiple certificates

SELECT t.EMPL_ID, t.Technician_id, t.Tickets_completed,
   	COUNT(ttc.TECH_CERTIFICATIONS) AS Certification_Count
FROM Technician t
JOIN Technician_Tech_Certifications ttc ON t.EMPL_ID = ttc.EMPL_ID
WHERE t.Tickets_completed > 20
GROUP BY t.EMPL_ID, t.Technician_id, t.Tickets_completed
HAVING COUNT(ttc.TECH_CERTIFICATIONS) > 1
ORDER BY t.Tickets_completed DESC;


prompt Query 7:
prompt Purpose: Find the durations of the equipment rentals

SELECT er.RENTAL_ID, er.Date_rented,er.Date_returned,
	(Date_returned - Date_rented) AS Rental_Duration
FROM Equipment_Rental er
ORDER BY Rental_Duration DESC
FETCH FIRST 5 ROWS ONLY;


prompt Query 8:
prompt Purpose: Describe the employee shifts and sort to find the best employees

SELECT e.empl_id,e.empl_fname,e.empl_lname,total_hours_worked,shift_id
FROM Employee e, Shift s
WHERE e.empl_id=s.empl_id
ORDER BY total_hours_worked desc;


prompt Query 9: 
prompt Purpose: Find undervalued employees who meet the conditions of being hired less than 2 years ago, making less than the average salary, and who have worked at least 4 hours

SELECT e.empl_id, e.empl_fname,e.empl_lname,e.hiredate, e.empl_salary,total_hours_worked
FROM Employee e, Shift
WHERE e.empl_id=shift.empl_id AND total_hours_worked > 4 AND e.hiredate > ADD_MONTHS(sysdate,-24) AND e.empl_salary <
	(SELECT AVG(empl_salary)
	FROM Employee);


prompt Query 10:
prompt Purpose: Describe the max payments made by each customer type

SELECT MAX(amount_paid), cust_type
FROM payment, transaction, customer
WHERE payment.transaction_id=transaction.transaction_id AND transaction.customer_id=customer.customer_id
GROUP BY cust_type;


prompt Query 11:
prompt Purpose: Describe the condition and functions of the equipment in the inventory 

SELECT e.equipment_id, inventory_condition, service_function, contract_function
FROM inventory i, equipment e, equipment_service_function es, equipment_contract_function ec
WHERE i.inventory_id=e.inventory_id AND e.equipment_id=es.equipment_id AND e.equipment_id=ec.equipment_id;


prompt Query 12:
prompt Purpose: Get the information of all employees who worked overtime (shifts longer than 6 hours)

SELECT E.Empl_fname, E.Empl_lname, E.Empl_address
FROM Employee E
WHERE E.EMPL_ID IN (
	SELECT S.Empl_id
	FROM SHIFT S
	WHERE S.Total_hours_worked > 6);


prompt Query 13: 
prompt Purpose: Determine which managers get a bigger bonus based on if they worked an 8 hour shift

SELECT E.empl_id,empl_salary, manager_bonus
FROM Employee E, manager
WHERE E.empl_id=manager.empl_id AND E.Empl_type = 'Manager'
AND E.EMPL_ID IN (
	SELECT S.Empl_id
	FROM SHIFT S
	WHERE S.Total_hours_worked = 8);


prompt Query 14: 
prompt Purpose: Get the number of equipment rentals for each technician

select e.empl_id, count(tr.empl_id)
from technicians_rents_from_equipment_rental tr,employee e
where tr.empl_id=e.empl_id
group by e.empl_id;


prompt Query 15:
prompt Purpose: Find dedicated technicians hired after 2021 who worked full 8-hour shifts

SELECT E.Empl_fname, E.Empl_lname, E.Hiredate
FROM Employee E
WHERE E.Empl_type = 'Technician' AND E.Hiredate > TO_DATE('2021-01-01', 'YYYY-MM-DD') 
AND E.EMPL_ID IN (
	SELECT S.Empl_id
	FROM SHIFT S
	WHERE S.Total_hours_worked = 8);


prompt Query 16:
prompt Purpose: Get the contact information for all employees

SELECT e.empl_id, empl_fname, empl_lname, empl_address, empl_email, empl_phone
FROM employee e, empl_email ee, empl_phone ep
WHERE e.empl_id=ee.empl_id AND e.empl_id=ep.empl_id;


prompt Query 17:
prompt Purpose: Find the most popular services and their cost

SELECT st.service_type_id,service_name, COUNT(service_name),service_cost 
FROM service_type st,service_is_service_type sist
where st.service_type_id=sist.service_type_id
GROUP BY st.service_type_id, service_name,service_cost
ORDER BY count(service_name),service_cost DESC;


prompt Query 18:
prompt Purpose: Find the duration it takes for services to be completed

SELECT s.service_id, service_end_date - service_start_date "duration", service_name, service_cost
FROM service s, service_type st, service_is_service_type sist
WHERE s.service_id = sist.service_id AND sist.service_type_id = st.service_type_id
order by "duration" desc, service_cost;


prompt Query 19:
prompt Purpose: Compare all the maintenance contracts cost with the average maintenance contract cost

SELECT mc.contract_id, contract_name, contract_cost, 
   contract_cost -
		(SELECT AVG(contract_cost)
		FROM contract_type) AS "contract_cost_difference"
FROM maintenance_contract mc, contract_type ct, contract_is_contract_type cict 
WHERE mc.contract_id=cict.contract_id AND cict.contract_type_id=ct.contract_type_id
ORDER By "contract_cost_difference" DESC;


prompt Query 20:
prompt Purpose: Find the total number of customers and the total numbers for each customer type

SELECT COUNT(ic.Customer_ID) "# of Individual Clients", COUNT(sb.customer_id) "# of Small Businesses", COUNT(c.customer_id) "Total Customer #"
FROM Customer c, Individual_Client ic, Small_Business sb
WHERE c.customer_id=ic.customer_id AND c.customer_id=sb.customer_id;


prompt Query 21:
prompt Purpose: Determine customer unpaid payments

SELECT t.customer_id, amount_due, amount_paid, amount_paid-amount_due "remaining dues"
FROM transaction t, payment p
WHERE t.transaction_id=p.transaction_id AND amount_paid < amount_due;


prompt Query 22: 
prompt Find which employees worked multiple shifts

SELECT s.empl_id, empl_fname,empl_lname, COUNT(s.empl_id) as "# of Shifts"
FROM shift s, employee e
WHERE s.empl_id = e.empl_id
GROUP BY s.empl_id, empl_fname, empl_lname
HAVING COUNT(s.empl_id) > 1
ORDER BY "# of Shifts" desc;


prompt Query 23:
prompt Purpose: Calculate the total revenue for our business (Humboldt Haven IT)

SELECT b.business_id, dba, SUM(amount_paid) as "Total Revenue"
FROM business b, payment p
WHERE b.business_id = p.business_id AND dba = 'Humboldt Haven IT'
GROUP BY b.business_id, dba;


prompt Query 24:
prompt Purpose: Identify all employees that have a salary below the average for their job type

SELECT empl_id, empl_fname, empl_lname, empl_salary, empl_type
FROM employee e1
WHERE empl_salary <
		(SELECT AVG(empl_salary)
		FROM employee e2
		WHERE e1.empl_type=e2.empl_type);


set linesize 30
spool off
