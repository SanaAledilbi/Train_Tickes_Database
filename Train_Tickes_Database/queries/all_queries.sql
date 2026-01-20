-- Train Tickets Database - All Queries
-- 50 queries for data manipulation and analysis

-- Q1: Select employee name, train ID, and job title for employees with job titles starting with 'M'
SELECT employeeName, trainID, Job
FROM employee
WHERE Job LIKE 'M%';

-- Q2: Show passengers' total payments > 400 with discount message
SELECT PassengerID, passengerName,
    SUM(PaymentAmount) AS TotalPayment,
    CASE
        WHEN SUM(PaymentAmount) > 700
        THEN 'You have a 25% discount applied.'
        ELSE 'You have a 15% discount applied.'
    END AS DiscountMessage
FROM TicketPayments
GROUP BY PassengerID, passengerName
HAVING SUM(PaymentAmount) > 400
ORDER BY TotalPayment DESC;

-- Q3: Select trip IDs and departure times for trips between 2024-03-24 to 2024-04-24
SELECT tripid, DepartureDateTime
FROM TrainTrip
WHERE DepartureDateTime BETWEEN TO_DATE('2024-03-24 09:00:00', 'YYYY-MM-DD HH24:MI:SS') 
    AND TO_DATE('2024-04-24 09:00:00', 'YYYY-MM-DD HH24:MI:SS');

-- Q4: Which economy tickets have been canceled (show 7 rows)
SELECT AdvancedTrainTicket.TICKETID, TripCancelation.TICKETID AS TicketID_canceled, 
    TripCancelation.PASSENGEREMAIL, AdvancedTrainTicket.CLASSNAME
FROM TripCancelation
RIGHT JOIN AdvancedTrainTicket ON TripCancelation.TicketID = AdvancedTrainTicket.TicketID
WHERE AdvancedTrainTicket.className = 'economy' AND ROWNUM <= 7;

-- Q5: Calculate total payment amount for each payment method
SELECT PaymentMethod, SUM(PaymentAmount) AS TotalAmount
FROM TicketPayments
GROUP BY PaymentMethod
ORDER BY TotalAmount DESC;

-- Q6: Count trips for each train
SELECT trainID, COUNT(*) AS trip_count
FROM TrainTrip
GROUP BY trainID;

-- Q7: Count employees assigned to each train
SELECT t.trainID, COUNT(*) AS NumberOfEmployees
FROM train t
JOIN employee e ON t.trainID = e.trainID
GROUP BY t.trainID;

-- Q8: Update salary for managers by adding 1000
UPDATE employee
SET salary = salary + 1000
WHERE job = 'Manager';

-- Q9: Count total passengers for each trip
SELECT t.TripID, COUNT(p.PassengerID) AS TotalPassengers
FROM TrainTrip t
JOIN Ticket ti ON t.TripID = ti.tripID
JOIN Passengers p ON ti.PassengerID = p.PassengerID
GROUP BY t.TripID
ORDER BY TotalPassengers;

-- Q10: Payment methods used for tickets booked between 2024-03-01 and 2024-03-11
SELECT TICKETID, PurchasedDate, Paymentmethod
FROM TicketPayments
WHERE PurchasedDate BETWEEN TO_DATE('2024-03-01', 'YYYY-MM-DD') 
    AND TO_DATE('2024-03-11', 'YYYY-MM-DD');

-- Q11: Total payment amount grouped by payment method
SELECT PaymentMethod, COUNT(*) AS PaymentCount, SUM(PaymentAmount) AS TotalAmount
FROM TicketPayments
GROUP BY PaymentMethod
ORDER BY TotalAmount DESC;

-- Q12: Union departure/arrival times for trains 110 and 111
SELECT TrainID, DepartureDateTime, ArrivalDateTime
FROM TrainTrip
WHERE trainID = 110
UNION
SELECT TrainID, DepartureDateTime, ArrivalDateTime
FROM AdvancedTrainTrip
WHERE trainID = 111;

-- Q13: Trips with ticket price higher than all prices for trips 2001 or 2012
SELECT tripID
FROM ticket
WHERE TicketPrice > ALL (
    SELECT TicketPrice
    FROM ticket
    WHERE tripID IN (2001, 2012)
);

-- Q14: Total number of booked seats in each trip
SELECT tripid, COUNT(seatnumbers) AS TotalSeats
FROM ticket
GROUP BY tripid;

-- Q15: Passengers who purchased 4 or more tickets
SELECT p.PassengerID, p.passengerName, p.passengerPhone, p.passengerEmail
FROM Passengers p
JOIN Ticket t ON p.PassengerID = t.PassengerID
GROUP BY p.PassengerID, p.passengerName, p.passengerPhone, p.passengerEmail
HAVING COUNT(DISTINCT t.tripID) >= 4;

-- Q16: Delete passenger with TicketID 5299 from TripCancelation
DELETE FROM TripCancelation 
WHERE TicketID = 5299;

