''test_db.Artists'
SELECT Artists.ArtistName,
COUNT(Streams.StreamID) AS TotalStreams
FROM Artists
JOIN Albums ON Artists.ArtistID = Albums.ArtistID
JOIN Songs ON Albums.AlbumID = Songs.AlbumID
JOIN Streams ON Songs.SongID = Streams.SongID
GROUP BY Artists.ArtistName
ORDER BY TotalStreams DESC;
