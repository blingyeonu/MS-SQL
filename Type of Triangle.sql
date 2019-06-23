/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.

MS SQL
https://www.hackerrank.com/challenges/what-type-of-triangle/problem
*/
SELECT CASE WHEN (A=B AND B=C AND A=C) THEN 'Equilateral' 
WHEN A<>B AND B<>C AND C<>A AND (A+B > C AND B+C > A AND C+A > B) THEN 'Scalene' 
WHEN (A=B AND A<>C AND B<>C AND A+B > C) 
     OR (B=C AND B<>A AND C<>A AND B+C > A) 
     OR (A=c AND A<>B AND C<>B AND A+C > B) THEN 'Isosceles' 
WHEN (A+B <= C) OR (B+C <= A) OR (C+A <= B) THEN 'Not A Triangle' 
ELSE cast(a as varchar) + ',' + cast(b as varchar) + ',' + cast(c as varchar) END
FROM TRIANGLES
