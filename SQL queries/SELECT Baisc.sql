

 ---- SELECT all rows from ADMIN table 
SELECT * from admin



 ---- SELECT first name concatc lastname 
SELECT Firstname || ' '|| lastname from ADMIN



-- SELECT SELECT first name concatc lastname USING concat fun  

SELECT concat(Firstname,concat(' ',lastname)) from ADMIN



-- SELECT SELECT first name concatc lastname USING concat FUNCTION 
-- add alilas 
 
SELECT concat(Firstname,concat(' ',lastname)) name from ADMIN