-- Q17: Select train trips with cancellation info (left join)
SELECT tt.TripID, tt.passengerID, tc.TicketID AS CanceledTicketID, 
    tc.PassengerID AS CanceledPassengerID, tc.PurchasedDate AS CancellationDate, tc.TheReason
FROM Ticket tt
LEFT JOIN TripCancelation tc ON tt.TicketID = tc.TicketID
WHERE tt.TripID = 2001;

-- Q18: Tickets for first class or child tickets on trips ending with '5'
SELECT TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, 
    DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers
FROM Ticket
WHERE (CLASSNAME = 'first class' OR ClassName = 'chiled Ticket') AND TripID LIKE '%5'
ORDER BY TicketID ASC;

-- Q19: Advanced trips arriving between Feb 26 and Mar 26, 2024
SELECT tripid, ArrivalStation, ArrivalDateTime
FROM AdvancedTrainTrip
WHERE ArrivalDateTime BETWEEN TO_DATE('2024-02-26 11:00:00', 'YYYY-MM-DD HH24:MI:SS') 
    AND TO_DATE('2024-03-26 11:00:00', 'YYYY-MM-DD HH24:MI:SS');

-- Q20: Update free meal price by adding 10 SAR
UPDATE TicketType
SET priceAmount = priceAmount + 10
WHERE OnboardMeal = 'free';

-- Q21: Sum of salaries for each job
SELECT job, SUM(salary) as SUM_SALARY
FROM employee
GROUP BY job
ORDER BY SUM_SALARY;

-- Q22: Count trips for each ticket class where price < 70
SELECT className, COUNT(*) AS numer_Of_Trips
FROM AdvancedTrainTrip
WHERE TicketPrice < 70
GROUP BY className;

-- Q23: Passengers whose names end with 'i' and paid 330 or 90
SELECT passengerName, PaymentAmount
FROM TicketPayments
WHERE PaymentAmount IN ('330', '90') AND passengerName LIKE '%i'
ORDER BY passengerName;

-- Q24: Uppercase passenger names starting with 'S'
SELECT UPPER(p.passengerName) AS passengerName, t.TicketID, p.passengerPhone
FROM Passengers p
FULL JOIN Ticket t ON p.PassengerID = t.PassengerID
WHERE p.passengerName LIKE 'S%';

-- Q25: Advanced tickets and cancellations for economy class
SELECT *
FROM AdvancedTrainTicket
NATURAL JOIN TripCancelation
WHERE AdvancedTrainTicket.className LIKE 'economy';

-- Q26: Add foreign key constraints (ALTER statements from slide 69)
ALTER TABLE AdvancedTrainTrip
ADD CONSTRAINT fk_classname_AD_Trip
FOREIGN KEY (className) REFERENCES TicketType(className);

ALTER TABLE TRIPCANCELATION
ADD CONSTRAINT fk_trainID_TC
FOREIGN KEY (trainID) REFERENCES Train(trainID);

ALTER TABLE TICKETPAYMENTS
ADD CONSTRAINT fk_TicketID_TP
FOREIGN KEY (TicketID) REFERENCES Ticket(TicketID);

ALTER TABLE employee
ADD CONSTRAINT fk_employeeTrainID
FOREIGN KEY (trainID) REFERENCES train(trainID);

-- Q27: Trips excluding 2001, 2017 and trains starting with '3'
SELECT tripID, trainID, ArrivalDateTime
FROM TrainTrip
WHERE tripID NOT IN ('2001', '2017') AND trainID NOT LIKE '3%'
ORDER BY ArrivalDateTime;

-- Q28: Economy class total payment > 110
SELECT TicketID, SUM(PaymentAmount) AS total_payment_Amount
FROM AdvancedTrainTicket
WHERE className = 'economy'
GROUP BY TicketID
HAVING SUM(PaymentAmount) > 110;

-- Q29: Passengers with multiple trips from same departure station
SELECT p.PassengerID, p.passengerName, p.passengerPhone, p.passengerEmail,
    COUNT(tt.tripID) AS total_trips
FROM Passengers p
JOIN Ticket t ON p.PassengerID = t.PassengerID
JOIN AdvancedTrainTrip tt ON t.tripID = tt.TripID
WHERE tt.DepartureStation = 'Riyadh'
GROUP BY p.PassengerID, p.passengerName, p.passengerPhone, p.passengerEmail
HAVING COUNT(DISTINCT tt.TripID) > 1;

-- Q30: Total tickets and sales for each class (trips 2001, 2003)
SELECT Class_Name, COUNT(*) AS Total_Tickets, SUM(Price) AS Total_Sales 
FROM Passengers_info
GROUP BY Class_Name;

-- Q31: Employees for train 110 in ascending order
SELECT employeeName, employeeEmail, employeePhone
FROM employee
WHERE trainID = 110
ORDER BY employeeName ASC;

-- Q32: Alter station table to modify stationID
ALTER TABLE Stations
MODIFY StationID CHAR(4);

