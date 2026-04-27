-- Write your SQL query below:
INSERT INTO Users (UserID, SubscriptionType, Country)
VALUES (999, 'Premium', 'USA');
UPDATE Users
SET SubscriptionType = 'Family'
WHERE UserID = 999;
DELETE FROM Users
WHERE UserID = 999;
SELECT a.ArtistName,
p.PeriodStart,
p.PeriodEnd,
p.AmountPaid,
p.PaymentDate
FROM Artists a
INNER JOIN Payments p ON a.ArtistID = p.ArtistID
ORDER BY p.AmountPaid DESC;
SELECT a.ArtistName,
COUNT(s.StreamID) AS TotalStreams
FROM Artists a
INNER JOIN Albums al ON a.ArtistID = al.ArtistID
INNER JOIN Songs so ON al.AlbumID = so.AlbumID
INNER JOIN Streams s ON so.SongID = s.SongID
GROUP BY a.ArtistName
ORDER BY TotalStreams DESC;
SELECT s.SongID,
s.SongTitle,
COUNT(st.StreamID) AS TotalStreams
FROM Songs s
INNER JOIN Streams st ON s.SongID = st.SongID
GROUP BY s.SongID, s.SongTitle
ORDER BY TotalStreams DESC;
SELECT a.ArtistName,
COUNT(s.StreamID) AS TotalStreams,
SUM(r.RatePerStream * (r.PercentageRate / 100.0)) AS TotalRoyalty
FROM Artists a
INNER JOIN RoyaltyRates r ON a.ArtistID = r.ArtistID
INNER JOIN Streams s ON r.SongID = s.SongID
GROUP BY a.ArtistName
ORDER BY TotalRoyalty DESC;
