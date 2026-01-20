-- Ticket Payments Table Creation
-- Stores payment transaction information

CREATE TABLE TicketPayments (
    PaymentID NUMBER PRIMARY KEY,
    TicketID NUMBER,
    PassengerID NUMBER,
    passengerName VARCHAR2(100),
    PurchasedDate TIMESTAMP,
    PaymentMethod VARCHAR2(20),
    PaymentAmount NUMBER(10,2),
    -- Add foreign keys
    CONSTRAINT fk_TicketID_TP FOREIGN KEY (TicketID) REFERENCES Ticket(TicketID)
);
