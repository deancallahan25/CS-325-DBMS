--325design.sql
/*
Group Members: Dean Callahan, Jaztin Marasigan, Nathan Watson
CS 325 - Fall 2024
Date Last Modified: 12/10/24
*/

/*
Describes our Humboldt Haven business (Computer Repair and Support Company)
Attribute Dba is the name and an acronym for ‘Doing business as’. 
This is separate from the small business table
*/

drop table Business cascade constraints;
create table Business
(BUSINESS_ID int,
Tax_id int,
Dba varchar(50) not null,
Address varchar(50),
Hours_operation varchar(15),
primary key (BUSINESS_ID)
);

/*
Describes the employees of the business
Empl_type refers to only technicans or managers. 
Per our rules, we want the salary to be positive 
and for there to always be an empl_id
*/

drop table Employee cascade constraints;
create table Employee
(EMPL_ID int not null,
Empl_salary decimal(10, 2),
constraint check_empl_salary check (Empl_salary >= 0),
Empl_fname varchar(20),
Empl_lname varchar(20),
Empl_address varchar(40),
Business_id int not null,
Empl_type varchar(15),
Hiredate date,
primary key (EMPL_ID),
foreign key (Business_id) references Business(BUSINESS_ID)
);

/*
Describes how an employee can provide multiple email addresses
*/

drop table Empl_Email cascade constraints;
create table Empl_Email
(EMPL_ID int,
EMPL_EMAIL varchar(50),
primary key (EMPL_ID, EMPL_EMAIL),
foreign key (EMPL_ID) references Employee(EMPL_ID)
);

/*
Describes how an employee can provide multiple phone numbers
*/

drop table Empl_Phone cascade constraints;
create table Empl_Phone
(EMPL_ID int,
EMPL_PHONE varchar(50),
primary key (EMPL_ID, EMPL_PHONE),
foreign key (EMPL_ID) references Employee(EMPL_ID)
);

/*
Describes the businesses' inventory
Per our business rules we always want the quantity to be positive (includes 0)
*/

drop table Inventory cascade constraints;
create table Inventory
(INVENTORY_ID int,
Item_count int check (Item_count>=0),
Inventory_condition varchar(50),
Business_id int,
primary key (INVENTORY_ID),
foreign key (Business_id) references Business(BUSINESS_ID)
);

/*
Describes the businesses' work schedule with shifts
*/

drop table Work_Schedule cascade constraints;
create table Work_Schedule
(SCHEDULE_ID int,
Hours_operation varchar(15),
Date_scheduled date,
Business_id int,
primary key (SCHEDULE_ID),
foreign key (Business_id) references Business(BUSINESS_ID)
);



/*
Describes how long the employees work for during their shift
*/
drop table Shift cascade constraints;
create table Shift
(SHIFT_ID int,
Total_hours_worked int,
Schedule_id int,
Empl_id int, 
primary key (SHIFT_ID),
foreign key (Schedule_id) references Work_Schedule(SCHEDULE_ID),
foreign key (Empl_id) references Employee(EMPL_ID)
);


/*
Describes the employee of type manager
We always want there to be at least one manager working so it can't be null
We want the manager to oversee the inventory and work_schedule that is
why we included the inventory_id and schedule_id attributes 
*/

drop table Manager cascade constraints;
create table Manager
(EMPL_ID int,
Manager_id int not null,
Manager_bonus decimal(10, 2),
Inventory_id int not null,
Schedule_id int not null,
primary key (EMPL_ID),
foreign key (EMPL_ID) references Employee(EMPL_ID),
foreign key (Inventory_id) references Inventory(INVENTORY_ID),
foreign key (Schedule_id) references Work_Schedule(SCHEDULE_ID)
);

/*
Describes the technician employee
We want there to always be at least one technician working so
it can't be null. 
*/

drop table Technician cascade constraints;
create table Technician
(EMPL_ID int,
Technician_id int not null,
Tickets_completed int,
primary key (EMPL_ID),
foreign key (EMPL_ID) references Employee(EMPL_ID)
);

/*
Describes a technicans tech certificates
We want a technician to always have at least one 
certification therefore it can't be null
*/

drop table Technician_Tech_Certifications;
create table Technician_Tech_Certifications
(EMPL_ID int,
TECH_CERTIFICATIONS varchar(50) not null,
primary key (EMPL_ID, TECH_CERTIFICATIONS),
foreign key (EMPL_ID) references Technician(EMPL_ID)
);

