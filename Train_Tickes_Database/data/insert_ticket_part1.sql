-- Insert Ticket Data - Part 1
-- First 12 ticket records

INSERT ALL
INTO Ticket (TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers)
VALUES (5001, 3001, 2001, 'Dammam', 'Riyadh', TO_TIMESTAMP('2024-03-24 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-03-24 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-02-05 02:08:00', 'YYYY-MM-DD HH24:MI:SS'), 110, 'economy', 11)
INTO Ticket (TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers)
VALUES (5003, 3003, 2001, 'Dammam', 'Riyadh', TO_TIMESTAMP('2024-03-24 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-03-24 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-03-15 04:29:00', 'YYYY-MM-DD HH24:MI:SS'), 110, 'economy', 13)
INTO Ticket (TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers)
VALUES (5005, 3005, 2001, 'Dammam', 'Riyadh', TO_TIMESTAMP('2024-03-24 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-03-24 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-03-24 00:30:00', 'YYYY-MM-DD HH24:MI:SS'), 110, 'economy', 14)
INTO Ticket (TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers)
VALUES (5007, 3007, 2001, 'Dammam', 'Riyadh', TO_TIMESTAMP('2024-03-24 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-03-24 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-02-22 06:25:00', 'YYYY-MM-DD HH24:MI:SS'), 110, 'economy', 15)
INTO Ticket (TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers)
VALUES (5057, 3002, 2003, 'Qassim', 'Riyadh', TO_TIMESTAMP('2024-03-26 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-03-26 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-02-05 04:18:00', 'YYYY-MM-DD HH24:MI:SS'), 110, 'economy', 12)
INTO Ticket (TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers)
VALUES (5058, 3004, 2003, 'Qassim', 'Riyadh', TO_TIMESTAMP('2024-03-26 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-03-26 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-03-06 08:22:00', 'YYYY-MM-DD HH24:MI:SS'), 220, 'business', 1)
INTO Ticket (TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers)
VALUES (5059, 3006, 2003, 'Qassim', 'Riyadh', TO_TIMESTAMP('2024-03-26 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-03-26 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-02-16 07:56:00', 'YYYY-MM-DD HH24:MI:SS'), 110, 'economy', 12)
INTO Ticket (TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers)
VALUES (5060, 3008, 2003, 'Qassim', 'Riyadh', TO_TIMESTAMP('2024-03-26 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-03-26 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-03-15 06:25:00', 'YYYY-MM-DD HH24:MI:SS'), 220, 'business', 3)
INTO Ticket (TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers)
VALUES (5113, 3015, 2005, 'Madinah', 'Riyadh', TO_TIMESTAMP('2024-02-04 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-02-04 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-03-22 01:27:00', 'YYYY-MM-DD HH24:MI:SS'), 330, 'first class', 8)
INTO Ticket (TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers)
VALUES (5114, 3011, 2005, 'Madinah', 'Riyadh', TO_TIMESTAMP('2024-02-04 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-02-04 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-03-29 03:51:00', 'YYYY-MM-DD HH24:MI:SS'), 90, 'compartment', 17)
INTO Ticket (TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers)
VALUES (5115, 3020, 2005, 'Madinah', 'Riyadh', TO_TIMESTAMP('2024-02-04 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-02-04 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-03-21 04:39:00', 'YYYY-MM-DD HH24:MI:SS'), 330, 'first class', 9)
INTO Ticket (TicketID, PassengerID, tripID, ArrivalStation, DepartureStation, DepartureDateTime, ArrivalDateTime, PurchasedDate, TicketPrice, className, seatnumbers)
VALUES (5116, 3016, 2005, 'Madinah', 'Riyadh', TO_TIMESTAMP('2024-02-04 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-02-04 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-02-28 00:14:00', 'YYYY-MM-DD HH24:MI:SS'), 90, 'compartment', 19)
SELECT * FROM DUAL;
