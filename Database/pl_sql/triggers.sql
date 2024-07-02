/*TRIGGER 1*/

-- Trigger Creation
-- this trigger is called when inserted(After) to the feedback table
-- the trigger will decrease the driver rating by 1 if user feed back is bad for a driver

CREATE OR REPLACE TRIGGER UPDATE_DRIVER_RATING AFTER INSERT ON FEEDBACK
FOR EACH ROW
WHEN (NEW.Message like '%Bad Driver%' ) DECLARE
v_driver_id INT; BEGIN
select driver_id into v_driver_id from TRIP_DETAILS where trip_id = :NEW.Trip_id;
update DRIVER set Rating = Rating -1 where driver_id = v_driver_id;
END;
/



/*TRIGGER 2*/

-- Trigger Creation
-- this trigger is called before the INSERT OR UPDATE ON OWNS table
-- the trigger will calculate the number of cars owned by the owner and updates the no_of_cars columns in the OWNS table

CREATE OR REPLACE TRIGGER ADD_NO_OF_CARS BEFORE INSERT OR UPDATE ON OWNS
FOR EACH ROW DECLARE
v_no_of_cars INT; BEGIN
select count(Taxi_id) into v_no_of_cars from OWNER_TAXI where Owner_id = :NEW.Owner_id group by Owner_id;
:NEW.No_Cars := v_no_of_cars; END;