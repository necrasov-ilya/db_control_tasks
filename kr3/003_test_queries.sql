SELECT 
    a.Account_ID,
    a.Account_Number,
    a.Currency,
    c.Client_Name,
    c.Client_Address
FROM Accounts a
JOIN Clients c ON a.Client_Name = c.Client_Name;