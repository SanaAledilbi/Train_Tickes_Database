-- Insert Ticket Data - Part 3
-- Tickets 5273-5299

INSERT ALL
INTO Ticket (TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers)
VALUES (5273, 3001, 2015, 'Dammam', 'Riyadh', TO_TIMESTAMP('23/05/2024 19:01', 'DD/MM/YYYY HH24:MI'), TO_TIMESTAMP('23/05/2024 21:31', 'DD/MM/YYYY HH24:MI'), TO_TIMESTAMP('20/04/2024 22:15', 'DD/MM/YYYY HH24:MI'), 110, 'economy', 14)
INTO Ticket (TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers)
VALUES (5274, 3010, 2015, 'Dammam', 'Riyadh', TO_TIMESTAMP('23/05/2024 19:02', 'DD/MM/YYYY HH24:MI'), TO_TIMESTAMP('23/05/2024 21:32', 'DD/MM/YYYY HH24:MI'), TO_TIMESTAMP('22/04/2024 09:00', 'DD/MM/YYYY HH24:MI'), 60, 'chiled Ticket', 21)
INTO Ticket (TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers)
VALUES (5279, 3009, 2015, 'Dammam', 'Riyadh', TO_TIMESTAMP('23/05/2024 19:07', 'DD/MM/YYYY HH24:MI'), TO_TIMESTAMP('23/05/2024 21:37', 'DD/MM/YYYY HH24:MI'), TO_TIMESTAMP('4/5/2024 07:10', 'DD/MM/YYYY HH24:MI'), 110, 'economy', 12)
INTO Ticket (TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers)
VALUES (5295, 3015, 2017, 'Jeddah', 'Madinah', TO_TIMESTAMP('1/6/2024 12:00', 'DD/MM/YYYY HH24:MI'), TO_TIMESTAMP('1/6/2024 14:30', 'DD/MM/YYYY HH24:MI'), TO_TIMESTAMP('11/4/2024 9:30', 'DD/MM/YYYY HH24:MI'), 110, 'economy', 13)
INTO Ticket (TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers)
VALUES (5297, 3018, 2017, 'Jeddah', 'Madinah', TO_TIMESTAMP('1/6/2024 12:00', 'DD/MM/YYYY HH24:MI'), TO_TIMESTAMP('1/6/2024 14:30', 'DD/MM/YYYY HH24:MI'), TO_TIMESTAMP('29/3/2024 3:56', 'DD/MM/YYYY HH24:MI'), 110, 'economy', 12)
INTO Ticket (TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers)
VALUES (5298, 3003, 2017, 'Jeddah', 'Madinah', TO_TIMESTAMP('1/6/2024 12:00', 'DD/MM/YYYY HH24:MI'), TO_TIMESTAMP('1/6/2024 14:30', 'DD/MM/YYYY HH24:MI'), TO_TIMESTAMP('13/4/2024 2:25', 'DD/MM/YYYY HH24:MI'), 220, 'business', 2)
INTO Ticket (TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers)
VALUES (5299, 3011, 2017, 'Jeddah', 'Madinah', TO_TIMESTAMP('1/6/2024 12:00', 'DD/MM/YYYY HH24:MI'), TO_TIMESTAMP('1/6/2024 14:30', 'DD/MM/YYYY HH24:MI'), TO_TIMESTAMP('18/3/2024 10:20', 'DD/MM/YYYY HH24:MI'), 220, 'business', 4)
SELECT * FROM DUAL;
