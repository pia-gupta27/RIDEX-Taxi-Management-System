/*Procedure Code 1*/

CREATE OR REPLACE PROCEDURE BOOK_TAXI
( Name IN VARCHAR2
, v_Address IN VARCHAR2
, v_Contact IN VARCHAR2
, Taxi_Model IN VARCHAR2
, v_Gender IN VARCHAR2
, Advance IN decimal
)
AS
BEGIN
DECLARE
v_usr_id INT :=-1;
v_Trip_id INT :=-1;
v_Bill_no INT :=-1;
v_Taxi_id INT :=-1;
v_Driver_id INT :=1;
BEGIN
select MAX(Usr_id)+1 into v_usr_id from USER_TBL ;
select MAX(Trip_id)+1 into v_Trip_id from TRIP_DETAILS ;
select MAX(Bill_no)+1 into v_Bill_no from BILL_DETAILS ;
select taxi_id, Driver_id into v_Taxi_id,v_Driver_id from TAXI where Status = 'Available' and Taxi_Model = Taxi_Model;
INSERT INTO USER_TBL values(v_usr_id, SUBSTR (Name, 1, INSTR(Name,' ',1)),SUBSTR (Name, INSTR(Name,' ',1)+1,LENGTH(Name)),v_Contact,v_Gender,v_Address,v_Taxi_id);
INSERT INTO TRIP_DETAILS values(v_Trip_id,sysdate, 50,v_Driver_id,v_usr_id,v_Taxi_id,sysdate,null);
INSERT INTO BILL_DETAILS values(v_Bill_no,null,Advance,null,null,v_usr_id,v_Trip_id);
END ;
END;
/

/*Procedure Code 2*/

CREATE OR REPLACE PROCEDURE TRIP_END(v_trip IN INT , v_discount IN Decimal ) AS
BEGIN
DECLARE
v_total_time INT := -1;
v_bill_no INT :=-1;
BEGIN
select extract(day from (sysdate - Strt_time))*24 + extract(hour from (sysdate - Strt_time)) into v_total_time from TRIP_DETAILS where Trip_id = v_trip;
update TRIP_DETAILS set End_time = sysdate where Trip_id = Trip_id ;
update BILL_DETAILS set Bill_date = sysdate , Discount_amt = v_discount ,Total_amt = (v_total_time * 15) - v_discount where Trip_id = v_trip ;
END ;
END ;