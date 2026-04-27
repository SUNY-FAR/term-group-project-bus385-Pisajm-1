-- Write your SQL query below:
SELECT
    Artists.ArtistName,
    Payments.PeriodStart,
    Payments.PeriodEnd,
    Payments.AmountPaid,
    Payments.PaymentDate
FROM
    Artists
    INNER JOIN Payments ON Artists.ArtistID = Payments.ArtistID
ORDER BY
    Payments.AmountPaid DESC;
