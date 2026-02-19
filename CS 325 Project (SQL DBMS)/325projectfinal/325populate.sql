-- Dean Callahan, Jaztin Marasigan, Nathan Watson
-- CS 325 - Fall 2024 
-- Last Modified: 12/02/2024

-- Delete statements (child tables first)
DELETE FROM Technicians_Rents_From_Equipment_Rental;
DELETE FROM Technicians_Resolve_Ticket;
DELETE FROM Customer_Submit_Ticket;
DELETE FROM Contract_Is_Contract_Type;
DELETE FROM Service_Is_Service_Type;
DELETE FROM Technician_Tech_Certifications;
DELETE FROM Manager;
DELETE FROM Shift;
DELETE FROM Technician;
DELETE FROM Empl_Email;
DELETE FROM Empl_Phone;
DELETE FROM Equipment_Service_Function;
DELETE FROM Equipment_Contract_Function;
DELETE FROM Equipment;
DELETE FROM Equipment_Rental;
DELETE FROM Payment;
DELETE FROM Transaction;
DELETE FROM Service;
DELETE FROM Maintenance_Contract;
DELETE FROM Service_Type;
DELETE FROM Contract_Type;
DELETE FROM Ticket;
DELETE FROM Small_Business;
DELETE FROM Individual_Client;
DELETE FROM Cust_Email;
DELETE FROM Cust_Phone;
DELETE FROM Customer;
DELETE FROM Work_Schedule;
DELETE FROM Inventory;
DELETE FROM Employee;
DELETE FROM Business;

prompt Inserting into Business table
INSERT INTO Business (BUSINESS_ID, Tax_id, Dba, Address, Hours_operation) VALUES
(100001, 987654321, 'Humboldt Haven IT', '123 Innovation Way, Arcata, CA', 'Mon-Fri 9am-5pm');
INSERT INTO Business (BUSINESS_ID, Tax_id, Dba, Address, Hours_operation) VALUES
(100007, 543210987, 'CyberShield Security Solutions', '789 Firewall Street, Washington D.C.', 'Mon-Fri 8am-5pm');
INSERT INTO Business (BUSINESS_ID, Tax_id, Dba, Address, Hours_operation) VALUES
(100008, 654321098, 'EcoTech Renewable Energy', '456 Solar Boulevard, San Francisco, CA', 'Mon-Sat 9am-6pm');
INSERT INTO Business (BUSINESS_ID, Tax_id, Dba, Address, Hours_operation) VALUES
(100009, 765432109, 'MedTech Innovations', '123 Healthcare Drive, Boston, MA', '24/7 Support');
INSERT INTO Business (BUSINESS_ID, Tax_id, Dba, Address, Hours_operation) VALUES
(100010, 876543210, 'FinanceGuard Consulting', '901 Wall Street, New York, NY', 'Mon-Fri 7am-6pm');
INSERT INTO Business (BUSINESS_ID, Tax_id, Dba, Address, Hours_operation) VALUES
(100011, 987654321, 'AgriSmart Agricultural Tech', '234 Farmstead Lane, Des Moines, IA', 'Mon-Fri 8am-5pm');
INSERT INTO Business (BUSINESS_ID, Tax_id, Dba, Address, Hours_operation) VALUES
(100012, 098765432, 'QuantumLeap Computing', '567 Circuit Road, Research Triangle, NC', 'Mon-Sat 9am-7pm');
INSERT INTO Business (BUSINESS_ID, Tax_id, Dba, Address, Hours_operation) VALUES
(100013, 210987654, 'GlobalLogistics Solutions', '345 Shipping Avenue, Houston, TX', '24/7 Operations');
INSERT INTO Business (BUSINESS_ID, Tax_id, Dba, Address, Hours_operation) VALUES
(100014, 321098765, 'EduTech Learning Systems', '678 Campus Court, Chicago, IL', 'Mon-Fri 9am-5pm');
INSERT INTO Business (BUSINESS_ID, Tax_id, Dba, Address, Hours_operation) VALUES
(100015, 432109876, 'AeroSpace Innovations', '890 Runway Street, Seattle, WA', 'Mon-Fri 8am-4pm');
INSERT INTO Business (BUSINESS_ID, Tax_id, Dba, Address, Hours_operation) VALUES
(100016, 543210987, 'SmartHome Technologies', '234 Innovation Plaza, Austin, TX', 'Mon-Sat 9am-6pm');
INSERT INTO Business (BUSINESS_ID, Tax_id, Dba, Address, Hours_operation) VALUES
(100017, 654321098, 'CleanWater Environmental', '567 Sustainability Road, Portland, OR', 'Mon-Fri 7am-4pm');
INSERT INTO Business (BUSINESS_ID, Tax_id, Dba, Address, Hours_operation) VALUES
(100018, 765432109, 'CulinaryTech Solutions', '789 Kitchen Innovations Drive, San Jose, CA', 'Mon-Fri 8am-5pm');
INSERT INTO Business (BUSINESS_ID, Tax_id, Dba, Address, Hours_operation) VALUES
(100019, 876543210, 'UrbanTransit Systems', '456 Metro Boulevard, San Francisco, CA', '24/7 Support');
INSERT INTO Business (BUSINESS_ID, Tax_id, Dba, Address, Hours_operation) VALUES
(100020, 987654321, 'RoboTech Automation', '123 Robotics Lane, Pittsburgh, PA', 'Mon-Fri 9am-6pm');


