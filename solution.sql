-- Write your SQL query below:
SELECT
    Songs.SongTitle,
    Count(Streams.StreamID) AS TotalStreams
