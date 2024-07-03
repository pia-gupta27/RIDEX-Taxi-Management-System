# RideX - Taxi Management System

## Project Overview

RideX is a comprehensive taxi management system designed to handle inter-city travel bookings. The system encompasses various aspects of the taxi service including user management, driver management, trip details, billing, and feedback. This project is a database system, demonstrating the use of SQL for database creation, management, and manipulation.

## Table of Contents

- [Project Overview](#project-overview)
- [Team Members](#team-members)
- [Tables](#tables)
  - [Taxi Table](#taxi-table)
  - [User Table](#user-table)
  - [Driver Table](#driver-table)
  - [Trip Details Table](#trip-details-table)
  - [Bill Details Table](#bill-details-table)
  - [Customer Service Table](#customer-service-table)
  - [Feedback Table](#feedback-table)
  - [Owns Table](#owns-table)
  - [Owner Taxi Table](#owner-taxi-table)
- [ER Diagram](#er-diagram)
- [Mapping ER to Relational Schema](#mapping-er-to-relational-schema)
- [How to Run the Project](#how-to-run-the-project)

## Team Members
- Pia Gupta (102103394)
- Anupriya Lathey (102103373)
- Nitleen Kaur (102003377)

## Tables

### Taxi Table
![Taxi Table](https://github.com/pia-gupta27/RIDEX_-Taxi-Management-System/assets/138195849/2ef006eb-66b8-4d31-96a0-70484d03dec5)
- This table stores information about taxis, including taxi ID, registration number, model, and driver ID.

### User Table
![User Table](https://github.com/pia-gupta27/RIDEX_-Taxi-Management-System/assets/138195849/4139af1e-1cee-4768-853f-f62615343b2c)
- The user table contains details of users who book taxis, such as user ID, name, contact information, and address.

### Driver Table
![Driver Table](https://github.com/pia-gupta27/RIDEX_-Taxi-Management-System/assets/138195849/bdac7bc8-b6ae-4553-9a91-1e73c54aa323)
- Details of taxi drivers are stored in this table, including driver ID, name, age, rating, and contact details.

### Trip Details Table
![Trip Details Table](https://github.com/pia-gupta27/RIDEX_-Taxi-Management-System/assets/138195849/ecb9c6b2-f035-4d93-a409-f55acd233117)
- This table records information about each taxi trip, such as trip ID, trip date, amount, start time and end time.

### Bill Details Table
![Bill Details Table](https://github.com/pia-gupta27/RIDEX_-Taxi-Management-System/assets/138195849/6799ea10-18bc-4b7c-956b-2bd297237365)
- Contains billing information for each trip, including bill ID, trip ID, advance amount, discount amount and total amount.

### Customer Service Table
![Customer Service Table](https://github.com/pia-gupta27/RIDEX_-Taxi-Management-System/assets/138195849/c6156051-4add-4673-bc49-01de0b0c6c1f)
- Stores records of customer service interactions, including interaction ID, user ID, driver ID, date, and details of the issue.

### Feedback Table
![Feedback Table](https://github.com/pia-gupta27/RIDEX_-Taxi-Management-System/assets/138195849/c6a88168-2516-43ea-9f23-7150c762228b)
- This table captures feedback from users about their taxi experience, including feedback ID, message, user ID and trip ID.

### Owns Table
![Owns Table](https://github.com/pia-gupta27/RIDEX_-Taxi-Management-System/assets/138195849/4d94e690-f4df-40ce-89cd-95aa0136bb56)
- Records the ownership relationship between owners and taxis, with fields for owner ID and number of taxis.

### Owner Taxi Table
![Owner Taxi Table](https://github.com/pia-gupta27/RIDEX_-Taxi-Management-System/assets/138195849/d4eb1d0f-b32b-4526-bd8e-607bfde6cc5a)
- This table details the ownership of taxis, including owner ID and taxi ID.

## ER Diagram
![ER Diagram](https://github.com/pia-gupta27/RIDEX_-Taxi-Management-System/assets/138195849/5d1a035c-bf74-4604-928c-89d0325e0141)

## Mapping ER to Relational Schema
![Mapping ER to Relational Schema](https://github.com/pia-gupta27/RIDEX_-Taxi-Management-System/assets/138195849/e9e00607-b0b4-4867-87e5-9446126dc1e9)

## How to Run the Project

1. **Setup the Database**: Install a SQL database management system (e.g., MySQL, PostgreSQL). Can use Oracle Live SQL.
2. **Create the Database**: Use the provided SQL statements to create the database and tables.
3. **Insert Data**: Populate the tables using the insert commands.
4. **Execute Procedures and Triggers**: Set up and execute the PL/SQL procedures and triggers.