prompt Inserting into Employee table
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(200001, 75000.00, 'Michael', 'Rodriguez', '12 Oak Street, San Jose, CA', 100001, 'Manager', TO_DATE('2022-01-15', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(200002, 90000.00, 'Nathan', 'Watson', '78 Maple Drive, Austin, TX', 100001, 'Manager', TO_DATE('2020-03-10', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(200003, 95000.00, 'Jaztin', 'Marasigan', '67 Cedar Lane, New York, NY', 100001, 'Manager', TO_DATE('2019-11-05', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(200004, 100000.00, 'Dean', 'Callahan', '78 Magnolia Way, New York, NY', 100001, 'Manager', TO_DATE('2019-06-30', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(200005, 82000.00, 'Sarah', 'Chen', '45 Pine Avenue, Seattle, WA', 100001, 'Technician', TO_DATE('2021-07-01', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(200006, 65000.00, 'Emily', 'Thompson', '34 Elm Road, Denver, CO', 100001, 'Technician', TO_DATE('2023-02-20', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(200007, 70000.00, 'Priya', 'Gupta', '89 Birch Court, San Francisco, CA', 100001, 'Technician', TO_DATE('2022-05-12', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(200008, 80000.00, 'Alex', 'Wong', '23 Redwood Street, Portland, OR', 100001, 'Technician', TO_DATE('2021-09-18', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(200009, 85000.00, 'Maria', 'Garcia', '56 Sequoia Drive, Austin, TX', 100001, 'Technician', TO_DATE('2020-08-25', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(200010, 62000.00, 'Ryan', 'Kim', '45 Spruce Boulevard, Boulder, CO', 100001, 'Technician', TO_DATE('2023-01-10', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(200011, 78000.00, 'Aisha', 'Malik', '234 Techpark Lane, Chicago, IL', 100001, 'Technician', TO_DATE('2022-04-01', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(200012, 85000.00, 'Carlos', 'Hernandez', '567 Innovation Street, Miami, FL', 100001, 'Technician', TO_DATE('2021-11-15', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(200013, 72000.00, 'Lily', 'Zhang', '890 Startup Boulevard, San Diego, CA', 100001, 'Technician', TO_DATE('2023-01-20', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(200014, 92000.00, 'Mohammed', 'Al-Sayed', '123 Tech Crescent, Boston, MA', 100001, 'Technician', TO_DATE('2020-07-07', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(200015, 68000.00, 'Elena', 'Ivanova', '456 Innovation Avenue, Philadelphia, PA', 100001, 'Technician', TO_DATE('2022-09-01', 'YYYY-MM-DD'));


INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(2000001, 80000.00, 'Alex', 'Jobs', '23 Redwood Street, Portland, OR', 100001, 'Manager', TO_DATE('2021-09-18', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(2000002, 80000.00, 'Ken', 'Cobble', '23 Redwood Street, Portland, OR', 100001, 'Manager', TO_DATE('2021-09-18', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(2000003, 80000.00, 'Olivia', 'Mason', '23 Redwood Street, Portland, OR', 100001, 'Manager', TO_DATE('2021-09-18', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(2000004, 80000.00, 'Steve', 'Smith', '23 Redwood Street, Portland, OR', 100001, 'Manager', TO_DATE('2021-09-18', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(2000005, 80000.00, 'George', 'Doe', '23 Redwood Street, Portland, OR', 100001, 'Manager', TO_DATE('2021-09-18', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(2000006, 80000.00, 'Alice', 'Jenkins', '23 Redwood Street, Portland, OR', 100001, 'Technician', TO_DATE('2021-09-18', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(2000007, 60000.00, 'Alex', 'Jackson', '23 Redwood Street, Portland, OR', 100001, 'Technician', TO_DATE('2021-09-18', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(2000008, 60000.00, 'Steve', 'West', '23 Redwood Street, Portland, OR', 100001, 'Technician', TO_DATE('2021-09-18', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(2000009, 70000.00, 'Jamie', 'East', '23 Redwood Street, Portland, OR', 100001, 'Technician', TO_DATE('2021-09-18', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(2000010, 60000.00, 'Jesse', 'North', '23 Redwood Street, Portland, OR', 100001, 'Manager', TO_DATE('2021-09-18', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(2000011, 70000.00, 'Micah', 'South', '23 Redwood Street, Portland, OR', 100001, 'Manager', TO_DATE('2021-09-18', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(2000016, 60000.00, 'Sarah', 'Wang', '23 Redwood Street, Portland, OR', 100001, 'Technician', TO_DATE('2021-09-18', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(2000017, 50000.00, 'Courtney', 'Lybard', '23 Redwood Street, Portland, OR', 100001, 'Technician', TO_DATE('2021-09-18', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(2000018, 20000.00, 'Jane', 'Thawne', '23 Redwood Street, Portland, OR', 100001, 'Technician', TO_DATE('2021-09-18', 'YYYY-MM-DD'));
INSERT INTO Employee (EMPL_ID, Empl_salary, Empl_fname, Empl_lname, Empl_address, Business_id, Empl_type, Hiredate) VALUES
(2000019, 10000.00, 'James', 'Allen', '23 Redwood Street, Portland, OR', 100001, 'Technician', TO_DATE('2021-09-18', 'YYYY-MM-DD'));


prompt Inserting into Inventory table
INSERT INTO Inventory (INVENTORY_ID,Item_count,Inventory_condition,Business_id) VALUES
(110001,45, 'Fair',100001);
INSERT INTO Inventory (INVENTORY_ID, Item_count, Inventory_condition, Business_id) VALUES
(110002,50, 'Fair',100007);
INSERT INTO Inventory (INVENTORY_ID, Item_count, Inventory_condition, Business_id) VALUES
(110003,75, 'Good',100008);
INSERT INTO Inventory (INVENTORY_ID, Item_count, Inventory_condition, Business_id) VALUES
(110004,40, 'Excellent',100009);
INSERT INTO Inventory (INVENTORY_ID, Item_count, Inventory_condition, Business_id) VALUES
(110005,60, 'Like New',100010);
INSERT INTO Inventory (INVENTORY_ID, Item_count, Inventory_condition, Business_id) VALUES
(110006,200, 'Good',100011);
INSERT INTO Inventory (INVENTORY_ID, Item_count, Inventory_condition, Business_id) VALUES
(110007,35, 'New',100012);
INSERT INTO Inventory (INVENTORY_ID, Item_count, Inventory_condition, Business_id) VALUES
(110008,80, 'Fair',100013);
INSERT INTO Inventory (INVENTORY_ID, Item_count, Inventory_condition, Business_id) VALUES
(110009,55, 'Excellent',100014);
INSERT INTO Inventory (INVENTORY_ID, Item_count, Inventory_condition, Business_id) VALUES
(110010,45, 'Good',100015);
INSERT INTO Inventory (INVENTORY_ID, Item_count, Inventory_condition, Business_id) VALUES
(110011,100, 'Like New',100016);
INSERT INTO Inventory (INVENTORY_ID, Item_count, Inventory_condition, Business_id) VALUES
(110012,30, 'New',100017);
INSERT INTO Inventory (INVENTORY_ID, Item_count, Inventory_condition, Business_id) VALUES
(110013,65, 'Fair',100018);
INSERT INTO Inventory (INVENTORY_ID, Item_count, Inventory_condition, Business_id) VALUES
(110014,90, 'Good',100019);
INSERT INTO Inventory (INVENTORY_ID, Item_count, Inventory_condition, Business_id) VALUES
(110015,50, 'Excellent',100020);


prompt Inserting into Work_Schedule table
INSERT INTO Work_Schedule (SCHEDULE_ID,Hours_operation, Date_scheduled, Business_id) VALUES
(120001,'9am-5pm','10-SEP-2020',100001);
INSERT INTO Work_Schedule (SCHEDULE_ID, Hours_operation, Date_scheduled, Business_id) VALUES 
(120002, '10am-6pm', '11-SEP-2020', 100001);
INSERT INTO Work_Schedule (SCHEDULE_ID, Hours_operation, Date_scheduled, Business_id) VALUES 
(120003, '8am-4pm', '12-SEP-2020', 100001);
INSERT INTO Work_Schedule (SCHEDULE_ID, Hours_operation, Date_scheduled, Business_id) VALUES 
(120004, '7am-3pm', '13-SEP-2020', 100001);
INSERT INTO Work_Schedule (SCHEDULE_ID, Hours_operation, Date_scheduled, Business_id) VALUES 
(120005, '11am-7pm', '14-SEP-2020', 100001);
INSERT INTO Work_Schedule (SCHEDULE_ID, Hours_operation, Date_scheduled, Business_id) VALUES 
(120006, '9am-5pm', '15-SEP-2020', 100001);
INSERT INTO Work_Schedule (SCHEDULE_ID, Hours_operation, Date_scheduled, Business_id) VALUES 
(120007, '6am-2pm', '16-SEP-2020', 100001);
INSERT INTO Work_Schedule (SCHEDULE_ID, Hours_operation, Date_scheduled, Business_id) VALUES 
(120008, '10am-6pm', '17-SEP-2020', 100001);
INSERT INTO Work_Schedule (SCHEDULE_ID, Hours_operation, Date_scheduled, Business_id) VALUES 
(120009, '8am-4pm', '18-SEP-2020', 100001);
INSERT INTO Work_Schedule (SCHEDULE_ID, Hours_operation, Date_scheduled, Business_id) VALUES 
(120010, '7am-3pm', '19-SEP-2020', 100001);
INSERT INTO Work_Schedule (SCHEDULE_ID, Hours_operation, Date_scheduled, Business_id) VALUES 
(120011, '12pm-8pm', '20-SEP-2020', 100001);
INSERT INTO Work_Schedule (SCHEDULE_ID, Hours_operation, Date_scheduled, Business_id) VALUES 
(120012, '11am-7pm', '21-SEP-2020', 100001);
INSERT INTO Work_Schedule (SCHEDULE_ID, Hours_operation, Date_scheduled, Business_id) VALUES 
(120013, '9am-5pm', '22-SEP-2020', 100001);
INSERT INTO Work_Schedule (SCHEDULE_ID, Hours_operation, Date_scheduled, Business_id) VALUES 
(120014, '8am-4pm', '23-SEP-2020', 100001);
INSERT INTO Work_Schedule (SCHEDULE_ID, Hours_operation, Date_scheduled, Business_id) VALUES 
(120015, '7am-3pm', '24-SEP-2020', 100001);


prompt Inserting into Empl_Email table
INSERT INTO Empl_Email (EMPL_ID, EMPL_EMAIL) VALUES
(200001, 'michael.rodriguez@tech.com');
INSERT INTO Empl_Email (EMPL_ID, EMPL_EMAIL) VALUES
(200002, 'nathan.watson@dataguard.com');
INSERT INTO Empl_Email (EMPL_ID, EMPL_EMAIL) VALUES
(200003, 'jaztin.marasigan@globalit.com');
INSERT INTO Empl_Email (EMPL_ID, EMPL_EMAIL) VALUES
(200003, 'j.marasigan@google.com');
INSERT INTO Empl_Email (EMPL_ID, EMPL_EMAIL) VALUES
(200004, 'dean.callahan@globalit.com');
INSERT INTO Empl_Email (EMPL_ID, EMPL_EMAIL) VALUES
(200005, 'sarah.chen@cloudnet.com');
INSERT INTO Empl_Email (EMPL_ID, EMPL_EMAIL) VALUES
(200006, 'emily.thompson@greentech.com');
INSERT INTO Empl_Email (EMPL_ID, EMPL_EMAIL) VALUES
(200006, 'em.thompson@gmail.com');
INSERT INTO Empl_Email (EMPL_ID, EMPL_EMAIL) VALUES
(200006, 'em.thompson@humboldt.edu');
INSERT INTO Empl_Email (EMPL_ID, EMPL_EMAIL) VALUES
(200007, 'priya.gupta@tech.com');
INSERT INTO Empl_Email (EMPL_ID, EMPL_EMAIL) VALUES
(200008, 'alex.wong@cloudnet.com');
INSERT INTO Empl_Email (EMPL_ID, EMPL_EMAIL) VALUES
(200009, 'maria.garcia@dataguard.com');
INSERT INTO Empl_Email (EMPL_ID, EMPL_EMAIL) VALUES
(200010, 'ryan.kim@greentech.com');
INSERT INTO Empl_Email (EMPL_ID, EMPL_EMAIL) VALUES
(200011, 'aisha.malik@innovatech.com');
INSERT INTO Empl_Email (EMPL_ID, EMPL_EMAIL) VALUES
(200012, 'carlos.hernandez@tech.com');
INSERT INTO Empl_Email (EMPL_ID, EMPL_EMAIL) VALUES
(200013, 'lily.zhang@cloudnet.com');
INSERT INTO Empl_Email (EMPL_ID, EMPL_EMAIL) VALUES
(200014, 'mohammed.alsayed@dataguard.com');
INSERT INTO Empl_Email (EMPL_ID, EMPL_EMAIL) VALUES
(200015, 'elena.ivanova@greentech.com');




prompt Inserting into Empl_Phone table
INSERT INTO Empl_Phone (EMPL_ID, EMPL_PHONE) VALUES
(200001, '408-555-1234');
INSERT INTO Empl_Phone (EMPL_ID, EMPL_PHONE) VALUES
(200002, '206-555-5678');
INSERT INTO Empl_Phone (EMPL_ID, EMPL_PHONE) VALUES
(200003, '512-555-9012');
INSERT INTO Empl_Phone (EMPL_ID, EMPL_PHONE) VALUES
(200004, '303-555-3456');
INSERT INTO Empl_Phone (EMPL_ID, EMPL_PHONE) VALUES
(200004, '314-554-3454');
INSERT INTO Empl_Phone (EMPL_ID, EMPL_PHONE) VALUES
(200003, '323-123-4344');
INSERT INTO Empl_Phone (EMPL_ID, EMPL_PHONE) VALUES
(200005, '212-555-7890');
INSERT INTO Empl_Phone (EMPL_ID, EMPL_PHONE) VALUES
(200006, '415-555-2345');
INSERT INTO Empl_Phone (EMPL_ID, EMPL_PHONE) VALUES
(200007, '971-555-6789');
INSERT INTO Empl_Phone (EMPL_ID, EMPL_PHONE) VALUES
(200008, '737-555-0123');
INSERT INTO Empl_Phone (EMPL_ID, EMPL_PHONE) VALUES
(200009, '720-555-4567');
INSERT INTO Empl_Phone (EMPL_ID, EMPL_PHONE) VALUES
(200010, '917-555-8901');
INSERT INTO Empl_Phone (EMPL_ID, EMPL_PHONE) VALUES
(200011, '312-555-4567');
INSERT INTO Empl_Phone (EMPL_ID, EMPL_PHONE) VALUES
(200012, '305-555-8901');
INSERT INTO Empl_Phone (EMPL_ID, EMPL_PHONE) VALUES
(200013, '858-555-2345');
INSERT INTO Empl_Phone (EMPL_ID, EMPL_PHONE) VALUES
(200014, '617-555-6789');
INSERT INTO Empl_Phone (EMPL_ID, EMPL_PHONE) VALUES
(200014, '617-555-6589');
INSERT INTO Empl_Phone (EMPL_ID, EMPL_PHONE) VALUES
(200015, '215-555-0123');

prompt Inserting into Manager table
INSERT INTO Manager (EMPL_ID, Manager_id, Manager_bonus, Inventory_id, Schedule_id) VALUES
(200001, 500003, 7500.00, 110001, 120001);
INSERT INTO Manager (EMPL_ID, Manager_id, Manager_bonus, Inventory_id, Schedule_id) VALUES
(200002, 500001, 15000.00, 110001, 120001);
INSERT INTO Manager (EMPL_ID, Manager_id, Manager_bonus, Inventory_id, Schedule_id) VALUES
(200003, 500002, 10000.00, 110001, 120001);
INSERT INTO Manager (EMPL_ID, Manager_id, Manager_bonus, Inventory_id, Schedule_id) VALUES
(200004, 500003, 7500.00, 110001, 120001);
INSERT INTO Manager (EMPL_ID, Manager_id, Manager_bonus, Inventory_id, Schedule_id) VALUES
(2000001, 500004, 8000.00, 110001, 120001); 
INSERT INTO Manager (EMPL_ID, Manager_id, Manager_bonus, Inventory_id, Schedule_id) VALUES
(2000002, 500005, 12000.00, 110001, 120001); 
INSERT INTO Manager (EMPL_ID, Manager_id, Manager_bonus, Inventory_id, Schedule_id) VALUES
(2000003, 500006, 9000.00, 110001, 120001); 
INSERT INTO Manager (EMPL_ID, Manager_id, Manager_bonus, Inventory_id, Schedule_id) VALUES
(2000004, 500007, 8500.00, 110001, 120001); 
INSERT INTO Manager (EMPL_ID, Manager_id, Manager_bonus, Inventory_id, Schedule_id) VALUES
(2000005, 500008, 10000.00, 110001, 120001); 
INSERT INTO Manager (EMPL_ID, Manager_id, Manager_bonus, Inventory_id, Schedule_id) VALUES
(200006, 500009, 7500.00, 110001, 120001); 
INSERT INTO Manager (EMPL_ID, Manager_id, Manager_bonus, Inventory_id, Schedule_id) VALUES
(200007, 500010, 9500.00, 110001, 120001); 
INSERT INTO Manager (EMPL_ID, Manager_id, Manager_bonus, Inventory_id, Schedule_id) VALUES
(200008, 500011, 11000.00, 110001, 120001); 
INSERT INTO Manager (EMPL_ID, Manager_id, Manager_bonus, Inventory_id, Schedule_id) VALUES
(200009, 500012, 7000.00, 110001, 120001); 
INSERT INTO Manager (EMPL_ID, Manager_id, Manager_bonus, Inventory_id, Schedule_id) VALUES
(2000010, 500013, 10500.00, 110001, 120001);
INSERT INTO Manager (EMPL_ID, Manager_id, Manager_bonus, Inventory_id, Schedule_id) VALUES
(2000011, 500013, 10500.00, 110001, 120001);



prompt Inserting into Technician table
INSERT INTO Technician (EMPL_ID, Technician_id, Tickets_completed) VALUES
(200001,600004,18);
INSERT INTO Technician (EMPL_ID, Technician_id, Tickets_completed) VALUES
(200002,600009,20);
INSERT INTO Technician (EMPL_ID, Technician_id, Tickets_completed) VALUES
(200003,600002,16);
INSERT INTO Technician (EMPL_ID, Technician_id, Tickets_completed) VALUES
(200004,600010,24);
INSERT INTO Technician (EMPL_ID, Technician_id, Tickets_completed) VALUES
(200005, 600001, 25);
INSERT INTO Technician (EMPL_ID, Technician_id, Tickets_completed) VALUES
(2000016, 600001, 25);
INSERT INTO Technician (EMPL_ID, Technician_id, Tickets_completed) VALUES
(2000017, 600001, 25);
INSERT INTO Technician (EMPL_ID, Technician_id, Tickets_completed) VALUES
(2000018, 600001, 25);
INSERT INTO Technician (EMPL_ID, Technician_id, Tickets_completed) VALUES
(2000019, 600001, 25);
INSERT INTO Technician (EMPL_ID, Technician_id, Tickets_completed) VALUES
(200006, 600005, 15);
INSERT INTO Technician (EMPL_ID, Technician_id, Tickets_completed) VALUES
(200007, 600002, 40);
INSERT INTO Technician (EMPL_ID, Technician_id, Tickets_completed) VALUES
(200008, 600003, 35);
INSERT INTO Technician (EMPL_ID, Technician_id, Tickets_completed) VALUES
(200009, 600004, 50);
INSERT INTO Technician (EMPL_ID, Technician_id, Tickets_completed) VALUES
(200010, 600006, 15);
INSERT INTO Technician (EMPL_ID, Technician_id, Tickets_completed) VALUES
(200011, 600007, 15);
INSERT INTO Technician (EMPL_ID, Technician_id, Tickets_completed) VALUES
(200012, 600008, 15);
INSERT INTO Technician (EMPL_ID, Technician_id, Tickets_completed) VALUES
(200013, 600009, 20);
INSERT INTO Technician (EMPL_ID, Technician_id, Tickets_completed) VALUES
(200014, 600010, 15);
INSERT INTO Technician (EMPL_ID, Technician_id, Tickets_completed) VALUES
(200015, 600011, 10);

prompt Inserting into Shift table
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210001,8,120001,200001);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210002,8,120001,200002);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210003,6,120001,200003);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210004,8,120001,200004);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210005,6,120001,200005);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210006,8,120001,200006);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210007,4,120001,200007);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210008,8,120001,200008);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210009,4,120001,200009);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210010,8,120001,200010);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210011,4,120001,200011);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210012,8,120001,200012);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210013,4,120001,200013);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210014,8,120001,200014);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210015,4,120001,200015);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210016,8,120001,200015);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210017,4,120001,200005);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210018,9,120001,200005);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210019,4,120001,200004);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210020,8,120001,200001);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210021,4,120001,200006);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210022,8,120001,200007);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210023,4,120001,200010);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210025,6,120001,200011);
INSERT INTO SHIFT (SHIFT_ID, Total_hours_worked, Schedule_id, Empl_id) VALUES
(210026,6,120001,200012);



prompt Inserting into Technician_Tech_Certifications table
INSERT INTO Technician_Tech_Certifications (EMPL_ID, TECH_CERTIFICATIONS) VALUES
(200005, 'CompTIA A+');
INSERT INTO Technician_Tech_Certifications (EMPL_ID, TECH_CERTIFICATIONS) VALUES
(200005, 'Network+');
INSERT INTO Technician_Tech_Certifications (EMPL_ID, TECH_CERTIFICATIONS) VALUES
(200006, 'CCNA');
INSERT INTO Technician_Tech_Certifications (EMPL_ID, TECH_CERTIFICATIONS) VALUES
(200006, 'Security+');
INSERT INTO Technician_Tech_Certifications (EMPL_ID, TECH_CERTIFICATIONS) VALUES
(200007, 'AWS Certified');
INSERT INTO Technician_Tech_Certifications (EMPL_ID, TECH_CERTIFICATIONS) VALUES
(200007, 'Azure Administrator');
INSERT INTO Technician_Tech_Certifications (EMPL_ID, TECH_CERTIFICATIONS) VALUES
(200008, 'CISSP');
INSERT INTO Technician_Tech_Certifications (EMPL_ID, TECH_CERTIFICATIONS) VALUES
(200008, 'Ethical Hacking');
INSERT INTO Technician_Tech_Certifications (EMPL_ID, TECH_CERTIFICATIONS) VALUES
(200009, 'Linux+');
INSERT INTO Technician_Tech_Certifications (EMPL_ID, TECH_CERTIFICATIONS) VALUES
(200009, 'Cloud Essential');
INSERT INTO Technician_Tech_Certifications (EMPL_ID, TECH_CERTIFICATIONS) VALUES
(200013, 'AWS Certified Solutions Architect');
INSERT INTO Technician_Tech_Certifications (EMPL_ID, TECH_CERTIFICATIONS) VALUES
(200013, 'ITIL Foundation');
INSERT INTO Technician_Tech_Certifications (EMPL_ID, TECH_CERTIFICATIONS) VALUES
(200015, 'CompTIA Security+');
INSERT INTO Technician_Tech_Certifications (EMPL_ID, TECH_CERTIFICATIONS) VALUES
(200015, 'Google Cloud Associate');
INSERT INTO Technician_Tech_Certifications (EMPL_ID, TECH_CERTIFICATIONS) VALUES
(200015, 'CCNA');



prompt Inserting into Equipment_Rental Table
INSERT INTO Equipment_Rental(RENTAL_ID, Date_rented, Date_returned) VALUES
(700001,'01-JAN-2020','02-JAN-2020');
INSERT INTO Equipment_Rental(RENTAL_ID, Date_rented, Date_returned) VALUES
(700002,'01-JAN-2020','02-FEB-2020');
INSERT INTO Equipment_Rental(RENTAL_ID, Date_rented, Date_returned) VALUES
(700003,'01-FEB-2020','12-FEB-2020');
INSERT INTO Equipment_Rental(RENTAL_ID, Date_rented, Date_returned) VALUES
(700004,'08-JUN-2020','10-JUN-2020');
INSERT INTO Equipment_Rental(RENTAL_ID, Date_rented, Date_returned) VALUES
(700005,'01-NOV-2020','22-DEC-2020');
INSERT INTO Equipment_Rental(RENTAL_ID, Date_rented, Date_returned) VALUES
(700006,'01-JAN-2019','02-JAN-2020');
INSERT INTO Equipment_Rental(RENTAL_ID, Date_rented, Date_returned) VALUES
(700007,'10-JAN-2020','03-MAR-2020');
INSERT INTO Equipment_Rental(RENTAL_ID, Date_rented, Date_returned) VALUES
(700008,'14-APR-2020','02-MAY-2020');
INSERT INTO Equipment_Rental(RENTAL_ID, Date_rented, Date_returned) VALUES
(700009,'28-JAN-2022','26-NOV-2023');
INSERT INTO Equipment_Rental(RENTAL_ID, Date_rented, Date_returned) VALUES
(700010,'14-NOV-2020','06-DEC-2020');
INSERT INTO Equipment_Rental(RENTAL_ID, Date_rented, Date_returned) VALUES
(700011,'13-JUN-2020','15-JUL-2020');
INSERT INTO Equipment_Rental(RENTAL_ID, Date_rented, Date_returned) VALUES
(700012,'12-JAN-2020','02-JAN-2021');
INSERT INTO Equipment_Rental(RENTAL_ID, Date_rented, Date_returned) VALUES
(700013,'01-DEC-2020','02-DEC-2020');
INSERT INTO Equipment_Rental(RENTAL_ID, Date_rented, Date_returned) VALUES
(700014,'04-MAY-2020','20-DEC-2020');
INSERT INTO Equipment_Rental(RENTAL_ID, Date_rented, Date_returned) VALUES
(700015,'07-FEB-2020','02-NOV-2020');


prompt Inserting into Equipment table
INSERT INTO Equipment(EQUIPMENT_ID, Inventory_id, Rental_id) VALUES
(800001,110001 ,700001);
INSERT INTO Equipment(EQUIPMENT_ID, Inventory_id, Rental_id) VALUES
(800002,110001 ,700002);
INSERT INTO Equipment(EQUIPMENT_ID, Inventory_id, Rental_id) VALUES
(800003,110001 ,700003);
INSERT INTO Equipment(EQUIPMENT_ID, Inventory_id, Rental_id) VALUES
(800004,110001 ,700004);
INSERT INTO Equipment(EQUIPMENT_ID, Inventory_id, Rental_id) VALUES
(800005,110001 ,700005);
INSERT INTO Equipment(EQUIPMENT_ID, Inventory_id, Rental_id) VALUES
(800006,110001 ,700006);
INSERT INTO Equipment(EQUIPMENT_ID, Inventory_id, Rental_id) VALUES
(800007,110001 ,700007);
INSERT INTO Equipment(EQUIPMENT_ID, Inventory_id, Rental_id) VALUES
(800008,110001 ,700008);
INSERT INTO Equipment(EQUIPMENT_ID, Inventory_id, Rental_id) VALUES
(800009,110001 ,700009);
INSERT INTO Equipment(EQUIPMENT_ID, Inventory_id, Rental_id) VALUES
(800010,110001 ,700010);
INSERT INTO Equipment(EQUIPMENT_ID, Inventory_id, Rental_id) VALUES
(800011,110001 ,700011);
INSERT INTO Equipment(EQUIPMENT_ID, Inventory_id, Rental_id) VALUES
(800012,110001 ,700012);
INSERT INTO Equipment(EQUIPMENT_ID, Inventory_id, Rental_id) VALUES
(800013,110001 ,700013);
INSERT INTO Equipment(EQUIPMENT_ID, Inventory_id, Rental_id) VALUES
(800014,110001 ,700014);
INSERT INTO Equipment(EQUIPMENT_ID, Inventory_id, Rental_id) VALUES
(800015,110001 ,700015);


prompt Inserting into Equipment_Service_Function table
INSERT INTO EQUIPMENT_SERVICE_FUNCTION(EQUIPMENT_ID, SERVICE_FUNCTION) VALUES
(800001,'Remove Virus');
INSERT INTO EQUIPMENT_SERVICE_FUNCTION(EQUIPMENT_ID, SERVICE_FUNCTION) VALUES
(800002,'Remove Virus');
INSERT INTO EQUIPMENT_SERVICE_FUNCTION(EQUIPMENT_ID, SERVICE_FUNCTION) VALUES
(800003,'Remove Virus');
INSERT INTO EQUIPMENT_SERVICE_FUNCTION(EQUIPMENT_ID, SERVICE_FUNCTION) VALUES
(800004,'Macbook Hardware Repair Kit');
INSERT INTO EQUIPMENT_SERVICE_FUNCTION(EQUIPMENT_ID, SERVICE_FUNCTION) VALUES
(800005,'Macbook Extra Hardware');
INSERT INTO EQUIPMENT_SERVICE_FUNCTION(EQUIPMENT_ID, SERVICE_FUNCTION) VALUES
(800006,'Intel Laptops Hardware Repair Kit');
INSERT INTO EQUIPMENT_SERVICE_FUNCTION(EQUIPMENT_ID, SERVICE_FUNCTION) VALUES
(800007,'Surface Pro Hardware Repair Kit');
INSERT INTO EQUIPMENT_SERVICE_FUNCTION(EQUIPMENT_ID, SERVICE_FUNCTION) VALUES
(800008,'Intel Laptops Extra Hardware');
INSERT INTO EQUIPMENT_SERVICE_FUNCTION(EQUIPMENT_ID, SERVICE_FUNCTION) VALUES
(800009,'Surface Pro Hardware Repair Kit');
INSERT INTO EQUIPMENT_SERVICE_FUNCTION(EQUIPMENT_ID, SERVICE_FUNCTION) VALUES
(800010,'Remove Virus');
INSERT INTO EQUIPMENT_SERVICE_FUNCTION(EQUIPMENT_ID, SERVICE_FUNCTION) VALUES
(800011,'Remove Virus');
INSERT INTO EQUIPMENT_SERVICE_FUNCTION(EQUIPMENT_ID, SERVICE_FUNCTION) VALUES
(800012,'Remove Virus');
INSERT INTO EQUIPMENT_SERVICE_FUNCTION(EQUIPMENT_ID, SERVICE_FUNCTION) VALUES
(800013,'Remove Virus');
INSERT INTO EQUIPMENT_SERVICE_FUNCTION(EQUIPMENT_ID, SERVICE_FUNCTION) VALUES
(800014,'Remove Virus');
INSERT INTO EQUIPMENT_SERVICE_FUNCTION(EQUIPMENT_ID, SERVICE_FUNCTION) VALUES
(800015,'Remove Virus');





prompt Inserting into Equipment_Contract_Function table
INSERT INTO Equipment_Contract_Function(EQUIPMENT_ID, CONTRACT_FUNCTION) VALUES
(800001, 'Systems Checkup Tool');
INSERT INTO Equipment_Contract_Function(EQUIPMENT_ID, CONTRACT_FUNCTION) VALUES
(800002, 'Systems Checkup Tool');
INSERT INTO Equipment_Contract_Function(EQUIPMENT_ID, CONTRACT_FUNCTION) VALUES
(800003, 'Systems Checkup Tool');
INSERT INTO Equipment_Contract_Function(EQUIPMENT_ID, CONTRACT_FUNCTION) VALUES
(800004, 'Emergency Support Tool');
INSERT INTO Equipment_Contract_Function(EQUIPMENT_ID, CONTRACT_FUNCTION) VALUES
(800005, 'Systems Checkup Tool');
INSERT INTO Equipment_Contract_Function(EQUIPMENT_ID, CONTRACT_FUNCTION) VALUES
(800006, 'Systems Checkup Tool');
INSERT INTO Equipment_Contract_Function(EQUIPMENT_ID, CONTRACT_FUNCTION) VALUES
(800007, 'Emergency Support Tool');
INSERT INTO Equipment_Contract_Function(EQUIPMENT_ID, CONTRACT_FUNCTION) VALUES
(800008, 'Maintenance Tool');
INSERT INTO Equipment_Contract_Function(EQUIPMENT_ID, CONTRACT_FUNCTION) VALUES
(800009, 'Systems Checkup Tool');
INSERT INTO Equipment_Contract_Function(EQUIPMENT_ID, CONTRACT_FUNCTION) VALUES
(800010, 'Systems Checkup Tool');
INSERT INTO Equipment_Contract_Function(EQUIPMENT_ID, CONTRACT_FUNCTION) VALUES
(800011, 'Maintenance Tool');
INSERT INTO Equipment_Contract_Function(EQUIPMENT_ID, CONTRACT_FUNCTION) VALUES
(800012, 'Systems Checkup Tool');
INSERT INTO Equipment_Contract_Function(EQUIPMENT_ID, CONTRACT_FUNCTION) VALUES
(800013, 'Maintenance Tool');
INSERT INTO Equipment_Contract_Function(EQUIPMENT_ID, CONTRACT_FUNCTION) VALUES
(800014, 'Systems Checkup Tool');
INSERT INTO Equipment_Contract_Function(EQUIPMENT_ID, CONTRACT_FUNCTION) VALUES
(800015, 'Systems Checkup Tool');


prompt Inserting into Technicians_Rents_From_Equipment_Rental table
INSERT INTO Technicians_Rents_From_Equipment_Rental (EMPL_ID, RENTAL_ID) VALUES
(200005, 700001);
INSERT INTO Technicians_Rents_From_Equipment_Rental (EMPL_ID, RENTAL_ID) VALUES
(200006, 700002);
INSERT INTO Technicians_Rents_From_Equipment_Rental (EMPL_ID, RENTAL_ID) VALUES
(200007, 700003);
INSERT INTO Technicians_Rents_From_Equipment_Rental (EMPL_ID, RENTAL_ID) VALUES
(200008, 700004);
INSERT INTO Technicians_Rents_From_Equipment_Rental (EMPL_ID, RENTAL_ID) VALUES
(200009, 700005);
INSERT INTO Technicians_Rents_From_Equipment_Rental (EMPL_ID, RENTAL_ID) VALUES
(200009, 700006);
INSERT INTO Technicians_Rents_From_Equipment_Rental (EMPL_ID, RENTAL_ID) VALUES
(200009, 700007);
INSERT INTO Technicians_Rents_From_Equipment_Rental (EMPL_ID, RENTAL_ID) VALUES
(200010, 700008);
INSERT INTO Technicians_Rents_From_Equipment_Rental (EMPL_ID, RENTAL_ID) VALUES
(200011, 700009);
INSERT INTO Technicians_Rents_From_Equipment_Rental (EMPL_ID, RENTAL_ID) VALUES
(200011, 700010);
INSERT INTO Technicians_Rents_From_Equipment_Rental (EMPL_ID, RENTAL_ID) VALUES
(200012, 700011);
INSERT INTO Technicians_Rents_From_Equipment_Rental (EMPL_ID, RENTAL_ID) VALUES
(200013, 700012);
INSERT INTO Technicians_Rents_From_Equipment_Rental (EMPL_ID, RENTAL_ID) VALUES
(200013, 700013);
INSERT INTO Technicians_Rents_From_Equipment_Rental (EMPL_ID, RENTAL_ID) VALUES
(200014, 700014);
INSERT INTO Technicians_Rents_From_Equipment_Rental (EMPL_ID, RENTAL_ID) VALUES
(200015, 700015);
INSERT INTO Technicians_Rents_From_Equipment_Rental (EMPL_ID, RENTAL_ID) VALUES
(200015, 700014);
INSERT INTO Technicians_Rents_From_Equipment_Rental (EMPL_ID, RENTAL_ID) VALUES
(200015, 700011);
INSERT INTO Technicians_Rents_From_Equipment_Rental (EMPL_ID, RENTAL_ID) VALUES
(200014, 700012);
INSERT INTO Technicians_Rents_From_Equipment_Rental (EMPL_ID, RENTAL_ID) VALUES
(200014, 700013);







prompt Inserting into Customer table
INSERT INTO Customer (CUSTOMER_ID, Cust_address,Business_id, Cust_type) VALUES
(300001,'1000 Main St, Arcata, CA',100001,'Individual_Client');
INSERT INTO Customer (CUSTOMER_ID, Cust_address,Business_id, Cust_type) VALUES
(300002,'1011 1st St, Arcata, CA',100001,'Individual_Client');
INSERT INTO Customer (CUSTOMER_ID, Cust_address,Business_id, Cust_type) VALUES
(300003,'2048 Industrial St, Arcata, CA',100001,'Individual_Client');
INSERT INTO Customer (CUSTOMER_ID, Cust_address,Business_id, Cust_type) VALUES
(300004,'1024 Park Blvd, Arcata, CA',100001,'Individual_Client');
INSERT INTO Customer (CUSTOMER_ID, Cust_address,Business_id, Cust_type) VALUES
(300005,'512 Grove Ct, Arcata, CA',100001,'Individual_Client');
INSERT INTO Customer (CUSTOMER_ID, Cust_address,Business_id, Cust_type) VALUES
(300006,'256 A St, Arcata, CA',100001,'Individual_Client');
INSERT INTO Customer (CUSTOMER_ID, Cust_address,Business_id, Cust_type) VALUES
(300007,'128 Mission Dr, Arcata, CA',100001,'Individual_Client');
INSERT INTO Customer (CUSTOMER_ID, Cust_address,Business_id, Cust_type) VALUES
(300008,'333 Main Way, Eureka, CA',100001,'Individual_Client');
INSERT INTO Customer (CUSTOMER_ID, Cust_address,Business_id, Cust_type) VALUES
(300009,'444 Central Way, Eureka, CA',100001,'Small_Business');
INSERT INTO Customer (CUSTOMER_ID, Cust_address,Business_id, Cust_type) VALUES
(300010,'555 Business Way, Eureka, CA',100001,'Small_Business');
INSERT INTO Customer (CUSTOMER_ID, Cust_address,Business_id, Cust_type) VALUES
(300011,'666 Finance Way, Eureka, CA',100001,'Small_Business');
INSERT INTO Customer (CUSTOMER_ID, Cust_address,Business_id, Cust_type) VALUES
(300012,'777 Broad Way, Arcata, NY',100001,'Small_Business');
INSERT INTO Customer (CUSTOMER_ID, Cust_address,Business_id, Cust_type) VALUES
(300013,'888 Westward Way, Arcata, NJ',100001,'Small_Business');
INSERT INTO Customer (CUSTOMER_ID, Cust_address,Business_id, Cust_type) VALUES
(300014,'999 Mission Dr, Arcata, FL',100001,'Small_Business');
INSERT INTO Customer (CUSTOMER_ID, Cust_address,Business_id, Cust_type) VALUES
(300015,'1111 F St, Arcata, CA',100001,'Small_Business');
INSERT INTO Customer (CUSTOMER_ID, Cust_address,Business_id, Cust_type) VALUES
(300016,'1000 A St, Arcata, CA',100001,'Small_Business');



prompt Inserting into Cust_Phone table
INSERT INTO Cust_Phone (CUST_ID, CUST_PHONE) VALUES
(300001, '208-555-1234');
INSERT INTO Cust_Phone (CUST_ID, CUST_PHONE) VALUES
(300002, '406-555-5678');
INSERT INTO Cust_Phone (CUST_ID, CUST_PHONE) VALUES
(300003, '412-555-9012');
INSERT INTO Cust_Phone (CUST_ID, CUST_PHONE) VALUES
(300004, '403-555-3456');
INSERT INTO Cust_Phone (CUST_ID, CUST_PHONE) VALUES
(300005, '412-555-7890');
INSERT INTO Cust_Phone (CUST_ID, CUST_PHONE) VALUES
(300006, '415-555-2345');
INSERT INTO Cust_Phone (CUST_ID, CUST_PHONE) VALUES
(300007, '471-555-6789');
INSERT INTO Cust_Phone (CUST_ID, CUST_PHONE) VALUES
(300008, '637-555-0123');
INSERT INTO Cust_Phone (CUST_ID, CUST_PHONE) VALUES
(300009, '620-555-4567');
INSERT INTO Cust_Phone (CUST_ID, CUST_PHONE) VALUES
(300010, '517-555-8901');
INSERT INTO Cust_Phone (CUST_ID, CUST_PHONE) VALUES
(300011, '712-555-4567');
INSERT INTO Cust_Phone (CUST_ID, CUST_PHONE) VALUES
(300012, '805-555-8901');
INSERT INTO Cust_Phone (CUST_ID, CUST_PHONE) VALUES
(300013, '858-555-2345');
INSERT INTO Cust_Phone (CUST_ID, CUST_PHONE) VALUES
(300014, '417-555-6789');
INSERT INTO Cust_Phone (CUST_ID, CUST_PHONE) VALUES
(300015, '215-555-0120');
INSERT INTO Cust_Phone (CUST_ID, CUST_PHONE) VALUES
(300015, '315-555-0131');
INSERT INTO Cust_Phone (CUST_ID, CUST_PHONE) VALUES
(300015, '415-555-0142');
INSERT INTO Cust_Phone (CUST_ID, CUST_PHONE) VALUES
(300016, '215-555-0123');
INSERT INTO Cust_Phone (CUST_ID, CUST_PHONE) VALUES
(300016, '215-555-0124');


prompt Inserting into Cust_Email table
INSERT INTO Cust_Email (CUST_ID, CUST_EMAIL) VALUES
(300001, 'john.rodriguez@tech.com');
INSERT INTO Cust_Email (CUST_ID, CUST_EMAIL) VALUES
(300002, 'sam.chen@cloudnet.com');
INSERT INTO Cust_Email (CUST_ID, CUST_EMAIL) VALUES
(300003, 'natalie.watts@dataguard.com');
INSERT INTO Cust_Email (CUST_ID, CUST_EMAIL) VALUES
(300004, 'emile.thompson@greentech.com');
INSERT INTO Cust_Email (CUST_ID, CUST_EMAIL) VALUES
(300004, 'ema.thompson@gmail.com');
INSERT INTO Cust_Email (CUST_ID, CUST_EMAIL) VALUES
(300005, 'jada.marasigan@globalit.com');
INSERT INTO Cust_Email (CUST_ID, CUST_EMAIL) VALUES
(300006, 'steve.gupta@tech.com');
INSERT INTO Cust_Email (CUST_ID, CUST_EMAIL) VALUES
(300007, 'jones.wong@cloudnet.com');
INSERT INTO Cust_Email (CUST_ID, CUST_EMAIL) VALUES
(300008, 'kami.garcia@dataguard.com');
INSERT INTO Cust_Email (CUST_ID, CUST_EMAIL) VALUES
(300009, 'humboldtrecords@greentech.com');
INSERT INTO Cust_Email (CUST_ID, CUST_EMAIL) VALUES
(300010, 'humbdlibrary@globalit.com');
INSERT INTO Cust_Email (CUST_ID, CUST_EMAIL) VALUES
(300011, 'computers@innovatech.com');
INSERT INTO Cust_Email (CUST_ID, CUST_EMAIL) VALUES
(300012, 'tech.hernandez@tech.com');
INSERT INTO Cust_Email (CUST_ID, CUST_EMAIL) VALUES
(300013, 'techy.zhangs@cloudnet.com');
INSERT INTO Cust_Email (CUST_ID, CUST_EMAIL) VALUES
(300013, 'tech.zhang@cloudnet.com');
INSERT INTO Cust_Email (CUST_ID, CUST_EMAIL) VALUES
(300014, 'mohammed.electronics@dataguard.com');
INSERT INTO Cust_Email (CUST_ID, CUST_EMAIL) VALUES
(300015, 'elenatech.ivanova@greentech.com');
INSERT INTO Cust_Email (CUST_ID, CUST_EMAIL) VALUES
(300015, 'techelena.ivanova@yahoo.com');
INSERT INTO Cust_Email (CUST_ID, CUST_EMAIL) VALUES
(300015, 'techelena.ivanova@aol.com');





prompt Inserting into Transaction table
INSERT INTO Transaction(TRANSACTION_ID,Amount_due,Date_Due,Customer_id) VALUES
(400001,149.99,'01-JAN-2021',300001);
INSERT INTO Transaction(TRANSACTION_ID,Amount_due,Date_Due,Customer_id) VALUES
(400002,199.99,'01-OCT-2021',300002);
INSERT INTO Transaction(TRANSACTION_ID,Amount_due,Date_Due,Customer_id) VALUES
(400003,99.99,'02-DEC-2022',300003);
INSERT INTO Transaction(TRANSACTION_ID,Amount_due,Date_Due,Customer_id) VALUES
(400004,50.00,'03-OCT-2020',300004);
INSERT INTO Transaction(TRANSACTION_ID,Amount_due,Date_Due,Customer_id) VALUES
(400005,300.00,'05-SEP-2020',300005);
INSERT INTO Transaction(TRANSACTION_ID,Amount_due,Date_Due,Customer_id) VALUES
(400006,500.00,'08-FEB-2023',300006);
INSERT INTO Transaction(TRANSACTION_ID,Amount_due,Date_Due,Customer_id) VALUES
(400007,200.00,'13-JUN-2023',300007);
INSERT INTO Transaction(TRANSACTION_ID,Amount_due,Date_Due,Customer_id) VALUES
(400008,49.99,'21-JUL-2023',300008);
INSERT INTO Transaction(TRANSACTION_ID,Amount_due,Date_Due,Customer_id) VALUES
(400009,10000.00,'12-SEP-2020',300009);
INSERT INTO Transaction(TRANSACTION_ID,Amount_due,Date_Due,Customer_id) VALUES
(400010,1000.00,'25-APR-2020',300010);
INSERT INTO Transaction(TRANSACTION_ID,Amount_due,Date_Due,Customer_id) VALUES
(400011,5000.00,'08-MAR-2024',300011);
INSERT INTO Transaction(TRANSACTION_ID,Amount_due,Date_Due,Customer_id) VALUES
(400012,1275.00,'03-FEB-2024',300012);
INSERT INTO Transaction(TRANSACTION_ID,Amount_due,Date_Due,Customer_id) VALUES
(400013,999.99,'19-NOV-2024',300013);
INSERT INTO Transaction(TRANSACTION_ID,Amount_due,Date_Due,Customer_id) VALUES
(400014,4500.00,'29-DEC-2023',300014);
INSERT INTO Transaction(TRANSACTION_ID,Amount_due,Date_Due,Customer_id) VALUES
(400015,3571.43,'05-SEP-2024',300015);
INSERT INTO Transaction(TRANSACTION_ID,Amount_due,Date_Due,Customer_id) VALUES
(400016,750.00,'05-AUG-2024',300016);

prompt Inserting into Payment table

INSERT INTO Payment(PAYMENT_ID,Payment_method, Amount_paid, Currency, Business_id, Transaction_id) VALUES
(410001,'Check',149.99,'USD',100001,400001);
INSERT INTO Payment(PAYMENT_ID,Payment_method, Amount_paid, Currency, Business_id, Transaction_id) VALUES
(410002,'Check',199.99,'USD',100001,400002);
INSERT INTO Payment(PAYMENT_ID,Payment_method, Amount_paid, Currency, Business_id, Transaction_id) VALUES
(410003,'Debit',99.99,'USD',100001,400003);
INSERT INTO Payment(PAYMENT_ID,Payment_method, Amount_paid, Currency, Business_id, Transaction_id) VALUES
(410004,'Check',50.00,'USD',100001,400004);
INSERT INTO Payment(PAYMENT_ID,Payment_method, Amount_paid, Currency, Business_id, Transaction_id) VALUES
(410005,'Debit',300.00,'EUR',100001,400005);
INSERT INTO Payment(PAYMENT_ID,Payment_method, Amount_paid, Currency, Business_id, Transaction_id) VALUES
(410006,'Cash',450.00,'USD',100001,400006);
INSERT INTO Payment(PAYMENT_ID,Payment_method, Amount_paid, Currency, Business_id, Transaction_id) VALUES
(410007,'Check',200.00,'USD',100001,400007);
INSERT INTO Payment(PAYMENT_ID,Payment_method, Amount_paid, Currency, Business_id, Transaction_id) VALUES
(410008,'Check',49.99,'EUR',100001,400008);
INSERT INTO Payment(PAYMENT_ID,Payment_method, Amount_paid, Currency, Business_id, Transaction_id) VALUES
(410009,'Cash',10000.00,'USD',100001,400009);
INSERT INTO Payment(PAYMENT_ID,Payment_method, Amount_paid, Currency, Business_id, Transaction_id) VALUES
(410010,'Check',1000.00,'USD',100001,400010);
INSERT INTO Payment(PAYMENT_ID,Payment_method, Amount_paid, Currency, Business_id, Transaction_id) VALUES
(410011,'Credit',4000.00,'CA$',100001,400011);
INSERT INTO Payment(PAYMENT_ID,Payment_method, Amount_paid, Currency, Business_id, Transaction_id) VALUES
(410012,'Cash',1275.00,'USD',100001,400012);
INSERT INTO Payment(PAYMENT_ID,Payment_method, Amount_paid, Currency, Business_id, Transaction_id) VALUES
(410013,'Check',999.99,'USD',100001,400013);
INSERT INTO Payment(PAYMENT_ID,Payment_method, Amount_paid, Currency, Business_id, Transaction_id) VALUES
(410014,'Credit',4500.00,'USD',100001,400014);
INSERT INTO Payment(PAYMENT_ID,Payment_method, Amount_paid, Currency, Business_id, Transaction_id) VALUES
(410015,'Check',3571.43,'USD',100001,400015);
INSERT INTO Payment(PAYMENT_ID,Payment_method, Amount_paid, Currency, Business_id, Transaction_id) VALUES
(410016,'Check',750.00,'USD',100001,400016);


prompt Inserting into Ticket table
INSERT INTO Ticket (TICKET_ID, Date_opened, Date_closed, status, cust_id) VALUES
(900001,'01-JAN-2023','02-JAN-2023','In progress',300001);
INSERT INTO Ticket (TICKET_ID, Date_opened, Date_closed, status, cust_id) VALUES
(900002,'10-FEB-2023','04-JAN-2024','In progress',300002);
INSERT INTO Ticket (TICKET_ID, Date_opened, Date_closed, status, cust_id) VALUES
(900003,'11-FEB-2023','05-JAN-2024','In progress',300003);
INSERT INTO Ticket (TICKET_ID, Date_opened, Date_closed, status, cust_id) VALUES
(900004,'05-MAR-2023','10-APR-2023','In progress',300004);
INSERT INTO Ticket (TICKET_ID, Date_opened, Date_closed, status, cust_id) VALUES
(900005,'21-APR-2023','12-JAN-2024','In progress',300005);
INSERT INTO Ticket (TICKET_ID, Date_opened, Date_closed, status, cust_id) VALUES
(900006,'14-JUL-2023','02-AUG-2023','In progress',300006);
INSERT INTO Ticket (TICKET_ID, Date_opened, Date_closed, status, cust_id) VALUES
(900007,'16-JAN-2023','10-FEB-2023','In progress',300007);
INSERT INTO Ticket (TICKET_ID, Date_opened, Date_closed, status, cust_id) VALUES
(900008,'02-JAN-2023','03-JAN-2023','Processing',300008);
INSERT INTO Ticket (TICKET_ID, Date_opened, Date_closed, status, cust_id) VALUES
(900009,'08-NOV-2023','02-DEC-2023','Processing',300009);
INSERT INTO Ticket (TICKET_ID, Date_opened, Date_closed, status, cust_id) VALUES
(900010,'01-DEC-2023','08-DEC-2023','Processing',300010);
INSERT INTO Ticket (TICKET_ID, Date_opened, Date_closed, status, cust_id) VALUES
(900011,'27-OCT-2023','28-NOV-2023','Completed',300011);
INSERT INTO Ticket (TICKET_ID, Date_opened, Date_closed, status, cust_id) VALUES
(900012,'28-OCT-2023','29-NOV-2023','Completed',300012);
INSERT INTO Ticket (TICKET_ID, Date_opened, Date_closed, status, cust_id) VALUES
(900013,'24-MAR-2023','25-APR-2023','Completed',300013);
INSERT INTO Ticket (TICKET_ID, Date_opened, Date_closed, status, cust_id) VALUES
(900014,'22-APR-2023','27-JUN-2023','Completed',300014);
INSERT INTO Ticket (TICKET_ID, Date_opened, Date_closed, status, cust_id) VALUES
(900015,'21-JAN-2023','25-JUN-2023','Completed',300015);

prompt Inserting into Technicians_Resolve_Ticket

INSERT INTO Technicians_Resolve_Ticket(EMPL_ID, TICKET_ID) VALUES
(200005,900001);
INSERT INTO Technicians_Resolve_Ticket(EMPL_ID, TICKET_ID) VALUES
(200005,900002);
INSERT INTO Technicians_Resolve_Ticket(EMPL_ID, TICKET_ID) VALUES
(200005,900003);
INSERT INTO Technicians_Resolve_Ticket(EMPL_ID, TICKET_ID) VALUES
(200006,900004);
INSERT INTO Technicians_Resolve_Ticket(EMPL_ID, TICKET_ID) VALUES
(200006,900005);
INSERT INTO Technicians_Resolve_Ticket(EMPL_ID, TICKET_ID) VALUES
(200007,900006);
INSERT INTO Technicians_Resolve_Ticket(EMPL_ID, TICKET_ID) VALUES
(200008,900007);
INSERT INTO Technicians_Resolve_Ticket(EMPL_ID, TICKET_ID) VALUES
(200009,900008);
INSERT INTO Technicians_Resolve_Ticket(EMPL_ID, TICKET_ID) VALUES
(200010,900009);
INSERT INTO Technicians_Resolve_Ticket(EMPL_ID, TICKET_ID) VALUES
(200011,900010);
INSERT INTO Technicians_Resolve_Ticket(EMPL_ID, TICKET_ID) VALUES
(200012,900011);
INSERT INTO Technicians_Resolve_Ticket(EMPL_ID, TICKET_ID) VALUES
(200012,900012);
INSERT INTO Technicians_Resolve_Ticket(EMPL_ID, TICKET_ID) VALUES
(200013,900013);
INSERT INTO Technicians_Resolve_Ticket(EMPL_ID, TICKET_ID) VALUES
(200014,900014);
INSERT INTO Technicians_Resolve_Ticket(EMPL_ID, TICKET_ID) VALUES
(200015,900015);




prompt Inserting into Customer_Submit_Ticket

INSERT INTO Customer_Submit_Ticket(CUSTOMER_ID, TICKET_ID) VALUES
(300001,900001);
INSERT INTO Customer_Submit_Ticket(CUSTOMER_ID, TICKET_ID) VALUES
(300001,900002);
INSERT INTO Customer_Submit_Ticket(CUSTOMER_ID, TICKET_ID) VALUES
(300002,900003);
INSERT INTO Customer_Submit_Ticket(CUSTOMER_ID, TICKET_ID) VALUES
(300003,900004);
INSERT INTO Customer_Submit_Ticket(CUSTOMER_ID, TICKET_ID) VALUES
(300004,900005);
INSERT INTO Customer_Submit_Ticket(CUSTOMER_ID, TICKET_ID) VALUES
(300005,900006);
INSERT INTO Customer_Submit_Ticket(CUSTOMER_ID, TICKET_ID) VALUES
(300006,900007);
INSERT INTO Customer_Submit_Ticket(CUSTOMER_ID, TICKET_ID) VALUES
(300007,900008);
INSERT INTO Customer_Submit_Ticket(CUSTOMER_ID, TICKET_ID) VALUES
(300008,900009);
INSERT INTO Customer_Submit_Ticket(CUSTOMER_ID, TICKET_ID) VALUES
(300009,900010);
INSERT INTO Customer_Submit_Ticket(CUSTOMER_ID, TICKET_ID) VALUES
(300010,900011);
INSERT INTO Customer_Submit_Ticket(CUSTOMER_ID, TICKET_ID) VALUES
(300011,900012);
INSERT INTO Customer_Submit_Ticket(CUSTOMER_ID, TICKET_ID) VALUES
(300012,900013);
INSERT INTO Customer_Submit_Ticket(CUSTOMER_ID, TICKET_ID) VALUES
(300013,900014);
INSERT INTO Customer_Submit_Ticket(CUSTOMER_ID, TICKET_ID) VALUES
(300014,900015);




prompt Inserting into Individual_Client table

INSERT INTO Individual_Client (CUSTOMER_ID, Client_id, Client_fname, Client_lname) VALUES
(300001, 310001, 'John', 'Rodriguez');
INSERT INTO Individual_Client (CUSTOMER_ID, Client_id, Client_fname, Client_lname) VALUES
(300002, 310002, 'Sam', 'Chen');
INSERT INTO Individual_Client (CUSTOMER_ID, Client_id, Client_fname, Client_lname) VALUES
(300003, 310003, 'Natalie', 'Watts');
INSERT INTO Individual_Client (CUSTOMER_ID, Client_id, Client_fname, Client_lname) VALUES
(300004, 310004, 'Emile', 'Thompson');
INSERT INTO Individual_Client (CUSTOMER_ID, Client_id, Client_fname, Client_lname) VALUES
(300005, 310005, 'Jada', 'Marasigan');
INSERT INTO Individual_Client (CUSTOMER_ID, Client_id, Client_fname, Client_lname) VALUES
(300006, 310006, 'Steve', 'Gupta');
INSERT INTO Individual_Client (CUSTOMER_ID, Client_id, Client_fname, Client_lname) VALUES
(300007, 310007, 'Jones', 'Wong');
INSERT INTO Individual_Client (CUSTOMER_ID, Client_id, Client_fname, Client_lname) VALUES
(300008, 310008, 'Kami', 'Garcia');
INSERT INTO Individual_Client (CUSTOMER_ID, Client_id, Client_fname, Client_lname) VALUES 
(300009, 310009, 'Emily', 'Johnson'); 
INSERT INTO Individual_Client (CUSTOMER_ID, Client_id, Client_fname, Client_lname) VALUES 
(300010, 310010, 'Michael', 'Smith'); 
INSERT INTO Individual_Client (CUSTOMER_ID, Client_id, Client_fname, Client_lname) VALUES 
(300011, 310011, 'Sarah', 'Williams'); 
INSERT INTO Individual_Client (CUSTOMER_ID, Client_id, Client_fname, Client_lname) VALUES 
(300012, 310012, 'David', 'Brown'); 
INSERT INTO Individual_Client (CUSTOMER_ID, Client_id, Client_fname, Client_lname) VALUES 
(300013, 310013, 'Olivia', 'Jones'); 
INSERT INTO Individual_Client (CUSTOMER_ID, Client_id, Client_fname, Client_lname) VALUES 
(300014, 310014, 'James', 'Garcia'); 
INSERT INTO Individual_Client (CUSTOMER_ID, Client_id, Client_fname, Client_lname) VALUES 
(300015, 310015, 'Sophia', 'Martinez'); 


prompt Inserting into Small_Business table

INSERT INTO Small_Business (CUSTOMER_ID, Small_business_id, Tax_id, Dba) VALUES
(300009, 320009, 969420696, 'Humboldt Records');
INSERT INTO Small_Business (CUSTOMER_ID, Small_business_id, Tax_id, Dba) VALUES
(300010, 320010, 969421696, 'Humboldt Library');
INSERT INTO Small_Business (CUSTOMER_ID, Small_business_id, Tax_id, Dba) VALUES
(300011, 320011, 969422696, 'Computers Innovatech');
INSERT INTO Small_Business (CUSTOMER_ID, Small_business_id, Tax_id, Dba) VALUES
(300012, 320012, 969423696, 'Hernandez Tech Repair');
INSERT INTO Small_Business (CUSTOMER_ID, Small_business_id, Tax_id, Dba) VALUES
(300013, 320013, 969424696, 'Techy Zhangs');
INSERT INTO Small_Business (CUSTOMER_ID, Small_business_id, Tax_id, Dba) VALUES
(300014, 320014, 969425696, 'Mohammad Electronics');
INSERT INTO Small_Business (CUSTOMER_ID, Small_business_id, Tax_id, Dba) VALUES
(300015, 320015, 969426696, 'Elenas Tech World');
INSERT INTO Small_Business (CUSTOMER_ID, Small_business_id, Tax_id, Dba) VALUES
(300016, 320016, 969427696, 'BestBuds GeekTeam');
INSERT INTO Small_Business (CUSTOMER_ID, Small_business_id, Tax_id, Dba) VALUES
(300001, 320016, 969427696, 'TechGeeks');
INSERT INTO Small_Business (CUSTOMER_ID, Small_business_id, Tax_id, Dba) VALUES
(300002, 320016, 969427696, 'TechGenies');
INSERT INTO Small_Business (CUSTOMER_ID, Small_business_id, Tax_id, Dba) VALUES
(300003, 320016, 969427696, 'Humboldt Tech Store');
INSERT INTO Small_Business (CUSTOMER_ID, Small_business_id, Tax_id, Dba) VALUES
(300004, 320016, 969427696, 'Apple');
INSERT INTO Small_Business (CUSTOMER_ID, Small_business_id, Tax_id, Dba) VALUES
(300005, 320016, 969427696, 'Verizon');
INSERT INTO Small_Business (CUSTOMER_ID, Small_business_id, Tax_id, Dba) VALUES
(300006, 320016, 969427696, 'BestBuy');
INSERT INTO Small_Business (CUSTOMER_ID, Small_business_id, Tax_id, Dba) VALUES
(300007, 320016, 969427696, 'Walmart');
INSERT INTO Small_Business (CUSTOMER_ID, Small_business_id, Tax_id, Dba) VALUES
(300008, 320016, 969427696, 'Google');


prompt Inserting into Service table

INSERT INTO Service(SERVICE_ID,Service_start_Date,Service_end_date,Ticket_id,Customer_id) VALUES
(311001, '02-JAN-2021', '04-JAN-2021',900001,300001);
INSERT INTO Service(SERVICE_ID,Service_start_Date,Service_end_date,Ticket_id,Customer_id) VALUES
(311002, '02-OCT-2021', '08-OCT-2021',900002,300002);
INSERT INTO Service(SERVICE_ID,Service_start_date,Service_end_date,Ticket_id,Customer_id) VALUES
(311003, '03-DEC-2022', '05-DEC-2022',900003,300003);
INSERT INTO Service(SERVICE_ID,Service_start_date,Service_end_date,Ticket_id,Customer_id) VALUES
(311004, '05-SEP-2020', '08-SEP-2020',900004,300004);
INSERT INTO Service(SERVICE_ID,Service_start_date,Service_end_date,Ticket_id,Customer_id) VALUES
(311005, '08-FEB-2020', '10-FEB-2020',900005,300005);
INSERT INTO Service(SERVICE_ID,Service_start_date,Service_end_date,Ticket_id,Customer_id) VALUES
(311006, '13-JUN-2023', '20-JUN-2023',900006,300006);
INSERT INTO Service(SERVICE_ID,Service_start_date,Service_end_date,Ticket_id,Customer_id) VALUES
(311007, '21-JUL-2023', '21-JUL-2023',900007,300007);
INSERT INTO Service(SERVICE_ID,Service_start_date,Service_end_date,Ticket_id,Customer_id) VALUES
(311008, '12-SEP-2023', '12-SEP-2023',900008,300008);
INSERT INTO Service(SERVICE_ID,Service_start_date,Service_end_date,Ticket_id,Customer_id) VALUES
(311009, '25-APR-2020', '25-APR-2020',900009,300001);
INSERT INTO Service(SERVICE_ID,Service_start_date,Service_end_date,Ticket_id,Customer_id) VALUES
(311010, '08-MAR-2020', '10-MAR-2020',900010,300002);
INSERT INTO Service(SERVICE_ID,Service_start_date,Service_end_date,Ticket_id,Customer_id) VALUES
(311011, '03-FEB-2021', '05-FEB-2021',900011,300003);
INSERT INTO Service(SERVICE_ID,Service_start_date,Service_end_date,Ticket_id,Customer_id) VALUES
(311012, '19-NOV-2024', '21-NOV-2024',900012,300004);
INSERT INTO Service(SERVICE_ID,Service_start_date,Service_end_date,Ticket_id,Customer_id) VALUES
(311013, '29-DEC-2024', '31-DEC-2024',900013,300005);
INSERT INTO Service(SERVICE_ID,Service_start_date,Service_end_date,Ticket_id,Customer_id) VALUES
(311014, '05-SEP-2023', '07-SEP-2023',900014,300006);
INSERT INTO Service(SERVICE_ID,Service_start_date,Service_end_date,Ticket_id,Customer_id) VALUES
(311015, '05-AUG-2024', '07-AUG-2024',900015,300007);

prompt Inserting into Service_Type table
INSERT INTO Service_Type(SERVICE_TYPE_ID, Service_name, Service_cost) VALUES
(610001,'Apple Virus Removal', 200.00);
INSERT INTO Service_Type(SERVICE_TYPE_ID, Service_name, Service_cost) VALUES
(610002,'Windows Virus Removal', 200.00);
INSERT INTO Service_Type(SERVICE_TYPE_ID, Service_name, Service_cost) VALUES
(610003,'Browser Virus Removal', 200.00);
INSERT INTO Service_Type(SERVICE_TYPE_ID, Service_name, Service_cost) VALUES
(610004,'Laptop Hardware Upgrade', 150.00);
INSERT INTO Service_Type(SERVICE_TYPE_ID, Service_name, Service_cost) VALUES
(610005,'PC Hardware Upgrade', 300.00);
INSERT INTO Service_Type(SERVICE_TYPE_ID, Service_name, Service_cost) VALUES
(610006,'Software Troubleshooting', 300.00);
INSERT INTO Service_Type(SERVICE_TYPE_ID, Service_name, Service_cost) VALUES
(610007,'Browser Troubleshooting', 300.00);
INSERT INTO Service_Type(SERVICE_TYPE_ID, Service_name, Service_cost) VALUES
(610008,'Network Setup', 400.00);
INSERT INTO Service_Type(SERVICE_TYPE_ID, Service_name, Service_cost) VALUES
(610009,'Network Upgrade',300.00);
INSERT INTO Service_Type(SERVICE_TYPE_ID, Service_name, Service_cost) VALUES
(610010,'Full System Virus Removal', 300.00);
INSERT INTO Service_Type(SERVICE_TYPE_ID, Service_name, Service_cost) VALUES
(610011,'Hardware Troubleshooting', 300.00);
INSERT INTO Service_Type(SERVICE_TYPE_ID, Service_name, Service_cost) VALUES
(610012,'Application Virus Removal', 300.00);
INSERT INTO Service_Type(SERVICE_TYPE_ID, Service_name, Service_cost) VALUES
(610013,'Specialized Virus Removal', 300.00);
INSERT INTO Service_Type(SERVICE_TYPE_ID, Service_name, Service_cost) VALUES
(610014,'Software Troubleshooting for Mac', 300.00);
INSERT INTO Service_Type(SERVICE_TYPE_ID, Service_name, Service_cost) VALUES
(610015,'Internet Network Setup', 350.00);



prompt Inserting into Service_Is_Service_Type table
INSERT INTO Service_Is_Service_Type(SERVICE_ID, SERVICE_TYPE_ID) VALUES
(311001,610001);
INSERT INTO Service_Is_Service_Type(SERVICE_ID, SERVICE_TYPE_ID) VALUES
(311002,610002);
INSERT INTO Service_Is_Service_Type(SERVICE_ID, SERVICE_TYPE_ID) VALUES
(311002,610003);
INSERT INTO Service_Is_Service_Type(SERVICE_ID, SERVICE_TYPE_ID) VALUES
(311002,610004);
INSERT INTO Service_Is_Service_Type(SERVICE_ID, SERVICE_TYPE_ID) VALUES
(311003,610005);
INSERT INTO Service_Is_Service_Type(SERVICE_ID, SERVICE_TYPE_ID) VALUES
(311003,610006);
INSERT INTO Service_Is_Service_Type(SERVICE_ID, SERVICE_TYPE_ID) VALUES
(311004,610007);
INSERT INTO Service_Is_Service_Type(SERVICE_ID, SERVICE_TYPE_ID) VALUES
(311005,610008);
INSERT INTO Service_Is_Service_Type(SERVICE_ID, SERVICE_TYPE_ID) VALUES
(311006,610009);
INSERT INTO Service_Is_Service_Type(SERVICE_ID, SERVICE_TYPE_ID) VALUES
(311007,610010);
INSERT INTO Service_Is_Service_Type(SERVICE_ID, SERVICE_TYPE_ID) VALUES
(311008,610011);
INSERT INTO Service_Is_Service_Type(SERVICE_ID, SERVICE_TYPE_ID) VALUES
(311009,610012);
INSERT INTO Service_Is_Service_Type(SERVICE_ID, SERVICE_TYPE_ID) VALUES
(311010,610013);
INSERT INTO Service_Is_Service_Type(SERVICE_ID, SERVICE_TYPE_ID) VALUES
(311011,610014);
INSERT INTO Service_Is_Service_Type(SERVICE_ID, SERVICE_TYPE_ID) VALUES
(311012,610015);



prompt Inserting into Maintenance_Contract table

INSERT INTO Maintenance_Contract(CONTRACT_ID, Contract_start_date, Contract_end_date,Ticket_id, Customer_id) VALUES
(500001, '07-JAN-2021', '09-JAN-2021',900001,300009);
INSERT INTO Maintenance_Contract(CONTRACT_ID, Contract_start_date, Contract_end_date,Ticket_id, Customer_id) VALUES
(500002, '04-OCT-2021', '06-OCT-2021',900002,300010);
INSERT INTO Maintenance_Contract(CONTRACT_ID, Contract_start_date, Contract_end_date,Ticket_id, Customer_id) VALUES
(500003, '01-DEC-2022', '03-DEC-2022',900003,300011);
INSERT INTO Maintenance_Contract(CONTRACT_ID, Contract_start_date, Contract_end_date,Ticket_id, Customer_id) VALUES
(500004, '28-DEC-2022', '30-DEC-2022',900004,300012);
INSERT INTO Maintenance_Contract(CONTRACT_ID, Contract_start_date, Contract_end_date,Ticket_id, Customer_id) VALUES
(500005, '03-JAN-2023', '05-JAN-2023',900005,300013);
INSERT INTO Maintenance_Contract(CONTRACT_ID, Contract_start_date, Contract_end_date,Ticket_id, Customer_id) VALUES
(500006, '05-MAR-2023', '07-MAR-2023',900006,300014);
INSERT INTO Maintenance_Contract(CONTRACT_ID, Contract_start_date, Contract_end_date,Ticket_id, Customer_id) VALUES
(500007, '08-JUN-2022', '10-JUN-2023',900007,300015);
INSERT INTO Maintenance_Contract(CONTRACT_ID, Contract_start_date, Contract_end_date,Ticket_id, Customer_id) VALUES
(500008, '26-JUL-2023', '28-JUL-2023',900008,300009);
INSERT INTO Maintenance_Contract(CONTRACT_ID, Contract_start_date, Contract_end_date,Ticket_id, Customer_id) VALUES
(500009, '03-AUG-2023', '05-AUG-2023',900009,300009);
INSERT INTO Maintenance_Contract(CONTRACT_ID, Contract_start_date, Contract_end_date,Ticket_id, Customer_id) VALUES
(500010, '14-SEP-2023', '16-SEP-2023',900010,300010);
INSERT INTO Maintenance_Contract(CONTRACT_ID, Contract_start_date, Contract_end_date,Ticket_id, Customer_id) VALUES
(500011, '02-OCT-2023', '04-OCT-2023',900011,300011);
INSERT INTO Maintenance_Contract(CONTRACT_ID, Contract_start_date, Contract_end_date,Ticket_id, Customer_id) VALUES
(500012, '20-NOV-2022', '22-NOV-2023',900012,300012);
INSERT INTO Maintenance_Contract(CONTRACT_ID, Contract_start_date, Contract_end_date,Ticket_id, Customer_id) VALUES
(500013, '23-DEC-2023', '25-DEC-2023',900013,300013);
INSERT INTO Maintenance_Contract(CONTRACT_ID, Contract_start_date, Contract_end_date,Ticket_id, Customer_id) VALUES
(500014, '12-JAN-2024', '15-JAN-2024',900014,300014);
INSERT INTO Maintenance_Contract(CONTRACT_ID, Contract_start_date, Contract_end_date,Ticket_id, Customer_id) VALUES
(500015, '03-FEB-2024', '05-FEB-2024',900015,300015);

prompt Inserting into Contract_Type table
INSERT INTO Contract_Type(CONTRACT_TYPE_ID, Contract_name,Contract_Cost) VALUES
(510001,'Monthly Check Up',400.00);
INSERT INTO Contract_Type(CONTRACT_TYPE_ID, Contract_name,Contract_Cost) VALUES
(510002,'Semi-annual Check Up',450.00);
INSERT INTO Contract_Type(CONTRACT_TYPE_ID, Contract_name,Contract_Cost) VALUES
(510003,'Yearly Check Up',600.00);
INSERT INTO Contract_Type(CONTRACT_TYPE_ID, Contract_name,Contract_Cost) VALUES
(510004,'Windows System Update',300.00);
INSERT INTO Contract_Type(CONTRACT_TYPE_ID, Contract_name,Contract_Cost) VALUES
(510005,'Mac System Update',300.00);
INSERT INTO Contract_Type(CONTRACT_TYPE_ID, Contract_name,Contract_Cost) VALUES
(510006,'Linus System Update',300.00);
INSERT INTO Contract_Type(CONTRACT_TYPE_ID, Contract_name,Contract_Cost) VALUES
(510007,'Emergency Support Type 1',800.00);
INSERT INTO Contract_Type(CONTRACT_TYPE_ID, Contract_name,Contract_Cost) VALUES
(510008,'Emergency Support Type 2',650.00);
INSERT INTO Contract_Type(CONTRACT_TYPE_ID, Contract_name,Contract_Cost) VALUES
(510009,'Emergency Support Type 3',500.00);
INSERT INTO Contract_Type(CONTRACT_TYPE_ID, Contract_name,Contract_Cost) VALUES
(510010,'Network Maintenance',400.00);
INSERT INTO Contract_Type(CONTRACT_TYPE_ID, Contract_name,Contract_Cost) VALUES
(510011,'Database Maintenance',450.00);
INSERT INTO Contract_Type(CONTRACT_TYPE_ID, Contract_name,Contract_Cost) VALUES
(510012,'Security Maintenance',500.00);
INSERT INTO Contract_Type(CONTRACT_TYPE_ID, Contract_name,Contract_Cost) VALUES
(510013,'Overall Maintenance',1000.00);
INSERT INTO Contract_Type(CONTRACT_TYPE_ID, Contract_name,Contract_Cost) VALUES
(510014,'Customer Maintenance',400.00);
INSERT INTO Contract_Type(CONTRACT_TYPE_ID, Contract_name,Contract_Cost) VALUES
(510015,'Employee Maintenance',400.00);

Prompt Inserting into Contract_Is_Contract_Type table
INSERT INTO Contract_Is_Contract_Type(CONTRACT_ID,CONTRACT_TYPE_ID) VALUES
(500001,510001);
INSERT INTO Contract_Is_Contract_Type(CONTRACT_ID,CONTRACT_TYPE_ID) VALUES
(500001,510002);
INSERT INTO Contract_Is_Contract_Type(CONTRACT_ID,CONTRACT_TYPE_ID) VALUES
(500002,510010);
INSERT INTO Contract_Is_Contract_Type(CONTRACT_ID,CONTRACT_TYPE_ID) VALUES
(500002,510015);
INSERT INTO Contract_Is_Contract_Type(CONTRACT_ID,CONTRACT_TYPE_ID) VALUES
(500003,510015);
INSERT INTO Contract_Is_Contract_Type(CONTRACT_ID,CONTRACT_TYPE_ID) VALUES
(500004,510015);
INSERT INTO Contract_Is_Contract_Type(CONTRACT_ID,CONTRACT_TYPE_ID) VALUES
(500005,510014);
INSERT INTO Contract_Is_Contract_Type(CONTRACT_ID,CONTRACT_TYPE_ID) VALUES
(500006,510012);
INSERT INTO Contract_Is_Contract_Type(CONTRACT_ID,CONTRACT_TYPE_ID) VALUES
(500007,510005);
INSERT INTO Contract_Is_Contract_Type(CONTRACT_ID,CONTRACT_TYPE_ID) VALUES
(500008,510010);
INSERT INTO Contract_Is_Contract_Type(CONTRACT_ID,CONTRACT_TYPE_ID) VALUES
(500009,510006);
INSERT INTO Contract_Is_Contract_Type(CONTRACT_ID,CONTRACT_TYPE_ID) VALUES
(500010,510005);
INSERT INTO Contract_Is_Contract_Type(CONTRACT_ID,CONTRACT_TYPE_ID) VALUES
(500011,510003);
INSERT INTO Contract_Is_Contract_Type(CONTRACT_ID,CONTRACT_TYPE_ID) VALUES
(500012,510002);
INSERT INTO Contract_Is_Contract_Type(CONTRACT_ID,CONTRACT_TYPE_ID) VALUES
(500013,510001);