/*
Describes a customer of the business
We always want a customer id to not be null per our rules
*/

drop table Customer cascade constraints;
create table Customer
(CUSTOMER_ID int not null,
Cust_Address varchar(50),
Business_id int not null,
Cust_type varchar(50),
primary key (CUSTOMER_ID),
foreign key (Business_id) references Business(BUSINESS_ID)
);

/*
Describes the individual client customer
(subtype of customer seperate from other customer because we want individual clients 
to be eligible for certain things small businesses are not eligible for and vice versa
*/

drop table Individual_Client cascade constraints;
create table Individual_Client
(CUSTOMER_ID int,
Client_id int,
Client_fname varchar(50),
Client_lname varchar(50),
primary key (CUSTOMER_ID),
foreign key (CUSTOMER_ID) references Customer(CUSTOMER_ID)
);

/*
Describes the small business customer
(substype of customer seperated so it can apply for certain things, also seperate from normal business entity 
as its really just another type of customer)
*/

drop table Small_Business cascade constraints;
create table Small_Business
(CUSTOMER_ID int,
Small_business_id int,
Tax_id int,
Dba varchar(50),
primary key (CUSTOMER_ID),
foreign key (CUSTOMER_ID) references Customer(CUSTOMER_ID)
);

/*
Describes how a customer can provide multiple emails
*/

drop table Cust_Email cascade constraints;
create table Cust_Email
(CUST_ID int,
CUST_EMAIL varchar(50),
primary key (CUST_ID, CUST_EMAIL),
foreign key (CUST_ID) references Customer(CUSTOMER_ID)
);

/*
Describes how a customer can provide multiple phone numbers
*/

drop table Cust_Phone cascade constraints;
create table Cust_Phone
(CUST_ID int,
CUST_PHONE varchar(50),
primary key (CUST_ID, CUST_PHONE),
foreign key (CUST_ID) references Customer(CUSTOMER_ID)
);


/*
Describes the renting of equipment. Per our business rules and general logic date_returned 
must be later or the same day as date_rented
*/

drop table Equipment_Rental cascade constraints;
create table Equipment_Rental
(RENTAL_ID int,
Date_rented date,
Date_returned date,
primary key(RENTAL_ID),
constraint check_rental_date check (Date_returned>=Date_rented)
);

--Describes the equipment technicians can use

drop table Equipment cascade constraints;
create table Equipment
(EQUIPMENT_ID int,
Inventory_id int,
Rental_id int,
primary key (EQUIPMENT_ID),
foreign key (Inventory_id) references Inventory(INVENTORY_ID),
foreign key (Rental_id) references Equipment_Rental(RENTAL_ID)
);




--Describes the service job each equipment can do

drop table Equipment_Service_Function cascade constraints;
create table Equipment_Service_Function
(EQUIPMENT_ID int,
SERVICE_FUNCTION varchar(35),
primary key (EQUIPMENT_ID, SERVICE_FUNCTION),
foreign key (EQUIPMENT_ID) references Equipment(EQUIPMENT_ID)
);

--Describes the contract job each equipment can do

drop table Equipment_Contract_Function cascade constraints;
create table Equipment_Contract_Function
(EQUIPMENT_ID int,
CONTRACT_FUNCTION varchar(50),
primary key (EQUIPMENT_ID, CONTRACT_FUNCTION),
foreign key (EQUIPMENT_ID) references Equipment(EQUIPMENT_ID)
);

--Describes how technicians rent equipment from equipment rental

drop table Technicians_Rents_From_Equipment_Rental cascade constraints;
create table Technicians_Rents_From_Equipment_Rental
(EMPL_ID int,
RENTAL_ID int,
primary key (EMPL_ID, RENTAL_ID),
foreign key (EMPL_ID) references Technician(EMPL_ID),
foreign key (RENTAL_ID) references Equipment_Rental(RENTAL_ID)
);

/*
Describes a ticket about a job made by customer that is then fixed by a technician
Per logic and our rules the check is included to make sure the date_closed is after the opening of the ticket
 */

drop table Ticket cascade constraints;
create table Ticket
(TICKET_ID int,
Date_opened date,
Date_closed date,
constraint date_check check (Date_closed >=Date_opened),
status varchar(50),
cust_id int,
primary key (TICKET_ID),
foreign key (cust_id) references Customer(CUSTOMER_ID)
);

