/*
Generate the following two result sets:

Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format: 
There are a total of [occupation_count] [occupation]s.

MS SQL
https://www.hackerrank.com/challenges/the-pads/problem?h_r=next-challenge&h_v=zen

*/
SELECT NAME + '('+Upper(LEFT(OCCUPATION,1))+')'
FROM OCCUPATIONS
ORDER BY NAME
SELECT 'There are a total of ' + CAST(COUNT(OCCUPATION) AS varchar) +' '+ Lower(OCCUPATION)+'s.'
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION) ASC, OCCUPATION ASC;
