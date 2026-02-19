/*Group Members: Dean Callahan, Jaztin Marasigan, Nathan Watson
CS 325 - Fall 2024
Date Last Modified: 12/10/24
*/

spool 325triggers-out.txt

set linesize 150;

--Trigger 1 with Testing
prompt Testing for trigger display all of payment

select * 
from payment;

--Trigger 1 creation

CREATE OR REPLACE TRIGGER TRG_PAYMENT_METHOD_VERIFICATION
BEFORE UPDATE OF Payment_Method ON Payment
FOR EACH ROW
BEGIN
	IF :NEW.payment_method !='Check' and :NEW.payment_method !='Debit' and  :NEW.payment_method !='Credit' and 
	   :NEW.payment_method !='Invoice' and  :NEW.payment_method !='Cash' THEN RAISE_APPLICATION_ERROR(-20001, 'Invalid payment method');
	END IF;
END;
/

prompt Update Payment and Display Result

UPDATE PAYMENT
SET PAYMENT_METHOD='Venmo'
where PAYMENT_ID='410001';

select *
from payment;

--Trigger 2 with Testing

prompt Testing for trigger display all of service_type

select *
from service_type;

--Trigger 2 creation

CREATE OR REPLACE TRIGGER TRG_SERVICE_TYPE_VERIFICATION
BEFORE UPDATE OF Service_Name ON Service_Type
FOR EACH ROW
BEGIN
	IF :NEW.service_name NOT LIKE '%VIRUS REMOVAL%' AND :NEW.service_name NOT LIKE '%Hardware Upgrade%' AND
	   :NEW.service_name NOT LIKE '%Troubleshooting%' AND :NEW.service_name NOT LIKE '%Network%' THEN
	   RAISE_APPLICATION_ERROR(-20002,'Invalid service type');
	END IF;
END;
/

prompt Update service_type and Display Result

UPDATE SERVICE_TYPE
SET SERVICE_NAME='VIRUS DOWNLOAD'
where SERVICE_TYPE_ID='610001';

select *
from service_type;


spool off
set linesize 80;

