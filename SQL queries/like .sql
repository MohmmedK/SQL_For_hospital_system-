
-- Like 1 


SELECT Firstname ,
lastname 
from doctor     -- Starting with s 
WHERE Firstname LIKE 'S%'

-- Like 2

SELECT Firstname ,
lastname 
from doctor     -- ending with s 
WHERE Firstname LIKE '%s'




-- Like 3 
SELECT Firstname ,
lastname 
from doctor     -- ending OR starts with s 
WHERE Firstname LIKE '%s%'




