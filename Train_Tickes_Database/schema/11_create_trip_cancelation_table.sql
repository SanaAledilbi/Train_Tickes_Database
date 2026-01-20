-- Trip Cancelation Table Creation
-- Stores trip cancellation records

CREATE TABLE TripCancelation (
    TicketID NUMBER PRIMARY KEY,
    PassengerID NUMBER,
    passengerPhone VARCHAR2(20),
    passengerEmail VARCHAR2(100),
    PurchasedDate TIMESTAMP,
    trainID NUMBER(3),
    TheReason VARCHAR2(200),
    -- Add foreign keys
    CONSTRAINT fk_trainID_TC FOREIGN KEY (trainID) REFERENCES Train(trainID)
);
