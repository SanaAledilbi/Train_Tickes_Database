# Train Ticketing Database System

A comprehensive relational database system built with Oracle SQL for managing train operations, passenger bookings, ticket reservations, and financial reporting.

---

## Overview

This database system provides a complete solution for railway ticket management, designed following database normalization principles and best practices. The system handles train schedules, passenger information, ticket bookings, seat reservations, and generates various operational and financial reports.

---

## Database Structure

### Key Features:
- **11 Relational Tables** with 3 tables normalized to Third Normal Form (3NF) "in the report file"
- **50+ SQL Queries** for data retrieval and reporting
- **Relational Integrity** with proper foreign key constraints
- **Comprehensive Coverage** of train operations and ticketing processes

### Core Entities:
- Train information and schedules
- Passenger details and profiles
- Ticket bookings and reservations
- Seat assignments and availability
- Routes and stations
- Pricing and fare calculations
- Payment transactions
- Financial reporting data

---

## Functionality

The database supports the following operations:

### Booking Management
- Create and manage passenger bookings
- Check seat availability
- Process ticket reservations
- Handle cancellations and refunds

### Operations Management
- Track train schedules and routes
- Monitor seat occupancy
- Manage station information
- Update train status

### Financial Reporting
- Generate revenue reports
- Track booking statistics
- Calculate fare summaries
- Monitor payment transactions

### Query Operations
- Complex JOIN operations across multiple tables
- Aggregate functions for reporting
- Filtering and searching capabilities
- Data analysis queries

---

## Technologies Used

- **Database Management System**: Oracle SQL
- **Normalization**: Third Normal Form (3NF)
- **SQL Features**: DDL, DML, Complex Queries, Joins, Aggregations

---

## Database Schema

The database consists of 11 interconnected tables designed to eliminate redundancy and ensure data integrity:

   - Train
   - Stations
   - TicketType
   - Employee
   - Passengers
   - TrainTrip
   - AdvancedTrainTrip
   - Ticket
   - AdvancedTrainTicket
   - TicketPayments
   - TripCancelation

*(Exact table names and relationships are defined in the SQL scripts)*

### Entity-Relationship Diagram
![ER Diagram](Train_Tickes_Database/images/er_diagram.png)

### Database Schema
![Schema Diagram](Train_Tickes_Database/images/schema_diagram.png)

---

## SQL Query Categories

The project includes 50+ queries covering:

- **Basic Queries**: SELECT, WHERE, ORDER BY
- **Join Operations**: INNER JOIN, LEFT JOIN, multiple table joins
- **Aggregate Functions**: COUNT, SUM, AVG, MAX, MIN
- **Grouping**: GROUP BY, HAVING clauses
- **Subqueries**: Nested SELECT statements
- **Data Modification**: INSERT, UPDATE, DELETE
- **Reporting**: Complex analytical queries

---

## Sample Use Cases

1. **Find all available seats** for a specific train and date
2. **Calculate total revenue** for a given time period
3. **List passengers** with their booking details
4. **Display train schedules** for specific routes
5. **Generate booking reports** by station or train
6. **Track payment transactions** and ticket sales
7. **Monitor seat occupancy rates** across trains

---

## Database Design Principles

- **Normalization**: Three tables follow 3NF to minimize data redundancy
- **Referential Integrity**: Foreign key constraints ensure data consistency
- **Data Types**: Appropriate data types for each column
- **Constraints**: Primary keys, foreign keys, NOT NULL, CHECK constraints
- **Indexing**: Optimized for common query patterns

---

## Learning Outcomes

This project demonstrates:
- Database design and normalization techniques
- Implementation of complex relational schemas
- Writing efficient SQL queries
- Understanding of database constraints and relationships
- Practical application of Oracle SQL features

---

## License

This project is open source and available for educational purposes.

---

## 👤 Author

**Sana Aledilbi**  
[GitHub Profile](https://github.com/SanaAledilbi)

