# select score,dense_rank() over (order by score desc) as 'Rank' from Scores;


SELECT S.Score, COUNT(S2.Score) as 'Rank' FROM Scores S,
(SELECT DISTINCT score FROM Scores) S2
WHERE S.Score<=S2.Score
GROUP BY S.Id 
ORDER BY S.Score DESC;


