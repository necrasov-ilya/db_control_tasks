SELECT 
    a.Account_ID,
    a.Account_Number,
    a.Currency,
    c.Client_ID,
    c.Client_Address,
    c.Client_Name
FROM Accounts a
JOIN Clients c 
    ON a.Client_ID = c.Client_ID;
