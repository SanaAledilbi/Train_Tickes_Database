-- Advanced Train Ticket Table Creation
-- Stores payment and baggage information for tickets

CREATE TABLE AdvancedTrainTicket (
    TicketID NUMBER PRIMARY KEY,
    PaymentMethod VARCHAR2(20),
    PaymentAmount NUMBER(10,2),
    className VARCHAR2(20),
    OnboardBaggage VARCHAR2(10),
    CheckedBaggage VARCHAR2(10),
    -- Add foreign keys
    CONSTRAINT fk_ticketID_adv FOREIGN KEY (TicketID) REFERENCES Ticket(TicketID)
);
