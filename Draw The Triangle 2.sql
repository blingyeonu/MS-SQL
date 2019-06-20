/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
* 
* * 
* * * 
* * * * 
* * * * *
SQL-Server
https://www.hackerrank.com/challenges/draw-the-triangle-2/problem?h_r=next-challenge&h_v=zen
*/
DECLARE @star   NVARCHAR(max) = ''
DECLARE @R        INT = 21
DECLARE @i        INT 

SET @i = 1
WHILE (@i < @R)
BEGIN
    PRINT REPLICATE('* ', @i);
    SET @i = @i+1
END
