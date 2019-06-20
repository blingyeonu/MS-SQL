/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
*/
DECLARE @star   NVARCHAR(max) = ''
DECLARE @R        INT = 21
DECLARE @i        INT 

SET @i = @R-1
WHILE (@i > 0 AND @i < @R)
BEGIN
    PRINT REPLICATE('* ', @i);
    SET @i = @i-1
END
