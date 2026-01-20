-- Advanced Train Trip Table Creation
-- Stores extended train trip information with pricing

CREATE TABLE AdvancedTrainTrip (
    tripID NUMBER,
    trainID NUMBER(3),
    DepartureStation VARCHAR2(50),
    ArrivalStation VARCHAR2(50),
    DepartureDateTime TIMESTAMP,
    ArrivalDateTime TIMESTAMP,
    TicketPrice NUMBER(10,2),
    className VARCHAR2(20),
    -- Add primary key and foreign keys
    CONSTRAINT fk_classname_AD_Trip FOREIGN KEY (className) REFERENCES TicketType(className)
);