-- Q33: Passengers using visa payment method
SELECT Ticketpayments.passengerID, Ticketpayments.passengerName, 
    Ticketpayments.paymentMethod
FROM Ticketpayments
JOIN passengers ON Ticketpayments.passengerID = passengers.passengerID
    AND Ticketpayments.passengerName = passengers.passengerName
WHERE Ticketpayments.paymentMethod LIKE 'visa'
GROUP BY Ticketpayments.passengerID, Ticketpayments.passengerName, 
    Ticketpayments.paymentMethod
ORDER BY Ticketpayments.passengerName DESC;

-- Q34: Ticket price and class excluding arrivals ending with 'h'
SELECT className, TicketPrice
FROM AdvancedTrainTrip
WHERE ArrivalStation NOT LIKE '%h';

-- Q35: Count business class tickets for trip 2017
SELECT t.TripID, COUNT(*) AS NumberOfBusinessClass
FROM TrainTrip t
JOIN Ticket ti ON t.TripID = ti.tripID
JOIN AdvancedTrainTicket att ON ti.TicketID = att.TicketID
WHERE att.className = 'business' AND ti.tripID = 2017
GROUP BY t.TripID;

-- Q36: Count trips per arrival station
SELECT tt.ArrivalStation, COUNT(tt.TripID) AS Total_trips
FROM AdvancedTrainTrip tt
GROUP BY tt.ArrivalStation
ORDER BY Total_trips DESC;

-- Q37: Average payment amount per class
SELECT className, AVG(PaymentAmount) AS AvgPaymentPerPassenger, 
    COUNT(*) AS total_trips
FROM AdvancedTrainTicket
GROUP BY className;

-- Q38: All ticket info for Ahmed Al-Farsi
SELECT *
FROM Ticket
JOIN Passengers ON Ticket.PassengerID = Passengers.PassengerID
WHERE Passengers.passengerName = 'Ahmed Al-Farsi';

-- Q39: Count cancellations by reason
SELECT TheReason, COUNT(*) AS Cancellation_Count
FROM TripCancelation
GROUP BY TheReason;

-- Q40: Passengers who canceled with reasons
SELECT Passengers.PassengerID, Passengers.passengerName, Passengers.passengerPhone, 
    Passengers.passengerEmail, TripCancelation.TheReason
FROM Passengers
JOIN TripCancelation ON Passengers.PassengerID = TripCancelation.PassengerID;

-- Q41: Minimum and maximum salaries
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary
FROM employee;

-- Q42: Payments > 300 with PayPal or Visa
SELECT *
FROM TicketPayments
WHERE PaymentAmount > 300 AND (PaymentMethod = 'paypal' OR PaymentMethod = 'visa');

-- Q43: Cancellations for tickets between 5001 and 5100
SELECT *
FROM TripCancelation
WHERE TicketID BETWEEN 5001 AND 5100;

-- Q44: Passengers who canceled trip 2003
SELECT p.PassengerID, p.passengerName, p.passengerPhone, p.passengerEmail
FROM Passengers p
JOIN Ticket t ON p.PassengerID = t.PassengerID
JOIN TrainTrip tt ON t.tripID = tt.TripID
LEFT JOIN TripCancelation tc ON t.TicketID = tc.TicketID
WHERE tt.TripID = 2003 AND tc.TicketID IS NOT NULL;

-- Q45: Most common ticket classes
SELECT className, COUNT(className) AS class_total
FROM AdvancedTrainTicket
GROUP BY className
ORDER BY class_total DESC;

-- Q46: Total tickets purchased by each passenger
SELECT PassengerID AS Passenger_ID, COUNT(*) AS Total_Tickets
FROM Ticket
GROUP BY PassengerID
ORDER BY Total_Tickets;

-- Q47: Trains with managers and total trips
SELECT te.trainID, te.managers_name, COUNT(t.TripID) AS total_trips
FROM TrainTrip t
JOIN train_manager_view te ON t.trainID = te.trainID
GROUP BY te.trainID, te.managers_name;

-- Q48: Uppercase passenger names starting with 'S' (left join)
SELECT UPPER(p.passengerName) AS passengerName, t.TicketID
FROM Passengers p
LEFT JOIN Ticket t ON p.PassengerID = t.PassengerID
WHERE p.passengerName LIKE 'S%';

-- Q49: Passengers who haven't canceled trip 2003
SELECT p.PassengerID, p.passengerName, p.passengerPhone, p.passengerEmail
FROM Passengers p
JOIN Ticket t ON p.PassengerID = t.PassengerID
JOIN TrainTrip tt ON t.tripID = tt.TripID
LEFT JOIN TripCancelation tc ON t.TicketID = tc.TicketID
WHERE tt.TripID = 2003 AND tc.TicketID IS NULL;

-- Q50: Update passenger email for passengerID 3013
UPDATE Passengers
SET passengerEmail = 'saeedy666@example.com' 
WHERE passengerid = 3013;
