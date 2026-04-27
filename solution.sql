-- Write your SQL query below:
SELECT a.ArtistName,
COUNT(s.StreamID) AS TotalStreams,
SUM(r.RatePerStream * (r.PercentageRate / 100.0)) AS TotalRoyalty
FROM Artists a
JOIN RoyaltyRates r ON a.ArtistID = r.ArtistID
JOIN Streams s ON r.SongID = s.SongID
GROUP BY a.ArtistName
ORDER BY TotalRoyalty DESC;
