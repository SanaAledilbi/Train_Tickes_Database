-- Train Trip Table Creation
-- Stores train trip information

CREATE TABLE TrainTrip (
    TripID NUMBER PRIMARY KEY,
    trainID NUMBER(3),
    DepartureStation VARCHAR2(50),
    ArrivalStation VARCHAR2(50),
    DepartureDateTime TIMESTAMP,
    ArrivalDateTime TIMESTAMP,
    -- Add foreign keys and other constraints as needed
    CONSTRAINT fk_trainID FOREIGN KEY (trainID) REFERENCES train(trainID)
);
