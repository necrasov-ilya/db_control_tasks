/* -------------------------------------------------------------
   Миграция модели данных на суррогатный ключ Client_ID. (вместо клиент нейм)
   ------------------------------------------------------------- */
DROP TABLE Accounts;
DROP TABLE Clients;

CREATE TABLE Clients (
    Client_ID INT AUTO_INCREMENT PRIMARY KEY,
    Client_Name VARCHAR(255) NOT NULL,
    Client_Address VARCHAR(255) NOT NULL
);

/* -------------------------------------------------------------
   Client_ID → Clients.Client_ID
   ------------------------------------------------------------- */
CREATE TABLE Accounts (
    Account_ID VARCHAR(10) PRIMARY KEY,
    Account_Number VARCHAR(20) NOT NULL,
    Currency CHAR(3) NOT NULL,
    Client_ID INT NOT NULL,
    FOREIGN KEY (Client_ID) REFERENCES Clients(Client_ID)
);


/* -------------------------------------------------------------
   4. Заполняем таблицы
   ------------------------------------------------------------- */
INSERT INTO Clients (Client_Name, Client_Address) VALUES
    ('ООО "Восток"', 'Москва, ул. Мира, 1'),
    ('ИП Ларин', 'Санкт-Петербург, Невский пр., 10');

INSERT INTO Accounts (Account_ID, Account_Number, Currency, Client_ID) VALUES
    ('ACC01', '4070281000000001', 'RUB', 1),
    ('ACC02', '4070281000000002', 'USD', 1),
    ('ACC03', '4080281000000001', 'EUR', 2);