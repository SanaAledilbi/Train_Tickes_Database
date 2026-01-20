-- Employee Table Creation
-- Stores employee information

CREATE TABLE employee (
    employeeID NUMBER PRIMARY KEY,
    employeeName VARCHAR2(100),
    employeePhone VARCHAR2(20),
    employeeEmail VARCHAR2(100),
    Job VARCHAR2(50),
    trainID NUMBER(3),
    salary NUMBER(10,2),
    CONSTRAINT fk_employeeTrainID FOREIGN KEY (trainID) REFERENCES train(trainID)
);
