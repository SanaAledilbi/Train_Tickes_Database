-- Ticket Type Table Creation
-- Stores different types of tickets and their attributes

CREATE TABLE TicketType (
    className VARCHAR2(20) PRIMARY KEY,
    priceAmount NUMBER(10,2),
    OnboardMeal VARCHAR2(20),
    -- Add other columns based on your schema
);
