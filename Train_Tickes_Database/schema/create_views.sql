-- Create Views for Train Tickets Database
-- Collection of all database views

-- View 1: Train Manager View
-- Displays train managers' information
CREATE VIEW train_manager_view AS
SELECT trainID, employeeName AS managers_name, employeePhone AS manager_phone
FROM employee 
WHERE Job = 'Manager'
WITH CHECK OPTION;

-- View 2: Trip Statistics
-- Calculates statistics for train trips with ticket price >= 100
CREATE VIEW Trip_Statistics AS
SELECT
    trainID,
    DepartureStation,
    ArrivalStation,
    COUNT(*) AS Trip_Count,
    ROUND(AVG(TicketPrice), 2) AS Average_Ticket_Price,
    MAX(TicketPrice) AS Max_Ticket_Price,
    MIN(TicketPrice) AS Min_Ticket_Price
FROM AdvancedTrainTrip
WHERE TicketPrice >= 100
GROUP BY
    trainID,
    DepartureStation,
    ArrivalStation
WITH CHECK OPTION;

-- View 3: Revenue Analysis
-- Analyzes revenue for specific trains (111, 120, 110)
CREATE VIEW RevenueAnalysis AS
SELECT tripID, DepartureStation, ArrivalStation, COUNT(*) AS Total_Tickets_Sold, 
    SUM(TicketPrice) AS Total_Revenue
FROM AdvancedTrainTrip
WHERE trainID IN (111, 120, 110)
GROUP BY tripID, DepartureStation, ArrivalStation
HAVING COUNT(*) > 1
ORDER BY Total_Revenue DESC
WITH CHECK OPTION;

-- View 4: Passengers Info
-- Combines passenger, ticket, and station information for trips 2001 and 2003
CREATE VIEW Passengers_info AS
SELECT
    t.TicketID AS Ticket_Number, 
    t.tripID AS Trip_Number,
    t.DepartureStation AS Departure_Station, 
    t.ArrivalStation AS Arrival_Station,
    t.DepartureDateTime AS Departure, 
    t.ArrivalDateTime AS Arrival,
    t.TicketPrice AS Price, 
    t.className AS Class_Name,
    t.SeatNumbers AS Seat_Number, 
    p.passengerName AS Passenger_Name,
    s.Stationid AS Departure_Station_ID, 
    s2.Stationid AS Arrival_Station_ID
FROM Ticket t
JOIN Passengers p ON t.PassengerID = p.PassengerID
JOIN Stations s ON t.DepartureStation = s.StationName
JOIN Stations s2 ON t.ArrivalStation = s2.StationName
WHERE t.tripID IN (2001, 2003)
WITH CHECK OPTION;

-- View 5: Canceled Trip Details
-- Shows trip cancellations from 2024-01-01 onwards
CREATE VIEW CanceledTripDetails AS
SELECT TicketID, passengerPhone, passengerEmail, PurchasedDate, trainID, TheReason
FROM TripCancelation 
WHERE PurchasedDate >= DATE '2024-01-01'
WITH CHECK OPTION;
