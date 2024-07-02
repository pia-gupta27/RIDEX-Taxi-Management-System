CREATE TABLE TAXI (
    Taxi_id integer NOT NULL,
    Registration_no VARCHAR(20),
    Taxi_Model VARCHAR(20),
    Taxi_Year DATE,
    Taxi_type VARCHAR(20),
    Status VARCHAR(20),
    Driver_id integer,
    PRIMARY KEY (Taxi_id),
    UNIQUE (Registration_no)
);


CREATE TABLE USER_TBL (
    Usr_id integer NOT NULL,
    F_name VARCHAR(20),
    L_name VARCHAR(20),
    Contat_no integer,
    Gender VARCHAR(10),
    Address VARCHAR(50),
    Taxi_id integer,
    PRIMARY KEY (Usr_id)
);


CREATE TABLE DRIVER (
    Driver_id integer NOT NULL,
    F_name VARCHAR(10),
    L_name VARCHAR(20),
    Gender VARCHAR(10),
    Conatct_no VARCHAR(20),
    Rating integer,
    Age integer,
    PRIMARY KEY (Driver_id)
);


CREATE TABLE TRIP_DETAILS (
    Trip_id integer NOT NULL,
    Trip_date DATE,
    Trip_amt decimal(10,2),
    Driver_id integer,
    Usr_id integer,
    Taxi_id integer,
    Strt_time TIMESTAMP,
    End_time TIMESTAMP,
    PRIMARY KEY (Trip_id)
);


CREATE TABLE BILL_DETAILS (
    Bill_no integer NOT NULL,
    Bill_date DATE,
    Advance_amt decimal(10,2),
    Discount_amt decimal(10,2),
    Total_amt decimal(10,2),
    Usr_id integer,
    Trip_id integer,
    PRIMARY KEY (Bill_no),
    UNIQUE (Trip_id)
);


CREATE TABLE CUSTOMER_SERVICE (
    Emp_id integer NOT NULL,
    F_name VARCHAR(20),
    L_name VARCHAR(20),
    PRIMARY KEY (Emp_id)
);


CREATE TABLE FEEDBACK (
    Fbk_id integer NOT NULL,
    Message VARCHAR(140),
    Email VARCHAR(50),
    Emp_id integer,
    Usr_id integer,
    Trip_id integer,
    PRIMARY KEY (Fbk_id),
    UNIQUE (Emp_id)
);


CREATE TABLE OWNS (
    Owner_id integer NOT NULL,
    No_Cars integer,
    PRIMARY KEY (Owner_id)
);


CREATE TABLE OWNER_TAXI (
    Owner_id integer NOT NULL,
    Taxi_id integer,
    PRIMARY KEY (Owner_id, Taxi_id)
);


CREATE TABLE INDIVIDUAL (
    Ssn integer NOT NULL,
    Name VARCHAR(20),
    Owner_id integer,
    PRIMARY KEY (Ssn)
);


CREATE TABLE TAXI_SERVICE_COMPANY (
    Tsc_id integer NOT NULL,
    Tsc_name VARCHAR(20),
    Owner_id integer,
    PRIMARY KEY (Tsc_id)
);


ALTER TABLE TAXI ADD CONSTRAINT fk1 FOREIGN KEY (Driver_id) REFERENCES DRIVER(Driver_id) ON DELETE CASCADE;
ALTER TABLE USER_TBL ADD CONSTRAINT fk2 FOREIGN KEY (Taxi_id) REFERENCES TAXI(Taxi_id) ON DELETE CASCADE;
ALTER TABLE TRIP_DETAILS ADD CONSTRAINT fk3 FOREIGN KEY (Driver_id) REFERENCES DRIVER(Driver_id) ON DELETE CASCADE;
ALTER TABLE TRIP_DETAILS ADD CONSTRAINT fk4 FOREIGN KEY (Usr_id) REFERENCES USER_TBL(Usr_id) ON DELETE CASCADE;
ALTER TABLE TRIP_DETAILS ADD CONSTRAINT fk5 FOREIGN KEY (Taxi_id) REFERENCES TAXI(Taxi_id) ON DELETE CASCADE;
ALTER TABLE BILL_DETAILS ADD CONSTRAINT fk6 FOREIGN KEY (Trip_id) REFERENCES TRIP_DETAILS(Trip_id) ON DELETE CASCADE;
ALTER TABLE BILL_DETAILS ADD CONSTRAINT fk7 FOREIGN KEY (Usr_id) REFERENCES USER_TBL(Usr_id) ON DELETE CASCADE;
ALTER TABLE FEEDBACK ADD CONSTRAINT fk8 FOREIGN KEY (Emp_id) REFERENCES CUSTOMER_SERVICE(Emp_id) ON DELETE CASCADE;
ALTER TABLE FEEDBACK ADD CONSTRAINT fk9 FOREIGN KEY (Trip_id) REFERENCES TRIP_DETAILS(Trip_id) ON DELETE CASCADE;
ALTER TABLE FEEDBACK ADD CONSTRAINT fk10 FOREIGN KEY (Usr_id) REFERENCES USER_TBL(Usr_id) ON DELETE CASCADE;
ALTER TABLE OWNER_TAXI ADD CONSTRAINT fk11 FOREIGN KEY (Taxi_id) REFERENCES TAXI(Taxi_id) ON DELETE CASCADE;
ALTER TABLE OWNER_TAXI ADD CONSTRAINT fk12 FOREIGN KEY (Owner_id) REFERENCES OWNS(Owner_id) ON DELETE CASCADE;
ALTER TABLE INDIVIDUAL ADD CONSTRAINT fk13 FOREIGN KEY (Owner_id) REFERENCES OWNS(Owner_id) ON DELETE CASCADE;
ALTER TABLE TAXI_SERVICE_COMPANY ADD CONSTRAINT fk14 FOREIGN KEY (Owner_id) REFERENCES OWNS(Owner_id) ON DELETE CASCADE;