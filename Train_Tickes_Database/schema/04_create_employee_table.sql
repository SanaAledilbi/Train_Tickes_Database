-- Employee Table Creation
-- Stores employee information

CREATE TABLE employee (
    employeeID INT,
    employeeName VARCHAR(50)
    VARCHAR(50)
    employeeEmail VARCHAR(50) NOT NULL
    Job VARCHAR(30) NOT NULL,
    trainID INT,
    salary INT,
    
    CONSTRAINT pk_employeeID1 PRIMARY KEY (employeeID)
    CONSTRAINT fk_employeeTrainID1 FOREIGN KEY (trainID) REFERENCES train(trainID)
);
