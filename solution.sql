-- Write your SQL query below:
SELECT
    Songs.SongTitle,
    Count(Streams.StreamID) AS TotalStreams
FROM
    Songs
    INNER JOIN Streams ON Songs.SongID = Streams.SongID
GROUP BY
    Songs.SongTitle
ORDER BY
    Count(Streams.StreamID) DESC;
