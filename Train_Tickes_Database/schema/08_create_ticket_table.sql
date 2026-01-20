-- Ticket Table Creation
-- Stores ticket booking information

CREATE TABLE Ticket (
    TicketID NUMBER PRIMARY KEY,
    PassengerID NUMBER,
    tripID NUMBER,
    ArrivalStation VARCHAR2(50),
    DepartureStation VARCHAR2(50),
    DepartureDateTime TIMESTAMP,
    ArrivalDateTime TIMESTAMP,
    PurchasedDate TIMESTAMP,
    TicketPrice NUMBER(10,2),
    className VARCHAR2(20),
    seatnumbers NUMBER,
    -- Add foreign keys
    CONSTRAINT fk_passengerID FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID),
    CONSTRAINT fk_tripID FOREIGN KEY (tripID) REFERENCES TrainTrip(TripID)
);
