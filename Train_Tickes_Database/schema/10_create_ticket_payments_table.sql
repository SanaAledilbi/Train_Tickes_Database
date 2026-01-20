-- Ticket Payments Table Creation
-- Stores payment transaction information

CREATE TABLE TicketPayments (
    PaymentID INT,
    PassengerID INT,
    passengerName VARCHAR(50),
    TicketID INT,
    PaymentAmount DECIMAL(10, 2),
    PaymentDate TIMESTAMP,
    PaymentMethod VARCHAR(20),
    
    CONSTRAINT pk_PaymentID PRIMARY KEY(PaymentID),
    CONSTRAINT fk_passengerNamePayment FOREIGN KEY (passengerID) REFERENCES Passengers (passengerID)
);
