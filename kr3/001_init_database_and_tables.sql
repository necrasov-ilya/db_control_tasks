CREATE DATABASE BankSystem;

/* ---------------------------------------------------------
Определяем первичный ключ
В нашем случае очевидно, что это айди счёта,
потому как он не будет меняться во всех таблицах 
--------------------------------------------------------- */


/* ---------------------------------------------------------
   Таблица CLIENTS - с клиентами соответственно.
   Здесь храним всё, что связано конкретно с клиентом:
----------------------------------------------------------*/
CREATE TABLE Clients (
    Client_Name VARCHAR(255) PRIMARY KEY, -- Наш ключ к табл. ACCOUNTS
    Client_Address VARCHAR(255) NOT NULL
);


/* ---------------------------------------------------------
   Таблица ACCOUNTS — все банковские счета.
   Привязка счёта к клиенту идёт через Client_Name.
----------------------------------------------------------*/
CREATE TABLE Accounts (
    Account_ID VARCHAR(10) PRIMARY KEY,
    Account_Number VARCHAR(20) NOT NULL,
    Currency CHAR(3) NOT NULL,
    Client_Name VARCHAR(255) NOT NULL,
    FOREIGN KEY (Client_Name) REFERENCES Clients(Client_Name)
)


