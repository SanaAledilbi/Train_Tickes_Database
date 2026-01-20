-- Ticket Table Creation
-- Stores ticket booking information

CREATE TABLE Ticket (
    TicketID INT,
    PassengerID INT
    tripID INT,
    ArrivalStation VARCHAR(50),
    DepartureStation VARCHAR(50),
    DepartureDateTime TIMESTAMP,
    ArrivalDateTime TIMESTAMP,
    PurchasedDate TIMESTAMP,
    className VARCHAR(50),
    SeatNumbers INT,

    CONSTRAINT pk_ticket PRIMARY KEY(TicketID),
    CONSTRAINT fk_PassengerID FOREIGN KEY (PassengerID) REFERENCES Passengers (PassengerID),
    CONSTRAINT fk_TicketTripID FOREIGN KEY (TripID) REFERENCES TrainTrip (TripID)
);
