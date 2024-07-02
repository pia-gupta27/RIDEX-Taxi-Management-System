/*FUNCTION*/

CREATE OR REPLACE FUNCTION TOTAL_SUM (U_id NUMBER)
RETURN NUMBER IS
final_sum NUMBER;
BEGIN
select sum(Total_amt) into final_sum from BILL_DETAILS where Usr_id=U_id;
RETURN(final_sum);
END;
/
DECLARE
U NUMBER;
FINAL_SUM NUMBER;
BEGIN
U:=201; --U:=&Usr_id;
FINAL_SUM:= TOTAL_SUM(U);
DBMS_OUTPUT.PUT_LINE('Total amount paid by user with user id ' || U || ' is ' || FINAL_SUM);
END;