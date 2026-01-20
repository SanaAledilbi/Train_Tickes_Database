-- Train Table Creation
-- Stores information about trains

CREATE TABLE train (
    trainID NUMBER(3) PRIMARY KEY,
    seatnumbers INT,

    CONSTRAINT pk_train PRIMARY KEY(trainID) 

);
