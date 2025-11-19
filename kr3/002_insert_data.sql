INSERT INTO Clients (Client_Name, Client_Address) VALUES
    ('ООО "Восток"', 'Москва, ул. Мира, 1'),
    ('ИП Ларин', 'Санкт-Петербург, Невский пр., 10');

INSERT INTO Accounts (Account_ID, Account_Number, Currency, Client_Name) VALUES
    ('ACC01', '4070281000000001', 'RUB', 'ООО "Восток"'),
    ('ACC02', '4070281000000002', 'USD', 'ООО "Восток"'),
    ('ACC03', '4080281000000001', 'EUR', 'ИП Ларин');