-- Trip Cancelation Table Creation
-- Stores trip cancellation records

CREATE TABLE TripCancelation (
    TicketID INT,
    PassengerID INT,
    passengerPhone VARCHAR (50) NOT NULL,
    passengerEmail varchar(50) NOT NULL,
    trainID INT,
    TheReason VARCHAR(100) NOT NULL,
    PurchasedDate TIMESTAMP,
    
    CONSTRAINT fk_TicketIDCancel FOREIGN KEY (TicketID) REFERENCES Ticket (TicketID),
    CONSTRAINT fk_PassengerIDcancel FOREIGN KEY (PassengerID) REFERENCES Passengers (PassengerID)
);
