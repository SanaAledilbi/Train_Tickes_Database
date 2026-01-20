-- Ticket Type Table Creation
-- Stores different types of tickets and their attributes

CREATE TABLE TicketType (
    className VARCHAR(50),
    OnboardMeal VARCHAR(30),
    OnboardBaggage VARCHAR(30),
    CheckedBaggage VARCHAR (30),
    priceAmount INT,
    CONSTRAINT pk_className PRIMARY KEY(className)
);