--Describes how a technician is meant to fix/address tickets

drop table Technicians_Resolve_Ticket cascade constraints;
create table Technicians_Resolve_Ticket
(EMPL_ID int,
TICKET_ID int,
primary key (EMPL_ID, TICKET_ID),
foreign key (EMPL_ID) references Technician(EMPL_ID),
foreign key (TICKET_ID) references Ticket(TICKET_ID)
);

--Describes how a customer submits a ticket

drop table Customer_Submit_Ticket cascade constraints;
create table Customer_Submit_Ticket
(CUSTOMER_ID int,
TICKET_ID int,
primary key (CUSTOMER_ID, TICKET_ID),
foreign key (CUSTOMER_ID) references Customer(CUSTOMER_ID),
foreign key (TICKET_ID) references Ticket(TICKET_ID)
);

--Describes the actual transaction service between the customer and the business

drop table Transaction cascade constraints;
create table Transaction
(TRANSACTION_ID int,
Amount_due decimal(10, 2),
Date_due date,
Customer_id int,
primary key (TRANSACTION_ID),
foreign key (Customer_id) references Customer(CUSTOMER_ID)
);

/*
Describes how a customer must pay for a transaction. 
Payment method is the way they pay such as card or check
*/

drop table Payment cascade constraints;
create table Payment
(PAYMENT_ID int,
Payment_method varchar(15),
Amount_paid decimal(10, 2),
Currency varchar(10),
Business_id int not null,
Transaction_id int,
primary key (PAYMENT_ID),
foreign key (Business_id) references Business(BUSINESS_ID),
foreign key (Transaction_id) references Transaction(TRANSACTION_ID)
);

/*Describes the services an individual client (not a small business customer) can request 
Service ID should be unique and not null per our rules
Included a check so the start and end dates make logical sense
*/

drop table Service cascade constraints;
create table Service
(SERVICE_ID int not null,
Service_start_date date,
Service_end_date date,
Ticket_id int,
Customer_id int,
primary key (SERVICE_ID),
constraint service_check_date check (Service_end_date>=Service_start_date),
foreign key (Ticket_id) references Ticket(TICKET_ID),
foreign key (Customer_id) references Customer(CUSTOMER_ID)
);

--Describes the type of services an individual client can request

drop table Service_Type cascade constraints;
create table Service_Type
(SERVICE_TYPE_ID int,
Service_name varchar(50),
Service_cost decimal(10, 2),
primary key (SERVICE_TYPE_ID)
);

--Describes how individual clients can request multiple services

drop table Service_Is_Service_Type cascade constraints;
create table Service_Is_Service_Type
(SERVICE_ID int,
SERVICE_TYPE_ID int,
primary key (SERVICE_ID, SERVICE_TYPE_ID),
foreign key (SERVICE_ID) references Service(SERVICE_ID),
foreign key (SERVICE_TYPE_ID) references Service_Type(SERVICE_TYPE_ID)
);

/*
Describes the contracts only a small business customer can request
Contract id should be unqiue and not null per our rules
Included a check so the start dates and end dates make logical sense 
*/

drop table Maintenance_Contract cascade constraints;
create table Maintenance_Contract
(CONTRACT_ID int,
Contract_start_date date,
Contract_end_date date,
Ticket_id int,
Customer_id int,
primary key (CONTRACT_ID),
constraint contract_date_check check (Contract_end_date>=Contract_start_date),
foreign key (Ticket_id) references Ticket(TICKET_ID),
foreign key (Customer_id) references Small_Business(CUSTOMER_ID)
);

--Describes the contract types our small business customers can request

drop table Contract_Type cascade constraints;
create table Contract_Type
(CONTRACT_TYPE_ID int,
Contract_name varchar(50),
Contract_cost decimal(10, 2),
primary key (CONTRACT_TYPE_ID)
);

--Describes how small businesses can request multiple contracts

drop table Contract_Is_Contract_Type cascade constraints;
create table Contract_Is_Contract_Type
(CONTRACT_ID int,
CONTRACT_TYPE_ID int,
primary key (CONTRACT_ID, CONTRACT_TYPE_ID),
foreign key (CONTRACT_ID) references Maintenance_Contract(CONTRACT_ID),
foreign key (CONTRACT_TYPE_ID) references Contract_Type(CONTRACT_TYPE_ID)
);

